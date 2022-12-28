CREATE DATABASE  IF NOT EXISTS `first_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `first_database`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: first_database
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `p_watch_c`
--

DROP TABLE IF EXISTS `p_watch_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p_watch_c` (
  `wId` int(11) NOT NULL AUTO_INCREMENT,
  `wPeople` int(11) DEFAULT NULL,
  `wCourse` int(11) DEFAULT NULL,
  PRIMARY KEY (`wId`),
  KEY `wPeople` (`wPeople`),
  KEY `wCourse` (`wCourse`),
  CONSTRAINT `p_watch_c_ibfk_1` FOREIGN KEY (`wPeople`) REFERENCES `peopleoptimized` (`pid`),
  CONSTRAINT `p_watch_c_ibfk_2` FOREIGN KEY (`wCourse`) REFERENCES `courses` (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_watch_c`
--

LOCK TABLES `p_watch_c` WRITE;
/*!40000 ALTER TABLE `p_watch_c` DISABLE KEYS */;
INSERT INTO `p_watch_c` VALUES (1,1,1),(8,2,2),(9,3,3),(10,3,4),(11,4,2),(12,4,2),(13,4,3);
/*!40000 ALTER TABLE `p_watch_c` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 21:59:49
