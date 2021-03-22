<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
    $sql = "DELETE FROM phim WHERE Ma_Phim = '" . $_GET["Ma_Phim"] . "'";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    header('Location: http://localhost/quanLyBanVeXemPhim/DS_Phim.php');
?>