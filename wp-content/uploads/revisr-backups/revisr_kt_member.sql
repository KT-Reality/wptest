
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
DROP TABLE IF EXISTS `kt_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_member` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cta_bt_title` varchar(255) DEFAULT NULL,
  `cta_bt_dest_link` varchar(255) DEFAULT NULL,
  `cta_bt_img_link` varchar(255) DEFAULT NULL,
  `cta_bt_blue_btn_text` varchar(255) DEFAULT NULL,
  `cta_bt_blue_btn_link` varchar(255) DEFAULT NULL,
  `cta_bt_green_btn_text` varchar(255) DEFAULT NULL,
  `cta_bt_green_btn_link` varchar(255) DEFAULT NULL,
  `cta_bt_description` text,
  `cta_bt_assign_posts` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_member` WRITE;
/*!40000 ALTER TABLE `kt_member` DISABLE KEYS */;
INSERT INTO `kt_member` VALUES (6,'0000-00-00 00:00:00','Top 10 Cloud Facts from Forrester','http://www.bmc.com/forms/DCACloud-CLM-CloudForresterTop10Facts-AR-Nov2014.html','http://media.cms.bmc.com/images/form-thumbnail-CloudForresterTop10FactsWP.png','Reports','http://www.bmc.com/forms/DCACloud-CLM-CloudForresterTop10Facts-AR-Nov2014.html','Free Trials','http://www.bmc.com/forms/ITSM-TrackIT-Q4FY16-webdownloadv2-BMCcom.html','Get tips from Forrester and make sure your cloud initiative is on the right tracks.','1,50');
/*!40000 ALTER TABLE `kt_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

