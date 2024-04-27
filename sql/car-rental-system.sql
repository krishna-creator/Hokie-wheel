-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: mysql-1c015f21-krishnachowdary-3352.h.aivencloud.com    Database: car-rental-system
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '1207a90a-fe81-11ee-940d-7243db664985:1-187';

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `email` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Inserting data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin@gmail.com','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `office_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_no` char(11) NOT NULL,
  `password` varchar(256) NOT NULL,
  `country` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `building_no` varchar(16) NOT NULL,
  PRIMARY KEY (`office_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Limozin Gold','limozin@gold.com','01532345678','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','Virginia','1'),(2,'El AML','aml@forreal.com','01123456289','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','California','2'),(3,'Safe Ride Office','contact@saferide.com','01158456289','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','Florida','3'),(4,'Lambo office','lambo@lambo.com','01512345698','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','San Diego','4'),(5,'Elnaggar office','naggar@gmail.com','01623411389','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','Texas','5'),(6,'Elzeny office','elzeny@gmail.com','01548456389','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','Boston','6'),(7,'Elasdka2 Limo','elasdka2@gmail.com','01227856389','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','Washington','7'),(8,'Uber office','uber@gmail.com','01273456341','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','USA','Redmond','8');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_photos`
--

DROP TABLE IF EXISTS `car_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_photos` (
  `plate_id` varchar(8) NOT NULL,
  `photo` varchar(512) NOT NULL,
  PRIMARY KEY (`plate_id`,`photo`),
  CONSTRAINT `car_photos_fk` FOREIGN KEY (`plate_id`) REFERENCES `vehicle` (`plate_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_photos`
--

LOCK TABLES `car_photos` WRITE;
/*!40000 ALTER TABLE `car_photos` DISABLE KEYS */;
INSERT INTO `car_photos` VALUES ('12345678','https://gearkhana.com/wp-content/uploads/2019/06/A157415_small.jpg'),('16086698','https://www.generatormix.com/images/car-model/alfa-romeo-giulia.jpg'),('23456789','https://www.elbalad.news/Upload/libfiles/964/6/302.png'),('31742611','https://www.generatormix.com/images/car-model/tesla-model-s.jpg'),('34553551','https://www.generatormix.com/images/car-model/jaguar-xj.jpg'),('34567890','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdhsugUJ8iDiY9QKoIBTecKVH9WlpMri-NbZOiLPhc&s'),('45678901','https://media.ed.edmunds-media.com/audi/a6/2016/fe/2016_audi_a6_f34_fe_208161_717.jpg'),('49716490','https://www.generatormix.com/images/car-model/audi-tt.jpg'),('56357347','https://www.generatormix.com/images/car-model/nissan-gt-r.jpg'),('56789012','https://ymimg1.b8cdn.com/system/uploads/4104/original/2015-bmw-x6_100468788_h.jpg?1409246727'),('60818556','https://www.generatormix.com/images/car-model/mini-clubman.jpg'),('66420197','https://www.generatormix.com/images/car-model/infiniti-q50.jpg'),('74800293','https://www.generatormix.com/images/car-model/land-rover-range-evoque.jpg'),('88367004','https://www.generatormix.com/images/car-model/kia-picanto.jpg'),('90212135','https://www.generatormix.com/images/car-model/honda-civic.jpg'),('92374360','https://www.generatormix.com/images/car-model/chevrolet-malibu.jpg'),('93194878','https://www.generatormix.com/images/car-model/renault-kadjar.jpg'),('97785008','https://www.generatormix.com/images/car-model/hyundai-tucson.jpg');
/*!40000 ALTER TABLE `car_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_status`
--

DROP TABLE IF EXISTS `car_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_status` (
  `plate_id` varchar(8) NOT NULL,
  `status_code` smallint NOT NULL DEFAULT '0',
  `status_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`plate_id`,`status_code`,`status_date`),
  CONSTRAINT `car_status_fk` FOREIGN KEY (`plate_id`) REFERENCES `vehicle` (`plate_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_status`
--

LOCK TABLES `car_status` WRITE;
/*!40000 ALTER TABLE `car_status` DISABLE KEYS */;
INSERT INTO `car_status` VALUES ('12345678',0,'2024-04-19 19:18:10'),('16086698',0,'2024-04-19 19:18:10'),('23456789',0,'2024-04-19 19:18:10'),('23456789',0,'2024-04-30 23:59:59'),('23456789',3,'2024-04-27 00:00:00'),('31742611',0,'2024-04-19 19:18:10'),('34553551',0,'2024-04-19 19:18:10'),('34553551',0,'2024-04-30 23:59:59'),('34553551',3,'2024-04-29 00:00:00'),('34567890',0,'2024-04-19 19:18:10'),('34567890',0,'2024-05-01 23:59:59'),('34567890',3,'2024-04-25 00:00:00'),('45678901',0,'2024-04-19 19:18:10'),('49716490',0,'2024-04-19 19:18:10'),('56357347',0,'2024-04-19 19:18:10'),('56789012',0,'2024-04-19 19:18:10'),('60818556',0,'2024-04-19 19:18:10'),('66420197',0,'2024-04-19 19:18:10'),('74800293',0,'2024-04-19 19:18:10'),('88367004',0,'2024-04-19 19:18:10'),('90212135',0,'2024-04-19 19:18:10'),('92374360',0,'2024-04-19 19:18:10'),('92374360',0,'2024-04-26 23:59:59'),('92374360',3,'2024-04-25 00:00:00'),('93194878',0,'2024-04-19 19:18:10'),('97785008',0,'2024-04-19 19:18:10');
/*!40000 ALTER TABLE `car_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `card_no` char(16) NOT NULL,
  `holder_name` varchar(64) NOT NULL,
  `cvv` char(3) NOT NULL,
  `exp_date` date NOT NULL,
  PRIMARY KEY (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES ('0234567890123456','Farid Mohamed','123','2023-06-15'),('1111111111111111','krishna','111','2029-06-13'),('1234567890123457','Ashraf Yousef','345','2023-08-15'),('1644329983776598','Hamo Hazem','233','2023-02-15'),('2234567890123458','Hossam Elshamy','156','2023-09-15'),('2343222299992121','Charan','123','2024-10-30'),('2863293231626997','Ziad hassan','233','2023-12-20'),('3234567890123459','Yousef Ashraf','466','2023-10-15'),('4234567890123460','Adham Mohamed','854','2023-11-15'),('5208149342853291','Sara Ahmed','233','2023-02-15'),('5234567890123461','Mohamed Farid','233','2023-12-15'),('6015407408396551','Hamdy Abdo','233','2023-01-15'),('6155282084657216','Leonel Messi','233','2023-12-21'),('8098889348092690','Omnya fahmy','233','2023-04-15'),('8199147665644771','Mohamed salah','233','2023-12-23'),('9211973616180012','Cristiano Ronaldo','233','2023-12-22');
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `license` char(6) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_no` char(11) NOT NULL,
  `password` varchar(256) NOT NULL,
  `wallet` float DEFAULT '0',
  PRIMARY KEY (`license`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('111111','Krishna','Dhulipalla','kdhulipalla13@gmail.com','5405583528','$2b$10$9zHHTqdocHEvaOpyL3iNK.cJmElJm53d0ai7YXTjfS0wTi4gUgMQi',0),('123456','Farid','Mohamed','farid@gmail.com','01012345678','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('149282','Leonel','Messi','messi@gmail.com','01111111110','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('190797','Hamo','Hazem','hamo@gmail.com','01849247007','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('234567','Ashraf','Yousef','ashraf@gmail.com','01123456789','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('269282','Cristiano','Ronaldo','ronaldo@gmail.com','01088377112','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('319824','Hamdy','Abdo','hamdy@gmail.com','01676795295','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('322224','Mohamed','Farid','mohamed@gmail.com','01676795318','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('345678','Hossam','Elshamy','hossam@gmail.com','01234567890','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('456789','Yousef','Ashraf','yousef@gmail.com','01512345678','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('567890','Adham','Mohamed','domziano@gmail.com','01623456789','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('621413','Omnya','fahmy','Omnya@gmail.com','01983260933','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('663117','Sara','Ahmed','sara@gmail.com','01834748737','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('752665','Ziad','hassan','ziad@gmail.com','01116897861','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('859282','Mohamed','salah','salah@gmail.com','01404205590','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq',0),('999999','CharanTeja','Chelle','charanteja@gmail.com','5405578652','$2b$10$8D8DL9E.c7ry4Zgk7bsyBubZIdg01VA/I/4AANLY0VhlZzVOpnLEa',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_credit`
--

DROP TABLE IF EXISTS `customer_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_credit` (
  `license` char(6) NOT NULL,
  `card_no` char(16) NOT NULL,
  PRIMARY KEY (`license`,`card_no`),
  KEY `customer_credit_card_fk` (`card_no`),
  CONSTRAINT `customer_credit_card_fk` FOREIGN KEY (`card_no`) REFERENCES `credit_card` (`card_no`) ON DELETE CASCADE,
  CONSTRAINT `customer_credit_customer_fk` FOREIGN KEY (`license`) REFERENCES `customer` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_credit`
--

LOCK TABLES `customer_credit` WRITE;
/*!40000 ALTER TABLE `customer_credit` DISABLE KEYS */;
INSERT INTO `customer_credit` VALUES ('123456','0234567890123456'),('111111','1111111111111111'),('234567','1234567890123457'),('190797','1644329983776598'),('345678','2234567890123458'),('999999','2343222299992121'),('752665','2863293231626997'),('456789','3234567890123459'),('567890','4234567890123460'),('663117','5208149342853291'),('322224','5234567890123461'),('319824','6015407408396551'),('149282','6155282084657216'),('621413','8098889348092690'),('859282','8199147665644771'),('269282','9211973616180012');
/*!40000 ALTER TABLE `customer_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `RESERVATION_NO` int NOT NULL AUTO_INCREMENT,
  `license` char(6) NOT NULL,
  `plate_id` varchar(8) NOT NULL,
  `reserve_date` date DEFAULT (curdate()),
  `pickup_date` date NOT NULL,
  `return_date` date NOT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`RESERVATION_NO`),
  KEY `reservation_customer_fk` (`license`),
  KEY `reservation_car_fk` (`plate_id`),
  CONSTRAINT `reservation_car_fk` FOREIGN KEY (`plate_id`) REFERENCES `vehicle` (`plate_id`) ON DELETE CASCADE,
  CONSTRAINT `reservation_customer_fk` FOREIGN KEY (`license`) REFERENCES `customer` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,'123456','12345678','2024-04-19','2022-12-28','2022-12-30',NULL),(2,'234567','23456789','2024-04-19','2022-12-28','2022-12-30',NULL),(3,'345678','34567890','2024-04-19','2022-12-28','2022-12-30',NULL),(4,'456789','45678901','2024-04-19','2022-12-28','2022-12-30',NULL),(5,'567890','56789012','2024-04-19','2022-12-28','2022-12-30',NULL),(6,'190797','16086698','2024-04-19','2022-01-21','2022-01-23',NULL),(7,'663117','60818556','2024-04-19','2022-01-22','2022-01-23',NULL),(8,'621413','56357347','2024-04-19','2022-01-23','2022-01-30',NULL),(9,'752665','31742611','2024-04-19','2022-01-24','2022-01-27',NULL),(10,'149282','97785008','2024-04-19','2022-01-25','2022-01-28',NULL),(11,'269282','88367004','2024-04-19','2022-01-26','2022-01-29',NULL),(12,'111111','34567890','2024-04-19','2024-04-25','2024-05-01','2024-04-19'),(13,'111111','92374360','2024-04-19','2024-04-25','2024-04-26','2024-04-19'),(14,'999999','23456789','2024-04-26','2024-04-27','2024-04-30','2024-04-27'),(15,'999999','34553551','2024-04-26','2024-04-29','2024-04-30','2024-04-26');
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `REVIEW_ID` int NOT NULL AUTO_INCREMENT,
  `RESERVATION_NO` varchar(10) NOT NULL,
  `RATING` int DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REVIEW_ID`),
  CONSTRAINT `review_chk_1` CHECK ((`RATING` between 0 and 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `plate_id` varchar(8) NOT NULL,
  `model` varchar(32) NOT NULL,
  `make` varchar(32) NOT NULL,
  `year` year NOT NULL,
  `price` float NOT NULL,
  `registration_date` date DEFAULT (curdate()),
  `office_id` int NOT NULL,
  PRIMARY KEY (`plate_id`),
  KEY `car_office_fk` (`office_id`),
  CONSTRAINT `car_office_fk` FOREIGN KEY (`office_id`) REFERENCES `branch` (`office_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('12345678','Audi','A4',2019,10,'2024-04-19',1),('16086698','Alfa Romeo','Giulia',2022,35,'2024-04-19',5),('23456789','BMW','X5',2018,15,'2024-04-19',2),('31742611','Tesla','Model S',2021,50,'2024-04-19',8),('34553551','Jaguar','XJ',2018,13.5,'2024-04-19',2),('34567890','Mercedes','C200',2017,5,'2024-04-19',3),('45678901','Audi','A6',2016,7.5,'2024-04-19',4),('49716490','Audi','TT',2019,15,'2024-04-19',1),('56357347','Nissan','GT-R',2024,120,'2024-04-19',7),('56789012','BMW','X6',2015,2.5,'2024-04-19',5),('60818556','Mini','Clubman',2016,19,'2024-04-19',6),('66420197','Infiniti','Q50',2020,30,'2024-04-19',4),('74800293','Land Rover','Range Evoque',2021,22.5,'2024-04-19',4),('88367004','Kia','Picanto',2015,0.25,'2024-04-19',7),('90212135','Honda','Civic',2021,17,'2024-04-19',3),('92374360','Chevrolet','Malibu',2019,9.5,'2024-04-19',5),('93194878','Renault','Kadjar',2020,2.5,'2024-04-19',6),('97785008','Hyundai','Tucson',2018,14.5,'2024-04-19',8);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'car-rental-system'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 21:01:39
