<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());
                                
    $sql = "INSERT INTO user(Ten_Dang_Nhap, Mat_Khau, Ho_Ten, Gioi_Tinh, Ngay_Sinh, SDT, Dia_Chi) VALUES('"
        . $_POST["Ten_Dang_Nhap"] ."', '"
        . $_POST["Mat_Khau"] . "', '"
        . $_POST["Ho_Ten"] . "', '"
        . $_POST["Gioi_Tinh"] . "', '"
        . $_POST["Ngay_Sinh"] . "', '"
        . $_POST["SDT"] . "', '"
        . $_POST["Dia_Chi"] ."')";
                    
    if($result = mysqli_query($conn, $sql)){
        header('Location: http://localhost/QuanLyBanVeXemPhim/QuanLyUser/Add_Admin.php');
    }else{
        die(mysqli_error($conn));
    }
?>

