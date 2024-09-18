<?php require 'menu.php' ?>
<?php require 'conn.php'?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เพิ่มข้อมูลสินค้า</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- <style>
    .container{
        display:flex;
        justify-content:center;
        align-items:center;
    }
    </style> -->  
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-info h4 text-center mb-4 mt-4" role="alert">
                    เพิ่มข้อมูลสินค้า
                </div>

                <form method="POST" action="insert_product.php" enctype="multipart/form-data">
                    <label>ชื่อสินค้า:</label>
                    <input type="text" name="pname" class="form-control" placeholder="กรอกชื่อสินค้า" required><br>
                    <label>รายละเอียดสินค้า:</label>
                    <input type="text" name="detail" class="form-control" placeholder="กรอกรายละเอียดสินค้า" required><br>
                    <label>ประเภทสินค้า:</label>
                    <select class="form-select" name="typeid">
                        <option selected>เลือกประเภทสินค้า</option>
                        <?php
                    $sql="SELECT * FROM type ORDER BY type_name";
                    $result=mysqli_query($conn,$sql);
                    while ($row=mysqli_fetch_array($result)){
                    ?>
                        <option value="<?php echo $row['type_id'] ?>"> <?php echo $row['type_name'] ?></option>
                        <?php
                            }
                            mysqli_close($conn);
                        ?>
                    </select>
                    <label>ราคาสินค้า:</label>
                    <input type="number" name="price" class="form-control" placeholder="กรอกราคาสินค้า" required><br>
                    <label>จำนวนสินค้า:</label>
                    <input type="number" name="amount" class="form-control" placeholder="กรอกจำนวนสินค้า" required><br>
                    <label>รูปภาพ:</label>
                    <input type="file" name="img" id="img" required><br><br>
                    <input type="submit" value="บันทึก" class="btn btn-primary">
                    <button type="reset" class="btn btn-warning" >ยกเลิก</button>
                </form>
            </div>
        </div>
    </div>
     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>



