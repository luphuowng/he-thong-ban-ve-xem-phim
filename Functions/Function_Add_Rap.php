<?php
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());
                                
    $sql = "INSERT INTO rap_chieu(Ten_Rap, Dia_Chi, Hotline) VALUES('"
        . $_POST["Ten_Rap"] ."', '"
        . $_POST["Dia_Chi"] . "', '"
        . $_POST["Hotline"] . "'";
    
    if($result = mysqli_query($conn, $sql)){
        header('Location: http://localhost/QuanLyBanVeXemPhim/DS_Rap.php');
    }else{
        die(mysqli_error($conn));
    }
?>

