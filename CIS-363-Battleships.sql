CREATE DATABASE  IF NOT EXISTS `cis-363` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cis-363`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: cis-363
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `battles`
--

DROP TABLE IF EXISTS `battles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battles` (
  `name` char(30) DEFAULT NULL,
  `date` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battles`
--

LOCK TABLES `battles` WRITE;
/*!40000 ALTER TABLE `battles` DISABLE KEYS */;
INSERT INTO `battles` VALUES ('Denmark Strait','5/24-27/41'),('Guadalcanal','11/15/42'),('North Cape','12/26/43'),('Surigao Strait','10/25/44');
/*!40000 ALTER TABLE `battles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class` char(20) NOT NULL,
  `type` char(5) DEFAULT NULL,
  `country` char(20) DEFAULT NULL,
  `numGuns` int DEFAULT NULL,
  `bore` decimal(3,1) DEFAULT NULL,
  `displacement` int DEFAULT NULL,
  PRIMARY KEY (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('Bismarck','bb','Germany',8,15.0,42000),('Iowa','bb','USA',9,16.0,46000),('Kongo','bc','Japan',8,14.0,32000),('North Carolina','bb','USA',9,16.0,37000),('Renown','bc','Gt. Britain',6,15.0,32000),('Revenge','bb','Gt. Britain',8,15.0,29000),('Tennessee','bb','USA',12,14.0,32000),('Yamato','bb','Japan',9,18.0,65000);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outcomes`
--

DROP TABLE IF EXISTS `outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outcomes` (
  `ship` char(30) DEFAULT NULL,
  `battle` char(30) DEFAULT NULL,
  `result` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outcomes`
--

LOCK TABLES `outcomes` WRITE;
/*!40000 ALTER TABLE `outcomes` DISABLE KEYS */;
INSERT INTO `outcomes` VALUES ('Arizona','Pearl Harbor','sunk'),('Bismarck','Denmark Strait','sunk'),('California','Surigao Strait','ok'),('Duke of York','North Cape','ok'),('Fuso','Surigao Strait','sunk'),('Hood','Denmark Strait','sunk'),('King George V','Denmark Strait','ok'),('Kirishima','Guadalcanal','sunk'),('Prince of Wales','Denmark Strait','damaged'),('Rodney','Denmark Strait','ok'),('Scharnhorst','North Cape','sunk'),('Tennessee','Surigao Strait','ok'),('Washington','Guadalcanal','ok'),('West Virginia','Surigao Strait','ok'),('Yamashiro','Surigao Strait','sunk'),('South Dakota','Guadalcanal','damaged');
/*!40000 ALTER TABLE `outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ships`
--

DROP TABLE IF EXISTS `ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ships` (
  `name` char(30) NOT NULL,
  `class` char(20) DEFAULT NULL,
  `launched` int DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ships`
--

LOCK TABLES `ships` WRITE;
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;
INSERT INTO `ships` VALUES ('California','Tennessee',1921),('Haruna','Kongo',1915),('Hiei','Kongo',1914),('Iowa','Iowa',1943),('Kirishima','Kongo',1915),('Kongo','Kongo',1913),('Missouri','Iowa',1944),('Musashi','Yamato',1942),('New Jersey','Iowa',1943),('North Carolina','North Carolina',1941),('Ramillies','Revenge',1917),('Renown','Renown',1916),('Repulse','Renown',1916),('Resolution','Revenge',1916),('Revenge','Revenge',1916),('Royal Oak','Revenge',1916),('Royal Sovereign','Revenge',1916),('Tennessee','Tennessee',1920),('Washington','North Carolina',1941),('Wisconsin','Iowa',1944),('Yamato','Yamato',1941);
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 14:06:02
