
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
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_postmeta` WRITE;
/*!40000 ALTER TABLE `kt_postmeta` DISABLE KEYS */;
INSERT INTO `kt_postmeta` VALUES (1,2,'_wp_page_template','default'),(4,2,'_edit_lock','1498222552:1'),(5,2,'_edit_last','1'),(6,9,'_edit_last','1'),(7,9,'_edit_lock','1487400508:1'),(12,22,'_edit_last','1'),(13,22,'_edit_lock','1481202174:1'),(14,22,'_wp_page_template','default'),(15,22,'estore_page_specific_layout','default_layout'),(16,1,'_edit_lock','1483349165:1'),(17,1,'_edit_last','1'),(19,1,'estore_page_specific_layout','default_layout'),(20,1,'liveblog','enable'),(21,1,'_liveblog_key_entry_template','timeline'),(22,1,'_liveblog_key_entry_format','first-linebreak'),(23,1,'_liveblog_key_entry_limit','0'),(24,26,'_edit_last','1'),(25,26,'_edit_lock','1483531134:1'),(27,26,'estore_page_specific_layout','default_layout'),(29,26,'liveblog','enable'),(32,34,'_edit_last','1'),(33,34,'_edit_lock','1482836690:1'),(34,34,'_wp_page_template','default'),(35,34,'estore_page_specific_layout','default_layout'),(37,39,'_wp_attached_file','2016/12/parallax_bg.jpg'),(38,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1220;s:4:\"file\";s:23:\"2016/12/parallax_bg.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"parallax_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"parallax_bg-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"parallax_bg-768x366.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"parallax_bg-1024x488.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:23:\"parallax_bg-380x250.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:21:\"parallax_bg-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:23:\"parallax_bg-444x444.jpg\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:23:\"parallax_bg-800x521.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:521;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:23:\"parallax_bg-250x180.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(39,40,'_edit_last','1'),(40,40,'_edit_lock','1491043859:1'),(42,40,'_liveblog','1'),(43,40,'_liveblog_active','1'),(44,40,'estore_page_specific_layout','default_layout'),(45,44,'_edit_last','1'),(46,45,'_wp_attached_file','2016/12/martin-smith.jpg'),(47,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:24:\"2016/12/martin-smith.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"martin-smith-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:22:\"martin-smith-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(48,44,'_edit_lock','1482838183:1'),(50,47,'_edit_last','1'),(51,48,'_wp_attached_file','2016/12/David-Cramer.jpg'),(52,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:24:\"2016/12/David-Cramer.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"David-Cramer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:22:\"David-Cramer-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(53,47,'_edit_lock','1482843849:1'),(54,50,'_edit_last','1'),(55,50,'_edit_lock','1482931024:1'),(57,50,'_liveblog','0'),(58,50,'_liveblog_active','0'),(59,50,'estore_page_specific_layout','default_layout'),(63,55,'_wp_attached_file','2016/12/Screenshot_3.jpg'),(64,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1904;s:6:\"height\";i:888;s:4:\"file\";s:24:\"2016/12/Screenshot_3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Screenshot_3-1024x478.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"estore-featured-image\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-380x250.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:22:\"Screenshot_3-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-square\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-444x444.jpg\";s:5:\"width\";i:444;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"estore-slider\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-800x521.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:521;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-medium-image\";a:4:{s:4:\"file\";s:24:\"Screenshot_3-250x180.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(65,57,'_wp_attached_file','2016/12/Paul-dobson.jpg'),(66,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2016/12/Paul-dobson.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Paul-dobson-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"estore-product-grid\";a:4:{s:4:\"file\";s:21:\"Paul-dobson-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(67,59,'_edit_lock','1482927235:1'),(68,59,'_edit_last','1'),(69,1,'_thumbnail_id','55'),(71,1,'_liveblog','0'),(72,1,'_liveblog_active','0'),(73,61,'_edit_lock','1486994177:1'),(74,61,'_edit_last','1'),(75,61,'_thumbnail_id','57'),(77,61,'estore_page_specific_layout','default_layout'),(85,63,'_edit_lock','1484056752:1'),(86,63,'_edit_last','1'),(94,74,'_wp_attached_file','2017/04/NWC_Web_Winter_2017.pdf'),(95,2,'estore_page_specific_layout','default_layout'),(98,79,'_menu_item_type','post_type'),(99,79,'_menu_item_menu_item_parent','0'),(100,79,'_menu_item_object_id','9'),(101,79,'_menu_item_object','page'),(102,79,'_menu_item_target',''),(103,79,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(104,79,'_menu_item_xfn',''),(105,79,'_menu_item_url',''),(107,80,'_menu_item_type','post_type'),(108,80,'_menu_item_menu_item_parent','0'),(109,80,'_menu_item_object_id','22'),(110,80,'_menu_item_object','page'),(111,80,'_menu_item_target',''),(112,80,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(113,80,'_menu_item_xfn',''),(114,80,'_menu_item_url',''),(116,81,'_menu_item_type','post_type'),(117,81,'_menu_item_menu_item_parent','0'),(118,81,'_menu_item_object_id','9'),(119,81,'_menu_item_object','page'),(120,81,'_menu_item_target',''),(121,81,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(122,81,'_menu_item_xfn',''),(123,81,'_menu_item_url',''),(125,82,'_menu_item_type','post_type'),(126,82,'_menu_item_menu_item_parent','0'),(127,82,'_menu_item_object_id','2'),(128,82,'_menu_item_object','page'),(129,82,'_menu_item_target',''),(130,82,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(131,82,'_menu_item_xfn',''),(132,82,'_menu_item_url',''),(134,83,'_menu_item_type','post_type'),(135,83,'_menu_item_menu_item_parent','0'),(136,83,'_menu_item_object_id','34'),(137,83,'_menu_item_object','page'),(138,83,'_menu_item_target',''),(139,83,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(140,83,'_menu_item_xfn',''),(141,83,'_menu_item_url',''),(143,84,'_menu_item_type','custom'),(144,84,'_menu_item_menu_item_parent','79'),(145,84,'_menu_item_object_id','84'),(146,84,'_menu_item_object','custom'),(147,84,'_menu_item_target',''),(148,84,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(149,84,'_menu_item_xfn',''),(150,84,'_menu_item_url','#'),(152,85,'_menu_item_type','custom'),(153,85,'_menu_item_menu_item_parent','79'),(154,85,'_menu_item_object_id','85'),(155,85,'_menu_item_object','custom'),(156,85,'_menu_item_target',''),(157,85,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(158,85,'_menu_item_xfn',''),(159,85,'_menu_item_url','#'),(161,86,'_menu_item_type','custom'),(162,86,'_menu_item_menu_item_parent','79'),(163,86,'_menu_item_object_id','86'),(164,86,'_menu_item_object','custom'),(165,86,'_menu_item_target',''),(166,86,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(167,86,'_menu_item_xfn',''),(168,86,'_menu_item_url','#'),(170,87,'_menu_item_type','custom'),(171,87,'_menu_item_menu_item_parent','100'),(172,87,'_menu_item_object_id','87'),(173,87,'_menu_item_object','custom'),(174,87,'_menu_item_target',''),(175,87,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(176,87,'_menu_item_xfn',''),(177,87,'_menu_item_url','#'),(179,88,'_menu_item_type','custom'),(180,88,'_menu_item_menu_item_parent','100'),(181,88,'_menu_item_object_id','88'),(182,88,'_menu_item_object','custom'),(183,88,'_menu_item_target',''),(184,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(185,88,'_menu_item_xfn',''),(186,88,'_menu_item_url','#'),(188,89,'_menu_item_type','custom'),(189,89,'_menu_item_menu_item_parent','100'),(190,89,'_menu_item_object_id','89'),(191,89,'_menu_item_object','custom'),(192,89,'_menu_item_target',''),(193,89,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(194,89,'_menu_item_xfn',''),(195,89,'_menu_item_url','#'),(197,90,'_menu_item_type','custom'),(198,90,'_menu_item_menu_item_parent','85'),(199,90,'_menu_item_object_id','90'),(200,90,'_menu_item_object','custom'),(201,90,'_menu_item_target',''),(202,90,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(203,90,'_menu_item_xfn',''),(204,90,'_menu_item_url','#'),(206,91,'_menu_item_type','custom'),(207,91,'_menu_item_menu_item_parent','85'),(208,91,'_menu_item_object_id','91'),(209,91,'_menu_item_object','custom'),(210,91,'_menu_item_target',''),(211,91,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(212,91,'_menu_item_xfn',''),(213,91,'_menu_item_url','#'),(215,92,'_menu_item_type','custom'),(216,92,'_menu_item_menu_item_parent','85'),(217,92,'_menu_item_object_id','92'),(218,92,'_menu_item_object','custom'),(219,92,'_menu_item_target',''),(220,92,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(221,92,'_menu_item_xfn',''),(222,92,'_menu_item_url','#'),(224,93,'_menu_item_type','post_type'),(225,93,'_menu_item_menu_item_parent','97'),(226,93,'_menu_item_object_id','61'),(227,93,'_menu_item_object','post'),(228,93,'_menu_item_target',''),(229,93,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(230,93,'_menu_item_xfn',''),(231,93,'_menu_item_url',''),(233,94,'_menu_item_type','post_type'),(234,94,'_menu_item_menu_item_parent','97'),(235,94,'_menu_item_object_id','50'),(236,94,'_menu_item_object','post'),(237,94,'_menu_item_target',''),(238,94,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(239,94,'_menu_item_xfn',''),(240,94,'_menu_item_url',''),(242,95,'_menu_item_type','post_type'),(243,95,'_menu_item_menu_item_parent','98'),(244,95,'_menu_item_object_id','26'),(245,95,'_menu_item_object','post'),(246,95,'_menu_item_target',''),(247,95,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(248,95,'_menu_item_xfn',''),(249,95,'_menu_item_url',''),(251,96,'_menu_item_type','post_type'),(252,96,'_menu_item_menu_item_parent','98'),(253,96,'_menu_item_object_id','1'),(254,96,'_menu_item_object','post'),(255,96,'_menu_item_target',''),(256,96,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(257,96,'_menu_item_xfn',''),(258,96,'_menu_item_url',''),(260,97,'_menu_item_type','custom'),(261,97,'_menu_item_menu_item_parent','80'),(262,97,'_menu_item_object_id','97'),(263,97,'_menu_item_object','custom'),(264,97,'_menu_item_target',''),(265,97,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(266,97,'_menu_item_xfn',''),(267,97,'_menu_item_url','#'),(269,98,'_menu_item_type','custom'),(270,98,'_menu_item_menu_item_parent','80'),(271,98,'_menu_item_object_id','98'),(272,98,'_menu_item_object','custom'),(273,98,'_menu_item_target',''),(274,98,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(275,98,'_menu_item_xfn',''),(276,98,'_menu_item_url','#'),(278,99,'_menu_item_type','post_type'),(279,99,'_menu_item_menu_item_parent','86'),(280,99,'_menu_item_object_id','2'),(281,99,'_menu_item_object','page'),(282,99,'_menu_item_target',''),(283,99,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(284,99,'_menu_item_xfn',''),(285,99,'_menu_item_url',''),(287,100,'_menu_item_type','custom'),(288,100,'_menu_item_menu_item_parent','84'),(289,100,'_menu_item_object_id','100'),(290,100,'_menu_item_object','custom'),(291,100,'_menu_item_target',''),(292,100,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(293,100,'_menu_item_xfn',''),(294,100,'_menu_item_url','#'),(296,101,'_menu_item_type','custom'),(297,101,'_menu_item_menu_item_parent','84'),(298,101,'_menu_item_object_id','101'),(299,101,'_menu_item_object','custom'),(300,101,'_menu_item_target',''),(301,101,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(302,101,'_menu_item_xfn',''),(303,101,'_menu_item_url','#'),(305,102,'_menu_item_type','post_type'),(306,102,'_menu_item_menu_item_parent','101'),(307,102,'_menu_item_object_id','22'),(308,102,'_menu_item_object','page'),(309,102,'_menu_item_target',''),(310,102,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(311,102,'_menu_item_xfn',''),(312,102,'_menu_item_url',''),(314,103,'_menu_item_type','post_type'),(315,103,'_menu_item_menu_item_parent','101'),(316,103,'_menu_item_object_id','9'),(317,103,'_menu_item_object','page'),(318,103,'_menu_item_target',''),(319,103,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(320,103,'_menu_item_xfn',''),(321,103,'_menu_item_url',''),(323,104,'_menu_item_type','post_type'),(324,104,'_menu_item_menu_item_parent','101'),(325,104,'_menu_item_object_id','2'),(326,104,'_menu_item_object','page'),(327,104,'_menu_item_target',''),(328,104,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(329,104,'_menu_item_xfn',''),(330,104,'_menu_item_url',''),(332,79,'_ubermenu_settings','a:103:{s:22:\"submenu_column_default\";s:4:\"full\";s:24:\"submenu_column_autoclear\";s:2:\"on\";s:11:\"row_padding\";s:0:\"\";s:8:\"grid_row\";s:3:\"off\";s:12:\"item_display\";s:4:\"auto\";s:12:\"disable_link\";s:2:\"on\";s:12:\"disable_text\";s:3:\"off\";s:9:\"highlight\";s:3:\"off\";s:10:\"item_align\";s:4:\"auto\";s:9:\"mini_item\";s:3:\"off\";s:10:\"custom_url\";s:0:\"\";s:8:\"scrollto\";s:0:\"\";s:7:\"no_wrap\";s:3:\"off\";s:12:\"item_trigger\";s:4:\"auto\";s:25:\"disable_submenu_indicator\";s:3:\"off\";s:12:\"target_class\";s:0:\"\";s:9:\"target_id\";s:0:\"\";s:15:\"shiftnav_target\";s:13:\"shiftnav-main\";s:7:\"columns\";s:4:\"auto\";s:11:\"item_layout\";s:10:\"image_left\";s:17:\"content_alignment\";s:4:\"left\";s:9:\"clear_row\";s:3:\"off\";s:12:\"submenu_type\";s:4:\"auto\";s:16:\"submenu_position\";s:14:\"left_edge_item\";s:23:\"flyout_submenu_position\";s:20:\"vertical_full_height\";s:13:\"submenu_width\";s:0:\"\";s:17:\"submenu_min_width\";s:0:\"\";s:14:\"submenu_padded\";s:3:\"off\";s:14:\"submenu_indent\";s:3:\"off\";s:16:\"submenu_advanced\";s:4:\"auto\";s:12:\"submenu_grid\";s:2:\"on\";s:12:\"show_current\";s:3:\"off\";s:12:\"show_default\";s:2:\"on\";s:24:\"submenu_background_image\";s:0:\"\";s:31:\"submenu_background_image_repeat\";s:9:\"no-repeat\";s:27:\"submenu_background_position\";s:12:\"bottom right\";s:23:\"submenu_background_size\";s:4:\"auto\";s:15:\"submenu_padding\";s:0:\"\";s:22:\"submenu_footer_content\";s:0:\"\";s:10:\"new_column\";s:3:\"off\";s:11:\"dt_taxonomy\";s:0:\"\";s:9:\"dt_number\";s:0:\"\";s:9:\"dt_parent\";s:0:\"\";s:11:\"dt_child_of\";s:0:\"\";s:10:\"dt_exclude\";s:0:\"\";s:10:\"dt_orderby\";s:4:\"name\";s:8:\"dt_order\";s:3:\"ASC\";s:13:\"dt_hide_empty\";s:3:\"off\";s:15:\"dt_hierarchical\";s:3:\"off\";s:14:\"dt_autocolumns\";s:8:\"disabled\";s:22:\"dt_display_term_counts\";s:3:\"off\";s:11:\"dt_view_all\";s:4:\"none\";s:16:\"dt_view_all_text\";s:0:\"\";s:17:\"dp_posts_per_page\";i:-1;s:12:\"dp_post_type\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:11:\"dp_category\";s:0:\"\";s:6:\"dp_tag\";s:0:\"\";s:11:\"dp_hashtags\";s:0:\"\";s:14:\"dp_post_parent\";s:0:\"\";s:9:\"dp_author\";s:0:\"\";s:10:\"dp_exclude\";s:0:\"\";s:10:\"dp_orderby\";s:5:\"title\";s:8:\"dp_order\";s:3:\"ASC\";s:14:\"dp_autocolumns\";s:8:\"disabled\";s:13:\"dp_subcontent\";s:4:\"none\";s:11:\"dp_view_all\";s:4:\"none\";s:16:\"dp_view_all_text\";s:0:\"\";s:10:\"tab_layout\";s:4:\"left\";s:17:\"tab_block_columns\";s:4:\"full\";s:17:\"tabs_group_layout\";s:4:\"auto\";s:19:\"panels_group_layout\";s:4:\"auto\";s:11:\"panels_grid\";s:3:\"off\";s:14:\"panels_padding\";s:0:\"\";s:18:\"show_default_panel\";s:3:\"off\";s:12:\"tabs_trigger\";s:9:\"mouseover\";s:12:\"menu_segment\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"item_image\";s:0:\"\";s:22:\"inherit_featured_image\";s:3:\"off\";s:10:\"image_size\";s:7:\"inherit\";s:16:\"image_dimensions\";s:7:\"inherit\";s:18:\"image_width_custom\";s:0:\"\";s:19:\"image_height_custom\";s:0:\"\";s:15:\"disable_padding\";s:3:\"off\";s:14:\"custom_content\";s:0:\"\";s:18:\"pad_custom_content\";s:2:\"on\";s:16:\"auto_widget_area\";s:0:\"\";s:11:\"widget_area\";s:0:\"\";s:19:\"widget_area_columns\";s:4:\"auto\";s:16:\"background_color\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:23:\"background_color_active\";s:0:\"\";s:17:\"font_color_active\";s:0:\"\";s:24:\"background_color_current\";s:0:\"\";s:18:\"font_color_current\";s:0:\"\";s:7:\"padding\";s:0:\"\";s:24:\"submenu_background_color\";s:0:\"\";s:13:\"submenu_color\";s:0:\"\";s:14:\"hide_on_mobile\";s:3:\"off\";s:15:\"hide_on_desktop\";s:3:\"off\";s:17:\"disable_on_mobile\";s:3:\"off\";s:18:\"disable_on_desktop\";s:3:\"off\";s:25:\"disable_submenu_on_mobile\";s:3:\"off\";}'),(333,84,'_ubermenu_settings','a:103:{s:22:\"submenu_column_default\";s:4:\"full\";s:24:\"submenu_column_autoclear\";s:2:\"on\";s:11:\"row_padding\";s:0:\"\";s:8:\"grid_row\";s:3:\"off\";s:12:\"item_display\";s:6:\"normal\";s:12:\"disable_link\";s:3:\"off\";s:12:\"disable_text\";s:3:\"off\";s:9:\"highlight\";s:3:\"off\";s:10:\"item_align\";s:4:\"left\";s:9:\"mini_item\";s:3:\"off\";s:10:\"custom_url\";s:0:\"\";s:8:\"scrollto\";s:0:\"\";s:7:\"no_wrap\";s:3:\"off\";s:12:\"item_trigger\";s:5:\"click\";s:25:\"disable_submenu_indicator\";s:3:\"off\";s:12:\"target_class\";s:0:\"\";s:9:\"target_id\";s:0:\"\";s:15:\"shiftnav_target\";s:13:\"shiftnav-main\";s:7:\"columns\";s:4:\"auto\";s:11:\"item_layout\";s:7:\"default\";s:17:\"content_alignment\";s:7:\"default\";s:9:\"clear_row\";s:3:\"off\";s:12:\"submenu_type\";s:4:\"mega\";s:16:\"submenu_position\";s:14:\"left_edge_item\";s:23:\"flyout_submenu_position\";s:20:\"vertical_parent_item\";s:13:\"submenu_width\";s:0:\"\";s:17:\"submenu_min_width\";s:0:\"\";s:14:\"submenu_padded\";s:3:\"off\";s:14:\"submenu_indent\";s:3:\"off\";s:16:\"submenu_advanced\";s:4:\"auto\";s:12:\"submenu_grid\";s:2:\"on\";s:12:\"show_current\";s:3:\"off\";s:12:\"show_default\";s:3:\"off\";s:24:\"submenu_background_image\";s:0:\"\";s:31:\"submenu_background_image_repeat\";s:9:\"no-repeat\";s:27:\"submenu_background_position\";s:12:\"bottom right\";s:23:\"submenu_background_size\";s:4:\"auto\";s:15:\"submenu_padding\";s:0:\"\";s:22:\"submenu_footer_content\";s:0:\"\";s:10:\"new_column\";s:3:\"off\";s:11:\"dt_taxonomy\";s:0:\"\";s:9:\"dt_number\";s:0:\"\";s:9:\"dt_parent\";s:0:\"\";s:11:\"dt_child_of\";s:0:\"\";s:10:\"dt_exclude\";s:0:\"\";s:10:\"dt_orderby\";s:4:\"name\";s:8:\"dt_order\";s:3:\"ASC\";s:13:\"dt_hide_empty\";s:3:\"off\";s:15:\"dt_hierarchical\";s:3:\"off\";s:14:\"dt_autocolumns\";s:8:\"disabled\";s:22:\"dt_display_term_counts\";s:3:\"off\";s:11:\"dt_view_all\";s:4:\"none\";s:16:\"dt_view_all_text\";s:0:\"\";s:17:\"dp_posts_per_page\";i:-1;s:12:\"dp_post_type\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:11:\"dp_category\";s:0:\"\";s:6:\"dp_tag\";s:0:\"\";s:11:\"dp_hashtags\";s:0:\"\";s:14:\"dp_post_parent\";s:0:\"\";s:9:\"dp_author\";s:0:\"\";s:10:\"dp_exclude\";s:0:\"\";s:10:\"dp_orderby\";s:5:\"title\";s:8:\"dp_order\";s:3:\"ASC\";s:14:\"dp_autocolumns\";s:8:\"disabled\";s:13:\"dp_subcontent\";s:4:\"none\";s:11:\"dp_view_all\";s:4:\"none\";s:16:\"dp_view_all_text\";s:0:\"\";s:10:\"tab_layout\";s:4:\"left\";s:17:\"tab_block_columns\";s:4:\"full\";s:17:\"tabs_group_layout\";s:4:\"auto\";s:19:\"panels_group_layout\";s:4:\"auto\";s:11:\"panels_grid\";s:3:\"off\";s:14:\"panels_padding\";s:0:\"\";s:18:\"show_default_panel\";s:3:\"off\";s:12:\"tabs_trigger\";s:9:\"mouseover\";s:12:\"menu_segment\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"item_image\";s:0:\"\";s:22:\"inherit_featured_image\";s:3:\"off\";s:10:\"image_size\";s:7:\"inherit\";s:16:\"image_dimensions\";s:7:\"inherit\";s:18:\"image_width_custom\";s:0:\"\";s:19:\"image_height_custom\";s:0:\"\";s:15:\"disable_padding\";s:3:\"off\";s:14:\"custom_content\";s:0:\"\";s:18:\"pad_custom_content\";s:2:\"on\";s:16:\"auto_widget_area\";s:0:\"\";s:11:\"widget_area\";s:0:\"\";s:19:\"widget_area_columns\";s:4:\"auto\";s:16:\"background_color\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:23:\"background_color_active\";s:0:\"\";s:17:\"font_color_active\";s:0:\"\";s:24:\"background_color_current\";s:0:\"\";s:18:\"font_color_current\";s:0:\"\";s:7:\"padding\";s:0:\"\";s:24:\"submenu_background_color\";s:0:\"\";s:13:\"submenu_color\";s:0:\"\";s:14:\"hide_on_mobile\";s:3:\"off\";s:15:\"hide_on_desktop\";s:3:\"off\";s:17:\"disable_on_mobile\";s:3:\"off\";s:18:\"disable_on_desktop\";s:3:\"off\";s:25:\"disable_submenu_on_mobile\";s:3:\"off\";}'),(334,80,'_ubermenu_settings','a:103:{s:22:\"submenu_column_default\";s:4:\"auto\";s:24:\"submenu_column_autoclear\";s:2:\"on\";s:11:\"row_padding\";s:0:\"\";s:8:\"grid_row\";s:3:\"off\";s:12:\"item_display\";s:4:\"auto\";s:12:\"disable_link\";s:3:\"off\";s:12:\"disable_text\";s:3:\"off\";s:9:\"highlight\";s:3:\"off\";s:10:\"item_align\";s:4:\"auto\";s:9:\"mini_item\";s:3:\"off\";s:10:\"custom_url\";s:0:\"\";s:8:\"scrollto\";s:0:\"\";s:7:\"no_wrap\";s:3:\"off\";s:12:\"item_trigger\";s:4:\"auto\";s:25:\"disable_submenu_indicator\";s:3:\"off\";s:12:\"target_class\";s:0:\"\";s:9:\"target_id\";s:0:\"\";s:15:\"shiftnav_target\";s:0:\"\";s:7:\"columns\";s:4:\"auto\";s:11:\"item_layout\";s:7:\"default\";s:17:\"content_alignment\";s:7:\"default\";s:9:\"clear_row\";s:3:\"off\";s:12:\"submenu_type\";s:4:\"auto\";s:16:\"submenu_position\";s:10:\"full_width\";s:23:\"flyout_submenu_position\";s:14:\"left_edge_item\";s:13:\"submenu_width\";s:0:\"\";s:17:\"submenu_min_width\";s:0:\"\";s:14:\"submenu_padded\";s:3:\"off\";s:14:\"submenu_indent\";s:3:\"off\";s:16:\"submenu_advanced\";s:4:\"auto\";s:12:\"submenu_grid\";s:3:\"off\";s:12:\"show_current\";s:3:\"off\";s:12:\"show_default\";s:3:\"off\";s:24:\"submenu_background_image\";s:0:\"\";s:31:\"submenu_background_image_repeat\";s:9:\"no-repeat\";s:27:\"submenu_background_position\";s:12:\"bottom right\";s:23:\"submenu_background_size\";s:4:\"auto\";s:15:\"submenu_padding\";s:0:\"\";s:22:\"submenu_footer_content\";s:0:\"\";s:10:\"new_column\";s:3:\"off\";s:11:\"dt_taxonomy\";s:0:\"\";s:9:\"dt_number\";s:0:\"\";s:9:\"dt_parent\";s:0:\"\";s:11:\"dt_child_of\";s:0:\"\";s:10:\"dt_exclude\";s:0:\"\";s:10:\"dt_orderby\";s:4:\"name\";s:8:\"dt_order\";s:3:\"ASC\";s:13:\"dt_hide_empty\";s:3:\"off\";s:15:\"dt_hierarchical\";s:3:\"off\";s:14:\"dt_autocolumns\";s:8:\"disabled\";s:22:\"dt_display_term_counts\";s:3:\"off\";s:11:\"dt_view_all\";s:4:\"none\";s:16:\"dt_view_all_text\";s:0:\"\";s:17:\"dp_posts_per_page\";i:-1;s:12:\"dp_post_type\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:11:\"dp_category\";s:0:\"\";s:6:\"dp_tag\";s:0:\"\";s:11:\"dp_hashtags\";s:0:\"\";s:14:\"dp_post_parent\";s:0:\"\";s:9:\"dp_author\";s:0:\"\";s:10:\"dp_exclude\";s:0:\"\";s:10:\"dp_orderby\";s:5:\"title\";s:8:\"dp_order\";s:3:\"ASC\";s:14:\"dp_autocolumns\";s:8:\"disabled\";s:13:\"dp_subcontent\";s:4:\"none\";s:11:\"dp_view_all\";s:4:\"none\";s:16:\"dp_view_all_text\";s:0:\"\";s:10:\"tab_layout\";s:4:\"left\";s:17:\"tab_block_columns\";s:4:\"full\";s:17:\"tabs_group_layout\";s:4:\"auto\";s:19:\"panels_group_layout\";s:4:\"auto\";s:11:\"panels_grid\";s:3:\"off\";s:14:\"panels_padding\";s:0:\"\";s:18:\"show_default_panel\";s:3:\"off\";s:12:\"tabs_trigger\";s:9:\"mouseover\";s:12:\"menu_segment\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:10:\"item_image\";s:0:\"\";s:22:\"inherit_featured_image\";s:3:\"off\";s:10:\"image_size\";s:7:\"inherit\";s:16:\"image_dimensions\";s:7:\"inherit\";s:18:\"image_width_custom\";s:0:\"\";s:19:\"image_height_custom\";s:0:\"\";s:15:\"disable_padding\";s:3:\"off\";s:14:\"custom_content\";s:0:\"\";s:18:\"pad_custom_content\";s:2:\"on\";s:16:\"auto_widget_area\";s:0:\"\";s:11:\"widget_area\";s:0:\"\";s:19:\"widget_area_columns\";s:4:\"auto\";s:16:\"background_color\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:23:\"background_color_active\";s:0:\"\";s:17:\"font_color_active\";s:0:\"\";s:24:\"background_color_current\";s:0:\"\";s:18:\"font_color_current\";s:0:\"\";s:7:\"padding\";s:0:\"\";s:24:\"submenu_background_color\";s:0:\"\";s:13:\"submenu_color\";s:0:\"\";s:14:\"hide_on_mobile\";s:3:\"off\";s:15:\"hide_on_desktop\";s:3:\"off\";s:17:\"disable_on_mobile\";s:3:\"off\";s:18:\"disable_on_desktop\";s:3:\"off\";s:25:\"disable_submenu_on_mobile\";s:3:\"off\";}'),(335,79,'_wpmegamenu','a:6:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"1\";s:16:\"general_settings\";a:3:{s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:0:\"\";}}'),(336,84,'_wpmegamenu','a:4:{s:16:\"general_settings\";a:10:{s:12:\"disable_text\";s:4:\"true\";s:18:\"active_single_menu\";s:7:\"enabled\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:5:\"right\";s:11:\"active_link\";s:5:\"false\";s:19:\"visible_hidden_menu\";s:5:\"false\";s:10:\"hide_arrow\";s:5:\"false\";s:14:\"hide_on_mobile\";s:5:\"false\";s:15:\"hide_on_desktop\";s:5:\"false\";s:9:\"menu_icon\";s:8:\"disabled\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:17:\"fa fa-arrow-right\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:14:\"featured-image\";s:26:\"default_thumbnail_imageurl\";s:0:\"\";s:16:\"show_desc_length\";s:2:\"10\";s:13:\"readmore_text\";s:0:\"\";s:13:\"text_position\";s:4:\"left\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:0:\"\";s:16:\"show_description\";s:5:\"false\";s:16:\"display_readmore\";s:5:\"false\";s:17:\"display_post_date\";s:5:\"false\";s:19:\"display_author_name\";s:5:\"false\";s:16:\"display_cat_name\";s:5:\"false\";}s:18:\"mega_menu_settings\";a:4:{s:16:\"show_top_content\";s:5:\"false\";s:19:\"show_bottom_content\";s:5:\"false\";s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}}}'),(337,80,'_wpmegamenu','a:2:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"2\";}'),(338,97,'_wpmegamenu','a:1:{s:22:\"wpmm_mega_menu_columns\";i:1;}'),(339,106,'_edit_lock','1493889531:1'),(340,106,'_edit_last','1'),(341,106,'_wp_page_template','media-library.php'),(342,114,'history_top_title','2001'),(343,114,'history-date','2011-02-02 00:00:00'),(344,115,'history_top_title','2002'),(345,115,'history-date','2012-03-02 00:00:00'),(346,116,'history_top_title','2003'),(347,116,'history-date','2013-06-06 00:00:00'),(348,117,'history_top_title','2004'),(349,117,'history-date','2014-05-10 00:00:00'),(350,118,'history_top_title','2005'),(351,118,'history-date','2015-10-23 00:00:00'),(352,119,'history_top_title','2006'),(353,119,'history-date','2016-07-20 00:00:00'),(354,114,'_edit_lock','1496744515:1'),(355,114,'_edit_last','1'),(356,115,'_edit_lock','1496744515:1'),(357,116,'_edit_lock','1498564272:1'),(358,117,'_edit_lock','1497265298:1'),(359,118,'_edit_lock','1497273269:1'),(360,119,'_edit_lock','1497442500:1'),(361,114,'_thumbnail_id','45'),(362,115,'_edit_last','1'),(363,116,'_edit_last','1'),(364,117,'_edit_last','1'),(365,115,'_thumbnail_id','48'),(366,116,'_thumbnail_id','57'),(367,117,'_thumbnail_id','55'),(368,118,'_edit_last','1'),(369,120,'_wp_attached_file','2017/06/techart.png'),(370,120,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1336;s:4:\"file\";s:19:\"2017/06/techart.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"techart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"techart-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"techart-768x513.png\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"techart-1024x684.png\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"techart-825x510.png\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(371,119,'_edit_last','1'),(372,121,'_wp_attached_file','2017/06/IMG_1863.jpg'),(373,121,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3264;s:6:\"height\";i:2448;s:4:\"file\";s:20:\"2017/06/IMG_1863.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_1863-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_1863-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_1863-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_1863-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_1863-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"iPhone 6 Plus\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1470740450\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:2:\"32\";s:13:\"shutter_speed\";s:18:\"0.0028328611898017\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"6\";s:8:\"keywords\";a:0:{}}}'),(374,118,'_thumbnail_id','120'),(375,119,'_thumbnail_id','121'),(376,123,'_edit_lock','1498564269:1'),(377,123,'_edit_last','1'),(378,123,'_wp_page_template','default'),(477,165,'history_top_title','20133'),(478,165,'history-date',''),(479,165,'_edit_lock','1497445593:1'),(480,165,'_edit_last','1'),(485,168,'history_top_title','2011'),(486,168,'history-date','2017-06-14 00:00:00'),(487,168,'_edit_lock','1497443260:1'),(488,168,'_edit_last','1'),(489,170,'_menu_item_type','post_type'),(490,170,'_menu_item_menu_item_parent','0'),(491,170,'_menu_item_object_id','123'),(492,170,'_menu_item_object','page'),(493,170,'_menu_item_target',''),(494,170,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(495,170,'_menu_item_xfn',''),(496,170,'_menu_item_url',''),(498,171,'_menu_item_type','post_type'),(499,171,'_menu_item_menu_item_parent','0'),(500,171,'_menu_item_object_id','110'),(501,171,'_menu_item_object','page'),(502,171,'_menu_item_target',''),(503,171,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(504,171,'_menu_item_xfn',''),(505,171,'_menu_item_url',''),(507,172,'_menu_item_type','post_type'),(508,172,'_menu_item_menu_item_parent','0'),(509,172,'_menu_item_object_id','109'),(510,172,'_menu_item_object','page'),(511,172,'_menu_item_target',''),(512,172,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(513,172,'_menu_item_xfn',''),(514,172,'_menu_item_url',''),(516,173,'_menu_item_type','post_type'),(517,173,'_menu_item_menu_item_parent','0'),(518,173,'_menu_item_object_id','106'),(519,173,'_menu_item_object','page'),(520,173,'_menu_item_target',''),(521,173,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(522,173,'_menu_item_xfn',''),(523,173,'_menu_item_url',''),(525,174,'_menu_item_type','post_type'),(526,174,'_menu_item_menu_item_parent','0'),(527,174,'_menu_item_object_id','34'),(528,174,'_menu_item_object','page'),(529,174,'_menu_item_target',''),(530,174,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(531,174,'_menu_item_xfn',''),(532,174,'_menu_item_url',''),(543,176,'_menu_item_type','post_type'),(544,176,'_menu_item_menu_item_parent','0'),(545,176,'_menu_item_object_id','9'),(546,176,'_menu_item_object','page'),(547,176,'_menu_item_target',''),(548,176,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(549,176,'_menu_item_xfn',''),(550,176,'_menu_item_url',''),(552,177,'_menu_item_type','post_type'),(553,177,'_menu_item_menu_item_parent','0'),(554,177,'_menu_item_object_id','2'),(555,177,'_menu_item_object','page'),(556,177,'_menu_item_target',''),(557,177,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(558,177,'_menu_item_xfn',''),(559,177,'_menu_item_url',''),(560,178,'_menu_item_type','post_type'),(561,178,'_menu_item_menu_item_parent','0'),(562,178,'_menu_item_object_id','22'),(563,178,'_menu_item_object','page'),(564,178,'_menu_item_target',''),(565,178,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(566,178,'_menu_item_xfn',''),(567,178,'_menu_item_url',''),(578,180,'_menu_item_type','post_type'),(579,180,'_menu_item_menu_item_parent','0'),(580,180,'_menu_item_object_id','9'),(581,180,'_menu_item_object','page'),(582,180,'_menu_item_target',''),(583,180,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(584,180,'_menu_item_xfn',''),(585,180,'_menu_item_url',''),(587,181,'_menu_item_type','post_type'),(588,181,'_menu_item_menu_item_parent','0'),(589,181,'_menu_item_object_id','2'),(590,181,'_menu_item_object','page'),(591,181,'_menu_item_target',''),(592,181,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(593,181,'_menu_item_xfn',''),(594,181,'_menu_item_url','');
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

