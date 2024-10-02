<%-- 
    Document   : Contact
    Created on : Jun 19, 2024, 10:53:55 PM
    Author     : Hieu.NGUYXN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Contact</title>
        <meta charset="UTF-8">
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
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body class="animsition">

        <jsp:include page="Layout/Header.jsp"></jsp:include>

            


            <!-- Title page -->
            <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
                <h2 class="ltext-105 cl0 txt-center">
                    Contact
                </h2>
            </section>	


            <!-- Content page -->
            <section class="bg0 p-t-104 p-b-116">
                <div class="container">
                    <div class="flex-w flex-tr">
                        <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                            <form>
                                <h4 class="mtext-105 cl2 txt-center p-b-30">
                                    Hãy gửi tin nhắn về cho chúng tôi!
                                </h4>

                                <div class="bor8 m-b-20 how-pos4-parent">
                                    <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email" placeholder="Email">
                                    <img class="how-pos4 pointer-none" src="images/icons/icon-email.png" alt="ICON">
                                </div>

                                <div class="bor8 m-b-30">
                                    <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="Chúng tôi có thể giúp gì bạn?"></textarea>
                                </div>

                                <button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                                    Submit
                                </button>
                            </form>
                        </div>

                        <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                            <div class="flex-w w-full p-b-42">
                                <span class="fs-18 cl5 txt-center size-211">
                                    <span class="lnr lnr-map-marker"></span>
                                </span>

                                <div class="size-212 p-t-2">
                                    <span class="mtext-110 cl2">
                                        Địa chỉ
                                    </span>

                                    <p class="stext-115 cl6 size-213 p-t-18">
                                        Đường Trịnh Văn Bô, Quận Nam Từ Niêm, Thành phố Hà Nội
                                    </p>
                                </div>
                            </div>

                            <div class="flex-w w-full p-b-42">
                                <span class="fs-18 cl5 txt-center size-211">
                                    <span class="lnr lnr-phone-handset"></span>
                                </span>

                                <div class="size-212 p-t-2">
                                    <span class="mtext-110 cl2">
                                        Số điện thoại
                                    </span>

                                    <p class="stext-115 cl1 size-213 p-t-18">
                                        +1 800 1236879
                                    </p>
                                </div>
                            </div>

                            <div class="flex-w w-full">
                                <span class="fs-18 cl5 txt-center size-211">
                                    <span class="lnr lnr-envelope"></span>
                                </span>

                                <div class="size-212 p-t-2">
                                    <span class="mtext-110 cl2">
                                        Nhân viên hỗ trợ
                                    </span>

                                    <p class="stext-115 cl1 size-213 p-t-18">
                                        contact@gmail.com
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>	


            <!-- Map -->
            <div class="map">
                <div class="size-303" id="google_map" data-map-x="40.691446" data-map-y="-73.886787" data-pin="images/icons/pin.png" data-scrollwhell="0" data-draggable="1" data-zoom="11"></div>
            </div>



            <!-- Footer -->
        <jsp:include page = "Layout/Footer.jsp"></jsp:include>


        <!-- Back to top -->
        <div class="btn-back-to-top" id="myBtn">
            <span class="symbol-btn-back-to-top">
                <i class="zmdi zmdi-chevron-up"></i>
            </span>
        </div>

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
        <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
        <script src="js/map-custom.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>
