
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_revisr` WRITE;
/*!40000 ALTER TABLE `kt_revisr` DISABLE KEYS */;
INSERT INTO `kt_revisr` VALUES (1,'2017-01-10 12:34:43','Error staging files.','error','Revisr Bot'),(2,'2017-01-10 12:34:51','Successfully backed up the database.','backup','Revisr Bot'),(3,'2017-01-10 12:35:13','Successfully backed up the database.','backup','adminkt'),(4,'2017-01-10 12:35:13','Committed <a href=\"http://192.168.100.53/wptest/wp-admin/admin.php?page=revisr_view_commit&commit=9327e80&success=true\">#9327e80</a> to the local repository.','commit','adminkt'),(5,'2017-01-10 12:35:52','Error pushing changes to the remote repository.','error','adminkt'),(6,'2017-01-10 13:21:05','Successfully backed up the database.','backup','adminkt'),(7,'2017-01-10 13:21:27','Error pushing changes to the remote repository.','error','adminkt'),(8,'2017-01-10 13:28:15','Error pushing changes to the remote repository.','error','adminkt'),(9,'2017-01-17 06:27:44','Successfully backed up the database.','backup','Revisr Bot'),(10,'2017-01-17 06:27:57','Error pushing changes to the remote repository.','error','Revisr Bot'),(11,'2017-01-17 06:27:57','The daily backup was successful.','backup','Revisr Bot'),(12,'2017-01-19 12:39:38','Successfully backed up the database.','backup','Revisr Bot'),(13,'2017-01-19 12:42:43','Error pushing changes to the remote repository.','error','Revisr Bot'),(14,'2017-01-19 12:42:43','The daily backup was successful.','backup','Revisr Bot'),(15,'2017-01-20 12:29:53','Successfully backed up the database.','backup','Revisr Bot'),(16,'2017-01-20 12:31:09','Successfully pushed 25 commits to origin/stagging.','push','Revisr Bot'),(17,'2017-01-20 12:31:09','The daily backup was successful.','backup','Revisr Bot'),(18,'2017-02-13 12:04:45','Successfully backed up the database.','backup','Revisr Bot'),(19,'2017-02-13 12:05:03','Successfully pushed 2 commits to origin/stagging.','push','Revisr Bot'),(20,'2017-02-13 12:05:03','The daily backup was successful.','backup','Revisr Bot');
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

