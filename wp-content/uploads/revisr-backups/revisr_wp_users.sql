
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
DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'smix_admin','$P$BQhLoSOvD2/QetRI5VRioaBl78Mxwd1','smix_admin','praneet@strategymix.com.au','','2015-05-25 04:28:07','',0,'smix_admin'),(2,'deb@bmcexchange','$P$BE3gBWgQTEvg0sheKHaP4MzxOOKoae0','debbmcexchange','deborah@strategymix.com.au','','2015-05-25 04:29:00','',0,'Deborah Evans'),(3,'gillian@bmcexchange','$P$BGjlwvR434HRcPpg62nlub1bR3KnDb1','gillianbmcexchange','gillian@strategymix.com.au','','2015-05-25 04:30:06','',0,'Gillian L'),(4,'BMC Exchange Preview','$P$BMbKzXlXbhk1n/Q1OZRmTsiTx5mb5a/','bmc-exchange-preview','prue_palmer@bmc.com','','2015-07-22 03:01:20','',0,'BMC Exchange Preview'),(5,'stephen_watts','$P$Bl3gAJNYN6CYItkieghKO3SwYswlwR.','stephen_watts','Stephen_Watts@bmc.com','','2016-01-13 23:25:13','',0,'Stephen Watts'),(6,'chetan_wagh_tp@bmc.com','$P$BDjpfUAGB9Px4s9VNb3NMbN5E8N7Cu/','chetan_wagh_tpbmc-com','chetan_wagh_tp@bmc.com','','2016-02-06 12:11:05','',0,'chetan_wagh_tp@bmc.com'),(7,'page.lysupportadmin','$P$BtVsX9vo/xJfgNOIotLMdblLAMcoDJ/','page.lysupportadmin','support@pagely.com','','0000-00-00 00:00:00','',0,'page.lysupportadmin'),(8,'pwk_24@bmc.com','$P$BD6BsIYOmqWPy5jYXsbu32XfD8F5Xc0','pwk_24bmc-com','perla_wells-koran@bmc.com','http://www.bmc.com','2016-11-24 11:47:58','',0,'Renee Koran'),(9,'mukul.gupchup','$P$BcbCWa1TddT0PVJ0NiBfmo6pbh/8Ar1','mukul-gupchup','mukul_gupchup_tp@bmc.com','http://192.168.100.53/wptest','2017-01-17 09:09:09','',0,'Mukul Gupchup');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

