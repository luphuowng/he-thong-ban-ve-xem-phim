<?php session_start();?>
<!DOCTYPE html>
<html>
    <head>
    <style type="text/css">
            .Col-left
            {
                padding-top: 80px;
                width: 20%;
                background-color: none;
                padding-bottom: 20px;
                float: left;
                font-family: cursive;
            }
            .Col-right
            {
                padding-bottom: 75px;
                padding-top: 20px;
                padding-left: 120px;
                display: block;
                float: right;
                width: 70%;
                background-color: none;
                font-family: cursive;
            }
            .left
            {
                padding-left: 30px;
                color: PeachPuff;
                font-size: 14px;   
                left: 0;
            }
            .right
            {
                padding-left: 90px;
            }
            .Form
            {
                padding-top: 30px;
                width: 50%;
                background-color: none;
                padding-bottom: 5px;
                float: left;
                font-family: cursive;
            }
            input
            {
                width: 100%;
                border: 1px solid rgb(199, 191, 191);
                border-radius: 5px;
                height: 25px;
                padding-left: 5px;
                margin-bottom: 5px;
            }
            input:hover
            {
                background-color: LightGray;
            }
            .error
            {
                color: red;
                font-size: 10px;
                padding-left: 180px;
            }
            .edit{
                width: 50px;
                display: inline-block;
                text-align: center;
            }
        </style>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script type="text/javascript">
            var validHotline = false;

            function checkHotline(){
                var RegexpHotline = /^[1][0-9]+$/;
                var Hotline = document.getElementById("Hotline").value;
                if(!RegexpHotline.test(Hotline) || Hotline.length != 10){
                    document.getElementById("errorHotline").innerHTML = "S??? hotline kh??ng h???p l???";
                    validHotline = false;
                }else{
                    document.getElementById("errorHotline").innerHTML = "";
                    return Hotline;
                }
                return false;
            }

            function checkForm(){
                if(checkHotline()){
                    swal("Th??m ra??p khoa??n th??nh c??ng", "Ch??c m???ng b???n ???? th??m ra??p th??nh c??ng!", "success");
                }else{
                    swal("Th??m ra??p ch??a th??nh c??ng", "Vui l??ng xem l???i th??ng tin ????ng form quy ?????nh!", "error");
                }
            }   
        </script>
    </head>

    <body>
        <?php 
            if(empty($_SESSION)){
                header('Location: http://localhost/quanLyBanVeXemPhim/Login.php');
            }
            include("Style_Admin.php");
            if(isset($_GET["action"]) && $_GET["action"]=="capnhat"){
                $sql = "UPDATE rap_chieu SET "
                            . "Ten_Rap = '" . $_POST["Ten_Rap"] . "', "
                            . "Dia_Chi = '" . $_POST["Dia_Chi"] . "', "
                            . "Hotline = '" . $_POST["Hotline"] . "'";

                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
                
                $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

                header('Location: http://localhost/quanLyBanVeXemPhim/DS_Rap.php');
            }        
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                            color:	rgb(176,176,176); border-radius:15px; 
                            margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:400px">
            <div class="Col-left">
                <button type="button" class="btn btn-outline-warning" style="width:220px;margin:35px 0px 20px 100px;height:60px">
                    S????a th??ng tin ra??p
                </button>
            </div>
            <div class="Col-right">
                <form action="Edit_Rap.php?action=capnhat" method="POST">
                    <div class="Form">
                        <?php 
                            $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());
                            $sql = "SELECT * FROM rap_chieu WHERE Ma_Rap='" . $_GET["Ma_Rap"] . "'";
                            $result = mysqli_query($conn, $sql);

                            while($row = mysqli_fetch_array($result))
                            {
                        ?>
                        <div class="left" id="left">T??n ra??p:</div>
                        <div class="right">
                            <input name="Ten_Rap" id="Ten_Rap" type="text" placeholder="Nh???p t??n ra??p" value="<?php echo $row["Ten_Rap"];?>"required>
                        </div>
                        <span class="error" id="errorUserName"></span>
                        <div class="left">??i??a chi??:</div>
                        <div class="right">
                            <input name="Dia_Chi" id="Dia_Chi" type="text" placeholder="Nh???p ??i??a chi??" value="<?php echo $row["Dia_Chi"];?>" required>
                        </div>
                        <span class="error" id="errorPassword"></span>
                        <div class="left">Hotline:</div>
                        <div class="right">
                            <input name="Hotline" id="Hotline" type="text" oninput="checkHotline();" placeholder="Nh???p s???? Hotline" value=" <?php echo $row["Dia_Chi"];?>" required>
                        </div>
                        <span class="error" id="errorHot_Line"></span>
                    </div>
                    <input class="btn btn-outline-success" type="submit" name="btn_Add_User" value="C????p nh????t"  onclick="checkForm();
                                    "style="width:120px; height:50px;font-size:12px;margin:30px 0px 0px 255px">
            </div>
                            <?php 
                        }
                            ?>
        </div>
    </body>
</html>