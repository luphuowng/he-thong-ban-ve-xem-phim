<?php session_start();?>
<!DOCTYPE html>
<html>
    <head>
    <style type="text/css">
            .Col-left
            {
                padding-top: 80px;
                width: 20%;
                background-color: none;
                padding-bottom: 20px;
                float: left;
                font-family: cursive;
            }
            .Col-right
            {
                padding-bottom: 75px;
                padding-top: 20px;
                padding-left: 120px;
                display: block;
                float: right;
                width: 70%;
                background-color: none;
                font-family: cursive;
            }
            .left
            {
                padding-left: 30px;
                color: PeachPuff;
                font-size: 14px;   
                left: 0;
            }
            .right
            {
                padding-left: 90px;
            }
            .Form
            {
                padding-top: 30px;
                width: 50%;
                background-color: none;
                padding-bottom: 5px;
                float: left;
                font-family: cursive;
            }
            input
            {
                width: 100%;
                border: 1px solid rgb(199, 191, 191);
                border-radius: 5px;
                height: 25px;
                padding-left: 5px;
                margin-bottom: 5px;
            }
            input:hover
            {
                background-color: LightGray;
            }
            .error
            {
                color: red;
                font-size: 10px;
                padding-left: 180px;
            }
            .edit{
                width: 50px;
                display: inline-block;
                text-align: center;
            }
        </style>
    </head>

    <body>
        <?php 
            if(empty($_SESSION)){
                header('Location: http://localhost/quanLyBanVeXemPhim/Login.php');
            }
            include("Style_Admin.php");
            if(isset($_GET["action"]) && $_GET["action"]=="capnhat"){
                $sql = "UPDATE phong SET "
                            . "Ten_Phong = '" . $_POST["Ten_Phong"] . "'";

                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
                
                $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

                header('Location: http://localhost/quanLyBanVeXemPhim/DS_Rap.php');
            }        
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                            color:	rgb(176,176,176); border-radius:15px; 
                            margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:400px">
            <div class="Col-left">
                <button type="button" class="btn btn-outline-warning" style="width:220px;margin:5px 0px 20px 100px;height:60px">
                    Sửa thông tin phòng
                </button>
            </div>
            <div class="Col-right">
                <form action="Edit_Phong.php?action=capnhat" method="POST">
                    <div class="Form" style="margin-top: 70px">
                        <?php 
                            $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
                            $sql = "SELECT * FROM phong WHERE Ma_Phong='" . $_GET["Ma_Phong"] . "'";
                            $result = mysqli_query($conn, $sql);

                            while($row = mysqli_fetch_array($result))
                            {
                        ?>
                        <div class="left" id="left">Tên phòng:</div></br></br>
                        <div class="right">
                            <input name="Ten_Rap" id="Ten_Rap" type="text" placeholder="Nhập tên rạp" value="<?php echo $row["Ten_Phong"];?>" required>
                        </div>
                    </div>
                    <input class="btn btn-outline-success" type="submit" name="btn_Add_User" value="Cập nhật"  onclick="checkForm();
                                    "style="width:80px; height:50px;font-size:12px;margin:30px 0px 0px 315px">
            </div>
                            <?php 
                        }
                            ?>
        </div>
    </body>
</html>