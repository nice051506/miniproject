<?php require 'menu.php' ?>
<?php 
require 'conn.php';
// 1.--------------- เพิ่มคำสั่ง-----------------------------
    $idEdit = $_GET['id'];
    $sql2 = "SELECT * FROM product WHERE pro_id='$idEdit' ";
    $result2 = mysqli_query($conn,$sql2);
    $rowEdit=mysqli_fetch_array($result2);
    $TypeID = $rowEdit['type_id'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>แก้ไขข้อมูลสินค้า</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- <style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    </style> -->
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-info h4 text-center mb-4 mt-4" role="alert">
                    แก้ไขข้อมูลสินค้า
                </div>

                <form method="POST" action="update_product.php" enctype="multipart/form-data">
                    <label>รหัสสินค้า:</label>
                    <!-- อ่านได้อย่างเดียวไม่ให้แก้ไข readonly -->
                    <input type="text" name="pro_id" class="form-control" readonly
                        value=<?php echo $rowEdit['pro_id'] ?>><br>
                    <label>ชื่อสินค้า:</label>
                    <!-- 2.----- เพิ่มคำสั่ง การแสดงค่าข้อมูลที่ต้องการแก้ไข----------------------------->
                    <input type="text" name="pname" class="form-control" value=<?php echo $rowEdit['pro_name'] ?>><br>
                    <label>รายละเอียดสินค้า:</label>
                    <input type="text" name="detail" class="form-control" value=<?php echo $rowEdit['detail'] ?>><br>

                    <!-- 5.--------------- เพิ่มคำสั่ง การแสดงค่าข้อมูลประเภทสินค้า--------------------->
                    <label>ประเภทสินค้า:</label>
                    <select class="form-select" name="typeid">
                        <option selected>เลือกประเภทสินค้า</option>
                        <?php
                            $sql="SELECT * FROM type ORDER BY type_name";
                            $result=mysqli_query($conn,$sql);
                            while ($row=mysqli_fetch_array($result)){
                            // เพิ่ม
                            $pro_TypeID = $row['type_id'];
                        ?>
                        <option value="<?php echo $row['type_id']?>" <?php if($TypeID==$pro_TypeID) {
                                echo "selected=selected";}?>>

                            <?php echo $row['type_name'] ?>
                        </option>
                        <?php
                            }
                            mysqli_close($conn);
                        ?>
                    </select>


                    <label>ราคาสินค้า:</label>
                    <input type="number" name="price" class="form-control" value=<?php echo $rowEdit['price'] ?>><br>
                    <label>จำนวนสินค้า:</label>
                    <input type="number" name="amount" class="form-control" value=<?php echo $rowEdit['amount'] ?>><br>
                    <label>รูปภาพ:</label><br>
                    <!-- 4. แสดงรูปภาพ -->
                    <img src="images/<?php echo $rowEdit['image']?>" width="120"> <br><br>
                    <input type="file" name="img"><br>
                    <!-- <input type="text" name="txtimg" class="form-control" value=<?php echo $rowEdit['image'] ?>><br> -->
                    <!-- 3. ซ่อนไฟล์รูปภาพไม่ให้แสดง -->
                    <input type="hidden" name="txtimg" class="form-control" value=<?php echo $rowEdit['image'] ?>><br>
                    <input type="submit" class="btn btn-primary" value="บันทึก">
                    <!-- <button type="reset" class="btn btn-warning">Cancel</button> -->
                    <a href="admin_showproduct.php" class="btn btn-warning" role="button">ยกเลิก</a>

                </form>

            </div>

        </div>


    </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

