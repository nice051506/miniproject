<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bookstore";

// $servername = "localhost";
// $username = "id21457387_ananped";
// $password = "987654321b_B";
// $dbname = "id21457387_bookstore";


// สร้างการเชื่อมต่อ
$conn = mysqli_connect($servername, $username, $password,$dbname);
//กำหนด charset ให้สามารถใช้งานภาษาไทยได้
mysqli_set_charset($conn,"utf8");
// ตรวจสอบการเชื่อมต่อ
if (!$conn) {
  die("การเชื่อมต่อไม่สำเร็จ: " . mysqli_connect_error());
} else {
  //echo "การเชื่อมต่อสำเร็จ!";
}

// echo "การเชื่อมต่อสำเร็จ";
?>