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

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link href="./css/style.css" rel="stylesheet" type="text/css">
        <title>Giỏ hàng của bạn</title>
        <link href="./css/stylescart.css" rel="stylesheet" type="text/css">

        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="./css/style.css" rel="stylesheet" type="text/css">
        <script>
            function updateCart(spid, soLuong) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "cart", true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhr.send("action=updateCart&spid=" + spid + "&soLuong=" + soLuong);

                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
//                        location.reload();
                    }
                };
            }

            function onQuantityChange(spid, element) {
                var soLuong = element.value;
                updateCart(spid, soLuong);
            }
        </script>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="Layout/Header.jsp"></jsp:include>
            </div>
            <a href="Layout/Header.jsp"></a>
            <div class="container">
                <h1>Giỏ hàng của bạn</h1>
                <table class="cart-table">
                    <thead>
                        <tr>
                            <th>Hình ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                            <th>Tổng cộng</th>
                            <th>Hành động</th>
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
                        <td>
                            <input type="number" name="soLuong" value="<%= soLuong %>" min="1" onchange="onQuantityChange('<%= sp.getSanPhamid() %>', this)">
                        </td>
                        <!--                        <td>
                                                    <form action="cart" method="post">
                                                        <input type="hidden" name="action" value="updateCart">
                                                        <input type="hidden" name="spid" value="<%= sp.getSanPhamid() %>">
                                                        <input type="number" name="soLuong" value="<%= soLuong %>" min="1">
                                                        <button type="submit">Cập nhật</button>
                                                    </form>
                                                </td>-->
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
                    <% } %>
                    <tr class="total-row">
                        <td colspan="4">Tổng cộng</td>
                        <td colspan="2"><%= totalAmount %> VND</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <form class="cart-table" action="checkout.jsp" style="margin-left: 1000px; ">
                <button type="submit">Thanh toán</button>
            </form>
            <a href="home"><b>Tiếp tục mua sắm</b></a>
        </div>
        <jsp:include page = "Layout/Footer.jsp"></jsp:include>
        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <script>
                                $(".js-select2").each(function () {
                                    $(this).select2({
                                        minimumResultsForSearch: 20,
                                        dropdownParent: $(this).next('.dropDownSelect2')
                                    });
                                })
        </script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/slick/slick.min.js"></script>
        <script src="js/slick-custom.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/parallax100/parallax100.js"></script>
        <script>
                                $('.parallax100').parallax100();
        </script>
        <!--===============================================================================================-->
        <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
        <script>
                                $('.gallery-lb').each(function () { // the containers for all your galleries
                                    $(this).magnificPopup({
                                        delegate: 'a', // the selector for gallery item
                                        type: 'image',
                                        gallery: {
                                            enabled: true
                                        },
                                        mainClass: 'mfp-fade'
                                    });
                                });
        </script>
        <!--===============================================================================================-->
        <script src="vendor/isotope/isotope.pkgd.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/sweetalert/sweetalert.min.js"></script>
        <script>
                                $('.js-addwish-b2').on('click', function (e) {
                                    e.preventDefault();
                                });

                                $('.js-addwish-b2').each(function () {
                                    var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
                                    $(this).on('click', function () {
                                        swal(nameProduct, "is added to wishlist !", "success");

                                        $(this).addClass('js-addedwish-b2');
                                        $(this).off('click');
                                    });
                                });

                                $('.js-addwish-detail').each(function () {
                                    var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

                                    $(this).on('click', function () {
                                        swal(nameProduct, "is added to wishlist !", "success");

                                        $(this).addClass('js-addedwish-detail');
                                        $(this).off('click');
                                    });
                                });

                                /*---------------------------------------------*/

                                $('.js-addcart-detail').each(function () {
                                    var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
                                    $(this).on('click', function () {
                                        swal(nameProduct, "is added to cart !", "success");
                                    });
                                });

        </script>
        <!--===============================================================================================-->
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        <script>
                                $('.js-pscroll').each(function () {
                                    $(this).css('position', 'relative');
                                    $(this).css('overflow', 'hidden');
                                    var ps = new PerfectScrollbar(this, {
                                        wheelSpeed: 1,
                                        scrollingThreshold: 1000,
                                        wheelPropagation: false,
                                    });

                                    $(window).on('resize', function () {
                                        ps.update();
                                    })
                                });
        </script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>
