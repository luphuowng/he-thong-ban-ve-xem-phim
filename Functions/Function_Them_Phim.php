<?php
            $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());
            
            if(isset($_GET["action"]) && $_GET["action"] = "them"){
                if($_FILES["fileImage"]['error'] > 0){
                    echo "Bạn đã upload thất bại";
                }else{
                    global $path;
                    $file = $_FILES["fileImage"]["tmp_name"];
                    $path = "Image/" . $_FILES["fileImage"]["name"];
                    move_uploaded_file($file, $path);
                }   
            }

            $sql = "INSERT INTO phim(Ten_Phim, Noi_Dung_Phim, Ma_Loai, Ma_Rap, Poster) VALUES('"
                . $_POST["Ten_Phim"] ."', '"
                . $_POST["Noi_Dung_Phim"] ."', '"
                . $_POST["Loai_Phim"] ."', '"
                . $_POST["Rap_Phim"] ."', '"
                . $path ."')";

            $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

            header('Location: http://localhost/QuanLyBanVeXemPhim/DS_Phim.php');
?>