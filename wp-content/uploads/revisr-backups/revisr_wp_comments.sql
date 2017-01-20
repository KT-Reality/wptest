
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
DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2015-05-25 04:28:07','2015-05-25 04:28:07','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0),(4,375,'Mr WordPress','','https://wordpress.org/','','2014-07-09 12:14:18','2014-07-09 12:14:18','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0),(8,1,'Bianca','hzcbxr@yahoo.fr','http://anders.ga/ecpue','104.168.50.76','2015-06-06 14:02:15','2015-06-06 14:02:15','Hi, my name is Bianca and I am the marketing manager at CorpSEO marketing. I was just looking at your Hello world! | BMC Exchange site and see that your site has the potential to become very popular. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are looking for niches like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://zoy.bz/4nx - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the network I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this network to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://garye.co/l4 - or to unsubscribe please go here: http://innovad.ws/8h9dp',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),(9,1,'Jacqueline','erjjrrqmgsw@hotmail.fr','http://zoy.bz/4nn','198.23.212.249','2015-06-06 21:14:24','2015-06-06 21:14:24','Hi my name is Jacqueline and I just wanted to drop you a quick note here instead of calling you. I came to your Hello world! | BMC Exchange page and noticed you could have a lot more traffic. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get targeted traffic from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Visit them here: http://zoy.bz/4nn',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),(10,1,'Jacqueline','ipifjaiqmzc@hotmail.fr','http://zoy.bz/4nn','104.168.67.69','2015-06-11 01:08:03','2015-06-11 01:08:03','Hi my name is Jacqueline and I just wanted to drop you a quick note here instead of calling you. I discovered your Hello world! | BMC Exchange page and noticed you could have a lot more hits. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your niche. There is a company that you can get targeted visitors from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://innovad.ws/2dttq',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),(11,1,'Bianca','uqfxiznube@yahoo.fr','http://garye.co/l4','104.168.42.39','2015-06-11 14:50:50','2015-06-11 14:50:50','Hi, my name is Bianca and I am the marketing manager at CorpSEO marketing. I was just looking at your Hello world! | BMC Exchange site and see that your website has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in niches like yours. By getting your website on this service you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://garye.co/l4 - Now, let me ask you... Do you need your website to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the network I am describing. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything at all. All the popular sites are using this network to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://innovad.ws/35-85 - or to unsubscribe please go here: http://innovad.ws/8h9dp',0,'spam','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

