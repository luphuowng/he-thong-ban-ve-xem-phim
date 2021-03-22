<!DOCTYPE html>
<html>
    <head>
        <title>Cinema's The Pink Panther</title>
    </head>
    <body>
        <?php 
            session_start();
            $user = $_SESSION["user_la"];
            echo $user["Ten_Dang_Nhap"];
        ?>
    </body>

</html>