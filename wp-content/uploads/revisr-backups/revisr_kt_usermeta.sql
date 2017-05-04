
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_usermeta` WRITE;
/*!40000 ALTER TABLE `kt_usermeta` DISABLE KEYS */;
INSERT INTO `kt_usermeta` VALUES (1,1,'nickname','adminkt'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'kt_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'kt_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','0'),(14,1,'session_tokens','a:7:{s:64:\"b7eca98a46da21dc0c5215ab1f70c867fed76155ce207f49e695cb00b530c439\";a:4:{s:10:\"expiration\";i:1494935785;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493726185;}s:64:\"83d890265bc79348c9cf3a8129f811307577759b02e620805e48c4d558294ec5\";a:4:{s:10:\"expiration\";i:1495097414;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493887814;}s:64:\"d2dbb3c2211c93150a3f2a687c5412f2132bff58cde3719188a69a60a3d1a2bd\";a:4:{s:10:\"expiration\";i:1494060637;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493887837;}s:64:\"3b9def04499d4cfd8ad3e2ced1849de099cc63bd530c93f3233f493a740519a2\";a:4:{s:10:\"expiration\";i:1495097541;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493887941;}s:64:\"0bc7130fcbf8b934afd767be636b18b23afe358c8082ffd0fbfabe1108ae9d9c\";a:4:{s:10:\"expiration\";i:1494061044;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493888244;}s:64:\"b1b31c54add9ff3a12c3a49eef163ebf8daad40d5eb5cef595108b24f7a0c4d1\";a:4:{s:10:\"expiration\";i:1494061114;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493888314;}s:64:\"b9f4eefc1d93926b54e2134b99576b8f04df4c1386b801e7a1f16e38f5466b41\";a:4:{s:10:\"expiration\";i:1494061147;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493888347;}}'),(15,1,'kt_dashboard_quick_press_last_post_id','105'),(16,1,'kt_user-settings','editor=html&libraryContent=browse'),(17,1,'kt_user-settings-time','1491375626'),(18,1,'closedpostboxes_post','a:6:{i:0;s:9:\"formatdiv\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:11:\"commentsdiv\";i:4;s:9:\"authordiv\";i:5;s:8:\"liveblog\";}'),(19,1,'metaboxhidden_post','a:4:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";}'),(20,1,'closedpostboxes_liveblog_entry','a:1:{i:0;s:21:\"live_blogging_chatbox\";}'),(21,1,'metaboxhidden_liveblog_entry','a:1:{i:0;s:7:\"slugdiv\";}'),(22,2,'nickname','komalchand'),(23,2,'first_name','Komalchand'),(24,2,'last_name','Gaidhane'),(25,2,'description',''),(26,2,'rich_editing','true'),(27,2,'comment_shortcuts','false'),(28,2,'admin_color','fresh'),(29,2,'use_ssl','0'),(30,2,'show_admin_bar_front','true'),(31,2,'kt_capabilities','a:1:{s:6:\"editor\";b:1;}'),(32,2,'kt_user_level','7'),(33,2,'dismissed_wp_pointers',''),(34,2,'session_tokens','a:1:{s:64:\"429e3bbc9358cf5013a9ef6ec6c0a90e45ea367b2c7edc5073141099ae225425\";a:4:{s:10:\"expiration\";i:1483017562;s:2:\"ip\";s:14:\"192.168.100.53\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36\";s:5:\"login\";i:1482844762;}}'),(35,2,'kt_dashboard_quick_press_last_post_id','58'),(36,1,'vp_show_welcome_panel','0'),(37,1,'closedpostboxes_page','a:0:{}'),(38,1,'metaboxhidden_page','a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),(39,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(40,1,'metaboxhidden_nav-menus','a:4:{i:0;s:24:\"add-post-type-livestream\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:12:\"add-hashtags\";}'),(41,1,'nav_menu_recently_edited','4');
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

