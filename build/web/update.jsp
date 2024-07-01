<%-- 
    Document   : Add
    Created on : Oct 12, 2020, 9:17:52 PM
    Author     : trinh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa sản phẩm</title>
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
            }
            .form-container h2 {
                text-align: center;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <c:if test="${btnname == 'btnsuasp'}">
            <div class="container form-container">
                <h2>Sửa sản phẩm</h2>
                <form action="aupdatecontrol?btnname=btnSanPham" method="post">
                    <div class="form-group">
                        <label>ID</label>
                        <input type="text" class="form-control" id="tensp" name="sanPhamid" value="${sp.sanPhamid}" readonly>
                    </div>
                    <div class="form-group">
                        <label>Tên sản phẩm</label>
                        <input type="text" class="form-control" id="tensanpham" name="tensanpham" value="${sp.tensanpham}" required>
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <input type="text" class="form-control" id="motasanpham" name="motasanpham"  value="${sp.motasanpham}" required>
                    </div>
                    <div class="form-group">
                        <label>Số lượng</label>
                        <input type="text" class="form-control" id="soluong" name="soluong" value="${sp.soluong}" required>
                    </div>
                    <div class="form-group">
                        <label>Size</label>
                        <input type="text" class="form-control" id="size" name="size" value="${sp.size}" required>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input type="number" class="form-control" id="giatien" name="giatien" value="${sp.giatien}" required>
                    </div>
                    <div class="form-group">
                        <label>image</label>
                        <input type="file" class="form-control" id="anh"  name="anh">    
                        <input type="text" class="form-control" name="anh" value="${sp.anh}">
                    </div>
                    <div class="form-group">
                        <label>Danh mục</label>
                        <input type="number" class="form-control" id="danhmuc_id" name="danhmuc_id" value="${sp.danhmuc_id}" required>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Xác nhận</button>
                </form>
            </div>
        </c:if>


        <c:if test="${btnname == 'btnsuadm'}">
            <div class="container form-container">
                <h2>danhMuc_Id</h2>
                <form action="aupdatecontrol?btnname=btnDanhMuc" method="post">
                    <div class="form-group">
                        <label>ID</label>
                        <input type="text" class="form-control" id="danhMuc_Id" name="danhMuc_Id" value="${dm.danhMuc_Id}" readonly>
                    </div>
                    <div class="form-group">
                        <label>tenDanhMuc</label>
                        <input type="text" class="form-control" id="tenDanhMuc" name="tenDanhMuc" value="${dm.tenDanhMuc}" required>
                    </div>
                    <div class="form-group">
                        <label for="moTa">Mô tả</label>
                        <textarea class="form-control" id="moTa" name="moTa" rows="5" required>${dm.moTa}</textarea>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Xác nhận</button>
                </form>
            </div>
        </c:if>

        <c:if test="${btnname == 'btnsuaacc'}">
            <div class="container form-container">
                <h2>Sửa Account</h2>
                <form action="aupdatecontrol?btnname=btnAcc" method="post">
                    <div class="form-group">
                        <label>ID</label>
                        <input type="text" class="form-control" id="account_id" name="account_id" value="${acc.account_id}" readonly>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${acc.userName}" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="text" class="form-control" id="passWord" name="passWord"  value="${acc.passWord}" required>
                    </div>
                    <div class="form-group">
                        <label>Họ và tên</label>
                        <input type="text" class="form-control" id="hoten" name="hoten" value="${acc.hoten}" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" id="email" name="email" value="${acc.email}" required>
                    </div>
                    <div class="form-group">
                        <label>Số diện thoại</label>
                        <input type="number" class="form-control" id="sodienthoai" name="sodienthoai" value="${acc.sodienthoai}" required>
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ</label>
                        <input type="text" class="form-control" id="diachi" name="diachi" value="${acc.diachi}" required>
                    </div>
                    <div class="form-group">
                        <label>Chức vụ</label>
                       
                        <label class="radio-inline">
                            <input type="radio" name="chucVu" value="0" ${acc.chucVu == 0 ? "checked" : ""}> Khách hàng
                        </label>
                         <label class="radio-inline">
                            <input type="radio" name="chucVu" value="1" ${acc.chucVu == 1 ? "checked" : ""}> Admin
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Xác nhận</button>
                </form>
            </div>
        </c:if>
    </body>
</html>
