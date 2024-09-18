<!-- นำเข้าไฟล์ conn.php เพื่อทำการเชื่อมต่อกับฐานข้อมูล MySQL -->
<?php require 'conn.php' ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>รายการสินค้า</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php require 'menu_search.php' ?>
    <div class="container">
        <br><br>
        <div class="row">
            <?php
                //คำสั่งการแสดงการค้นหาข้อมูล
                 //ถ้าไม่มีค่าที่ส่งมา (หรือค่านั้นเป็น null) จะกำหนดให้ $key_word เป็นสตริงว่าง ('').
                 $key_word = isset($_POST['keyword']) ? $_POST['keyword'] : '';
                 if ($key_word != '') {
                     // ใช้ $key_word ในการค้นหาข้อมูลตามประเภทสินค้า
                     $sql = "SELECT * FROM product
                             JOIN type ON product.type_id = type.type_id
                             WHERE type.type_id = '$key_word'
                             ORDER BY product.pro_id";
                 } else {
                     // SQL query ไม่มีเงื่อนไขค้นหา
                     $sql = "SELECT * FROM product
                             JOIN type ON product.type_id = type.type_id
                             ORDER BY pro_id";
                 }
            
            $result = mysqli_query($conn, $sql);
            if (!$result) {
                die('Query failed: ' . mysqli_error($conn));
            }
            while ($row=mysqli_fetch_array($result)){
            ?>

            <div class="col-sm-3">
                <img src="./images/<?php echo $row['image']?>" width="250px" width="200px"><br>
                รหัส: <?php echo $row['pro_id']?> <br>
                ประเภทสินค้า:<?php echo $row['type_name']?> <br>
                <h6 class="text-success">ชื่อสินค้า:<?php echo $row['pro_name']?> <br></h6>

                ราคา: <?php echo $row['price']?> บาท <br>
                <!-- ราคา: <?php echo number_format($price,3)?> บาท <br> กำหนด Format ตัวเลข -->
                <a class="btn btn-outline-success mt-2"
                    href="product_detail.php?id=<?php echo $row['pro_id']?>">รายละเอียด</a>
                <br><br><br>
                
            </div>
            
            <?php } mysqli_close($conn); ?>
        </div>
    </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

