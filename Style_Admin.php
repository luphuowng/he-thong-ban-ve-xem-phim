<?php session_start(); ?>
<!DOCTYPE html>
<html>
    <head>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Admin - Cinema's The Pink Panther</title>
        <style type="text/css">
            .html, body{
                width: 100%;
                height: 100%;
                font-family: cursive;
                background-image: url("Imgs/bg.jpg");
            }
            img{
                margin-right: 10px;
            }
            .navbar li a, .navbar-brand{
                color: pink !important;
            }
            .navbar li a:hover{
                color: pink !important;
            }
            .navbar{
                background-color: rgba(16, 16, 16, 0.897) !important;
                border-radius: 1px !important;
                height: 25%;
            }
            @media(max-width: 992px){
                .carousel-caption{
                    top: 20%;
                }
                .carousel-caption h1{
                    font-size: 250%;
                }
                .carousel-caption h3{
                    font-size: 160%;
                }
                .carousel-caption .btn{
                    font-size: 120%;
                }
            }
            @media (max-width: 768px){
                .carousel-caption{
                    top: 20%;
                }
                .carousel-caption h1{
                    font-size: 220%;
                }
                .carousel-caption h3{
                    font-size: 140%;
                    padding-bottom: 0.2rem;
                }
                .carousel-caption .btn{
                    font-size: 95%;
                    padding: 8px 14px;
                }
            }
            @media (max-width: 576px){
                .carousel-caption{
                    top: 10%;
                }
                .carousel-caption h1{
                    font-size: 150%;
                }
                .carousel-caption h3{
                    font-size: 110%;
                }
                .carousel-caption .btn{
                    font-size: 90%;
                    padding: 4px 8px;
                }
            }
            .col-8{
                color: rosybrown;
                text-align: center;
                margin: 40px 0px 12px 98px;
                font-size: 40px;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
            <div class="container-fluid" style="width:30%">
                <a class="narbar-branch" href="index_admin.php">
                    <img src="Imgs/logo.png" height="50">
                </a>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <p style="color: DeepPink; margin-top:20px">hello <a class="navbar-brand" href="#">
                        <?php
                            if(empty($_SESSION)){
                                header('Location: http://localhost/quanLyBanVeXemPhim/Login.php');
                            }
                            $user = $_SESSION["user_la"];
                        ?>
                        <div><?php echo $user["Ho_ten"] ?></div>
                    </a>
                </div>
                </br></br></br></br></br>
            </div>
            <div class="btn-group" style="margin-left:0px; padding-right: 5px;">
                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:120px; height:40px">
                Tài khoản
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="">Tài khoản thành viên</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="DS_Admin.php">Tài khoản admin</a>
                </div>
            </div>
            <div class="btn-group" style="padding-right: 5px;">
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:220px; height:40px">
                    Chi nhánh rạp chiếu phim
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="test_add_rap.php">Thêm rạp</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="DS_Rap.php">Quản lí rạp</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="Phong_Chieu.php">Quản lí phòng chiếu</a>
                </div>
            </div>
            <div class="btn-group" style="padding-right: 5px;">
                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:90px; height:40px">
                    Phim
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="Them_Phim.php">Thêm Phim</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="DS_Phim.php">Danh sách phim đang chiếu</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="DS_Phim.php">Thêm suất chiếu cho phim</a>
                </div>
            </div>
            <div class="btn-group" style="padding-right: 5px;">
                <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:220px; height:40px">
                    Menu combo ăn vặt
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Thêm combo</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Menu hiện tại</a>
                </div>
            </div>
            <div class="btn-group" style="padding-right: 5px;">
                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:120px; height:40px">
                    Hóa đơn
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Thống kê hóa đơn theo loại phim</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Thống kê hóa đơn theo tên phim</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Thống kê hóa đơn theo ngày</a>
                </div>
            </div>
            <div class="btn-group" style="padding-right: 5px;">
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:120px; height:40px">
                    Khuyến mãi
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Thêm khuyến mãi</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Danh sách khuyến mãi</a>
                </div>
            </div>
            <a href="Functions/Function_Logout.php"><button type="button" class="btn btn-dark" style="width:130px">Đăng xuất</button></a>
        </nav>
        </br>
    </body>
</html>