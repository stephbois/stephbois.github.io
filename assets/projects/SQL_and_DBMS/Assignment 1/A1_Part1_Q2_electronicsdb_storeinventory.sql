-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: electronicsdb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `storeinventory`
--

DROP TABLE IF EXISTS `storeinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeinventory` (
  `InventoryID` int NOT NULL AUTO_INCREMENT,
  `StoreID` int NOT NULL,
  `ProductID` int NOT NULL,
  `QuantityInStock` int DEFAULT NULL,
  PRIMARY KEY (`InventoryID`,`StoreID`,`ProductID`),
  KEY `fk_storeinventory_stores_idx` (`StoreID`),
  KEY `fk_storeinventory_products_idx` (`ProductID`),
  KEY `idx_store_products` (`StoreID`,`ProductID`),
  CONSTRAINT `fk_storeinventory_products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `fk_storeinventory_stores` FOREIGN KEY (`StoreID`) REFERENCES `stores` (`StoreID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeinventory`
--

LOCK TABLES `storeinventory` WRITE;
/*!40000 ALTER TABLE `storeinventory` DISABLE KEYS */;
INSERT INTO `storeinventory` VALUES (71,31,41,20),(72,31,42,15),(73,32,43,30),(74,32,44,25),(75,33,45,40),(76,33,46,35),(77,34,47,50),(78,34,48,45),(79,35,49,60),(80,35,50,55),(81,36,51,70),(82,36,52,65),(83,37,53,80),(84,37,54,75),(85,38,55,90),(86,38,56,85),(87,39,57,100),(88,39,58,95),(89,40,59,110),(90,40,60,105);
/*!40000 ALTER TABLE `storeinventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 14:11:25
