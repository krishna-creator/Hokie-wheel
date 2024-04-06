-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: mysql-11b13c58-vt-964b.a.aivencloud.com    Database: defaultdb
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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'f16cdbdd-f376-11ee-a663-7a6d203aa2cf:1-60';

--
-- Table structure for table `BRANCH`
--

DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BRANCH` (
  `BRANCH_ID` varchar(10) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `STATE` varchar(20) NOT NULL,
  `CONTACT` decimal(11,0) unsigned NOT NULL,
  PRIMARY KEY (`BRANCH_ID`),
  CONSTRAINT `VALID_BRANCH_ID` CHECK (regexp_like(`BRANCH_ID`,_utf8mb4'^[BRAN]+[0-9]{6}$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES ('BRAN000001','New York City','New York',1234567890),('BRAN000002','Los Angeles','California',2345678901),('BRAN000003','Chicago','Illinois',3456789012),('BRAN000004','Houston','Texas',4567890123),('BRAN000005','Miami','Florida',5678901234),('BRAN000006','Seattle','Washington',6789012345),('BRAN000007','San Francisco','California',7890123456),('BRAN000008','Boston','Massachusetts',8901234567),('BRAN000009','Atlanta','Georgia',9012345678),('BRAN000010','Denver','Colorado',1234567890),('BRAN000015','pittsburg','pensylvania',5505483496),('BRAN000016','pittsburg','pensylvania',5505483965);
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `LICENSE` varchar(10) NOT NULL,
  `CONTACT` decimal(10,0) unsigned NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LICENSE`),
  CONSTRAINT `VALID_EMAIL` CHECK (regexp_like(`EMAIL`,_utf8mb4'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,}$')),
  CONSTRAINT `VALID_LICENSE` CHECK (regexp_like(`LICENSE`,_utf8mb4'^[LIC]+[0-9]{7}$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES ('LIC0011223',3334445555,'olivia.robinson@example.com','Olivia','Robinson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC0022334',4445556666,'sophia.nguyen@example.com','Sophia','Nguyen','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC0123456',2223334444,'sophia.taylor@example.com','Sophia','Taylor','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC1122334',4445556666,'daniel.anderson@example.com','Daniel','Anderson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC1234567',1234567890,'john.doe@example.com','John','Doe','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC2345678',8876543210,'jane.smith@example.com','Jane','Smith','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC3344556',6667778888,'matthew.jackson@example.com','Matthew','Jackson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC3456789',5551234567,'michael.jackson@example.com','Michael','Jackson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC4455667',5556667777,'isabella.thomas@example.com','Isabella','Thomas','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC4567890',9998887776,'maria.garcia@example.com','Maria','Garcia','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC5566778',7778889999,'emily.white@example.com','Emily','White','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC5678901',1235556789,'james.brown@example.com','James','Brown','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC6677889',8889990000,'jacob.martinez@example.com','Jacob','Martinez','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC6789012',7779998888,'emma.johnson@example.com','Emma','Johnson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC7788990',9990001111,'ava.thompson@example.com','Ava','Thompson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC7890123',8884445555,'william.wilson@example.com','William','Wilson','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC8899001',1112223333,'mason.garcia@example.com','Mason','Garcia','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC8901234',6667778888,'olivia.miller@example.com','Olivia','Miller','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC9012345',3332221111,'alexander.moore@example.com','Alexander','Moore','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC9900112',2223334444,'abigail.hernandez@example.com','Abigail','Hernandez','$2a$04$3JN66ZLkOzdWnO6eGAXsT.vp9dXXXMDSyyqcMK2iNqItlzBqmdX92'),('LIC9900192',5405578612,'sanjaysahu@gmail.com','Sanjay','Sahu','Sanjay@1997');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSURANCE`
--

DROP TABLE IF EXISTS `INSURANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSURANCE` (
  `INSURANCE_ID` varchar(10) NOT NULL,
  `INSURANCE_TYPE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COST` decimal(6,2) NOT NULL,
  PRIMARY KEY (`INSURANCE_ID`),
  CONSTRAINT `VALID_INSURANCE_ID` CHECK (regexp_like(`INSURANCE_ID`,_utf8mb4'^[INS]+[0-9]{7}$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSURANCE`
--

LOCK TABLES `INSURANCE` WRITE;
/*!40000 ALTER TABLE `INSURANCE` DISABLE KEYS */;
INSERT INTO `INSURANCE` VALUES ('INS0000001','Basic','Provides basic coverage for damages and injuries.',50.00),('INS0000002','Comprehensive','Offers coverage for various damages not caused by a collision, such as theft, vandalism, or natural disasters.',100.00),('INS0000003','Collision','Covers damages resulting from a collision with another vehicle or object.',75.00),('INS0000004','Liability','Provides coverage for bodily injury and property damage caused by the insured.',90.00),('INS0000005','Medical Payments','Covers medical expenses for injuries sustained by the insured and their passengers.',60.00),('INS0000006','Comprehensive Deductible','The deductible amount for comprehensive coverage, which applies to non-collision-related damages.',95.00),('INS0000007','Personal Injury Protection','Provides coverage for medical expenses and lost wages regardless of fault in an accident.',90.00),('INS0000008','Rental Reimbursement','Reimburses the insured for rental car expenses while their vehicle is being repaired due to a covered accident.',65.00),('INS0000009','Gap Insurance','Covers the difference between the actual cash value of a vehicle and the amount owed on a loan or lease in case of a total loss.',85.00),('INS0000010','Roadside Assistance','Offers assistance for common roadside emergencies such as towing, flat tires, or battery jump-starts.',55.00),('INS0000011','Property Damage Liability','Provides coverage for damages to another person\'s property caused by the insured.',75.00),('INS0000012','Bodily Injury Liability','Covers expenses related to bodily injury or death caused by the insured in an accident.',60.00);
/*!40000 ALTER TABLE `INSURANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RENTAL`
--

DROP TABLE IF EXISTS `RENTAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RENTAL` (
  `RENTAL_ID` varchar(10) NOT NULL,
  `DROP_BRANCH` varchar(100) DEFAULT NULL,
  `PAYMENT_STATUS` varchar(100) DEFAULT NULL,
  `TOTAL_PRICE` decimal(8,2) DEFAULT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `LICENSE` varchar(10) NOT NULL DEFAULT 'LIC0000000',
  `VEHICLE_ID` varchar(10) NOT NULL DEFAULT 'VEH0000000',
  `BRANCH_ID` varchar(10) NOT NULL DEFAULT 'BRAN000000',
  PRIMARY KEY (`RENTAL_ID`),
  KEY `LICENSE` (`LICENSE`),
  KEY `VEHICLE_ID` (`VEHICLE_ID`),
  KEY `BRANCH_ID` (`BRANCH_ID`),
  CONSTRAINT `RENTAL_ibfk_1` FOREIGN KEY (`LICENSE`) REFERENCES `CUSTOMER` (`LICENSE`) ON UPDATE CASCADE,
  CONSTRAINT `RENTAL_ibfk_2` FOREIGN KEY (`VEHICLE_ID`) REFERENCES `VEHICLE` (`VEHICLE_ID`) ON UPDATE CASCADE,
  CONSTRAINT `RENTAL_ibfk_3` FOREIGN KEY (`BRANCH_ID`) REFERENCES `BRANCH` (`BRANCH_ID`) ON UPDATE CASCADE,
  CONSTRAINT `VALID_RENTAL_ID` CHECK (regexp_like(`RENTAL_ID`,_utf8mb4'^[REN]+[0-9]{7}$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RENTAL`
--

LOCK TABLES `RENTAL` WRITE;
/*!40000 ALTER TABLE `RENTAL` DISABLE KEYS */;
INSERT INTO `RENTAL` VALUES ('REN0000001','Branch 1','Paid',807.75,'2024-03-01','2024-03-07','LIC0011223','VEH1234560','BRAN000001'),('REN0000002','Branch 1','Pending',502.25,'2024-03-02','2024-03-09','LIC0022334','VEH1234567','BRAN000001'),('REN0000003','Branch 2','Paid',591.50,'2024-03-05','2024-03-12','LIC0123456','VEH2345670','BRAN000001'),('REN0000004','Branch 2','Pending',556.50,'2024-03-06','2024-03-13','LIC1122334','VEH2345678','BRAN000001'),('REN0000005','Branch 3','Paid',631.75,'2024-03-07','2024-03-14','LIC1234567','VEH3455670','BRAN000002'),('REN0000006','Branch 3','Pending',505.75,'2024-03-10','2024-03-17','LIC2345678','VEH3455678','BRAN000002'),('REN0000007','Branch 4','Paid',542.50,'2024-03-11','2024-03-18','LIC3344556','VEH4565670','BRAN000002'),('REN0000008','Branch 4','Pending',444.50,'2024-03-12','2024-03-19','LIC3456789','VEH4565678','BRAN000002'),('REN0000009','Branch 5','Paid',642.25,'2024-03-15','2024-03-22','LIC4455667','VEH5675670','BRAN000003'),('REN0000010','Branch 5','Pending',460.25,'2024-03-18','2024-03-25','LIC4567890','VEH5675678','BRAN000003'),('REN0000011','Branch 6','Paid',605.50,'2024-03-20','2024-03-27','LIC5566778','VEH6785670','BRAN000003'),('REN0000012','Branch 6','Pending',507.50,'2024-03-22','2024-03-29','LIC5678901','VEH6785678','BRAN000003'),('REN0000013','Branch 7','Paid',3645.75,'2024-03-25','2024-04-01','LIC6677889','VEH7895670','BRAN000004'),('REN0000014','Branch 7','Pending',2505.75,'2024-03-28','2024-04-04','LIC6789012','VEH7895678','BRAN000004'),('REN0000015','Branch 8','Paid',3792.50,'2024-03-30','2024-04-06','LIC7788990','VEH8905670','BRAN000004'),('REN0000016','Branch 8','Pending',619.50,'2024-04-01','2024-04-08','LIC7890123','VEH8905678','BRAN000004'),('REN0000017','Branch 9','Paid',621.25,'2024-04-03','2024-04-10','LIC8899001','VEH0125670','BRAN000005'),('REN0000018','Branch 9','Pending',656.25,'2024-04-06','2024-04-13','LIC8901234','VEH0125678','BRAN000005'),('REN0000019','Branch 10','Paid',612.50,'2024-04-08','2024-04-15','LIC9012345','VEH9015670','BRAN000005'),('REN0000020','Branch 10','Pending',647.50,'2024-04-10','2024-04-17','LIC9900112','VEH9015678','BRAN000005'),('REN0000021','Branch 6','Paid',505.75,'2024-04-12','2024-04-19','LIC5566778','VEH1234569','BRAN000006'),('REN0000022','Branch 6','Pending',610.75,'2024-04-14','2024-04-21','LIC5678901','VEH1235671','BRAN000006'),('REN0000023','Branch 6','Paid',549.50,'2024-04-16','2024-04-23','LIC6677889','VEH2345671','BRAN000006'),('REN0000024','Branch 6','Pending',444.50,'2024-04-18','2024-04-25','LIC6789012','VEH2345679','BRAN000006'),('REN0000025','Branch 7','Paid',642.25,'2024-04-20','2024-04-27','LIC7788990','VEH3455671','BRAN000007'),('REN0000026','Branch 7','Pending',446.25,'2024-04-22','2024-04-29','LIC7890123','VEH3455679','BRAN000007'),('REN0000027','Branch 7','Paid',3804.50,'2024-04-24','2024-05-01','LIC8899001','VEH4565671','BRAN000007'),('REN0000028','Branch 7','Pending',4651.50,'2024-04-26','2024-05-03','LIC8901234','VEH4565679','BRAN000007'),('REN0000029','Branch 8','Paid',3921.75,'2024-04-28','2024-05-05','LIC9012345','VEH5675671','BRAN000008'),('REN0000030','Branch 8','Pending',4460.75,'2024-04-30','2024-05-07','LIC9900112','VEH5675679','BRAN000008'),('REN0000031','Branch 8','Paid',631.75,'2024-05-02','2024-05-09','LIC0011223','VEH6785671','BRAN000008'),('REN0000032','Branch 8','Pending',640.50,'2024-05-04','2024-05-11','LIC0022334','VEH6785679','BRAN000008'),('REN0000033','Branch 9','Paid',551.25,'2024-05-06','2024-05-13','LIC0123456','VEH7895671','BRAN000009'),('REN0000034','Branch 9','Pending',502.25,'2024-05-08','2024-05-15','LIC1122334','VEH7895679','BRAN000009'),('REN0000035','Branch 9','Paid',591.50,'2024-05-10','2024-05-17','LIC1234567','VEH8905671','BRAN000009'),('REN0000036','Branch 9','Pending',556.50,'2024-05-12','2024-05-19','LIC2345678','VEH8905679','BRAN000009'),('REN0000037','Branch 10','Paid',610.75,'2024-05-14','2024-05-21','LIC3344556','VEH0125671','BRAN000010'),('REN0000038','Branch 10','Pending',476.00,'2024-05-16','2024-05-23','LIC3456789','VEH0125679','BRAN000010'),('REN0000039','Branch 10','Paid',659.75,'2024-05-18','2024-05-25','LIC4455667','VEH9015671','BRAN000010'),('REN0000040','Branch 10','Pending',502.25,'2024-05-20','2024-05-27','LIC4567890','VEH9015679','BRAN000010');
/*!40000 ALTER TABLE `RENTAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVIEW`
--

DROP TABLE IF EXISTS `REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REVIEW` (
  `REVIEW_ID` int NOT NULL AUTO_INCREMENT,
  `RENTAL_ID` varchar(10) NOT NULL,
  `RATING` int DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REVIEW_ID`),
  CONSTRAINT `REVIEW_chk_1` CHECK ((`RATING` between 0 and 10))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVIEW`
--

LOCK TABLES `REVIEW` WRITE;
/*!40000 ALTER TABLE `REVIEW` DISABLE KEYS */;
INSERT INTO `REVIEW` VALUES (1,'REN0000001',8,'Great experience overall, vehicle was clean and in good condition.'),(2,'REN0000002',6,'Average experience, had some issues with payment.'),(3,'REN0000003',9,'Excellent service, vehicle was ready on time and staff was helpful.'),(4,'REN0000004',5,'Below average experience, vehicle was not properly cleaned.'),(5,'REN0000005',7,'Decent experience, vehicle performed well but had some minor issues.'),(6,'REN0000006',8,'Good service, vehicle was clean and well-maintained.'),(7,'REN0000007',9,'Very satisfied with the rental, smooth process from start to finish.'),(8,'REN0000008',4,'Disappointing experience, vehicle had mechanical problems.'),(9,'REN0000009',7,'Overall good experience, staff was friendly and helpful.'),(10,'REN0000010',6,'Satisfactory service, but vehicle could have been cleaner.'),(11,'REN0000011',10,'Exceptional service, would highly recommend to others.'),(12,'REN0000012',9,'Great rental experience, no complaints whatsoever.'),(13,'REN0000013',8,'Very happy with the rental, would rent again in the future.'),(14,'REN0000014',7,'Good service, but vehicle had some cosmetic issues.'),(15,'REN0000015',9,'Excellent rental service, staff went above and beyond to assist.'),(16,'REN0000016',6,'Average experience, nothing outstanding but no major issues either.'),(17,'REN0000017',8,'Smooth rental process, vehicle was exactly as described.'),(18,'REN0000018',5,'Below average service, encountered problems with pickup.'),(19,'REN0000019',9,'Outstanding service, vehicle was in top condition.'),(20,'REN0000020',7,'Decent rental experience, no major complaints.'),(21,'REN0000021',8,'Great experience overall, staff was professional and courteous.'),(22,'REN0000022',6,'Satisfactory service, but vehicle had some maintenance issues.'),(23,'REN0000023',9,'Very satisfied with the rental, would definitely use again.'),(24,'REN0000024',7,'Good rental experience, but encountered minor issues with booking.'),(25,'REN0000025',8,'Smooth process from booking to return, vehicle performed well.'),(26,'REN0000026',5,'Disappointed with the rental, vehicle was not properly maintained.'),(27,'REN0000027',9,'Exceptional service, staff was friendly and accommodating.'),(28,'REN0000028',7,'Overall satisfied with the rental, but encountered some delays.'),(29,'REN0000029',8,'Great experience, vehicle was clean and well-equipped.'),(30,'REN0000030',6,'Average service, encountered some issues with billing.'),(31,'REN0000031',9,'Very happy with the rental, exceeded expectations.'),(32,'REN0000032',8,'Good service overall, staff was helpful and responsive.'),(33,'REN0000033',7,'Satisfactory experience, no major complaints.'),(34,'REN0000034',5,'Below average rental, vehicle had issues with performance.'),(35,'REN0000035',9,'Excellent service, vehicle was in excellent condition.'),(36,'REN0000036',7,'Decent rental experience, but encountered some communication issues.'),(37,'REN0000037',8,'Smooth process from start to finish, no complaints.'),(38,'REN0000038',6,'Average rental experience, nothing outstanding.'),(39,'REN0000039',9,'Very satisfied with the rental, would recommend to others.'),(40,'REN0000040',8,'Great service overall, vehicle met expectations.'),(41,'REN0000017',7,'GOOD');
/*!40000 ALTER TABLE `REVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_I`
--

DROP TABLE IF EXISTS `R_I`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `R_I` (
  `RENTAL_ID` varchar(10) NOT NULL,
  `INSURANCE_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`RENTAL_ID`,`INSURANCE_ID`),
  KEY `INSURANCE_ID` (`INSURANCE_ID`),
  CONSTRAINT `R_I_ibfk_1` FOREIGN KEY (`RENTAL_ID`) REFERENCES `RENTAL` (`RENTAL_ID`) ON UPDATE CASCADE,
  CONSTRAINT `R_I_ibfk_2` FOREIGN KEY (`INSURANCE_ID`) REFERENCES `INSURANCE` (`INSURANCE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_I`
--

LOCK TABLES `R_I` WRITE;
/*!40000 ALTER TABLE `R_I` DISABLE KEYS */;
INSERT INTO `R_I` VALUES ('REN0000007','INS0000001'),('REN0000008','INS0000001'),('REN0000015','INS0000001'),('REN0000016','INS0000001'),('REN0000023','INS0000001'),('REN0000024','INS0000001'),('REN0000031','INS0000001'),('REN0000032','INS0000001'),('REN0000040','INS0000001'),('REN0000001','INS0000002'),('REN0000007','INS0000002'),('REN0000008','INS0000002'),('REN0000015','INS0000002'),('REN0000016','INS0000002'),('REN0000023','INS0000002'),('REN0000024','INS0000002'),('REN0000032','INS0000002'),('REN0000038','INS0000002'),('REN0000039','INS0000002'),('REN0000001','INS0000003'),('REN0000002','INS0000003'),('REN0000009','INS0000003'),('REN0000010','INS0000003'),('REN0000017','INS0000003'),('REN0000018','INS0000003'),('REN0000025','INS0000003'),('REN0000026','INS0000003'),('REN0000031','INS0000003'),('REN0000033','INS0000003'),('REN0000034','INS0000003'),('REN0000040','INS0000003'),('REN0000001','INS0000004'),('REN0000002','INS0000004'),('REN0000009','INS0000004'),('REN0000010','INS0000004'),('REN0000017','INS0000004'),('REN0000018','INS0000004'),('REN0000025','INS0000004'),('REN0000026','INS0000004'),('REN0000031','INS0000004'),('REN0000033','INS0000004'),('REN0000034','INS0000004'),('REN0000002','INS0000005'),('REN0000009','INS0000005'),('REN0000010','INS0000005'),('REN0000017','INS0000005'),('REN0000018','INS0000005'),('REN0000025','INS0000005'),('REN0000026','INS0000005'),('REN0000033','INS0000005'),('REN0000034','INS0000005'),('REN0000040','INS0000005'),('REN0000003','INS0000006'),('REN0000004','INS0000006'),('REN0000011','INS0000006'),('REN0000012','INS0000006'),('REN0000019','INS0000006'),('REN0000020','INS0000006'),('REN0000027','INS0000006'),('REN0000028','INS0000006'),('REN0000035','INS0000006'),('REN0000036','INS0000006'),('REN0000003','INS0000007'),('REN0000004','INS0000007'),('REN0000011','INS0000007'),('REN0000012','INS0000007'),('REN0000019','INS0000007'),('REN0000020','INS0000007'),('REN0000027','INS0000007'),('REN0000028','INS0000007'),('REN0000035','INS0000007'),('REN0000036','INS0000007'),('REN0000003','INS0000008'),('REN0000004','INS0000008'),('REN0000011','INS0000008'),('REN0000012','INS0000008'),('REN0000019','INS0000008'),('REN0000020','INS0000008'),('REN0000027','INS0000008'),('REN0000028','INS0000008'),('REN0000035','INS0000008'),('REN0000036','INS0000008'),('REN0000038','INS0000008'),('REN0000039','INS0000008'),('REN0000005','INS0000009'),('REN0000006','INS0000009'),('REN0000013','INS0000009'),('REN0000014','INS0000009'),('REN0000021','INS0000009'),('REN0000022','INS0000009'),('REN0000029','INS0000009'),('REN0000030','INS0000009'),('REN0000037','INS0000009'),('REN0000001','INS0000010'),('REN0000005','INS0000010'),('REN0000006','INS0000010'),('REN0000013','INS0000010'),('REN0000014','INS0000010'),('REN0000021','INS0000010'),('REN0000022','INS0000010'),('REN0000029','INS0000010'),('REN0000030','INS0000010'),('REN0000037','INS0000010'),('REN0000039','INS0000010'),('REN0000001','INS0000011'),('REN0000005','INS0000011'),('REN0000006','INS0000011'),('REN0000013','INS0000011'),('REN0000014','INS0000011'),('REN0000021','INS0000011'),('REN0000022','INS0000011'),('REN0000029','INS0000011'),('REN0000030','INS0000011'),('REN0000037','INS0000011'),('REN0000038','INS0000011'),('REN0000039','INS0000011'),('REN0000001','INS0000012'),('REN0000007','INS0000012'),('REN0000008','INS0000012'),('REN0000015','INS0000012'),('REN0000016','INS0000012'),('REN0000023','INS0000012'),('REN0000024','INS0000012'),('REN0000031','INS0000012'),('REN0000032','INS0000012'),('REN0000040','INS0000012');
/*!40000 ALTER TABLE `R_I` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VEHICLE`
--

DROP TABLE IF EXISTS `VEHICLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VEHICLE` (
  `VEHICLE_ID` varchar(10) NOT NULL,
  `COST` decimal(4,2) NOT NULL,
  `MODEL` varchar(20) NOT NULL,
  `TYPE` varchar(15) DEFAULT NULL,
  `YEAR` year DEFAULT NULL,
  `BRAND` varchar(20) DEFAULT NULL,
  `BRANCH_ID` varchar(10) DEFAULT 'BRAN000000',
  PRIMARY KEY (`VEHICLE_ID`),
  KEY `FK_VEHICLE_BRANCH` (`BRANCH_ID`),
  CONSTRAINT `FK_VEHICLE_BRANCH` FOREIGN KEY (`BRANCH_ID`) REFERENCES `BRANCH` (`BRANCH_ID`) ON UPDATE CASCADE,
  CONSTRAINT `VALID_VEHICLE_ID` CHECK (regexp_like(`VEHICLE_ID`,_utf8mb4'^[VEH]+[0-9]{7}$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VEHICLE`
--

LOCK TABLES `VEHICLE` WRITE;
/*!40000 ALTER TABLE `VEHICLE` DISABLE KEYS */;
INSERT INTO `VEHICLE` VALUES ('VEH0125670',55.00,'Santa Fe','SUV',2021,'Hyundai','BRAN000005'),('VEH0125671',55.00,'Santa Fe','SUV',2021,'Hyundai','BRAN000010'),('VEH0125678',60.00,'Charger','Sports Car',2019,'Dodge','BRAN000005'),('VEH0125679',32.00,'Sentra','Sedan',2017,'Nissan','BRAN000010'),('VEH1234560',55.00,'Explorer','SUV',2020,'Ford','BRAN000001'),('VEH1234567',38.00,'Civic','Sedan',2018,'Honda','BRAN000001'),('VEH1234569',40.00,'Corolla','Sedan',2017,'Toyota','BRAN000006'),('VEH1235671',55.00,'Explorer','SUV',2020,'Ford','BRAN000006'),('VEH2345670',47.00,'Tahoe','SUV',2021,'Chevrolet','BRAN000001'),('VEH2345671',47.00,'Tahoe','SUV',2021,'Chevrolet','BRAN000006'),('VEH2345678',42.00,'Accord','Sedan',2020,'Honda','BRAN000001'),('VEH2345679',32.00,'Camry','Sedan',2019,'Toyota','BRAN000006'),('VEH3455670',58.00,'Highlander','SUV',2019,'Toyota','BRAN000002'),('VEH3455671',58.00,'Highlander','SUV',2019,'Toyota','BRAN000007'),('VEH3455678',40.00,'Corolla','Sedan',2019,'Toyota','BRAN000002'),('VEH3455679',30.00,'Fusion','Sedan',2018,'Ford','BRAN000007'),('VEH4565670',46.00,'Pilot','SUV',2020,'Honda','BRAN000002'),('VEH4565671',46.00,'Pilot','SUV',2020,'Honda','BRAN000007'),('VEH4565678',32.00,'Camry','Sedan',2021,'Toyota','BRAN000002'),('VEH4565679',57.00,'Mustang','Sports Car',2020,'Ford','BRAN000007'),('VEH5675670',58.00,'Grand Cherokee','SUV',2021,'Jeep','BRAN000003'),('VEH5675671',48.00,'Grand Cherokee','SUV',2021,'Jeep','BRAN000008'),('VEH5675678',32.00,'Sentra','Sedan',2017,'Nissan','BRAN000003'),('VEH5675679',55.00,'Camaro','Sports Car',2021,'Chevrolet','BRAN000008'),('VEH6785670',49.00,'Escape','SUV',2019,'Ford','BRAN000003'),('VEH6785671',49.00,'Escape','SUV',2019,'Ford','BRAN000008'),('VEH6785678',35.00,'Altima','Sedan',2019,'Nissan','BRAN000003'),('VEH6785679',60.00,'Charger','Sports Car',2019,'Dodge','BRAN000008'),('VEH7895670',45.00,'CX-5','SUV',2020,'Mazda','BRAN000004'),('VEH7895671',45.00,'CX-5','SUV',2020,'Mazda','BRAN000009'),('VEH7895678',30.00,'Fusion','Sedan',2018,'Ford','BRAN000004'),('VEH7895679',38.00,'Civic','Sedan',2018,'Honda','BRAN000009'),('VEH8905670',47.00,'Tucson','SUV',2019,'Hyundai','BRAN000004'),('VEH8905671',47.00,'Tucson','SUV',2019,'Hyundai','BRAN000009'),('VEH8905678',57.00,'Mustang','Sports Car',2020,'Ford','BRAN000004'),('VEH8905679',42.00,'Accord','Sedan',2020,'Honda','BRAN000009'),('VEH9015670',50.00,'Rav4','SUV',2018,'Toyota','BRAN000005'),('VEH9015671',50.00,'Rav4','SUV',2018,'Toyota','BRAN000010'),('VEH9015678',55.00,'Camaro','Sports Car',2021,'Chevrolet','BRAN000005'),('VEH9015679',35.00,'Altima','Sedan',2019,'Nissan','BRAN000010');
/*!40000 ALTER TABLE `VEHICLE` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-05 23:04:03
