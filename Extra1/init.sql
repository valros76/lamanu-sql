-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: video_games
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

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

CREATE DATABASE IF NOT EXISTS `videoGames` ;
--
-- Table structure for table `games`
--
USE `videoGames`;
DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(255) NOT NULL,
  `g_mode` varchar(100) NOT NULL,
  `g_published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `g_pegi` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`g_id`),
  KEY `FK_games_s_id` (`s_id`),
  CONSTRAINT `FK_games_s_id` FOREIGN KEY (`s_id`) REFERENCES `studios` (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Halo : Combat Evolved - Anniversary','Solo / Multijoueur','2010-12-31 23:00:00',16,1),(2,'Halo : The Master Chief Collection','Solo / Multijoueur','2013-12-31 23:00:00',16,1),(3,'Halo Wars','Solo / Multijoueur','2008-12-31 23:00:00',16,18),(4,'Halo 4','Solo / Multijoueur','2011-12-31 23:00:00',16,1),(5,'Alien : Isolation','Solo','2013-12-31 23:00:00',18,14),(6,'The Witcher : Enhanced Edition','Solo','2007-12-31 23:00:00',18,7),(7,'The Witcher 2 : Assassins of Kings','Solo','2010-12-31 23:00:00',18,7),(8,'The Witcher 3 : Wild Hunt - Blood and Wine','Solo','2015-12-31 23:00:00',18,7),(9,'Overwatch','Multijoueur','2015-12-31 23:00:00',12,2),(10,'Doom Eternal','Solo / Multijoueur','2019-12-31 23:00:00',16,13),(11,'Star Wars : Battlefront','Solo / Multijoueur','2003-12-31 23:00:00',16,16),(12,'The Witcher 3 : Wild Hunt - Hearts of Stone','Solo','2014-12-31 23:00:00',18,7),(13,'Rocket League','Solo / Multijoueur','2014-12-31 23:00:00',3,19),(14,'Heroes of the Storm','Multijoueur','2014-12-31 23:00:00',12,2),(15,'The Witcher 3 : Wild Hunt','Multijoueur','2014-12-31 23:00:00',18,7),(16,'Assassin\'s Creed : Unity - Dead Kings','Solo / Multijoueur','2013-12-31 23:00:00',18,6),(17,'Lara Croft and the Temple of Osiris','Solo / Multijoueur','2013-12-31 23:00:00',12,9),(18,'Assassin\'s Creed : Unity','Solo / Multijoueur','2013-12-31 23:00:00',16,6),(19,'Watch Dogs','Solo / Multijoueur','2013-12-31 23:00:00',18,6),(20,'Assassin\'s Creed IV : Black Flag','Solo / Multijoueur','2012-12-31 23:00:00',18,6),(21,'Battlefield 4','Solo / Multijoueur','2012-12-31 23:00:00',18,16),(22,'Tomb Raider','Solo / Multijoueur','2014-12-31 23:00:00',18,17),(23,'Assassin\'s Creed III','Solo / Multijoueur','2011-12-31 23:00:00',18,6),(24,'Counter-Strike : Global Offensive','Solo / Multijoueur','2011-12-31 23:00:00',18,20),(25,'Diablo III','Solo / Multijoueur','2011-12-31 23:00:00',16,2),(26,'Battlefield 3','Solo / Multijoueur','2010-12-31 23:00:00',18,16),(27,'Portal 2','Solo / Coopératif','2010-12-31 23:00:00',12,20),(28,'Beyond Good & Evil HD','Solo','2010-12-31 23:00:00',7,6),(29,'Assassin\'s Creed : Brotherhood','Solo / Multijoueur','2009-12-31 23:00:00',18,6),(30,'Naruto Shippuden Ultimate Ninja Storm 2','Solo / Multijoueur','2009-12-31 23:00:00',12,6),(31,'Red Dead Redemption','Solo / Multijoueur','2009-12-31 23:00:00',18,5),(32,'Grand Theft Auto : Episodes from Liberty City','Solo / Multijoueur','2008-12-31 23:00:00',18,5),(33,'League of Legends','Multijoueur','2008-12-31 23:00:00',12,4),(34,'Naruto : The Broken Bond','1 à 4 joueurs','2007-12-31 23:00:00',12,6),(35,'Battlefield 3','Solo / Multijoueur','2010-12-31 23:00:00',18,16),(36,'Portal 2','Solo / Coopératif','2010-12-31 23:00:00',12,20),(37,'Beyond Good & Evil HD','Solo','2010-12-31 23:00:00',7,6),(38,'Assassin\'s Creed : Brotherhood','Solo / Multijoueur','2009-12-31 23:00:00',18,6),(39,'Naruto Shippuden Ultimate Ninja Storm 2','Solo / Multijoueur','2009-12-31 23:00:00',12,6),(40,'Red Dead Redemption','Solo / Multijoueur','2009-12-31 23:00:00',18,5),(41,'Grand Theft Auto : Episodes from Liberty City','Solo / Multijoueur','2008-12-31 23:00:00',18,5),(42,'League of Legends','Multijoueur','2008-12-31 23:00:00',12,4),(43,'Naruto : The Broken Bond','Solo / Multijoueur','2007-12-31 23:00:00',18,6),(44,'Gears of War 2','Solo / Multijoueur','2007-12-31 23:00:00',18,12),(45,'Assassin\'s Creed','Solo / Multijoueur','2007-12-31 23:00:00',16,6),(46,'Portal','Solo','2006-12-31 23:00:00',12,20),(47,'Age of Empires III','Solo / Multijoueur','2004-12-31 23:00:00',12,18),(48,'Need For Speed Underground 2','Solo / Multijoueur','2003-12-31 23:00:00',3,11),(49,'Cyberpunk 2077','Solo / Multijoueur','2020-09-30 22:00:00',18,7);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_genres`
--

DROP TABLE IF EXISTS `games_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_genres` (
  `genre_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  PRIMARY KEY (`genre_id`,`g_id`),
  KEY `FK_games_genres_g_id` (`g_id`),
  CONSTRAINT `FK_games_genres_g_id` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  CONSTRAINT `FK_games_platforms_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_genres`
--

LOCK TABLES `games_genres` WRITE;
/*!40000 ALTER TABLE `games_genres` DISABLE KEYS */;
INSERT INTO `games_genres` VALUES (1,1),(1,2),(1,4),(1,5),(1,9),(1,10),(1,11),(1,21),(1,24),(1,26),(1,35),(2,5),(2,6),(2,7),(2,8),(2,12),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,22),(2,23),(2,28),(2,29),(2,31),(2,32),(2,34),(2,36),(2,37),(2,40),(3,3),(3,38),(4,25),(5,6),(5,7),(5,8),(5,12),(5,15),(5,40),(6,16),(6,17),(6,18),(6,19),(6,20),(6,22),(6,23),(6,28),(6,29),(6,31),(6,32),(6,34),(6,36),(7,16),(7,18),(7,19),(7,20),(7,23),(7,29),(7,36),(8,31),(8,32),(9,31),(10,13),(11,14),(11,33),(12,27),(12,37),(13,30),(14,13),(14,32),(14,39);
/*!40000 ALTER TABLE `games_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_platforms`
--

DROP TABLE IF EXISTS `games_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_platforms` (
  `p_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`,`g_id`),
  KEY `FK_games_platforms_g_id` (`g_id`),
  CONSTRAINT `FK_games_platforms_g_id` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`),
  CONSTRAINT `FK_games_platforms_p_id` FOREIGN KEY (`p_id`) REFERENCES `platforms` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_platforms`
--

LOCK TABLES `games_platforms` WRITE;
/*!40000 ALTER TABLE `games_platforms` DISABLE KEYS */;
INSERT INTO `games_platforms` VALUES (1,48),(2,5),(2,6),(2,10),(2,11),(2,13),(2,14),(2,22),(2,24),(2,25),(2,27),(2,29),(2,33),(2,46),(2,47),(3,5),(3,8),(3,9),(3,10),(3,13),(3,15),(3,20),(3,25),(4,1),(4,2),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30),(4,32),(4,33),(4,46),(4,47),(4,48),(4,49),(5,11),(5,48),(6,5),(6,19),(6,20),(6,21),(6,24),(6,25),(6,28),(6,29),(6,30),(6,31),(6,32),(6,46),(7,5),(7,7),(7,8),(7,9),(7,10),(7,12),(7,13),(7,16),(7,17),(7,18),(7,19),(7,20),(7,21),(7,22),(7,23),(7,25),(7,26),(7,27),(7,29),(7,49),(8,8),(8,49),(9,10),(10,3),(12,19),(12,20),(12,23),(13,1),(13,2),(13,3),(13,4),(13,5),(13,7),(13,19),(13,20),(13,21),(13,22),(13,23),(13,24),(13,25),(13,26),(13,27),(13,28),(13,29),(13,30),(13,31),(13,32),(13,34),(13,44),(13,46),(14,1),(14,2),(14,3),(14,4),(14,5),(14,7),(14,8),(14,9),(14,10),(14,12),(14,13),(14,15),(14,16),(14,17),(14,18),(14,19),(14,20),(14,21),(14,24),(14,25),(14,28),(14,29),(14,30),(14,44),(14,46),(14,49),(15,2),(15,4),(15,8),(15,49),(16,11),(16,48);
/*!40000 ALTER TABLE `games_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'FPS'),(2,'Action'),(3,'RTS'),(4,'Hack \'n\' slash'),(5,'RPG'),(6,'Aventure'),(7,'Infiltration'),(8,'TPS'),(9,'GTA'),(10,'Football'),(11,'MOBA'),(12,'Réflexion'),(13,'Combat'),(14,'Course');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platforms` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (1,'GameCube'),(2,'MAC'),(3,'Nintendo Switch'),(4,'PC'),(5,'PlayStation 2'),(6,'PlayStation 3'),(7,'PlayStation 4'),(8,'PlayStation 5'),(9,'Stadia'),(10,'Steam'),(11,'Wii'),(12,'Wii U'),(13,' Xbox 360'),(14,'Xbox One'),(15,'Xbox Series X/S'),(16,'Xbox');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studios`
--

DROP TABLE IF EXISTS `studios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studios` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) NOT NULL,
  `s_nationality` varchar(255) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studios`
--

LOCK TABLES `studios` WRITE;
/*!40000 ALTER TABLE `studios` DISABLE KEYS */;
INSERT INTO `studios` VALUES (1,'343 Industries','USA'),(2,'Blizzard Entertainment','USA'),(3,'DICE','USA'),(4,'Riot Games','USA'),(5,'Rockstar','USA'),(6,'Ubisoft','France'),(7,'CD Projekt','Polonais'),(8,'Core Design','USA'),(9,'Crystal Dynamics','Japon'),(10,'DICE','USA'),(11,'EA Black Box','USA'),(12,'Epic Games','USA'),(13,'id Software','USA'),(14,'Creative Assembly et Feral Interactive','Corée'),(16,'DICE','USA'),(17,'Eidos','USA'),(18,'Ensemble Studios','USA'),(19,'Psyonix','USA'),(20,'Valve Corporation','USA'),(21,'CD Projekt','Pologne');
/*!40000 ALTER TABLE `studios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 14:46:35
