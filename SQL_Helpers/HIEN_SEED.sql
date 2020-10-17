﻿INSERT INTO NGUOIDUNG(MA, TEN, DIACHI, DIENTHOAI, GIOITINH, VAITRO, NGAYSINH, TAIKHOAN, MATKHAU)
VALUES(1, N'NGUYỄN VĂN A', N'272 NGUYỄN VĂN CỪ', '012345679', 'NAM', 'KHACHHANG', '1999-12-12', 'nguyenvana', '123456')

INSERT INTO NGUOIDUNG(MA, TEN, DIACHI, DIENTHOAI, GIOITINH, VAITRO, NGAYSINH, TAIKHOAN, MATKHAU)
VALUES(2, N'NGUYỄN THỊ B ', N'272 NGÔ VĂN SỸ', '011122233', 'NAM', 'KHACHHANG', '1999-05-05', 'nguyenthib', '123456')

INSERT INTO NGUOIDUNG(MA, TEN, DIACHI, DIENTHOAI, GIOITINH, VAITRO, NGAYSINH, TAIKHOAN, MATKHAU)
VALUES(3, N'NGUYỄN QUANG C', N'272 TRẦN HƯNG ĐẠO', '0222334459', 'NU', 'KHACHHANG', '1999-01-01', 'nguyenquangc', '123456')

INSERT INTO KHACHHANG(MA, MA_NGUOIDUNG)
VALUES(1, 1)

INSERT INTO KHACHHANG(MA, MA_NGUOIDUNG)
VALUES(2, 2)

INSERT INTO KHACHHANG(MA, MA_NGUOIDUNG)
VALUES(3, 3)
-- END TẠO KHÁCH HÀNG

--- TẠO CHỦ NHÀ
INSERT INTO NGUOIDUNG(MA, TEN, DIACHI, DIENTHOAI, GIOITINH, VAITRO, NGAYSINH, TAIKHOAN, MATKHAU)
VALUES(4, N'NGUYỄN MINH D', N'272 LÊ ĐẠI HÀNH', '0969696959', 'NU', 'CHUNHA', '1991-01-01', 'nguyenminhd', '123456')

INSERT INTO CHUNHA(MA, MA_NGUOIDUNG, SOLUONGNHA)
VALUES(1, 4, 3)
-- END TẠO CHỦ NHÀ

--- TẠO NHÂN VIÊN
INSERT INTO NGUOIDUNG(MA, TEN, DIACHI, DIENTHOAI, GIOITINH, VAITRO, NGAYSINH, TAIKHOAN, MATKHAU)
VALUES(5, N'NGUYỄN TRẦN TUẤN', N'272 LÊ ĐẠI HÀNH', '0969696959', 'NU', 'NHANVIEN', '1991-01-01', 'nguyentrantuan', '123456')

INSERT INTO NGUOIDUNG(MA, TEN, DIACHI, DIENTHOAI, GIOITINH, VAITRO, NGAYSINH, TAIKHOAN, MATKHAU)
VALUES(6, N'NGUYỄN HOÀNG ANH', N'272 LÊ ĐẠI HÀNH', '0969696959', 'NU', 'NHANVIEN', '1991-01-01', 'nguyenhoanganh', '123456')

INSERT INTO NHANVIEN(MA, MA_NGUOIDUNG)
VALUES(1, 5)

INSERT INTO NHANVIEN(MA, MA_NGUOIDUNG)
VALUES(2, 6)
-- END TẠO NHÂN VIÊN


--- TẠO LOẠI NHA
INSERT INTO LOAINHA(MA, TEN, SOLUONGPHONG)
VALUES(1, N'NHÀ NGUYÊN CĂN', 5)

INSERT INTO LOAINHA(MA, TEN, SOLUONGPHONG)
VALUES(2, N'CĂN HỘ', 2)

INSERT INTO LOAINHA(MA, TEN, SOLUONGPHONG)
VALUES(3, N'PHÒNG ĐƠN', 20)
-- END TẠO LOẠI NHÀ


-- TẠO CHI NHÁNH
INSERT INTO CHINHANH(MA, DUONG, QUAN, THANHPHO, KHUVUC, DIENTHOAI, FAX)
VALUES(1, N'NGUYỄN TRÃI', N'QUẬN 5', 'TPHCM', N'NỘI THÀNH', '099998887', NULL)

INSERT INTO CHINHANH(MA, DUONG, QUAN, THANHPHO, KHUVUC, DIENTHOAI, FAX)
VALUES(2, N'NGUYỄN THỊ MINH KHAI', N'QUẬN 3', 'TPHCM', N'NỘI THÀNH', '0777666455', NULL)

INSERT INTO CHINHANH(MA, DUONG, QUAN, THANHPHO, KHUVUC, DIENTHOAI, FAX)
VALUES(3, N'HÀNG XANH', N'QUẬN BÌNH THẠNH', 'TPHCM', N'NỘI THÀNH', '022446688', NULL)
-- END TẠO CHI NHÁNH


-- TẠO NHÀ
INSERT INTO NHA(MA, DUONG, QUAN, THANHPHO, KHUVUC, MA_LOAINHA, MA_CHUNHA, MA_NVPHUTRACH, MA_CHINHANH, TIENTHUE)
VALUES(1, N'NGUYỄN HUỆ', N'QUẬN 1', 'TPHCM', N'MIỀN NAM', 1, 1, NULL, 1, 5000000)

INSERT INTO NHA(MA, DUONG, QUAN, THANHPHO, KHUVUC, MA_LOAINHA, MA_CHUNHA, MA_NVPHUTRACH, MA_CHINHANH, TIENTHUE)
VALUES(2, N'TRẦN VĂN BÁNH', N'QUẬN BÌNH THẠNH', 'TPHCM', N'MIỀN NAM', 2, 1, NULL, 2, 5000000)

INSERT INTO NHA(MA, DUONG, QUAN, THANHPHO, KHUVUC, MA_LOAINHA, MA_CHUNHA, MA_NVPHUTRACH, MA_CHINHANH, TIENTHUE)
VALUES(3, N'VÕ VĂN TẦN', N'QUẬN 3', 'TPHCM', N'MIỀN NAM', 3, 1, NULL, 3, 5000000)
-- END TẠO NHÀ


-- TAO HOP DONG
INSERT INTO HOPDONG(MA, MA_NHA, MA_KHACHHANG, TIENCOC, MA_NVPHUTRACH, NGAY)
VALUES(1,1,1, 500000, 1, '2020-10-10 10:10:10')
GO
INSERT INTO HOPDONG(MA, MA_NHA, MA_KHACHHANG, TIENCOC, MA_NVPHUTRACH, NGAY)
VALUES(2,2,2, 500000, 2, '2020-10-10 20:10:10')
GO
INSERT INTO HOPDONG(MA, MA_NHA, MA_KHACHHANG, TIENCOC, MA_NVPHUTRACH, NGAY)
VALUES(3,3,3, 500000, 1, '2020-10-10 15:10:10')
-- END TAO HOP DONG