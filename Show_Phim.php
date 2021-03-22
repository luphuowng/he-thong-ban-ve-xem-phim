<!DOCTYPE html>
<html>
    <head>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <?php
            $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());
            
            $sql = "SELECT * FROM phim WHERE Ma_Phim='" . $_GET['Ma_Phim'] ."'";
            $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
            $Phim = $result->fetch_assoc();
        ?>
        <title>
            <?php
                echo $Phim["Ten_Phim"];
            ?>
        </title>
        <style type="text/css">
             .left
            {
                padding-left: 10px;
                padding-top: 0px;
                color: PeachPuff;  
                font-size: 17px;
                margin-bottom: 10px; 
            }
            .right
            {
                padding-left: 145px;
                font-size: 16px;
            }
            .anh
            {
                padding-top: 20px;
                width: 30%;
                float: left;
                margin: 10px 20px 10px 30px;
            }
            .Chi_Tiet
            {
                padding-bottom: 75px;
                padding-top: 10px;
                display: block;
                float: right;
                width: 60%;
                background-color: none;
                font-family: cursive;
            }
            .title{
                font-size: 30px;
                margin-left: 50px;
                font-style: italic;
            }
            .Noi_Dung_Phim{
                font-size: 14px;
                text-decoration: underline;
                margin-left: 30px;
            }
        </style>
    </head>
    <body>
        <?php 
            include("Nav.php");
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                            color:	rgb(176,176,176); border-radius:15px; 
                            margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:1500px">
        <button type="button" class="btn btn-outline-warning" style="width:550px;margin:80px 0px 50px 280px; height:60px; font-size:30px">
            <?php
                echo $Phim["Ten_Phim"];
            ?>
        </button>
        <div class="Noi_Dung_Phim">
            <div class="title">Chi tiết phim</div>
            <div class="anh">
                <div class="poster">
                    <img src="Imgs/Wall-E.jpg" class="card-img" alt="..." style="width:380px; height: 450px">
                </div>
            </div>
            <div class="Chi_Tiet">
                <div class="left">Thể loại phim: </div>
                <div class="right">
                    <?php 
                        $Ten_Loai = "SELECT * FROM loai_phim WHERE Ma_Loai='" . $Phim['Ma_Loai'] ."'";
                        $result = mysqli_query($conn, $Ten_Loai);
                        $row = mysqli_fetch_array($result);
                        echo $row['Ten_Loai'];
                    ?>
                </div>
                <div class="left">Nội dung phim:</div>
                <div class="right" style="width:600px; height: 400px">
                    <?php 
                        echo $Phim['Noi_Dung_Phim'];
                    ?>
                </div>
                <a href="Ghe_Ngoi.php"><button type="button" class="btn btn-danger" style="margin: 60px 10px 10px 200px">Xem Trailer</button></a>
                <div class="Suat_Chieu">
                    <div class="suat">
                        <div class="ngay">
                            <?php ?>
                        </div>
                    </div>
                </div>
                <a href="Ghe_Ngoi.php"><button type="button" class="btn btn-primary" style="margin: 60px 10px 10px 10px">Đặt vé</button></a>
            </div>   
        </div>
    </body>
</html>