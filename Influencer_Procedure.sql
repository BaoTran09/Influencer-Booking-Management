----1. TRUNG BÌNH TĂNG TRƯỞNG FOLLOWER CỦA MỖI INFLUENCER TRONG 1 THÁNG (MỖI NỀN TẢNG) dựa vào bảng log_change và tigger trg_influencer_log_change
drop PROCEDURE sp_avg_follower_growth;
CREATE OR REPLACE PROCEDURE sp_avg_follower_growth (
    p_month IN VARCHAR2, -- Định dạng YYYY-MM, ví dụ: '2025-08'
    p_cursor OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN p_cursor FOR
    WITH FollowerChanges AS (
        SELECT 
            a.influ_id,
            i.stage_name AS influencer_name,
            sm.social_name,
            a.acc_id,
            TO_NUMBER(lc.old_values) AS old_followers,
            TO_NUMBER(lc.new_values) AS new_followers,
            (TO_NUMBER(lc.new_values) - TO_NUMBER(lc.old_values)) AS follower_growth,
            lc.changed_date
        FROM 
            Log_change lc
        JOIN 
            Accounts a ON lc.record_id = a.acc_id
        JOIN 
            Influencer i ON a.influ_id = i.influ_id
        JOIN 
            SocialMedia sm ON a.social_id = sm.social_id
        WHERE 
            lc.table_name = 'Accounts'
            AND lc.column_name = 'followers'
            AND TO_CHAR(TRUNC(lc.changed_date, 'MM'), 'YYYY-MM') = p_month
    )
    SELECT 
        influ_id,
        influencer_name,
        social_name,
        NVL(ROUND(AVG(follower_growth), 2), 0) AS avg_follower_growth,
        CASE 
            WHEN AVG(NVL(old_followers, 0)) = 0 THEN NULL
            ELSE ROUND(AVG(follower_growth) / AVG(NVL(old_followers, 1)) * 100, 2)
        END AS avg_growth_percent
    FROM 
        FollowerChanges
    GROUP BY 
        influ_id,
        influencer_name,
        social_name
    ORDER BY 
        influ_id, social_name;
END;
/
-- Khai báo biến con trỏ
VARIABLE result REFCURSOR;

-- Gọi procedure cho tháng 8/2025
EXEC sp_avg_follower_growth('2025-08', :result);

-- In kết quả
PRINT result;
select * from Log_change where table_name = 'Accounts'
            AND column_name = 'followers';
--------
---------2. doanh thu tháng N qua các hợp đồng quảng cáo , thực thu, còn thiếu 
drop PROCEDURE proc_revenue_month;
CREATE OR REPLACE PROCEDURE proc_revenue_month (
  v_month IN NUMBER,
  v_year  IN NUMBER
)
AS
  v_revenue         NUMBER := 0;
  v_actual_revenue  NUMBER := 0;
  v_paid_amount1    NUMBER := 0;
  v_paid_amount2    NUMBER := 0;
  v_less_amount     NUMBER := 0;
BEGIN
  FOR rec IN (
    SELECT *
      FROM contract
     WHERE TO_CHAR(sign_date, 'MM') = LPAD(v_month, 2, '0')
       AND TO_CHAR(sign_date, 'YYYY') = TO_CHAR(v_year)
  )
  LOOP
    -- Tổng doanh thu
    v_revenue := v_revenue + NVL(rec.bookingcost, 0);

    -- Kiểm tra thanh toán lần 1 có trong tháng này không
    IF rec.paid_date1 IS NOT NULL AND
       TO_CHAR(rec.paid_date1, 'MM') = LPAD(v_month, 2, '0') AND
       TO_CHAR(rec.paid_date1, 'YYYY') = TO_CHAR(v_year) THEN
      v_paid_amount1 := v_paid_amount1 + NVL(rec.paid_amount1, 0);
    END IF;

    -- Kiểm tra thanh toán lần 2 có trong tháng này không
    IF rec.paid_date2 IS NOT NULL AND
       TO_CHAR(rec.paid_date2, 'MM') = LPAD(v_month, 2, '0') AND
       TO_CHAR(rec.paid_date2, 'YYYY') = TO_CHAR(v_year) THEN
      v_paid_amount2 := v_paid_amount2 + NVL(rec.paid_amount2, 0);
    END IF;
  END LOOP;

  -- Tính thực thu và phần còn thiếu
  v_actual_revenue := v_paid_amount1 + v_paid_amount2;
  v_less_amount    := v_revenue - v_actual_revenue;

  -- Xuất kết quả
  DBMS_OUTPUT.PUT_LINE('Tháng ' || v_month || '/' || v_year);
  DBMS_OUTPUT.PUT_LINE('- Tổng doanh thu     : ' || v_revenue);
  DBMS_OUTPUT.PUT_LINE('- Thực nhận          : ' || v_actual_revenue);
  DBMS_OUTPUT.PUT_LINE('- Còn thiếu          : ' || v_less_amount);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Không có hợp đồng nào trong tháng ' || v_month || '/' || v_year);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
END;
/
SET SERVEROUTPUT ON;

BEGIN
    proc_revenue_month(12,2027);
END;
----3. thống kê influ theo lĩnh vực, ai là người nhiều followers nhất (tham số truyền vào id fields)
DROP PROCEDURE proc_influencer_top1_followers;
select influ_id, stage_name, STRENGTHS from Influencer where influ_id=1;
CREATE OR REPLACE PROCEDURE proc_influencer_top1_followers2(v_field IN NVARCHAR2)
AS
    TYPE rec_in_acc IS RECORD (
        v_stage_name INFLUENCER.stage_name%TYPE,
        v_acc_name ACCOUNTS.acc_name%TYPE,
        v_followers ACCOUNTS.followers%TYPE,
        v_strengths INFLUENCER.strengths%TYPE,
        v_social_name SOCIALMEDIA.social_name%TYPE
    );

    v_rec rec_in_acc;

BEGIN
    -- Sử dụng subquery để lấy influencer có followers cao nhất
    SELECT stage_name, acc_name, followers, strengths, social_name
    INTO v_rec
    FROM (
        SELECT i.stage_name, a.acc_name, a.followers, i.strengths, s.social_name,
               ROW_NUMBER() OVER (ORDER BY a.followers DESC) AS rn
        FROM Influencer i
        JOIN Accounts a ON i.influ_id = a.influ_id
        JOIN SocialMedia s ON a.social_id = s.social_id
        WHERE REGEXP_LIKE(i.strengths, v_field, 'i') -- Tìm kiếm linh hoạt, không phân biệt hoa thường
    ) WHERE rn = 1;

    -- In kết quả
    DBMS_OUTPUT.PUT_LINE('Trong lĩnh vực "' || v_field || '":');
    DBMS_OUTPUT.PUT_LINE('Influencer: ' || v_rec.v_stage_name);
    DBMS_OUTPUT.PUT_LINE('Có số followers cao nhất là: ' || v_rec.v_followers);
    DBMS_OUTPUT.PUT_LINE('Trên nền tảng: ' || v_rec.v_social_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Không tìm thấy influencer với lĩnh vực: ' || v_field);
        -- In dữ liệu debug để kiểm tra strengths
        FOR rec IN (
            SELECT i.stage_name, i.strengths
            FROM Influencer i
            WHERE i.strengths IS NOT NULL
        ) LOOP
            DBMS_OUTPUT.PUT_LINE('Debug - Influencer: ' || rec.stage_name || ', Strengths: ' || rec.strengths);
        END LOOP;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
END;
/
SET SERVEROUTPUT ON;
BEGIN
    proc_influencer_top1_followers2('trồng cây');
END;
/
----4. Tỷ lệ tương tác (Engagement rate) của 1 VIDEO
---Engagement rate (%) = (Like + Comment + Share) / Tổng follower * 100
drop  procedure p_ER ;
create or replace procedure p_ER (  v_post_id in post.post_id%type)
as 
v_er number ;
v_social socialmedia.social_name%type;
v_like post.likes%type;
v_cmt post.comments%type;
v_share  post.shares%type;
v_fl accounts.followers%type;
v_acc_name accounts.acc_name%type; 

begin
select  a.acc_name, p.likes, p.comments, p.shares, a.followers, s.social_name
into v_acc_name, v_like, v_cmt, v_share, v_fl,v_social
from post p
join accounts a on p.acc_id = a.acc_id
join socialmedia s on a.social_id=s.social_id
where p.post_id = v_post_id;

    v_er := ((v_like + v_cmt + v_share) / v_fl) * 100;

    DBMS_OUTPUT.PUT_LINE('Tỉ lệ tương tác của bài đăng có mã ' || v_post_id ||' của '||v_acc_name||' trên '||v_social||' là: ' || TO_CHAR(ROUND(v_er, 2), 'FM990.00') || '%');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Không tìm thấy ');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
end ;

SET SERVEROUTPUT ON;
BEGIN
  p_ER(1);  -- Thay 123 bằng post_id bạn muốn tính ER
END;
/
---5. NHỮNG CLIENT THANH TOÁN KHÔNG ĐÚNG HẠN
----nếu đã qua ngày paid_date mà  paid_amount1 + paid_amount2 < bookingcost mà số count (details_id) = count (post_id) 
/*
select d.contract_id , count(d.details_id) as requiredpost , count (p.post_id) post 
from contract_details d join post p on d.details_id=p.details_id
group by  d.contract_id
order  by d.contract_id asc  ;
drop  PROCEDURE sp_check_client_overdue1;
select d.contract_id, COUNT(d.details_id) as dd,  COUNT(p.post_id) as tt
        FROM contract_details d
        LEFT JOIN post p ON d.details_id = p.details_id
        join contract c on c.contract_id=d.contract_id
        where nvl(c.paid_amount1,0) + nvl(c.paid_amount2,0)< c.bookingcost
        group by d.contract_id
        having COUNT(d.details_id) = COUNT(p.post_id)  
        order by  d.contract_id asc;
*/
CREATE OR REPLACE PROCEDURE sp_check_client_overdue1 (
    p_contract_id IN contract.contract_id%TYPE DEFAULT NULL, -- Contract ID (NULL để xử lý tất cả hợp đồng)
    p_row_limit IN NUMBER DEFAULT 10, -- Giới hạn số bản ghi xử lý
    p_cursor OUT SYS_REFCURSOR
)
IS
    -- Kiểu record
    TYPE rec IS RECORD (
        v_contract_id   contract.contract_id%TYPE,
        v_client_name   clients.client_name%TYPE,
        v_bookingcost   contract.bookingcost%TYPE,
        v_paid_date1    contract.paid_date1%TYPE,
        v_paid_amount1  contract.paid_amount1%TYPE,
        v_paid_date2    contract.paid_date2%TYPE,
        v_paid_amount2  contract.paid_amount2%TYPE,
        v_status        contract.status%TYPE,
        v_less_amount   NUMBER
    );
    
    v_required_post NUMBER(2);
    v_number_post   NUMBER(2);
    v_info          rec;
    v_days1 NUMBER(4);
    v_days2 NUMBER(4);
    
    -- Cursor để lặp qua các hợp đồng
    CURSOR contract_cursor IS
        SELECT 
            c.contract_id,
            i.client_name,
            c.bookingcost,
            c.paid_date1,
            NVL(c.paid_amount1, 0) AS paid_amount1,
            c.paid_date2,
            NVL(c.paid_amount2, 0) AS paid_amount2,
            c.status
        FROM 
            contract c
        JOIN 
            clients i ON c.client_id = i.client_id
        WHERE 
            (p_contract_id IS NULL OR c.contract_id = p_contract_id)
            AND (NVL(c.paid_amount1, 0) + NVL(c.paid_amount2, 0) < c.bookingcost)
            AND (c.paid_date1 < SYSDATE OR (c.paid_date2 IS NOT NULL AND c.paid_date2 < SYSDATE))
        FETCH FIRST p_row_limit ROWS ONLY;
    
BEGIN
    -- Mở cursor để trả về thông tin hợp đồng quá hạn
    OPEN p_cursor FOR
        SELECT 
            c.contract_id,
            i.client_name,
            c.bookingcost,
            c.paid_date1,
            NVL(c.paid_amount1, 0) AS paid_amount1,
            c.paid_date2,
            NVL(c.paid_amount2, 0) AS paid_amount2,
            c.status,
            (c.bookingcost - (NVL(c.paid_amount1, 0) + NVL(c.paid_amount2, 0))) AS less_amount
        FROM 
            contract c
        JOIN 
            clients i ON c.client_id = i.client_id
        WHERE 
            (p_contract_id IS NULL OR c.contract_id = p_contract_id)
            AND (NVL(c.paid_amount1, 0) + NVL(c.paid_amount2, 0) < c.bookingcost)
            AND (c.paid_date1 < SYSDATE OR (c.paid_date2 IS NOT NULL AND c.paid_date2 < SYSDATE))
        FETCH FIRST p_row_limit ROWS ONLY;

    -- Lặp qua các hợp đồng thỏa mãn điều kiện
    FOR contract_rec IN contract_cursor LOOP
        -- Lấy số lượng bài post
        SELECT 
            COUNT(d.details_id),
            COUNT(p.post_id)
        INTO 
            v_required_post,
            v_number_post
        FROM 
            contract_details d
        LEFT JOIN 
            post p ON d.details_id = p.post_id
        WHERE 
            d.contract_id = contract_rec.contract_id;

        -- Nếu số bài post đủ
        IF v_required_post = v_number_post OR v_required_post < v_number_post THEN
            v_info.v_contract_id := contract_rec.contract_id;
            v_info.v_client_name := contract_rec.client_name;
            v_info.v_bookingcost := contract_rec.bookingcost;
            v_info.v_paid_date1 := contract_rec.paid_date1;
            v_info.v_paid_amount1 := contract_rec.paid_amount1;
            v_info.v_paid_date2 := contract_rec.paid_date2;
            v_info.v_paid_amount2 := contract_rec.paid_amount2;
            v_info.v_status := contract_rec.status;
            v_info.v_less_amount := v_info.v_bookingcost - (v_info.v_paid_amount1 + v_info.v_paid_amount2);
            v_days1 := ROUND(SYSDATE - v_info.v_paid_date1, 0);
            v_days2 := ROUND(SYSDATE - v_info.v_paid_date2, 0);

            -- Xuất thông báo với chi tiết đợt thanh toán quá hạn
            IF v_info.v_paid_date1 < SYSDATE AND (v_info.v_paid_date2 IS NULL OR v_info.v_paid_date2 >= SYSDATE) THEN
                DBMS_OUTPUT.PUT_LINE('Hợp đồng ' || v_info.v_contract_id || 
                                     ' của khách hàng ' || v_info.v_client_name || 
                                     ' (trạng thái: ' || v_info.v_status || 
                                     ') đã quá hạn thanh toán đợt 1 được ' || v_days1 || 
                                     ' ngày với số tiền còn thiếu: ' || v_info.v_less_amount);
            ELSIF v_info.v_paid_date1 < SYSDATE AND v_info.v_paid_date2 < SYSDATE THEN
                DBMS_OUTPUT.PUT_LINE('Hợp đồng ' || v_info.v_contract_id || 
                                     ' của khách hàng ' || v_info.v_client_name || 
                                     ' (trạng thái: ' || v_info.v_status || 
                                     ') đã quá hạn thanh toán cả hai đợt (' || v_days1 || ' và ' || v_days2 || 
                                     ' ngày) với số tiền còn thiếu: ' || v_info.v_less_amount);
            ELSIF v_info.v_paid_date2 < SYSDATE THEN
                DBMS_OUTPUT.PUT_LINE('Hợp đồng ' || v_info.v_contract_id || 
                                     ' của khách hàng ' || v_info.v_client_name || 
                                     ' (trạng thái: ' || v_info.v_status || 
                                     ') đã quá hạn thanh toán đợt 2 được ' || v_days2 || 
                                     ' ngày với số tiền còn thiếu: ' || v_info.v_less_amount);
            END IF;
        END IF;
    END LOOP;
END;
/
SET SERVEROUTPUT ON;
VARIABLE result REFCURSOR;
EXEC sp_check_client_overdue1(NULL, 5, :result);
PRINT result;

----6. SO SÁNH HIỆU QUẢ INFLUENCER TRONG MỘT LĨNH VỰC, TRÊN CÙNG 1 NỀN TẢNG  (DONE )
drop PROCEDURE proc_compare_influ_performance2 ;

CREATE OR REPLACE PROCEDURE proc_compare_influ_performance2(
  v_field_id IN Fields.field_id%TYPE
)
AS
  CURSOR kol_cur IS
    SELECT 
      f.field_id,
      f.field_name, 
      s.social_name,
      i.stage_name,
      SUM(a.followers) AS total_followers,
      AVG(CASE WHEN p.views > 0 THEN ((NVL(p.likes,0) + NVL(p.comments,0) + NVL(p.shares,0)) / p.views) * 100 ELSE 0 END) AS avg_cr,
      AVG(CASE WHEN p.views > 0 THEN (NVL(d.pro_purchases,0) / p.views) * 100 ELSE 0 END) AS avg_cr2
    FROM Influencer i
    JOIN Accounts a ON i.influ_id = a.influ_id
    JOIN Contract c ON i.influ_id = c.influ_id
    JOIN Fields f ON f.field_id = c.field_id
    LEFT JOIN Post p ON a.acc_id = p.acc_id
    LEFT JOIN Post_Details d ON p.post_id = d.post_id
    JOIN SocialMedia s ON s.social_id = a.social_id
    WHERE c.field_id = v_field_id
    GROUP BY f.field_id, f.field_name, s.social_name, i.stage_name
    ORDER BY avg_cr DESC;
    v_field_name fields.field_name%type;
  v_rating VARCHAR2(20);
BEGIN
        BEGIN
        SELECT field_name INTO v_field_name
        FROM Fields
        WHERE field_id = v_field_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_field_name := 'Không xác định';
    END;


  DBMS_OUTPUT.PUT_LINE('So sánh hiệu suất KOL trong lĩnh vực ID: ' || v_field_id||' '||v_field_name);

  FOR rec IN kol_cur
  LOOP
    -- Phân nhóm đánh giá CR theo field_id
    v_rating := CASE 
      -- Nhóm 1: Làm đẹp (Makeup, Skincare, HairCare, Beauty) → ID: 1,2,3,15
      WHEN rec.field_id IN (1, 2, 3, 15) THEN
        CASE 
          WHEN rec.avg_cr < 2.5 THEN 'Thấp'
          WHEN rec.avg_cr < 3.5 THEN 'Trung bình'
          ELSE 'Cao'
        END
      -- Nhóm 2: Thời trang & Lifestyle (4, 11, 16)
      WHEN rec.field_id IN (4, 11, 16) THEN
        CASE 
          WHEN rec.avg_cr < 2.3 THEN 'Thấp'
          WHEN rec.avg_cr < 3.2 THEN 'Trung bình'
          ELSE 'Cao'
        END
      -- Nhóm 3: Du lịch & Giải trí (5, 12, 17)
      WHEN rec.field_id IN (5, 12, 17) THEN
        CASE 
          WHEN rec.avg_cr < 2.0 THEN 'Thấp'
          WHEN rec.avg_cr < 3.0 THEN 'Trung bình'
          ELSE 'Cao'
        END
      -- Nhóm 4: Ẩm thực & Mua sắm (6, 10, 20)
      WHEN rec.field_id IN (6, 10, 20) THEN
        CASE 
          WHEN rec.avg_cr < 1.5 THEN 'Thấp'
          WHEN rec.avg_cr < 2.2 THEN 'Trung bình'
          ELSE 'Cao'
        END
      -- Nhóm 5: Sức khỏe & Thể thao (7, 14, 19)
      WHEN rec.field_id IN (7, 14, 19) THEN
        CASE 
          WHEN rec.avg_cr < 2.0 THEN 'Thấp'
          WHEN rec.avg_cr < 3.0 THEN 'Trung bình'
          ELSE 'Cao'
        END
      -- Nhóm 6: Âm nhạc & Công nghệ (8, 9)
      WHEN rec.field_id IN (8, 9) THEN
        CASE 
          WHEN rec.avg_cr < 2.8 THEN 'Thấp'
          WHEN rec.avg_cr < 3.8 THEN 'Trung bình'
          ELSE 'Cao'
        END
      -- Nhóm 7: Giáo dục & Văn hóa (13, 18)
      WHEN rec.field_id IN (13, 18) THEN
        CASE 
          WHEN rec.avg_cr < 1.2 THEN 'Thấp'
          WHEN rec.avg_cr < 2.0 THEN 'Trung bình'
          ELSE 'Cao'
        END
      ELSE 'Không xác định'
    END;

    DBMS_OUTPUT.PUT_LINE(
      '- Nền tảng: ' || rec.social_name ||
      ' | Influencer: ' || rec.stage_name ||
      ' | Followers: ' || rec.total_followers ||
      ' | CR: ' || TO_CHAR(ROUND(rec.avg_cr, 2), 'FM990.00') || '%' ||
      '  Đánh giá: ' || v_rating ||
      ' | Tỉ lệ mua hàng: ' || TO_CHAR(ROUND(rec.avg_cr2, 2), 'FM990.00') || '%'
    );
  END LOOP;

  IF kol_cur%NOTFOUND THEN
    DBMS_OUTPUT.PUT_LINE('Không có dữ liệu cho lĩnh vực này.');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
END;
begin 
proc_compare_influ_performance2(1);
end;

/* 7. Dự đoán tăng trưởng followers trong 30 ngày tới dựa 
trên lịch sử thay đổi từ Log_change, tính tốc độ trung bình với biến thiên ±0.05, giúp dự báo sức ảnh hưởng của tài khoản. 
*/
drop PROCEDURE sp_predict_followers_growth;
CREATE OR REPLACE PROCEDURE sp_predict_followers_growth (
    p_acc_id IN NUMBER DEFAULT NULL
)
IS
    CURSOR acc_cursor IS
        SELECT a.acc_id, a.acc_name, s.social_name, a.followers AS current_followers
        FROM Accounts a
        JOIN SocialMedia s ON a.social_id = s.social_id
        WHERE (p_acc_id IS NULL OR a.acc_id = p_acc_id);

    TYPE log_rec IS RECORD (
        changed_date TIMESTAMP,
        type_change VARCHAR2(50),
        column_name VARCHAR2(50),
        old_values NCLOB,
        new_values NCLOB
    );

    TYPE log_list IS TABLE OF log_rec;
    logs log_list;

    TYPE num_list IS TABLE OF NUMBER;
    TYPE ts_list IS TABLE OF TIMESTAMP;

    followers_list num_list := num_list();
    dates_list ts_list := ts_list();

    v_followers NUMBER;
    v_growth NUMBER;
    v_days NUMBER;
    v_avg_daily_growth NUMBER := NULL;
    v_current NUMBER;
    v_min_pred NUMBER;
    v_max_pred NUMBER;
    v_today_followers NUMBER;

    -- Hàm tính số ngày giữa hai thời điểm
    FUNCTION get_days_between (t1 TIMESTAMP, t2 TIMESTAMP) RETURN NUMBER IS
        interv INTERVAL DAY TO SECOND := t2 - t1;
    BEGIN
        RETURN GREATEST(EXTRACT(DAY FROM interv) +
                        EXTRACT(HOUR FROM interv)/24 +
                        EXTRACT(MINUTE FROM interv)/1440 +
                        EXTRACT(SECOND FROM interv)/86400, 0.0001); -- Tránh chia cho 0
    END;

    -- Hàm trích xuất followers từ bản ghi INSERT
    FUNCTION parse_followers_from_insert (p_new_values NCLOB) RETURN NUMBER IS
        v_str VARCHAR2(4000);
        v_start_pos NUMBER;
        v_end_pos NUMBER;
    BEGIN
        v_str := SUBSTR(p_new_values, 1, 4000);
        v_start_pos := INSTR(v_str, 'followers=') + 10;
        v_end_pos := INSTR(v_str, ',', v_start_pos);
        IF v_end_pos = 0 THEN
            v_end_pos := LENGTH(v_str) + 1;
        END IF;
        RETURN TO_NUMBER(SUBSTR(v_str, v_start_pos, v_end_pos - v_start_pos));
    EXCEPTION
        WHEN OTHERS THEN
            RETURN NULL;
    END;

BEGIN
    -- Cập nhật followers hôm nay (mốc 3) với thay đổi ngẫu nhiên
    FOR acc IN (SELECT acc_id, followers FROM Accounts WHERE p_acc_id IS NULL OR acc_id = p_acc_id) LOOP
        v_today_followers := acc.followers + ROUND(DBMS_RANDOM.VALUE(-1000, 5000));
        IF v_today_followers < 0 THEN
            v_today_followers := 0; -- Đảm bảo followers không âm
        END IF;
        UPDATE Accounts
        SET followers = v_today_followers,
            update_date = SYSDATE
        WHERE acc_id = acc.acc_id;
    END LOOP;
    COMMIT;

    -- In tiêu đề
    DBMS_OUTPUT.PUT_LINE('ACC_NAME' || RPAD(' ', 30 - LENGTH('ACC_NAME')) ||
                         'SOCIAL_NAME' || RPAD(' ', 15 - LENGTH('SOCIAL_NAME')) ||
                         'CURRENT_FOLLOWERS' || RPAD(' ', 18 - LENGTH('CURRENT_FOLLOWERS')) ||
                         'AVG_DAILY_GROWTH' || RPAD(' ', 18 - LENGTH('AVG_DAILY_GROWTH')) ||
                         'MIN_PREDICTED' || RPAD(' ', 15 - LENGTH('MIN_PREDICTED')) ||
                         'MAX_PREDICTED');

    -- Lặp qua các tài khoản để tính toán và in kết quả
    FOR acc IN acc_cursor LOOP
        followers_list.DELETE;
        dates_list.DELETE;
        v_avg_daily_growth := NULL;

        -- Lấy lịch sử thay đổi từ Log_change
        SELECT changed_date, type_change, column_name, old_values, new_values
        BULK COLLECT INTO logs
        FROM Log_change
        WHERE table_name = 'Accounts'
          AND record_id = acc.acc_id
          AND (type_change = 'INSERT' OR (type_change = 'UPDATE' AND column_name = 'followers'))
          AND new_values IS NOT NULL
        ORDER BY changed_date;

        -- Trích xuất followers và ngày thay đổi
        FOR i IN 1..logs.COUNT LOOP
            IF logs(i).type_change = 'INSERT' THEN
                v_followers := parse_followers_from_insert(logs(i).new_values);
            ELSIF logs(i).type_change = 'UPDATE' THEN
                v_followers := TO_NUMBER(logs(i).new_values);
            END IF;

            IF v_followers IS NOT NULL THEN
                followers_list.EXTEND;
                followers_list(followers_list.LAST) := v_followers;
                dates_list.EXTEND;
                dates_list(dates_list.LAST) := logs(i).changed_date;
            END IF;
        END LOOP;

        -- Tính tốc độ tăng trưởng trung bình nếu có ít nhất 2 điểm v_avg_daily_growth := ROUND((followers_list(followers_list.LAST) - followers_list(1)) / v_days, 2);
        IF followers_list.COUNT >= 2 THEN
            v_days := get_days_between(dates_list(1), dates_list(dates_list.LAST));
            IF v_days > 0 THEN
                v_avg_daily_growth := ROUND((followers_list(followers_list.LAST) - followers_list(1)) / v_days, 2);
            END IF;
        END IF;

        -- Nếu không có dữ liệu tăng trưởng, giả định tăng trưởng bằng 0
        IF v_avg_daily_growth IS NULL THEN
            v_avg_daily_growth := 0;
        END IF;

        -- Số followers hiện tại từ bảng Accounts
        v_current := acc.current_followers;

        -- Dự đoán trong 30 ngày với biến thiên ±0.05
        v_min_pred := ROUND(v_current + (v_avg_daily_growth - 0.05) * 30);
        v_max_pred := ROUND(v_current + (v_avg_daily_growth + 0.05) * 30);

        -- Đảm bảo không âm
        IF v_min_pred < 0 THEN v_min_pred := 0; END IF;
        IF v_max_pred < 0 THEN v_max_pred := 0; END IF;

        -- In kết quả
        IF followers_list.COUNT < 2 THEN
            DBMS_OUTPUT.PUT_LINE('Không đủ dữ liệu cho tài khoản: ' || acc.acc_name || ' (' || acc.social_name || '), followers hiện tại: ' || v_current);
        ELSE
            DBMS_OUTPUT.PUT_LINE(
                RPAD(acc.acc_name, 30) ||
                RPAD(acc.social_name, 15) ||
                RPAD(v_current, 18) ||
                RPAD(NVL(TO_CHAR(v_avg_daily_growth, 'FM9999999990.00'), '0.00'), 18) ||
                RPAD(v_min_pred, 15) ||
                v_max_pred
            );
        END IF;
    END LOOP;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Lỗi: ' || SQLERRM);
END;
/
SET SERVEROUTPUT ON;
EXEC sp_predict_followers_growth(5);