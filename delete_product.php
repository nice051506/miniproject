<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ลบข้อมูลสินค้า</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

    <?php
	require ('conn.php');
	$idDel = $_GET['id']; //สร้างตัวแปรสำหรับรับค่ารหัส (id)ที่ส่งมา

	$sql= "DELETE FROM product WHERE pro_id='$idDel' ";
	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error($conn));
 		if ($result){
			echo "<script>alert('ลบข้อมูลเรียบร้อย');window.location='admin_showproduct.php';</script>";
 		}else{
			echo "ไม่สามารถลบข้อมูลได้" .mysqli_error($conn);
 		}

		mysqli_close($conn);
	?>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>



