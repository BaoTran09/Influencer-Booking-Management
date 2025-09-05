-- 1. B-Tree Index trên cột details_id trong bảng Post
CREATE INDEX IDX_POST_DETAILS_ID ON Post(details_id);
-- 2. Bitmap Index trên cột status trong bảng Contract
CREATE BITMAP INDEX idx_contract_status ON Contract(status);
CREATE BITMAP INDEX idx_post_status ON post(status);

-- 3. Function-Based Index trên cột influ_lastname trong bảng Influencer
CREATE INDEX IDX_INFLUENCER_UPPER_LASTNAME ON INFLUENCER(UPPER(influ_lastname));
CREATE INDEX IDX_INFLUENCER_UPPER_FIRSTNAME ON Influencer(UPPER(influ_firstname));
CREATE INDEX IDX_INFLUENCER_UPPER_STAGE_NAME ON Influencer(UPPER(stage_name));

    SELECT 
    i.index_name,
    i.table_name,
    i.index_type,
    ic.column_name,
    i.status
FROM 
    user_indexes i
LEFT JOIN 
    user_ind_columns ic ON i.index_name = ic.index_name
        WHERE  i.index_name = 'IDX_POST_STATUS' or i.index_name = 'IDX_CONTRACT_STATUS' 
ORDER BY 
    i.table_name, i.index_name, ic.column_position;
    
-- 4. Spatial Index trên cột address trong bảng Influencer
--  Thêm cột kiểu SDO_GEOMETRY để lưu tọa độ địa lý
create table Influencer_copy as select * from Influencer;
ALTER TABLE Influencer_copy ADD (geo_location SDO_GEOMETRY);
desc Influencer_copy;
--  Thêm metadata cho cột geo_location
select * from USER_SDO_GEOM_METADATA;
INSERT INTO USER_SDO_GEOM_METADATA
    (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES (
    'Influencer_copy',
    'GEO_LOCATION',
    SDO_DIM_ARRAY(
        SDO_DIM_ELEMENT('X', -180, 180, 0.005),
        SDO_DIM_ELEMENT('Y', -90, 90, 0.005)
    ),
    4326 -- SRID 4326: WGS84, hệ tọa độ kinh độ/vĩ độ
);
-- Cập nhật tọa độ cho influencer (ví dụ: Hà Nội, TP.HCM, Đà Nẵng)
UPDATE Influencer_copy 
SET geo_location = SDO_GEOMETRY(
    2001, -- Điểm 2D
    4326, -- SRID
    SDO_POINT_TYPE(105.85, 21.03, NULL), -- Hà Nội
    NULL,
    NULL
)WHERE influ_id = 1;


UPDATE Influencer_copy 
SET geo_location = SDO_GEOMETRY(
    2001,
    4326,
    SDO_POINT_TYPE(106.70, 10.78, NULL), -- TP.HCM
    NULL,
    NULL
)
WHERE influ_id = 2;

UPDATE Influencer_copy 
SET geo_location = SDO_GEOMETRY(
    2001,
    4326,
    SDO_POINT_TYPE(108.21, 16.07, NULL), -- Đà Nẵng
    NULL,
    NULL
)
WHERE influ_id = 3;

COMMIT;
--  Tạo Spatial Index
CREATE INDEX IDX_INFLUENCER_GEO_LOCATION ON Influencer_copy(geo_location)
    INDEXTYPE IS MDSYS.SPATIAL_INDEX;
---kiểm thử
SELECT influ_id, stage_name
FROM Influencer_copy 
WHERE SDO_WITHIN_DISTANCE(
    geo_location,
    SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(105.85, 21.03, NULL), NULL, NULL),
    'distance=50 unit=KM'
) = 'TRUE';
