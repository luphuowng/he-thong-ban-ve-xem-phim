<!DOCTYPE html>
<html>
    <head>Admin - Danh sách rạp chiếu phim</head>
    <body>
        <?php 
            include("Style_Admin.php");
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                            color:	rgb(176,176,176); border-radius:15px; 
                            margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:1200px">
            <button type="button" class="btn btn-outline-warning" style="width:350px;margin:80px 0px 100px 380px; height:60px">Danh sách rạp chiếu phim</button>
        <table class="table table-outline-warning table-active" style="width:90%; text-align:center; margin: 0px 0px 900px 60px; font-size: 15px; border-radius:10px; background-color:rgba(229, 140, 132, 0.697)">
            <thead>
                <tr class="table-dark">
                <th scope="col">STT</th>
                <th scope="col">Tên rạp</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Số Hotline</th>
                <th scope="col">Edit</th>
                </tr>
            </thead>
            <?php
                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());

                $sql = "SELECT * FROM rap_chieu";

                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result))
                {
            ?>
            <tbody>
                <tr>
                    <th scope="row"><?php static $count = 0; echo $count += 1 ?></th>
                    <td><a href="TTCN.php" style="color: pink;"><?php echo $row["Ten_Rap"]?></a></td>
                    <td><?php echo $row["Dia_Chi"] ?></td>
                    <td><?php echo $row["Hotline"] ?></td>
                    <td><a href="Edit_Rap.php?Ma_Rap=<?php echo $row["Ma_Rap"];?>" style="margin-left:12px"><img src="Icons/edit.png" style="width:15px"></a>|
                     <a href="Functions/Function_Delete_Rap.php?Ma_Rap=<?php echo $row["Ma_Rap"];?>" style="margin-left:15px"><img src="Icons/delete.png" style="width:12px"></a></>
                </tr>
            </tbody>
            <?php 
                }
            ?>
        </table>
        </div>
    </body>
</html>