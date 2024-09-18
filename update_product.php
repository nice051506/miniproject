<?php require 'conn.php';
$pro_id=$_POST['pro_id'];
$pname=$_POST['pname'];
$detail=$_POST['detail'];
$typeid=$_POST['typeid'];
$price=$_POST['price'];
$amount=$_POST['amount'];
$txtimg=$_POST['txtimg'];

if(is_uploaded_file($_FILES['img']['tmp_name'])){
    $new_image_name = 'img_'.uniqid().'.'.PATHINFO(basename($_FILES['img']['name']),PATHINFO_EXTENSION);
    $image_upload_path = './image/'.$new_image_name;
    move_uploaded_file($_FILES['img']['tmp_name'],$image_upload_path);
}else{
    $new_image_name = $txtimg;
}

$sql = "UPDATE product SET pro_name='$pname',detail='$detail',
type_id='$typeid', price='$price', amount='$amount', image='$new_image_name' WHERE pro_id='$pro_id'";

$result = mysqli_query($conn,$sql);
if ($result){
    echo "<script>alert(แก้ไขข้อมูลเรียบร้อย);</script>";
    echo "<script>window.location='admin_showproduct.php';</script>";
}else{
    echo"<script>alert('ไม่สามารถแก้ไขข้อมูลได้')</script>";
}
mysqli_close($conn);

?>
