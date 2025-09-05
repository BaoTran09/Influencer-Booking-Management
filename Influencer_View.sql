----- VIEW GIẤU THÔNG TIN
--1. BẢNG CONTRACT 
create or replace view vw_contract_readonly as
select distinct  l.client_name as "Khách hàng",subjects as "Chủ đề hợp tác",f.field_name as "lĩnh vực"  , i.stage_name as "Influencer"
from contract c join clients l on c.client_id=l.client_id
join fields f on f.field_id=c.field_id
join influencer i on i.influ_id=c.influ_id
order by l.client_name   ;

SELECT * FROM vw_contract_readonly;
--2. THÔNG TIN CHI TIẾT VỀ contract_expense
CREATE OR REPLACE VIEW vw_contract_expense_public AS
SELECT  distinct 
    c.subjects AS "Chủ đề hợp tác",
    s.ex_subject AS "Loại chi phí",
    e.quantities AS "Số lượng"
FROM contract_expense e
JOIN contract c ON e.contract_id = c.contract_id
join expense s on e.ex_id=s.ex_id
ORDER BY c.subjects;
---3.view hiển thị những dự án chưa hoàn thiện, hiển thị ngày hoàn thiện và đếm ngược còn bao nhiêu ngày
CREATE OR REPLACE VIEW vw_unfinished_contract AS
SELECT contract_id,
       subjects,
       client_id,
       client_name,
       "Ngày kết thúc",
       "Còn lại (ngày)"
FROM (
    SELECT c.contract_id,
           c.subjects,
           l.client_id,
           l.client_name,
           TO_CHAR(c.end_date, 'dd/mm/yyyy') AS "Ngày kết thúc",
           ROUND(c.end_date - SYSDATE) AS "Còn lại (ngày)",
           ROW_NUMBER() OVER (
               PARTITION BY c.subjects 
               ORDER BY c.end_date ASC
           ) AS rn
    FROM contract c
    JOIN clients l ON c.client_id = l.client_id
    WHERE c.end_date > SYSDATE
)
WHERE rn = 1
ORDER BY "Còn lại (ngày)" ASC;

---- VIEW BÁO CÁO
---4.  view show top 5 influencer có nhiều followers nhất trên tiktok
create view vw_top5_followers as
select  i.influ_id, i.stage_name, a.followers
from influencer i join accounts a on
i.influ_id=a.influ_id
where social_id =1
order by a.followers desc
fetch first 5 rows only;
SELECT * FROM vw_top5_followers;

---5. so sánh mức độ hiệu quả của các lĩnh vực trên các nền tảng mạng xã họi, dựa trên trung bình tỉ lệ tương tác  / lượng người truy cập thực 
CREATE OR REPLACE VIEW vw_ER_fields AS
SELECT 
    f.field_name,
    m.social_name,
    ROUND(AVG((NVL(p.likes, 0) + NVL(p.comments, 0) + NVL(p.shares, 0)) / NULLIF(p.reaches, 0)), 3) AS chi_so_tuong_tac,
    CASE 
        WHEN ROUND(AVG((NVL(p.likes, 0) + NVL(p.comments, 0) + NVL(p.shares, 0)) / NULLIF(p.reaches, 0)), 3) < 0.5 THEN 'Thấp'
        WHEN ROUND(AVG((NVL(p.likes, 0) + NVL(p.comments, 0) + NVL(p.shares, 0)) / NULLIF(p.reaches, 0)), 3) BETWEEN 0.1 AND 0.62 THEN 'Trung bình'
        ELSE 'Cao'
    END AS muc_do_tuong_tac
FROM 
    fields f 
JOIN contract c ON f.field_id = c.field_id
JOIN contract_details d ON c.contract_id = d.contract_id
JOIN post p ON d.details_id = p.details_id
JOIN accounts a ON a.acc_id = p.acc_id
JOIN socialmedia m ON m.social_id = a.social_id
GROUP BY 
    f.field_name, 
    m.social_name;
---6. sắp xếp các nền tnền tảng mạng xã hội theo số thuê để quảng cáo sắp từ nhiều tới ít

create or replace  view vw_top1social as 
select s.social_id, s.social_name, count (a.social_id) as solan
from socialmedia s join accounts a on
s.social_id=a.social_id 
join post p on a.acc_id=p.acc_id
group by s.social_id, s.social_name
order by count (a.social_id) desc;
-----7. hợp đồng theo tháng, so sánh tỷ lệ tăng trưởng hợp đồng so với tháng trước 
drop view vw_monthlycontract;

CREATE OR REPLACE VIEW vw_monthlycontract AS
SELECT
  curr.month_year,
  curr.solan,  
  ROUND(
    (curr.solan - prev.solan)  / NULLIF(prev.solan, 0), 3
  ) AS "tỉ lệ tăng trưởng hợp đồng",
  round(( curr.doanhthu-prev.doanhthu)/NULLIF(prev.doanhthu,0),3) as "tỉ lệ tăng trưởng doanh thu"
FROM (
  SELECT TO_CHAR(sign_date, 'YYYY-MM') AS month_year,
         COUNT(contract_id) AS solan, sum(bookingcost) as doanhthu
  FROM contract
  GROUP BY TO_CHAR(sign_date, 'YYYY-MM')
) curr
LEFT JOIN (
  SELECT TO_CHAR(sign_date, 'YYYY-MM') AS month_year,
         COUNT(contract_id) AS solan,  sum(bookingcost) as doanhthu
  FROM contract
  GROUP BY TO_CHAR(sign_date, 'YYYY-MM')
) prev
  ON TO_DATE(curr.month_year || '-01', 'YYYY-MM-DD')
     = ADD_MONTHS(TO_DATE(prev.month_year || '-01', 'YYYY-MM-DD'), 1)
ORDER BY TO_DATE(curr.month_year || '-01', 'YYYY-MM-DD') asc;

SELECT * FROM vw_monthlycontract;

---8. tổng số hợp đồng, trung bình doanh thu, lợi nhuận của hợp đồng mang lại của 1 influencẻr trong 1 năm
drop view vw_yearly_influencer_revenue;
CREATE OR REPLACE VIEW vw_yearly_influencer_revenue AS
SELECT
  inf.influ_id,
  inf.influ_lastname||' ' ||inf.influ_firstname as hoten,
  TO_CHAR(c.sign_date, 'YYYY') AS year,
  COUNT(  c.contract_id) AS total_contracts,
  ROUND(AVG(c.bookingcost), 2) AS avg_revenue,
  ROUND(AVG(c.bookingcost - (e.quantities * e.costs)), 2) AS avg_profit
  
FROM
  contract c
JOIN
  contract_expense e ON c.contract_id = e.contract_id
JOIN
  contract_details cd ON c.contract_id = cd.contract_id
JOIN
  influencer inf ON c.influ_id = inf.influ_id
  where to_char(TO_CHAR(c.sign_date, 'YYYY'))=2025
GROUP BY
  inf.influ_id, inf.influ_lastname,inf.influ_firstname ,
  TO_CHAR(c.sign_date, 'YYYY')
ORDER BY
 inf.influ_id, year DESC;
SELECT * FROM Contract_Expense;

SELECT * FROM vw_yearly_influencer_revenue;
CREATE OR REPLACE VIEW vw_yearly_influencer_revenue AS
WITH temp_yearly_influencer_revenue AS (
    SELECT
        inf.influ_id,
        inf.influ_lastname || ' ' || inf.influ_firstname AS hoten,
        EXTRACT(YEAR FROM c.sign_date) AS year,
        COUNT(c.contract_id) AS total_contracts,
        ROUND(SUM(c.bookingcost - (e.factor * (c.bookingcost - (e.costs * e.quantities)))), 2) AS total_revenue,
        ROUND(AVG(c.bookingcost - (e.factor * (c.bookingcost - (e.costs * e.quantities)))), 2) AS avg_profit,
        ROUND(SUM(e.factor * e.quantities), 2) AS discount
    FROM
        Contract c
    JOIN
        Contract_Expense e ON c.contract_id = e.contract_id
    JOIN
        Contract_Details cd ON c.contract_id = cd.contract_id
    JOIN
        Influencer inf ON c.influ_id = inf.influ_id
    WHERE
        EXTRACT(YEAR FROM c.sign_date) = 2025
    GROUP BY
        inf.influ_id,
        inf.influ_lastname,
        inf.influ_firstname,
        EXTRACT(YEAR FROM c.sign_date)
)
SELECT
    influ_id,
    hoten,
    year,
    total_contracts,
    total_revenue,
    avg_profit,
    discount
FROM
    temp_yearly_influencer_revenue
ORDER BY
    influ_id,
    year DESC;