-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 07:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
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
  `price` float(10,2) DEFAULT NULL COMMENT 'ราคาสินค้า',
  `amount` int(5) DEFAULT NULL COMMENT 'จำนวนสินค้า',
  `image` varchar(50) DEFAULT NULL COMMENT 'รูปภาพสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `detail`, `type_id`, `price`, `amount`, `image`) VALUES
(000037, 'Harley-Davidson Superlow 2023', 'Brand : Harley-Davidson\r\nModel : Super low\r\nVariant : Harley-Davidson Super low Standard\r\nLaunch : Time 2020\r\nเครื่องยนต์ : 883 cc\r\nกำลังไฟสูงสุด(พีเอส) : -\r\nตัวเลือกการเปิดเครื่องยนต์ : Kick\r\nOn Sale : Yes\r\nรูปแบบเกียร์ : 5-Speed\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km) : -', 001, 489000.00, 4, 'H1.jpg'),
(000038, 'Harley-Davidson', 'Brand', 001, 509000.00, 2, 'H2.png'),
(000039, 'Harley-Davidson Iron 1200 2023', 'Brand : Harley-Davidson\r\nModel : Harley-Davidson Iron 1200\r\nVariant : Harley-Davidson IRON 1200 Standard\r\nLaunch Time : 2020\r\nเครื่องยนต์ : 1202 cc\r\nกำลังไฟสูงสุด(พีเอส) : -\r\nตัวเลือกการเปิดเครื่องยนต์ : Kick\r\nOn Sale : Yes\r\nรูปแบบเกียร์ : 5-Speed\r\nประเภทน้ำมันเชื้อเพลิง : -\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km) : -', 001, 572500.00, 3, 'H3.png'),
(000040, 'Harley-Davidson 1200 Custom 2023', 'Brand : Harley-Davidson\r\nModel : 1200 Custom\r\nVariant : Harley-Davidson 1200 Custom Standard\r\nLaunch Time : 2020\r\nเครื่องยนต์ : 1202 cc\r\nกำลังไฟสูงสุด(พีเอส) : -\r\nตัวเลือกการเปิดเครื่องยนต์ : Kick\r\nOn Sale : Yes\r\nรูปแบบเกียร์ : 5-Speed\r\nประเภทน้ำมันเชื้อเพลิง : -\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km) : -\r\n', 001, 572500.00, 2, 'H4.jpg'),
(000041, 'Harley-Davidson ROADSTER 2023', 'Brand	: Harley-Davidson\r\nModel	: ROADSTER\r\nVariant	: Harley-Davidson ROADSTER Standard\r\nLaunch Time	: 2020\r\nเครื่องยนต์	: 1202 cc\r\nกำลังไฟสูงสุด(พีเอส) : -\r\nตัวเลือกการเปิดเครื่องยนต์	: Kick\r\nOn Sale	: Yes\r\nรูปแบบเกียร์	: 5-Speed\r\nประเภทน้ำมันเชื้อเพลิง	: -\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	: -\r\n', 001, 609000.00, 2, 'H5.jpg'),
(000042, 'Harley-Davidson Forty-Eight 2023', 'Brand	:Harley-Davidson\r\nModel	:Forty-Eight\r\nVariant	:Harley-Davidson Forty-Eight Standard\r\nLaunch Time	:2020\r\nเครื่องยนต์	:1202 cc\r\nกำลังไฟสูงสุด(พีเอส)	:59.2 bhp\r\nตัวเลือกการเปิดเครื่องยนต์	:Kick\r\nOn Sale	:Yes\r\nรูปแบบเกียร์	:5-Speed\r\nประเภทน้ำมันเชื้อเพลิง	:-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	:-\r\n', 001, 636500.00, 2, 'H6.jpg'),
(000043, 'Harley-Davidson Sport 2023', 'Brand	Harley-Davidson\r\nModel	Harley-Davidson Sport\r\nVariant	Harley-Davidson Sport Sportster S 2021\r\nLaunch Time	2021\r\nเครื่องยนต์	-\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	-\r\nOn Sale	\r\nรูปแบบเกียร์	6 ระดับ\r\nประเภทน้ำมันเชื้อเพลิง	Benzene\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 002, 709000.00, 1, 'H7.jpg'),
(000044, 'Harley-Davidson Street Bob 2023', 'Brand	Harley-Davidson\r\nModel	Street Bob\r\nVariant	Harley-Davidson Street Bob Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1745 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 791000.00, 1, 'H8.jpg'),
(000045, 'Harley-Davidson Low Rider 2023', 'Brand	Harley-Davidson\r\nModel	Low Rider\r\nVariant	Harley-Davidson Low Rider Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1745 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 836500.00, 1, 'H9.png'),
(000046, 'Harley-Davidson Softail 2023', 'Brand	Harley-Davidson\r\nModel	Harley-Davidson Softail\r\nVariant	Harley-Davidson Softail Standard 2023\r\nLaunch Time	2023\r\nเครื่องยนต์	1746 cc 93.8PS Milwaukee-Eight 107 แบบ 4 จังหวะ 2 สูบ V-Twin พร้อมระบบ\r\nกำลังไฟสูงสุด(พีเอส)	93.8PS\r\nตัวเลือกการเปิดเครื่องยนต์	Electric\r\nOn Sale	\r\nรูปแบบเกียร์	อัตราทดของโซ่ 34/46\r\nประเภทน้ำมันเชื้อเพลิง	Benzene\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	6.92 L/100km\r\n', 001, 850000.00, 1, 'H10.jpg'),
(000047, 'Harley-Davidson Pan America 1250 2023', 'Brand	Harley-Davidson\r\nModel	Harley-Davidson Pan America 1250\r\nVariant	Harley-Davidson Pan America 1250 standard 2021\r\nLaunch Time	2021\r\nเครื่องยนต์	-\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	-\r\nOn Sale	\r\nรูปแบบเกียร์	6 ระดับ (constant mesh)\r\nประเภทน้ำมันเชื้อเพลิง	Benzene\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 003, 899000.00, 2, 'H11.png'),
(000048, 'Harley-Davidson Sport Glide 2023', 'Brand	Harley-Davidson\r\nModel	Sport Glide\r\nVariant	Harley-Davidson Sport Glide Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1745 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 909500.00, 1, 'H12.png'),
(000049, 'Harley-Davidson FXDR 114 2023', 'Brand	Harley-Davidson\r\nModel	FXDR 114\r\nVariant	Harley-Davidson FXDR 114 Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 969000.00, 1, 'H13.jpg'),
(000050, 'Harley-Davidson Fat Bob 2023', 'Brand	Harley-Davidson\r\nModel	Fat Bob\r\nVariant	Harley-Davidson Fat Bob Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 973000.00, 1, 'H14.jpg'),
(000051, 'Harley-Davidson Breakout 2023', 'Brand	Harley-Davidson\r\nModel	Breakout\r\nVariant	Harley-Davidson Breakout Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 1046000.00, 3, 'H15.jpg'),
(000052, 'Harley-Davidson Heritage Classic 2023', 'Brand	Harley-Davidson\r\nModel	Heritage Classic\r\nVariant	Harley-Davidson Heritage Classic Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 1055000.00, 1, 'H16.jpg'),
(000053, 'Harley-Davidson Fat Boy 2023', 'Brand	Harley-Davidson\r\nModel	Fat Boy\r\nVariant	Harley-Davidson Fat Boy Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 1109000.00, 1, 'H17.png'),
(000054, 'Harley-Davidson Road King 2023', 'Brand	Harley-Davidson\r\nModel	Road King\r\nVariant	Harley-Davidson Road King Standard\r\nประเภท	Sport Touring\r\nLaunch Time	2020\r\nเครื่องยนต์	1745 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 1182000.00, 1, 'H18.png'),
(000055, 'Harley-Davidson Touring 2023', 'Brand	Harley-Davidson\r\nModel	Harley-Davidson Touring\r\nVariant	Harley-Davidson Touring Electra Glide Standard 2021\r\nประเภท	Cruiser\r\nLaunch Time	2021\r\nเครื่องยนต์	-\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	-\r\nOn Sale	\r\nรูปแบบเกียร์	6 เกียร์\r\nประเภทน้ำมันเชื้อเพลิง	Benzene\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 005, 1189000.00, 1, 'H19.jpg'),
(000056, 'Harley-Davidson Road King Special 2023', 'Brand	Harley-Davidson\r\nModel	Road King Special\r\nVariant	Harley-Davidson Road King Special Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 1328000.00, 1, 'H20.jpg'),
(000057, 'Harley-Davidson Street Glide Special 2023', 'Brand	Harley-Davidson\r\nModel	Street Glide Special\r\nVariant	Harley-Davidson Street Glide Special Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 1391000.00, 1, 'H21.png'),
(000058, 'Harley-Davidson Street Glide 2023', 'Brand	Harley-Davidson\r\nModel	Harley-Davidson Touring\r\nVariant	Harley-Davidson Street Glide 2021\r\nLaunch Time	2021\r\nเครื่องยนต์	-\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	-\r\nOn Sale	\r\nรูปแบบเกียร์	6 เกียร์\r\nประเภทน้ำมันเชื้อเพลิง	Benzene\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 1399000.00, 1, 'H22.png'),
(000059, 'Harley-Davidson Road Glide Special 2023', 'Brand	Harley-Davidson\r\nModel	Road Glide Special\r\nVariant	Harley-Davidson Road Glide Special Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 001, 1455000.00, 1, 'H23.png'),
(000060, 'Harley-Davidson ULTRA LIMITED 2023', 'Brand	Harley-Davidson\r\nModel	ULTRA LIMITED\r\nVariant	Harley-Davidson ULTRA LIMITED Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 1528000.00, 1, 'H24.png'),
(000061, 'Harley-Davidson Road Glide 2023', 'Brand	Harley-Davidson\r\nModel	Road Glide\r\nVariant	Harley-Davidson Road Glide Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1745 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 1866000.00, 1, 'H25.jpg'),
(000062, 'Harley-Davidson ROAD Glide Ultra 2023', 'Brand	Harley-Davidson\r\nModel	ROAD Glide Ultra\r\nVariant	Harley-Davidson ROAD Glide Ultra Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 2296000.00, 1, 'H26.jpg'),
(000063, 'Harley-Davidson Ultra Limited Low 2023', 'Brand	Harley-Davidson\r\nModel	Ultra Limited Low\r\nVariant	Harley-Davidson Ultra Limited Low Standard\r\nLaunch Time	2020\r\nเครื่องยนต์	1868 cc\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	Kick\r\nOn Sale	Yes\r\nรูปแบบเกียร์	6-Speed\r\nประเภทน้ำมันเชื้อเพลิง	-\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 2346000.00, 1, 'H27.jpg'),
(000064, 'Harley-Davidson CVO 2023', 'Brand	Harley-Davidson\r\nModel	Harley-Davidson CVO\r\nVariant	Harley-Davidson CVO Ultra Limited 2021\r\nLaunch Time	2021\r\nเครื่องยนต์	-\r\nกำลังไฟสูงสุด(พีเอส)	-\r\nตัวเลือกการเปิดเครื่องยนต์	-\r\nOn Sale	\r\nรูปแบบเกียร์	6 เกียร์\r\nประเภทน้ำมันเชื้อเพลิง	Benzene\r\nอัตราสิ้นเปลืองน้ำมันเชื้อเพลิง(L/100km)	-\r\n', 004, 3159000.00, 1, 'H28.png');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `re_name` varchar(255) NOT NULL COMMENT 'ชื่อรุ่น',
  `re_topic` text NOT NULL COMMENT 'ปัญหาที่พบ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`re_name`, `re_topic`) VALUES
('Harley-Davidson Superlow 2023', ''),
('Harley-Davidson Superlow 2023', ''),
('Harley-Davidson Superlow 2023', 'เครื่องยนต์ไม่ทำงาน'),
('Harley-Davidson Iron 1200 2023', 'เครื่องยนต์ทำงานไม่ปกติ'),
('Harley-Davidson Forty-Eight 2023', 'เครื่องยนต์ไม่แน่น');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `type_name` varchar(50) NOT NULL COMMENT 'ชื่อประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(001, 'CRUISER'),
(002, 'SPORT'),
(003, 'ADVENTURE'),
(004, 'SPORT TOURING'),
(005, 'TOURING');

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
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทสินค้า', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
