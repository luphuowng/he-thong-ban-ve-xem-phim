<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <?php 
            include("Style_Admin.php");
        ?>
         <style type="text/css">
                .Col-left
                {
                    padding-top: 30px;
                    width: 20%;
                    background-color: none;
                    padding-bottom: 20px;
                    float: left;
                    font-family: cursive;
                }
                .Col-right
                {
                    padding-bottom: 75px;
                    padding-top: 50px;
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
                    padding-bottom: 15px ;
                }
                .Form
                {
                    padding-top: 30px;
                    width: 50%;
                    background-color: none;
                    padding-bottom: 8px;
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
                    margin-bottom: 15px;
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
                function checkForm(){
                    if(!empty('Ten_Rap') && !empty("Noi_Dung_Phim")){
                        swal("Thêm phim thành công", "Chúc mừng bạn đã thêm phim thành công!", "success");
                    }else{
                        swal("Thêm phim chưa thành công", "Vui lòng xem lại thông tin đúng form quy định!", "error");
                    }
                }   
            </script>
    <body>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                                color:	rgb(176,176,176); border-radius:15px; 
                                margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                                -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                                box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:1500px">
          
                <button type="button" class="btn btn-outline-warning" style="width:220px;margin:60px 0px 20px 420px;height:60px">
                    Thêm phim
                </button>
                <p style="color:OldLace; text-align:center; margin:50 0 15 50;">-</p>
                <form action="Functions/Function_Them_Phim.php?action=them" method="POST" enctype="multipart/form-data">
                    <div class="Col-left">
                        <div class="left" id="left">Tên phim:</div>
                        <div class="right"><input name="Ten_Phim" id="Ten_Phim" type="text" placeholder="Nhập tên phim" required style="margin-top: 15px; margin-bottom: 10px; width:300px"></div>
                        <div class="left" id="left">Rạp phim:</div>
                        <select name="Rap_Phim" id="Rap_Phim" style="border-radius:5px; background-color:Gainsboro; margin:20px 0px 20px 90px" required>
                            <option value="">Chọn rạp phim</option>
                            <?php 
                                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());

                                $sql = "SELECT * FROM rap_chieu";

                                $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

                                while($row = mysqli_fetch_array($result))
                                {
                            ?>
                                    <option value=<?php echo $row["Ma_Rap"]?>><?php echo $row["Ten_Rap"]?></option>
                                <?php 
                                }
                                ?>
                        </select>
                        <?php 
                            if(isset($error['Rap_Phim'])){
                                ?>
                                <span class="error"><?php echo $error['fileUpload'];?></span>
                                <?php
                            }
                                ?>
                        <div class="left" id="left">Phòng chiếu:</div>
                        <select name="Loai_Phim" id="Loai_Phim" style="border-radius:5px; background-color:Gainsboro; margin:20px 0px 20px 90px" required>
                            <option value="" >Chọn phòng</option>
                            <?php 
                                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());

                                $sql = "SELECT * FROM phong";

                                $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

                                while($row2 = mysqli_fetch_array($result))
                                {
                            ?>
                                    <option value=<?php echo $row2["Ma_Phong"]?>><?php echo $row2["Ten_Phong"]?></option>
                                <?php 
                                }
                                ?>
                        </select>
                        <div class="left" id="left">Loại phim:</div>
                        <select name="Loai_Phim" id="Loai_Phim" style="border-radius:5px; background-color:Gainsboro; margin:20px 0px 20px 90px" required>
                            <option value="" >Chọn loại phim</option>
                            <?php 
                                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());

                                $sql = "SELECT * FROM loai_phim";

                                $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

                                while($row = mysqli_fetch_array($result))
                                {
                            ?>
                                    <option value=<?php echo $row["Ma_Loai"]?>><?php echo $row["Ten_Loai"]?></option>
                                <?php 
                                }
                                ?>
                        </select>
                        <?php 
                            if(isset($error['Loai_Phim'])){
                                ?>
                                <span class="error"><?php echo $error['fileUpload'];?></span>
                                <?php
                            }
                                ?>
                        <div class="left">Poster phim:</div>
                        <input type="file" name="fileImage" id="fileImage" style=" margin: 20px 0px 20px 90px; border-radius:5px; width:300px; ">
                        <?php 
                            if(isset($error['fileUpload'])){
                                ?>
                                <span class="error"><?php echo $error['fileUpload'];?></span>
                                <?php
                            }
                                ?>
                        <div class="left">Video Trailer:</div>
                        <input type="file" name="VideoUpload" style=" margin: 20px 0px 20px 90px; border-radius:5px;width:300px; ">
                    </div>
                        <div class="Col-right">
                        <div class="mota" >
                            <div class="left">Mô tả phim</div>
                            <div class="right">
                                <textarea name="Noi_Dung_Phim" id="Noi_Dung_Phim" placeholder="Nhập mô tả phim" required style="width:500px; height:160px; margin-top: 20px;; margin-bottom:20px; border-radius:5px">
                            </textarea></br>
                        </div>
                        
                        <div class="left" style="margin-bottom:20px">Ngày chiếu:</div>
                        <div class="right">
                            <input type="date" name="Ngay_Chieu">
                        </div>
                        <div class="left" style="margin-bottom:20px">Giờ bắt đầu chiếu:</div>
                        <div class="right">
                            <input type="time" name="Gio_Bat_Dau">
                        </div>
                        <div class="left" style="margin-bottom:20px">Giờ kết thúc phim:</div>
                        <div class="right">
                            <input type="time" name="Gio_Ket_Thuc">
                        </div>
                    </div>
                    <input class="btn btn-outline-success" type="submit" name="btn_Add_User" value="Thêm phim"  onclick="checkForm();
                                    "style="width:120px; height:50px;font-size:12px;margin:30px 0px 0px 255px">
            </div>
                </form>
    </body>
</html>