<html>
    <head>
        <title>Admin</title>
        <style type="text/css">
            .header
            {
                width: 100%;
                height: 20%;
                background-color: rgb(104, 103, 103);
                border-radius: 5px;
                margin-bottom: 10px;
                border: 1px solid #333333;
            }
            #menu
            {
                width: 20%;
                height: 50%;
                background-color: white;
                border-radius: 5px;
                border: 1px solid rgb(199, 191, 191);
                float: left;
                margin-left: 12px;
            }
            #title-menu
            {
                background-color: rgb(104, 103, 103);
                width: 100%;
                text-align: center;
                padding: 0;
                margin-top: 0px;
                color: white;
            }
            #menu ul 
            {
                background-color: white;
                width: auto;
                padding: 0;
                list-style-type: none;
                text-align: left;
                margin: 0px 0px 0px 0px;
            }
            #menu li 
            {
                width: auto;
                height: 45px;
                line-height: 40px;
                border-bottom: 1px solid #e8e8e8;
                padding: 0 1em;
                list-style-type: none;
            }

            #menu li a 
            {
                text-decoration: none;
                color: #333333;
                font-weight: bold;
                display: block;
            }
            #menu li:hover 
            {
                background-color: darkgrey;
            }
            #menu ul li
            {
                position: relative;
            }
            .sub-menu{
                position: absolute;
                left: 305px;
                top: 0;
                display: none;
                width: 100%;
            }
            .sub-menu li{
                background-color: whitesmoke;
                width: 100%;
                padding: 0;
                list-style-type: none;
                text-align: left;
            }
            #menu li:hover .sub-menu
            {
                display: block;
            }
            .content{
                width: 76%;
                height: 50%;
                background-color: whitesmoke;
                margin-left: 30px;
                float: left;
                border-radius: 5px;
                border: 1px solid rgb(199, 191, 191) ;
                padding-top: 25px;
            }
            .left{
                padding-left: 80px;
                padding-top: 2px;
                color: DimGray;
                font-size: 14px;   
                left: 0;
            }
            .left2{
                padding-left: 80px;
                padding-top: 16px;
                color: DimGray;
                font-size: 14px;   
                left: 0;
            }
            .right{
                padding-left: 180px;
                padding-top: 1px;
            }
            .Col-left{
                margin-top: 0px;
                padding-top: 20px;
                width: 50%;
                background-color: none;
                padding-bottom: 20px;
                float: left;
            }
            .Col-right{
                margin-top: 0px;
                padding-bottom: 75px;
                padding-top: 20px;
                display: block;
                float: right;
                width: 50%;
                background-color: none;
            }
            .submit{
                margin-left: 245px;
                border-radius: 6px;
                margin-top: 25px;
                background-color: white;
                width: 120px;
                height: 25px;
                border-color: LightGray;
                font-size: 12px;
                transition-duration: 0.4s;
            }
            .submit:hover{
                background-color: LightGray;
                color: white;
                font-weight: bold;
            }
            input{
                width: 60%;
                border: 1px solid rgb(199, 191, 191);
                border-radius: 5px;
                height: 25px;
                padding-left: 5px;
                margin-bottom: 5px;
            }
            input:hover{
                background-color: LightGray;
            }
            input[type="radio"]{
                padding: 20px 0px 0px 0px;
            }
            .error{
                color: red;
                font-size: 10px;
                padding-left: 180px;
            }
            .title{
                background-color: none;
                color: black;
                font-size: 15px;
                padding: 0px 30px 0px 40px;
                font-weight: bold;
                font-style: italic;
            }
            span{
                color: DimGray;
                padding-left: 0px;
                
            }
            input[type="radio"] {
                box-sizing: border-box;
                padding: 0;
            }
            .title{
                background-color: none;
                color: black;
                font-size: 15px;
                padding: 0px 30px 15px 40px;
                font-weight: bold;
                font-style: italic;
            }
            span{
                color: DimGray;
                padding-left: 0px;
                
            }
            input[type="radio"] {
                box-sizing: border-box;
                padding: 0;
            }
            .row{
                border: 1px solid black;
                width: 95%;
                height: 20px;
                margin-left: 25px;
            }
            .STT{
                border-right: 1px solid black;
                width: 50px;
                text-align: center;
                display: inline-block;
            }
            .ID{
                border-right: 1px solid black;
                width: 80px;
                text-align: center;
                display: inline-block;
            }
            .TDN{
                border-right: 1px solid black;
                width: 160px;
                display: inline-block;
                text-align: center;
            }
            .Ho_Ten{
                border-right: 1px solid black;
                width: 200px;
                display: inline-block;
                text-align: center;
            }
            .Gioi_Tinh{
                border-right: 1px solid black;
                width: 80px;
                display: inline-block;
                text-align: center;
            }
            .Ngay_Sinh{
                border-right: 1px solid black;
                width: 110px;
                display: inline-block;
                text-align: center;
            }
            .SDT{
                border-right: 1px solid black;
                width: 120px;
                display: inline-block;
                text-align: center;
            }
            .Dia_Chi{
                width: 190px;
                display: inline-block;
                text-align: center;
                border-right: 1px solid black;
            }
            .edit{
                width: 50px;
                display: inline-block;
                text-align: center;
            }
            a{
                text-decoration: none;
            }
            img{
                width: 13px;
                text-align: center;
                padding-left:4px ;
                padding-top: 3px;
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
                    
                    swal("Sửa thông tin thành công", "Chúc mừng bạn sửa thông tin thành công!", "success");
                }else{
                    swal("Sửa thông tin chưa thành công", "Vui lòng điền lại thông tin đúng form quy định!", "error");
                }
            }   
        </script>
    </head>
    
    <body>
        <div class="header">

        </div>
        <div id="menu">
            <ul>
                <li id="title-menu"><a href="#">Admin menu</a></li>
                <li><a href="#">Quản lí phim</a>
                    <ul class=sub-menu>
                        <li><a href="#">Nội dung phim</a></li>
                        <li><a href="#">Lịch chiếu phim</a></li>
                    </ul>
                </li>
                <li><a href="#">Quản lí phòng chiếu</a></li>
                <li><a href="#">Quản lí nhân viên</a></li>
                <li><a href="#">Quản lí thành viên</a></li>
                <li><a href="#">Quản lí đồ ăn</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="title">Sửa thông tin thành viên:</div>
            <form  name="Dangky" action="?controller=thanhvien&action=list" method="POST">
                <div class="Col-left">
                    <div class="left" id="left">Tên đăng nhập:</div>
                    <div class="right"><input name="Ten_Dang_Nhap" type="text" placeholder="Nhập tên đăng nhập" 
                        value="<?php echo $dataID['Ten_Dang_Nhap'];?>" required></div>
                    <span class="error" id="errorUserName"></span>
                    <div class="left">Mật khẩu:</div>
                    <div class="right"><input name="Mat_Khau" id="Mat_Khau" oninput="checkPassword(); return false" type="password" placeholder="Nhập mật khẩu"
                        value="<?php echo $dataID['Mat_Khau']; ?>" required></div>
                    <span class="error" id="errorPassword"></span>
                    <div class="left">Họ tên:</div>
                    <div class="right"><input name="Ho_Ten" id="Ho_Ten" type="text" oninput="checkFullName();" placeholder="Nhập họ tên"
                        value="<?php echo $dataID['Ho_Ten']; ?>"required></div>
                    <span class="error" id="errorFullName"></span>
                    <div class="left">Giới tính:</div>
                    <div class="right">
                        <input type="radio" name="Gioi_Tinh" value="1" checked="checked">Nam
                        <input type="radio" name="Gioi_Tinh" value="0">Nữ
                    </div>
                </div>
                <div class="Col-right">
                    <div class="left">Ngày sinh:</div>
                    <div class="right">
                        <select name="slNgay" id="slNgay">
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
                        <select name="slThang" id="slThang">
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
                        <select name="slNam" id="slNam">
                            <option value="">Chọn năm</option>
                            <script language="javascript">
                                for(var num=1900; num<=2002; num++){
                                    document.write("<option value='" + num + "'>" + num + "</option>");
                                }
                            </script>
                        </select>
                    </div>
                    <div class="left2">Số điện thoại:</div>
                    <div class="right"><input name="SDT" id="SDT" type="text" oninput="checkPhone();" placeholder="Nhập số điện thoại"
                        value="<?php echo $dataID['Ho_Ten']; ?>" required></div>
                    <span class="error" id="errorPhone"></span></br>
                    <div class="left">Địa chỉ:</div>
                    <div class="right"><input name="Dia_Chi" id="Dia_Chi" type="text" placeholder="Nhập địa chỉ"
                        value="<?php echo $dataID['Dia_Chi']; ?>"></div>
                    <input name="btn_Update_User" type ="submit" value="Cập nhật thông tin"  onclick="checkForm();" class="submit">
                </div>
            </form>                    
        </div>
    </body>
</html>