-- 1. Influencer table INSERT statements (19 rows from sample + 1 additional)
INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Nguyễn', N'Thanh Tùng', 'sontungmtp@gmail.com', '0912345678', 'Nam', TO_DATE('1994-07-05', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Âm nhạc, giải trí. Kỹ năng: Sáng tác, biểu diễn, nhảy múa. Phong cách: Trẻ trung, hiện đại, gần gũi với giới trẻ. Kinh nghiệm: Hơn 10 năm hoạt động trong làng giải trí Việt Nam, có lượng fan hùng hậu trên các nền tảng mạng xã hội.', N'Sơn Tùng M-TP');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Hồ', N'Ngọc Hà', 'ngochaha@gmail.com', '0987654321', 'Nữ', TO_DATE('1984-04-15', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Âm nhạc, làm đẹp, thời trang. 
Kỹ năng: Hát, diễn xuất, người mẫu. 
Phong cách: Sang trọng, quyến rũ. 
Kinh nghiệm: Hơn 20 năm trong làng giải trí, là đại sứ thương hiệu cho nhiều nhãn hàng nổi tiếng.', N'Hồ Ngọc Hà');


INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Phạm', N'Trinh', 'trinhpham@gmail.com', '0912345679', 'Nữ', TO_DATE('1995-01-01', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Làm đẹp, skincare, makeup. Kỹ năng: Review sản phẩm, chia sẻ kinh nghiệm làm đẹp. Phong cách: Tự nhiên, chân thực. Kinh nghiệm: Một trong những beauty blogger đầu tiên tại Việt Nam, có lượng follower lớn trên YouTube và Instagram.', N'Trinh Phạm');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Ngô', N'Trang', 'changmakeup@gmail.com', '0935123456', 'Nữ', TO_DATE('1994-07-31', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Làm đẹp, makeup, skincare. Kỹ năng: Review sản phẩm, chia sẻ kinh nghiệm làm đẹp. Phong cách: Trẻ trung, năng động, gần gũi với giới trẻ. Kinh nghiệm: Có hơn 1 triệu follower trên YouTube, được biết đến với phong cách làm đẹp chân thực.', N'Changmakeup');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Đỗ', N'Quang Đăng', 'quangdang@gmail.com', '0912345680', 'Nam', TO_DATE('1989-05-06', 'YYYY-MM-DD'), N'Bến Tre, Việt Nam',
N'Lĩnh vực nổi bật: Nghệ thuật biểu diễn, múa. Kỹ năng: Biên đạo múa, vũ công. Phong cách: Năng động, sáng tạo. Kinh nghiệm: Đã tham gia nhiều chương trình truyền hình lớn, có lượng fan đông đảo trên mạng xã hội.', N'Quang Đăng');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Đinh', N'Võ Hoài Phương', 'khoailangthang@gmail.com', '0987654323', 'Nam', TO_DATE('1991-05-23', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Du lịch, ẩm thực. Kỹ năng: Quay vlog du lịch, review nhà hàng. Phong cách: Vui vẻ, hài hước. Kinh nghiệm: Có hơn 1 triệu subscriber trên YouTube, được biết đến với chuỗi vlog du lịch và ẩm thực.', N'Khoai Lang Thang');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Đặng', N'Hương Nhị', 'nhidang@gmail.com', '0912345681', 'Nữ', TO_DATE('1988-12-30', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Du lịch. Kỹ năng: Viết blog du lịch, quay vlog. Phong cách: Thanh lịch, tinh tế. Kinh nghiệm: Có hàng chục nghìn follower trên Facebook và YouTube, chuyên viết về du lịch và văn hóa.', N'Nhị Đặng');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Nguyễn', N'Thùy Chi', 'chipu@gmail.com', '0987654324', 'Nữ', TO_DATE('1993-06-14', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Giải trí, thời trang. Kỹ năng: Diễn xuất, hát, người mẫu. Phong cách: Trẻ trung, cá tính. Kinh nghiệm: Đã tham gia nhiều phim truyền hình và chương trình giải trí, có lượng fan lớn trên mạng xã hội.', N'Chi Pu');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Nguyễn', N'Đức Cường', 'denvau@gmail.com', '0912345682', 'Nam', TO_DATE('1989-05-13', 'YYYY-MM-DD'), N'Quảng Ninh, Việt Nam',
N'Lĩnh vực nổi bật: Âm nhạc, rap. Kỹ năng: Rap, sáng tác. Phong cách: Phản biện xã hội, chân thực. Kinh nghiệm: Có nhiều bài hát nổi tiếng, được yêu thích bởi giới trẻ, có lượng follower lớn trên YouTube và Instagram.', N'Đen Vâu');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Hoàng', N'Thùy Linh', 'hoangthuylinh@gmail.com', '0987654325', 'Nữ', TO_DATE('1988-08-11', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Âm nhạc, thời trang. Kỹ năng: Hát, diễn xuất. Phong cách: Quyến rũ, sang trọng. Kinh nghiệm: Đã tham gia nhiều chương trình truyền hình, là đại sứ thương hiệu cho nhiều nhãn hàng.', N'Hoàng Thùy Linh');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Trần', N'Đặng Đăng Khoa', 'transviet@gmail.com', '0912345683', 'Nam', TO_DATE('1987-06-27', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Du lịch, phiêu lưu. Kỹ năng: Viết blog du lịch, quay vlog, chia sẻ trải nghiệm khám phá. Phong cách: Chân thực, mộc mạc, truyền cảm hứng. Kinh nghiệm: Nổi tiếng với hành trình đi xe máy vòng quanh thế giới, có lượng follower lớn trên Facebook.', N'Trans Việt');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Lê', N'Hà Trân', 'helenle@gmail.com', '0987654326', 'Nữ', TO_DATE('1990-10-15', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Ẩm thực, nấu ăn. Kỹ năng: Quay video công thức nấu ăn, review nhà hàng. Phong cách: Gần gũi, ấm áp, đậm chất Việt. Kinh nghiệm: Sở hữu kênh YouTube Helen’s Recipes với hơn 1 triệu subscriber, chuyên chia sẻ công thức món Việt.', N'Helen Le');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Giang', N'Hana', 'hanagianganh@gmail.com', '0912345684', 'Nữ', TO_DATE('1993-03-12', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Thể thao, fitness, lifestyle. Kỹ năng: Hướng dẫn tập luyện, chia sẻ chế độ ăn uống lành mạnh. Phong cách: Năng động, tích cực, truyền cảm hứng. Kinh nghiệm: Hơn 5 năm làm fitness influencer, có hơn 500.000 follower trên Instagram.', N'Hana Giang Anh');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Quỳnh Anh', N'Shyn', 'quynhanhshyn@gmail.com', '0987654327', 'Nữ', TO_DATE('1996-04-20', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Thời trang, lifestyle. Kỹ năng: Chụp ảnh thời trang, phối đồ theo trend. Phong cách: Cá tính, hiện đại, sang trọng. Kinh nghiệm: Hơn 6 năm làm fashion influencer, hợp tác với các thương hiệu như Gucci và Zara.', N'Quỳnh Anh Shyn');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Nguyễn', N'Thành Nam', 'viruss@gmail.com', '0912345685', 'Nam', TO_DATE('1990-02-28', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Gaming, livestream. Kỹ năng: Livestream game, review game, bình luận eSports. Phong cách: Hài hước, năng lượng, gần gũi với game thủ. Kinh nghiệm: Hơn 8 năm làm streamer, sở hữu hơn 2 triệu subscriber trên YouTube.', N'ViruSs');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Trần', N'Khánh Vy', 'khanhvy@gmail.com', '0987654328', 'Nữ', TO_DATE('1995-11-11', 'YYYY-MM-DD'), N'Nghệ An, Việt Nam',
N'Lĩnh vực nổi bật: Giáo dục, lifestyle. Kỹ năng: Chia sẻ kỹ năng học ngoại ngữ, truyền cảm hứng học tập. Phong cách: Vui tươi, thông minh, gần gũi. Kinh nghiệm: Nổi tiếng với biệt danh "Cô gái 7 thứ tiếng", có hơn 1 triệu follower trên TikTok.', N'Khánh Vy');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Nguyễn', N'Thảo', 'thaotruong@gmail.com', '0912345686', 'Nữ', TO_DATE('1992-08-25', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Làm đẹp, skincare. Kỹ năng: Review sản phẩm chăm sóc da, hướng dẫn skincare routine. Phong cách: Chuyên nghiệp, tinh tế, đáng tin cậy. Kinh nghiệm: Hơn 5 năm làm beauty influencer, hợp tác với các thương hiệu như Laneige.', N'Thảo Trương');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Trần', N'Quang Huy', 'huytran@gmail.com', '0987654329', 'Nam', TO_DATE('1991-09-10', 'YYYY-MM-DD'), N'Đà Nẵng, Việt Nam',
N'Lĩnh vực nổi bật: Du lịch, nhiếp ảnh. Kỹ năng: Chụp ảnh du lịch, quay vlog, viết blog. Phong cách: Nghệ thuật, sáng tạo, truyền cảm hứng. Kinh nghiệm: Hơn 6 năm làm travel influencer, có hơn 300.000 follower trên Instagram.', N'Huy Trần');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Phạm', N'Ngọc Ánh', 'anhtuyet@gmail.com', '0912345687', 'Nữ', TO_DATE('1994-12-05', 'YYYY-MM-DD'), N'TP.HCM, Việt Nam',
N'Lĩnh vực nổi bật: Ẩm thực, lifestyle. Kỹ năng: Review nhà hàng, chia sẻ công thức món ăn. Phong cách: Tươi sáng, gần gũi, đậm chất Việt. Kinh nghiệm: Hơn 4 năm làm food influencer, sở hữu hơn 400.000 follower trên Instagram.', N'Anh Tuyết');

INSERT INTO Influencer (influ_lastname, influ_firstname, email, phone_number, sex, birthdate, address, strengths, stage_name)
VALUES (N'Lê', N'Thị Minh Tâm', 'minhtamle@gmail.com', '0912345688', 'Nữ', TO_DATE('1993-10-22', 'YYYY-MM-DD'), N'Hà Nội, Việt Nam',
N'Lĩnh vực nổi bật: Thời trang, làm đẹp. Kỹ năng: Phối đồ, review mỹ phẩm. Phong cách: Thanh lịch, nữ tính. Kinh nghiệm: Hơn 5 năm làm fashion influencer, có hơn 200.000 follower trên Instagram.', N'Minh Tâm');

--------------CẬP NHẬT LẦN bảng Accounts để ghi nhận thay đổi về lượng followers 
BEGIN
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.1, 0.1))), update_date = SYSDATE WHERE acc_id = 1;
    end;
    
    BEGIN
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 2;
    end;
    
    begin
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 3;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 4;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 5;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 6;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 7;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 8;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 9;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 10;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 11;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 12;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 13;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 14;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 15;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 16;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 17;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 18;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 19;
    UPDATE Accounts SET followers = ROUND(followers * (1 + DBMS_RANDOM.VALUE(-0.001, 0.001))), update_date = SYSDATE WHERE acc_id = 20;
    COMMIT;
END;
/
select * from log_change;

select * from Influencer;
-- 2. SocialMedia table INSERT statements (4 rows from sample)
INSERT INTO SocialMedia (social_name) VALUES (N'Facebook');
INSERT INTO SocialMedia (social_name) VALUES (N'Instagram');
INSERT INTO SocialMedia (social_name) VALUES (N'YouTube');
INSERT INTO SocialMedia (social_name) VALUES (N'TikTok');

-- 3. Accounts table INSERT statements (30 rows from sample + 10 additional)
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (1, 1, N'SonTungMTP', 'https://www.facebook.com/sontungmtp', 6200000, 100, TO_DATE('2014-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (1, 2, N'sontungmtp', 'https://www.instagram.com/sontungmtp', 5800000, 150, TO_DATE('2014-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (1, 3, N'Son Tung M-TP Official', 'https://www.youtube.com/sontungmtp', 10000000, 200, TO_DATE('2014-03-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (2, 2, N'hongocha', 'https://www.instagram.com/hongocha', 3200000, 200, TO_DATE('2010-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (2, 3, N'Ho Ngoc Ha Official', 'https://www.youtube.com/hongocha', 1500000, 100, TO_DATE('2012-03-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (3, 2, N'trinhpham', 'https://www.instagram.com/trinhpham', 600000, 300, TO_DATE('2014-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (3, 3, N'Trinh Pham', 'https://www.youtube.com/trinhpham', 500000, 200, TO_DATE('2014-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (4, 2, N'changmakeup', 'https://www.instagram.com/changmakeup', 1100000, 250, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (4, 3, N'Changmakeup', 'https://www.youtube.com/changmakeup', 1200000, 150, TO_DATE('2016-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (5, 1, N'QuangDang', 'https://www.facebook.com/quangdang', 550000, 200, TO_DATE('2015-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (5, 2, N'quangdang', 'https://www.instagram.com/quangdang', 450000, 150, TO_DATE('2015-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (6, 3, N'Khoai Lang Thang', 'https://www.youtube.com/khoailangthang', 1600000, 100, TO_DATE('2017-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (6, 1, N'Khoai Lang Thang', 'https://www.facebook.com/khoailangthang', 600000, 200, TO_DATE('2017-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (7, 1, N'NhiDang', 'https://www.facebook.com/nhidang', 60000, 150, TO_DATE('2018-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (7, 3, N'Nhi Dang', 'https://www.youtube.com/nhidang', 30000, 100, TO_DATE('2018-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (8, 2, N'chipu', 'https://www.instagram.com/chipu', 2200000, 200, TO_DATE('2013-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (8, 3, N'Chi Pu Official', 'https://www.youtube.com/chipu', 1100000, 150, TO_DATE('2013-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (9, 2, N'denvau', 'https://www.instagram.com/denvau', 1600000, 200, TO_DATE('2015-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (9, 3, N'Den Vau Official', 'https://www.youtube.com/denvau', 1300000, 100, TO_DATE('2015-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (10, 2, N'hoangthuylinh', 'https://www.instagram.com/hoangthuylinh', 1100000, 150, TO_DATE('2014-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (10, 3, N'Hoang Thuy Linh Official', 'https://www.youtube.com/hoangthuylinh', 900000, 100, TO_DATE('2014-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (11, 1, N'TransViet', 'https://www.facebook.com/transviet', 400000, 200, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (11, 2, N'transviet', 'https://www.instagram.com/transviet', 300000, 150, TO_DATE('2016-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (12, 3, N'HelensRecipes', 'https://www.youtube.com/helensrecipes', 1200000, 100, TO_DATE('2012-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (13, 2, N'hanagianganh', 'https://www.instagram.com/hanagianganh', 500000, 200, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (14, 2, N'quynhanhshyn', 'https://www.instagram.com/quynhanhshyn', 500000, 200, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (15, 3, N'ViruSs', 'https://www.youtube.com/viruss', 2000000, 150, TO_DATE('2014-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (16, 4, N'khanhvy', 'https://www.tiktok.com/@khanhvy', 1000000, 100, TO_DATE('2018-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (17, 2, N'thaotruong', 'https://www.instagram.com/thaotruong', 400000, 200, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (18, 2, N'huytran', 'https://www.instagram.com/huytran', 300000, 150, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (19, 2, N'anhtuyet', 'https://www.instagram.com/anhtuyet', 400000, 200, TO_DATE('2017-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (20, 2, N'minhtamle', 'https://www.instagram.com/minhtamle', 200000, 150, TO_DATE('2017-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (20, 4, N'minhtamle', 'https://www.tiktok.com/@minhtamle', 300000, 100, TO_DATE('2018-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (17, 3, N'Thao Truong', 'https://www.youtube.com/thaotruong', 350000, 120, TO_DATE('2016-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (13, 3, N'Hana Giang Anh', 'https://www.youtube.com/hanagianganh', 400000, 100, TO_DATE('2017-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (11, 3, N'Trans Viet', 'https://www.youtube.com/transviet', 250000, 80, TO_DATE('2016-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
INSERT INTO Accounts (influ_id, social_id, acc_name, link_acc, followers, followings, start_date, update_date)
VALUES (14, 1, N'QuynhAnhShyn', 'https://www.facebook.com/quynhanhshyn', 450000, 180, TO_DATE('2016-01-01', 'YYYY-MM-DD'), TO_DATE('2025-07-17', 'YYYY-MM-DD'));
-- 4. Social_Factor table INSERT statements (24 rows from sample)
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, N'Nano', 1000, 10000, 1.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, N'Micro', 10001, 50000, 1.2);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, N'Mid-tier', 50001, 100000, 1.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, N'Macro', 100001, 500000, 2.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, N'Mega', 500001, 1000000, 2.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (1, N'Celebrity', 1000001, 10000000, 3.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (2, N'Nano', 1000, 10000, 1.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (2, N'Micro', 10001, 50000, 1.2);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (2, N'Mid-tier', 50001, 100000, 1.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (2, N'Macro', 100001, 500000, 2.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (2, N'Mega', 500001, 1000000, 2.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (2, N'Celebrity', 1000001, 10000000, 3.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (3, N'Nano', 500, 5000, 1.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (3, N'Micro', 5001, 20000, 1.2);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (3, N'Mid-tier', 20001, 50000, 1.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (3, N'Macro', 50001, 200000, 2.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (3, N'Mega', 200001, 500000, 2.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (3, N'Celebrity', 500001, 5000000, 3.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (4, N'Nano', 1000, 10000, 1.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (4, N'Micro', 10001, 50000, 1.2);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (4, N'Mid-tier', 50001, 100000, 1.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (4, N'Macro', 100001, 500000, 2.0);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (4, N'Mega', 500001, 1000000, 2.5);
INSERT INTO Social_Factor (social_id, factor_tier, min_flers, max_flers, factor_number) VALUES (4, N'Celebrity', 1000001, 10000000, 3.0);

-- 5. Clients table INSERT statements (15 rows from sample)
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'L''Oréal Paris', N'Làm đẹp', N'Hãng mỹ phẩm hàng đầu thế giới, cung cấp các sản phẩm chăm sóc da và trang điểm chất lượng cao.', 'contact@lorealparis.com.vn', '0912345678', 'https://www.lorealparis.com.vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Innisfree', N'Làm đẹp', N'Thương hiệu mỹ phẩm thiên nhiên từ Hàn Quốc, nổi tiếng với các sản phẩm chiết xuất từ trà xanh Jeju.', 'contact@innisfree.com.vn', '0912345679', 'https://www.innisfree.com/vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Laneige', N'Làm đẹp', N'Thương hiệu Hàn Quốc chuyên về chăm sóc da và môi, với công nghệ dưỡng ẩm tiên tiến.', 'contact@laneige.com.vn', '0912345680', 'https://www.laneige.com/vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Maybelline', N'Làm đẹp', N'Thương hiệu mỹ phẩm bình dân nổi tiếng với các sản phẩm trang điểm chất lượng, phù hợp với giới trẻ.', 'contact@maybelline.com.vn', '0912345681', 'https://www.maybelline.com.vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Gucci', N'Thời trang', N'Thương hiệu thời trang cao cấp từ Ý, nổi tiếng với các sản phẩm túi xách, quần áo và nước hoa.', 'contact@gucci.com.vn', '0912345682', 'https://www.gucci.com', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Zara', N'Thời trang', N'Thương hiệu thời trang nhanh toàn cầu, cung cấp quần áo và phụ kiện theo xu hướng hiện đại.', 'contact@zara.com.vn', '0912345683', 'https://www.zara.com/vn', N'Hà Nội, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Charles & Keith', N'Thời trang', N'Thương hiệu thời trang Singapore, chuyên về giày dép và túi xách thời thượng.', 'contact@charleskeith.com.vn', '0912345684', 'https://www.charleskeith.com/vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Vietjet', N'Du lịch', N'Hãng hàng không giá rẻ hàng đầu Việt Nam, cung cấp các chuyến bay trong nước và quốc tế.', 'contact@vietjetair.com', '0912345685', 'https://www.vietjetair.com', N'TP.HCM, Việt Nam');
INSERT INTO Clients ( client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES ( N'Tourism Fiji', N'Du lịch', N'Cơ quan xúc tiến du lịch Fiji, quảng bá các điểm đến và trải nghiệm văn hóa tại Fiji.', 'contact@tourismfiji.com', '6791234567', 'https://www.fiji.travel', N'Nadi, Fiji');

INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'OPPO', N'Công nghệ', N'Thương hiệu smartphone và thiết bị công nghệ, nổi tiếng với công nghệ camera tiên tiến.', 'contact@oppo.com.vn', '0912345686', 'https://www.oppo.com/vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Yamaha', N'Công nghệ/Nhạc cụ', N'Thương hiệu Nhật Bản cung cấp nhạc cụ và thiết bị âm thanh chất lượng cao.', 'contact@yamaha.com.vn', '0912345687', 'https://www.yamaha.com/vn', N'Hà Nội, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Puma', N'Thể thao', N'Thương hiệu thể thao toàn cầu, cung cấp quần áo và giày dép cho phong cách sống năng động.', 'contact@puma.com.vn', '0912345688', 'https://www.puma.com/vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Shopee Vietnam', N'Thương mại điện tử', N'Nền tảng thương mại điện tử lớn nhất Việt Nam, tổ chức các chiến dịch mua sắm lớn như 11.11.', 'contact@shopee.com.vn', '0912345689', 'https://shopee.vn', N'TP.HCM, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'VinMart', N'Bán lẻ/Thực phẩm', N'Chuỗi siêu thị hàng đầu Việt Nam, cung cấp thực phẩm và sản phẩm tiêu dùng chất lượng.', 'contact@vinmart.com.vn', '0912345690', 'https://www.vinmart.com', N'Hà Nội, Việt Nam');
INSERT INTO Clients (client_name, business_field, business_introduce, email, phone_number, website, address)
VALUES (N'Acecook Vietnam', N'Thực phẩm', N'Hãng thực phẩm nổi tiếng với các sản phẩm mì ăn liền và thực phẩm chế biến.', 'contact@acecook.com.vn', '0912345691', 'https://www.acecookvietnam.vn', N'TP.HCM, Việt Nam');

-- 6. Fields table INSERT statements (20 rows from sample)
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Makeup', N'Lĩnh vực liên quan đến các sản phẩm và kỹ thuật trang điểm, bao gồm son môi, kem nền, phấn mắt, và các sản phẩm làm đẹp khuôn mặt.', 1.5);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'SkinCare', N'Lĩnh vực tập trung vào chăm sóc da, bao gồm serum, kem dưỡng ẩm, mặt nạ, và các sản phẩm cải thiện sức khỏe làn da.', 1.4);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'HairCare', N'Lĩnh vực liên quan đến chăm sóc tóc, bao gồm dầu gội, dầu xả, và các sản phẩm tạo kiểu tóc.', 1.3);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Fashion', N'Lĩnh vực thời trang, bao gồm quần áo, phụ kiện, túi xách, giày dép, và các xu hướng phong cách.', 1.7);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Travel', N'Lĩnh vực du lịch, quảng bá các điểm đến, trải nghiệm du lịch, và dịch vụ như vé máy bay, tour du lịch.', 1.6);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Food', N'Lĩnh vực ẩm thực, bao gồm review nhà hàng, công thức nấu ăn, và quảng bá sản phẩm thực phẩm.', 1.2);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Fitness', N'Lĩnh vực thể thao và sức khỏe, bao gồm hướng dẫn tập luyện, chế độ ăn uống, và sản phẩm hỗ trợ thể thao.', 1.4);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Music', N'Lĩnh vực âm nhạc, bao gồm quảng bá nhạc cụ, bài hát, và các sự kiện âm nhạc.', 1.5);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Technology', N'Lĩnh vực công nghệ, tập trung vào quảng bá smartphone, tai nghe, và các thiết bị điện tử.', 1.8);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'E-commerce', N'Lĩnh vực thương mại điện tử, quảng bá các chiến dịch mua sắm trực tuyến và sản phẩm trên các nền tảng như Shopee.', 1.3);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Lifestyle', N'Lĩnh vực phong cách sống, bao gồm các chủ đề về làm đẹp, thời trang, du lịch, và cuộc sống hàng ngày.', 1.4);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Gaming', N'Lĩnh vực trò chơi điện tử, bao gồm livestream game, review game, và quảng bá sản phẩm gaming.', 1.6);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Education', N'Lĩnh vực giáo dục, bao gồm chia sẻ kỹ năng học tập, ngoại ngữ, và nội dung truyền cảm hứng học tập.', 1.2);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Health', N'Lĩnh vực sức khỏe, bao gồm chăm sóc sức khỏe cá nhân, thực phẩm chức năng, và lối sống lành mạnh.', 1.3);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Beauty', N'Lĩnh vực làm đẹp tổng hợp, bao gồm trang điểm, chăm sóc da, và chăm sóc tóc.', 1.5);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Photography', N'Lĩnh vực nhiếp ảnh, tập trung vào chụp ảnh du lịch, thời trang, và sản phẩm.', 1.4);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Entertainment', N'Lĩnh vực giải trí, bao gồm âm nhạc, phim ảnh, và các hoạt động biểu diễn.', 1.6);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Culture', N'Lĩnh vực văn hóa, quảng bá các giá trị văn hóa, lễ hội, và truyền thống.', 1.3);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Sports', N'Lĩnh vực thể thao, bao gồm các môn thể thao, thiết bị thể thao, và phong cách sống năng động.', 1.4);
INSERT INTO Fields (field_name, describes, factor_field) VALUES (N'Home & Living', N'Lĩnh vực nhà cửa và đời sống, bao gồm đồ gia dụng, trang trí nội thất, và sản phẩm tiện ích gia đình.', 1.2);

-- 7. Products table INSERT statements (35 rows from sample + 5 additional)
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'L''Oréal Paris Revitalift Serum', 450000, N'Serum chống lão hóa với axit hyaluronic, giúp da căng mọng và trẻ trung.', 1, N'Chăm sóc da');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'L''Oréal Paris True Match Foundation', 350000, N'Kem nền nhẹ, phù hợp với mọi loại da, mang lại lớp nền tự nhiên.', 1, N'Trang điểm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Innisfree Green Tea Seed Cream', 600000, N'Kem dưỡng ẩm chiết xuất từ trà xanh Jeju, giúp da mềm mại và mịn màng.', 2, N'Chăm sóc da');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Innisfree No-Sebum Mineral Powder', 200000, N'Phấn bột kiểm soát dầu, mang lại lớp nền mịn màng, phù hợp với da dầu.', 2, N'Trang điểm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Laneige Water Sleeping Mask', 700000, N'Mặt nạ ngủ dưỡng ẩm sâu, giúp da sáng mịn vào buổi sáng.', 3, N'Chăm sóc da');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Laneige Lip Sleeping Mask', 450000, N'Mặt nạ môi dưỡng ẩm, mang lại đôi môi mềm mại và căng mọng.', 3, N'Chăm sóc da');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Maybelline Fit Me Concealer', 200000, N'Kem che khuyết điểm nhẹ, che phủ tự nhiên và làm sáng vùng da dưới mắt.', 4, N'Trang điểm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Maybelline Superstay Matte Ink', 250000, N'Son môi lâu trôi với màu sắc rực rỡ, giữ màu lên đến 16 giờ.', 4, N'Trang điểm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Gucci GG Marmont Bag', 45000000, N'Túi xách cao cấp với logo GG mang tính biểu tượng, phù hợp với phong cách thời thượng.', 5, N'Thời trang');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Gucci Flora Perfume', 3500000, N'Nước hoa hoa cỏ với hương peony và gỗ đàn hương, sang trọng và quyến rũ.', 5, N'Nước hoa');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Zara Basic Denim Jacket', 1200000, N'Áo khoác denim cổ điển, thiết kế hiện đại, phù hợp với phong cách thường ngày.', 6, N'Thời trang');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Zara Floral Midi Dress', 1500000, N'Váy midi hoa nhí thanh lịch, phù hợp với các sự kiện thời trang.', 6, N'Thời trang');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Charles & Keith Gabine Bucket Bag', 1800000, N'Túi xách bucket thời thượng với chi tiết vàng, phù hợp với phong cách hiện đại.', 7, N'Thời trang');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Charles & Keith Pointed Toe Pumps', 1500000, N'Giày cao gót mũi nhọn thanh lịch, phù hợp cho các dịp trang trọng và thường ngày.', 7, N'Giày dép');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Vietjet Air Flight Package', 1000000, N'Gói vé máy bay giá rẻ cho các chuyến bay trong nước và quốc tế.', 8, N'Du lịch');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Vietjet SkyBoss Ticket', 3000000, N'Ve máy bay hạng thương gia với dịch vụ ưu tiên và ghế ngồi thoải mái.', 8, N'Du lịch');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Fiji Island Tour Package', 20000000, N'Gói du lịch độc quyền khám phá các bãi biển và văn hóa Fiji.', 9, N'Du lịch');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'OPPO Reno8 Smartphone', 10000000, N'Smartphone hiệu năng cao với camera tiên tiến, phù hợp cho quay vlog và chụp ảnh.', 10, N'Công nghệ');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'OPPO Enco Air Earbuds', 1500000, N'Tai nghe không dây với âm thanh chất lượng cao và công nghệ khử tiếng ồn.', 10, N'Công nghệ');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Yamaha PSR-E373 Keyboard', 6000000, N'Đàn phím điện tử di động, phù hợp cho các nghệ sĩ và người mới học nhạc.', 11, N'Nhạc cụ');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Puma Active Leggings', 1200000, N'Quần legging thể thao thoải mái, thiết kế cho tập luyện và phong cách năng động.', 12, N'Thể thao');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Puma RS-X Sneakers', 2500000, N'Giày thể thao thời trang với đế êm, phù hợp cho tập luyện và phong cách thường ngày.', 12, N'Giày dép');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Shopee 11.11 Sale Campaign', 0, N'Chiến dịch mua sắm trực tuyến lớn với các ưu đãi và khuyến mãi độc quyền.', 13, N'Thương mại điện tử');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'VinMart Organic Rice', 80000, N'Gạo hữu cơ chất lượng cao, được sản xuất từ các nông trại Việt Nam.', 14, N'Thực phẩm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Acecook Hảo Hảo Noodles', 10000, N'Mì ăn liền với hương vị tôm chua cay đặc trưng, phổ biến tại Việt Nam.', 15, N'Thực phẩm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'L''Oréal Paris Elseve Shampoo', 150000, N'Dầu gội giúp tóc mềm mượt và chắc khỏe.', 1, N'Chăm sóc tóc');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Innisfree Jeju Volcanic Pore Clay Mask', 400000, N'Mặt nạ đất sét làm sạch sâu lỗ chân lông, phù hợp với da dầu.', 2, N'Chăm sóc da');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Laneige Cream Skin Refiner', 600000, N'Toner dưỡng ẩm cho làn da căng bóng, mịn màng.', 3, N'Chăm sóc da');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Maybelline Lash Sensational Mascara', 200000, N'Mascara làm dài và cong mi, tạo hiệu ứng mi dày và đẹp.', 4, N'Trang điểm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Gucci Bamboo Perfume', 3500000, N'Nước hoa với hương thơm thanh lịch, sang trọng.', 5, N'Nước hoa');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Zara Knit Sweater', 1200000, N'Áo len thời trang, ấm áp cho mùa đông.', 6, N'Thời trang');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Charles & Keith Metallic Sandals', 1500000, N'Dép sandal ánh kim thời thượng, phù hợp với nhiều phong cách.', 7, N'Giày dép');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Vietjet International Flight Package', 2000000, N'Gói vé máy bay quốc tế với giá ưu đãi.', 8, N'Du lịch');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Fiji Coral Coast Tour', 25000000, N'Tour du lịch khám phá bờ biển san hô tuyệt đẹp tại Fiji.', 9, N'Du lịch');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'OPPO Find X5 Pro', 15000000, N'Smartphone cao cấp với camera Hasselblad.', 10, N'Công nghệ');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Yamaha Acoustic Guitar FG800', 7000000, N'Đàn guitar acoustic chất lượng cao, phù hợp cho biểu diễn.', 11, N'Nhạc cụ');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'VinMart Organic Vegetables', 50000, N'Rau củ hữu cơ tươi sạch, đảm bảo chất lượng.', 14, N'Thực phẩm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Acecook Oh! Ricey Noodles', 12000, N'Phở bò ăn liền tiện lợi, hương vị đậm đà.', 15, N'Thực phẩm');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Puma Training Jacket', 1500000, N'Áo khoác thể thao nhẹ, phù hợp cho tập luyện ngoài trời.', 12, N'Thể thao');
INSERT INTO Products (pro_name, price, pro_description, client_id, pro_category)
VALUES (N'Shopee Beauty Box', 500000, N'Hộp quà mỹ phẩm với các sản phẩm làm đẹp từ nhiều thương hiệu.', 13, N'Làm đẹp');

select * from Expense;
-- 8. Expense table INSERT statements (7 rows from sample + 3 additional)
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí quay chụp', N'Bao gồm thuê background, nhân sự quay phim, thiết bị quay, ánh sáng.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí makeup', N'Bao gồm thuê chuyên viên makeup, mỹ phẩm, và phụ kiện trang điểm.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí di chuyển', N'Bao gồm vé máy bay, xe cộ, và chi phí lưu trú.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí thuê studio', N'Bao gồm chi phí thuê studio, đạo cụ, và thiết bị hỗ trợ.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí trang phục', N'Bao gồm thuê hoặc mua trang phục, phụ kiện thời trang cho quay chụp.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí kịch bản', N'Bao gồm chi phí thuê biên kịch hoặc phát triển kịch bản quảng cáo.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí hậu kỳ', N'Bao gồm chỉnh sửa video, âm thanh, và hiệu ứng hình ảnh.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí đạo cụ', N'Bao gồm chi phí mua hoặc thuê đạo cụ để phục vụ quay chụp.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí thuê ekip', N'Bao gồm chi phí thuê đội ngũ hỗ trợ như stylist, trợ lý sản xuất.');
INSERT INTO Expense (ex_subject, details) VALUES (N'Chi phí quảng cáo', N'Bao gồm chi phí chạy quảng cáo trên các nền tảng để tăng reach bài đăng.');

select * from Conditions;
-- 9. Conditions table INSERT statements (10 rows)
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Yêu cầu về nội dung', NULL, N'Các yêu cầu liên quan đến nội dung bài đăng, bao gồm kịch bản, phong cách, và thông điệp.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Yêu cầu pháp lý & minh bạch', NULL, N'Đảm bảo bài đăng tuân thủ quy định pháp luật, công khai hashtag #sponsored hoặc #ad.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Chuyên nghiệp studio', 1, N'Bài đăng phải được quay tại studio với ánh sáng và thiết bị chuyên nghiệp.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Edit chuyên nghiệp', 1, N'Video hoặc hình ảnh phải được chỉnh sửa với hiệu ứng và chất lượng cao.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Phong cách tự nhiên', 1, N'Nội dung bài đăng phải mang phong cách tự nhiên, gần gũi với người xem.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Sử dụng sản phẩm', 1, N'Influencer phải xuất hiện sử dụng sản phẩm trong bài đăng.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Hashtag thương hiệu', 2, N'Bài đăng phải bao gồm hashtag của thương hiệu, ví dụ #LOréalParis.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Thời lượng video', 1, N'Video phải có độ dài tối thiểu và tối đa theo yêu cầu của hợp đồng.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Bối cảnh ngoại cảnh', 1, N'Bài đăng phải được quay ở ngoại cảnh với bối cảnh phù hợp sản phẩm.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Thông tin sản phẩm', 2, N'Bài đăng phải công khai thông tin sản phẩm và tuân thủ quy định quảng cáo.');
--
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Cảm xúc tươi vui', 1, N'Nội dung bài đăng phải truyền tải cảm xúc tích cực, vui vẻ, phù hợp với sản phẩm năng động.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Cảm xúc sang trọng', 1, N'Bài đăng phải toát lên phong cách cao cấp, tinh tế, phù hợp với các sản phẩm luxury.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Cảm xúc truyền cảm hứng', 1, N'Nội dung bài đăng cần khơi gợi cảm hứng, động lực cho người xem, ví dụ như câu chuyện vượt khó.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Cảm xúc gần gũi', 1, N'Bài đăng phải tạo cảm giác thân thiện, dễ đồng cảm, phù hợp với các sản phẩm đại chúng.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Sử dụng âm nhạc thương hiệu', 1, N'Bài đăng phải sử dụng nhạc nền hoặc jingle chính thức của thương hiệu.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Đồng phục hoặc trang phục thương hiệu', 1, N'Influencer phải mặc trang phục hoặc sử dụng phụ kiện có logo/thiết kế của thương hiệu.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Tương tác trực tiếp', 2, N'Bài đăng phải kêu gọi người xem tương tác, ví dụ như bình luận, chia sẻ, hoặc tham gia thử thách.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Sử dụng ngôn ngữ địa phương', 1, N'Nội dung bài đăng phải sử dụng ngôn ngữ hoặc tiếng lóng địa phương để tăng tính gần gũi.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Chèn logo thương hiệu', 2, N'Bài đăng phải hiển thị logo thương hiệu ở vị trí dễ thấy, ví dụ như góc video hoặc hình ảnh.');
INSERT INTO Conditions (condition_name, condition_id2, description) VALUES (N'Thời điểm đăng bài', 2, N'Bài đăng phải được đăng vào khung giờ cụ thể để tối ưu hóa lượng tương tác.');
select * from contract_details ;
-- 10. Contract table INSERT statements (4 rows from sample + 6 additional) 1.
paid_amount1 number null,
paid_amount2 number null;

INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (1, 1, N'Combo da đẹp từ trong ra ngoài', N'Tăng nhận diện thương hiệu', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'), 50000000, TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'), 3, 'P', 15);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (2, 2, N'Chiến dịch Da đẹp tự nhiên', N'Tăng doanh thu sản phẩm', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 30000000, TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), NULL, 2, 'P', 2);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (3, 3, N'Chiến dịch Ngủ ngon da đẹp', N'Tăng nhận diện sản phẩm', TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-05-31', 'YYYY-MM-DD'), 40000000, TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-05-31', 'YYYY-MM-DD'), 3, 'P', 2);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (4, 4, N'Chiến dịch Trang điểm tự nhiên', N'Tăng doanh thu sản phẩm', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-06-30', 'YYYY-MM-DD'), 35000000, TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), NULL, 2, 'P', 1);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (14, 5, N'Chiến dịch Gucci thời thượng', N'Tăng nhận diện thương hiệu', TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-07-31', 'YYYY-MM-DD'), 60000000, TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-07-31', 'YYYY-MM-DD'), 2, 'P', 4);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (6, 8, N'Chiến dịch Vietjet khám phá', N'Tăng doanh thu vé máy bay', TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-08-31', 'YYYY-MM-DD'), 25000000, TO_DATE('2025-05-15', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), NULL, 2, 'P', 5);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (12, 15, N'Chiến dịch Hảo Hảo đậm vị', N'Tăng doanh thu sản phẩm', TO_DATE('2025-07-01', 'YYYY-MM-DD'), TO_DATE('2025-09-30', 'YYYY-MM-DD'), 20000000, TO_DATE('2025-06-15', 'YYYY-MM-DD'), TO_DATE('2025-07-01', 'YYYY-MM-DD'), TO_DATE('2025-09-30', 'YYYY-MM-DD'), 2, 'P', 6);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (13, 12, N'Chiến dịch Puma năng động', N'Tăng nhận diện thương hiệu', TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-10-31', 'YYYY-MM-DD'), 30000000, TO_DATE('2025-07-15', 'YYYY-MM-DD'), TO_DATE('2025-08-01', 'YYYY-MM-DD'), NULL, 2, 'P', 7);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (17, 3, N'Chiến dịch Laneige dưỡng da', N'Tăng doanh thu sản phẩm', TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-11-30', 'YYYY-MM-DD'), 35000000, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-11-30', 'YYYY-MM-DD'), 3, 'P', 2);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (20, 6, N'Chiến dịch Zara thời trang', N'Tăng nhận diện thương hiệu', TO_DATE('2025-10-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 40000000, TO_DATE('2025-09-15', 'YYYY-MM-DD'), TO_DATE('2025-10-01', 'YYYY-MM-DD'), NULL, 2, 'P', 4);
-- Additional 20 rows for Contract table 3. 
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (8, 7, N'Chiến dịch Charles & Keith thời thượng', N'Tăng nhận diện thương hiệu', TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2026-01-31', 'YYYY-MM-DD'), 35000000, TO_DATE('2025-10-15', 'YYYY-MM-DD'), TO_DATE('2025-11-01', 'YYYY-MM-DD'), NULL, 2, 'P', 4);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (11, 9, N'Chiến dịch Fiji du lịch', N'Tăng doanh thu tour', TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2026-02-28', 'YYYY-MM-DD'), 45000000, TO_DATE('2025-11-15', 'YYYY-MM-DD'), TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2026-02-28', 'YYYY-MM-DD'), 3, 'P', 5);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (15, 10, N'Chiến dịch OPPO công nghệ', N'Tăng nhận diện sản phẩm', TO_DATE('2026-01-01', 'YYYY-MM-DD'), TO_DATE('2026-03-31', 'YYYY-MM-DD'), 50000000, TO_DATE('2025-12-15', 'YYYY-MM-DD'), TO_DATE('2026-01-01', 'YYYY-MM-DD'), NULL, 2, 'P', 9);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (9, 11, N'Chiến dịch Yamaha âm nhạc', N'Tăng doanh thu sản phẩm', TO_DATE('2026-02-01', 'YYYY-MM-DD'), TO_DATE('2026-04-30', 'YYYY-MM-DD'), 30000000, TO_DATE('2026-01-15', 'YYYY-MM-DD'), TO_DATE('2026-02-01', 'YYYY-MM-DD'), TO_DATE('2026-04-30', 'YYYY-MM-DD'), 2, 'P', 8);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (19, 14, N'Chiến dịch VinMart thực phẩm', N'Tăng doanh thu sản phẩm', TO_DATE('2026-03-01', 'YYYY-MM-DD'), TO_DATE('2026-05-31', 'YYYY-MM-DD'), 25000000, TO_DATE('2026-02-15', 'YYYY-MM-DD'), TO_DATE('2026-03-01', 'YYYY-MM-DD'), NULL, 2, 'P', 6);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (16, 13, N'Chiến dịch Shopee 12.12', N'Tăng tương tác chiến dịch', TO_DATE('2026-04-01', 'YYYY-MM-DD'), TO_DATE('2026-06-30', 'YYYY-MM-DD'), 40000000, TO_DATE('2026-03-15', 'YYYY-MM-DD'), TO_DATE('2026-04-01', 'YYYY-MM-DD'), TO_DATE('2026-06-30', 'YYYY-MM-DD'), 3, 'P', 10);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (5, 12, N'Chiến dịch Puma thể thao', N'Tăng nhận diện thương hiệu', TO_DATE('2026-05-01', 'YYYY-MM-DD'), TO_DATE('2026-07-31', 'YYYY-MM-DD'), 35000000, TO_DATE('2026-04-15', 'YYYY-MM-DD'), TO_DATE('2026-05-01', 'YYYY-MM-DD'), NULL, 2, 'P', 7);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (10, 1, N'Chiến dịch L''Oréal tóc đẹp', N'Tăng doanh thu sản phẩm', TO_DATE('2026-06-01', 'YYYY-MM-DD'), TO_DATE('2026-08-31', 'YYYY-MM-DD'), 40000000, TO_DATE('2026-05-15', 'YYYY-MM-DD'), TO_DATE('2026-06-01', 'YYYY-MM-DD'), TO_DATE('2026-08-31', 'YYYY-MM-DD'), 2, 'P', 3);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (18, 5, N'Chiến dịch Gucci luxury', N'Tăng nhận diện thương hiệu', TO_DATE('2026-07-01', 'YYYY-MM-DD'), TO_DATE('2026-09-30', 'YYYY-MM-DD'), 60000000, TO_DATE('2026-06-15', 'YYYY-MM-DD'), TO_DATE('2026-07-01', 'YYYY-MM-DD'), NULL, 2, 'P', 4);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (3, 4, N'Chiến dịch Maybelline mascara', N'Tăng doanh thu sản phẩm', TO_DATE('2026-08-01', 'YYYY-MM-DD'), TO_DATE('2026-10-31', 'YYYY-MM-DD'), 30000000, TO_DATE('2026-07-15', 'YYYY-MM-DD'), TO_DATE('2026-08-01', 'YYYY-MM-DD'), TO_DATE('2026-10-31', 'YYYY-MM-DD'), 2, 'P', 1);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (7, 9, N'Chiến dịch Fiji văn hóa', N'Tăng nhận diện điểm đến', TO_DATE('2026-09-01', 'YYYY-MM-DD'), TO_DATE('2026-11-30', 'YYYY-MM-DD'), 45000000, TO_DATE('2026-08-15', 'YYYY-MM-DD'), TO_DATE('2026-09-01', 'YYYY-MM-DD'), NULL, 3, 'P', 5);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (12, 15, N'Chiến dịch Acecook phở', N'Tăng doanh thu sản phẩm', TO_DATE('2026-10-01', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 20000000, TO_DATE('2026-09-15', 'YYYY-MM-DD'), TO_DATE('2026-10-01', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 2, 'P', 6);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (13, 12, N'Chiến dịch Puma năng động', N'Tăng nhận diện thương hiệu', TO_DATE('2026-11-01', 'YYYY-MM-DD'), TO_DATE('2027-01-31', 'YYYY-MM-DD'), 35000000, TO_DATE('2026-10-15', 'YYYY-MM-DD'), TO_DATE('2026-11-01', 'YYYY-MM-DD'), NULL, 2, 'P', 7);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (17, 2, N'Chiến dịch Innisfree mặt nạ', N'Tăng doanh thu sản phẩm', TO_DATE('2026-12-01', 'YYYY-MM-DD'), TO_DATE('2027-02-28', 'YYYY-MM-DD'), 30000000, TO_DATE('2026-11-15', 'YYYY-MM-DD'), TO_DATE('2026-12-01', 'YYYY-MM-DD'), TO_DATE('2027-02-28', 'YYYY-MM-DD'), 2, 'P', 2);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (20, 6, N'Chiến dịch Zara mùa đông', N'Tăng nhận diện thương hiệu', TO_DATE('2027-01-01', 'YYYY-MM-DD'), TO_DATE('2027-03-31', 'YYYY-MM-DD'), 40000000, TO_DATE('2026-12-15', 'YYYY-MM-DD'), TO_DATE('2027-01-01', 'YYYY-MM-DD'), NULL, 2, 'P', 4);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (1, 1, N'Chiến dịch L''Oréal dưỡng da', N'Tăng doanh thu sản phẩm', TO_DATE('2027-02-01', 'YYYY-MM-DD'), TO_DATE('2027-04-30', 'YYYY-MM-DD'), 50000000, TO_DATE('2027-01-15', 'YYYY-MM-DD'), TO_DATE('2027-02-01', 'YYYY-MM-DD'), TO_DATE('2027-04-30', 'YYYY-MM-DD'), 3, 'P', 2);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (2, 3, N'Chiến dịch Laneige toner', N'Tăng nhận diện sản phẩm', TO_DATE('2027-03-01', 'YYYY-MM-DD'), TO_DATE('2027-05-31', 'YYYY-MM-DD'), 35000000, TO_DATE('2027-02-15', 'YYYY-MM-DD'), TO_DATE('2027-03-01', 'YYYY-MM-DD'), NULL, 2, 'P', 2);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (4, 4, N'Chiến dịch Maybelline tự nhiên', N'Tăng doanh thu sản phẩm', TO_DATE('2027-04-01', 'YYYY-MM-DD'), TO_DATE('2027-06-30', 'YYYY-MM-DD'), 30000000, TO_DATE('2027-03-15', 'YYYY-MM-DD'), TO_DATE('2027-04-01', 'YYYY-MM-DD'), TO_DATE('2027-06-30', 'YYYY-MM-DD'), 2, 'P', 1);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (6, 8, N'Chiến dịch Vietjet quốc tế', N'Tăng doanh thu vé máy bay', TO_DATE('2027-05-01', 'YYYY-MM-DD'), TO_DATE('2027-07-31', 'YYYY-MM-DD'), 25000000, TO_DATE('2027-04-15', 'YYYY-MM-DD'), TO_DATE('2027-05-01', 'YYYY-MM-DD'), NULL, 2, 'P', 5);
INSERT INTO Contract (influ_id, client_id, subjects, campaign_goals, start_date, end_date, bookingcost, sign_date, paid_date1, paid_date2, post_quantity, status, field_id)
VALUES (14, 7, N'Chiến dịch Charles & Keith sandal', N'Tăng nhận diện thương hiệu', TO_DATE('2027-06-01', 'YYYY-MM-DD'), TO_DATE('2027-08-31', 'YYYY-MM-DD'), 35000000, TO_DATE('2027-05-15', 'YYYY-MM-DD'), TO_DATE('2027-06-01', 'YYYY-MM-DD'), TO_DATE('2027-08-31', 'YYYY-MM-DD'), 2, 'P', 4);
----------

select * from Contract;
--11. Updated Contract_Details table (20 rows, referencing new Conditions table)
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (10, N'Review sản phẩm', TO_DATE('2025-01-05', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Chụp ảnh với phong cách tươi vui, sử dụng serum L''Oréal.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (1, N'Tutorial', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-15', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video hướng dẫn sử dụng serum với cảm xúc tích cực.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (1, N'Review sản phẩm', TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sử dụng nhạc nền của L''Oréal.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (2, N'Unbox', TO_DATE('2025-02-05', 'YYYY-MM-DD'), TO_DATE('2025-02-10', 'YYYY-MM-DD'), N'video', 0.25, 0.50, N'Video unbox sản phẩm Innisfree ngoài trời.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (2, N'Review sản phẩm', TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sản phẩm với phong cách gần gũi.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (3, N'Tutorial', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'), N'video', 1.00, 2.00, N'Video hướng dẫn dưỡng da ban đêm Laneige.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (3, N'Review sản phẩm', TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sản phẩm với phong cách gần gũi.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (3, N'Tutorial', TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), N'video', 1.00, 2.00, N'Video dưỡng da với cảm xúc tươi vui.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (4, N'Tutorial', TO_DATE('2025-04-05', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), N'video', 0.25, 0.50, N'Video hướng dẫn trang điểm Maybelline.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (4, N'Review sản phẩm', TO_DATE('2025-04-10', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh trang điểm với cảm xúc tươi vui.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (5, N'Chụp ảnh thời trang', TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh túi xách Gucci với phong cách sang trọng.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (5, N'Review sản phẩm', TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review nước hoa Gucci với hiệu ứng chuyên nghiệp.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (6, N'Vlog du lịch', TO_DATE('2025-06-05', 'YYYY-MM-DD'), TO_DATE('2025-06-10', 'YYYY-MM-DD'), N'video', 2.00, 3.00, N'Vlog quảng bá Vietjet tại bối cảnh ngoại cảnh.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (6, N'Review dịch vụ', TO_DATE('2025-06-10', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh trải nghiệm Vietjet với cảm xúc tươi vui.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (7, N'Review sản phẩm', TO_DATE('2025-07-05', 'YYYY-MM-DD'), TO_DATE('2025-07-10', 'YYYY-MM-DD'), N'video', 0.25, 0.50, N'Video review mì Hảo Hảo với phong cách tự nhiên.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (7, N'Review sản phẩm', TO_DATE('2025-07-10', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sản phẩm Hảo Hảo với phong cách gần gũi.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (8, N'Review sản phẩm', TO_DATE('2025-08-05', 'YYYY-MM-DD'), TO_DATE('2025-08-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video tập luyện với Puma, thể hiện cảm xúc tươi vui.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (8, N'Chụp ảnh thể thao', TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sử dụng trang phục Puma năng động.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (9, N'Tutorial', TO_DATE('2025-09-05', 'YYYY-MM-DD'), TO_DATE('2025-09-10', 'YYYY-MM-DD'), N'video', 1.00, 2.00, N'Video hướng dẫn dưỡng da Laneige.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (10, N'Chụp ảnh thời trang', TO_DATE('2025-10-05', 'YYYY-MM-DD'), TO_DATE('2025-10-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh váy Zara với phong cách sang trọng.');

-- Additional 20 rows for Contract_Details table
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (11, N'Chụp ảnh thời trang', TO_DATE('2025-11-05', 'YYYY-MM-DD'), TO_DATE('2025-11-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sandal Charles & Keith với phong cách sang trọng.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (11, N'Review sản phẩm', TO_DATE('2025-11-10', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review túi xách Charles & Keith.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (12, N'Vlog du lịch', TO_DATE('2025-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-10', 'YYYY-MM-DD'), N'video', 2.00, 3.00, N'Vlog quảng bá tour Fiji tại bãi biển.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (12, N'Review dịch vụ', TO_DATE('2025-12-10', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh trải nghiệm văn hóa Fiji.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (12, N'Vlog du lịch', TO_DATE('2025-12-15', 'YYYY-MM-DD'), TO_DATE('2025-12-20', 'YYYY-MM-DD'), N'video', 2.00, 3.00, N'Vlog khám phá bờ biển san hô Fiji.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (13, N'Review sản phẩm', TO_DATE('2026-01-05', 'YYYY-MM-DD'), TO_DATE('2026-01-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review OPPO Reno8.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (13, N'Chụp ảnh công nghệ', TO_DATE('2026-01-10', 'YYYY-MM-DD'), TO_DATE('2026-01-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh tai nghe OPPO Enco Air.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (14, N'Review sản phẩm', TO_DATE('2026-02-05', 'YYYY-MM-DD'), TO_DATE('2026-02-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review đàn Yamaha PSR-E373.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (14, N'Chụp ảnh nhạc cụ', TO_DATE('2026-02-10', 'YYYY-MM-DD'), TO_DATE('2026-02-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sử dụng đàn guitar Yamaha.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (15, N'Review sản phẩm', TO_DATE('2026-03-05', 'YYYY-MM-DD'), TO_DATE('2026-03-10', 'YYYY-MM-DD'), N'video', 0.25, 0.50, N'Video review rau củ VinMart.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (15, N'Review sản phẩm', TO_DATE('2026-03-10', 'YYYY-MM-DD'), TO_DATE('2026-03-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh rau củ VinMart trong bối cảnh bếp.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (16, N'Review chiến dịch', TO_DATE('2026-04-05', 'YYYY-MM-DD'), TO_DATE('2026-04-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video quảng bá Shopee 12.12.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (16, N'Chụp ảnh sản phẩm', TO_DATE('2026-04-10', 'YYYY-MM-DD'), TO_DATE('2026-04-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh hộp quà Shopee Beauty Box.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (16, N'Review chiến dịch', TO_DATE('2026-04-15', 'YYYY-MM-DD'), TO_DATE('2026-04-20', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video kêu gọi mua sắm Shopee 12.12.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (17, N'Review sản phẩm', TO_DATE('2026-05-05', 'YYYY-MM-DD'), TO_DATE('2026-05-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video tập luyện với áo Puma.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (17, N'Chụp ảnh thể thao', TO_DATE('2026-05-10', 'YYYY-MM-DD'), TO_DATE('2026-05-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh giày Puma RS-X.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (18, N'Tutorial', TO_DATE('2026-06-05', 'YYYY-MM-DD'), TO_DATE('2026-06-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video hướng dẫn dùng dầu gội L''Oréal.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (18, N'Review sản phẩm', TO_DATE('2026-06-10', 'YYYY-MM-DD'), TO_DATE('2026-06-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh tóc mượt mà với L''Oréal.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (19, N'Chụp ảnh thời trang', TO_DATE('2026-07-05', 'YYYY-MM-DD'), TO_DATE('2026-07-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh túi Gucci với phong cách luxury.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (19, N'Review sản phẩm', TO_DATE('2026-07-10', 'YYYY-MM-DD'), TO_DATE('2026-07-15', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review nước hoa Gucci Bamboo.');
-- Thêm dữ liệu cho bảng Contract_Details từ contract_id = 20 trở đi
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (20, N'Chụp ảnh thời trang', TO_DATE('2025-10-05', 'YYYY-MM-DD'), TO_DATE('2025-10-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh áo Zara với phong cách tối giản.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (20, N'Review sản phẩm', TO_DATE('2025-10-10', 'YYYY-MM-DD'), TO_DATE('2025-10-15', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review quần Zara với phong cách năng động.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (21, N'Chụp ảnh thời trang', TO_DATE('2025-11-05', 'YYYY-MM-DD'), TO_DATE('2025-11-10', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh túi Charles & Keith với phong cách hiện đại.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (21, N'Review sản phẩm', TO_DATE('2025-11-10', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review giày Charles & Keith.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (22, N'Vlog du lịch', TO_DATE('2025-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-10', 'YYYY-MM-DD'), N'video', 2.00, 3.00, N'Vlog trải nghiệm văn hóa Fiji.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (22, N'Review dịch vụ', TO_DATE('2025-12-10', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh trải nghiệm resort tại Fiji.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (22, N'Vlog du lịch', TO_DATE('2025-12-15', 'YYYY-MM-DD'), TO_DATE('2025-12-20', 'YYYY-MM-DD'), N'video', 2.00, 3.00, N'Vlog khám phá thiên nhiên Fiji.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (23, N'Review sản phẩm', TO_DATE('2026-01-05', 'YYYY-MM-DD'), TO_DATE('2026-01-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review OPPO Find X.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (23, N'Chụp ảnh công nghệ', TO_DATE('2026-01-10', 'YYYY-MM-DD'), TO_DATE('2026-01-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh điện thoại OPPO với phong cách tối giản.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (24, N'Review sản phẩm', TO_DATE('2026-02-05', 'YYYY-MM-DD'), TO_DATE('2026-02-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video review piano Yamaha.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (24, N'Chụp ảnh nhạc cụ', TO_DATE('2026-02-10', 'YYYY-MM-DD'), TO_DATE('2026-02-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh piano Yamaha trong phòng thu.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (25, N'Review sản phẩm', TO_DATE('2026-03-05', 'YYYY-MM-DD'), TO_DATE('2026-03-10', 'YYYY-MM-DD'), N'video', 0.25, 0.50, N'Video review đồ uống VinMart.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (25, N'Review sản phẩm', TO_DATE('2026-03-10', 'YYYY-MM-DD'), TO_DATE('2026-03-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh nước ép VinMart trong bối cảnh tươi sáng.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (26, N'Review chiến dịch', TO_DATE('2026-04-05', 'YYYY-MM-DD'), TO_DATE('2026-04-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video quảng bá Shopee 11.11.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (26, N'Chụp ảnh sản phẩm', TO_DATE('2026-04-10', 'YYYY-MM-DD'), TO_DATE('2026-04-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh sản phẩm Shopee Flash Sale.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (26, N'Review chiến dịch', TO_DATE('2026-04-15', 'YYYY-MM-DD'), TO_DATE('2026-04-20', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video kêu gọi tham gia Shopee 11.11.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (27, N'Review sản phẩm', TO_DATE('2026-05-05', 'YYYY-MM-DD'), TO_DATE('2026-05-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video tập luyện với giày Puma.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (27, N'Chụp ảnh thể thao', TO_DATE('2026-05-10', 'YYYY-MM-DD'), TO_DATE('2026-05-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh áo Puma trong phòng gym.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (28, N'Tutorial', TO_DATE('2026-06-05', 'YYYY-MM-DD'), TO_DATE('2026-06-10', 'YYYY-MM-DD'), N'video', 0.50, 1.00, N'Video hướng dẫn dùng kem dưỡng L''Oréal.');
INSERT INTO Contract_Details (contract_id, method, review_deadline, post_date, post_type, min_duration, max_duration, notes)
VALUES (63, N'Review sản phẩm', TO_DATE('2026-06-10', 'YYYY-MM-DD'), TO_DATE('2026-06-15', 'YYYY-MM-DD'), N'hình ảnh', NULL, NULL, N'Ảnh da sáng mịn với L''Oréal.');
select * from contract;
-- 12. ContractDetails_Conditions table (20 rows, linking Contract_Details to Conditions)
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (1, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (1, 19);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (2, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (2, 20);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (3, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (3, 15);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (4, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (4, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (5, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (5, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (6, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (6, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (7, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (7, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (8, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (8, 11);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (9, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (9, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (10, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (10, 19);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (11, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (11, 19);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (12, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (12, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (13, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (13, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (14, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (14, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (15, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (15, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (16, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (16, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (17, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (17, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (18, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (18, 16);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (19, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (19, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (20, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (20, 19);
-- Additional 20 rows for ContractDetails_Conditions table
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (21, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (21, 12);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (22, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (22, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (23, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (23, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (24, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (24, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (25, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (25, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (26, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (26, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (27, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (27, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (28, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (28, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (29, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (29, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (30, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (30, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (31, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (31, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (32, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (32, 17);
-- Thêm dữ liệu cho bảng ContractDetails_Conditions từ contract_id = 20 trở đi
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (41, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (41, 19);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (42, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (42, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (43, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (43, 12);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (44, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (44, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (45, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (45, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (46, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (46, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (47, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (47, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (48, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (48, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (49, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (49, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (50, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (50, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (51, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (51, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (52, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (52, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (53, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (53, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (54, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (54, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (55, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (55, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (56, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (56, 17);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (57, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (57, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (58, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (58, 14);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (59, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (59, 10);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (60, 7);
INSERT INTO ContractDetails_Conditions (details_id, condition_id) VALUES (60, 16);



-- Insert 40 rows into Contract_Expense table, adjusted for new structure
factor number (4,3);
insert into Expense ( ex_subject, details) values ('chiết khấu cho khách hàng', null); ----id=21

INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (1, 1, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (1, 2, 1, 2000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (1, 7, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (2, 3, 1, 4000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (2, 4, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (3, 1, 1, 6000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (3, 2, 1, 2500000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (3, 7, 1, 3500000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (4, 1, 1, 4000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (4, 5, 1, 2000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (5, 1, 1, 7000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (5, 8, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (6, 3, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (6, 4, 1, 4000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (7, 1, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (7, 6, 1, 1500000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (8, 1, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (8, 9, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (9, 1, 1, 6000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (9, 7, 1, 3500000);

INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (63, 1, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (63, 5, 1, 2000000);
iNSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (10, 2, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (10, 3, 1, 2000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (11, 1, 1, 4000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (11, 8, 1, 2000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (12, 3, 1, 6000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (12, 4, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (13, 1, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (13, 7, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (14, 1, 1, 4000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (14, 8, 1, 2000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (15, 1, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (15, 6, 1, 1500000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (16, 1, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (16, 10, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (17, 1, 1, 5000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (17, 9, 1, 3000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (18, 1, 1, 4000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (18, 2, 1, 2000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (19, 1, 1, 7000000);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs) VALUES (19, 8, 1, 3000000);

-- Thêm dữ liệu cho bảng Contract_Expense từ contract_id = 20 trở đi
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (20, 1, 1, 5000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (20, 5, 1, 2000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (21, 1, 1, 4000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (21, 8, 1, 2000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (22, 3, 1, 6000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (22, 4, 1, 5000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (23, 1, 1, 5000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (23, 7, 1, 3000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (24, 1, 1, 4000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (24, 8, 1, 2000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (25, 1, 1, 3000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (25, 6, 1, 1500000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (26, 1, 1, 5000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (26, 10, 1, 3000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (27, 1, 1, 5000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (27, 9, 1, 3000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (28, 1, 1, 4000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (28, 2, 1, 2000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (29, 1, 1, 7000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (29, 8, 1, 3000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (30, 1, 1, 4000000, NULL);
INSERT INTO Contract_Expense (contract_id, ex_id, quantities, costs, factor) VALUES (30, 21, 1, NULL, 0.100);



-- 13. Updated ContractDetails_Product table (20 rows, using details_id)
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (1, 1);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (2, 1);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (3, 2);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (4, 3);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (5, 4);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (6, 5);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (7, 6);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (8, 6);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (9, 7);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (10, 8);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (11, 9);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (12, 10);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (13, 15);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (14, 16);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (15, 25);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (16, 25);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (17, 21);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (18, 22);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (19, 28);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (20, 32);

-- Additional 20 rows for ContractDetails_Product table
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (21, 13);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (22, 14);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (23, 17);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (24, 34);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (25, 34);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (26, 18);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (27, 19);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (28, 20);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (29, 36);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (30, 24);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (31, 37);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (32, 40);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (33, 40);

select * from ContractDetails;
select * from Products;


-- Thêm dữ liệu cho bảng ContractDetails_Product từ contract_id = 20 trở đi
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (41, 33);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (42, 33);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (43, 15);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (44, 16);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (45, 35);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (46, 35);
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (47, 35);


-- Sửa dữ liệu cho bảng ContractDetails_Product từ details_id = 41 trở đi, đảm bảo pro_id trong khoảng 1-40
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (41, 33); -- Zara shirt
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (42, 33); -- Zara pants
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (43, 15); -- Charles & Keith bag
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (44, 16); -- Charles & Keith shoes
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (45, 35); -- Fiji travel service
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (46, 35); -- Fiji resort experience
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (47, 35); -- Fiji nature exploration
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (48, 18); -- OPPO Find X
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (49, 18); -- OPPO Find X
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (50, 20); -- Yamaha piano
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (51, 20); -- Yamaha piano
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (52, 24); -- VinMart drinks
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (53, 24); -- VinMart juice
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (54, 40); -- Shopee 11.11 campaign
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (55, 40); -- Shopee Flash Sale
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (56, 40); -- Shopee 11.11 campaign
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (57, 21); -- Puma shoes
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (58, 21); -- Puma shirt
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (59, 1); -- L'Oréal cream
INSERT INTO ContractDetails_Product (details_id, pro_id) VALUES (60, 1); -- L'Oréal cream



-- 14. Post table (20 rows, realistic data)
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (1, 1, 50000, 2000, 100000, 80000, 1000, TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-15', 'YYYY-MM-DD'), N'Bí quyết da đẹp với L''Oréal', N'Chia sẻ bí quyết dưỡng da với serum L''Oréal! #LOréalParis', 'https://www.facebook.com/sontungmtp/posts/123456789', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (2, 2, 45000, 1500, 90000, 70000, 800, TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'), N'Hướng dẫn dưỡng da L''Oréal', N'Video hướng dẫn sử dụng serum L''Oréal để da căng mọng! #DaDep', 'https://www.instagram.com/sontungmtp/p/123456789', 'P', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (3, 3, 30000, 1000, 60000, 50000, 600, TO_DATE('2025-01-20', 'YYYY-MM-DD'), TO_DATE('2025-01-25', 'YYYY-MM-DD'), N'Kem nền L''Oréal True Match', N'Kem nền tự nhiên cho làn da hoàn hảo. #LOréalParis', 'https://www.instagram.com/hongocha/p/234567890', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (4, 4, 25000, 800, 50000, 40000, 500, TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), N'Unbox Innisfree Green Tea', N'Video unbox kem dưỡng trà xanh Innisfree! #Innisfree', 'https://www.youtube.com/watch?v=345678901', 'P', 0.25, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (5, 5, 20000, 600, 40000, 35000, 400, TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-20', 'YYYY-MM-DD'), N'Phấn Innisfree No Sebum', N'Phấn bột Innisfree cho làn da mịn màng. #DaDep', 'https://www.instagram.com/trinhpham/p/456789012', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (6, 6, 35000, 1200, 70000, 60000, 700, TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-15', 'YYYY-MM-DD'), N'Dưỡng da ban đêm Laneige', N'Video hướng dẫn dưỡng da với mặt nạ ngủ Laneige. #Laneige', 'https://www.youtube.com/watch?v=567890123', 'P', 1.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (7, 7, 15000, 500, 30000, 25000, 300, TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), N'Mặt nạ môi Laneige', N'Ảnh môi căng mọng với mặt nạ môi Laneige. #DaDep', 'https://www.instagram.com/changmakeup/p/678901234', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (8, 8, 20000, 700, 45000, 40000, 500, TO_DATE('2025-03-20', 'YYYY-MM-DD'), TO_DATE('2025-03-25', 'YYYY-MM-DD'), N'Dưỡng da tươi vui Laneige', N'Video dưỡng da với Laneige, cảm xúc tươi vui! #Laneige', 'https://www.youtube.com/watch?v=789012345', 'P', 1.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (9, 9, 18000, 600, 35000, 30000, 400, TO_DATE('2025-04-10', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), N'Trang điểm Maybelline', N'Hướng dẫn trang điểm tự nhiên với Maybelline. #FitMe', 'https://www.instagram.com/quangdang/p/890123456', 'P', 0.25, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (10, 10, 12000, 400, 25000, 20000, 300, TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-20', 'YYYY-MM-DD'), N'Son Maybelline Matte Ink', N'Ảnh son môi Maybelline với phong cách tươi vui. #MatteInk', 'https://www.facebook.com/quangdang/posts/901234567', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (11, 11, 25000, 800, 50000, 45000, 600, TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'), N'Túi xách Gucci sang trọng', N'Ảnh túi xách Gucci với phong cách cao cấp. #Gucci', 'https://www.instagram.com/hoaa.hanassii/p/012345678', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (12, 12, 30000, 1000, 60000, 55000, 700, TO_DATE('2025-05-15', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), N'Nước hoa Gucci', N'Video review nước hoa Gucci với hiệu ứng chuyên nghiệp. #Gucci', 'https://www.youtube.com/watch?v=123456789', 'P', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (13, 13, 40000, 1500, 80000, 70000, 900, TO_DATE('2025-06-10', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), N'Vlog Vietjet', N'Vlog trải nghiệm chuyến bay Vietjet! #KhámPhá', 'https://www.youtube.com/watch?v=234567890', 'P', 2.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (14, 14, 15000, 500, 30000, 25000, 400, TO_DATE('2025-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-20', 'YYYY-MM-DD'), N'SkyBoss Vietjet', N'Ảnh trải nghiệm dịch vụ SkyBoss Vietjet. #SkyBoss', 'https://www.instagram.com/khoailangthang/p/345678901', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (15, 15, 10000, 300, 20000, 15000, 200, TO_DATE('2025-07-10', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'), N'Mì Hảo Hảo đậm vị', N'Video review mì Hảo Hảo với phong cách gần gũi. #ĐậmVị', 'https://www.youtube.com/watch?v=456789012', 'P', 0.25, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (16, 16, 8000, 200, 15000, 12000, 150, TO_DATE('2025-07-15', 'YYYY-MM-DD'), TO_DATE('2025-07-20', 'YYYY-MM-DD'), N'Mì Hảo Hảo tôm chua cay', N'Ảnh mì Hảo Hảo trong bối cảnh đời thường. #TômChuaCay', 'https://www.facebook.com/khoailangthang/posts/567890123', 'P', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (27, 17, 20000, 600, 40000, 35000, 500, TO_DATE('2025-08-10', 'YYYY-MM-DD'), NULL, N'Tập luyện với Puma', N'Video tập luyện năng động với Puma. #Active', 'https://www.youtube.com/watch?v=678901234', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (28, 18, 15000, 400, 30000, 25000, 300, TO_DATE('2025-08-15', 'YYYY-MM-DD'), NULL, N'Giày Puma RSX', N'Ảnh giày Puma với phong cách thể thao. #RSX', 'https://www.instagram.com/chau_bui/p/789012345', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 19, 25000, 800, 50000, 45000, 600, TO_DATE('2025-09-10', 'YYYY-MM-DD'), NULL, N'Dưỡng da Laneige', N'Video hướng dẫn dưỡng da Laneige. #DaDep', 'https://www.youtube.com/watch?v=890123456', 'D', 1.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (30, 42, 12000, 300, 25000, 20000, 200, TO_DATE('2025-10-10', 'YYYY-MM-DD'), NULL, N'Váy Zara sang trọng', N'Ảnh váy Zara với phong cách cao cấp. #Zara', 'https://www.instagram.com/decoxinh/p/901234567', 'D', 1, N'video');

-- Additional 20 rows for Post table
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (16, 21, 20000, 700, 40000, 35000, 500, TO_DATE('2025-11-10', 'YYYY-MM-DD'), NULL, N'Sandal Charles & Keith', N'Ảnh sandal Charles & Keith thời thượng. #CharlesKeith', 'https://www.instagram.com/chipu/p/012345678', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (17, 22, 25000, 800, 50000, 45000, 600, TO_DATE('2025-11-15', 'YYYY-MM-DD'), NULL, N'Túi xách Charles & Keith', N'Video review túi xách Charles & Keith. #CharlesKeith', 'https://www.youtube.com/watch?v=123456789', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (22, 23, 30000, 1000, 60000, 55000, 700, TO_DATE('2025-12-10', 'YYYY-MM-DD'), NULL, N'Vlog Fiji', N'Vlog khám phá bãi biển Fiji! #FijiTravel', 'https://www.youtube.com/watch?v=234567890', 'D', 2.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (23, 24, 15000, 500, 30000, 25000, 400, TO_DATE('2025-12-15', 'YYYY-MM-DD'), NULL, N'Văn hóa Fiji', N'Ảnh trải nghiệm văn hóa Fiji. #Fiji', 'https://www.instagram.com/transviet/p/345678901', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (24, 25, 35000, 1200, 70000, 60000, 800, TO_DATE('2025-12-20', 'YYYY-MM-DD'), NULL, N'Bờ biển Fiji', N'Vlog khám phá san hô Fiji. #FijiTravel', 'https://www.youtube.com/watch?v=456789012', 'D', 2.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (28, 26, 20000, 600, 40000, 35000, 500, TO_DATE('2026-01-10', 'YYYY-MM-DD'), NULL, N'OPPO Reno8', N'Video review OPPO Reno8. #OPPO', 'https://www.youtube.com/watch?v=567890123', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 27, 15000, 400, 30000, 25000, 300, TO_DATE('2026-01-15', 'YYYY-MM-DD'), NULL, N'Tai nghe OPPO', N'Ảnh tai nghe OPPO Enco Air. #OPPO', 'https://www.instagram.com/viruss/p/678901234', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (18, 28, 25000, 800, 50000, 45000, 600, TO_DATE('2026-02-10', 'YYYY-MM-DD'), NULL, N'Đàn Yamaha', N'Video review đàn Yamaha PSR-E373. #Yamaha', 'https://www.youtube.com/watch?v=789012345', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (19, 29, 12000, 300, 25000, 20000, 200, TO_DATE('2026-02-15', 'YYYY-MM-DD'), NULL, N'Guitar Yamaha', N'Ảnh đàn guitar Yamaha. #Yamaha', 'https://www.instagram.com/denvau/p/890123456', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (31, 30, 10000, 200, 20000, 15000, 150, TO_DATE('2026-03-10', 'YYYY-MM-DD'), NULL, N'Rau củ VinMart', N'Video review rau củ VinMart. #VinMart', 'https://www.youtube.com/watch?v=901234567', 'D', 0.25, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (32, 31, 8000, 150, 15000, 12000, 100, TO_DATE('2026-03-15', 'YYYY-MM-DD'), NULL, N'Rau củ VinMart', N'Ảnh rau củ VinMart trong bếp. #VinMart', 'https://www.instagram.com/anhtuyet/p/012345678', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 32, 25000, 800, 50000, 45000, 600, TO_DATE('2026-04-10', 'YYYY-MM-DD'), NULL, N'Shopee 12.12', N'Video quảng bá Shopee 12.12. #Shopee1212', 'https://www.youtube.com/watch?v=123456789', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (30, 33, 15000, 400, 30000, 25000, 300, TO_DATE('2026-04-15', 'YYYY-MM-DD'), NULL, N'Shopee Beauty Box', N'Ảnh hộp quà Shopee Beauty Box. #Shopee', 'https://www.instagram.com/khanhvy/p/234567890', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 34, 20000, 600, 40000, 35000, 500, TO_DATE('2026-04-20', 'YYYY-MM-DD'), NULL, N'Shopee 12.12', N'Video kêu gọi mua sắm Shopee. #Shopee1212', 'https://www.youtube.com/watch?v=345678901', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (11, 35, 20000, 600, 40000, 35000, 500, TO_DATE('2026-05-10', 'YYYY-MM-DD'), NULL, N'Puma Active', N'Video tập luyện với Puma. #Puma', 'https://www.youtube.com/watch?v=456789012', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (10, 36, 15000, 400, 30000, 25000, 300, TO_DATE('2026-05-15', 'YYYY-MM-DD'), NULL, N'Giày Puma RS-X', N'Ảnh giày Puma RS-X. #Puma', 'https://www.instagram.com/quangdang/p/567890123', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (20, 37, 25000, 800, 50000, 45000, 600, TO_DATE('2026-06-10', 'YYYY-MM-DD'), NULL, N'Dầu gội L''Oréal', N'Video hướng dẫn dùng dầu gội L''Oréal. #LOréal', 'https://www.youtube.com/watch?v=678901234', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (21, 38, 12000, 300, 25000, 20000, 200, TO_DATE('2026-06-15', 'YYYY-MM-DD'), NULL, N'Tóc mượt L''Oréal', N'Ảnh tóc mượt mà với L''Oréal. #LOréal', 'https://www.instagram.com/hoangthuylinh/p/789012345', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (30, 39, 15000, 400, 30000, 25000, 300, TO_DATE('2026-07-10', 'YYYY-MM-DD'), NULL, N'Túi Gucci', N'Ảnh túi Gucci sang trọng. #Gucci', 'https://www.instagram.com/huytran/p/890123456', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (31, 40, 20000, 600, 40000, 35000, 500, TO_DATE('2026-07-15', 'YYYY-MM-DD'), NULL, N'Nước hoa Gucci', N'Video review nước hoa Gucci Bamboo. #Gucci', 'https://www.youtube.com/watch?v=901234567', 'D', 0.50, N'video');
select * from accounts ;

-- Thêm dữ liệu cho bảng Post từ contract_id = 20 trở đi
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (30, 41, 15000, 400, 30000, 25000, 300, TO_DATE('2025-10-10', 'YYYY-MM-DD'), NULL, N'Áo Zara tối giản', N'Ảnh áo Zara với phong cách tối giản. #Zara', 'https://www.instagram.com/decoxinh/p/012345678', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (31, 42, 20000, 600, 40000, 35000, 500, TO_DATE('2025-10-15', 'YYYY-MM-DD'), NULL, N'Quần Zara năng động', N'Video review quần Zara năng động. #Zara', 'https://www.youtube.com/watch?v=123456789', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (14, 43, 12000, 300, 25000, 20000, 200, TO_DATE('2025-11-10', 'YYYY-MM-DD'), NULL, N'Túi Charles & Keith', N'Ảnh túi Charles & Keith hiện đại. #CharlesKeith', 'https://www.instagram.com/huytran/p/234567890', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (15, 44, 25000, 800, 50000, 45000, 600, TO_DATE('2025-11-15', 'YYYY-MM-DD'), NULL, N'Giày Charles & Keith', N'Video review giày Charles & Keith. #CharlesKeith', 'https://www.youtube.com/watch?v=345678901', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (22, 45, 30000, 1000, 60000, 55000, 700, TO_DATE('2025-12-10', 'YYYY-MM-DD'), NULL, N'Văn hóa Fiji', N'Vlog trải nghiệm văn hóa Fiji. #FijiTravel', 'https://www.youtube.com/watch?v=456789012', 'D', 2.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (23, 46, 15000, 500, 30000, 25000, 400, TO_DATE('2025-12-15', 'YYYY-MM-DD'), NULL, N'Resort Fiji', N'Ảnh trải nghiệm resort Fiji. #Fiji', 'https://www.instagram.com/transviet/p/567890123', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (24, 47, 35000, 1200, 70000, 60000, 800, TO_DATE('2025-12-20', 'YYYY-MM-DD'), NULL, N'Thiên nhiên Fiji', N'Vlog khám phá thiên nhiên Fiji. #FijiTravel', 'https://www.youtube.com/watch?v=678901234', 'D', 2.00, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (28, 48, 20000, 600, 40000, 35000, 500, TO_DATE('2026-01-10', 'YYYY-MM-DD'), NULL, N'OPPO Find X', N'Video review OPPO Find X. #OPPO', 'https://www.youtube.com/watch?v=789012345', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 49, 15000, 400, 30000, 25000, 300, TO_DATE('2026-01-15', 'YYYY-MM-DD'), NULL, N'Điện thoại OPPO', N'Ảnh OPPO Find X tối giản. #OPPO', 'https://www.instagram.com/viruss/p/890123456', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (18, 50, 25000, 800, 50000, 45000, 600, TO_DATE('2026-02-10', 'YYYY-MM-DD'), NULL, N'Piano Yamaha', N'Video review piano Yamaha. #Yamaha', 'https://www.youtube.com/watch?v=901234567', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (19, 51, 12000, 300, 25000, 20000, 200, TO_DATE('2026-02-15', 'YYYY-MM-DD'), NULL, N'Piano Yamaha', N'Ảnh piano Yamaha trong phòng thu. #Yamaha', 'https://www.instagram.com/denvau/p/012345678', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (31, 52, 10000, 200, 20000, 15000, 150, TO_DATE('2026-03-10', 'YYYY-MM-DD'), NULL, N'Đồ uống VinMart', N'Video review đồ uống VinMart. #VinMart', 'https://www.youtube.com/watch?v=123456789', 'D', 0.25, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (32, 53, 8000, 150, 15000, 12000, 100, TO_DATE('2026-03-15', 'YYYY-MM-DD'), NULL, N'Nước ép VinMart', N'Ảnh nước ép VinMart tươi sáng. #VinMart', 'https://www.instagram.com/anhtuyet/p/234567890', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 54, 25000, 800, 50000, 45000, 600, TO_DATE('2026-04-10', 'YYYY-MM-DD'), NULL, N'Shopee 11.11', N'Video quảng bá Shopee 11.11. #Shopee1111', 'https://www.youtube.com/watch?v=345678901', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (30, 55, 15000, 400, 30000, 25000, 300, TO_DATE('2026-04-15', 'YYYY-MM-DD'), NULL, N'Shopee Flash Sale', N'Ảnh sản phẩm Shopee Flash Sale. #Shopee', 'https://www.instagram.com/khanhvy/p/456789012', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (29, 56, 20000, 600, 40000, 35000, 500, TO_DATE('2026-04-20', 'YYYY-MM-DD'), NULL, N'Shopee 11.11', N'Video kêu gọi mua sắm Shopee 11.11. #Shopee1111', 'https://www.youtube.com/watch?v=567890123', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (11, 57, 20000, 600, 40000, 35000, 500, TO_DATE('2026-05-10', 'YYYY-MM-DD'), NULL, N'Giày Puma', N'Video tập luyện với giày Puma. #Puma', 'https://www.youtube.com/watch?v=678901234', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (10, 58, 15000, 400, 30000, 25000, 300, TO_DATE('2026-05-15', 'YYYY-MM-DD'), NULL, N'Áo Puma', N'Ảnh áo Puma trong phòng gym. #Puma', 'https://www.instagram.com/quangdang/p/789012345', 'D', NULL, N'ảnh');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (20, 59, 25000, 800, 50000, 45000, 600, TO_DATE('2026-06-10', 'YYYY-MM-DD'), NULL, N'Kem dưỡng L''Oréal', N'Video hướng dẫn dùng kem dưỡng L''Oréal. #LOréal', 'https://www.youtube.com/watch?v=890123456', 'D', 0.50, N'video');
INSERT INTO Post (acc_id, details_id, likes, comments, views, reaches, shares, create_date, updated_date, subject, contents_post, links_post, status, durations, type_post)
VALUES (21, 60, 12000, 300, 25000, 20000, 200, TO_DATE('2026-06-15', 'YYYY-MM-DD'), NULL, N'Da sáng L''Oréal', N'Ảnh da sáng mịn với L''Oréal. #LOréal', 'https://www.instagram.com/hoangthuylinh/p/901234567', 'D', NULL, N'ảnh');



-- 15. Post_details table (40 rows, linked to ContractDetails_Product)
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (1, 1, 'https://www.lorealparis.com.vn/products/serum', 5000, 200);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (1, 2, 'https://www.lorealparis.com.vn/products/serum', 4500, 180);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (2, 1, 'https://www.lorealparis.com.vn/products/serum', 4000, 150);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (2, 2, 'https://www.lorealparis.com.vn/products/serum', 3800, 140);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (3, 3, 'https://www.lorealparis.com.vn/products/true-match', 3000, 100);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (3, 3, 'https://www.lorealparis.com.vn/products/true-match', 2800, 90);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (4, 4, 'https://www.innisfree.vn/products/green-tea', 2500, 80);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (4, 4, 'https://www.innisfree.vn/products/green-tea', 2300, 70);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (5, 5, 'https://www.innisfree.vn/products/no-sebum', 2000, 60);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (5, 5, 'https://www.innisfree.vn/products/no-sebum', 1800, 50);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (6, 6, 'https://www.laneige.com.vn/products/water-sleeping-mask', 3000, 120);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (6, 6, 'https://www.laneige.com.vn/products/water-sleeping-mask', 2800, 110);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (7, 7, 'https://www.laneige.com.vn/products/lip-sleeping-mask', 1500, 40);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (7, 7, 'https://www.laneige.com.vn/products/lip-sleeping-mask', 1400, 30);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (8, 8, 'https://www.laneige.com.vn/products/water-sleeping-mask', 2000, 80);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (8, 8, 'https://www.laneige.com.vn/products/water-sleeping-mask', 1900, 70);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (9, 9, 'https://www.maybelline.vn/products/fit-me', 1800, 60);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (9, 9, 'https://www.maybelline.vn/products/fit-me', 1700, 50);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (10, 10, 'https://www.maybelline.vn/products/matte-ink', 1200, 30);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (10, 10, 'https://www.maybelline.vn/products/matte-ink', 1100, 20);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (11, 11, 'https://www.gucci.com/vn/products/bag', 2500, 100);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (11, 11, 'https://www.gucci.com/vn/products/bag', 2400, 90);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (12, 12, 'https://www.gucci.com/vn/products/perfume', 3000, 120);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (12, 12, 'https://www.gucci.com/vn/products/perfume', 2800, 110);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (13, 13, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (13, 13, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (14, 14, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (14, 14, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (15, 15, 'https://www.acecook.vn/products/hao-hao', 1000, 20);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (15, 15, 'https://www.acecook.vn/products/hao-hao', 900, 15);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (16, 16, 'https://www.acecook.vn/products/hao-hao-tcc', 800, 10);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (16, 16, 'https://www.acecook.vn/products/hao-hao-tcc', 700, 5);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (17, 17, 'https://www.puma.com/vn/products/activewear', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (17, 17, 'https://www.puma.com/vn/products/activewear', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (18, 18, 'https://www.puma.com/vn/products/rsx', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (18, 18, 'https://www.puma.com/vn/products/rsx', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (19, 19, 'https://www.laneige.com.vn/products/water-sleeping-mask', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (19, 19, 'https://www.laneige.com.vn/products/water-sleeping-mask', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (20, 20, 'https://www.zara.com/vn/products/dress', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (20, 20, 'https://www.zara.com/vn/products/dress', NULL, NULL);
-- Additional 20 rows for Post_Details table
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (21, 21, 'https://www.charleskeith.com/vn/products/sandal', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (21, 21, 'https://www.charleskeith.com/vn/products/sandal', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (22, 22, 'https://www.charleskeith.com/vn/products/bag', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (22, 22, 'https://www.charleskeith.com/vn/products/bag', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (23, 23, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (23, 23, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (24, 24, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (24, 24, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (25, 25, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (25, 25, NULL, NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (26, 26, 'https://www.oppo.com/vn/products/reno8', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (26, 26, 'https://www.oppo.com/vn/products/reno8', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (27, 27, 'https://www.oppo.com/vn/products/enco-air', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (27, 27, 'https://www.oppo.com/vn/products/enco-air', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (28, 28, 'https://www.yamaha.com/vn/products/psr-e373', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (28, 28, 'https://www.yamaha.com/vn/products/psr-e373', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (29, 29, 'https://www.yamaha.com/vn/products/fg800', NULL, NULL);
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (29, 29, 'https://www.yamaha.com/vn/products/fg800', NULL, NULL);

-- Thêm dữ liệu cho bảng Post_Details để bổ sung post_id từ 30 đến 40 và giữ nguyên từ 41 đến 60
-- Đảm bảo cdp_id trong khoảng 30-53 và tương ứng với sản phẩm/hợp đồng
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (30, 30, 'https://www.vinmart.com/products/vegetables', NULL, NULL); -- VinMart vegetables
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (31, 31, 'https://www.vinmart.com/products/fruits', NULL, NULL); -- VinMart fruits
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (32, 32, 'https://www.shopee.vn/products/electronics', NULL, NULL); -- Shopee electronics
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (33, 33, 'https://www.zara.com/vn/products/shirt', NULL, NULL); -- Zara shirt
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (34, 34, 'https://www.zara.com/vn/products/pants', NULL, NULL); -- Zara pants
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (35, 35, NULL, NULL, NULL); -- Fiji travel service
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (36, 36, NULL, NULL, NULL); -- Fiji resort experience
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (37, 37, NULL, NULL, NULL); -- Fiji nature exploration
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (38, 38, 'https://www.oppo.com/vn/products/find-x', NULL, NULL); -- OPPO Find X
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (39, 39, 'https://www.yamaha.com/vn/products/piano', NULL, NULL); -- Yamaha piano
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (40, 40, 'https://www.shopee.vn/flash-sale', NULL, NULL); -- Shopee Flash Sale
-- Dữ liệu từ post_id = 41 đến 60, giữ nguyên từ lần sửa trước
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (41, 41, 'https://www.zara.com/vn/products/shirt', NULL, NULL); -- Zara shirt
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (42, 42, 'https://www.zara.com/vn/products/pants', NULL, NULL); -- Zara pants
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (43, 43, 'https://www.charleskeith.com/vn/products/bag', NULL, NULL); -- Charles & Keith bag
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (44, 44, 'https://www.charleskeith.com/vn/products/shoes', NULL, NULL); -- Charles & Keith shoes
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (45, 45, NULL, NULL, NULL); -- Fiji travel service
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (46, 46, NULL, NULL, NULL); -- Fiji resort experience
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (47, 47, NULL, NULL, NULL); -- Fiji nature exploration
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (48, 48, 'https://www.oppo.com/vn/products/find-x', NULL, NULL); -- OPPO Find X
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (49, 49, 'https://www.oppo.com/vn/products/find-x', NULL, NULL); -- OPPO Find X
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (50, 50, 'https://www.yamaha.com/vn/products/piano', NULL, NULL); -- Yamaha piano
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (51, 51, 'https://www.yamaha.com/vn/products/piano', NULL, NULL); -- Yamaha piano
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (52, 52, 'https://www.vinmart.com/products/drinks', NULL, NULL); -- VinMart drinks
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (53, 53, 'https://www.vinmart.com/products/juice', NULL, NULL); -- VinMart juice
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (54, 41, 'https://www.shopee.vn/flash-sale', NULL, NULL); -- Shopee Flash Sale
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (55, 42, 'https://www.shopee.vn/flash-sale', NULL, NULL); -- Shopee Flash Sale
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (56, 43, 'https://www.shopee.vn/11-11', NULL, NULL); -- Shopee 11.11 campaign
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (57, 44, 'https://www.puma.com/vn/products/shoes', NULL, NULL); -- Puma shoes
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (58, 45, 'https://www.puma.com/vn/products/shirt', NULL, NULL); -- Puma shirt
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (59, 46, 'https://www.lorealparis.com.vn/products/cream', NULL, NULL); -- L'Oréal cream
INSERT INTO Post_details (post_id, cdp_id, pro_links, pro_clicks, pro_purchases)
VALUES (60, 47, 'https://www.lorealparis.com.vn/products/cream', NULL, NULL); -- L'Oréal cream
