IF DB_ID(N'QL_NhaTro') IS NULL CREATE DATABASE [QL_NhaTro];
GO
USE [QL_NhaTro];
CREATE TABLE dbo.PhongTro(MaPhong int IDENTITY PRIMARY KEY,TenPhong nvarchar(20) NOT NULL,GiaThue decimal(18,0) NOT NULL,TinhTrang nvarchar(20) NOT NULL); CREATE TABLE dbo.KhachThue(MaKhach int IDENTITY PRIMARY KEY,HoTen nvarchar(100) NOT NULL,GioiTinh nvarchar(5) NOT NULL,NgaySinh date NOT NULL,SoDienThoai varchar(15) NOT NULL,MaTinh int NULL,TenTinh nvarchar(100) NULL,MaPhuongXa int NULL,TenPhuongXa nvarchar(100) NULL,DaDangKyTamTru bit NOT NULL,MaPhong int NOT NULL REFERENCES dbo.PhongTro(MaPhong)); INSERT dbo.PhongTro VALUES(N'A01',2500000,N'Đang thuê'),(N'A02',2500000,N'Đang thuê'),(N'A03',2700000,N'Trống'),(N'B01',3000000,N'Trống'),(N'B02',3000000,N'Trống'),(N'B03',3200000,N'Trống'); INSERT dbo.KhachThue(HoTen,GioiTinh,NgaySinh,SoDienThoai,DaDangKyTamTru,MaPhong) VALUES(N'Nguyễn Minh An',N'Nam','2000-05-12','0900000001',1,1),(N'Trần Thu Hà',N'Nữ','2001-08-20','0900000002',0,2);

