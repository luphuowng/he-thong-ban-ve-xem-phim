<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());

    $sql = "INSERT INTO phong VALUES('". $_POST["Ten_Phong"] ."'";
   
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
                
    header('Location: http://localhost/QuanLyBanVeXemPhim/Phong_Chieu.php');
?>