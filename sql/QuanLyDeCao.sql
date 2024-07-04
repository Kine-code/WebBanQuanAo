drop database QuanLyDeCao;

CREATE DATABASE QuanLyDeCao;
GO
USE QuanLyDeCao;
GO

-- Tạo bảng DanhMucSanPham trước
CREATE TABLE DanhMucSanPham (
    danhmuc_id INT NOT NULL IDENTITY(1,1),
    tendanhmuc NVARCHAR(255) NOT NULL,
    mota NVARCHAR(255) NOT NULL,
    CONSTRAINT danhmucsanpham_danhmuc_id_primary PRIMARY KEY(danhmuc_id)
);

-- Tạo bảng Account
CREATE TABLE Account (
    account_id INT NOT NULL IDENTITY(1,1),
    username NVARCHAR(255) NOT NULL,
    password NVARCHAR(255) NOT NULL,
    hoten NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
    sodienthoai NVARCHAR(255) NOT NULL,
    diachi NVARCHAR(255) NOT NULL,
	ChucVu int NOT NULL,
    CONSTRAINT account_account_id_primary PRIMARY KEY(account_id)
);

-- Tạo bảng SanPham sau khi đã có bảng DanhMucSanPham
CREATE TABLE SanPham (
    sanpham_id INT NOT NULL IDENTITY(1,1),
    tensanpham NVARCHAR(255) NOT NULL,
    motasanpham NVARCHAR(255) NOT NULL,
    soluong INT NOT NULL,
	size nvarchar(255),
    giatien DECIMAL(18, 2) NOT NULL,
    anh NVARCHAR(255) NOT NULL,
    danhmuc_id INT NOT NULL,
    CONSTRAINT sanpham_sanpham_id_primary PRIMARY KEY(sanpham_id),
    CONSTRAINT sanpham_danhmuc_id_foreign FOREIGN KEY(danhmuc_id) REFERENCES DanhMucSanPham(danhmuc_id)
);

-- Tạo bảng DonHang sau khi đã có bảng Account
CREATE TABLE DonHang (
    donhang_id INT NOT NULL IDENTITY(1,1),
    khachhang_id INT NOT NULL,
    ngaydathang DATETIME NOT NULL,
    tongtien DECIMAL(18, 2) NOT NULL,
    trangthai NVARCHAR(255) NOT NULL,
    CONSTRAINT donhang_donhang_id_primary PRIMARY KEY(donhang_id),
    CONSTRAINT donhang_khachhang_id_foreign FOREIGN KEY(khachhang_id) REFERENCES Account(account_id)
);

-- Tạo bảng ChiTietDonHang sau khi đã có bảng DonHang và SanPham
CREATE TABLE ChiTietDonHang (
    chitietdonhang_id INT NOT NULL IDENTITY(1,1),
    donhang_id INT NOT NULL,
    sanpham_id INT NOT NULL,
    soluong INT NOT NULL,
    giaban DECIMAL(18, 2) NOT NULL,
    CONSTRAINT chitietdonhang_chitietdonhang_id_primary PRIMARY KEY(chitietdonhang_id),
    CONSTRAINT chitietdonhang_donhang_id_foreign FOREIGN KEY(donhang_id) REFERENCES DonHang(donhang_id),
    CONSTRAINT chitietdonhang_sanpham_id_foreign FOREIGN KEY(sanpham_id) REFERENCES SanPham(sanpham_id)
);

-- Tạo bảng GioHang sau khi đã có bảng Account và SanPham
CREATE TABLE GioHang (
    giohang_id INT NOT NULL IDENTITY(1,1),
    khachhang_id INT NOT NULL,
    sanpham_id INT NOT NULL,
    soluong INT NOT NULL,
    CONSTRAINT giohang_giohang_id_primary PRIMARY KEY(giohang_id),
    CONSTRAINT giohang_khachhang_id_foreign FOREIGN KEY(khachhang_id) REFERENCES Account(account_id),
    CONSTRAINT giohang_sanpham_id_foreign FOREIGN KEY(sanpham_id) REFERENCES SanPham(sanpham_id)
);

-- Insert sample data
INSERT INTO Account (username, password, hoten, email, sodienthoai, diachi,ChucVu ) VALUES 
('user1', 'pass1', 'Nguyen Van A', 'user1@example.com', '0123456789', 'Address 1', 0),
('user2', 'pass2', 'Le Thi B', 'user2@example.com', '0987654321', 'Address 2',  0),
('admin', '123', 'Admin', 'admin@example.com', '0111222333', 'Admin Address',  1);

INSERT INTO DanhMucSanPham (tendanhmuc, mota) VALUES 
('women', N'Các sản phẩm thời trang, phụ kiện dành cho phụ nữ bao gồm quần áo, giày dép, túi xách, và các phụ kiện khác.'),
('men', N'Các sản phẩm thời trang, phụ kiện dành cho nam giới bao gồm quần áo, giày dép, túi xách, và các phụ kiện khác.'),
('bag', N'Các loại túi xách thời trang cho nam và nữ, bao gồm túi đeo vai, túi đeo chéo, balo và cặp đựng laptop.'),
('shoes', N'Đa dạng các loại giày dép từ giày thể thao, giày cao gót, giày da, đến dép và sandal cho cả nam và nữ.'),
('watches', N'Các loại đồng hồ đeo tay từ đồng hồ thời trang đến đồng hồ thông minh, dành cho cả nam và nữ.');

INSERT INTO SanPham (tensanpham, motasanpham, soluong, size, giatien, anh, danhmuc_id) VALUES
(N'Sản phẩm 1', N'Mô tả cho sản phẩm 1', 10, N'L', 100000, 'product-01.jpg', 1),
(N'Sản phẩm 2', N'Mô tả cho sản phẩm 2', 20, N'M', 200000, 'product-02.jpg', 1),
(N'Sản phẩm 3', N'Mô tả cho sản phẩm 3', 15, N'S', 150000, 'product-03.jpg', 2),
(N'Sản phẩm 4', N'Mô tả cho sản phẩm 4', 12, N'XL', 120000, 'product-04.jpg', 1),
(N'Sản phẩm 5', N'Mô tả cho sản phẩm 5', 8, N'L', 80000, 'product-05.jpg', 1),
(N'Sản phẩm 6', N'Mô tả cho sản phẩm 6', 30, N'XXL', 300000, 'product-06.jpg', 5),
(N'Sản phẩm 7', N'Mô tả cho sản phẩm 7', 5, N'M', 50000, 'product-07.jpg', 1),
(N'Sản phẩm 8', N'Mô tả cho sản phẩm 8', 25, N'L', 250000, 'product-08.jpg', 1),
(N'Sản phẩm 9', N'Mô tả cho sản phẩm 9', 10, N'S', 100000, 'product-09.jpg', 4),
(N'Sản phẩm 10', N'Mô tả cho sản phẩm 10', 20, N'XL', 200000, 'product-10.jpg', 1),
(N'Sản phẩm 11', N'Mô tả cho sản phẩm 11', 15, N'M', 150000, 'product-11.jpg', 2),
(N'Sản phẩm 13', N'Mô tả cho sản phẩm 13', 8, N'S', 80000, 'product-13.jpg', 1),
(N'Sản phẩm 14', N'Mô tả cho sản phẩm 14', 30, N'L', 300000, 'product-14.jpg', 1),
(N'Sản phẩm 15', N'Mô tả cho sản phẩm 15', 5, N'XXL', 50000, 'product-15.jpg', 5),
(N'Sản phẩm 16', N'Mô tả cho sản phẩm 16', 25, N'M', 250000, 'product-16.jpg', 1);

/*
('Sản phẩm chi tiết 1', 'Mô tả cho sản phẩm chi tiết 1', 10, 100000, 'product-detail-01.jpg', 9),
('Sản phẩm chi tiết 2', 'Mô tả cho sản phẩm chi tiết 2', 20, 200000, 'product-detail-02.jpg', 9),
('Sản phẩm chi tiết 3', 'Mô tả cho sản phẩm chi tiết 3', 15, 150000, 'product-detail-03.jpg', 10),
('Sản phẩm nhỏ 1', 'Mô tả cho sản phẩm nhỏ 1', 12, 120000, 'product-min-01.jpg', 10),
('Sản phẩm nhỏ 2', 'Mô tả cho sản phẩm nhỏ 2', 8, 80000, 'product-min-02.jpg', 11),
('Sản phẩm nhỏ 3', 'Mô tả cho sản phẩm nhỏ 3', 30, 300000, 'product-min-03.jpg', 11);
*/

INSERT INTO DonHang (khachhang_id, ngaydathang, tongtien, trangthai) VALUES 
(1, '2023-06-01 10:00:00', 749.98, 'Processing'),
(2, '2023-06-02 11:00:00', 99.98, 'Shipped');

INSERT INTO ChiTietDonHang (donhang_id, sanpham_id, soluong, giaban) VALUES 
(1, 1, 1, 699.99),
(2, 2, 2, 49.99);

INSERT INTO GioHang (khachhang_id, sanpham_id, soluong) VALUES 
(1, 1, 1),
(2, 2, 2);

USE QuanLyDeCao;
GO

-- Tạo trigger sau khi thêm chi tiết đơn hàng

go
CREATE TRIGGER trg_UpdateSanPhamFromChiTietDonHang
ON ChiTietDonHang
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật số lượng sản phẩm khi thêm mới hoặc cập nhật chi tiết đơn hàng
    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        UPDATE sp
        SET sp.soluong = sp.soluong - i.soluong
        FROM SanPham sp
        JOIN inserted i ON sp.sanpham_id = i.sanpham_id;
    END

    -- Cập nhật lại số lượng sản phẩm khi xóa chi tiết đơn hàng
    IF EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE sp
        SET sp.soluong = sp.soluong + d.soluong
        FROM SanPham sp
        JOIN deleted d ON sp.sanpham_id = d.sanpham_id;
    END
END;