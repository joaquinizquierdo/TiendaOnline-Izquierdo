-- Backup realizado en las tablas de clientes, empleados, productos, proveedores, repartidores y vehiculos

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_izquierdo
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (3,'Gawen','Quinion'),(5,'Larisa','Robak'),(4,'Lionel','Gallardo'),(2,'Naomi','Skells'),(1,'Rochell','McKie');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Nicolai','Sprowles',180000),(2,'Leo','Corneliussen',150000),(3,'Ewan','Badrock',150000),(4,'Leonard','Rableau',130000),(5,'Kore','Jaan',120000);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Celular iPhone 14 Pro Max 256 GB',330579,400001),(2,'Celular iPhone 13 Pro 256 GB',272728,330001),(3,'Celular IPhone 12 128 GB',181818,220000),(4,'Celular Samsung Galaxy S23 Ultra 256 GB',322314,390000),(5,'Celular Samsung Galaxy Z Fold4 512 GB',184298,223001),(6,'Celular Samsung Galaxy A54 5G 128 GB',123967,150000),(7,'Cable USB Tipo C 1,5mts',413,500),(8,'Cable USB Micro USB 2mts',579,701),(9,'Celular Xiaomi Redmi Note 10 5G 4GB/128GB',123456,149382),(10,'Celular Xiaomi Redmi 10 Carbon Gray 4GB RAM 128GB',234523,283773),(11,'Celular Xiaomi 11T Pro 8GB RAM 256GB ROM',323565,391514),(12,'Celular Xiaomi 11T 8GB RAM 256GB ROM',254343,307755),(13,'Celular Motorola Razr 40 Ultra 512GB',384298,465001),(14,'Celular Motorola Moto G13 4/128',123967,150000),(15,'Celular Motorola Moto G32 6/128',132544,160378),(16,'Celular Motorola Moto E22 4/64',125564,151932);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (2,'Apple',NULL),(3,'Cherie','Drysdell'),(1,'Samsung',NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `repartidores`
--

LOCK TABLES `repartidores` WRITE;
/*!40000 ALTER TABLE `repartidores` DISABLE KEYS */;
INSERT INTO `repartidores` VALUES (1,'Sam','Skocroft',170000),(2,'Jecho','Peperell',160000),(3,'Franny','Agott',160000);
/*!40000 ALTER TABLE `repartidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'AA453DA','Peugeot','Partner',1),(3,'AA543VR','Mercedes Benz','Sprinter',2),(5,'AC247VA','Peugeot','Partner',3);
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-18 19:15:00
