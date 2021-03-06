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
INSERT INTO `donhang` VALUES (6,'2020-12-13','ch??a giao h??ng','giao h??ng nhanh','chuy???n kho???n','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???i','0912538989',3),(7,'2020-12-13','ch??a giao h??ng','giao h??ng nhanh','chuy???n kho???n','74 Tr???n ph?? H?? ????ng H?? N???i','0912538989',3),(8,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???i','01293984594',3),(9,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 1 T??n ?????c Th???ng H?? N???i','01293848595',3),(10,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 30 ng?? 79 t??? 13','0912538989',3),(11,'2020-12-13','ch??a giao h??ng','giao h??ng nhanh','tr???c ti???p','s??? 1 T??n ?????c Th???ng H?? N???i','0912538989',3),(12,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???i','0912538989',1),(13,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???ia','01239384586',4),(14,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 9 Ng?? Th?? Nh???m','0912538989',3),(15,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 30 Nguy???n Tr??i H?? N???i','0912538989',3),(16,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','tr???c ti???p','S??? 38 T??n ?????c Th???ng','test th???t',4),(17,'2020-12-13','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 310 Tr?????ng Chinh','test th???t',4),(18,'2020-12-14','ch??a giao h??ng','giao b??nh th?????ng','tr???c ti???p','H???c vi???n b??u ch??nh vi???n th??ng','0912538989',1),(19,'2020-12-28','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','t???i nh??','0924114788',1),(20,'2020-12-28','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','nh?? c???a m???nh','0129312785',3),(21,'2020-12-28','ch??a giao h??ng','giao nhanh','tr???c ti???p','l??n l??n l??n','0912538989',3),(22,'2020-12-28','ch??a giao h??ng','giao b??nh th?????ng','tr???c ti???p','l??n l??n l??n','213214',3),(23,'2020-12-28','ch??a giao h??ng','giao nhanh','chuy???n kho???n','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???ia','213214',3),(24,'2020-12-28','ch??a giao h??ng','giao b??nh th?????ng','chuy???n kho???n','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???i','test th???t',1),(25,'2020-12-28','ch??a giao h??ng','giao nhanh','tr???c ti???p','s??? 30 ng?? 79 t??? 13 h?? ????ng h?? n???i','213214',1);
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
INSERT INTO `lienhe` VALUES (1,'Hi???p','2020-12-14','g??p ??','g??p ?? nh??? th??i','???? ph???n h???i',1),(2,'M???nh','2020-12-14','g??p ??','g??p ?? t??? M???nh\r\n','ch??a ph???n h???i',3);
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
INSERT INTO `phanhoi` VALUES (2,'c???m ??n b???n ???? g??p ??',1,1,'2020-12-14');
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
INSERT INTO `sanpham` VALUES (2,'??o ph??ng n??? c???c tay',130000,'??o ph??ng','img/aophong2.jpg',12),(3,'??o ph??ng n??? h??nh in',100000,'??o ph??ng','img/aophong3.jpg',32),(4,'ch??n v??y x???',80000,'ch??n v??y','img/chanvay1.jpg',43),(6,'ch??n v??y ng???n c?? n???p',91000,'ch??n v??y','img/chanvay3.jpg',123),(7,'Kh??n len c?? ren',134000,'ph??? ki???n','img/phukien1.jpg',345),(12,'??o kho??c xanh',210000,'??o kho??c','img/aokhoac2.jpg',123),(13,'??o kho??c h???ng',210000,'??o kho??c','img/aokhoac3.jpg',23),(14,'qu???n jeans b??',80000,'qu???n jeans','img/jeans1.jpg',983),(15,'qu???n jeans b?? cao c???p',140000,'qu???n jeans','img/jeans2.jpg',23),(16,'??o len k??? s???c cam',150000,'??o len','img/len1.jpg',14),(17,'??o len v??ng t????i',139000,'??o len','img/len2.jpg',54),(18,'??o len x??m',100000,'??o len','img/len3.jpg',23),(19,'??o len ?????',139000,'??o len','img/len4.jpg',4),(20,'??o len h??nh in WHAT',120000,'??o len','img/len6.jpg',55),(21,'??o l??ng c???u ?????',600000,'??o l??ng c???u','img/longcuu1.jpg',6),(22,'??o l??ng c???u n??u',600000,'??o l??ng c???u','img/longcuu2.jpg',4),(23,'??o l??ng c???u b?? ng?????i',580000,'??o l??ng c???u','img/longcuu3.jpg',12),(24,'qu???n ????i ch???m bi',50000,'m???c ??? nh??','img/onha3.jpg',445),(25,'qu???n ??o s???c xanh',100000,'m???c ??? nh??','img/onha1.jpg',23),(26,'qu???n ??o ????? xanh',100000,'m???c ??? nh??','img/onha2.jpg',235),(27,'qu???n v???i 100% cotton',380000,'qu???n v???i','img/quanvai1.jpg',236),(28,'qu???n v???i n??? UNIQLO',400000,'qu???n v???i','img/quanvai2.jpg',235),(29,'qu???n v???i n??? h??nh in',250000,'qu???n v???i','img/quanvai3.jpg',237),(30,'s?? mi n??? tr??? trung',120000,'??o s?? mi','img/somi1.jpg',218),(31,'??o s?? mi n??? ??i ch??i',120000,'??o s?? mi','img/somi2.jpg',982),(32,'??o s?? mi ??i l??m',110000,'??o s?? mi','img/somi3.jpg',332),(34,'??o kho??c n??u',220000,'??o kho??c','img/aokhoac1.jpg',128),(35,'??o ph??ng n??? h??nh in 100% cotton	',120000,'??o ph??ng','img/aophong1.jpg',221),(36,'t???t ch??n d??i',40000,'ph??? ki???n','img/phukien2.jpg',234),(37,'t???t ch??n cho gi??y l?????i',45000,'ph??? ki???n','img/phukien3.jpg',43),(38,'ch??n v??y n??? t??nh',50000,'ch??n v??y','img/chanvay2.jpg',22);
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
INSERT INTO `thanhvien` VALUES (1,'L?? S?? Hi???p','0942215556','shounen@gmail.com','admin','admin','21232f297a57a5a743894a0e4a801fc3','H?? ????ng'),(2,'Nguy???n Gi???n D????ng','0912538989','duong@gmail.com','user','duong','3e48f1ce9f015cc59bd7bf0605681f28','H?? N???i'),(3,'Mai ?????c M???nh','015334289','manh@gmail.com','user','maisemanh','75f0817da202dfff6c1e8bf6ec5fad8f','H?? N???i'),(4,'Nguy???n Ph??c L??n','048123758','lan@gmail.con','user','landeptrai','73f50c9f17291ce93ee52e50b73f6f63','H?? N???i'),(5,'??inh Ph????ng H???','0942215557','pha@gmail.com','admin','admin1','21232f297a57a5a743894a0e4a801fc3','H?? N???i'),(6,'Hi???p','0123948559','hiep@gmail.com','mod','mod','ad148a3ca8bd0ef3b48c52454c493ec5','H?? N???i'),(9,'Nguy???n Ng???c Th???ch','0129384858','thach@gmail.com','user','thach','4f55d6dea8a3dc91c48ac7a382cb094a','H?? N???i'),(10,'????? To??n N??ng ','0921238475','doto@gmail.com','user','do123','202cb962ac59075b964b07152d234b70','H?? N???i');
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
