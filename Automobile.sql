-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Automobile_Dealership
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
-- Table structure for table `Car_Upgrades`
--

DROP TABLE IF EXISTS `Car_Upgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Car_Upgrades` (
  `Car_Id` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Car_Manufacturer` varchar(45) NOT NULL,
  `Upgrade_Date` date NOT NULL,
  `Upgrade_Model` varchar(45) NOT NULL,
  `Upgrade_Year_of_manufacture` int NOT NULL,
  `Upgrade_fee` int NOT NULL,
  PRIMARY KEY (`Car_Id`,`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Car_Upgrades`
--

LOCK TABLES `Car_Upgrades` WRITE;
/*!40000 ALTER TABLE `Car_Upgrades` DISABLE KEYS */;
INSERT INTO `Car_Upgrades` VALUES (100,555,'Toyota','2024-10-04','KIA',2024,10000),(101,556,'Honda','2024-10-05','Honda',2023,10000),(102,557,'KIA','2024-10-06','Toyota',2023,10000),(103,558,'Volkswagen','2024-10-07','Ford',2023,10000),(104,559,'BMW','2024-10-08','Porsche',2023,10000),(105,560,'Porsche','2025-01-20','Tesla',2023,10000),(106,561,'Ford','2025-01-21','Toyota',2023,10000),(107,562,'Nissan','2025-01-22','Honda',2023,10000),(108,563,'Toyota','2025-01-23','Ford',2023,10000),(109,564,'Honda','2025-01-24','BMW',2025,10000),(110,565,'KIA','2026-01-30','Toyota',2025,10000),(111,566,'Toyota','2026-01-31','Ford',2025,10000),(112,567,'Honda','2026-02-01','Nissan',2025,10000),(113,568,'KIA','2026-02-02','Toyota',2025,10000),(114,569,'Volkswagen','2026-02-03','Honda',2025,10000),(115,570,'BMW','2026-02-04','Porsche',2025,10000);
/*!40000 ALTER TABLE `Car_Upgrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `Customer_ID` int NOT NULL,
  `Customer_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Age` int NOT NULL,
  `Phone_Number` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Zip_Code` int NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (555,'Hoerp Koi','HoerpKoi@yahoo.com','Female',45,'315-345-1111','34 Avenue ','Boston',11122),(556,'Herd Loer','Loerk@yahoo.com','Male',42,'315-345-1112','45 Street ','Boston',11224),(557,'Kylan Mape','Mape123@yahoo.com','Male',23,'315-345-1113','33 Brook st ','Boston',21346),(558,'John cena','john@yahoo.com','Male',19,'315-345-1114','983 St Avenue','Boston',14508),(559,'Randy Orton','randy@yahoo.com','Male',22,'315-345-1115','22 Hallowth st','Boston',41600),(560,'Rey mysterio','rey@yahoo.com','Male',52,'315-345-1116','3944 Ring road avenue','Boston',16692),(561,'Charlie Brown','CH@yahoo.com','Male',23,'315-245-0012','34 Harley St','Boston',20119),(562,'Greg Hale','gregs@yahoo.com','Male',44,'315-245-0014','21 Berly St','Boston',20120),(563,'Dalu Mozie','mchidalu@gmail.com','Female',23,'316-245-1233','5 High St Pl','Boston',20127),(564,'Herry leo','leoman@yahoo.co.uk','Male',25,'316-245-1234','44 Adelaide Park','Boston',62039),(565,'Sam Cohen','cohen@gmail.com','Male',45,'316-245-1235','66 Airplane Avenue','Boston',63940),(566,'Yousuf Quadri','quadrii@outlook.com','Male',26,'553-893-3882','2nd Michigan Avenue','Boston',77393),(567,'Tony Coleman','colezy@gmail.com','Male',28,'553-893-3883','200 Airport St','Boston',873044),(568,'Naquan Brown','brownfor@yahoo.com','Male',29,'553-893-3884','21 Clerly St','New Hampshire',219872),(569,'Alexander Siopy','siophy@gmail.com','Male',33,'553-893-3885','45 Andreas Avenue','New Hampshire',222347),(570,'James Brown','jbrown@ubank.com','Male',45,'553-893-3886','42 Churchill St','New Hampshire',219208);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Insurance`
--

DROP TABLE IF EXISTS `Insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Insurance` (
  `Insurance_Id` int NOT NULL,
  `Car_Id` int NOT NULL,
  `Issue_date` date NOT NULL,
  `Expiration_date` date NOT NULL,
  PRIMARY KEY (`Insurance_Id`,`Car_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Insurance`
--

LOCK TABLES `Insurance` WRITE;
/*!40000 ALTER TABLE `Insurance` DISABLE KEYS */;
INSERT INTO `Insurance` VALUES (2345,100,'2019-10-04','2020-10-04'),(2345,107,'2020-01-22','2021-01-22'),(2345,110,'2021-01-30','2022-01-30'),(2347,101,'2019-10-05','2020-10-05'),(2347,105,'2020-01-20','2021-01-20'),(2347,108,'2020-01-23','2021-01-23'),(2347,111,'2021-02-01','2022-01-31'),(2349,102,'2019-10-06','2020-10-06'),(2349,106,'2020-01-21','2021-01-21'),(2349,109,'2020-01-24','2021-01-24'),(2349,112,'2021-02-03','2022-02-01'),(2349,114,'2020-05-20','2021-05-20'),(2351,103,'2019-10-07','2020-10-07'),(2351,104,'2019-10-08','2020-10-08'),(2351,113,'2021-02-05','2022-02-02'),(2351,115,'2020-05-21','2021-05-21');
/*!40000 ALTER TABLE `Insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Insurance_Plans`
--

DROP TABLE IF EXISTS `Insurance_Plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Insurance_Plans` (
  `Insurance_Id` int NOT NULL,
  `Insurance_type` varchar(45) NOT NULL,
  `Length_of_Coverage` varchar(45) NOT NULL,
  `Insurance_quote` varchar(45) NOT NULL,
  `Coverage(%)` int NOT NULL,
  PRIMARY KEY (`Insurance_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Insurance_Plans`
--

LOCK TABLES `Insurance_Plans` WRITE;
/*!40000 ALTER TABLE `Insurance_Plans` DISABLE KEYS */;
INSERT INTO `Insurance_Plans` VALUES (2345,'Basic','1','1,000',20),(2347,'Comprehensive','1','1,500',40),(2349,'Premium','1','2,000',60),(2350,'Gold','1','3,000',100);
/*!40000 ALTER TABLE `Insurance_Plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `Car_ID` int NOT NULL,
  `Car_Manufacturer` varchar(45) NOT NULL,
  `Condition` varchar(45) NOT NULL,
  `Transmission` varchar(45) NOT NULL,
  `Year_of_Manufacturer` int NOT NULL,
  `Fuel_Type` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`Car_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (100,'Toyota','New','Automatic',2003,'Petrol','camry',20000),(101,'KIA','New','Automatic',2019,'Diesel','Coupe',30000),(102,'Honda','New','Manual',2017,'Petrol','Civic',11000),(103,'Toyota','New','Automatic',2020,'Petrol','Sienna',12334),(104,'Honda','New','Manual',2021,'Petrol','CR-V',44455),(105,'Toyota','Fair','Automatic',2003,'Diesel','Corolla',5000),(106,'KIA','Old','Automatic',2004,'Petrol','Slim E3',20000),(107,'Honda','Fair','Manual',2008,'Diesel','Pilot',22000),(108,'Toyota','Old','Automatic',2009,'Petrol','Corolla',24000),(109,'Honda','New','Manual',2015,'Petrol','Passport',26000),(110,'Volkswagen','New','Automatic',2014,'Diesel','Tetra',28000),(111,'BMW','New','Automatic',2016,'Petrol','M4',30000),(112,'Porsche','New','Automatic',2018,'Petrol','Cayman',32000),(113,'Honda','New','Manual',2020,'Diesel','Pilot',30000),(114,'Ford','New','Automatic',2018,'Petrol','F-150',31000),(115,'Nissan','New','Automatic',2020,'Petrol','S4',32000),(116,'Sedan','Old','Manual',2006,'Petrol','Sentra',3000),(117,'Hyundai','New','Automatic',2019,'Diesel','Sonia',11000),(118,'Audi','New','Automatic',2020,'Diesel','A8',20000),(119,'Cadillac','New','Automatic',2021,'Diesel','Escalade',40000),(120,'Ford','New','Automatic',2019,'Petrol','Mustang',14000),(121,'Toyota','New','Automatic',2018,'Petrol','Highlander',28000),(122,'Tesla','New','Automatic',2020,'Petrol','S3',80000),(123,'Lamborghini','New','Automatic',2020,'Petrol','Avator',200000);
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maintenance_Location`
--

DROP TABLE IF EXISTS `Maintenance_Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Maintenance_Location` (
  `Staff_Id` int NOT NULL,
  `Building` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  PRIMARY KEY (`Staff_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maintenance_Location`
--

LOCK TABLES `Maintenance_Location` WRITE;
/*!40000 ALTER TABLE `Maintenance_Location` DISABLE KEYS */;
INSERT INTO `Maintenance_Location` VALUES (23,'Block A','23th washington Street ','Peoria'),(24,'Block D','23th washington Street ','Peoria'),(35,'Block C','23th washington Street ','Peoria'),(40,'Block A','23th washington Street ','Peoria');
/*!40000 ALTER TABLE `Maintenance_Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maintenance_Schedule`
--

DROP TABLE IF EXISTS `Maintenance_Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Maintenance_Schedule` (
  `Car_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Staff_ID` int NOT NULL,
  `Purchase_Date` date NOT NULL,
  `Oil_Change` date NOT NULL,
  `Tire_Change` date NOT NULL,
  `Engine_Tune` date NOT NULL,
  `Battery_Check` date NOT NULL,
  `Body_Paint` date NOT NULL,
  PRIMARY KEY (`Car_ID`,`Customer_ID`,`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maintenance_Schedule`
--

LOCK TABLES `Maintenance_Schedule` WRITE;
/*!40000 ALTER TABLE `Maintenance_Schedule` DISABLE KEYS */;
INSERT INTO `Maintenance_Schedule` VALUES (100,555,23,'2019-10-04','2020-10-04','2021-10-04','2023-10-04','2023-11-04','2033-10-04'),(101,556,24,'2019-10-05','2020-10-05','2021-10-05','2023-10-05','2023-11-05','2033-10-05'),(102,557,35,'2019-10-06','2020-10-06','2021-10-06','2023-10-06','2023-11-06','2033-10-06'),(103,558,40,'2019-10-07','2020-10-07','2021-10-07','2023-10-07','2023-11-07','2033-10-07'),(104,559,23,'2019-10-08','2020-10-08','2021-10-08','2023-10-08','2023-11-08','2033-10-08'),(105,560,24,'2020-01-20','2021-01-20','2022-01-20','2024-01-21','2024-02-01','2034-01-21'),(106,561,35,'2020-01-21','2021-01-21','2022-01-21','2024-01-22','2024-02-02','2034-01-22'),(107,562,24,'2020-01-22','2021-01-22','2022-01-22','2024-01-23','2024-02-03','2034-01-23'),(108,563,23,'2020-01-23','2021-01-23','2022-01-23','2024-01-24','2024-02-04','2034-01-24'),(109,564,23,'2020-01-24','2021-01-24','2022-01-24','2024-01-25','2024-02-05','2034-01-25'),(110,565,24,'2021-01-30','2022-01-30','2023-01-30','2025-01-30','2025-03-15','2035-01-30'),(111,566,35,'2021-02-01','2022-01-31','2023-01-31','2025-01-31','2025-03-16','2035-01-31'),(112,567,40,'2021-02-03','2022-02-01','2023-02-01','2025-02-01','2025-03-17','2035-02-01'),(113,568,23,'2021-02-05','2022-02-02','2023-02-02','2025-02-02','2025-03-18','2035-02-02'),(114,569,24,'2020-05-20','2021-02-28','2023-02-03','2025-02-03','2025-03-19','2035-02-03'),(115,570,40,'2020-05-21','2021-05-22','2023-02-04','2025-02-04','2025-03-20','2035-02-04');
/*!40000 ALTER TABLE `Maintenance_Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maintenance_Staff`
--

DROP TABLE IF EXISTS `Maintenance_Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Maintenance_Staff` (
  `Staff_ID` int NOT NULL,
  `Staff_Name` varchar(45) NOT NULL,
  `Years_in_company` int NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Expertise_level` varchar(45) NOT NULL,
  `Jobs_Fulfilled` int NOT NULL,
  `Staff_Position` varchar(45) NOT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maintenance_Staff`
--

LOCK TABLES `Maintenance_Staff` WRITE;
/*!40000 ALTER TABLE `Maintenance_Staff` DISABLE KEYS */;
INSERT INTO `Maintenance_Staff` VALUES (23,'Hewro ',3,'348-893-0992','Novice',250,'Associate'),(24,'Jerry ',4,'348-893-0993','Proficient',200,'Associate'),(35,'Loeonard ',10,'348-893-0994','Expert',3000,'Supervisor'),(40,'Leah ',6,'348-978-0099','Proficient',1000,'Associate');
/*!40000 ALTER TABLE `Maintenance_Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment_Plan`
--

DROP TABLE IF EXISTS `Payment_Plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment_Plan` (
  `Payment_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Date_of_Purchase` date NOT NULL,
  `Payment_Plan` varchar(45) NOT NULL,
  `Total_Payment` int NOT NULL,
  `Payment_Received` int NOT NULL,
  `Payment_Owned` int NOT NULL,
  `Due_Date` date NOT NULL,
  PRIMARY KEY (`Payment_ID`,`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment_Plan`
--

LOCK TABLES `Payment_Plan` WRITE;
/*!40000 ALTER TABLE `Payment_Plan` DISABLE KEYS */;
INSERT INTO `Payment_Plan` VALUES (1,555,'2019-10-04','Yearly',20000,10000,10000,'2025-10-04'),(2,556,'2019-10-05','Monthly',30000,22466,7534,'2025-10-05'),(3,557,'2019-10-06','Yearly',11000,11000,0,'2025-10-06'),(4,558,'2019-10-07','Monthly',12334,6000,6334,'2025-10-07'),(5,559,'2019-10-08','Yearly',44455,26228,18227,'2025-10-08'),(6,560,'2020-01-20','Monthly',5000,2950,2050,'2026-01-20'),(7,561,'2020-01-21','Yearly',20000,11800,8200,'2026-01-21'),(8,562,'2020-01-22','Yearly',22000,12980,9020,'2026-01-22'),(9,563,'2020-01-23','Yearly',24000,24000,0,'2026-01-23'),(10,564,'2020-01-24','Monthly',26000,15340,10660,'2026-01-24'),(11,565,'2021-01-30','Yearly',28000,16520,11480,'2027-01-30'),(12,566,'2021-02-01','Yearly',30000,17700,12300,'2027-01-31'),(13,567,'2021-02-03','Monthly',32000,18880,13120,'2027-02-01'),(14,568,'2021-02-05','Yearly',30000,17700,12300,'2027-02-02'),(15,569,'2020-05-20','Monthly',31000,18290,12710,'2026-05-20'),(16,570,'2020-05-21','Yearly',32000,18880,13120,'2026-05-21');
/*!40000 ALTER TABLE `Payment_Plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sale`
--

DROP TABLE IF EXISTS `Sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sale` (
  `Car_ID` int NOT NULL,
  `Customer_ID` varchar(45) NOT NULL,
  `Sale_Price` varchar(45) NOT NULL,
  `Date_of_Purchase` varchar(45) NOT NULL,
  PRIMARY KEY (`Car_ID`,`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sale`
--

LOCK TABLES `Sale` WRITE;
/*!40000 ALTER TABLE `Sale` DISABLE KEYS */;
INSERT INTO `Sale` VALUES (100,'555','20000','2019-10-04'),(101,'556','30000','2019-10-05'),(102,'557','11000','2019-10-06'),(103,'558','12334','2019-10-07'),(104,'559','44455','2019-10-08'),(105,'560','5000','2020-01-20'),(106,'561','20000','2020-01-21'),(107,'562','22000','2020-01-22'),(108,'563','24000','2020-01-23'),(109,'564','26000','2020-01-24'),(110,'565','28000','2021-01-30'),(111,'566','30000','2021-02-01'),(112,'567','32000','2021-02-03'),(113,'568','30000','2021-02-05'),(114,'569','31000','2020-05-20'),(115,'570','32000','2020-05-21');
/*!40000 ALTER TABLE `Sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Automobile_Dealership'
--
/*!50003 DROP PROCEDURE IF EXISTS `Honda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Honda`(IN in_price INT)
BEGIN
DECLARE done INT DEFAULT FALSE;
 DECLARE v VARCHAR(40);
 
 DECLARE cur1 CURSOR FOR
	select Car_Manufacturer 
    from Inventory;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

OPEN cur1;
 read_loop: LOOP
   FETCH cur1 into v;
 IF done THEN
   LEAVE read_loop;
 END IF;

If v="Honda" THEN
	update Inventory
	set Price = in_model
	where Car_Manufacturer = v;
END IF;

END LOOP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `KIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `KIA`()
BEGIN
DECLARE done INT DEFAULT FALSE;
 DECLARE v VARCHAR(40);
 
 DECLARE cur1 CURSOR FOR
	select Car_Manufacturer 
    from Inventory;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
 
 OPEN cur1;
 read_loop: LOOP
   FETCH cur1 into v;
 IF done THEN
   LEAVE read_loop;
 END IF;

If v="KIA" THEN
	update Inventory
	set Price = 5000
	where Car_Manufacturer = v;
END IF;

END LOOP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-28 22:24:10
