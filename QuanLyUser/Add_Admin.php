<!DOCTYPE html>
<html>
    <head>
        <title>Đăng kí thành viên</title>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <style type="text/css">
            .left
            {
                padding-left: 80px;
                padding-top: 0px;
                color: PeachPuff;
                font-size: 14px;   
                left: 0;
            }
            .left2
            {
                padding-left: 79px;
                padding-top: 25px;
                color: PeachPuff;
                font-size: 14px;
                margin-bottom: 5px;   
            }
            .right
            {
                padding-left: 180px;
                padding-top: 0px;
            }
            .Col-left
            {
                padding-top: 20px;
                width: 50%;
                background-color: none;
                padding-bottom: 20px;
                float: left;
                border-right: 1px solid black;
                font-family: cursive;
            }
            .Col-right
            {
                padding-bottom: 75px;
                padding-top: 20px;
                display: block;
                float: right;
                width: 50%;
                background-color: none;
                font-family: cursive;
            }
            input
            {
                width: 60%;
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
            input[type="radio"]
            {
                padding: 20px 0px 0px 0px;
            }
            .error
            {
                color: red;
                font-size: 10px;
                padding-left: 180px;
            }
            input[type="radio"]
            {
                box-sizing: border-box;
                padding: 0;
            }
            .row
            {
                border: 2px solid black;
                width: 95%;
                height: 35px;
            }
            .STT
            {
                border-right: 1px solid black;
                width: 50px;
                text-align: center;
                display: inline-block;
            }
            .ID
            {
                border-right: 1px solid black;
                width: 80px;
                text-align: center;
                display: inline-block;
            }
            .TDN
            {
                border-right: 1px solid black;
                width: 160px;
                display: inline-block;
                text-align: center;
            }
            .Ho_Ten
            {
                border-right: 1px solid black;
                width: 200px;
                display: inline-block;
                text-align: center;
            }
            .Gioi_Tinh
            {
                border-right: 1px solid black;
                width: 80px;
                display: inline-block;
                text-align: left;
            }
            .Ngay_Sinh
            {
                border-right: 1px solid black;
                width: 110px;
                display: inline-block;
                text-align: center;
            }
            .SDT
            {
                border-right: 1px solid black;
                width: 120px;
                display: inline-block;
                text-align: center;
            }
            .Dia_Chi
            {
                width: 190px;
                display: inline-block;
                text-align: center;
                border-right: 1px solid black;
            }
            .edit
            {
                width: 50px;
                display: inline-block;
                text-align: center;
            }
            a
            {
                text-decoration: none;
            }
            
        </style>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script type="text/javascript">
            var validUserName = false;
            var validPassword = false;
            var validFullName = false;
            var validPhone = false;
            var validAddress = false;

            function checkUserName(){
                var RegexUserName = /^[a-zA-Z][a-zA-Z0-9]+$/;
                var Ten_Dang_Nhap = document.getElementById("Ten_Dang_Nhap").value;
                if(!RegexUserName.test(Ten_Dang_Nhap)){
                    document.getElementById("errorUserName").innerHTML = "Tên đăng nhập không có khoảng trắng và bắt đầu là một kí tự";
                    validUserName = false;
                }else{
                    document.getElementById("errorUserName").innerHTML = "";
                    return Ten_Dang_Nhap;
                }
                return false;
            }

            function checkPassword(){
                var RegexPassword = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/;
                var Mat_Khau = document.getElementById("Mat_Khau").value;
                var userName = document.getElementById("errorUserName").value;
                if(!RegexPassword.test(Mat_Khau)){
                    document.getElementById("errorPassword").innerHTML = "Mật khẩu phải từ 8-16 kí tự gồm: ký tự, số, vài kí tự đặc biệt, có chữ hoa và thường.";
                    return false;
                }else{
                    document.getElementById("errorPassword").innerHTML = "";
                    return Mat_Khau;
                }
                return false;
            }


            function checkFullName(){
                var RegexpName = /^[A-Za-z][^0-9]+$/;
                var Ho_Ten = document.getElementById("Ho_Ten").value;
                if(!RegexpName.test(Ho_Ten)){
                    document.getElementById("errorFullName").innerHTML = "Họ tên không hợp lệ";
                    validFullName = false;
                }else{
                    document.getElementById("errorFullName").innerHTML = "";
                    return Ho_Ten;
                }
                return false;
            }

            function checkPhone(){
                var RegexpPhone = /^[0][0-9]+$/;
                var SDT = document.getElementById("SDT").value;
                if(!RegexpPhone.test(SDT) || SDT.length != 10){
                    document.getElementById("errorPhone").innerHTML = "Số điện thoại không hợp lệ";
                    validPhone = false;
                }else{
                    document.getElementById("errorPhone").innerHTML = "";
                    return SDT;
                }
                return false;
            }

            function checkForm(){
                if(checkUserName() && checkPassword() &&
                    checkFullName() && checkPhone()){
                    var i = document.forms[0].slNgay.selectedIndex;
                    var slNgay = document.forms[0].slNgay[i].value;
                    
                    swal("Thêm nhân viên thành công", "Chúc mừng bạn đã thêm thành viên thành công!", "success");
                }else{
                    swal("Thêm nhân viên chưa thành công", "Vui lòng điền lại thông tin đúng form quy định!", "error");
                }
            }   
        </script>
    </head>
    <body>
        <?php 
            include("Nav_Admin.php");
        ?>
        <div class="container" style="background-color: rgba(66, 52, 52, 0.897);
                                        color:	rgb(176,176,176); border-radius:15px; 
                                        margin:100px 0px 100px 200px;-webkit-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                                        -moz-box-shadow: 3px -4px 30px 0px rgba(168,114,146,1);
                                        box-shadow: 3px -4px 30px 0px rgba(168,114,146,1); height:550px">
            <h2 class="display-5" style="padding: 50px 0px 0px 0px; text-decoration:underline;text-align:center; font-family:cursive; color:PapayaWhip;">
                Đăng kí thành viên
            </h2></br>
            <form action="Function_AddUser.php" method="POST">
                <div class="Col-left">
                    <div class="left" id="left">Tên đăng nhập:</div></br>
                    <div class="right"><input name="Ten_Dang_Nhap" id="Ten_Dang_Nhap" type="text" oninput="checkUserName();" placeholder="Nhập tên đăng nhập" required></div>
                    <span class="error" id="errorUserName"></span>
                    <div class="left">Mật khẩu:</div>
                    <div class="right"><input name="Mat_Khau" id="Mat_Khau" oninput="checkPassword(); return false" type="password" placeholder="Nhập mật khẩu" required></div>
                    <span class="error" id="errorPassword"></span>
                    <div class="left">Họ tên:</div>
                    <div class="right"><input name="Ho_Ten" id="Ho_Ten" type="text" oninput="checkFullName();" placeholder="Nhập họ tên" required></div>
                    <span class="error" id="errorFullName"></span>
                    <div class="left">Giới tính:</div>
                    <div class="">
                        <div class="form-check">
                            <input type="radio" name="Gioi_Tinh" value="1" checked="checked">Nam
                            <input type="radio" name="Gioi_Tinh" value="0">Nữ
                        </div>
                    </div>
                </div>
                <div class="Col-right">
                    <div class="left">Ngày sinh:</div></br>
                    <div class="right">
                        <select name="slNgay" id="slNgay" style="border-radius:5px; background-color:Gainsboro; margin-right:2px">
                            <option value="">Chọn ngày</option>
                            <script language="javascript">
                                for(var num=1; num<=31; num++){
                                    if(num <=9){
                                        document.write("<option value= 0" + num + ">" + "0" + num + "</option>");
                                    }else{
                                        document.write("<option value='" + num + "'>" + num + "</option>");
                                    }
                                }
                            </script>
                        </select>
                        <select name="slThang" id="slThang" style="border-radius:5px; background-color:Gainsboro;margin-right:2px">
                            <option value="">Chọn tháng</option>
                            <script language="javascript">
                                for(var num=1; num<=12; num++){
                                    if(num <=9){
                                        document.write("<option value= 0" + num + "'>" + '0' + num + "</option>");
                                    }else{
                                        document.write("<option value='" + num + "'>" + num + "</option>");
                                    }
                                }
                            </script>
                        </select>
                        <select name="slNam" id="slNam" style="border-radius:5px; background-color:Gainsboro;">
                            <option value="">Chọn năm</option>
                            <script language="javascript">
                                for(var num=1900; num<=2002; num++){
                                    document.write("<option value='" + num + "'>" + num + "</option>");
                                }
                            </script>
                        </select>
                    </div>
                <div class="left2">Số điện thoại:</div>
                <div class="right"><input name="SDT" id="SDT" type="text" oninput="checkPhone();" placeholder="Nhập số điện thoại" required></div>
                <span class="error" id="errorPhone"></span></br>
                <div class="left">Địa chỉ:</div>
                <div class="right"><input name="Dia_Chi" id="Dia_Chi" type="text" oninput="checkAddress();" placeholder="Nhập địa chỉ"></div>
                <input class="btn btn-outline-warning" type="submit" name="btn_Add_User" value="Thêm nhân viên"  onclick="checkForm();"style="width:120px; height:30px;font-size:12px;margin:30px 0px 0px 240px">
                </div>
            </form>
        </div>
    </body>
</html>