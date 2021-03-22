<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());

    $sql = "INSERT INTO user (Ma_Vai_Tro, Ten_Dang_Nhap, Mat_Khau, Ho_Ten, Gioi_Tinh, Ngay_Sinh, SDT, Dia_Chi)
        VALUES('"
            . $_POST["slVaiTro"] ."', '"
            . $_POST["Ten_Dang_Nhap"] . "', '"
            . $_POST["Mat_Khau"] . "', '"
            . $_POST["Ho_Ten"] . "', '"
            . $_POST["Gioi_Tinh"] . "', '"
            . $_POST["slNgay"] . "', '"
            . $_POST["SDT"] . "', '"
            . $_POST["Dia_Chi"] ."')";
   
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
                
    header('Location: http://localhost/QuanLyBanVeXemPhim/Add_Admin.php');
?>