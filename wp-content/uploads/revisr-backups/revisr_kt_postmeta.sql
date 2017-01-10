
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
DROP TABLE IF EXISTS `kt_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_postmeta` WRITE;
/*!40000 ALTER TABLE `kt_postmeta` DISABLE KEYS */;
INSERT INTO `kt_postmeta` VALUES (1,2,'_wp_page_template','default'),(4,2,'_edit_lock','1470642948:1'),(5,2,'_edit_last','1'),(6,9,'_edit_last','1'),(7,9,'_edit_lock','1470897530:1'),(12,22,'_edit_last','1'),(13,22,'_edit_lock','1481202174:1'),(14,22,'_wp_page_template','default'),(15,22,'estore_page_specific_layout','default_layout'),(16,1,'_edit_lock','1483349165:1'),(17,1,'_edit_last','1'),(19,1,'estore_page_specific_layout','default_layout'),(20,1,'liveblog','enable'),(21,1,'_liveblog_key_entry_template','timeline'),(22,1,'_liveblog_key_entry_format','first-linebreak'),(23,1,'_liveblog_key_entry_limit','0'),(24,26,'_edit_last','1'),(25,26,'_edit_lock','1483531134:1'),(27,26,'estore_page_specific_layout','default_layout'),(29,26,'liveblog','enable'),(32,34,'_edit_last','1'),(33,34,'_edit_lock','1482836690:1'),(34,34,'_wp_page_template','default'),(35,34,'estore_page_specific_layout','default_layout'),(37,39,'_wp_attached_file','2016/12/parallax_bg.jpg'),(38,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1220;s:4:\"file\";s:23:\"2016/12/parallax_bg.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"parallax_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"parallax_bg-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"parallax_bg-768x366.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"parallax_bg-1024x488.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:23:\"parallax_bg-380x250.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:21:\"parallax_bg-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:23:\"parallax_bg-444x444.jpg\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:23:\"parallax_bg-800x521.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:521;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:23:\"parallax_bg-250x180.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(39,40,'_edit_last','1'),(40,40,'_edit_lock','1482843849:1'),(42,40,'_liveblog','1'),(43,40,'_liveblog_active','1'),(44,40,'estore_page_specific_layout','default_layout'),(45,44,'_edit_last','1'),(46,45,'_wp_attached_file','2016/12/martin-smith.jpg'),(47,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:24:\"2016/12/martin-smith.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"martin-smith-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:22:\"martin-smith-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(48,44,'_edit_lock','1482838183:1'),(50,47,'_edit_last','1'),(51,48,'_wp_attached_file','2016/12/David-Cramer.jpg'),(52,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:24:\"2016/12/David-Cramer.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"David-Cramer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:22:\"David-Cramer-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(53,47,'_edit_lock','1482843849:1'),(54,50,'_edit_last','1'),(55,50,'_edit_lock','1482931024:1'),(57,50,'_liveblog','0'),(58,50,'_liveblog_active','0'),(59,50,'estore_page_specific_layout','default_layout'),(63,55,'_wp_attached_file','2016/12/Screenshot_3.jpg'),(64,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1904;s:6:\"height\";i:888;s:4:\"file\";s:24:\"2016/12/Screenshot_3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Screenshot_3-1024x478.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-380x250.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:22:\"Screenshot_3-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-444x444.jpg\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-800x521.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:521;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-250x180.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(65,57,'_wp_attached_file','2016/12/Paul-dobson.jpg'),(66,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2016/12/Paul-dobson.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Paul-dobson-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:21:\"Paul-dobson-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(67,59,'_edit_lock','1482927235:1'),(68,59,'_edit_last','1'),(69,1,'_thumbnail_id','55'),(71,1,'_liveblog','0'),(72,1,'_liveblog_active','0'),(73,61,'_edit_lock','1484054421:1'),(74,61,'_edit_last','1'),(75,61,'_thumbnail_id','57'),(77,61,'estore_page_specific_layout','default_layout');
/*!40000 ALTER TABLE `kt_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

