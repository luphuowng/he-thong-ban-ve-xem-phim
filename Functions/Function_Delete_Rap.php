<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
    $sql = "DELETE FROM rap_chieu WHERE Ma_Rap='" . $_GET["Ma_Rap"] . "'";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    header('Location: http://localhost/quanLyBanVeXemPhim/DS_Rap.php');
?>