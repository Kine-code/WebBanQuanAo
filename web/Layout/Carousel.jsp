<%-- 
    Document   : Carousel
    Created on : Jul 1, 2024, 4:27:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="carousel-caption" class="text-center" style="color: rgb(234, 226, 226);">
                        <h1 >Decao Shop</h1>
                        <h3>Uy tín -  Giá rẻ - Chính hãng</h3>
                    </div>
                    <div class="item active">
                        <img src="images/Carousel1.jpg" alt="Los Angeles" style="width:100%;height: 500px">
                        <!--                        <div class="carousel-caption">
                                                    <h3>Decao Shop </h3>
                                                    <p>Chất lượng uy tín hàng đầu Việt Nam!</p>
                                                </div>-->
                    </div>

                    <div class="item">
                        <img src="images/Carousel2.jpg" alt="Chicago" style="width:100%;height: 500px">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </body>
</html>
