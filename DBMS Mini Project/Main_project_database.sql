-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: miniproject
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `countryinfo`
--

DROP TABLE IF EXISTS `countryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countryinfo` (
  `country_id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countryinfo`
--

LOCK TABLES `countryinfo` WRITE;
/*!40000 ALTER TABLE `countryinfo` DISABLE KEYS */;
INSERT INTO `countryinfo` VALUES (301,'India','Mumbai'),(302,'India','Chennai'),(303,'India','Delhi'),(304,'USA','New York'),(305,'USA','Califonia'),(306,'USA','New Jersey'),(307,'USA','Dallas'),(308,'China','Shanghai'),(309,'China','Beijing'),(310,'China','Xian'),(311,'Japan','Tokyo'),(312,'Japan','Osaka'),(313,'Japan','Kyoto'),(314,'Japan','Hiroshima'),(315,'Africa','Cape Town'),(316,'Africa','Nairobi'),(317,'Africa','Cairo'),(318,'Australia','Sydney'),(319,'Australia','Melbourne'),(320,'Australia','Perth');
/*!40000 ALTER TABLE `countryinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_country_insert` BEFORE INSERT ON `countryinfo` FOR EACH ROW set new.name = upper(new.name) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinfo` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerinfo`
--

LOCK TABLES `customerinfo` WRITE;
/*!40000 ALTER TABLE `customerinfo` DISABLE KEYS */;
INSERT INTO `customerinfo` VALUES (701,'Adrian Mellow'),(702,'Adria Fox'),(703,'Riley Baggs'),(704,'Marshal Mathers'),(705,'Garfield Curran'),(706,'Brett Lee'),(707,'Jacques Kallis'),(708,'Virat Kholi'),(709,'Ravichandran Ashwin'),(710,'Preeti Zinta'),(711,'Camila Cabello'),(712,'Micheal Voss'),(713,'Light Yagami'),(714,'Hange zoe'),(715,'Bruno Mars'),(716,'Ed Sheeran'),(717,'Alicia Keys'),(718,'Luis Fonsi'),(720,'David Guetta'),(721,'John Claus'),(722,'George Washington');
/*!40000 ALTER TABLE `customerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_audit`
--

DROP TABLE IF EXISTS `driver_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `changedat` datetime DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_audit`
--

LOCK TABLES `driver_audit` WRITE;
/*!40000 ALTER TABLE `driver_audit` DISABLE KEYS */;
INSERT INTO `driver_audit` VALUES (1,119,'Adam West','2021-04-21 17:19:32','update'),(2,119,'phill','2021-04-21 17:20:34','update');
/*!40000 ALTER TABLE `driver_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverinfo`
--

DROP TABLE IF EXISTS `driverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverinfo` (
  `driver_id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverinfo`
--

LOCK TABLES `driverinfo` WRITE;
/*!40000 ALTER TABLE `driverinfo` DISABLE KEYS */;
INSERT INTO `driverinfo` VALUES (101,'Allen Hoarding'),(102,'Pierce Woods'),(103,'Eren Yeager'),(104,'Levi Ackermann'),(105,'Polly Dickenson'),(106,'Geogre Bush'),(107,'Aiden Dorbrick'),(108,'John White'),(109,'Armin Arlet'),(110,'Erwin Smith'),(111,'Peter Griffin'),(112,'Ted Mosby'),(113,'Marshal Ericson'),(114,'Barney Stinson'),(115,'Glen Quagmire'),(116,'Joe Swanson'),(117,'Cleveland Brown'),(118,'Mike Henry'),(119,'Adam West'),(120,'Luke Skywalker');
/*!40000 ALTER TABLE `driverinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_driver_update` BEFORE UPDATE ON `driverinfo` FOR EACH ROW INSERT into driver_audit set action = 'update', driver_id = old.driver_id, name = old.name, changedat = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `logsinfo`
--

DROP TABLE IF EXISTS `logsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logsinfo` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `m_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `shipping_date` varchar(30) DEFAULT NULL,
  `Departure_time` time DEFAULT NULL,
  `shipping_country_id` int DEFAULT NULL,
  `arrival_country_id` int DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FK_log1` (`supplier_id`),
  KEY `FK_log2` (`order_id`),
  KEY `FK_log3` (`m_id`),
  KEY `FK_log4` (`product_id`),
  KEY `FK_log5` (`customer_id`),
  KEY `FK_log6` (`driver_id`),
  KEY `FK_log7` (`vehicle_id`),
  KEY `FK_log8` (`shipping_country_id`),
  KEY `FK_log9` (`arrival_country_id`),
  CONSTRAINT `FK_log1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `FK_log2` FOREIGN KEY (`order_id`) REFERENCES `ordersinfo` (`order_id`),
  CONSTRAINT `FK_log3` FOREIGN KEY (`m_id`) REFERENCES `manufacturerinfo` (`m_id`),
  CONSTRAINT `FK_log4` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`),
  CONSTRAINT `FK_log5` FOREIGN KEY (`customer_id`) REFERENCES `customerinfo` (`customer_id`),
  CONSTRAINT `FK_log6` FOREIGN KEY (`driver_id`) REFERENCES `driverinfo` (`driver_id`),
  CONSTRAINT `FK_log7` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicleinfo` (`vehicle_id`),
  CONSTRAINT `FK_log8` FOREIGN KEY (`shipping_country_id`) REFERENCES `countryinfo` (`country_id`),
  CONSTRAINT `FK_log9` FOREIGN KEY (`arrival_country_id`) REFERENCES `countryinfo` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsinfo`
--

LOCK TABLES `logsinfo` WRITE;
/*!40000 ALTER TABLE `logsinfo` DISABLE KEYS */;
INSERT INTO `logsinfo` VALUES (1,505,801,603,403,701,107,209,'2019-1-6','07:00:00',308,301),(2,501,802,613,414,702,108,209,'2019-1-8','01:00:00',301,304),(3,503,803,609,408,704,109,208,'2019-1-9','17:00:00',309,302),(4,502,804,614,415,705,115,219,'2019-1-11','19:00:00',303,305),(5,503,805,607,405,703,112,207,'2019-1-13','15:00:00',310,306),(6,504,806,619,417,706,120,206,'2019-1-15','05:00:00',311,302),(7,510,807,616,420,709,118,206,'2019-1-20','20:00:00',312,309),(8,508,808,612,413,710,111,210,'2019-1-23','02:00:00',314,301),(9,513,809,602,402,707,117,207,'2019-1-26','17:30:00',315,304),(10,510,810,620,418,708,106,209,'2019-2-11','06:30:00',304,305),(11,510,811,609,408,712,107,211,'2019-2-12','12:00:00',304,306),(12,509,812,610,409,711,106,204,'2019-2-13','08:00:00',305,304),(13,509,813,611,410,714,109,210,'2019-2-14','22:00:00',305,306),(14,506,814,601,401,713,109,210,'2019-2-15','18:00:00',306,305),(15,506,815,602,402,715,107,211,'2019-2-16','02:00:00',306,304),(16,501,816,606,411,715,101,201,'2019-3-19','05:00:00',301,302),(17,501,817,613,414,716,102,202,'2019-3-21','06:00:00',301,303),(18,512,818,615,412,717,112,203,'2019-3-22','08:00:00',302,303),(19,512,819,611,410,707,103,201,'2019-3-25','04:00:00',302,301),(20,502,820,619,417,718,113,203,'2019-3-28','08:00:00',303,302),(21,502,821,608,406,720,104,202,'2019-3-30','12:00:00',303,301),(22,511,822,604,404,701,114,220,'2019-4-5','05:00:00',319,307),(23,509,823,608,406,713,103,212,'2019-4-7','02:00:00',305,314),(24,519,824,617,416,710,116,221,'2019-4-12','18:00:00',316,306),(25,508,825,605,407,713,120,210,'2019-4-14','05:00:00',318,301);
/*!40000 ALTER TABLE `logsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturerinfo`
--

DROP TABLE IF EXISTS `manufacturerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturerinfo` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `City` varchar(30) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `Fk_manufacturer` (`product_id`),
  CONSTRAINT `Fk_manufacturer` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturerinfo`
--

LOCK TABLES `manufacturerinfo` WRITE;
/*!40000 ALTER TABLE `manufacturerinfo` DISABLE KEYS */;
INSERT INTO `manufacturerinfo` VALUES (601,'California',401),(602,'California',402),(603,'Shanghai',403),(604,'Shanghai',404),(605,'Boston',407),(606,'Bombay',411),(607,'Xian',405),(608,'Pasedena',406),(609,'Pasedena',408),(610,'New York',409),(611,'New Orleans',410),(612,'Tokyo',413),(613,'Pune',414),(614,'Nashik',415),(615,'Nagpur',412),(616,'Osaka',420),(617,'Bombay',416),(618,'Tokyo',419),(619,'Shanghai',417),(620,'Shanghai',418);
/*!40000 ALTER TABLE `manufacturerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `s_name`,
 1 AS `p_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view1`
--

DROP TABLE IF EXISTS `new_view1`;
/*!50001 DROP VIEW IF EXISTS `new_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view1` AS SELECT 
 1 AS `s_name`,
 1 AS `s_city`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view2`
--

DROP TABLE IF EXISTS `new_view2`;
/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view2` AS SELECT 
 1 AS `name`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view3`
--

DROP TABLE IF EXISTS `new_view3`;
/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view3` AS SELECT 
 1 AS `p_name`,
 1 AS `cost`,
 1 AS `p_quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view4`
--

DROP TABLE IF EXISTS `new_view4`;
/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view4` AS SELECT 
 1 AS `vehicle_name`,
 1 AS `type`,
 1 AS `p_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view5`
--

DROP TABLE IF EXISTS `new_view5`;
/*!50001 DROP VIEW IF EXISTS `new_view5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view5` AS SELECT 
 1 AS `p_name`,
 1 AS `name`,
 1 AS `type`,
 1 AS `city`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ordersinfo`
--

DROP TABLE IF EXISTS `ordersinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersinfo` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_orders1` (`customer_id`),
  KEY `FK_orders2` (`product_id`),
  KEY `FK_orders3` (`driver_id`),
  CONSTRAINT `FK_orders1` FOREIGN KEY (`customer_id`) REFERENCES `customerinfo` (`customer_id`),
  CONSTRAINT `FK_orders2` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`),
  CONSTRAINT `FK_orders3` FOREIGN KEY (`driver_id`) REFERENCES `driverinfo` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=826 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersinfo`
--

LOCK TABLES `ordersinfo` WRITE;
/*!40000 ALTER TABLE `ordersinfo` DISABLE KEYS */;
INSERT INTO `ordersinfo` VALUES (801,701,403,50,107),(802,702,414,100,108),(803,704,408,5,109),(804,705,415,100,115),(805,703,405,20,112),(806,706,417,2,120),(807,709,420,2,118),(808,710,413,35,111),(809,707,402,100,117),(810,708,418,1,106),(811,712,408,7,107),(812,711,409,5,106),(813,714,410,5,109),(814,713,401,90,109),(815,715,402,90,107),(816,715,411,10,101),(817,716,414,500,102),(818,717,412,10,112),(819,707,410,1,103),(820,718,417,1,113),(821,720,406,4,104),(822,701,404,99,114),(823,713,406,9,103),(824,710,416,99,116),(825,713,407,9,120);
/*!40000 ALTER TABLE `ordersinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinfo`
--

DROP TABLE IF EXISTS `productinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinfo` (
  `product_id` int NOT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `p_description` varchar(30) DEFAULT NULL,
  `p_quantity` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinfo`
--

LOCK TABLES `productinfo` WRITE;
/*!40000 ALTER TABLE `productinfo` DISABLE KEYS */;
INSERT INTO `productinfo` VALUES (401,'M10 8.5mm Bolts',1000.00,'Parts',100),(402,'M20 17.5mm Bolts',5000.00,'Parts',100),(403,'Lenovo 350mm PC Fan',10000.00,'Parts',100),(404,'Lenovo 150mm PC Fan',7500.00,'Parts',100),(405,'Dell z100 MotherBoard',20000.00,'Parts',100),(406,'Corsair Vengence 8GB RAM',15000.00,'Parts',100),(407,'Corsair H100 PC Cases',25000.00,'Parts',10),(408,'Razer Mamba Mouse',12000.00,'Tech',10),(409,'Razer Huntsman Keyboards',2490.00,'Tech',10),(410,'Dell wireless Mice',249.00,'Tech',5),(411,'Classmate Notebooks',3450.00,'Stationary',10),(412,'Classmate Geometry Boxes',5500.00,'Stationary',10),(413,'Pilot Stationary Boxes',4500.00,'Stationary',100),(414,'Suhana Spices',4500.00,'Food',1000),(415,'Mixens Spices',4500.00,'Food',1000),(416,'Shiva Farms- Meat Products',600.00,'Food',100),(417,'Lenovo Legion Laptops',12000.00,'Tech',10),(418,'HP Spectre Laptops',15000.00,'Tech',10),(419,'Airway Wifi Modems',1500.00,'Tech',10),(420,'Casio Scientific Calculators',700.00,'Tech',10);
/*!40000 ALTER TABLE `productinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_product_delete` AFTER DELETE ON `productinfo` FOR EACH ROW begin
update total_product_quantity set total_quantity = total_quantity - old.p_quantity;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL,
  `s_name` varchar(30) DEFAULT NULL,
  `s_city` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (501,'Ganesh Enterprises','Mumbai'),(502,'Bradburn Enterprises','Delhi'),(503,'ZinQ Suppliers','Beijing'),(504,'Huawei Suppliers','Tokyo'),(505,'Vega Logistics','Shanghai'),(506,'Flash Speed Suppliers','New Jersey'),(507,'Everest Deliveries','Kathmandu'),(508,'Les Alps Fournisseurs','Paris'),(509,'Steven Logistics','California'),(510,'Karen Enterprises','New York'),(511,'Kangaroo Shipping','Australia'),(512,'Anglican Movers','Chennai'),(513,'Angel Deliveries','Colombo'),(514,'Madagascar Shipping ','Antananarivo'),(515,'Surface Suppliers','Pune'),(516,'Colorz Suppliers','Nagpur'),(517,'Zee Movers','Nashik'),(518,'Chatopadhyay Enterprises','Bihar'),(519,'Choudhary Enterprises','Panaji'),(520,'Chavak Logistics','Chinchwad');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplyinfo`
--

DROP TABLE IF EXISTS `supplyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplyinfo` (
  `supply_id` int NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Departure_time` time DEFAULT NULL,
  `shipping_country_id` int DEFAULT NULL,
  `arrival_country_id` int DEFAULT NULL,
  PRIMARY KEY (`supply_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `product_id` (`product_id`),
  KEY `driver_id` (`driver_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `fk_countryid` (`shipping_country_id`),
  KEY `fk_countryid2` (`arrival_country_id`),
  CONSTRAINT `fk_countryid` FOREIGN KEY (`shipping_country_id`) REFERENCES `countryinfo` (`country_id`),
  CONSTRAINT `fk_countryid2` FOREIGN KEY (`arrival_country_id`) REFERENCES `countryinfo` (`country_id`),
  CONSTRAINT `supplyinfo_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `supplyinfo_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`),
  CONSTRAINT `supplyinfo_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driverinfo` (`driver_id`),
  CONSTRAINT `supplyinfo_ibfk_4` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicleinfo` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplyinfo`
--

LOCK TABLES `supplyinfo` WRITE;
/*!40000 ALTER TABLE `supplyinfo` DISABLE KEYS */;
INSERT INTO `supplyinfo` VALUES (1,505,403,107,209,'2019-1-6','07:00:00',308,301),(2,501,414,108,209,'2019-1-8','01:00:00',301,304),(3,503,408,109,208,'2019-1-9','17:00:00',309,302),(4,502,415,115,219,'2019-1-11','19:00:00',303,305),(5,503,405,112,207,'2019-1-13','15:00:00',310,306),(6,504,417,120,206,'2019-1-15','05:00:00',311,302),(7,510,420,118,206,'2019-1-20','20:00:00',312,309),(8,508,413,111,210,'2019-1-23','02:00:00',314,301),(9,513,402,117,207,'2019-1-26','17:30:00',315,304),(10,510,418,106,209,'2019-2-11','06:30:00',304,305),(11,510,408,107,211,'2019-2-12','12:00:00',304,306),(12,509,409,106,204,'2019-2-13','08:00:00',305,304),(13,509,410,109,210,'2019-2-14','22:00:00',305,306),(14,506,401,109,210,'2019-2-15','18:00:00',306,305),(15,506,402,107,211,'2019-2-16','02:00:00',306,304),(16,501,411,101,201,'2019-3-19','05:00:00',301,302),(17,501,414,102,202,'2019-3-21','06:00:00',301,303),(18,512,412,112,203,'2019-3-22','08:00:00',302,303),(19,512,410,103,201,'2019-3-25','04:00:00',302,301),(20,502,417,113,203,'2019-3-28','08:00:00',303,302),(21,502,406,104,202,'2019-3-30','12:00:00',303,301),(22,511,404,114,220,'2019-4-5','05:00:00',319,307),(23,509,406,103,212,'2019-4-7','02:00:00',305,314),(24,519,416,116,221,'2019-4-12','18:00:00',316,306),(25,508,407,120,210,'2019-4-14','05:00:00',318,301);
/*!40000 ALTER TABLE `supplyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_product_quantity`
--

DROP TABLE IF EXISTS `total_product_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_product_quantity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_quantity` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_product_quantity`
--

LOCK TABLES `total_product_quantity` WRITE;
/*!40000 ALTER TABLE `total_product_quantity` DISABLE KEYS */;
INSERT INTO `total_product_quantity` VALUES (1,2895.00);
/*!40000 ALTER TABLE `total_product_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleinfo`
--

DROP TABLE IF EXISTS `vehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleinfo` (
  `vehicle_id` int NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `vehicle_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleinfo`
--

LOCK TABLES `vehicleinfo` WRITE;
/*!40000 ALTER TABLE `vehicleinfo` DISABLE KEYS */;
INSERT INTO `vehicleinfo` VALUES (201,'Roadway','Truck1'),(202,'Roadway','Truck2'),(203,'Roadway','Truck3'),(204,'Roadway','Truck4'),(205,'Waterway','Boat1'),(206,'Waterway','Boat2'),(207,'Waterway','Boat3'),(208,'Waterway','Boat4'),(209,'Airway','Plane1'),(210,'Airrway','Plane2'),(211,'Airway','Plane3'),(212,'Airrway','Plane4'),(213,'Roadway','Van1'),(214,'Roadway','Van2'),(215,'Roadway','Van3'),(216,'Roadway','Van4'),(219,'Waterway','Ferry1'),(220,'Waterway','Ferry2'),(221,'Waterway','Ferry3'),(222,'Waterway','Boat5');
/*!40000 ALTER TABLE `vehicleinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouseinfo`
--

DROP TABLE IF EXISTS `warehouseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouseinfo` (
  `w_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`w_id`),
  KEY `FK_ware1` (`product_id`),
  KEY `FK_ware2` (`supplier_id`),
  CONSTRAINT `FK_ware1` FOREIGN KEY (`product_id`) REFERENCES `productinfo` (`product_id`),
  CONSTRAINT `FK_ware2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=928 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouseinfo`
--

LOCK TABLES `warehouseinfo` WRITE;
/*!40000 ALTER TABLE `warehouseinfo` DISABLE KEYS */;
INSERT INTO `warehouseinfo` VALUES (901,403,'Shanghai',505),(902,414,'Mumbai',501),(903,408,'Beijing',503),(904,415,'Haryana',502),(905,405,'Xian',503),(906,405,'Beijing',503),(907,417,'Tokyo',504),(908,420,'Osaka',510),(909,413,'Luxembourg',508),(910,402,'Colombo',513),(911,418,'Detroit',510),(912,418,'New York',510),(913,408,'New York',510),(914,409,'San Fransisco',509),(915,410,'San Fransisco',509),(916,401,'New Jersey',506),(917,402,'Boston',506),(918,411,'Thane',501),(919,414,'Mumbai',501),(920,412,'Chennai',512),(921,410,'Chennai',512),(922,417,'Delhi',502),(923,406,'Delhi',502),(924,404,'Sydney',511),(925,406,'California',509),(926,416,'Panaji',519),(927,407,'Paris',508);
/*!40000 ALTER TABLE `warehouseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'miniproject'
--
/*!50003 DROP FUNCTION IF EXISTS `ProductLevel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ProductLevel`(costlimit decimal(8, 2)) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	declare productLevel varchar(30);
    if costlimit >= 15000 then set productLevel = 'Platinum';
    
    elseif (costlimit >= 9000 and costlimit < 15000) then set productLevel = 'Gold';
    
    elseif costlimit <= 9000 then set productLevel = 'Silver';
    
    elseif costlimit <= 500 then set productLevel = 'Bronze';
    
    end if;
RETURN productLevel;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_costliest_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_costliest_product`(OUT costliest int)
BEGIN
		select max(cost) into costliest from productinfo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_driver_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_driver_info`(inout driverlist varchar(3000))
BEGIN
	declare finished integer default 0;
    declare driverName varchar(30) default "";
    
    declare dri_name cursor for select name from driverinfo;
    
    declare continue handler for not found set finished = 1;
    
    open dri_name;
    
    getnames: loop
			  fetch dri_name into driverName;
              if finished = 1 then leave getnames;
              
    end if;
    
    set driverlist = concat(driverName, ";", driverlist);
    
    end loop getnames;
    
    close dri_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_info`(inout productlist varchar(3000))
BEGIN
	declare finished integer default 0;
    declare productName varchar(30) default "";
    
    declare prod_name cursor for select p_name from productinfo;
    
    declare continue handler for not found set finished = 1;
    
    open prod_name;
    
    getnames: loop
			  fetch prod_name into productName;
              if finished = 1 then leave getnames;
              
    end if;
    
    set productlist = concat(productName, "; ", productlist);
    
    end loop getnames;
    
    close prod_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_prod_cost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_prod_cost`( IN var1 int)
BEGIN
	select * from productinfo where cost > var1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_prod_quantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_prod_quantity`()
BEGIN
	select * from productinfo where p_quantity > 10;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_supplier_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_supplier_info`(inout supplierlist varchar(3000))
BEGIN
	declare finished integer default 0;
    declare supplierName varchar(30) default "";
    
    declare sup_name cursor for select s_name from supplier;
    
    declare continue handler for not found set finished = 1;
    
    open sup_name;
    
    getnames: loop
			  fetch sup_name into supplierName;
              if finished = 1 then leave getnames;
              
    end if;
    
    set supplierlist = concat(supplierName, ";", supplierlist);
    
    end loop getnames;
    
    close sup_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_supplier_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_supplier_name`(IN var1 int)
BEGIN
	select * from supplier LIMIT var1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `s`.`s_name` AS `s_name`,`p`.`p_name` AS `p_name` from (`supplier` `s` join `productinfo` `p`) where (`s`.`supplier_id`,`p`.`product_id`) in (select distinct `supplyinfo`.`supplier_id`,`supplyinfo`.`product_id` from `supplyinfo`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view1`
--

/*!50001 DROP VIEW IF EXISTS `new_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view1` AS select `supplier`.`s_name` AS `s_name`,`supplier`.`s_city` AS `s_city` from `supplier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view2`
--

/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view2` AS select `d`.`name` AS `name`,`v`.`type` AS `type` from (`driverinfo` `d` join `vehicleinfo` `v`) where (`d`.`driver_id`,`v`.`vehicle_id`) in (select distinct `supplyinfo`.`driver_id`,`supplyinfo`.`vehicle_id` from `supplyinfo`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view3`
--

/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view3` AS select `productinfo`.`p_name` AS `p_name`,`productinfo`.`cost` AS `cost`,`productinfo`.`p_quantity` AS `p_quantity` from `productinfo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view4`
--

/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view4` AS select `v`.`vehicle_name` AS `vehicle_name`,`v`.`type` AS `type`,`p`.`p_name` AS `p_name` from (`vehicleinfo` `v` join `productinfo` `p`) where (`v`.`vehicle_id`,`p`.`product_id`) in (select distinct `supplyinfo`.`vehicle_id`,`supplyinfo`.`product_id` from `supplyinfo`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view5`
--

/*!50001 DROP VIEW IF EXISTS `new_view5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view5` AS select distinct `p`.`p_name` AS `p_name`,`d`.`name` AS `name`,`v`.`type` AS `type`,`c`.`city` AS `city` from (((`productinfo` `p` join `driverinfo` `d`) join `vehicleinfo` `v`) join `countryinfo` `c`) where (`p`.`product_id`,`d`.`driver_id`,`v`.`vehicle_id`,`c`.`country_id`) in (select `supplyinfo`.`product_id`,`supplyinfo`.`driver_id`,`supplyinfo`.`vehicle_id`,`c`.`country_id` from `supplyinfo` where (`supplyinfo`.`shipping_country_id` = `c`.`country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-02 16:56:24
