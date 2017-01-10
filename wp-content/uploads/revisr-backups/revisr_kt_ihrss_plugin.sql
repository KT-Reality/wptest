
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
DROP TABLE IF EXISTS `kt_ihrss_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_ihrss_plugin` (
  `Ihrss_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ihrss_path` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Ihrss_link` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Ihrss_target` varchar(50) NOT NULL,
  `Ihrss_title` varchar(500) NOT NULL,
  `Ihrss_order` int(11) NOT NULL,
  `Ihrss_status` varchar(10) NOT NULL,
  `Ihrss_type` varchar(100) NOT NULL,
  `Ihrss_extra1` varchar(100) NOT NULL,
  `Ihrss_extra2` varchar(100) NOT NULL,
  `Ihrss_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Ihrss_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_ihrss_plugin` WRITE;
/*!40000 ALTER TABLE `kt_ihrss_plugin` DISABLE KEYS */;
INSERT INTO `kt_ihrss_plugin` VALUES (1,'http://192.168.100.53/wptest/wp-content/plugins/image-horizontal-reel-scroll-slideshow/images/Sing_1.jpg','http://yahoo.com','_blank','Image 1 Title',4,'YES','GROUP1','','','0000-00-00 00:00:00'),(2,'http://192.168.100.53/wptest/wp-content/plugins/image-horizontal-reel-scroll-slideshow/images/Sing_2.jpg','http://google.com','_blank','Image 2 Title',3,'YES','GROUP1','','','0000-00-00 00:00:00'),(3,'http://192.168.100.53/wptest/wp-content/plugins/image-horizontal-reel-scroll-slideshow/images/Sing_3.jpg','http://example.com','_blank','Image 3 Title',1,'YES','GROUP1','','','0000-00-00 00:00:00'),(4,'http://192.168.100.53/wptest/wp-content/plugins/image-horizontal-reel-scroll-slideshow/images/Sing_4.jpg','http://realityinfo.com','_blank','Image 4 Title',2,'YES','GROUP1','','','0000-00-00 00:00:00'),(5,'http://www.gopiplus.com/work/wp-content/uploads/pluginimages/88x88/1.jpg','http://example.com','_blank','flower',0,'YES','GROUP17','','','0000-00-00 00:00:00'),(6,'http://www.gopiplus.com/work/wp-content/uploads/pluginimages/88x88/1.jpg','http://google.com','_blank','flower2',1,'YES','GROUP17','','','0000-00-00 00:00:00'),(7,'http://www.gopiplus.com/work/wp-content/uploads/pluginimages/88x88/1.jpg','http://realityinfo.com','_blank','flower3',3,'YES','GROUP17','','','0000-00-00 00:00:00'),(8,'http://www.gopiplus.com/work/wp-content/uploads/pluginimages/88x88/1.jpg','http://yahoo.com','_blank','flower3',5,'YES','GROUP1','','','0000-00-00 00:00:00'),(9,'http://www.gopiplus.com/work/wp-content/uploads/pluginimages/88x88/1.jpg','http://realityinfo.com','_blank','flower24',4,'YES','GROUP17','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `kt_ihrss_plugin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

