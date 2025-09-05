-- trigger 1. Ghi lại nhật ký (log) các thay đổi khi cập nhật (UPDATE) bảng CONTRACT
CREATE OR REPLACE TRIGGER trig_log_contract_update
AFTER UPDATE ON tranne.CONTRACT
FOR EACH ROW
BEGIN
  -- Influencer ID
  IF :OLD.influ_id != :NEW.influ_id THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'INFLU_ID', TO_CHAR(:OLD.influ_id), TO_CHAR(:NEW.influ_id), USER);
  END IF;

  -- Client ID
  IF :OLD.client_id != :NEW.client_id THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'CLIENT_ID', TO_CHAR(:OLD.client_id), TO_CHAR(:NEW.client_id), USER);
  END IF;

  -- Subjects
  IF :OLD.subjects != :NEW.subjects THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'SUBJECTS', :OLD.subjects, :NEW.subjects, USER);
  END IF;

  -- Campaign goals
  IF :OLD.campaign_goals != :NEW.campaign_goals THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'CAMPAIGN_GOALS', :OLD.campaign_goals, :NEW.campaign_goals, USER);
  END IF;

  -- Start date
  IF :OLD.start_date != :NEW.start_date THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'START_DATE', TO_CHAR(:OLD.start_date, 'YYYY-MM-DD'), TO_CHAR(:NEW.start_date, 'YYYY-MM-DD'), USER);
  END IF;

  -- End date
  IF :OLD.end_date != :NEW.end_date THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'END_DATE', TO_CHAR(:OLD.end_date, 'YYYY-MM-DD'), TO_CHAR(:NEW.end_date, 'YYYY-MM-DD'), USER);
  END IF;

  -- Booking cost
  IF :OLD.bookingcost != :NEW.bookingcost THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'BOOKINGCOST', TO_CHAR(:OLD.bookingcost), TO_CHAR(:NEW.bookingcost), USER);
  END IF;

  -- Sign date
  IF :OLD.sign_date != :NEW.sign_date THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'SIGN_DATE', TO_CHAR(:OLD.sign_date, 'YYYY-MM-DD'), TO_CHAR(:NEW.sign_date, 'YYYY-MM-DD'), USER);
  END IF;

  -- Paid date 1
  IF :OLD.paid_date1 != :NEW.paid_date1 THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'PAID_DATE1', TO_CHAR(:OLD.paid_date1, 'YYYY-MM-DD'), TO_CHAR(:NEW.paid_date1, 'YYYY-MM-DD'), USER);
  END IF;

  -- Paid date 2
  IF :OLD.paid_date2 != :NEW.paid_date2 THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'PAID_DATE2', TO_CHAR(:OLD.paid_date2, 'YYYY-MM-DD'), TO_CHAR(:NEW.paid_date2, 'YYYY-MM-DD'), USER);
  END IF;

  -- Post quantity
  IF :OLD.post_quantity != :NEW.post_quantity THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'POST_QUANTITY', TO_CHAR(:OLD.post_quantity), TO_CHAR(:NEW.post_quantity), USER);
  END IF;

  -- Status
  IF :OLD.status != :NEW.status THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'STATUS', :OLD.status, :NEW.status, USER);
  END IF;

  -- Field ID
  IF :OLD.field_id != :NEW.field_id THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'FIELD_ID', TO_CHAR(:OLD.field_id), TO_CHAR(:NEW.field_id), USER);
  END IF;

  -- Paid amount 1
  IF :OLD.paid_amount1 != :NEW.paid_amount1 THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'PAID_AMOUNT1', TO_CHAR(:OLD.paid_amount1), TO_CHAR(:NEW.paid_amount1), USER);
  END IF;

  -- Paid amount 2
  IF :OLD.paid_amount2 != :NEW.paid_amount2 THEN
    INSERT INTO LOG_CHANGE (TABLE_NAME, TYPE_CHANGE, RECORD_ID, COLUMN_NAME, OLD_VALUES, NEW_VALUES, CHANGED_USER)
    VALUES ('CONTRACT', 'UPDATE', :NEW.contract_id, 'PAID_AMOUNT2', TO_CHAR(:OLD.paid_amount2), TO_CHAR(:NEW.paid_amount2), USER);
  END IF;

END;
/
-- trigger 2. Ghi lại nhật ký (log) khi thêm (INSERT), cập nhật (UPDATE) hoặc xóa (DELETE) bản ghi trong bảng Accounts
CREATE OR REPLACE TRIGGER trg_accounts_log_change
AFTER INSERT OR UPDATE OR DELETE ON Accounts
FOR EACH ROW
DECLARE
    v_user VARCHAR2(50) := USER;
BEGIN
    IF INSERTING THEN
        INSERT INTO Log_change (
            table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
        ) VALUES (
            'Accounts', 'INSERT', :NEW.acc_id, 'ALL', NULL,
            TO_NCLOB('acc_id=' || :NEW.acc_id || ', influ_id=' || :NEW.influ_id || 
                     ', social_id=' || :NEW.social_id || ', acc_name=' || :NEW.acc_name || 
                     ', link_acc=' || :NEW.link_acc || ', followers=' || :NEW.followers || 
                     ', followings=' || :NEW.followings || ', start_date=' || TO_CHAR(:NEW.start_date, 'YYYY-MM-DD') || 
                     ', update_date=' || TO_CHAR(:NEW.update_date, 'YYYY-MM-DD')),
            v_user, SYSTIMESTAMP
        );
    ELSIF UPDATING THEN
        IF :OLD.followers != :NEW.followers OR (:OLD.followers IS NULL AND :NEW.followers IS NOT NULL) OR (:OLD.followers IS NOT NULL AND :NEW.followers IS NULL) THEN
            INSERT INTO Log_change (
                table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
            ) VALUES (
                'Accounts', 'UPDATE', :NEW.acc_id, 'followers', TO_NCLOB(:OLD.followers), TO_NCLOB(:NEW.followers), v_user, SYSTIMESTAMP
            );
        END IF;
        IF :OLD.acc_name != :NEW.acc_name OR (:OLD.acc_name IS NULL AND :NEW.acc_name IS NOT NULL) OR (:OLD.acc_name IS NOT NULL AND :NEW.acc_name IS NULL) THEN
            INSERT INTO Log_change (
                table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
            ) VALUES (
                'Accounts', 'UPDATE', :NEW.acc_id, 'acc_name', :OLD.acc_name, :NEW.acc_name, v_user, SYSTIMESTAMP
            );
        END IF;
        IF :OLD.link_acc != :NEW.link_acc OR (:OLD.link_acc IS NULL AND :NEW.link_acc IS NOT NULL) OR (:OLD.link_acc IS NOT NULL AND :NEW.link_acc IS NULL) THEN
            INSERT INTO Log_change (
                table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
            ) VALUES (
                'Accounts', 'UPDATE', :NEW.acc_id, 'link_acc', :OLD.link_acc, :NEW.link_acc, v_user, SYSTIMESTAMP
            );
        END IF;
        IF :OLD.followings != :NEW.followings OR (:OLD.followings IS NULL AND :NEW.followings IS NOT NULL) OR (:OLD.followings IS NOT NULL AND :NEW.followings IS NULL) THEN
            INSERT INTO Log_change (
                table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
            ) VALUES (
                'Accounts', 'UPDATE', :NEW.acc_id, 'followings', TO_NCLOB(:OLD.followings), TO_NCLOB(:NEW.followings), v_user, SYSTIMESTAMP
            );
        END IF;
        IF :OLD.start_date != :NEW.start_date OR (:OLD.start_date IS NULL AND :NEW.start_date IS NOT NULL) OR (:OLD.start_date IS NOT NULL AND :NEW.start_date IS NULL) THEN
            INSERT INTO Log_change (
                table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
            ) VALUES (
                'Accounts', 'UPDATE', :NEW.acc_id, 'start_date', TO_CHAR(:OLD.start_date, 'YYYY-MM-DD'), TO_CHAR(:NEW.start_date, 'YYYY-MM-DD'), v_user, SYSTIMESTAMP
            );
        END IF;
        IF :OLD.update_date != :NEW.update_date OR (:OLD.update_date IS NULL AND :NEW.update_date IS NOT NULL) OR (:OLD.update_date IS NOT NULL AND :NEW.update_date IS NULL) THEN
            INSERT INTO Log_change (
                table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
            ) VALUES (
                'Accounts', 'UPDATE', :NEW.acc_id, 'update_date', TO_CHAR(:OLD.update_date, 'YYYY-MM-DD'), TO_CHAR(:NEW.update_date, 'YYYY-MM-DD'), v_user, SYSTIMESTAMP
            );
        END IF;
    ELSIF DELETING THEN
        INSERT INTO Log_change (
            table_name, type_change, record_id, column_name, old_values, new_values, changed_user, changed_date
        ) VALUES (
            'Accounts', 'DELETE', :OLD.acc_id, 'ALL',
            TO_NCLOB('acc_id=' || :OLD.acc_id || ', influ_id=' || :OLD.influ_id || 
                     ', social_id=' || :OLD.social_id || ', acc_name=' || :OLD.acc_name || 
                     ', link_acc=' || :OLD.link_acc || ', followers=' || :OLD.followers || 
                     ', followings=' || :OLD.followings || ', start_date=' || TO_CHAR(:OLD.start_date, 'YYYY-MM-DD') || 
                     ', update_date=' || TO_CHAR(:OLD.update_date, 'YYYY-MM-DD')),
            NULL, v_user, SYSTIMESTAMP
        );
    END IF;
END;
/
-- Trigger 3. Đảm bảo factor_number trong bảng Social_Factor nằm trong khoảng [1, 3]
CREATE OR REPLACE TRIGGER trg_social_factor_factor_number
BEFORE INSERT OR UPDATE OF factor_number ON Social_Factor
FOR EACH ROW
BEGIN
    IF :NEW.factor_number < 1 OR :NEW.factor_number > 3 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Hệ số factor_number phải nằm trong khoảng từ 1 đến 3.');
    END IF;
    
    
END;
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, 'Nano', 1000, 10000, 4);

-- Trigger 4. Đảm bảo factor_field trong bảng Fields nằm trong khoảng [1, 3]
CREATE OR REPLACE TRIGGER trg_fields_factor_field
BEFORE INSERT OR UPDATE OF factor_field ON Fields
FOR EACH ROW
BEGIN
    IF :NEW.factor_field < 1 OR :NEW.factor_field > 3 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Hệ số factor_field phải nằm trong khoảng từ 1 đến 3.');
    END IF;
END;
/

UPDATE Fields SET factor_field = 4 WHERE field_id = 1;
---- Trigger 5. Đảm bảo status trong bảng Contract chỉ nhận 'P', 'C', 'X' và end_date ≥ start_date.
CREATE OR REPLACE TRIGGER trg_contract_status_dates
BEFORE INSERT OR UPDATE OF status, start_date, end_date ON Contract
FOR EACH ROW
BEGIN
    IF :NEW.status NOT IN ('P', 'C', 'X') THEN
        RAISE_APPLICATION_ERROR(-20006, 'Trạng thái status trong Contract chỉ được là P, C hoặc X.');
    END IF;
    
    IF :NEW.end_date IS NOT NULL AND :NEW.start_date IS NOT NULL THEN
        IF :NEW.end_date < :NEW.start_date THEN
            RAISE_APPLICATION_ERROR(-20007, 'Ngày kết thúc phải lớn hơn hoặc bằng ngày bắt đầu.');
        END IF;
    END IF;
    
END;
/
select contract_id, start_date, end_date, status  from contract WHERE contract_id = 1;
UPDATE Contract SET status = 'Z' WHERE contract_id = 1;
 UPDATE Contract SET end_date = TO_DATE('2024-12-31', 'YYYY-MM-DD') WHERE contract_id = 1;
----Trigger tự động cập nhật cột liên quan (DML).
/* Trigger 6. khi update và insert bảng contract cột (paid_ammount1-2) kiểm tra paid_ammount1-2 đã đủ chưa, 
đủ rồi thì so sánh sum 2 cái có bằng bookingcost không,  nếu bằng thì kiểm tra tiếp đếm số post_id có bằng post_quantity thuộc contract chưa,
đáp ứng đủ thì insert Completed, bên cạnh đó cập nhập cột ngày paid_date1,2 khi insert hoặc update paid_amount1, paid_amount2 */

drop TRIGGER trg_contract_payment_status;

CREATE OR REPLACE TRIGGER trg_contract_payment_status
BEFORE INSERT OR UPDATE OF paid_amount1, paid_amount2 ON Contract
FOR EACH ROW
DECLARE
    v_post_count NUMBER;
BEGIN
    -- Cập nhật paid_date1 nếu paid_amount1 không null và đã thay đổi
    IF :NEW.paid_amount1 IS NOT NULL AND :NEW.paid_amount1 != NVL(:OLD.paid_amount1, -1) THEN
        :NEW.paid_date1 := SYSDATE;
    END IF;

    -- Cập nhật paid_date2 nếu paid_amount2 không null và đã thay đổi
    IF :NEW.paid_amount2 IS NOT NULL AND :NEW.paid_amount2 != NVL(:OLD.paid_amount2, -1) THEN
        :NEW.paid_date2 := SYSDATE;
    END IF;

    -- Kiểm tra nếu cả paid_amount1 và paid_amount2 không null
    IF :NEW.paid_amount1 IS NOT NULL AND :NEW.paid_amount2 IS NOT NULL THEN
        -- Kiểm tra tổng có bằng bookingcost không
        IF (:NEW.paid_amount1 + :NEW.paid_amount2) = :NEW.bookingcost THEN
            -- Đếm số bài đăng liên quan đến contract_id thông qua Contract_Details
            SELECT COUNT(p.post_id)
            INTO v_post_count
            FROM Post p
            JOIN Contract_Details cd ON p.details_id = cd.details_id
            WHERE cd.contract_id = :NEW.contract_id;

            -- Kiểm tra số bài đăng có bằng hoặc vượt post_quantity không
            IF v_post_count >= :NEW.post_quantity THEN
                -- Cập nhật status trong bảng Contract
                UPDATE Contract
                SET status = 'C'
                WHERE contract_id = :NEW.contract_id;
            END IF;
        END IF;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20011, 'Không tìm thấy bài đăng cho contract_id: ' || :NEW.contract_id);
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20012, 'Lỗi trigger trg_contract_payment_status: ' || SQLERRM);
END;
/

---kiểm thử:
-- Thêm hợp đồng
select contract_id, bookingcost, paid_amount1,paid_date1, paid_amount2,paid_date2, status, post_quantity  from Contract where contract_id =11;

 select distinct c.contract_id,  count(p.post_id) as post_count 
 from contract c 
 join contract_details d on c.contract_id=d.contract_id 
 join post p on d.details_id=p.details_id
 where c.contract_id =11
 group by c.contract_id, d.details_id;
update contract set status = 'C' where  contract_id =11;

update contract set paid_amount1 = 17000000 where  contract_id =11;
update contract set paid_amount2 = 17000000 where  contract_id =11;

--- Trigger 7. khi update links, subject, contents_post, details_id, status, durations, type_post ở bảng post thì cập nhật cột updated_date thành ngày update links 
CREATE OR REPLACE TRIGGER trg_post_updated_date
BEFORE UPDATE OF ACC_ID,LIKES,COMMENTS,VIEWS,REACHES,SHARES, CREATE_DATE,   LINKS_POST, subject, contents_post, details_id, status, durations, type_post ON Post
FOR EACH ROW
BEGIN
    :NEW.UPDATED_DATE := SYSDATE;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20006, 'Lỗi trigger trg_post_updated_date: ' || SQLERRM);
END;
/
select  POST_ID,ACC_ID,details_id, status, durations, type_post, UPDATED_DATE From post;

update post set durations=0 where post_id=1;
---- Trigger 8. khi insert hay update cột durations nếu bằng = 0 hoặc null thì type_post = 'ảnh' ngược lại >< 0 thì type_post='video'

CREATE OR REPLACE TRIGGER trg_post_type_duration
BEFORE INSERT OR UPDATE OF durations ON Post
FOR EACH ROW
BEGIN
    IF :NEW.durations IS NULL OR :NEW.durations = 0 THEN
        :NEW.type_post := 'ảnh';
    ELSE
        :NEW.type_post := 'video';
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20007, 'Lỗi trigger trg_post_type_duration: ' || SQLERRM);
END;
/
 select  post_id, details_id, durations  , TYPE_POST
 from  
  post 
 where details_id =41;
 update post set durations=0 where details_id =41;

--- Trigger 9. cảnh báo khi update hoặc insert POST_TYPE ở bảng post không bằng cột POST_TYPE ở bảng contract_Details 

CREATE OR REPLACE TRIGGER trg_post_type_validation
BEFORE INSERT OR UPDATE OF TYPE_POST ON Post
FOR EACH ROW
DECLARE
    v_contract_post_type VARCHAR2(50);
BEGIN
    -- Lấy post_type từ Contract_Details dựa trên contract_id
    SELECT post_type
    INTO v_contract_post_type
    FROM Contract_Details
    WHERE DETAILS_id = :NEW.DETAILS_id
    AND ROWNUM = 1; -- Giả định mỗi contract chỉ có 1 post_type trong Contract_Details

    -- Kiểm tra post_type có khớp không
    IF :NEW.TYPE_POST != v_contract_post_type THEN
        RAISE_APPLICATION_ERROR(-20012, 'post_type (' || :NEW.TYPE_POST || 
                               ') không khớp với post_type yêu cầu (' || v_contract_post_type || 
                               ') trong Contract_Details');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20013, 'Không tìm thấy Contract_Details có id: ' || :NEW.DETAILS_id);
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20014, 'Lỗi trigger trg_post_type_validation: ' || SQLERRM);
END;
/
--kiểm thử:

 select  p.post_id, c.details_id, p.durations  , c.POST_TYPE as Required_post_type ,p.TYPE_POST as post_type
 from  
  post p join contract_details c on p.DETAILS_ID=c.DETAILS_ID
 where c.DETAILS_ID=50;
 
 BEGIN
    UPDATE post p
    SET p.type_post = (
        SELECT c.post_type
        FROM contract_details c
        WHERE c.details_id = p.details_id
    )
    WHERE EXISTS (
        SELECT 1
        FROM contract_details c
        WHERE c.details_id = p.details_id
    );
END;
/


 update post set TYPE_POST='ảnh' where DETAILS_ID=50;
 update contract_details set POST_TYPE='ảnh' where POST_TYPE='hình ảnh';
select * from contract_details;

-- Cập nhật post_type không khớp
UPDATE Posts
SET post_type = 'ảnh'
WHERE post_id = 1;
-- Kết quả: Lỗi tương tự


--- trigger 10. cảnh báo khi insert hay update durations ở bảng post kh khớp trong khoảng min  & max durations trong bảng contract_Details
drop trigger trg_post_duration_validation; 
CREATE OR REPLACE TRIGGER trg_post_duration_validation
BEFORE INSERT OR UPDATE OF durations ON Post
FOR EACH ROW
DECLARE
    v_min_duration NUMBER;
    v_max_duration NUMBER;
BEGIN
    -- Lấy min_duration và max_duration từ Contract_Details
    SELECT min_duration, max_duration
    INTO v_min_duration, v_max_duration
    FROM Contract_Details
    WHERE details_id = :NEW.details_id
    AND ROWNUM = 1; -- Giả định mỗi contract chỉ có 1 bản ghi Contract_Details

    -- Kiểm tra durations có nằm trong khoảng [min_duration, max_duration]
    IF :NEW.durations IS NOT NULL AND 
       (:NEW.durations < v_min_duration OR :NEW.durations > v_max_duration) THEN
        RAISE_APPLICATION_ERROR(-20015, 'durations (' || :NEW.durations || 
                               ') không nằm trong khoảng [' || v_min_duration || ', ' || v_max_duration || ']');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20016, 'Không tìm thấy Contract_Details với id: ' || :NEW.details_id);
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20017, 'Lỗi trigger trg_post_duration_validation: ' || SQLERRM);
END;
/
----kiểm thử
 select  p.post_id, c.details_id  , c.min_duration,c.max_duration , p.durations, p.TYPE_POST as post_type
 from  
  post p join contract_details c on p.DETAILS_ID=c.DETAILS_ID
 where c.DETAILS_ID=50;
-- Cập nhật durations không hợp lệ
UPDATE Post
SET durations = 20
WHERE post_id = 50;

----In stead of trigger 
/* 11. tạo triggers instead of cho phép người dùng thêm chi tiết của contract qua view mà không cần truy cập bảng `contract`. 
thêm thông tin bảng contract_details, contractdetails_product (có thể thêm sp mới nếu kh nhập mã sp) thông qua nhập contract_id */

CREATE OR REPLACE VIEW vw_product_performance AS
SELECT c.contract_id, d.details_id, d.method, d.review_deadline, d.post_type, 
       d.min_duration, d.max_duration, d.notes, p.cdp_id, p.pro_id, u.pro_name, p.quantities
FROM contract c 
JOIN contract_details d ON c.contract_id = d.contract_id
JOIN contractdetails_product p ON d.details_id = p.details_id 
JOIN products u ON p.pro_id = u.pro_id
order by c.contract_id desc;

drop trigger trg_vw_product_performance;
CREATE OR REPLACE TRIGGER trg_vw_product_performance
INSTEAD OF INSERT ON vw_product_performance
FOR EACH ROW
DECLARE
    v_pro_id NUMBER;
    v_details_id NUMBER;
    v_cdp_id NUMBER;
    v_count NUMBER;
    v_client_id NUMBER;
BEGIN
    -- Kiểm tra contract_id tồn tại
    SELECT client_id
    INTO v_client_id
    FROM Contract
    WHERE contract_id = :NEW.contract_id;
    IF v_client_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20007, 'contract_id không tồn tại trong bảng Contract');
    END IF;

    -- Kiểm tra nếu details_id được cung cấp và hợp lệ
    IF :NEW.details_id IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_count
        FROM Contract_Details
        WHERE details_id = :NEW.details_id
        AND contract_id = :NEW.contract_id;
        IF v_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20011, 'details_id không tồn tại hoặc không thuộc contract_id: ' || :NEW.contract_id);
        END IF;
        v_details_id := :NEW.details_id;
    ELSE
        -- Thêm vào Contract_Details nếu details_id không được cung cấp
        INSERT INTO Contract_Details (contract_id, method, review_deadline, post_type, min_duration, max_duration, notes)
        VALUES (:NEW.contract_id, :NEW.method, :NEW.review_deadline, :NEW.post_type, 
                :NEW.min_duration, :NEW.max_duration, :NEW.notes)
        RETURNING details_id INTO v_details_id;
    END IF;

    -- Nếu không cung cấp pro_id, thêm sản phẩm mới vào Products
    IF :NEW.pro_id IS NULL THEN
        INSERT INTO Products (pro_name, client_id)
        VALUES (NVL(:NEW.pro_name, 'Unknown Product'), v_client_id)
        RETURNING pro_id INTO v_pro_id;
    ELSE
        -- Kiểm tra xem pro_id tồn tại
        SELECT COUNT(*)
        INTO v_count
        FROM Products
        WHERE pro_id = :NEW.pro_id;
        IF v_count = 0 THEN
            RAISE_APPLICATION_ERROR(-20008, 'pro_id không tồn tại trong bảng Products');
        END IF;
        v_pro_id := :NEW.pro_id;
    END IF;

    -- Thêm vào ContractDetails_Product
    INSERT INTO ContractDetails_Product (details_id, pro_id, quantities)
    VALUES (v_details_id, v_pro_id, 1)
    RETURNING cdp_id INTO v_cdp_id;

    -- Kiểm tra durations của bài đăng liên quan (nếu có)
    FOR post_rec IN (
        SELECT p.post_id, p.durations
        FROM Post p
        JOIN Contract_Details cd ON p.details_id = cd.details_id
        WHERE cd.contract_id = :NEW.contract_id
    ) LOOP
        IF post_rec.durations IS NOT NULL AND 
           (post_rec.durations < NVL(:NEW.min_duration, 0) * 60 OR 
            post_rec.durations > NVL(:NEW.max_duration, 9999) * 60) THEN
            RAISE_APPLICATION_ERROR(-20009, 'Bài đăng ID ' || post_rec.post_id || 
                                   ': durations (' || post_rec.durations || 
                                   ' giây) không nằm trong khoảng [' || NVL(:NEW.min_duration, 0) * 60 || ', ' || 
                                   NVL(:NEW.max_duration, 9999) * 60 || '] giây');
        END IF;
    END LOOP;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20007, 'contract_id không tồn tại trong bảng Contract');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20010, 'Lỗi trigger trg_vw_product_performance: ' || SQLERRM);
END;
/
select * from vw_product_performance where contract_id =20;
select * from contractdetails_product where contract_id =20;

---kiểm thử
SELECT c.contract_id, d.details_id, d.method, d.review_deadline, d.post_type, 
       d.min_duration, d.max_duration, d.notes, p.cdp_id, p.pro_id, u.pro_name, p.quantities
FROM contract c 
JOIN contract_details d ON c.contract_id = d.contract_id
JOIN contractdetails_product p ON d.details_id = p.details_id 
JOIN products u ON p.pro_id = u.pro_id
where c.contract_id =20;


