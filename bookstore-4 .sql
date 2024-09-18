-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 11:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore-4`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสินค้า',
  `pro_name` varchar(255) NOT NULL COMMENT 'ชื่อสินค้า',
  `detail` text NOT NULL COMMENT 'รายละเอียดสินค้า',
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `price` float(8,2) DEFAULT NULL COMMENT 'ราคาสินค้า',
  `amount` int(5) DEFAULT NULL COMMENT 'จำนวนสินค้า',
  `images` varchar(150) DEFAULT NULL COMMENT 'รูปภาพสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `detail`, `type_id`, `price`, `amount`, `images`) VALUES
(000047, 'โชคดีที่มึงได้อ่าน', 'สอนใจ', 002, 390.00, 70, 'img_6539e7c618a5b.jpg'),
(000048, 'Good Vibes Good Life ใช้คลื่นพลังบวกดึงดูดพลังสุข', '', 002, 450.00, 30, 'img_6539e84f15663.gif'),
(000049, 'Manifest : 7 ขั้นตอนสู่ทุกสิ่งที่ปรารถนา', '', 002, 470.00, 24, 'img_6539e8a8152ac.gif'),
(000050, 'พลังแห่งสมองที่สอง', '', 002, 320.00, 17, 'img_6539e9198f7db.gif'),
(000051, 'แค่พายุพัดผ่าน', '', 002, 360.00, 2, 'img_6539e97fe934b.gif'),
(000052, 'เรียนภาษาอังกฤษจากเพลงสากล40เพลง', '', 002, 900.00, 41, 'img_653a051cc744e.gif'),
(000053, '30 บทเรียน: วิชาชีวิต', '', 002, 840.00, 12, 'img_653a05bb96baa.gif'),
(000054, 'ความรู้เบื้องต้นเกี่ยวกับคอมพิวเตอร์และเทคโนโลยีสารสนเทศ ฉบับปรับปรุง', '', 001, 980.00, 5, 'img_653a067933fd4.png'),
(000055, 'พัฒนา IoT บนไมโครคอนโทรลเลอร์ ESP32 ด้วยภาษาไมโครไพทอน', '', 001, 399.00, 14, 'img_653a283a3367a.jpg'),
(000056, 'เขียนโค้ดและพัฒนาแอพพลิเคชันด้วย Visual', '', 001, 169.00, 21, 'img_653a2b0b46dab.jpg'),
(000057, 'การเขียนโปรแกรมภาษา C ขั้นพื้นฐาน', '', 001, 250.00, 10, 'img_653a2b6015be6.jpg'),
(000058, 'มือใหม่ Python เก่งได้ใน 30 วัน', '', 001, 120.00, 69, 'img_653a2ba819d49.jpg'),
(000059, 'อาหารฝรั่ง', '', 003, 295.00, 24, 'img_653a2cebcc6f9.jpg'),
(000060, 'ซุป & สตู', '', 003, 148.00, 30, 'img_653a2d2f82881.jpg'),
(000061, 'อาหารไทย ภาคกลาง', '', 003, 485.00, 17, 'img_653a2f6c8740c.jpg'),
(000062, 'เรียกน้ำย่อย Appetizers', '', 003, 350.00, 28, 'img_653a2fa0468a7.jpg'),
(000063, 'Healthy Eating จานผักสุขภาพ', '', 003, 220.00, 19, 'img_653a2fcb184db.jpg'),
(000064, 'สลัดคลาสสิค', '', 003, 150.00, 54, 'img_653a30058e37a.jpg'),
(000065, 'อุบัติรักฟีโรโมน [Omagaverse]', '', 004, 199.00, 35, 'img_653a30e02d34e.jpeg'),
(000066, 'ผมเป็นนักฆ่า ฟื้นมาเป็นเมียบอส', '', 004, 199.00, 60, 'img_653a31088bd8a.jpeg'),
(000067, 'โลจิสติ(ก)ด(ส์)เมียร์ ♡ [END] #รีไรท์', '', 004, 230.00, 68, 'img_653a313d14846.jpeg'),
(000068, 'ไอ้มาเฟียนั่นผัวผมครับ (ท้องได้)', '', 004, 200.00, 40, 'img_653a3173c7007.jpeg'),
(000069, 'สนพ.FaCai | กลิ่นสี และกาว(น์)หมอ', '', 004, 360.00, 80, 'img_653a319cae9a9.jpg'),
(000070, 'เขามาเชงเม้งที่ข้างๆหลุมผมครับ [yaoi]', '', 004, 180.00, 38, 'img_653a31d0518d1.jpg'),
(000071, 'ทาสเมีย (Yaoi)', '', 004, 399.00, 10, 'img_653a31f9ec4a3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `type_name` varchar(50) NOT NULL COMMENT 'ชื่อประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(001, 'คอมพิวเตอร์'),
(002, 'ความรู้ทั่วไป'),
(003, 'อาหาร'),
(004, 'นิยาย');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทสินค้า', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
