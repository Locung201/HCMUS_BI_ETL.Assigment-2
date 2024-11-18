CREATE DATABASE Group3_ETL_Stage
GO

USE Group3_ETL_Stage
GO 

/*
GO
USE MASTER
DROP DATABASE Group3_ETL_Stage
GO

-- DROP TABLE
GO
USE MASTER
DROP TABLE HocSinh_Stage
DROP TABLE LopHoc_Stage
DROP TABLE Diem_Stage
DROP TABLE MonHoc_Stage*/

-- Sheet1: Học sinh
-- Columns: Mã học sinh, họ tên,  ngày sinh, giới tính, malop
CREATE TABLE HocSinh_Stage(
	MaHS NVARCHAR(255),
	HoTenHS NVARCHAR(255),
	NgaySinh DATE,
	GioiTinh NVARCHAR(255),
	MaLop NVARCHAR(255),
	Create_day DATE,
	Update_day DATE,
)
GO
-- Sheet2: LopHoc 
-- Columns: Mã lớp, tên lớp 
CREATE TABLE LopHoc_Stage(
	MaLop NVARCHAR(255),
	TenLop NVARCHAR(255),
	Create_day DATE,
	Update_day DATE
)
GO
-- Sheet3: Diem 
-- Columns: MaHS, MaMH, Diem
CREATE TABLE Diem_Stage(
	MaHS NVARCHAR(255),
	MaMH NVARCHAR(255),
	Diem FLOAT,
	Create_day DATE,
	Update_day DATE
)
GO
-- Sheet4: MonHoc 
-- Columns: MaMH, TenMH
CREATE TABLE MonHoc_Stage(
	MaMH NVARCHAR(255),
	TenMH NVARCHAR(255),
	Create_day DATE,
	Update_day DATE
)
GO

-- check
SELECT * FROM LopHoc_Stage;
SELECT * FROM HocSinh_Stage;

