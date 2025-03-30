-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `IngredientID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Info` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`IngredientID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (4,'frozen crispy chicken nuggets','made with white meat chicken and have a deliciously crispy breading for the perfect amount of crunch'),(5,'mayonnaise','a thick, creamy, oil-based spread or sauce made from egg yolks, oil, and other ingredients'),(6,'sweet chili sauce','Made with red chillies and red peppers'),(7,'Sriracha hot sauce','a type of hot sauce or chili sauce made from a paste of chili peppers, distilled vinegar, pickled garlic, sugar, and salt'),(8,'sliced green onions','edible vegetables of various species in the genus Allium'),(9,'rib roast','portions of the so-called \"eye\" of the rib, as well as the outer, fat-marbled muscle (spinalis dorsi) known as the \"cap.\"'),(10,'olive oil','oil extracted from the fleshy part of the ripened fruit of the olive tree, Olea europaea'),(11,'sea salt','salt produced by evaporation of ocean water or water from saltwater lakes'),(12,'freshly ground black pepper','Black pepper is the most pungent and flavourful of all types of peppers and it is available as whole or cracked peppercorns, or ground into powder'),(13,'garlic','A herb growing from a strongly aromatic, rounded bulb composed of around 10 to 20 cloves covered in a papery coat'),(14,'pork','meat from a pig, usually fresh and not smoked or salted'),(15,'paprika','spice made from dried sweet peppers ground to to a fine powder'),(16,'cayenne pepper','a hot chili pepper that is long, thin, and red in color'),(17,'chicken meat','white meat that comes from a chicken'),(18,'butter','a dairy product made from separating whole milk or cream into fat and buttermilk'),(19,'carrot','a fleshy edible, colorful root'),(20,'milk','A white liquid produced by the mammary glands of female mammals for feeding their young beginning immediately after birth'),(21,'cheese','a type of dairy product produced in a range of flavors, textures, and forms by coagulation of the milk protein casein'),(22,'bread','a food consisting of flour or meal that is moistened, kneaded into dough, and often fermented using yeast'),(23,'ketchup','a red, tomatoe-based condiment'),(24,'egg','the hard-shelled reproductive body produced by a bird'),(25,'water','It is a universal solvent and is used to help dissolve and extract flavorful compounds in soups, stocks, and sauce'),(26,'steak','a cut of meat that\'s sliced across muscle fibers, and is often cooked by grilling or frying');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-11  0:00:05
