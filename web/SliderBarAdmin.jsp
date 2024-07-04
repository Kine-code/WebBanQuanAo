<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu Admin</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/css/adminlte.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css">
        <style>
            .wrapper {
                display: flex;
                flex-direction: column;
                height: 100vh;
            }
            .main-sidebar {
                position: fixed;
                top: 0;
                left: 0;
                bottom: 0;
                width: 250px;
                background-color: #212529;
            }
            .sidebar {
                overflow-y: auto;
                margin-top: 30px;
            }

            .navbar {
                background-color: #343a40 !important;
            }
            .navbar-brand {
                color: #ffffff;
                font-size: 1.5rem;
                font-weight: bold;
                display: flex;
                align-items: center;
            }
            .brand-text {
                font-size: 2.5rem; /* Điều chỉnh kích thước chữ */
                margin-left: 80px; /* Khoảng cách với biểu tượng hoặc biên */
            }
            .nav-link {
                color: #ffffff;
                display: flex;
                align-items: center;
            }
            .nav-link:hover {
                background-color: #3d444a !important;
            }
            .nav-link .nav-icon {
                margin-right: 10px;
            }
            .sidebar-menu {
                list-style-type: none;
                padding-left: 0;
            }
            .sidebar-menu .nav-item {
                margin-bottom: 2px;
            }
            .sidebar-menu .nav-link {
                padding: 10px 15px;
                display: flex;
                align-items: center;
                color: #ffffff;
            }
            .sidebar-menu .nav-link:hover {
                background-color: #3d444a;
            }
            .content-header {
                background-color: #f8f9fa;
                padding: 15px;
                border-bottom: 1px solid #dee2e6;
            }
            .content-header h1 {
                margin: 0;
                font-size: 1.5rem;
            }
        </style>
    </head>
    <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">
            <!--     Navbar 
                <nav class="main-header navbar navbar-expand navbar-dark">
                     Left navbar links 
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                        </li>
                    </ul>
                </nav>-->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="#" class="brand-link">
                    <span class="brand-text font-weight-light">MENU</span>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="sidebar-menu" data-widget="treeview">
                            <li class="nav-item">
                                <a href="ashowcontrol" class="nav-link">
                                    <i class="nav-icon fas fa-home"></i>
                                    <span>Trang chủ</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="ashowcontrol?btnname=btnsanpham" class="nav-link">
                                    <i class="nav-icon fas fa-address-card"></i>
                                    <span>Sản phẩm</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="ashowcontrol?btnname=danhmucsanpham" class="nav-link">
                                    <i class="nav-icon fas fa-list"></i>
                                    <span>Danh mục sản phẩm</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="ashowcontrol?btnname=account" class="nav-link">
                                    <i class="nav-icon fas fa-user"></i>
                                    <span>Tài khoản</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="ashowcontrol?btnname=donhang" class="nav-link">
                                    <i class="nav-icon fas fa-shopping-cart"></i>
                                    <span>Đơn hàng</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="ashowcontrol?btnname=chitietdonhang" class="nav-link">
                                    <i class="nav-icon fas fa-bookmark"></i>
                                    <span>Chi tiết đơn hàng</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="home" class="nav-link" style="padding-left: 9px">
                                    <svg xmlns="http://www.w3.org/2000/svg" style="width: 20px; height: 20px; margin-right: 7px" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 9V5.25A2.25 2.25 0 0 1 10.5 3h6a2.25 2.25 0 0 1 2.25 2.25v13.5A2.25 2.25 0 0 1 16.5 21h-6a2.25 2.25 0 0 1-2.25-2.25V15m-3 0-3-3m0 0 3-3m-3 3H15" />
</svg>
                                    <span>Thoát</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- /.sidebar -->
            </aside>


        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/js/adminlte.min.js"></script>
    </body>
</html>
