<?php require 'conn.php'?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Detail</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   
</head>

<body>
    <?php require 'menu.php'?>
    <div class="container">
        <div class="row">
            <?php
            $ids=$_GET['id'];
            $sql = "SELECT * FROM product, type WHERE product.type_id = type.type_id and product.pro_id='$ids' ";
            $result = mysqli_query($conn,$sql);
            $row=mysqli_fetch_array($result);
            ?>
            <div class="col-md-5">
                <img src="images/<?php echo $row['image']?>" width="300px" class="mt-5 p-2 my-2 border">
            </div>

            <div class="col-md-7">
                <br><br>
                รหัส: <?php echo $row['pro_id']?> <br>
                <h6 class="text-success">ชื่อสินค้า:<?=$row['pro_name']?> <br></h6>
                ประเภทสินค้า: <?php echo $row['type_name']?> <br>
                รายละเอียดสินค้า: <?php echo $row['detail']?> <br>
                ราคา: <?php echo $row['price']?> บาท <br>
                <a class="btn btn-outline-success mt-2" href="show_product.php">กลับ</a>
                <a class="btn btn-outline-success mt-2" href="#">เพิ่มลงตะกร้า</a>
                <br><br><br>
            </div>

        </div>
    </div>
    <?php          
        mysqli_close($conn);
    ?>
     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

