<%-- 
    Document   : view-cart
    Created on : May 18, 2024, 3:02:06 PM
    Author     : Admin
--%>

<%@page import="control.CartControl"%>
<%@page import="entity.GioHang"%>
<%@page import="entity.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Giỏ hàng của bạn</title>
    </head>
    <body>
        <h1>Giỏ hàng của bạn</h1>
        <table border="1">
            <tr>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá</th>
                <th>Tổng cộng</th>
                <th>Hành động</th>
            </tr>
            <%
                double totalAmount = 0;
                for (GioHang gh : CartControl.dsgh) {
                    SanPham sp = gh.getPro();
                    int soLuong = gh.getSoluong();
                    double price = sp.getGiatien();
                    double total = price * soLuong;
                    totalAmount += total;
            %>
            <tr>
                <td><%= sp.getTensanpham() %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="action" value="updateCart">
                        <input type="hidden" name="spid" value="<%= sp.getSanPhamid() %>">
                        <input type="number" name="soLuong" value="<%= soLuong %>" min="1">
                        <button type="submit">Cập nhật</button>
                    </form>
                </td>
                <td><%= price %> VND</td>
                <td><%= total %> VND</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="action" value="removeCart">
                        <input type="hidden" name="spid" value="<%= sp.getSanPhamid() %>">
                        <button type="submit">Xóa</button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
            <tr>
                <td colspan="3">Tổng cộng</td>
                <td colspan="2"><%= totalAmount %> VND</td>
            </tr>
        </table>
        <br>
        <a href="home">Tiếp tục mua sắm</a>
    </body>
</html>

