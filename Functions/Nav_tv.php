<!DOCTYPE html>
<html>
    <head>
    <title>Cinema's The Pink Panther</title>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <style type="text/css">
            .html, body{
                width: 100%;
                height: 100%;
                font-family: cursive;
                background-image: url("./Imgs/bg.jpg");
            }
            img{
                margin-right: 30px;
            }
            .navbar li a, .navbar-brand{
                color: darkgray !important;
            }
            .navbar li a:hover{
                color: pink !important;
            }
            .navbar{
                background-color: rgba(66, 52, 52, 0.897) !important;
                border-radius: 1px !important;
                height: 12%;
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
            .row{
                margin-left: 232px;
                margin-bottom: 60px;
            }
            .card{
                margin-right: 90px;
                margin-bottom: 420px;
            }
        </style>
        <body>
            <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
                <div class="container-fluid">
                    <a class="narbar-branch" href="index.html">
                        <img src="./Imgs/logo.png" height="50">
                    </a>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                        <a class="navbar-brand" href="index.php">Home</a>
                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="Login.php">Đăng nhập<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="DK_Thanh_Vien.php">Đăng kí</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">Rạp chiếu</a>
                        </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </body>
    </head>
</html>