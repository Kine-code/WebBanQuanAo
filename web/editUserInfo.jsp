<%-- 
    Document   : editUserInfo
    Created on : Jul 2, 2024, 4:35:26 PM
    Author     : Admin
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Sửa Thông Tin </title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                padding: 20px;
            }
            h2 {
                color: #333;
            }
            form {
                max-width: 500px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }
            label {
                display: block;
                margin-bottom: 10px;
            }
            input[type="text"], input[type="password"], input[type="email"] {
                width: 100%;
                padding: 8px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                box-sizing: border-box;
            }
            button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }
            button:hover {
                background-color: #45a049;
            }
            .hidden-field {
                display: none;
            }
        </style>
    </head>
    <body>
        <h2 style="text-align: center">Thông tin của bạn</h2>
        <form action="updateuser" method="post">
            <input type="hidden" name="account_id" value="${sessionScope.acc.account_id}" />
            <div>
                <label for="userName">Username:</label>
                <input type="text" id="userName" name="userName" value="${sessionScope.acc.userName}" required />
            </div>
            <div>
                <label for="passWord">Password:</label>
                <input type="password" id="passWord" name="passWord" value="${sessionScope.acc.passWord}" required />
            </div>
            <div>
                <label for="hoten">Họ tên:</label>
                <input type="text" id="hoten" name="hoten" value="${sessionScope.acc.hoten}" required />
            </div>
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${sessionScope.acc.email}" required />
            </div>
            <div>
                <label for="sodienthoai">Số điện thoại:</label>
                <input type="text" id="sodienthoai" name="sodienthoai" value="${sessionScope.acc.sodienthoai}" required />
            </div>
            <div>
                <label for="diachi">Địa chỉ:</label>
                <input type="text" id="diachi" name="diachi" value="${sessionScope.acc.diachi}" required />
            </div>
            <div class="hidden-field">
                <label for="chucVu">Chức vụ:</label>
                <input type="hidden" id="chucVu" name="chucVu" value="${sessionScope.acc.chucVu}" />
            </div>
            <div>
                <button type="submit">Cập nhật</button>
            </div>
        </form>
    </body>
</html>
