
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
DROP TABLE IF EXISTS `kt_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_usermeta` WRITE;
/*!40000 ALTER TABLE `kt_usermeta` DISABLE KEYS */;
INSERT INTO `kt_usermeta` VALUES (1,1,'nickname','adminkt'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'kt_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'kt_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','0'),(14,1,'session_tokens','a:3:{s:64:\"86b06acf625058bb8a5276fb530e54fa7d2b92e957a0da83d9031071922ac1d8\";a:4:{s:10:\"expiration\";i:1498651905;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1497442305;}s:64:\"7258d8fc3be37b23718c17067c8721c8c6c55ea306e48d8d7924271b2a35b380\";a:4:{s:10:\"expiration\";i:1499258057;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0\";s:5:\"login\";i:1498048457;}s:64:\"d1582ed84e3ad3f1e877f9f77742f7e9231ba3e988843b64f57ef358b1bc6364\";a:4:{s:10:\"expiration\";i:1498821642;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1498648842;}}'),(15,1,'kt_dashboard_quick_press_last_post_id','182'),(16,1,'kt_user-settings','editor=html&libraryContent=browse'),(17,1,'kt_user-settings-time','1499166053'),(18,1,'closedpostboxes_post','a:6:{i:0;s:9:\"formatdiv\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:11:\"commentsdiv\";i:4;s:9:\"authordiv\";i:5;s:8:\"liveblog\";}'),(19,1,'metaboxhidden_post','a:4:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";}'),(20,1,'closedpostboxes_liveblog_entry','a:1:{i:0;s:21:\"live_blogging_chatbox\";}'),(21,1,'metaboxhidden_liveblog_entry','a:1:{i:0;s:7:\"slugdiv\";}'),(22,2,'nickname','komalchand'),(23,2,'first_name','Komalchand'),(24,2,'last_name','Gaidhane'),(25,2,'description',''),(26,2,'rich_editing','true'),(27,2,'comment_shortcuts','false'),(28,2,'admin_color','fresh'),(29,2,'use_ssl','0'),(30,2,'show_admin_bar_front','true'),(31,2,'kt_capabilities','a:1:{s:6:\"editor\";b:1;}'),(32,2,'kt_user_level','7'),(33,2,'dismissed_wp_pointers',''),(34,2,'session_tokens','a:1:{s:64:\"429e3bbc9358cf5013a9ef6ec6c0a90e45ea367b2c7edc5073141099ae225425\";a:4:{s:10:\"expiration\";i:1483017562;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36\";s:5:\"login\";i:1482844762;}}'),(35,2,'kt_dashboard_quick_press_last_post_id','58'),(36,1,'vp_show_welcome_panel','0'),(37,1,'closedpostboxes_page','a:0:{}'),(38,1,'metaboxhidden_page','a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),(39,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(40,1,'metaboxhidden_nav-menus','a:4:{i:0;s:24:\"add-post-type-livestream\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:12:\"add-hashtags\";}'),(41,1,'nav_menu_recently_edited','8'),(42,1,'closedpostboxes_history_post','a:1:{i:0;s:7:\"slugdiv\";}'),(43,1,'metaboxhidden_history_post','a:0:{}');
/*!40000 ALTER TABLE `kt_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

