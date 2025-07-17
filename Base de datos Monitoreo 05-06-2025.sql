CREATE DATABASE  IF NOT EXISTS `monitoreo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `monitoreo`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: monitoreo
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `clienteID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`clienteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `empleadoID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`empleadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endpoints`
--

DROP TABLE IF EXISTS `endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endpoints` (
  `endpointId` int NOT NULL AUTO_INCREMENT,
  `estado1` varchar(100) DEFAULT NULL,
  `estado2` varchar(100) DEFAULT NULL,
  `estado3` varchar(100) DEFAULT NULL,
  `clienteID` int DEFAULT NULL,
  `empleadoID` int DEFAULT NULL,
  `fecha` date DEFAULT (now()),
  PRIMARY KEY (`endpointId`),
  KEY `clienteID` (`clienteID`),
  KEY `empleadoID` (`empleadoID`),
  CONSTRAINT `endpoints_ibfk_1` FOREIGN KEY (`clienteID`) REFERENCES `clientes` (`clienteID`),
  CONSTRAINT `endpoints_ibfk_2` FOREIGN KEY (`empleadoID`) REFERENCES `empleados` (`empleadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endpoints`
--

LOCK TABLES `endpoints` WRITE;
/*!40000 ALTER TABLE `endpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firewalls`
--

DROP TABLE IF EXISTS `firewalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firewalls` (
  `firewallID` int NOT NULL AUTO_INCREMENT,
  `estado1` varchar(100) DEFAULT NULL,
  `estado2` varchar(100) DEFAULT NULL,
  `estado3` varchar(100) DEFAULT NULL,
  `clienteID` int DEFAULT NULL,
  `empleadoID` int DEFAULT NULL,
  `fecha` date DEFAULT (now()),
  PRIMARY KEY (`firewallID`),
  KEY `clienteID` (`clienteID`),
  KEY `empleadoID` (`empleadoID`),
  CONSTRAINT `firewalls_ibfk_1` FOREIGN KEY (`clienteID`) REFERENCES `clientes` (`clienteID`),
  CONSTRAINT `firewalls_ibfk_2` FOREIGN KEY (`empleadoID`) REFERENCES `empleados` (`empleadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewalls`
--

LOCK TABLES `firewalls` WRITE;
/*!40000 ALTER TABLE `firewalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `firewalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `serverID` int NOT NULL AUTO_INCREMENT,
  `estado1` varchar(100) DEFAULT NULL,
  `estado2` varchar(100) DEFAULT NULL,
  `estado3` varchar(100) DEFAULT NULL,
  `clienteID` int DEFAULT NULL,
  `empleadoID` int DEFAULT NULL,
  `fecha` date DEFAULT (now()),
  PRIMARY KEY (`serverID`),
  KEY `clienteID` (`clienteID`),
  KEY `empleadoID` (`empleadoID`),
  CONSTRAINT `servers_ibfk_1` FOREIGN KEY (`clienteID`) REFERENCES `clientes` (`clienteID`),
  CONSTRAINT `servers_ibfk_2` FOREIGN KEY (`empleadoID`) REFERENCES `empleados` (`empleadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-05 20:15:41
