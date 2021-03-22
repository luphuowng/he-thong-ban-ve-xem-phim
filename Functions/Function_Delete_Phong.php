<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
    $sql = "DELETE FROM phong WHERE Ma_Phong = '" . $_GET["Ma_Phong"] . "'";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    header('Location: http://localhost/quanLyBanVeXemPhim/Phong_Chieu.php');
?>