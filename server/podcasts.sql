-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: evey
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `podcasts`
--

DROP TABLE IF EXISTS `podcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcasts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  `imageUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `podcasts_userId_foreign_idx` (`userId`),
  CONSTRAINT `podcasts_userId_foreign_idx` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcasts`
--

LOCK TABLES `podcasts` WRITE;
/*!40000 ALTER TABLE `podcasts` DISABLE KEYS */;
INSERT INTO `podcasts` VALUES (1,'Baby, This is Keke Palmer','Keke Palmer has questions for days, about everything under the sun. From the existential to the inconsequential. From pop culture to pop science. From the meaning of life to the meaning of W.A.P. From life in outer space to “Where the eff is Tom from MySpace?“ And everything in between. Because Baby, this is Keke Palmer, and she is here for All. Of. It.','Keke Palmer','News & Politics','2023-03-08 11:25:08','2023-03-08 11:25:08',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(7,'News & Politics Podcast 1','Description 1','Author 1','News & Politics','2023-03-08 11:30:52','2023-03-08 11:30:52',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(8,'News & Politics Podcast 2','Description 2','Author 2','News & Politics','2023-03-08 11:30:52','2023-03-08 11:30:52',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(9,'Economy and Business Podcast 1','Description 3','Author 3','Economy and Business','2023-03-08 11:30:52','2023-03-08 11:30:52',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(10,'Economy and Business Podcast 2','Description 4','Author 4','Economy and Business','2023-03-08 11:30:52','2023-03-08 11:30:52',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(11,'Technologie Podcast 1','Description 5','Author 5','Technologie','2023-03-08 11:30:52','2023-03-08 11:30:52',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(12,'Start-up Podcast 1','Description 6','Author 6','Start-up','2023-03-08 11:30:52','2023-03-08 11:30:52',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(13,'News & Politics Podcast','Description 1','Author 1','News & Politics','2023-03-08 11:30:58','2023-03-08 11:30:58',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(14,'Economy and Business Podcast','Description 2','Author 2','Economy and Business','2023-03-08 11:30:58','2023-03-08 11:30:58',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(15,'Technologie Podcast','Description 3','Author 3','Technologie','2023-03-08 11:30:58','2023-03-08 11:30:58',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(16,'Start-up Podcast','Description 4','Author 4','Start-up','2023-03-08 11:30:58','2023-03-08 11:30:58',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(17,'News & Politics Podcast 1','Description 1','Author 1','News & Politics','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(18,'News & Politics Podcast 2','Description 2','Author 2','News & Politics','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(19,'Economy and Business Podcast 1','Description 3','Author 3','Economy and Business','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(20,'Economy and Business Podcast 2','Description 4','Author 4','Economy and Business','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(21,'Technologie Podcast 1','Description 5','Author 5','Technologie','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(22,'Technologie Podcast 2','Description 6','Author 6','Technologie','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(23,'Start-up Podcast 1','Description 7','Author 7','Start-up','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(24,'Start-up Podcast 2','Description 8','Author 8','Start-up','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(25,'News & Politics Podcast 3','Description 9','Author 9','News & Politics','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(26,'Economy and Business Podcast 3','Description 10','Author 10','Economy and Business','2023-03-08 11:35:50','2023-03-08 11:35:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(27,'The Evolution of Computers','Join us as we explore the fascinating history of computers from their early beginnings to the present day.','John Smith','Technologie','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(28,'The Rise and Fall of the Roman Empire','Learn about one of the most powerful empires in history and the factors that led to its decline.','Sarah Johnson','History','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(29,'The Future of Space Travel','Join us as we discuss the latest developments in space technology and what the future holds for space exploration.','David Lee','Technologie','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(30,'The American Revolution','Explore the events leading up to the American Revolution and the impact it had on American history.','Thomas Williams','History','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(31,'The Role of Government in Modern Society','Discussing the different types of governments, their roles and responsibilities, and how they impact society today.','Jennifer Garcia','Government','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(32,'The Impact of Social Media on Society','Join us as we discuss the ways in which social media has changed the way we communicate and interact with each other.','Michael Brown','Technologie','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(33,'The French Revolution','Explore the causes and effects of the French Revolution, one of the most important events in European history.','Julie Martin','History','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(34,'The Importance of Voting','Discussing the importance of civic participation and the role that voting plays in a democratic society.','Mark Johnson','Government','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(35,'The Role of Artificial Intelligence in Business','Exploring the ways in which AI is changing the way businesses operate and the impact it is having on the workforce.','Emily Chen','Technologie','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(36,'The Civil Rights Movement','Learn about the fight for civil rights in America and the leaders and activists who helped to bring about change.','Robert Lee','History','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(37,'The History of Ancient Egypt','Explore the fascinating history of Ancient Egypt, from the pyramids to the pharaohs and beyond.','Karen White','History','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(38,'The Future of Work','Join us as we discuss the ways in which technology is changing the way we work and the skills needed to succeed in the digital age.','Alex Brown','Technologie','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(39,'The Role of Government in International Relations','Discussing the ways in which governments interact with each other and the challenges they face in maintaining global stability and security.','John Doe','Government','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(40,'The Start-up Mindset','Learn about the mindset and strategies needed to succeed as an entrepreneur in today\'s fast-paced business world.','Jessica Smith','Start-up','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(41,'The History of the United States','Explore the history of the United States, from its founding to the present day, and the challenges it has faced along the way.','David Johnson','History','2023-03-08 00:00:00','2023-03-08 00:00:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(42,'Le rôle du gouvernement dans la gestion de la crise sanitaire','Dans cet épisode, nous discutons du rôle crucial que joue le gouvernement dans la gestion de la pandémie actuelle. Nous abordons les mesures prises par les différents pays pour limiter la propagation du virus, ainsi que les défis auxquels les gouvernements sont confrontés pour assurer la sécurité et le bien-être de leurs citoyens.','Julie Dupont','Government','2022-02-15 10:00:00','2022-02-15 10:30:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(43,'Comment la technologie transforme nos vies','Dans cet épisode, nous discutons des façons dont la technologie a transformé nos vies au cours des dernières décennies. Nous examinons les innovations les plus importantes dans le domaine de la technologie, ainsi que les défis éthiques et sociaux auxquels nous sommes confrontés à mesure que la technologie continue de progresser.','Alexandre Tremblay','Technologie','2022-02-18 14:00:00','2022-02-18 14:30:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(44,'Comment lancer sa propre start-up','Dans cet épisode, nous discutons des étapes clés pour lancer sa propre start-up. Nous abordons les sujets important','Alexandre Tremblay','Technologie','2022-02-18 14:00:00','2022-02-18 14:30:00',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(45,'Comment démarrer une start-up','Dans cette émission, nous discutons des étapes essentielles pour lancer une start-up réussie, en explorant des sujets tels que la recherche de marché, la planification des finances et la construction d\'une équipe.','John Doe','Start-up','2023-03-08 12:17:16','2023-03-08 12:17:16',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(46,'Comment fonctionne le système politique','Dans cette émission, nous explorons comment les gouvernements sont formés, comment les élections sont organisées et comment les lois sont adoptées.','Jane Smith','Government','2023-03-08 12:17:35','2023-03-08 12:17:35',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(47,'La transparence dans le gouvernement','Dans cette émission, nous discutons de l\'importance de la transparence dans le gouvernement et de la façon dont elle peut renforcer la confiance des citoyens dans leurs dirigeants.','John Doe','Government','2023-03-08 12:17:35','2023-03-08 12:17:35',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(48,'Comment le gouvernement gère les crises','Dans cette émission, nous examinons comment les gouvernements peuvent gérer efficacement les crises, telles que les pandémies et les catastrophes naturelles.','Alice Jones','Government','2023-03-08 12:17:35','2023-03-08 12:17:35',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(49,'Mon premier podcast','Un podcast sur la programmation','John Doe','Other','2023-03-09 16:17:25','2023-03-09 16:17:25',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(50,'The Big Ben','the row may have many issus but the real one dosen\'t need that to leave, so stay back litle yong man','Arthur Smogman','Start-up','2023-03-09 16:59:36','2023-03-09 16:59:36',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(51,'The Big Ben','the row may have many issus but the real one dosen\'t need that to leave, so stay back litle yong man','Arthur Smogman','Start-up','2023-03-09 16:59:37','2023-03-09 16:59:37',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(52,'La Mierdei ','dicaprio on the route, he need some milk, but eventually he can fly so he fly into the coatch that have the milk that he need and that\'s it','Bow Man','Health And Wellness','2023-03-09 17:45:28','2023-03-09 17:45:28',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(53,'The man show flight','This about somthing good like many orther, but you ! no you don\'t know everything that can be something in the meaning it self','Samantha Light','Health And Wellness','2023-03-09 19:00:42','2023-03-09 19:00:42',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(54,'The man show flight','This about somthing good like many orther, but you ! no you don\'t know everything that can be something in the meaning it self','Samantha Light','History','2023-03-09 19:07:50','2023-03-09 19:07:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(55,'Light me back baby','Hi am conny i love baby shark and damion ... yeah DAMION OMG am a big fan of him ! he\'s so sexy and every one call his the Musculator, just i love him !','Bananna Girl','Other','2023-03-09 19:13:34','2023-03-09 19:13:34',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(56,'The bigBeenShow','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Bow Man','Tv & Films','2023-03-09 19:15:56','2023-03-09 19:15:56',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(57,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Arthur Smogman','Health And Wellness','2023-03-09 19:19:02','2023-03-09 19:19:02',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(58,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','Health And Wellness','2023-03-09 19:20:30','2023-03-09 19:20:30',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(59,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','Tv & Films','2023-03-09 19:24:17','2023-03-09 19:24:17',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(60,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','Society & Culture','2023-03-09 19:25:47','2023-03-09 19:25:47',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(61,'Lorem ipsum dolor',' sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','Educational','2023-03-09 19:31:12','2023-03-09 19:31:12',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(62,'podcast big one ','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','Companies And Tunisia','2023-03-09 19:33:57','2023-03-09 19:33:57',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(63,'Zama tekhdim ','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Samantha Light','Society & Culture','2023-03-10 12:12:45','2023-03-10 12:12:45',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(64,'La mierdei la dicaprio','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fatman','Religion & Spirituality','2023-03-13 12:01:55','2023-03-13 12:01:55',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(65,'This is not the lorem !','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','Society & Culture','2023-03-13 19:16:01','2023-03-13 19:16:01',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(66,'podcast news','description news','testman','Arts & Culture','2023-03-14 09:20:43','2023-03-14 09:20:43',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(67,'podcast news','podcast news description','testman','Other','2023-03-14 09:21:21','2023-03-14 09:21:21',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(68,'Lorem ipsum dolor sit amet','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','Companies And Tunisia','2023-03-14 16:24:06','2023-03-14 16:24:06',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(69,'testpodcast','lorem','Postman','Health And Wellness','2023-03-15 12:37:39','2023-03-15 12:37:39',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(70,'Hogwarts Legacy','lorem','Postman','Health And Wellness','2023-03-15 12:39:31','2023-03-15 12:39:31',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(71,'lorem','lorem','Gouzman Fieldsheild','Tv & Films','2023-03-15 12:49:18','2023-03-15 12:49:18',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(72,'lorem','lorem','Postman','Society & Culture','2023-03-15 12:50:40','2023-03-15 12:50:40',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(73,'lorem','test','Gouzman Fieldsheilda','Health And Wellness','2023-03-15 13:10:34','2023-03-15 13:10:34',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(74,'lorem','lorem','Postman','Health And Wellness','2023-03-15 13:17:22','2023-03-15 13:17:22',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(75,'lorem','dadadadad','Postman','Health And Wellness','2023-03-15 13:18:42','2023-03-15 13:18:42',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(76,'hogwarts','lorem','Postman','Health And Wellness','2023-03-15 13:19:44','2023-03-15 13:19:44',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(77,'lorem','lorem','Postman','Health And Wellness','2023-03-15 14:42:44','2023-03-15 14:42:44',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(78,'lorem karima','hahheehehheheahehehea','Postman','Health And Wellness','2023-03-15 15:10:43','2023-03-15 15:10:43',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(79,'loremmmma','hahaahafaffadadaadadda','Postman','Health And Wellness','2023-03-15 15:21:56','2023-03-15 15:21:56',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(80,'agagag','azgazgzag','Gouzman Fieldsheild','Health And Wellness','2023-03-15 15:29:50','2023-03-15 15:29:50',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(81,'lorem','lorem','Postman','Health And Wellness','2023-03-15 16:38:39','2023-03-15 16:38:39',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(82,'podcast','lorem','Postman','Health And Wellness','2023-03-15 16:41:39','2023-03-15 16:41:39',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(83,'lorem ipsum caca','test last one','Postman','Health And Wellness','2023-03-15 17:28:58','2023-03-15 17:28:58',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(84,'lorem','lorem','Postman','Society & Culture','2023-03-15 17:30:49','2023-03-15 17:30:49',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(85,'lorem','lorem','Postman','Health And Wellness','2023-03-15 17:31:55','2023-03-15 17:31:55',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(86,'lorem','lorem','Postman','Health And Wellness','2023-03-15 17:37:34','2023-03-15 17:37:34',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(87,'lorememe','lororororororororor','Postman','Health And Wellness','2023-03-15 17:43:39','2023-03-15 17:43:39',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(88,'lorem','klorem','Postman','Health And Wellness','2023-03-15 17:46:38','2023-03-15 17:46:38',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(89,'lorem','lorem','Postman','Health And Wellness','2023-03-15 17:48:11','2023-03-15 17:48:11',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(90,'lorem','lorem','Postman','Health And Wellness','2023-03-15 17:52:53','2023-03-15 17:52:53',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678797343479-podcastImage.jpeg'),(91,'Lorem ipsum dolor sit','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fieldsheild','News & Politics','2023-03-16 10:56:35','2023-03-16 10:56:35',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678964191958-e0ca3e9a4749346e579bd03878a471041e50f530e4896cdb9e769d39ca2c123c236af2df3104db8d81adf59fd52593e1466c93f2bcf13e357b6812b78bca15de.jpeg'),(92,'Lapouta La Dicaprio','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fatman','News & Politics','2023-03-16 13:55:19','2023-03-16 13:55:19',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678974917348-podcastImage.jpeg'),(93,'Podcastis here','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fatman','News & Politics','2023-03-16 13:56:07','2023-03-16 13:56:07',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678974964480-podcast_image1.jpeg'),(94,'Songoku San','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','News & Politics','2023-03-16 13:58:34','2023-03-16 13:58:34',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678975056292-404593.jpg'),(95,'Goku San','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Gouzman Fatman','Economy and Business','2023-03-16 14:04:40','2023-03-16 14:04:40',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1678975475173-5baf8ed3367146d0baaf0c962979565f71e0f7db6e218ae694ade9ca334c9171e9ed835354693c464d63401dbf18e4c5ba09e8a2a122db843bcb92a7d2a3c6e1.jpg'),(96,'Podcast genre','lorem Podcast genre','Gouzman Fatman','Companies And Tunisia','2023-03-19 10:55:12','2023-03-19 10:55:12',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1679223183897-podcastimage4.jpeg'),(97,'Lorem ipsum dolor sit amet','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','Technologie','2023-03-19 11:02:01','2023-03-19 11:02:01',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1679223695398-9252ed9e15fef3f4e70f4fd22bd5fc4d6a9fe9cd8d1230a2500f7e42ac39d1017984574578169d46f679d7f8f62db83ba20ee0770be97e0e22c65062d459f141.jpg'),(98,'Lorem ipsum dolor sit amet','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','Technologie','2023-03-19 11:08:49','2023-03-19 11:08:49',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1679224111884-60121c6123e369a7f815315d4e89f3f9c1cb9b1853b8c6776abea94a062567b181e7d68295c8f40560cd9020102b22983d95a1847a3edd4ed0b64ebb798d5d92.jpg'),(99,'Lorem ipsum dolor sit','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','News & Politics','2023-03-19 11:17:19','2023-03-19 11:17:19',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1679224615963-podcastimage4.jpeg'),(100,'Lorem ipsum dolor sit','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','Technologie','2023-03-19 11:20:17','2023-03-19 11:20:17',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1679224794617-4e6067fabb37818fb4f104e485d6a4c29c404be464a3a0cacfd4c1edda0109f4dc9ac056f1da4e3e804a1d91475cfadcc6c884a38831a5e945046b6a24b18c75.jpg'),(101,'Lorem ipsum dolor sit','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','testman','Technologie','2023-03-20 09:15:07','2023-03-20 09:15:07',NULL,'https://evey-podcasts.s3.eu-west-3.amazonaws.com/podcast_images/1679303685713-1e7aa0871c6f437d3066b93448461f34e81f37dcbe2e45e363c6b0a43bc9f756b5579d4eab51bdfbe1cab501c1e32d85ebcde9029bc143016331c901dbbceccc.jpg'),(102,'Mon Premier Podcast','Ceci est la description de mon premier podcast','John Doe','Technologie','2023-03-24 17:38:51','2023-03-24 17:38:51',NULL,'https://exemple.com/mon-image.jpg'),(103,'Mon Premier Podcast','Ceci est la description de mon premier podcast','John Doe','Technologie','2023-03-24 17:39:01','2023-03-24 17:39:01',NULL,'https://exemple.com/mon-image.jpg');
/*!40000 ALTER TABLE `podcasts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 15:37:37