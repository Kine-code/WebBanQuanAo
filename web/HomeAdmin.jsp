<%-- 
    Document   : HomeAdmin
    Created on : Jun 29, 2024, 3:25:57 PM
    Author     : Hieu.Nguyxn
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách Sản Phẩm</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            
                <div class="col-sm-2">
                <jsp:include page="SliderBarAdmin.jsp"></jsp:include>
                </div>
                <jsp:include page="Show.jsp"></jsp:include>
        </div>
    </body>
</html>
