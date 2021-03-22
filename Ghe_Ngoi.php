<?php session_start(); ?>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Đặt vé
        </title>
        <style type="text/css">
            .thuong{
                width: 100%;
                margin: 40px 0px 20px 35px;
            }
            .left
                {
                    padding-left: 10px;
                    color: PeachPuff;
                    font-size: 14px;   
                    left: 0;
                }
            .n1{
                display: block;
                float:left;
                margin-left:150px;
            }
            .note{
                margin: 20px 20px 30px 10px;
            }
        </style>
    </head>
    <body>
        <?php 
            include("Nav_tv.php");
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                            color:	rgb(176,176,176); border-radius:15px; 
                            margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                            box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:1600px">
        <p style="color:OldLace; text-align:center; margin:50px 0px 15px 0px;">-</p>
                <div class="note">
                    <div style="font-size:20px; color:pink; margin: 30px 0px 30px 50px;font-style: italic;">~ Chú thích ~</div>
                    <div class="n1">
                        <div class="left">Ghế thường</div>
                        <button type="button" class="btn btn-light" style="width:40px; height:40px; margin: 20px 20px 0px 20px"></button>
                    </div>
                    <div class="n1">
                        <div class="left">Ghế vip</div>
                        <button type="button" class="btn btn-warning" style="width:40px; height:40px; margin: 20px 20px 0px 22px"></button>
                    </div>
                    <div class="n1">
                        <div class="left">Ghế đã đặt</div>
                        <button type="button" class="btn btn-danger" style="width:40px; height:40px; margin: 20px 20px 0px 22px"></button>
                    </div>
                    <div class="n1">
                        <div class="left">Ghế đang chọn</div>
                        <button type="button" class="btn btn-info" style="width:40px; height:40px; margin: 20px 20px 0px 22px"></button>
                    </div>
                </div>
                <p style="color:OldLace; text-align:center; margin:150px 0px 0px 0px;">-</p>
        <button type="button" class="btn btn-dark" style="width:550px;margin:50px 0px 20px 280px; height:60px; font-size:30px;">
            Màn hình
        </button>
            <div class="ghe">
                <div class="thuong">
                    <?php 
                        for($i=0; $i<=5; $i++){
                            for($g=0; $g<=7; $g++){
                                if($g<8){
                                ?>
                                <button type="button" class="btn btn-secondary" name="<?php echo "G" . $g;?>" style="width:70px; height:50px; margin: 20px 20px 20px 30px">
                                    <?php echo ("G" . $g);?>
                                </button>
                                <?php
                                }
                            }
                        }
                    ?>
                </div>
                <div class="vip">
                    <?php 
                        for($i=0; $i<1; $i++){
                            for($g=0; $g<=9; $g++){    
                                if($g<10){
                                ?>
                                <button type="button" class="btn btn-secondary" name="<?php echo "V" . $g;?>" style="width:70px; height:50px; margin: 20px 10px 20px 20px">
                                    <?php echo ("V" . $g);?>
                                </button>
                                <?php
                                }
                            }
                        }
                    ?>     
                </div>
                <a href="Ve.php">
                    <button type="button" class="btn btn-outline-success" style="width:150px;margin:80px 0px 20px 480px; height:60px; font-size:20px;">
                        Đặt vé
                    </button>
                </a>
            </div>
        </div>
    </body>
</html>