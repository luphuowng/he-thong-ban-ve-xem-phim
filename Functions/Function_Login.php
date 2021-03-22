<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<?php
    session_start();
    $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());

    $sql = "SELECT * FROM user WHERE Ten_Dang_Nhap = '". $_POST["Ten_Dang_Nhap"] ."'";

    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $user = mysqli_fetch_assoc($result);

    $_SESSION['user_la'] = $user;

    if(!empty($_POST["Ten_Dang_Nhap"])){
        if($_POST["Mat_Khau"] == $user['Mat_Khau']){
            if($user["Ma_Vai_Tro"]=="2"){
                header('Location: http://localhost/quanLyBanVeXemPhim/index_admin.php');
            }else{
                header('Location: http://localhost/quanLyBanVeXemPhim/index_tv.php');
            }
        }else{
            header('Location: http://localhost/quanLyBanVeXemPhim/Login.php');
        }
    }else{
        header('Location: http://localhost/quanLyBanVeXemPhim/Login.php');
    }
?>

