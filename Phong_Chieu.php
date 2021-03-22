<!DOCTYPE html>
<html>
    <head>
        <title>Admin - Danh sách phòng chiếu</title>
        <style type="text/css">
            .left
            {
                padding-left: 80px;
                padding-top: 0px;
                color: PeachPuff;
                font-size: 14px;   
                left: 0;
            }
            .right
            {
                padding-left: 180px;
                padding-top: 0px;
            }
            .Col-left
            {
                padding-top: 20px;
                width: 30%;
                background-color: none;
                padding-bottom: 20px;
                float: left;
                font-family: cursive;
            }
            .Col-right
            {
                padding-bottom: 75px;
                padding-top: 50px;
                display: block;
                float: right;
                width: 70%;
                background-color: none;
                font-family: cursive;
            }
            input
            {
                width: 60%;
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
        </style>
    </head>
    <body>
        <?php 
            include("Style_Admin.php");
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                            color:	rgb(176,176,176); border-radius:15px; 
                            margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:1000px">
            <div class="Col-left">
                <button type="button" class="btn btn-outline-warning" style="width:220px;margin:20px 0px 20px 50px;height:60px">
                    Thêm mới phòng
                </button>
            </div>
            <div class="Col-right">
                <form action="Functions/Function_Add_Phong.php" method="POST">
                    <div class="Form">
                        <div class="left" id="left">Tên phòng:</div>
                        <div class="right"><input name="Ten_Phong" id="Ten_Phong" type="text" placeholder="Nhập tên phòng" required></div>
                    </div>
                    <input class="btn btn-outline-success" type="submit" name="btn_Add_User" value="Thêm phòng"  onclick="checkForm();
                                    "style="width:100px; height:30px;font-size:12px;margin:30px 0px 0px 255px">
            </div>
                </form>
                <button type="button" class="btn btn-outline-warning" style="width:250px;margin:50px 0px 60px 50px; height:60px">Danh sách phòng đang có</button>
        <table class="table table-outline-warning table-active" style="width:90%; text-align:center; margin: 0px 0px 900px 60px; font-size: 15px; border-radius:10px; background-color:rgba(229, 140, 132, 0.697)">
            <thead>
                <tr class="table-dark">
                <th scope="col">STT</th>
                <th scope="col">Tên phòng</th>
                <th scope="col">Edit</th>
                </tr>
            </thead>
            <?php
                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());

                $sql = "SELECT * FROM phong";

                $result = mysqli_query($conn, $sql);


                while($row = mysqli_fetch_array($result))
                {
            ?>
            <tbody>
                <tr>
                    <th scope="row"><?php static $count = 0; echo $count += 1 ?></th>
                    <td><a href="TTCN.php" style="color: pink;"><?php echo $row["Ten_Phong"]?></a></td>
                    <td><a href="Edit_Phong.php?Ma_Phong=<?php echo $row["Ma_Phong"];?>" style="margin-left:12px"><img src="Icons/edit.png" style="width:15px"></a>|
                        <a href="Functions/Function_Delete_Phong.php?Ma_Phong=<?php echo $row["Ma_Phong"];?>" style="margin-left:15px">
                        <img src="Icons/delete.png" style="width:12px"></a>
                    </td>
            </tbody>
            <?php 
                }
            ?>
        </table>

        </div>
    </body>
</html>