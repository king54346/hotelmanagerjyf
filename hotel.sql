-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotelclass`
--

DROP TABLE IF EXISTS `hotelclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hotelclass` (
  `hotelclassid` int(11) NOT NULL AUTO_INCREMENT,
  `hotelclassname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hotelclassid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelclass`
--

LOCK TABLES `hotelclass` WRITE;
/*!40000 ALTER TABLE `hotelclass` DISABLE KEYS */;
INSERT INTO `hotelclass` VALUES (1,'五星级'),(2,'四星级'),(3,'三星级'),(4,'二星级'),(5,'一星级');
/*!40000 ALTER TABLE `hotelclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteljyf`
--

DROP TABLE IF EXISTS `hoteljyf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hoteljyf` (
  `hotelid` int(11) NOT NULL AUTO_INCREMENT,
  `hotelclassid` int(11) DEFAULT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  `hoteladdress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hotelid`),
  KEY `hoteljyf_hotelclass_hotelclassid_fk` (`hotelclassid`),
  CONSTRAINT `hoteljyf_hotelclass_hotelclassid_fk` FOREIGN KEY (`hotelclassid`) REFERENCES `hotelclass` (`hotelclassid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteljyf`
--

LOCK TABLES `hoteljyf` WRITE;
/*!40000 ALTER TABLE `hoteljyf` DISABLE KEYS */;
INSERT INTO `hoteljyf` VALUES (1,5,'牛','美国'),(2,2,'牛逼啊','北京'),(3,3,'不知道','上海'),(4,4,'秃头','南京'),(5,3,'牛啊','墨西哥');
/*!40000 ALTER TABLE `hoteljyf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-25 20:01:36
