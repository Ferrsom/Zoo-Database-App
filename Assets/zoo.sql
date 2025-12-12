-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: zoo
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `futter`
--

DROP TABLE IF EXISTS `futter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `futter` (
  `fID` int(11) NOT NULL AUTO_INCREMENT,
  `FBezeichnung` varchar(50) DEFAULT NULL,
  `Kommentar` text DEFAULT NULL,
  `Verpackungsgroesse` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futter`
--

LOCK TABLES `futter` WRITE;
/*!40000 ALTER TABLE `futter` DISABLE KEYS */;
INSERT INTO `futter` VALUES (9,'Heu Bergwiese','Staubarm, ideal für Kaninchen und Meerschweinchen.','1 Ballen H'),(10,'Walnüsse Natur','Ergänzungsfutter für Eichhörnchen und Vögel.','100 g Nüss'),(11,'Vogelfutter Wintermix','Energiereich, perfekt für Winterfütterung.','1 kg Beute'),(12,'Mehlwürmer getrocknet','Für Reptilien und Wildvögel geeignet.','250 g Dose'),(13,'Rinderkraftfutter','Universal-Kraftfutter für Rinderbestände.','25 kg Sack'),(14,'Hasenfutter Kräutermix','Mit natürlichen Kräutern für eine gesunde Verdauung.','500 g Beut'),(15,'Hundefutter Soft Snack Rind','Weiche Snacks, gut für Training.','150 g Tüte'),(16,'Rinderhack tiefgekühlt','Für Wölfe, Luchse und Füchse. Reich an Protein.','1 kg Beute'),(17,'Fischmix Nordsee','Für Pinguine. Mischung aus Hering, Makrele und Sandaal.','500 g Pack'),(18,'Seegras-Pellets Premium','Hauptfutter für Seepferdchen.','200 g Dose'),(19,'Tropenfruchtmix','Für Papageien. Enthält Papaya, Mango, Beeren und Nüsse.','1 kg Box'),(20,'Nager- & Kräutermix Wald','Für Füchse als Ergänzung (naturnahe Kräuter/Nager).','750 g Tüte'),(21,'Bambuspresslinge Elefantenpremium','Ergänzungsfutter für Elefanten, ballaststoffreich.','5 kg Sack'),(22,'Laub- und Zweigmix Elchwald','Für Elche, energiereiches Winterfutter.','2 kg Balle'),(23,'Geflügelstreifen Bärenkraft','Für Braunbären als Proteinquelle.','1,5 kg Tüt'),(24,'Frostmäuse XL','Hauptfutter für Kobras.','20 Stück P'),(25,'Honig-Nuss-Mix Papagei Aktiv','Energiesnack für Papageien.','500 g Dose');
/*!40000 ALTER TABLE `futter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `füttern`
--

DROP TABLE IF EXISTS `füttern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `füttern` (
  `fuetID` int(11) NOT NULL AUTO_INCREMENT,
  `Menge` varchar(10) DEFAULT NULL,
  `Uhrzeit` varchar(10) DEFAULT NULL,
  `TierID` int(11) DEFAULT NULL,
  `FutterID` int(11) DEFAULT NULL,
  PRIMARY KEY (`fuetID`),
  KEY `TierID` (`TierID`),
  KEY `FutterID` (`FutterID`),
  CONSTRAINT `füttern_ibfk_1` FOREIGN KEY (`TierID`) REFERENCES `tiere` (`tierID`),
  CONSTRAINT `füttern_ibfk_2` FOREIGN KEY (`FutterID`) REFERENCES `futter` (`fID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `füttern`
--

LOCK TABLES `füttern` WRITE;
/*!40000 ALTER TABLE `füttern` DISABLE KEYS */;
INSERT INTO `füttern` VALUES (25,'250 mg','08:00',6,16),(26,'150 g','16:00',6,20),(27,'600 g','09:00',7,23),(28,'400 g','17:00',7,19),(29,'5 g','10:00',8,18),(30,'5 g','18:00',8,18),(31,'700 g','08:00',9,16),(32,'400 g','09:00',10,16),(33,'2 Kg','07:30',11,22),(34,'1 Kg','15:30',11,22),(35,'4 Kg','10:00',12,21),(36,'1 Kg','18:00',12,19),(37,'300 g','09:00',13,17),(38,'2 St.','12:00',14,24),(39,'100 g','08:30',15,19),(40,'30 g','15:00',15,25);
/*!40000 ALTER TABLE `füttern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gehege`
--

DROP TABLE IF EXISTS `gehege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gehege` (
  `gID` int(11) NOT NULL AUTO_INCREMENT,
  `GBezeichnung` varchar(50) DEFAULT NULL,
  `KontinentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  KEY `KontinentID` (`KontinentID`),
  CONSTRAINT `gehege_ibfk_1` FOREIGN KEY (`KontinentID`) REFERENCES `kontinent` (`kID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gehege`
--

LOCK TABLES `gehege` WRITE;
/*!40000 ALTER TABLE `gehege` DISABLE KEYS */;
INSERT INTO `gehege` VALUES (2,'Savanne',3),(3,'Steppe',7),(4,'Regenwald',5),(5,'Polarregionen',8),(6,'EU Wald',6),(7,'USA Wald',4),(8,'Dschungel',2),(9,'AUS Ozean',7);
/*!40000 ALTER TABLE `gehege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontinent`
--

DROP TABLE IF EXISTS `kontinent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontinent` (
  `kID` int(11) NOT NULL AUTO_INCREMENT,
  `KBezeichnung` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontinent`
--

LOCK TABLES `kontinent` WRITE;
/*!40000 ALTER TABLE `kontinent` DISABLE KEYS */;
INSERT INTO `kontinent` VALUES (2,'Asia'),(3,'Afrika'),(4,'Nordamerika'),(5,'Südamerika'),(6,'Europa'),(7,'Australien'),(8,'Antarktis');
/*!40000 ALTER TABLE `kontinent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tierart`
--

DROP TABLE IF EXISTS `tierart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tierart` (
  `tierartID` int(11) NOT NULL AUTO_INCREMENT,
  `TABezeichnung` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tierartID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tierart`
--

LOCK TABLES `tierart` WRITE;
/*!40000 ALTER TABLE `tierart` DISABLE KEYS */;
INSERT INTO `tierart` VALUES (2,'Vögel'),(3,'Amphibien'),(4,'Säugtiere'),(5,'Reptilien'),(6,'Fische'),(7,'Insekten');
/*!40000 ALTER TABLE `tierart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiere`
--

DROP TABLE IF EXISTS `tiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiere` (
  `tierID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Gewicht` decimal(7,2) DEFAULT NULL,
  `Geburtsdatum` varchar(15) DEFAULT NULL,
  `TierartID` int(11) DEFAULT NULL,
  `GehegeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`tierID`),
  KEY `TierartID` (`TierartID`),
  KEY `GehegeID` (`GehegeID`),
  CONSTRAINT `tiere_ibfk_1` FOREIGN KEY (`TierartID`) REFERENCES `tierart` (`tierartID`),
  CONSTRAINT `tiere_ibfk_2` FOREIGN KEY (`GehegeID`) REFERENCES `gehege` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiere`
--

LOCK TABLES `tiere` WRITE;
/*!40000 ALTER TABLE `tiere` DISABLE KEYS */;
INSERT INTO `tiere` VALUES (6,'Luna (Fuchs)',8.50,'12.04.2019',4,6),(7,'Bruno (Braunbär)',280.00,'03.09.2016',4,7),(8,'Mila (Seepferdchen)',0.02,'20.02.2021',6,9),(9,'Rex (Wolf)',45.30,'15.11.2018',4,7),(10,'Kora (Luchs)',25.33,'08.06.2017',4,6),(11,'Theo (Elch)',503.25,'29.03.2014',4,7),(12,'Amara (Elefant)',4503.40,'17.05.2012',4,2),(13,'Fizz (Pinguin)',33.00,'03.12.2020',2,5),(14,'Naga (Kobra)',4.80,'11.10.2019',5,8),(15,'Pico (Papagei)',1.50,'14.07.2022',2,8);
/*!40000 ALTER TABLE `tiere` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-12 10:46:35
