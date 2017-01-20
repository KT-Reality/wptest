
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
DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'News','news',0),(3,'Post formats','post-formats',0),(4,'html5','html5',0),(5,'responsive','responsive',0),(6,'stream','stream',0),(7,'Social Icons','social-icons',0),(8,'Footer Navigation','footer-navigation',0),(9,'Main menu','main-menu',0),(10,'Gallery','post-format-gallery',0),(11,'Image','post-format-image',0),(12,'Link','post-format-link',0),(13,'Quote','post-format-quote',0),(14,'Video','post-format-video',0),(15,'Spain','spain',0),(17,'Mexico','mexico',0),(18,'Tokyo','tokyo',0),(19,'Boston','boston',0),(20,'Chicago','chicago',0),(21,'Switzerland','switzerland',0),(22,'keynote-speaker','keynote-speaker',0),(23,'speakers','speakers',0),(24,'madrid-speaker','madrid-speaker',0),(25,'madrid-keynote-speaker','madrid-keynote-speaker',0),(26,'mexico-keynote-speaker','mexico-keynote-speaker',0),(27,'mexico-speaker','mexico-speaker',0),(28,'tokyo-keynote-speaker','tokyo-keynote-speaker',0),(29,'tokyo-speaker','tokyo-speaker',0),(30,'zurich-keynote-speaker','zurich-keynote-speaker',0),(31,'zurich-speaker','zurich-speaker',0),(32,'Toronto','toronto',0),(33,'chicago-keynote-speaker','chicago-keynote-speaker',0),(34,'chicago-speaker','chicago-speaker',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

