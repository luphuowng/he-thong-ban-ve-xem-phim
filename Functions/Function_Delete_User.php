<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
    $sql = "DELETE FROM user WHERE ID='" . $_GET["ID"] . "'";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    header('Location: http://localhost/quanLyBanVeXemPhim/DS_Admin.php');
?>