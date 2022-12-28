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
-- Table structure for table `peopleoptimized`
--

DROP TABLE IF EXISTS `peopleoptimized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peopleoptimized` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(40) NOT NULL,
  `pborn` date NOT NULL,
  `pgender` enum('M','F','Other') NOT NULL,
  `pweight` decimal(5,2) NOT NULL,
  `pheight` decimal(3,2) NOT NULL,
  `pnacionality` varchar(20) NOT NULL DEFAULT 'Brasil',
  `favouriteCourse` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peopleoptimized`
--

LOCK TABLES `peopleoptimized` WRITE;
/*!40000 ALTER TABLE `peopleoptimized` DISABLE KEYS */;
INSERT INTO `peopleoptimized` VALUES (1,'Rodrigson','1966-03-03','Other',89.30,1.80,'Brasil',1),(2,'Ketlyn','2001-07-03','F',67.20,1.68,'Reino Unido',NULL),(3,'Leôncio','2000-08-19','M',78.50,1.76,'Suíça',NULL),(4,'Niggaaa','1990-12-20','M',92.80,1.90,'Nigéria',NULL),(5,'Kowalski','1986-05-11','M',90.70,1.85,'Madagascar',NULL),(6,'Hilda','1942-07-05','F',55.10,1.56,'Canadá',NULL),(7,'Hermston','1978-12-23','M',69.20,1.70,'Finlândia',NULL),(8,'Muchacha','1996-04-12','F',72.60,1.78,'Porto Rico',NULL),(9,'Bjorn','1995-09-07','M',77.40,1.81,'Noruega',NULL),(10,'Pablito','1975-02-27','Other',85.00,1.82,'Colômbia',NULL);
/*!40000 ALTER TABLE `peopleoptimized` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 21:59:48
