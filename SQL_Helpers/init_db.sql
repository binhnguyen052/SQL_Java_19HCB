--USE MASTER
--GO
--ALTER DATABASE QUANLYTHUENHA SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
--GO
--DROP DATABASE QUANLYTHUENHA
--GO
CREATE DATABASE QUANLYTHUENHA
GO
USE QUANLYTHUENHA
GO
CREATE TABLE NGUOIDUNG(
	MA INT PRIMARY KEY NOT NULL,
	TEN NVARCHAR(255),
	TAIKHOAN NVARCHAR(255),
	MATKHAU NVARCHAR(255),
	DIACHI NVARCHAR(255),
	DIENTHOAI NVARCHAR(255),
	GIOITINH NVARCHAR(255),
	VAITRO NVARCHAR(255),
	NGAYSINH DATE
)
GO
CREATE TABLE NHANVIEN(
	MA INT PRIMARY KEY NOT NULL,
	MA_NGUOIDUNG INT,
	MA_CHINHANH INT
)
GO
CREATE TABLE CHUNHA(
	MA INT PRIMARY KEY NOT NULL,
	MA_NGUOIDUNG INT,
	SOLUONGNHA INT
)
GO
CREATE TABLE KHACHHANG(
	MA INT PRIMARY KEY NOT NULL,
	MA_NGUOIDUNG INT
)
GO
CREATE TABLE CHINHANH(
	MA INT PRIMARY KEY NOT NULL,
	DUONG NVARCHAR(255),
	QUAN NVARCHAR(255),
	THANHPHO NVARCHAR(255),
	KHUVUC NVARCHAR(255),
	DIENTHOAI NVARCHAR(255),
	FAX NVARCHAR(255)
)
GO
CREATE TABLE NHA(
	MA INT PRIMARY KEY NOT NULL,
	DUONG NVARCHAR(255),
	QUAN NVARCHAR(255),
	THANHPHO NVARCHAR(255),
	KHUVUC NVARCHAR(255),
	MA_LOAINHA INT,
	MA_CHUNHA INT,
	MA_NVPHUTRACH INT,
	MA_CHINHANH INT,
	TIENTHUE INT,
	TRANG_THAI NVARCHAR(255) DEFAULT N'CHỜ THUÊ'
)
GO
CREATE TABLE LOAINHA(
	MA INT PRIMARY KEY NOT NULL,
	TEN NVARCHAR(255),
	SOLUONGPHONG INT
)
GO
CREATE TABLE YEUCAU(
	MA INT PRIMARY KEY NOT NULL,
	NOIDUNG NVARCHAR(255),
	MA_NHA INT,
	MA_CHINHANH INT,
	MA_KHACHHANG INT,
	TRANG_THAI NVARCHAR(255) DEFAULT N'CHỜ XÉT DUYỆT'
)
CREATE TABLE LICHXEMNHA(
	MA INT PRIMARY KEY NOT NULL,
	NGAY DATETIME,
	MA_KHACHHANG INT,
	MA_NHA INT,
	MA_NVPHUTRACH INT
)
GO
CREATE TABLE NHANXET(
	MA INT PRIMARY KEY NOT NULL,
	NOIDUNG NVARCHAR(255),
	MA_KHACHHANG INT,
	MA_NHA INT,
	MA_NVPHUTRACH INT
)
GO
CREATE TABLE HOPDONG(
	MA INT PRIMARY KEY NOT NULL,
	MA_NHA INT,
	MA_KHACHHANG INT,
	TIENCOC INT,
	MA_NVPHUTRACH INT,
	NGAY DATETIME
)



/*----TAO QUAN HE----------------------
------------------------
ALTER TABLE dbo.NHANVIEN ADD CONSTRAINT FK_NHANVIEN_NGUOIDUNG FOREIGN KEY(MA_NGUOIDUNG) REFERENCES dbo.NGUOIDUNG(MA)
GO

ALTER TABLE dbo.NHANVIEN ADD CONSTRAINT FK_NHANVIEN_CHINHANH FOREIGN KEY(MA_CHINHANH) REFERENCES dbo.CHINHANH(MA)
GO
------------------------
ALTER TABLE dbo.CHUNHA ADD CONSTRAINT FK_CHUNHA_NGUOIDUNG FOREIGN KEY(MA_NGUOIDUNG) REFERENCES dbo.NGUOIDUNG(MA)
GO
------------------------
ALTER TABLE dbo.NHA ADD CONSTRAINT FK_NHA_LOAINHA FOREIGN KEY(MA_LOAINHA) REFERENCES dbo.LOAINHA(MA)
GO
ALTER TABLE dbo.NHA ADD CONSTRAINT FK_NHA_MA_CHUNHA FOREIGN KEY(MA_CHUNHA) REFERENCES dbo.CHUNHA(MA)
GO
ALTER TABLE dbo.NHA ADD CONSTRAINT FK_NHA_MA_NVPHUTRACH FOREIGN KEY(MA_NVPHUTRACH) REFERENCES dbo.NHANVIEN(MA)
GO
ALTER TABLE dbo.NHA ADD CONSTRAINT FK_NHA_MA_CHINHANH FOREIGN KEY(MA_CHINHANH) REFERENCES dbo.CHINHANH(MA)
GO
------------------------
ALTER TABLE dbo.KHACHHANG ADD CONSTRAINT FK_KHACHHANG_NGUOIDUNG FOREIGN KEY(MA_NGUOIDUNG) REFERENCES dbo.NGUOIDUNG(MA)
GO
------------------------
ALTER TABLE dbo.YEUCAU ADD CONSTRAINT FK_YEUCAU_MA_NHA FOREIGN KEY(MA_NHA) REFERENCES dbo.NHA(MA)
ALTER TABLE dbo.YEUCAU ADD CONSTRAINT FK_YEUCAU_MA_CHINHANH FOREIGN KEY(MA_CHINHANH) REFERENCES dbo.CHINHANH(MA)
ALTER TABLE dbo.YEUCAU ADD CONSTRAINT FK_YEUCAU_MA_KHACHHANG FOREIGN KEY(MA_KHACHHANG) REFERENCES dbo.KHACHHANG(MA)
------------------------
ALTER TABLE dbo.LICHXEMNHA ADD CONSTRAINT FK_LICHXEMNHA_MA_KHACHHANG FOREIGN KEY(MA_KHACHHANG) REFERENCES dbo.KHACHHANG(MA)
GO
ALTER TABLE dbo.LICHXEMNHA ADD CONSTRAINT FK_LICHXEMNHA_MA_NHA FOREIGN KEY(MA_NHA) REFERENCES dbo.NHA(MA)
GO
ALTER TABLE dbo.LICHXEMNHA ADD CONSTRAINT FK_LICHXEMNHA_MA_NVPHUTRACH FOREIGN KEY(MA_NVPHUTRACH) REFERENCES dbo.NHANVIEN(MA)
GO
------------------------
ALTER TABLE dbo.NHANXET ADD CONSTRAINT FK_NHANXET_MA_KHACHHANG FOREIGN KEY(MA_KHACHHANG) REFERENCES dbo.KHACHHANG(MA)
GO
ALTER TABLE dbo.NHANXET ADD CONSTRAINT FK_NHANXET_MA_NHA FOREIGN KEY(MA_NHA) REFERENCES dbo.NHA(MA)
GO
ALTER TABLE dbo.NHANXET ADD CONSTRAINT FK_NHANXET_MA_NVPHUTRACH FOREIGN KEY(MA_NVPHUTRACH) REFERENCES dbo.NHANVIEN(MA)
GO
------------------------
ALTER TABLE dbo.HOPDONG ADD CONSTRAINT FK_HOPDONG_MA_KHACHHANG FOREIGN KEY(MA_KHACHHANG) REFERENCES dbo.KHACHHANG(MA)
GO
ALTER TABLE dbo.HOPDONG ADD CONSTRAINT FK_HOPDONG_MA_NHA FOREIGN KEY(MA_NHA) REFERENCES dbo.NHA(MA)
GO
ALTER TABLE dbo.HOPDONG ADD CONSTRAINT FK_HOPDONG_MA_NVPHUTRACH FOREIGN KEY(MA_NVPHUTRACH) REFERENCES dbo.NHANVIEN(MA)
*/