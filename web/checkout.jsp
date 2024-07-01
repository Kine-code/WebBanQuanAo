<%-- 
    Document   : checkout
    Created on : Jul 1, 2024, 9:53:22 PM
    Author     : Admin
--%>

<%@page import="control.CartControl"%>
<%@page import="entity.GioHang"%>
<%@page import="entity.SanPham"%>
<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thanh toán</title>
        <link href="./css/stylescheckout.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1>Xác nhận thanh toán</h1>
            <h3>Thông tin khách hàng</h3>

            <p><b>Tên khách hàng:</b> ${sessionScope.acc.getHoten()}</p>
            <p><b>Email:</b> ${sessionScope.acc.getEmail()}</p>
            <p><b>Số điện thoại: </b>${sessionScope.acc.getSodienthoai()}</p>
            <p><b>Địa chỉ: </b>${sessionScope.acc.getDiachi()}</p>
            <table class="checkout-table">
                <thead>
                    <tr>
                        <th>Hình ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Tổng cộng</th>
                    </tr>
                </thead>
                <tbody>
                    <% double totalAmount = 0;
                    for (GioHang gh : CartControl.dsgh) {
                        SanPham sp = gh.getPro();
                        int soLuong = gh.getSoluong();
                        double price = sp.getGiatien();
                        double total = price * soLuong;
                        totalAmount += total;
                    %>
                    <tr>
                        <td><img src="images/<%= sp.getAnh() %>" alt="<%= sp.getTensanpham() %>" width="100" height="100"></td>
                        <td><%= sp.getTensanpham() %></td>
                        <td><%= soLuong %></td>
                        <td><%= price %> VND</td>
                        <td><%= total %> VND</td>
                    </tr>
                    <% } %>
                    <tr class="total-row">
                        <td colspan="4">Tổng cộng</td>
                        <td><%= totalAmount %> VND</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <form action="cart?" style="margin-left: 950px">
                <input type="hidden" name="totalAmount" value="<%= totalAmount %>">
                <button name="action" value="removeCart" type="submit" >Xác nhận thanh toán</button>

            </form>
        </div>
    </body>
</html>