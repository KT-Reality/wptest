
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
DROP TABLE IF EXISTS `kt_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_comments` WRITE;
/*!40000 ALTER TABLE `kt_comments` DISABLE KEYS */;
INSERT INTO `kt_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2016-08-02 08:47:41','2016-08-02 08:47:41','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0),(2,1,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-20 06:43:13','2016-12-20 06:43:13','This is first post via live blog section',0,'liveblog','','liveblog',0,1),(3,1,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-21 12:32:00','2016-12-21 12:32:00','This is new post',0,'liveblog','','liveblog',0,1),(4,1,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-21 12:32:38','2016-12-21 12:32:38','Coming soon new offers',0,'liveblog','','liveblog',0,1),(5,1,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-22 04:32:49','2016-12-22 04:32:49','Test',0,'liveblog','','liveblog',0,1),(6,1,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-22 04:33:14','2016-12-22 04:33:14','another one test',0,'liveblog','','liveblog',0,1),(8,1,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-23 12:05:13','2016-12-23 12:05:13','',0,'liveblog','','liveblog',0,1),(9,26,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2016-12-23 12:07:56','2016-12-23 12:07:56','This is the live edit test',0,'liveblog','','liveblog',0,1),(10,26,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2017-01-04 11:12:38','2017-01-04 11:12:38','testing under live blog post',0,'liveblog','','liveblog',0,1),(11,26,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2017-01-04 11:45:27','2017-01-04 11:45:27','hi this is testing.',0,'liveblog','','liveblog',0,1),(12,26,'adminkt','komalchand.gaidhane@realitypremedia.com','','','2017-01-04 11:53:43','2017-01-04 11:53:43','vgsdfdgfjdgfsdjfsd',0,'liveblog','','liveblog',0,1);
/*!40000 ALTER TABLE `kt_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

