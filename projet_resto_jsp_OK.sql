-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: projet_resto_jsp
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `IdArticle` int(11) NOT NULL AUTO_INCREMENT,
  `NomArticle` varchar(45) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Prix` double DEFAULT NULL,
  `NomImage` varchar(45) DEFAULT NULL,
  `Categorie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Salade a la caprese','Tomates, mozzarella et basilic',5,'salade-Caprese.jpg','Entrees'),(2,'Bruschetta de la mer','Saumon fumé sur sa tartine et pesto',7,'bruschetta.jpg','Entrees'),(3,'Aubergines parmigiana','Aubergines de saison gratinées',6,'aubergines.jpg','Entrees'),(4,'Carpaccio de bresaola au pesto','Tranches de boeuf séché sur lit de roquette',8,'carpaccio.jpg','Entrees'),(5,'Pizza napoletana','Pizza cuite au feu debois, mozzarella, origan',10,'pizza.jpg','Plats'),(6,'Lasagnes','Lasagne de boeuf et fromage italien',13,'lasagnes.jpg','Plats'),(7,'Spaghettis a la carbonara','Pâtes maison avec bacon et boeuf',14,'spaghetti.jpg','Plats'),(8,'Risotto al salmone','Riz carnaroli et saumon frais',14,'risotto.jpg','Plats'),(9,'Tiramisu','Recette traditionnelle et biscuits maison',6,'tiramisu.png','Desserts'),(10,'Panacota','Et son coulis de fruits rouges',5,'pannacotta.jpg','Desserts'),(11,'Fondant au chocolat','Et sa crème glacée',5,'fondant.jpg','Desserts'),(12,'Glace','Glaces maison, une boule, parfums voir ardoise',4,'glace.jpg','Desserts'),(13,'Eau plate ou minérale','Acquachiara - San Pellegrino ',3,'sanPellegrino.jpg','Boissons'),(14,'Vin rouge','Nebbiolo - Barbera - Sangiovese - Lambrusco',4,'lambrusco.jpg','Boissons'),(15,'Soda','Limonade et sodas maison - parfums voir ardoise',4,'limonade.jpg','Boissons'),(16,'Jus de fruit','orange - pomme - ananas - fraise',3,'jus.jpg','Boissons');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `IdClient` varchar(45) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes` (
  `IdCommandes` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Detail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdCommandes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 16:11:31
