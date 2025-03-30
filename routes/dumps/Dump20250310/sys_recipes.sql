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
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `FoodName` varchar(100) DEFAULT NULL,
  `Instructions` varchar(1000) DEFAULT NULL,
  `RecipeID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RecipeID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES ('Bang Bang Chicken Nuggets','Cut chicken into about 1 to 1 1/2- inch pieces; add to the bowl of a food processor. Add breadcrumbs, salt, paprika, black pepper, cayenne, garlic powder, and the 1 tablespoon vegetable oil to the food processor, and pulse on and off until mixture is finely ground, but not yet a smooth puree. Scoop 2 tablespoon-sized portions onto a sheet pan, making 24 total. Cover and chill for about 30 minutes. Meanwhile, shake self-rising flour and cornstarch together in a bag, and set aside. Using slightly damp hands, shape each portion into a ball; add 5 to 6 at a time to the flour mixture in the bag. Toss to coat, shake off excess, and place back on the sheet pan. Once coated, form each into the nugget shape of your choice. A ball shape works well for deep frying; if pan-frying, a flat nugget works best. Chill in the refrigerator for at least 1 to 2 hours, or until ready to fry. Nuggets can be made a day ahead.',8,'chicken'),('Easy Standing Rib Roast','Brush the roast with oil, then season. Place onto the rack with the fatty side facing up.\nRoast in the preheated oven until browned.\nReduce the temperature to 325 degrees F and tent with foil.\nKeep cooking until an instant-read thermometer registers 140 degrees F.\nRemove from the oven, let stand, then remove the foil and carve.',32,'beef'),('Hot Dog','First place the pork on a plate into the microwave and cook for 1 minute. After cooking the pork place the piece on top of a piece a bread and bend the bread around the pork. Pour about 2 ounces of ketchup in a line across the long side of the pork. ',41,'sausage'),('Scramble Eggs','First, beat the eggs. Place them in a medium bowl, and whisk until the yolk and whites are thoroughly combined. Add the milk and whisk again until the beaten eggs are a even yellow color. \r\n\r\nNext, gently preheat the pan.  Then melt a little butter inside it. Warm the skillet over medium heat.Finally, cook. Pour in the egg mixture, and let it cook for a few seconds, undisturbed. \r\n\r\nThen, pull a rubber spatula across the bottom of the pan to form large, soft curds of scrambled eggs. Continue cooking over medium-low heat, folding and stirring the eggs every few seconds. \r\n\r\nAs you work, make sure to scrape your spatula along the bottom and sides of the pan to continue to form curds and to prevent any part of the eggs from drying out.\r\n\r\nFor a soft, creamy scramble, stop when the eggs are mostly set, but a little liquid egg remains. Remove the pan from the heat, and season to taste with salt and pepper.',59,'egg'),('Cowboy Steak','For compound butter, combine butter, parsley, mustard, rosemary, smoked paprika, garlic, and cayenne pepper in a small bowl. Spoon onto a sheet of waxed paper. Roll into a log. Wrap in the waxed paper. Chill in the refrigerator until firm, 30 minutes or up to 1 week. For steak, let steak stand at room temperature for 45 minutes. Preheat the oven to 400 degrees F (200 degrees C). Place a wire rack in a foil-lined rimmed baking sheet.Heat oil in a 12-inch cast iron skillet over medium-high until it starts to smoke. Season steak generously with salt and pepper.Sear steak in the skillet until well-browned, 5 minutes per side, then 2 minutes on the fat cap side. Place steak on the rack in the prepared baking sheet.Roast 45 minutes or until an instant-read thermometer inserted into the center registers 135 degrees F (57 degrees C) for medium rare, or 150 degrees F (65 degrees C) for medium. Slice between meat and bone to separate. Thinly slice steak across the grain. Top sliced steak with \r\n',60,'beef');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
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
