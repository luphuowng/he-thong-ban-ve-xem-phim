<html>
    <head>
        <title>Cinema's The Pink Panther</title>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <?php
            $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_errno());
        ?>
    </head>

    <body>
        <?php 
            include ("Nav.php");
        ?>
        <p class="best-seller" style="color: darksalmon; font-size:34px; text-align:center;margin: 30px 0px 30px 0px;">~ Best selling films ~</p>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                <img src="Imgs/Wall-E.jpg" class="d-block w-90" style="padding-left:320px" alt="...">
                </div>
                <div class="carousel-item">
                <img src="Imgs/King_Kong.jpg" class="d-block w-90" style="padding-left:550px" alt="...">
                </div>
                <div class="carousel-item">
                <img src="Imgs/Mac_Biet.jpg" class="d-block w-90" style="padding-left:120px" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <p style="color:OldLace; text-align:center; margin:50 0 15 0;">-----------------------------</p>
        <div class="container-fluid padding">
            <div class="row welcome text-center">
                <div class="col-8">
                    <a href="#" style="color: pink;">~ Movie Selection ~</a>
                </div>
                <hr>
            </div>
            <?php 

                $conn = mysqli_connect("localhost", "root", "", "quanlyphim") or die(mysqli_connect_error());

                $sql = "SELECT * FROM phim";

                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result))
                {
            ?>
            <div class="row" style="float:left;">
                <div class="card text-white bg-secondary mb-3" style="max-width: 18rem; height:340px; left: 0; margin: 25px 100px 25px 25px">
                    <div class="card-header">
                        <a href="Show_Phim.php?Ma_Phim=<?php echo $row["Ma_Phim"];?>" style="color: pink; display:block;"><?php echo $row["Ten_Phim"];?></a>
                    </div>
                    <div class="card-body">
                        <img src="<?php echo $row["Poster"];?>" class="card-img" alt="..." style="width:245px">
                    </div>
                </div>
            </div>
                <?php } ?>
        </div>
    </body>
</html>