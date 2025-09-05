---table Clients lấy dữ liệu thật 
---thêm  lĩnh vực trực tiếp vào bảng clients , field_id chuyển qua cho influ
drop table Clients;

CREATE TABLE Clients (
  client_id NUMBER GENERATED ALWAYS AS IDENTITY, ---id khách hàng 
  client_name NVARCHAR2(100)  NULL, -- tên khách hàng
  business_field nvarchar2(100)  null,  --  lĩnh vực kinh doanh '
  business_introduce nclob null,
  email VARCHAR2(100) unique   NULL, ---mail khách hàng
  phone_number VARCHAR2(10)  NULL, ----sdt khách hàng
  website VARCHAR2(150) null, ----website của khách hàng (có thể là web hoặc đường dẫn đến kênh mạng xã hội của khách hàng/
  address VARCHAR2(150)  null, ---địa chỉ khách hàng,
  note nvarchar2(600) null,
  CONSTRAINT PK_Clients PRIMARY KEY (client_id)
);
---table Influencer lấy dữ liệu thật
drop table Influencer;
CREATE TABLE Influencer (
  influ_id NUMBER GENERATED ALWAYS AS IDENTITY , --id người nổi tiếng
  influ_lastname NVARCHAR2(100)  NULL, -- họ người nổi tiếng
  influ_firstname NVARCHAR2(50)  NULL,-- tên đệm và tên người nổi tiếng
  email VARCHAR2(100) null, --mail người nổi tiếng
  phone_number NVARCHAR2(15) null, --số điện thoại người nổi tiếng
  sex NVARCHAR2(10)  NULL, -- giới tính người nổi tiếng
  birthdate DATE NULL, -- ngày sinh người nổi tiếng
  address NVARCHAR2(500) NULL, -- địa chỉ người nổi tiếng
  stage_name NVARCHAR2(150) NULL, --nghệ danh
  strengths  NCLOB NULL, 
  -- điểm mạnh người nổi tiếng: 
  --chuyên môn: ví dụ: trang điểm, skincare 
  --màu sắc nội dung: ví dụ: test sản phẩm, makeup theo layout, thực hiện makeup theo trend,...
  --phong cách: ví dụ: sang trọng, quyến rũ, nữ tính,...
  CONSTRAINT PK_Infuencer PRIMARY KEY(Influ_id),
  CONSTRAINT CK_Influencer_sex CHECK (sex IN ('Nam', 'Nữ', 'Khác')),
  CONSTRAINT UK_Influencer_email UNIQUE (email)
);
---table SocialMedia lấy dữ liệu thật
CREATE TABLE SocialMedia (
social_id NUMBER GENERATED ALWAYS AS IDENTITY, -- id nền tảng mạng xã hội như tiktok, facebook
social_name NVARCHAR2(50)  NULL, ---- tên nền tảng mạng xã hội như tiktok, facebook
CONSTRAINT PK_SocialMedia PRIMARY KEY (social_id)
);
------
 create table Social_Factor (
  factor_id NUMBER GENERATED ALWAYS AS IDENTITY, ---mã yếu tố
  social_id number not null, ---nền tảng mạng xã hội bao gồm: tiktok, instagram, facebook,youtube
 factor_tier nvarchar2(200) null,---các tên hệ số sẽ bao gồm: nano, Micro , Mid-tier,Macro  , Mega , Celebrity
 min_flers number, ---số lượng followers tối thiểu (ở mỗi nền tảng sẽ khác nhau nên không thể để cho 2 chỉ số min max của các nền tảng (social_id) là như nhau, ví dụ trên youtube sẽ tính theo subcribers, mức min max của youtube cũng sẽ khác các nền tảng khác vì ít lượng followers hơn (subcribers) 
 max_flers number,---số lượng followers tối đa
 factor_number float, ---- hệ số như: 1.0 cho nano, 1.2 cho micro, 1.5 cho mid-tier, macro là 2.0, mega 2.5 và celeb là 3. (tùy thuộc theo nền tảng nữa, như nền tảng youtube thì mức người subcribe sẽ ít hơn nên số lượng sẽ ít hơn các nền tảng khác)
 CONSTRAINT PK_Social_Factor PRIMARY KEY (factor_id),
CONSTRAINT FK_Social_Factor_social_id FOREIGN KEY (social_id) REFERENCES SocialMedia(social_id),
 CONSTRAINT CK_Social_Factor_Expense_min_flers check (min_flers>1),
CONSTRAINT CK_Social_Factor_max_flers check (max_flers>min_flers),
constraint CK_Social_Factor_factor_number CHECK (factor_number BETWEEN 1.0 AND 3.0)
 );
drop table Accounts;

---table Accounts lấy dữ liệu thật
CREATE TABLE Accounts (
  acc_id NUMBER GENERATED ALWAYS AS IDENTITY, -- id tài khoản của người nổi tiếng
  influ_id NUMBER,-- id người nổi tiếng
  social_id NUMBER, --id nền tảng mạng xã hội của tài khoản
  acc_name NVARCHAR2(50) NOT NULL, --tên tài loản
  link_acc VARCHAR2(150) NOT NULL, --đường dẫn tới tài khoản
  followers NUMBER  NULL, ---số lượng người flow
  followings NUMBER NULL, --đang flow bao nhiêu người
  start_date DATE NULL, ---ngày lập tài khoản
  update_date DATE  NULL, --ngày cập nhật số liệu gần nhất của tài khoản 
  CONSTRAINT PK_Accounts PRIMARY KEY (acc_id),
  CONSTRAINT FK_Accounts_influ_id FOREIGN KEY (influ_id) REFERENCES Influencer(influ_id),
  CONSTRAINT FK_Accounts_social_id FOREIGN KEY (social_id) REFERENCES SocialMedia(social_id),
  CONSTRAINT CK_Accounts_followers CHECK (followers >= 0),
  CONSTRAINT UK_Accounts_link_acc UNIQUE (link_acc)
);

---LỆNH GỌI CÁC CONSTRAINT 
SELECT constraint_name, constraint_type, table_name, status
FROM user_constraints
ORDER BY table_name, constraint_type;
drop table Products;

---table Products lấy dữ liệu thật 
CREATE TABLE Products (
pro_id NUMBER GENERATED ALWAYS AS IDENTITY, ---id sản phẩm
pro_name  NVARCHAR2(200) NOT NULL, ---tên sản phẩm
price number null, --giá
pro_description nclob, ---mô tả sản phẩm
client_id NUMBER not null, --- mã khách hàng 
pro_category  NVARCHAR2(200)  NULL, ---danh mục của sản phẩm như: thuốc, thực phẩm chức năng, đồ gia dụng, chăm sóc da, trang điểm....

 CONSTRAINT PK_Products PRIMARY KEY (pro_id),
 CONSTRAINT FK_Products_client_id FOREIGN KEY (client_id) REFERENCES Clients(client_id),
 CONSTRAINT CK_Products_price CHECK (price >= 0 )
);
---table Fields lấy dữ liệu thật , lĩnh vực mà đê gán cho các bài đăng như: mỹ phẩm: makeup,skincare,chăm sóc tóc,......
drop table Fields;
CREATE TABLE Fields
(
  field_id NUMBER GENERATED ALWAYS AS IDENTITY, --id lĩnh vực
  field_name NVARCHAR2(100), ---tên lĩnh vực
  describes NVARCHAR2(500),--- mô tả về lĩnh vực đó
  factor_field number,
  CONSTRAINT PK_Fields PRIMARY KEY (field_id),
  constraint C_Fields_factor_field check (factor_field between 1 and 3)
);
----các mục chi phí có trong thực tế , có thêm mục giảm giá cho khách hàng 
drop table Expense;

create table  Expense (
ex_id NUMBER GENERATED ALWAYS AS IDENTITY, ---id chi phí 
ex_subject nvarchar2(200) null, ---tiêu đề chi phí sản xuất nội dung như: chi phí nội dung (kịch bản,quay chụp, thuê stu,nhân sự, di chuyển,makeup, trang phục...)
details nclob null, ---mô tả những yếu tố nào có thể phát sinh trong mục ex_subject như chi phí quay chụp thì sẽ bao gồm, thuê background, nhân sự, phụ kiện,...
CONSTRAINT PK_Expense PRIMARY KEY (ex_id)
);


---contract có thể giả sử dữ liệu phù hợp với các bảng influencer, post, post_details, contract_policies
----chắc thêm m
drop table Conditions;

CREATE TABLE Conditions (
  condition_id NUMBER GENERATED ALWAYS AS IDENTITY, ----mã danh mục điều kiện, nếu là mã danh mục gốc thì không được nối với bảng khác
  condition_name NVARCHAR2(200), ----tên danh mục điều kiện như: Yêu cầu về nội dung, Yêu cầu pháp lý & minh bạch (ở đây thì bạn hãy chỉ nêu những yêu cầu cấp thiết để đóng góp vào post quảng bá, không cần quá chi tiết) 
  ---còn đối với các điều kiện chi tiết như về danh mục hình ảnh: chuyên nghiệp studio, edit chuyên nghiệp,...
  condition_id2 NUMBER, ---danh mục mã cha, nếu là danh mục gốc thì null
  description NVARCHAR2(1000), ---mô tả điều kiện 
  CONSTRAINT PK_Conditions PRIMARY KEY (condition_id),
  CONSTRAINT FK_Conditions_condition_id2 FOREIGN KEY (condition_id2) REFERENCES Conditions(condition_id)
  );

---contract có thể giả sử dữ liệu phù hợp với các bảng influencer, post, post_details, contract_policies
drop table Contract;

CREATE TABLE Contract (
contract_id NUMBER GENERATED ALWAYS AS IDENTITY, ---mã hợp đồng
influ_id NUMBER not null, ----id người nổi tiếng
client_id NUMBER not null, --id khách hàng
subjects nvarchar2(100) null, ----tiêu đề hợp đồng
campaign_goals nvarchar2(500),--- Mục tiêu: tăng nhận diện, tăng doanh thu,...
start_date date null, ---ngày bắt đầu
end_date date null, --ngày kết thức
bookingcost NUMBER(12,2) null, ---tổng chi phí booking NUMBER(12,2)
sign_date date null, ---ngày ký hợp đồng
paid_date1 date null, ---ngày trả 1
paid_date2 date null,--- ngày trả 2
post_quantity number(2),
status CHAR(1) DEFAULT 'P' CHECK (status IN ('P', 'C', 'X')),  -- P: Pending, C: Completed, X: Cancelled 
field_id number  ,
paid_amount1 number null,
paid_amount2 number null,
 constraint FK_Contract_field_id foreign key (field_id) references Fields(field_id),
 CONSTRAINT PK_Contract PRIMARY KEY (contract_id),
 CONSTRAINT FK_Contract_influ_id FOREIGN KEY (influ_id) REFERENCES Influencer(influ_id),
 CONSTRAINT FK_Contract_client_id FOREIGN KEY (client_id) REFERENCES Clients(client_id),
 CONSTRAINT CK_Contract_bookingcost CHECK (bookingcost >= 0),
 constraint CK_Contract_end_date check (end_date>=start_date)
);


drop table  Contract_Details;

CREATE TABLE Contract_Details (
  contract_id NUMBER, 
  details_id NUMBER GENERATED ALWAYS AS IDENTITY,
  method NVARCHAR2(200) NULL, ---hình thức review, unbox, chia sẻ kinh nghiệm, test sản phẩm, tham gia sự kiện, diễn chuyên nghiệp,...
  review_deadline DATE, ---thời hạn có nội dung hoàn chỉnh để duyệt 
  post_date DATE, ---ngày đăng dự kiến
  post_type NVARCHAR2(50) NULL, ---hình thức quảng cáo: vid, hình ảnh
  min_duration NUMBER(4,2) NULL, --- tính bằng phút
  max_duration NUMBER(4,2) NULL, --- tính bằng phút
  notes NVARCHAR2(500),
  CONSTRAINT PK_Contract_Details PRIMARY KEY (details_id),
  CONSTRAINT FK_contract_details_contract_id FOREIGN KEY (contract_id) REFERENCES Contract(contract_id),
  CONSTRAINT CK_Contract_Details_post_type CHECK (post_type IN ('video', 'hình ảnh') OR post_type IS NULL),
  CONSTRAINT CK_Contract_Details_min_duration CHECK (min_duration >= 0 OR min_duration IS NULL),
  CONSTRAINT CK_Contract_Details_max_duration CHECK (max_duration >= min_duration OR max_duration IS NULL),
  CONSTRAINT CK_Contract_Details_review_deadline CHECK (review_deadline IS NULL OR review_deadline <= post_date),
  
);


----
drop table  ContractDetails_Conditions;

CREATE TABLE ContractDetails_Conditions (
cdc_id NUMBER GENERATED ALWAYS AS IDENTITY, ---ContractDetails_Conditions id 
  condition_id NUMBER, 
  details_id NUMBER,
  note nvarchar2 (600),
  CONSTRAINT FK_CC_details_id FOREIGN KEY (details_id) REFERENCES Contract_Details(details_id),
  CONSTRAINT FK_CC_Condition FOREIGN KEY (condition_id) REFERENCES Conditions(condition_id)
);
----hợp đông làm về sp gì
drop table ContractDetails_Product;

CREATE TABLE ContractDetails_Product (
cdp_id NUMBER GENERATED ALWAYS AS IDENTITY, ---ContractDetails_Product id 
details_id number,
pro_id number not null, ---- sản phẩm được đăng tải trên post
quantities number,
CONSTRAINT PK_ContractDetails_Product PRIMARY KEY (cdp_id),
 CONSTRAINT FK_ContractDetails_Product_pro_id FOREIGN KEY (pro_id) REFERENCES Products(pro_id),
  CONSTRAINT FK_ContractDetails_Product_details_id FOREIGN KEY (details_id) REFERENCES contract_details(details_id),
  CONSTRAINT CK_ContractDetails_Product_quantities CHECK (quantities >= 1 )
);
drop table Contract_Expense;
insert into Expense ( ex_subject, details) values ('chiết khấu cho khách hàng', null); ----id=21
select * from Expense where ex_subject='chiết khấu cho khách hàng';
---đặt điều kiện nếu cái factor is not null, 
alter table Contract_Expense add factor number (4,3);
ALTER TABLE Contract_Expense
ADD CONSTRAINT c_factor_range
CHECK (factor >= 0 AND factor <= 1);

create table Contract_Expense(
ce_id NUMBER GENERATED ALWAYS AS IDENTITY,
contract_id NUMBER not null ,---mã contract
ex_id  NUMBER not null ,---mã chi phí
quantities  NUMBER  ,---số lượng chi phí, như chi phí ekip hỗ trợ quay chụp là 500/người mà có 2 người thì số lượng là 2
costs  NUMBER , --đơn giá cho chi phí đó
CONSTRAINT PK_Contract_Expense PRIMARY KEY (ce_id),
CONSTRAINT FK_Contract_Expense_ex_id FOREIGN KEY (ex_id) REFERENCES Expense(ex_id),
CONSTRAINT FK_Contract_Expense_contract_id FOREIGN KEY (contract_id) REFERENCES Contract(contract_id), 
CONSTRAINT CK_Contract_Expense_quantities check (quantities>=1)
);
drop table Post;
---table post lấy dữ liệu thật
CREATE TABLE Post (
post_id NUMBER GENERATED ALWAYS AS IDENTITY,--id của bài đăng
acc_id NUMBER not NULL, -- id tài khoản 
likes NUMBER NULL, ---lượt yêu thích (nếu trên facebook 5 lượt reacts cho là likes hết)
comments NUMBER NULL,--lượt bình luận
views NUMBER NULL, --- lượt xem 
reaches NUMBER NULL, ---lượt tiếp cận được bao nhiêu người dùng 
create_date DATE NULL, ---ngày đăng bài
shares NUMBER NULL, --lượt chia sẻ
subject NVARCHAR2(200),---tiêu đề bài đăng
contents_post NVARCHAR2(500),----- nội dung được đăng tải 
links_post NVARCHAR2(100), ---- đường dẫn đến bài viết
updated_date DATE NULL, ---- ngày cập nhật số liệu
details_id NUMBER NULL , ----mã hợp đồng
status CHAR(1) , ----trạng thái bài đăng, (đã đăng, chưa đăng, vi phạm kiểm duyệt )
durations number null,---ảnh thì là null
type_post nvarchar2(50), ---hình thức bài đăng: ảnh, vid ngắn, vid dài 
 CONSTRAINT PK_Post PRIMARY KEY (post_id), 
 CONSTRAINT FK_PK_Post_deatails_id FOREIGN KEY (details_id) REFERENCES contract_details(details_id),
 CONSTRAINT FK_Post_acc_id FOREIGN KEY (acc_id) REFERENCES Accounts(acc_id),
 CONSTRAINT CK_status CHECK (status IN ('P', 'D','V')) ,
 CONSTRAINT CK_type_post CHECK (type_post IN ('ảnh', 'video')),
   CONSTRAINT CK_Post_likes CHECK (likes >= 0 OR likes IS NULL),
  CONSTRAINT CK_Post_comments CHECK (comments >= 0 OR comments IS NULL),
  CONSTRAINT CK_Post_views CHECK (views >= 0 OR views IS NULL),
  CONSTRAINT CK_Post_reaches CHECK (reaches >= 0 OR reaches IS NULL),
  CONSTRAINT CK_Post_shares CHECK (shares >= 0 OR shares IS NULL),
  CONSTRAINT CK_Post_durations CHECK (durations >= 0 )
);
drop table Post_details;
---table Post_details lấy dữ liệu sao cho có thể liên kết chặt chẽ vơis bảng  CONTRACTDETAILS_PRODUCT
CREATE TABLE Post_details (
post_details_id NUMBER GENERATED ALWAYS AS IDENTITY,
post_id number not null, --- id bài đăng
cdp_id number not null, ---- sản phẩm được đăng tải trên post
pro_links nvarchar2(100) null,  ---đường dẫn tới sản phẩm
pro_clicks number null, --- lượt click vào sản phẩm 
pro_purchases number null, --- lượt mua qua link
CONSTRAINT PK_Post_details PRIMARY KEY (post_details_id),
 CONSTRAINT FK_Post_details_cdp_id FOREIGN KEY (post_id) REFERENCES Post(post_id),
 CONSTRAINT FK_ContractDetails_Product_cdp_id FOREIGN KEY (cdp_id) REFERENCES ContractDetails_Product(cdp_id),
 CONSTRAINT CK_Post_details_clicks CHECK (pro_clicks >= 0 OR pro_clicks IS NULL),
  CONSTRAINT CK_Post_details_purchases CHECK (pro_purchases >= 0 OR pro_purchases IS NULL)
);


create table Log_change (
log_id number GENERATED by default as IDENTITY primary key,
table_name varchar(50),
type_change varchar(50),
record_id number,
column_name varchar(50),
old_values nclob,
new_values nclob,
changed_user varchar2(50),
changed_date timestamp default systimestamp 
);
