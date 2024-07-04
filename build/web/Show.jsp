<%-- 
    Document   : Show
    Created on : Jun 9, 2024, 4:49:41 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="adminName" value="${sessionScope.acc.getHoten()}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách Sản Phẩm</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            .table-bordered {
                border: 2px solid #ddd;
            }
            .table-bordered th, .table-bordered td {
                border: 1px solid #ddd;
                padding: 12px;
                text-align: center;
            }
            .table thead th {
                background-color: #f2f2f2;
            }
            .btn-primary {
                margin-right: 10px;
            }
            .btn-danger {
                margin-left: 10px;
            }
            .container {
                margin-top: 50px;
            }
            h2 {
                margin-bottom: 20px;
            }
            .col-sm-10{
                margin-top: 80px;
            }
            .table{
                margin-top: 30px;
            }

        </style>
    </head>
    <script>
        // Trigger resize handler
    </script>
    <body>
        <c:if test="${btnname == null}">

        <div class="col-sm-10 text-center">
            <img src="images/hi2.gif" alt="Greeting GIF" style="width: 200px; height: 200px;  "/> <br>
            <h2 style="display: inline-block; vertical-align: middle;">Xin chào <b> ${adminName}</b>, chúc bạn một ngày tuyệt vời!</h2>
        </div>
        </c:if>
        <c:if test="${btnname == 'btnsanpham'}">
            <div class="col-sm-10">
                <h2 class="text-center">Sản Phẩm của chúng tôi</h2>
                <div style="max-height: 500px; overflow-y:auto;">
                    <table class="scroll table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID </th>
                                <th>Tên sản phẩm</th>
                                <th>Mô tả  </th>
                                <th>Số lượng</th>
                                <th>Size</th>
                                <th>Giá</th>                      
                                <th>image</th>                      
                                <th>Danh mục</th>                      
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListSP}" var="x">
                                <tr>
                                    <td>${x.sanPhamid}</td>
                                    <td>${x.tensanpham}</td>
                                    <td>${x.motasanpham}</td>
                                    <td>${x.soluong}</td>
                                    <td>${x.size}</td>
                                    <td>${x.giatien}</td>
                                    <td><img src="images/${x.anh}" alt="alt"style="width:50px; height: 50px"/></td>
                                    <td>${x.danhmuc_id}</td>  

                                    <td>
                                        <a href="aupdatecontrol?btnname=btnsuasp&sid=${x.sanPhamid}" class="btn btn-primary">Sửa</a>
                                        <a href="adeletecontrol?btnname=deletesp&sid=${x.sanPhamid}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <a href="ashowcontrol?btnname=addsp" class="btn btn-success">Thêm sản phẩm</a>
                <p>${view}</P>
            </div>   
        </c:if>
        <c:if test="${btnname == 'danhmucsanpham'}">
            <div class="col-sm-10">
                <h2 class="text-center">Danh mục sản phẩm</h2>
                <div style="max-height: 500px; overflow-y:auto;">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID danh mục</th>
                                <th>Tên danh mục</th>
                                <th>Mô tả</th>
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListDM}" var="x">
                                <tr>
                                    <td>${x.danhMuc_Id}</td>
                                    <td>${x.tenDanhMuc}</td>
                                    <td>${x.moTa}</td>
                                    <td>
                                        <a href="aupdatecontrol?btnname=btnsuadm&sid=${x.danhMuc_Id}"" class="btn btn-primary">Sửa</a>
                                        <a href="adeletecontrol?btnname=deletedm&sid=${x.danhMuc_Id}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <a href="ashowcontrol?btnname=dmsp" class="btn btn-success">Thêm danh mục</a>
                <p>${view}</P>
            </div>   
        </c:if>

        <c:if test="${btnname == 'account'}">
            <div class="col-sm-10">
                <h2 class="text-center">Danh Sách tài khoản</h2>
                <div style="max-height: 500px; overflow-y:auto;">
                    <table class="scroll table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID </th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>                      
                                <th>Địa chỉ</th>                      
                                <th>Chức vụ</th>                      
                                <th>Chức năng</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListACC}" var="x">
                                <tr>
                                    <td>${x.account_id}</td>
                                    <td>${x.userName}</td>
                                    <td>${x.passWord}</td>
                                    <td>${x.hoten}</td>
                                    <td>${x.email}</td>
                                    <td>${x.sodienthoai}</td>
                                    <td>${x.diachi}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${x.chucVu == 0}">
                                                Khách hàng
                                            </c:when>
                                            <c:when test="${x.chucVu == 1}">
                                                Admin
                                            </c:when>
                                            <c:otherwise>
                                                Không xác định
                                            </c:otherwise>
                                        </c:choose>  
                                    </td>  
                                    
                                    <td>
                                        <a href="aupdatecontrol?btnname=btnsuaacc&sid=${x.account_id}" class="btn btn-primary">Sửa</a>
                                        <a href="adeletecontrol?btnname=deleteacc&sid=${x.account_id}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <a href="ashowcontrol?btnname=addacc" class="btn btn-success">Thêm tài khoản</a>
                <p>${view}</p>
            </div>   
        </c:if>
        
         <c:if test="${btnname == 'donhang'}">
            <div class="col-sm-10">
                <h2 class="text-center">Danh sách đơn hàng</h2>
                <div style="max-height: 500px; overflow-y:auto;">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID đơn hàng</th>
                                <th>ID khách hàng</th>
                                <th>Ngày đặt hàng</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListDH}" var="x">
                                <tr>
                                    <td>${x.donHang_id}</td>
                                    <td>${x.khachHang_id}</td>
                                    <td>${x.ngayDatHang}</td>
                                    <td>${x.tongTien}</td>
                                    <td>${x.trangThai}</td>

                                    <td>
                                        <a href="adeletecontrol?btnname=deletedh&sid=${x.donHang_id}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <p>${view}</P>
            </div>   
        </c:if>
        
        <c:if test="${btnname == 'chitietdonhang'}">
            <div class="col-sm-10">
                <h2 class="text-center">Chi tiết đơn hàng</h2>
                <div style="max-height: 500px; overflow-y:auto;">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>ID chi tiết đơn hàng</th>
                                <th>ID đơn hàng</th>
                                <th>ID sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Giá bán</th>
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListCT}" var="x">
                                <tr>
                                    <td>${x.chiTietDonHang_id}</td>
                                    <td>${x.donHang_id}</td>
                                    <td>${x.sanPham_id}</td>
                                    <td>${x.soLuong}</td>
                                    <td>${x.giaBan}</td>

                                    <td>
                                        <a href="adeletecontrol?btnname=deletect&sid=${x.chiTietDonHang_id}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <p>${view}</P>
            </div>   
        </c:if>
    </body>
</html>
