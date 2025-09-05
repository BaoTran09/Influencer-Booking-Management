--  Conversion RateConversion Tỷ lệ chuyển đổi = (Số lần chuyển đổi hoặc mục tiêu hoàn thành / Tổng số lượt truy cập) * 100 CỦA CỦA 1 SẢN PHẨM/POST 
DROP PACKAGE pkg_conversion_rate;
DROP PACKAGE pkg_conversion_rate;

CREATE OR REPLACE PACKAGE pkg_conversion_rate IS
    -- Procedure 1: Tính tỷ lệ chuyển đổi dựa trên tổng (likes + comments + shares)/views
    PROCEDURE proc_post_con_rate_CR(v_post_id IN Post.post_id%TYPE);
    
    -- Procedure 2: Tính tỷ lệ chuyển đổi dựa trên tổng số pro_clicks/views
    PROCEDURE proc_pro_clicks_con_rate(v_post_id IN Post.post_id%TYPE);
    
    -- Procedure 3: Tính tỷ lệ chuyển đổi dựa trên tổng số pro_purchases/views
    PROCEDURE proc_pro_purchase_rate1(v_post_id IN Post.post_id%TYPE);
    
    -- Procedure 4: Tính tỷ lệ chuyển đổi dựa trên tổng số pro_purchases/pro_clicks
    PROCEDURE proc_pro_purchase_rate2(v_post_id IN Post.post_id%TYPE);
END pkg_conversion_rate;
/

CREATE OR REPLACE PACKAGE BODY pkg_conversion_rate IS
    -- Procedure 1: Tỷ lệ chuyển đổi (likes + comments + shares)/views
    PROCEDURE proc_post_con_rate_CR(v_post_id IN Post.post_id%TYPE) IS
        v_views NUMBER;
        v_total_interactions NUMBER;
        v_conversion_rate NUMBER;
    BEGIN
        -- Lấy số lượt views, likes, comments, shares
        SELECT NVL(views, 0), NVL(likes, 0) + NVL(comments, 0) + NVL(shares, 0)
        INTO v_views, v_total_interactions
        FROM Post
        WHERE post_id = v_post_id;
        -- Tính tỷ lệ chuyển đổi
        IF v_views > 0 THEN
            v_conversion_rate := (v_total_interactions / v_views) * 100;
        ELSE
            v_conversion_rate := 0;
        END IF;

        -- In kết quả
        DBMS_OUTPUT.PUT_LINE('Post ID: ' || v_post_id || ' - Tỷ lệ chuyển đổi (interactions/views): ' || 
                             ROUND(v_conversion_rate, 2) || '%');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20021, 'Post ID ' || v_post_id || ' không tồn tại');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20022, 'Lỗi proc_post_con_rate_CR: ' || SQLERRM);
    END proc_post_con_rate_CR;

    -- Procedure 2: Tỷ lệ chuyển đổi pro_clicks/views
    PROCEDURE proc_pro_clicks_con_rate(v_post_id IN Post.post_id%TYPE) IS
        v_views NUMBER;
        v_total_clicks NUMBER;
        v_conversion_rate NUMBER;
    BEGIN
        -- Lấy số lượt views
        SELECT NVL(views, 0)
        INTO v_views
        FROM Post
        WHERE post_id = v_post_id;

        -- Lấy tổng số pro_clicks từ Post_details
        SELECT NVL(SUM(NVL(pro_clicks, 0)), 0)
        INTO v_total_clicks
        FROM Post_details
        WHERE post_id = v_post_id;

        -- Tính tỷ lệ chuyển đổi
        IF v_views > 0 THEN
            v_conversion_rate := (v_total_clicks / v_views) * 100;
        ELSE
            v_conversion_rate := 0;
        END IF;

        -- In kết quả
        DBMS_OUTPUT.PUT_LINE('Post ID: ' || v_post_id || ' - Tỷ lệ chuyển đổi (pro_clicks/views): ' || 
                             ROUND(v_conversion_rate, 2) || '%');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20021, 'Post ID ' || v_post_id || ' không tồn tại');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20023, 'Lỗi proc_pro_clicks_con_rate: ' || SQLERRM);
    END proc_pro_clicks_con_rate;

    -- Procedure 3: Tỷ lệ chuyển đổi pro_purchases/views
    PROCEDURE proc_pro_purchase_rate1(v_post_id IN Post.post_id%TYPE) IS
        v_views NUMBER;
        v_total_purchases NUMBER;
        v_conversion_rate NUMBER;
    BEGIN
        -- Lấy số lượt views
        SELECT NVL(views, 0)
        INTO v_views
        FROM Post
        WHERE post_id = v_post_id;

        -- Lấy tổng số pro_purchases từ Post_details
        SELECT NVL(SUM(NVL(pro_purchases, 0)), 0)
        INTO v_total_purchases
        FROM Post_details
        WHERE post_id = v_post_id;

        -- Tính tỷ lệ chuyển đổi
        IF v_views > 0 THEN
            v_conversion_rate := (v_total_purchases / v_views) * 100;
        ELSE
            v_conversion_rate := 0;
        END IF;

        -- In kết quả
        DBMS_OUTPUT.PUT_LINE('Post ID: ' || v_post_id || ' - Tỷ lệ chuyển đổi (pro_purchases/views): ' || 
                            TO_CHAR( ROUND(v_conversion_rate, 2) , 'FM990.00')|| '%');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20021, 'Post ID ' || v_post_id || ' không tồn tại');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20024, 'Lỗi proc_pro_purchase_rate1: ' || SQLERRM);
    END proc_pro_purchase_rate1;

    -- Procedure 4: Tỷ lệ chuyển đổi pro_purchases/pro_clicks
    PROCEDURE proc_pro_purchase_rate2(v_post_id IN Post.post_id%TYPE) IS
        v_total_clicks NUMBER;
        v_total_purchases NUMBER;
        v_conversion_rate NUMBER;
    BEGIN
        -- Lấy tổng số pro_clicks và pro_purchases từ Post_details
        SELECT NVL(SUM(NVL(pro_clicks, 0)), 0), NVL(SUM(NVL(pro_purchases, 0)), 0)
        INTO v_total_clicks, v_total_purchases
        FROM Post_details
        WHERE post_id = v_post_id;

        -- Tính tỷ lệ chuyển đổi
        IF v_total_clicks > 0 THEN
            v_conversion_rate := (v_total_purchases / v_total_clicks) * 100;
        ELSE
            v_conversion_rate := 0;
        END IF;

        -- In kết quả
        DBMS_OUTPUT.PUT_LINE('Post ID: ' || v_post_id || ' - Tỷ lệ chuyển đổi (pro_purchases/pro_clicks): ' || 
                             TO_CHAR(ROUND(v_conversion_rate, 2),'FM990.00') || '%');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20021, 'Post ID ' || v_post_id || ' không tồn tại');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20025, 'Lỗi proc_pro_purchase_rate2: ' || SQLERRM);
    END proc_pro_purchase_rate2;
END pkg_conversion_rate;
/
