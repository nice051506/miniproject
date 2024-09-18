<?php
require 'conn.php';
require 'menu.php';
$re_name = $_POST['re_name'];
$re_topic = $_POST['re_topic'];



//อัปโหลดรูปภาพ
if (is_uploaded_file($_FILES['img']['tmp_name'])) { //ช็คว่ามีการอัปโหลดไฟล์รูปภาพหรือไม่ 
    $new_image_name = 'img_'.uniqid().'.'.PATHINFO(basename($_FILES['img']['name']), PATHINFO_EXTENSION);
    $image_upload_path = "./images/".$new_image_name;
    move_uploaded_file($_FILES['img']['tmp_name'], $image_upload_path);
    // $upload_path=$image_upload_path.$new_image_name;
    } else {
    $new_image_name = ''; //เป็นสตริงว่างหากไม่มีการอัปโหลดไฟล์รูปภาพ
    }

// เพิ่มข้อมูลในตาราง product
$sql = "INSERT INTO report(re_name,re_topic)
VALUES ('$re_name','$re_topic')";
$result = mysqli_query($conn,$sql);
if ($result) {
echo "<script> alert('บันทึกข้อมูลเรียบร้อย'); </script>";
echo "<script> window.location='report.php'; </script>";
}else{
echo "<script> alert('ไม่สามารถบันทึกข้อมูลได้'); </script>";
}
// ปิดการเชื่อมต่อ
mysqli_close($conn);
?>
