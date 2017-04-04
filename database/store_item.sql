CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `store`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `features` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'red','Gap','Denim'),(2,'floral','Banana Republic','Pants'),(3,'blue','Boss','Sweaters'),(4,'green','Hugo Boss','Skirts'),(5,'black','Taylor','Dresses'),(6,'violet','Rebecca Taylor','Denim'),(7,'orange','Gap','Pants'),(8,'yellow','Banana Republic','Sweaters'),(9,'grey','Boss','Skirts'),(10,'white','Hugo Boss','Dresses'),(11,'white','Taylor','Denim'),(12,'red','Rebecca Taylor','Pants'),(13,'blue','Gap','Sweaters'),(14,'blue','Banana Republic','Skirts'),(15,'green','Boss','Dresses'),(16,'green','Hugo Boss','Denim'),(17,'violet','Taylor','Pants'),(18,'violet','Rebecca Taylor','Sweaters'),(19,'violet','Gap','Skirts'),(20,'blue','Banana Republic','Dresses'),(21,'yellow','Boss','Denim'),(22,'yellow','Hugo Boss','Pants'),(23,'floral','Taylor','Sweaters'),(24,'orange','Rebecca Taylor','Skirts'),(25,'dark','Banana Republic','Denim'),(26,'dark','Boss','Pants'),(27,'dark','Hugo Boss','Sweaters'),(28,'white','Taylor','Skirts'),(29,'white','Rebecca Taylor','Dresses'),(30,'red','Gap','Denim'),(31,'red','Banana Republic','Pants'),(32,'red','Boss','Sweaters'),(33,'red','Boss','Sweaters');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-04  9:31:58
