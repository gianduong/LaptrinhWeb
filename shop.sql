-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `ID2` int NOT NULL AUTO_INCREMENT,
  `OrderID2` int NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID2`),
  KEY `FKCart546959` (`OrderID2`),
  CONSTRAINT `FKCart546959` FOREIGN KEY (`OrderID2`) REFERENCES `order` (`ID2`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `chitietdonhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idDH` int DEFAULT NULL,
  `idSP` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idDH` (`idDH`),
  KEY `idSP` (`idSP`),
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`idDH`) REFERENCES `donhang` (`id`),
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonhang`
--

LOCK TABLES `chitietdonhang` WRITE;
/*!40000 ALTER TABLE `chitietdonhang` DISABLE KEYS */;
INSERT INTO `chitietdonhang` VALUES (3,17,2,1),(4,17,3,2),(5,18,2,3),(6,18,28,2),(7,19,17,2),(8,20,23,1),(9,20,24,3),(10,21,23,1),(11,21,24,1),(12,21,36,1),(13,22,23,1),(14,22,24,1),(15,22,36,1),(16,23,23,1),(17,23,24,1),(18,23,36,1),(19,24,23,1),(20,24,24,1),(21,24,36,1),(22,25,23,1),(23,25,24,1),(24,25,36,1);
/*!40000 ALTER TABLE `chitietdonhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Age` int NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `donhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaymua` date DEFAULT NULL,
  `trangthai` varchar(30)  DEFAULT NULL,
  `hinhthucgiaohang` varchar(30)  DEFAULT NULL,
  `hinhthucthanhtoan` varchar(30)  DEFAULT NULL,
  `diachinguoinhan` varchar(100)  DEFAULT NULL,
  `sdtKH` varchar(30) DEFAULT NULL,
  `idThanhvien` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idThanhvien` (`idThanhvien`),
  CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idThanhvien`) REFERENCES `thanhvien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES (6,'2020-12-13','chưa giao hàng','giao hàng nhanh','chuyển khoản','số 30 ngõ 79 tổ 13 hà đông hà nội','0912538989',3),(7,'2020-12-13','chưa giao hàng','giao hàng nhanh','chuyển khoản','74 Trần phú Hà Đông Hà Nội','0912538989',3),(8,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 30 ngõ 79 tổ 13 hà đông hà nội','01293984594',3),(9,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 1 Tôn Đức Thắng Hà Nội','01293848595',3),(10,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 30 ngõ 79 tổ 13','0912538989',3),(11,'2020-12-13','chưa giao hàng','giao hàng nhanh','trực tiếp','số 1 Tôn Đức Thắng Hà Nội','0912538989',3),(12,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 30 ngõ 79 tổ 13 hà đông hà nội','0912538989',1),(13,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 30 ngõ 79 tổ 13 hà đông hà nộia','01239384586',4),(14,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 9 Ngô Thì Nhậm','0912538989',3),(15,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 30 Nguyễn Trãi Hà Nội','0912538989',3),(16,'2020-12-13','chưa giao hàng','giao bình thường','trực tiếp','Số 38 Tôn Đức Thắng','test thật',4),(17,'2020-12-13','chưa giao hàng','giao bình thường','chuyển khoản','số 310 Trường Chinh','test thật',4),(18,'2020-12-14','chưa giao hàng','giao bình thường','trực tiếp','Học viện bưu chính viễn thông','0912538989',1),(19,'2020-12-28','chưa giao hàng','giao bình thường','chuyển khoản','tại nhà','0924114788',1),(20,'2020-12-28','chưa giao hàng','giao bình thường','chuyển khoản','nhà của mạnh','0129312785',3),(21,'2020-12-28','chưa giao hàng','giao nhanh','trực tiếp','lân lân lân','0912538989',3),(22,'2020-12-28','chưa giao hàng','giao bình thường','trực tiếp','lân lân lân','213214',3),(23,'2020-12-28','chưa giao hàng','giao nhanh','chuyển khoản','số 30 ngõ 79 tổ 13 hà đông hà nộia','213214',3),(24,'2020-12-28','chưa giao hàng','giao bình thường','chuyển khoản','số 30 ngõ 79 tổ 13 hà đông hà nội','test thật',1),(25,'2020-12-28','chưa giao hàng','giao nhanh','trực tiếp','số 30 ngõ 79 tổ 13 hà đông hà nội','213214',1);
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lienhe`
--

DROP TABLE IF EXISTS `lienhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `lienhe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(45)  DEFAULT NULL,
  `ngayphanhoi` date DEFAULT NULL,
  `tieude` varchar(45)  DEFAULT NULL,
  `noidung` varchar(128)  DEFAULT NULL,
  `trangthai` varchar(50)  DEFAULT NULL,
  `idThanhvien` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idThanhvien` (`idThanhvien`),
  CONSTRAINT `lienhe_ibfk_1` FOREIGN KEY (`idThanhvien`) REFERENCES `thanhvien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lienhe`
--

LOCK TABLES `lienhe` WRITE;
/*!40000 ALTER TABLE `lienhe` DISABLE KEYS */;
INSERT INTO `lienhe` VALUES (1,'Hiệp','2020-12-14','góp ý','góp ý nhỏ thôi','đã phản hồi',1),(2,'Mạnh','2020-12-14','góp ý','góp ý từ Mạnh\r\n','chưa phản hồi',3);
/*!40000 ALTER TABLE `lienhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `ID2` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `Id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID2`),
  KEY `FKOrder556711` (`CustomerID`),
  CONSTRAINT `FKOrder556711` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phanhoi`
--

DROP TABLE IF EXISTS `phanhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `phanhoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noidung` varchar(255) DEFAULT NULL,
  `idThanhvien` int DEFAULT NULL,
  `idLienhe` int DEFAULT NULL,
  `ngayphanhoi` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idThanhvien` (`idThanhvien`),
  KEY `idLienhe` (`idLienhe`),
  CONSTRAINT `phanhoi_ibfk_1` FOREIGN KEY (`idThanhvien`) REFERENCES `thanhvien` (`id`),
  CONSTRAINT `phanhoi_ibfk_2` FOREIGN KEY (`idLienhe`) REFERENCES `lienhe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanhoi`
--

LOCK TABLES `phanhoi` WRITE;
/*!40000 ALTER TABLE `phanhoi` DISABLE KEYS */;
INSERT INTO `phanhoi` VALUES (2,'cảm ơn bạn đã góp ý',1,1,'2020-12-14');
/*!40000 ALTER TABLE `phanhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenSP` varchar(50)  DEFAULT NULL,
  `gia` int DEFAULT NULL,
  `theloai` varchar(50)  DEFAULT NULL,
  `linkHA` varchar(255) DEFAULT NULL,
  `luotmua` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (2,'áo phông nữ cộc tay',130000,'áo phông','img/aophong2.jpg',12),(3,'áo phông nữ hình in',100000,'áo phông','img/aophong3.jpg',32),(4,'chân váy xẻ',80000,'chân váy','img/chanvay1.jpg',43),(6,'chân váy ngắn có nếp',91000,'chân váy','img/chanvay3.jpg',123),(7,'Khăn len có ren',134000,'phụ kiện','img/phukien1.jpg',345),(12,'Áo khoác xanh',210000,'áo khoác','img/aokhoac2.jpg',123),(13,'áo khoác hồng',210000,'áo khoác','img/aokhoac3.jpg',23),(14,'quần jeans bò',80000,'quần jeans','img/jeans1.jpg',983),(15,'quần jeans bò cao cấp',140000,'quần jeans','img/jeans2.jpg',23),(16,'áo len kẻ sọc cam',150000,'áo len','img/len1.jpg',14),(17,'áo len vàng tươi',139000,'áo len','img/len2.jpg',54),(18,'áo len xám',100000,'áo len','img/len3.jpg',23),(19,'áo len đỏ',139000,'áo len','img/len4.jpg',4),(20,'áo len hình in WHAT',120000,'áo len','img/len6.jpg',55),(21,'áo lông cừu đỏ',600000,'áo lông cừu','img/longcuu1.jpg',6),(22,'áo lông cừu nâu',600000,'áo lông cừu','img/longcuu2.jpg',4),(23,'áo lông cừu bó người',580000,'áo lông cừu','img/longcuu3.jpg',12),(24,'quần đùi chấm bi',50000,'mặc ở nhà','img/onha3.jpg',445),(25,'quần áo sọc xanh',100000,'mặc ở nhà','img/onha1.jpg',23),(26,'quần áo đỏ xanh',100000,'mặc ở nhà','img/onha2.jpg',235),(27,'quần vải 100% cotton',380000,'quần vải','img/quanvai1.jpg',236),(28,'quần vải nữ UNIQLO',400000,'quần vải','img/quanvai2.jpg',235),(29,'quần vải nữ hình in',250000,'quần vải','img/quanvai3.jpg',237),(30,'sơ mi nữ trẻ trung',120000,'áo sơ mi','img/somi1.jpg',218),(31,'áo sơ mi nữ đi chơi',120000,'áo sơ mi','img/somi2.jpg',982),(32,'áo sơ mi đi làm',110000,'áo sơ mi','img/somi3.jpg',332),(34,'áo khoác nâu',220000,'áo khoác','img/aokhoac1.jpg',128),(35,'áo phông nữ hình in 100% cotton	',120000,'áo phông','img/aophong1.jpg',221),(36,'tất chân dài',40000,'phụ kiện','img/phukien2.jpg',234),(37,'tất chân cho giày lười',45000,'phụ kiện','img/phukien3.jpg',43),(38,'chân váy nữ tính',50000,'chân váy','img/chanvay2.jpg',22);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanhvien`
--

DROP TABLE IF EXISTS `thanhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `thanhvien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) DEFAULT NULL,
  `sdt` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `chucvu` varchar(30) DEFAULT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`taikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=23;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanhvien`
--

LOCK TABLES `thanhvien` WRITE;
/*!40000 ALTER TABLE `thanhvien` DISABLE KEYS */;
INSERT INTO `thanhvien` VALUES (1,'Lê Sĩ Hiệp','0942215556','shounen@gmail.com','admin','admin','21232f297a57a5a743894a0e4a801fc3','Hà Đông'),(2,'Nguyễn Giản Dương','0912538989','duong@gmail.com','user','duong','3e48f1ce9f015cc59bd7bf0605681f28','Hà Nội'),(3,'Mai Đức Mạnh','015334289','manh@gmail.com','user','maisemanh','75f0817da202dfff6c1e8bf6ec5fad8f','Hà Nội'),(4,'Nguyễn Phúc Lân','048123758','lan@gmail.con','user','landeptrai','73f50c9f17291ce93ee52e50b73f6f63','Hà Nội'),(5,'Đinh Phương Hạ','0942215557','pha@gmail.com','admin','admin1','21232f297a57a5a743894a0e4a801fc3','Hà Nội'),(6,'Hiệp','0123948559','hiep@gmail.com','mod','mod','ad148a3ca8bd0ef3b48c52454c493ec5','Hà Nội'),(9,'Nguyễn Ngọc Thạch','0129384858','thach@gmail.com','user','thach','4f55d6dea8a3dc91c48ac7a382cb094a','Hà Nội'),(10,'Đỗ Toàn Năng ','0921238475','doto@gmail.com','user','do123','202cb962ac59075b964b07152d234b70','Hà Nội');
/*!40000 ALTER TABLE `thanhvien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08  0:00:39
