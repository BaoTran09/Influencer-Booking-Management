---FUNCTION
-- 1.tính giá booking cho influ thông qua số lượng followers, tỉ lệ ER (2 post gần nhất), lĩnh vực, nền tảng đăng tải, hình thức đăng tải, chi phí tính trước & tỉ lệ chiết khấu
CREATE OR REPLACE FUNCTION func_bookingcost (
  v_contract_id IN contract.contract_id%TYPE
) RETURN NUMBER
IS
  -- 1. Biến đọc thông tin hợp đồng
  v_sign_date   contract.sign_date%TYPE;
  v_fac_field   fields.factor_field%TYPE;

  -- 2. Biến cho Engagement Rate (ER)
  v_er           NUMBER := 0;
  v_likes        NUMBER := 0;
  v_comments     NUMBER := 0;
  v_shares       NUMBER := 0;
  v_followers    NUMBER := 0;
  v_posts_er     NUMBER := 0;

  -- 3. Biến cho chi phí phát sinh & chiết khấu
  v_total_ex     NUMBER := 0;
  v_fac_ex       NUMBER := 0;

  -- 4. Biến cho chi phí bài đăng
  v_cost_er         NUMBER := 0;
  v_post_cost       NUMBER := 0;
  v_post_total_cost NUMBER := 0;
  v_fac_num         social_factor.factor_number%TYPE;

BEGIN
  -- A. Lấy ngày ký và hệ số lĩnh vực
  SELECT c.sign_date, f.factor_field
    INTO v_sign_date, v_fac_field
    FROM contract c
    JOIN fields f ON c.field_id = f.field_id
   WHERE c.contract_id = v_contract_id;

  -- B. Tính ER từ 2 post gần nhất
  FOR rec_er IN (
    SELECT likes, comments, shares, followers
    FROM (
      SELECT
        NVL(p.likes, 0)       AS likes,
        NVL(p.comments, 0)    AS comments,
        NVL(p.shares, 0)      AS shares,
        NVL(a.followers, 0)   AS followers,
        ROW_NUMBER() OVER (
          PARTITION BY p.acc_id, a.social_id
          ORDER BY p.create_date DESC
        ) AS rn
      FROM post p
      JOIN accounts a ON p.acc_id = a.acc_id
      WHERE p.create_date < v_sign_date
        AND EXISTS (
          SELECT 1
          FROM post_details d
          JOIN contractdetails_product cp ON d.cdp_id = cp.cdp_id
          JOIN contract_details cd ON cp.details_id = cd.details_id
          WHERE d.post_id = p.post_id
            AND cd.contract_id = v_contract_id
        )
    )
    WHERE rn <= 2
  ) LOOP
    v_likes     := v_likes     + rec_er.likes;
    v_comments  := v_comments  + rec_er.comments;
    v_shares    := v_shares    + rec_er.shares;
    v_followers := v_followers + rec_er.followers;
    v_posts_er  := v_posts_er  + 1;
  END LOOP;

  IF v_followers > 0 AND v_posts_er > 0 THEN
    v_er := ROUND(((v_likes + v_comments + v_shares) / v_followers) * 100 / v_posts_er, 3);
  ELSE
    v_er := 0;
  END IF;

  -- Giá theo ER
  v_cost_er := CASE
                 WHEN v_er <= 1 THEN  500000
                 WHEN v_er <= 2 THEN 1500000
                 WHEN v_er <= 3 THEN 2500000
                 WHEN v_er <= 4 THEN 4000000
                 WHEN v_er <= 5 THEN 5500000
                 ELSE                 7000000
               END;

  -- C. Chi phí phát sinh & chiết khấu
  FOR rec_exp IN (
    SELECT NVL(quantities, 0) AS quantities,
           NVL(costs, 0) AS costs,
           NVL(factor, 0) AS factor
    FROM contract_expense
    WHERE contract_id = v_contract_id
  ) LOOP
    v_total_ex := v_total_ex + rec_exp.quantities * rec_exp.costs;
    v_fac_ex   := v_fac_ex   + rec_exp.factor * rec_exp.quantities;
  END LOOP;

  -- D. Tính chi phí bài đăng
  FOR rec_post IN (
    SELECT p.durations, sf.factor_number
    FROM post p
    JOIN post_details d ON p.post_id = d.post_id
    JOIN contractdetails_product cp ON d.cdp_id = cp.cdp_id
    JOIN contract_details cd ON cp.details_id = cd.details_id
    JOIN accounts a ON p.acc_id = a.acc_id
    JOIN social_factor sf ON a.social_id = sf.social_id
    WHERE cd.contract_id = v_contract_id
  ) LOOP
    IF rec_post.durations IS NULL THEN
      v_post_cost := v_cost_er;
    ELSE
      v_post_cost := rec_post.durations * v_cost_er;
    END IF;
    v_post_total_cost := v_post_total_cost + v_post_cost;
    v_fac_num := rec_post.factor_number;
  END LOOP;

  -- E. Tính toán & trả kết quả cuối cùng
  IF v_fac_ex IS NOT NULL AND v_fac_ex <> 0 THEN
    RETURN (((v_post_total_cost * v_fac_field) + v_total_ex) * v_fac_num)
           - (v_fac_ex * (((v_post_total_cost * v_fac_field) + v_total_ex) * v_fac_num));
  ELSE
    RETURN (((v_post_total_cost * v_fac_field) + v_total_ex) * v_fac_num);
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    RETURN 0;
END func_bookingcost;
/
SELECT func_bookingcost(2) as "Tổng trị giá hợp đồng mã số 2 là: " FROM dual;

--  2. Tính tỷ lệ tương tác trung bình của 1 influencer 
drop  FUNCTION fn_avg_engagement_rate; 
CREATE OR REPLACE FUNCTION fn_avg_engagement_rate (
    p_acc_id IN NUMBER
) RETURN NUMBER
IS
    v_total_interactions NUMBER := 0;
    v_post_count NUMBER := 0;
    v_followers NUMBER;
    v_avg_engagement_rate NUMBER;
BEGIN
    -- Lấy số followers hiện tại
    SELECT followers
    INTO v_followers
    FROM Accounts
    WHERE acc_id = p_acc_id;

    -- Nếu không có followers, trả về 0 để tránh chia cho 0
    IF v_followers = 0 THEN
        RETURN 0;
    END IF;

    -- Tính tổng tương tác và số bài đăng (30 bài gần nhất)
    SELECT SUM(likes + comments + shares), COUNT(*)
    INTO v_total_interactions, v_post_count
    FROM (
        SELECT likes, comments, shares
        FROM Post
        WHERE acc_id = p_acc_id
          AND CREATE_DATE IS NOT NULL
        ORDER BY CREATE_DATE DESC
        FETCH FIRST 30 ROWS ONLY
    );

    -- Nếu không có bài đăng, trả về 0
    IF v_post_count = 0 THEN
        RETURN 0;
    END IF;

    -- Tính tỷ lệ tương tác trung bình
    v_avg_engagement_rate := ROUND((v_total_interactions / v_post_count) / v_followers * 100, 2);

    RETURN v_avg_engagement_rate;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; -- Nếu không tìm thấy influencer
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Lỗi khi tính tỷ lệ tương tác: ' || SQLERRM);
END;
/
SELECT fn_avg_engagement_rate(3) AS engagement_rate
FROM dual;
-- 3. Tính tổng doanh thu mà client thu được từ việc bán sản phẩm đem lại trong 1 contract tổng doanh thu=PRO_PURCHASES (post_details)*PRICE(products) 
CREATE OR REPLACE FUNCTION fn_calculate_contract_revenue(p_contract_id IN NUMBER)
RETURN NUMBER
IS
    v_total_revenue NUMBER := 0;
BEGIN
    -- Kiểm tra contract_id tồn tại
    SELECT COUNT(*)
    INTO v_total_revenue
    FROM Contract
    WHERE contract_id = p_contract_id;
    
    IF v_total_revenue = 0 THEN
        RAISE_APPLICATION_ERROR(-20013, 'contract_id không tồn tại');
    END IF;

    -- Tính tổng doanh thu: pro_purchases * price
    SELECT NVL(SUM(s.pro_purchases * pr.price), 0)
    INTO v_total_revenue
    FROM Post p
    join post_details s on p.post_id=s.post_id
    JOIN Contract_Details cd ON p.details_id = cd.details_id
    JOIN ContractDetails_Product cdp ON cd.details_id = cdp.details_id
    JOIN Products pr ON cdp.pro_id = pr.pro_id
    WHERE cd.contract_id = p_contract_id;

    RETURN v_total_revenue;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20014, 'Lỗi fn_calculate_contract_revenue: ' || SQLERRM);
END;
/
SELECT fn_calculate_contract_revenue(2) AS total_revenue FROM dual;

-- 4. Từ function 3, tính ra lợi nhuận của clients sau khi trừ đi chi phí bookingcost để đánh giá hợp tác có lợi nhuận hay không
CREATE OR REPLACE FUNCTION fn_calculate_client_profit(p_contract_id IN NUMBER)
RETURN NUMBER
IS
    v_total_revenue NUMBER;
    v_bookingcost NUMBER;
    v_profit NUMBER;
BEGIN
    -- Kiểm tra contract_id tồn tại và lấy bookingcost
    SELECT bookingcost
    INTO v_bookingcost
    FROM Contract
    WHERE contract_id = p_contract_id;

    -- Gọi Function 3 để tính tổng doanh thu
    v_total_revenue := fn_calculate_contract_revenue(p_contract_id);

    -- Tính lợi nhuận
    v_profit := v_total_revenue - v_bookingcost;

    RETURN v_profit;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20013, 'contract_id không tồn tại');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20019, 'Lỗi fn_calculate_client_profit: ' || SQLERRM);
END;
/
SELECT fn_calculate_client_profit(2) AS profit FROM dual;

-- 5. Giá bài đăng trung bình của một lĩnh vực giá trung bình/bài đăng=tổng giá booking của lĩnh vực /tổng bài đăng thuộc lĩnh vực 

CREATE OR REPLACE FUNCTION fn_avg_post_price_by_field(p_field_id IN NUMBER)
RETURN NUMBER
IS
    v_total_bookingcost NUMBER := 0;
    v_total_posts NUMBER := 0;
    v_avg_price NUMBER;
BEGIN
    -- Kiểm tra field_id tồn tại
    SELECT COUNT(*)
    INTO v_total_posts
    FROM Fields
    WHERE field_id = p_field_id;
    
    IF v_total_posts = 0 THEN
        RAISE_APPLICATION_ERROR(-20015, 'field_id không tồn tại');
    END IF;

    -- Tính tổng bookingcost và tổng số bài đăng
    SELECT NVL(SUM(c.bookingcost), 0), NVL(SUM(p.post_id), 0)
    INTO v_total_bookingcost, v_total_posts
    FROM Contract c
    LEFT JOIN Contract_Details cd ON c.contract_id = cd.contract_id
    LEFT JOIN Post p ON cd.details_id = p.details_id
    WHERE c.field_id = p_field_id;

    -- Tính giá trung bình
    IF v_total_posts > 0 THEN
        v_avg_price := v_total_bookingcost / v_total_posts;
    ELSE
        v_avg_price := 0;
    END IF;

    RETURN v_avg_price;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20016, 'Lỗi fn_avg_post_price_by_field: ' || SQLERRM);
END;
/
select * from fields where field_id=1;
SELECT fn_avg_post_price_by_field(1) AS avg_post_price FROM dual;
-- 6. Dựa vào số lượng bán ra và tổng số sản phẩm thì tính lượng mua trung bình của 1 sản phẩm/post với tham số đầu vào là contract_id
CREATE OR REPLACE FUNCTION fn_avg_purchases_per_post_by_contract(p_contract_id IN NUMBER)
RETURN NUMBER
IS
    v_total_purchases NUMBER := 0;
    v_total_posts NUMBER := 0;
    v_avg_purchases NUMBER;
BEGIN
    -- Kiểm tra contract_id tồn tại
    SELECT COUNT(*)
    INTO v_total_posts
    FROM Contract
    WHERE contract_id = p_contract_id;
    
    IF v_total_posts = 0 THEN
        RAISE_APPLICATION_ERROR(-20013, 'contract_id không tồn tại');
    END IF;

    -- Tính tổng pro_purchases và tổng số bài đăng
    SELECT NVL(SUM(s.pro_purchases), 0), NVL(COUNT(p.post_id), 0)
    INTO v_total_purchases, v_total_posts
    FROM Post p
    join post_details s on p.post_id=s.post_id

    JOIN Contract_Details cd ON p.details_id = cd.details_id
    WHERE cd.contract_id = p_contract_id;

    -- Tính lượng mua trung bình
    IF v_total_posts > 0 THEN
        v_avg_purchases := v_total_purchases / v_total_posts;
    ELSE
        v_avg_purchases := 0;
    END IF;

    RETURN v_avg_purchases;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20020, 'Lỗi fn_avg_purchases_per_post_by_contract: ' || SQLERRM);
END;
/
SELECT fn_avg_purchases_per_post_by_contract(2) AS avg_purchases FROM dual;
