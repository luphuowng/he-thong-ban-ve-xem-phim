
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
                        document.getElementById("errorHotline").innerHTML = "Số điện thoại không hợp lệ";
                        validHotline = false;
                    }else{
                        document.getElementById("errorHotline").innerHTML = "";
                        return Hotline;
                    }
                    return false;
                }

                function checkForm(){
                    if(checkHotline()){
                        swal("Thêm rạp khoản thành công", "Chúc mừng bạn đã thêm rạp thành công!", "success");
                    }else{
                        swal("Thêm rạp chưa thành công", "Vui lòng xem lại thông tin đúng form quy định!", "error");
                    }
                }   
            </script>

            <div class="Col-left">
                <button type="button" class="btn btn-outline-warning" style="width:220px;margin:28px 0px 20px 50px;height:60px">
                    Thêm mới rạp
                </button>
            </div>
            <div class="Col-right">
                <form action="Functions/Function_Add_Rap.php" method="POST">
                    <div class="Form">
                        <div class="left" id="left">Tên rạp:</div>
                        <div class="right"><input name="Ten_Rap" id="Ten_Rap" type="text" placeholder="Nhập tên rạp" required></div>
                        <span class="error"></span>
                        <div class="left">Địa chỉ:</div>
                        <div class="right"><input name="Dia_Chi" id="Dia_Chi" type="text" placeholder="Nhập địa chỉ" required></div>
                        <span class="error"></span>
                        <div class="left">Hotline:</div>
                        <div class="right"><input name="Hotline" id="Hotline" type="text" oninput="checkHotline();" placeholder="Nhập số Hotline" required></div>
                        <span class="error" id="errorHotline"></span>
                    </div>
                    <input class="btn btn-outline-success" type="submit" name="btn_Add_User" value="Thêm rạp"  onclick="checkForm();
                                    "style="width:120px; height:50px;font-size:12px;margin:30px 0px 0px 255px">
            </div>
                </form>
