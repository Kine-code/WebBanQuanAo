<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

        <link rel="stylesheet" href="style.css">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Side Navbar</title>

        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                list-style: none;
                text-decoration: none;
            }
            body{
                overflow: hidden;
                font-family: sans-serif;
                background-color: #387b6a;
                height: 100vh;
            }

            .menu{
                height: 100%;
                position: fixed;
                left: 0;
                top: 0;
                width: 250px;
                padding-top: 60px;
                background-color: #212121;
                transition: 0.5s;
                transform: translateX(-250px);
            }
            .logo a{
                padding: 15px 25px;
                font-size: 40px;
                text-transform: uppercase;
                color: white;
                /*margin-left: 5px*/
            }
            .logo a img{
                max-width:140px;
                border-radius: 50%;
                margin-bottom: 10px;
            }
            ul li{
                border-bottom: 1px solid rgba(255, 255, 255, 0.10);
                transition: 0.3s;
                /*text-align: center;*/
                padding-left: 25px;
            }
            ul li:hover{
                padding-left: 35px;
                background-color: #445665;
            }
            ul li a{
                display: flex;
                align-items: center;
                color: #fff;
                padding: 20px;
                text-transform: uppercase;
                font-weight: bold;
            }

            ul li a span i {
                margin-right: 5px;
            }

            #open{
                display: none;
            }
            .open{
                height: 80px;
                width: 80px;
                /*position: absolute;*/
                /*background-color: #000;*/
            }
            .open i{
                font-size: 25px;
                cursor: pointer;
                margin-top: 25px;
                background-color: #000;
                padding: 15px 15px;
                color: white;
                z-index: 99;
            }
            #open:checked ~ .menu{
                transition: 0.5s;
                transform: translateX(0);
            }
            #open:checked ~ .open i{
                transition: 0.5s;
                position: absolute;
            }
        </style>
    </head>
    <body>
        <nav>
            <input type="checkbox" name="open" id="open">
            <label for="open" class="open">
                <i class="fas fa-bars"></i>
            </label>
            <div class="menu">
                <div class="logo">
                    <a href="#">
                        <img src="logo.png" alt="">
                    </a>
                </div>
                <ul>
                    <li>
                        <a href="ashowcontrol">
                            <span><i class="fas fa-home"></i></span>
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="ashowcontrol?btnname=btnsanpham">
                            <span><i class="fas fa-address-card"></i></span>
                            Sản phẩm
                        </a>
                    </li>
                    <li>
                        <a href="ashowcontrol?btnname=danhmucsanpham">
                            <span><i class="fa-solid fa-list"></i></span>
                            Danh mục sản phẩm
                        </a>
                    </li>
                    <li>
                        <a href="ashowcontrol?btnname=account">
                            <span><i class="fa-solid fa-user"></i></span>
                            Tài khoản
                        </a>
                    </li>
                    <li>
                        <a href="ashowcontrol?btnname=donhang">
                            <span><i class="fa-brands fa-shopify"></i></span>
                            Đơn hàng
                        </a>
                    </li>
                    <li>
                        <a href="ashowcontrol?btnname=chitietdonhang">
                            <span><i class="fa-solid fa-bookmark"></i></span>
                            Chi tiết đơn hàng
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </body>
</html>
