       <button type="button" class="btn btn-outline-warning" style="width:350px;margin:40px 0px 100px 380px; height:60px">Danh sách người dùng</button>
        <table class="table table-outline-warning table-active" style="width:90%; text-align:center; margin: 0px 0px 900px 60px; font-size: 15px; border-radius:10px; background-color:rgba(229, 140, 132, 0.697)">
            <thead>
                <tr class="table-dark">
                <th scope="col">STT</th>
                <th scope="col">Tên đăng nhập</th>
                <th scope="col">Vai trò</th>
                <th scope="col">Họ tên</th>
                <th scope="col">Giới tính</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">SDT</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Edit</th>
                </tr>
            </thead>
            <?php
                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());

                $sql = "SELECT * FROM user";

                $result = mysqli_query($conn, $sql);


                while($row = mysqli_fetch_array($result))
                {
            ?>
            <tbody>
                <tr>
                    <th scope="row"><?php static $count = 0; echo $count += 1 ?></th>
                    <td><a href="TTCN.php" style="color: pink;"><?php echo $row["Ten_Dang_Nhap"]?></a></td>
                    <td>
                        <?php 
                            if($row["Ma_Vai_Tro"]=="2"){
                                echo "Admin";
                            }else{
                                echo "Thành viên";
                            }
                        ?>
                    </td>
                    <td><?php echo $row["Ho_ten"] ?></td>
                    <td>
                        <?php
                            if($row["Gioi_Tinh"]=="0"){
                                echo "Nữ";
                            }else{
                                echo "Nam";
                            }
                        ?>
                    </td>
                    <td><?php echo $row["Ngay_Sinh"] ?></td>
                    <td><?php echo "0" . $row["SDT"] ?></td>
                    <td><?php echo $row["Dia_Chi"] ?></td>
                    <td><a href="Edit_Rap.php" style="margin-left:12px"><img src="Icons/edit.png" style="width:15px"></a>|
                     <a href="Functions/Function_Delete_User.php?id=<?php echo $row["ID"];?>" style="margin-left:15px"><img src="Icons/delete.png" style="width:12px"></a></td>
                </tr>
            </tbody>
            <?php 
                }
            ?>
        </table>
