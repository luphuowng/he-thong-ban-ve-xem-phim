<?php 
    if(isset($_SESSION["user_la"]))
        unset($_SESSION["user_la"]);
    session_destroy();
    header('location: http://localhost/quanLyBanVeXemPhim/index.php');
?>