<?php require 'conn.php' ?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin:แสดงข้อมูลสินค้า</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <?php require 'menu.php' ?>
    <div class="container ">
        <div class="alert alert-info h4 text-center mb-4 mt-4" role="alert">แสดงข้อมูลสินค้า</div>
        <a href="form_product.php" class="btn btn-primary mb-4"> เพิ่มข้อมูลสินค้า</a>
        <table class="table table-striped">
            <tr class='text-center'>
                <th>รหัสสินค้า</th>
                <th>ชื่อสินค้า</th>
                <th>ประเภทสินค้า</th>
                <th>ราคา</th>
                <th>จำนวน</th>
                <th>ภาพ</th>
                <th>ลบ</th>
                <th>แก้ไข</th>
            </tr>

            <!-- คำสั่งแบ่งหน้าเพจ Pagination -->
            <?php
            //กำหนดตัวแปร จำนวนแถวข้อมูลต่อหน้าคือ 4 และเช็คว่าหากมีค่าตัวแปร GET[‘page’] ให้เท่ากับตัวแปร GET 
            // ไม่มีให้เท่ากับ 1 โดยค่านี้เป็นค่าตัวแปรที่กำหนดว่า อยู่หน้าที่เท่าไหร
            $perpage=4;
            if (isset($_GET['page'])){
                $page = $_GET['page'];
            }else{
                $page = 1;
            }
            //ค่าตัวแปร $start เป็นการกำหนดจุดเริ่มต้นในการค้นหา select ข้อมูล โดยเริ่มต้นตำแหน่งแถวที่ 0 
            // เช่น มีทั้งหมด 6 แถว จะนับได้ ดังนี้ 0,1,2,3,4,5 เป็นต้น ดังนั้นตัวแปร start จะคำนวณจาก หน้าที่เราอยู่ (หน้าที่เท่าไหร) – 1 * จำนวนแถวข้อมูลต่อหน้า 
            // ผมสมมุติว่า อยู่หน้า ที่ 2 แถวข้อมูล แบ่งหน้าละ 4 ดังนั้น จะคำนวณได้ดังนี้ (2-1) * 4 = 4 ฉะนั้นแล้ว ตัวแปร start จะเริ่มที่ 4 
            $start = ($page -1) * $perpage;

            //คำสั่งการแสดงการค้นหาข้อมูล
            //ถ้าไม่มีค่าที่ส่งมา (หรือค่านั้นเป็น null) จะกำหนดให้ $key_word เป็นสตริงว่าง ('').
            $key_word = isset($_POST['keyword']) ? $_POST['keyword'] : ''; //
            //ถ้า $key_word ไม่ใช่สตริงว่าง (''), จะใช้ SQL query ที่มีเงื่อนไขการค้นหาตามคำค้นหาที่ผู้ใช้ป้อน.
            if ($key_word != '') {
                $sql = "SELECT * FROM product
                        JOIN type ON product.type_id = type.type_id
                        WHERE pro_id='$key_word' OR pro_name LIKE '%$key_word%' OR price <= '$key_word' 
                        OR type.type_name LIKE '%$key_word%'
                        ORDER BY pro_id
                        LIMIT $start, $perpage";
            } else {
                //ถ้า $key_word เป็นสตริงว่าง (''), จะใช้ SQL query ที่ไม่มีเงื่อนไขการค้นหา แสดงทั้งหมด
                $sql = "SELECT * FROM product
                        JOIN type ON product.type_id = type.type_id
                        ORDER BY pro_id
                        LIMIT $start, $perpage";
            }
            //เพิ่ม การเลือกข้อมูลโดยเริ่มที่ $start ถึง $perpage 
            // $sql = "SELECT * FROM product,type WHERE product.type_id = type.type_id  ORDER BY pro_id limit {$start}, {$perpage} " ;
            $result = mysqli_query($conn,$sql);
            while ($row=mysqli_fetch_array($result)){
            ?>
            <tr>
                <td><?php echo $row['pro_id']?></td>
                <td><?php echo $row['pro_name']?></td>
                <td><?php echo $row['type_name']?></td>
                <td><?php echo $row['price']?></td>
                <td><?php echo $row['amount']?></td>
                <td><img src="./images/<?php echo $row['image']?>" width="100px" width="150px"></td>
                <td><a href="delete_product.php?id=<?php echo $row['pro_id']?>" class="btn btn-danger mb-4"
                        onclick="return confirm('คุณต้องการลบใช่หรือไม่?')">ลบ</a></td>
                <td><a href="edit_product.php?id=<?php echo $row['pro_id']?>" class="btn btn-warning mb-4">แก้ไข</a></td>
            </tr>
            <?php } // mysqli_close($conn); ?>
        </table>

        <!-- การเลือกข้อมูล เพื่อทำการแบ่งหน้าเพจ Pagination -->
        <?php
            $sql1 = "SELECT * FROM product";
            $result1 = mysqli_query($conn,$sql1);
            $total_reccord = mysqli_num_rows($result1);
            // วิธีคำนวณการแบ่งหน้า กรณีมีหน้าทั้งหมด 6 แถว และจะทำการแบ่งหน้า หน้าละ 5 แถว 
            // ให้นำจำนวนแบ่งหน้าไปหาร จำนวนทั้งหมดโดยถ้ามีเศษให้ปัดขึ้น
            $total_page = ceil($total_reccord / $perpage);
            ?>
        <!-- แบ่งหน้า Bootstrap ด้วย Pagination -->
        <br>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item">
                    <!-- เป็นปุ่มกด ย้อนกลับไปหน้าแรก โดยใส่ลิงค์ page=1 (ให้ค่าตัวแปร $_GET[‘page’] เก็บหมายเลขหน้าที่คลิกปัจจุบัน -->
                    <a class="page-link" href="admin_showproduct.php?page=1" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">ก่อนหน้า</span>
                    </a>
                </li>
                <!-- จำนวนหน้าที่มี -->
                <?php for ($i=1; $i<=$total_page; $i++)  {?>
                <li class="page-item"><a class="page-link"
                        href="admin_showproduct.php?page=<?php echo $i?>"><?php echo $i?></a></li>
                <?php } ?>

                <li class="page-item">
                    <a class="page-link" href="admin_showproduct.php?page=<?php echo $total_page?>" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">ถัดไป</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <?php mysqli_close($conn); ?>
</body>

</html>