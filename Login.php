<!DOCTYPE html>
<html>
    <head>
        <title>Đăng nhập</title>
        <title>Cinema's The Pink Panther</title>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <style type="text/css">
            .row-container
            {
                border: 1px solid #fff;
                border-radius: 20px;
                margin-top: 15vh;
                margin-left: 45vh;
                padding: 30px;
                -webkit-box-shadow: 2px 2px 124px -8px rgba(201,48,48,1);
                -moz-box-shadow: 2px 2px 124px -8px rgba(201,48,48,1);
                box-shadow: 2px 2px 124px -8px rgba(201,48,48,1);
            }
            label, .form-check-lable, .QMK{
                color: papayawhip;
                text-shadow: 1px 1px 8px peachpuff;
            }
            .QMK{
                margin-left:125px;
            }
            .QMK:hover{
                color: black;
                text-shadow: 1px 1px 8px peachpuff;
            }
        </style>
    </head>
    <body>
        <?php 
            include("Nav.php");
        ?>
        <div class="row">
            <div class="col-md-4 col-sm-7 col-xs-12 row-container">
                <form action="Functions/Function_Login.php" method="POST">
                    <h3 style="color: pink;text-align:center">Đăng nhập</h3>
                    <div class="form-group">
                        <lable for="text" class="lable" style="color: papayawhip;" >Tên tài khoản</lable>
                        <input type="text" class="form-control" placeholder="Username" name="Ten_Dang_Nhap" id="Ten_Dang_Nhap" required>
                    </div>
                    <div class="form-group">
                        <lable for="password" class="lable" style="color: papayawhip" >Mật khẩu</lable>
                        <input type="password" class="form-control" name="Mat_Khau" id="Mat_Khau" placeholder="Password" required>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Ghi nhớ đăng nhập</label>
                        <a href="QMK.php" class="QMK">Quên mật khẩu</a>
                    </div>
                    <button type="submit" class="btn btn-success btn-block my-3" style="background-color: #FFB6C1;">Login</button>
                </form>
            </div>
        </div>
    </body>
</html>