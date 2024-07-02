<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            .form-container {
                max-width: 600px;
                margin: 50px auto;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
                background-color: #f9f9f9;
            }
            .form-container h2 {
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }
            .form-group label {
                color: #555;
            }
            .btn-primary {
                background-color: #5cb85c;
                border-color: #4cae4c;
            }
            .btn-primary:hover {
                background-color: #4cae4c;
                border-color: #398439;
            }
        </style>
    </head>
    <body>
        <c:if test="${btnname == 'addsp'}">
            <div class="container form-container">
                <h2>Thêm sản phẩm mới</h2>
                <form action="aaddcontrol?btnname=btnSanPham" method="post" >

                    <div class="form-group">
                        <label for="tensanpham">Tên sản phẩm</label>
                        <input type="text" class="form-control" id="tensanpham" name="tensanpham" required>
                    </div>
                    <div class="form-group">
                        <label for="motasanpham">Mô tả</label>
                        <textarea class="form-control" id="motasanpham" name="motasanpham" rows="3" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="soluong">Số lượng</label>
                        <input type="number" class="form-control" id="soluong" name="soluong" required>
                    </div>
                    <div class="form-group">
                        <label for="size">Size</label>
                        <input type="text" class="form-control" id="size" name="size" required>
                    </div>
                    <div class="form-group">
                        <label for="giatien">Giá tiền</label>
                        <input type="number" class="form-control" id="giatien" name="giatien" required>
                    </div>
                    <div class="form-group">
                        <label for="anh">Image</label>
                        <input type="file" class="form-control" id="anh" name="anh" required>
                    </div>
                    <div class="form-group">
                        <label for="danhmuc_id">Danh mục</label>
                        <input type="number" class="form-control" id="danhmuc_id" name="danhmuc_id" required>
                    </div>
                    <button  type="submit" name="btnThemsp" class="btn btn-primary btn-block">Thêm sản phẩm</button>
                </form>
            </div>
        </c:if>

        <c:if test="${btnname == 'dmsp'}">
            <div class="container form-container">
                <h2>Danh Mục sản phẩm</h2>
                <form action="aaddcontrol?btnname=danhmucsanpham" method="post" >

                    <div class="form-group">
                        <label for="tenDanhMuc">Tên sản phẩm</label>
                        <input type="text" class="form-control" id="tenDanhMuc" name="tenDanhMuc" required>
                    </div>
                    <div class="form-group">
                        <label for="mota">Mô tả</label>
                        <textarea class="form-control" id="mota" name="mota" rows="3" required></textarea>
                    </div>

                    <button type="submit" name="btnThemdm" class="btn btn-primary btn-block">Thêm danh mục</button>
                </form>
            </div>
        </c:if>

        <c:if test="${btnname == 'addacc'}">
            <div class="container form-container">
                <h2>Danh sách tài khoản</h2>
                <form action="aaddcontrol?btnname=btnAccount" method="post" >
                    <div class="form-group">
                        <label for="userName">Username</label>
                        <input type="text" class="form-control" id="userName" name="userName" required>
                    </div>
                    <div class="form-group">
                        <label for="passWord">Password</label>
                        <input type="text" class="form-control" id="passWord" name="passWord" required>
                    </div>
                    <div class="form-group">
                        <label for="hoten">Họ tên</label>
                        <input type="text" class="form-control" id="hoten" name="hoten" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="sodienthoai">Số điện thoại</label>
                        <input type="number" class="form-control" id="sodienthoai" name="sodienthoai" required>
                    </div>
                    <div class="form-group">
                        <label for="diachi">Địa chỉ</label>
                        <input type="text" class="form-control" id="diachi" name="diachi" required>
                    </div>
                    <div class="form-group">
                        <label for="chucVu">Chức vụ</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="chucVu" value="0"> Khách hàng
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="chucVu" value="1">Admin
                            </label>
                        </div>
                    </div>
                    
                    <button type="submit" name="btnThemsp" class="btn btn-primary btn-block">Thêm tài khoản</button>
                </form>
            </div>
        </c:if>
        
        
        <c:if test="${btnname == 'adddh'}">
            <div class="container form-container">
                <h2>Danh sách đơn hàng</h2>
                <form action="aaddcontrol?">
                    
                    <div class="form-group">
                        <label for="khachHang_id">ID khách hàng</label>
                        <input type="text" class="form-control" id="khachHang_id" name="khachHang_id" required>
                    </div>
                    <div class="form-group">
                        <label for="ngayDatHang">Ngày đặt hàng</label>
                        <input type="date" class="form-control" id="ngayDatHang" name="ngayDatHang" required>
                    </div>
                    <div class="form-group">
                        <label for="tongTien">Tổng tiền</label>
                        <input type="text" class="form-control" id="tongTien" name="tongTien" required>
                    </div>
                    <div class="form-group">
                        <label for="trangThai">Trạng thái</label>
                        <input type="text" class="form-control" id="trangThai" name="trangThai" required>
                    </div>
                    
                    
                    <button type="submit" name="btnname" value="btnDonHang" class="btn btn-primary btn-block">Thêm đơn hàng</button>
                </form>
            </div>
        </c:if>
        
       
    </body>
</html>
