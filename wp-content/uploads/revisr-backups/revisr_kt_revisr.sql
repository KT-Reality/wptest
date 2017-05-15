
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
DROP TABLE IF EXISTS `kt_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  `user` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_revisr` WRITE;
/*!40000 ALTER TABLE `kt_revisr` DISABLE KEYS */;
INSERT INTO `kt_revisr` VALUES (1,'2017-01-10 12:34:43','Error staging files.','error','Revisr Bot'),(2,'2017-01-10 12:34:51','Successfully backed up the database.','backup','Revisr Bot'),(3,'2017-01-10 12:35:13','Successfully backed up the database.','backup','adminkt'),(4,'2017-01-10 12:35:13','Committed <a href=\"http://192.168.100.53/wptest/wp-admin/admin.php?page=revisr_view_commit&commit=9327e80&success=true\">#9327e80</a> to the local repository.','commit','adminkt'),(5,'2017-01-10 12:35:52','Error pushing changes to the remote repository.','error','adminkt'),(6,'2017-01-10 13:21:05','Successfully backed up the database.','backup','adminkt'),(7,'2017-01-10 13:21:27','Error pushing changes to the remote repository.','error','adminkt'),(8,'2017-01-10 13:28:15','Error pushing changes to the remote repository.','error','adminkt'),(9,'2017-01-17 06:27:44','Successfully backed up the database.','backup','Revisr Bot'),(10,'2017-01-17 06:27:57','Error pushing changes to the remote repository.','error','Revisr Bot'),(11,'2017-01-17 06:27:57','The daily backup was successful.','backup','Revisr Bot'),(12,'2017-01-19 12:39:38','Successfully backed up the database.','backup','Revisr Bot'),(13,'2017-01-19 12:42:43','Error pushing changes to the remote repository.','error','Revisr Bot'),(14,'2017-01-19 12:42:43','The daily backup was successful.','backup','Revisr Bot'),(15,'2017-01-20 12:29:53','Successfully backed up the database.','backup','Revisr Bot'),(16,'2017-01-20 12:31:09','Successfully pushed 25 commits to origin/stagging.','push','Revisr Bot'),(17,'2017-01-20 12:31:09','The daily backup was successful.','backup','Revisr Bot'),(18,'2017-02-13 12:04:45','Successfully backed up the database.','backup','Revisr Bot'),(19,'2017-02-13 12:05:03','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(20,'2017-02-13 12:05:03','The daily backup was successful.','backup','Revisr Bot'),(21,'2017-02-13 12:30:50','Successfully backed up the database.','backup','Revisr Bot'),(22,'2017-02-13 12:31:07','Successfully pushed 10 commits to origin/stagging.','push','Revisr Bot'),(23,'2017-02-13 12:31:07','The daily backup was successful.','backup','Revisr Bot'),(24,'2017-02-16 05:07:25','Successfully backed up the database.','backup','Revisr Bot'),(25,'2017-02-16 05:07:40','Successfully pushed 5 commits to origin/stagging.','push','Revisr Bot'),(26,'2017-02-16 05:07:40','The daily backup was successful.','backup','Revisr Bot'),(27,'2017-02-16 12:30:38','Successfully backed up the database.','backup','Revisr Bot'),(28,'2017-02-16 12:30:54','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(29,'2017-02-16 12:30:54','The daily backup was successful.','backup','Revisr Bot'),(30,'2017-02-17 12:30:04','Successfully backed up the database.','backup','Revisr Bot'),(31,'2017-02-17 12:30:18','Successfully pushed 4 commits to origin/stagging.','push','Revisr Bot'),(32,'2017-02-17 12:30:18','The daily backup was successful.','backup','Revisr Bot'),(33,'2017-02-18 12:31:32','Successfully backed up the database.','backup','Revisr Bot'),(34,'2017-02-18 12:32:14','Successfully pushed 11 commits to origin/stagging.','push','Revisr Bot'),(35,'2017-02-18 12:32:14','The daily backup was successful.','backup','Revisr Bot'),(36,'2017-02-23 05:56:40','Successfully backed up the database.','backup','Revisr Bot'),(37,'2017-02-23 05:56:53','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(38,'2017-02-23 05:56:53','The daily backup was successful.','backup','Revisr Bot'),(39,'2017-03-23 07:31:50','Successfully backed up the database.','backup','Revisr Bot'),(40,'2017-03-23 07:32:40','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(41,'2017-03-23 07:32:41','The daily backup was successful.','backup','Revisr Bot'),(42,'2017-03-24 12:15:53','Successfully backed up the database.','backup','Revisr Bot'),(43,'2017-03-24 12:16:24','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(44,'2017-03-24 12:16:25','The daily backup was successful.','backup','Revisr Bot'),(45,'2017-03-24 12:31:04','Successfully backed up the database.','backup','Revisr Bot'),(46,'2017-03-24 12:31:14','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(47,'2017-03-24 12:31:14','The daily backup was successful.','backup','Revisr Bot'),(48,'2017-03-27 07:37:05','Successfully backed up the database.','backup','Revisr Bot'),(49,'2017-03-27 07:37:18','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(50,'2017-03-27 07:37:18','The daily backup was successful.','backup','Revisr Bot'),(51,'2017-03-29 11:59:08','Successfully backed up the database.','backup','Revisr Bot'),(52,'2017-03-29 11:59:21','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(53,'2017-03-29 11:59:21','The daily backup was successful.','backup','Revisr Bot'),(54,'2017-03-30 04:35:10','Successfully backed up the database.','backup','Revisr Bot'),(55,'2017-03-30 04:35:23','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(56,'2017-03-30 04:35:23','The daily backup was successful.','backup','Revisr Bot'),(57,'2017-03-30 12:32:43','Successfully backed up the database.','backup','Revisr Bot'),(58,'2017-03-30 12:32:58','Successfully pushed 17 commits to origin/stagging.','push','Revisr Bot'),(59,'2017-03-30 12:32:58','The daily backup was successful.','backup','Revisr Bot'),(60,'2017-03-31 12:30:09','Successfully backed up the database.','backup','Revisr Bot'),(61,'2017-03-31 12:30:23','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(62,'2017-03-31 12:30:23','The daily backup was successful.','backup','Revisr Bot'),(63,'2017-04-01 12:30:11','Successfully backed up the database.','backup','Revisr Bot'),(64,'2017-04-01 12:30:25','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(65,'2017-04-01 12:30:25','The daily backup was successful.','backup','Revisr Bot'),(66,'2017-04-03 04:36:09','Successfully backed up the database.','backup','Revisr Bot'),(67,'2017-04-03 04:36:22','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(68,'2017-04-03 04:36:22','The daily backup was successful.','backup','Revisr Bot'),(69,'2017-04-04 07:11:17','Successfully backed up the database.','backup','Revisr Bot'),(70,'2017-04-04 07:11:36','Successfully pushed 3 commits to origin/stagging.','push','Revisr Bot'),(71,'2017-04-04 07:11:36','The daily backup was successful.','backup','Revisr Bot'),(72,'2017-04-04 12:30:33','Successfully backed up the database.','backup','Revisr Bot'),(73,'2017-04-04 12:30:45','Successfully pushed 15 commits to origin/stagging.','push','Revisr Bot'),(74,'2017-04-04 12:30:45','The daily backup was successful.','backup','Revisr Bot'),(75,'2017-04-05 12:29:57','Successfully backed up the database.','backup','Revisr Bot'),(76,'2017-04-05 12:30:12','Successfully pushed 33 commits to origin/stagging.','push','Revisr Bot'),(77,'2017-04-05 12:30:12','The daily backup was successful.','backup','Revisr Bot'),(78,'2017-04-13 06:19:10','Successfully backed up the database.','backup','Revisr Bot'),(79,'2017-04-13 06:19:24','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(80,'2017-04-13 06:19:24','The daily backup was successful.','backup','Revisr Bot'),(81,'2017-04-13 12:31:46','Successfully backed up the database.','backup','Revisr Bot'),(82,'2017-04-13 12:32:01','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(83,'2017-04-13 12:32:01','The daily backup was successful.','backup','Revisr Bot'),(84,'2017-04-14 12:30:21','Successfully backed up the database.','backup','Revisr Bot'),(85,'2017-04-14 12:30:34','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(86,'2017-04-14 12:30:35','The daily backup was successful.','backup','Revisr Bot'),(87,'2017-04-17 12:22:21','Successfully backed up the database.','backup','Revisr Bot'),(88,'2017-04-17 12:22:35','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(89,'2017-04-17 12:22:35','The daily backup was successful.','backup','Revisr Bot'),(90,'2017-04-17 12:30:21','Successfully backed up the database.','backup','Revisr Bot'),(91,'2017-04-17 12:30:36','Successfully pushed 9 commits to origin/stagging.','push','Revisr Bot'),(92,'2017-04-17 12:30:36','The daily backup was successful.','backup','Revisr Bot'),(93,'2017-04-24 10:29:14','Successfully backed up the database.','backup','Revisr Bot'),(94,'2017-04-24 10:30:37','Successfully pushed 105 commits to origin/stagging.','push','Revisr Bot'),(95,'2017-04-24 10:30:37','The daily backup was successful.','backup','Revisr Bot'),(96,'2017-04-24 13:05:05','Successfully backed up the database.','backup','Revisr Bot'),(97,'2017-04-24 13:05:22','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(98,'2017-04-24 13:05:22','The daily backup was successful.','backup','Revisr Bot'),(99,'2017-04-29 06:40:39','Successfully backed up the database.','backup','Revisr Bot'),(100,'2017-04-29 06:41:00','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(101,'2017-04-29 06:41:00','The daily backup was successful.','backup','Revisr Bot'),(102,'2017-05-02 11:57:52','Successfully backed up the database.','backup','Revisr Bot'),(103,'2017-05-02 11:58:12','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(104,'2017-05-02 11:58:12','The daily backup was successful.','backup','Revisr Bot'),(105,'2017-05-02 12:31:01','Successfully backed up the database.','backup','Revisr Bot'),(106,'2017-05-02 12:31:17','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(107,'2017-05-02 12:31:17','The daily backup was successful.','backup','Revisr Bot'),(108,'2017-05-04 07:10:35','Successfully backed up the database.','backup','Revisr Bot'),(109,'2017-05-04 07:10:52','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(110,'2017-05-04 07:10:52','The daily backup was successful.','backup','Revisr Bot'),(111,'2017-05-04 12:36:53','Successfully backed up the database.','backup','Revisr Bot'),(112,'2017-05-04 12:37:14','Successfully pushed 12 commits to origin/stagging.','push','Revisr Bot'),(113,'2017-05-04 12:37:14','The daily backup was successful.','backup','Revisr Bot'),(114,'2017-05-05 12:30:55','Successfully backed up the database.','backup','Revisr Bot'),(115,'2017-05-05 12:31:14','Successfully pushed 5 commits to origin/stagging.','push','Revisr Bot'),(116,'2017-05-05 12:31:14','The daily backup was successful.','backup','Revisr Bot'),(117,'2017-05-12 12:07:50','Successfully backed up the database.','backup','Revisr Bot'),(118,'2017-05-12 12:08:30','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(119,'2017-05-12 12:08:30','The daily backup was successful.','backup','Revisr Bot'),(120,'2017-05-12 12:42:12','Successfully backed up the database.','backup','Revisr Bot'),(121,'2017-05-12 12:42:32','Successfully pushed 1 commit to origin/stagging.','push','Revisr Bot'),(122,'2017-05-12 12:42:32','The daily backup was successful.','backup','Revisr Bot');
/*!40000 ALTER TABLE `kt_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

