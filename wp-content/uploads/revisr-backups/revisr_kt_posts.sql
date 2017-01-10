
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
DROP TABLE IF EXISTS `kt_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_posts` WRITE;
/*!40000 ALTER TABLE `kt_posts` DISABLE KEYS */;
INSERT INTO `kt_posts` VALUES (1,1,'2016-08-02 08:47:41','2016-08-02 08:47:41','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-01-02 07:23:28','2017-01-02 07:23:28','',0,'http://192.168.100.53/wptest/?p=1',0,'post','',1),(2,1,'2016-08-02 08:47:41','2016-08-02 08:47:41','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://192.168.100.53/wptest/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!\r\n\r\n\r\n[ihrss-gallery type=\"GROUP17\" w=\"600\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','Sample Page','','publish','closed','open','','sample-page','','','2016-08-08 07:55:37','2016-08-08 07:55:37','',0,'http://192.168.100.53/wptest/?page_id=2',0,'page','',0),(5,1,'2016-08-08 07:43:57','2016-08-08 07:43:57','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://192.168.100.53/wptest/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!\r\n\r\n\r\n[ihrss-gallery type=\"GROUP1\" w=\"600\" h=\"170\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"YES\"]','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-08-08 07:43:57','2016-08-08 07:43:57','',2,'http://192.168.100.53/wptest/2016/08/08/2-revision-v1/',0,'revision','',0),(6,1,'2016-08-08 07:49:30','2016-08-08 07:49:30','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://192.168.100.53/wptest/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!\r\n\r\n\r\n[ihrss-gallery type=\"GROUP1\" w=\"600\" h=\"170\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-08-08 07:49:30','2016-08-08 07:49:30','',2,'http://192.168.100.53/wptest/2016/08/08/2-revision-v1/',0,'revision','',0),(7,1,'2016-08-08 07:49:45','2016-08-08 07:49:45','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://192.168.100.53/wptest/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!\r\n\r\n\r\n[ihrss-gallery type=\"GROUP1\" w=\"600\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-08-08 07:49:45','2016-08-08 07:49:45','',2,'http://192.168.100.53/wptest/2016/08/08/2-revision-v1/',0,'revision','',0),(8,1,'2016-08-08 07:55:37','2016-08-08 07:55:37','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://192.168.100.53/wptest/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!\r\n\r\n\r\n[ihrss-gallery type=\"GROUP17\" w=\"600\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-08-08 07:55:37','2016-08-08 07:55:37','',2,'http://192.168.100.53/wptest/2016/08/08/2-revision-v1/',0,'revision','',0),(9,1,'2016-08-08 07:56:15','2016-08-08 07:56:15','[ihrss-gallery type=\"GROUP17\" w=\"1060\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','publish','closed','closed','','demo','','','2016-08-08 07:58:47','2016-08-08 07:58:47','',0,'http://192.168.100.53/wptest/?page_id=9',0,'page','',0),(10,1,'2016-08-08 07:56:02','2016-08-08 07:56:02','[ihrss-gallery type=\"GROUP17\" w=\"600\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:56:02','2016-08-08 07:56:02','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(11,1,'2016-08-08 07:56:15','2016-08-08 07:56:15','[ihrss-gallery type=\"GROUP17\" w=\"60\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:56:15','2016-08-08 07:56:15','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(12,1,'2016-08-08 07:56:36','2016-08-08 07:56:36','[ihrss-gallery type=\"GROUP17\" w=\"60\" h=\"700\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:56:36','2016-08-08 07:56:36','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(13,1,'2016-08-08 07:56:51','2016-08-08 07:56:51','[ihrss-gallery type=\"GROUP17\" w=\"1060\" h=\"700\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:56:51','2016-08-08 07:56:51','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(14,1,'2016-08-08 07:57:36','2016-08-08 07:57:36','[ihrss-gallery type=\"GROUP17, GROUP1\" w=\"1060\" h=\"700\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:57:36','2016-08-08 07:57:36','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(15,1,'2016-08-08 07:58:30','2016-08-08 07:58:30','[ihrss-gallery type=\"GROUP17\" w=\"1060\" h=\"700\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:58:30','2016-08-08 07:58:30','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(16,1,'2016-08-08 07:58:47','2016-08-08 07:58:47','[ihrss-gallery type=\"GROUP17\" w=\"1060\" h=\"70\" speed=\"1\" bgcolor=\"#FFFFFF\" gap=\"5\" random=\"NO\"]','demo','','inherit','closed','closed','','9-revision-v1','','','2016-08-08 07:58:47','2016-08-08 07:58:47','',9,'http://192.168.100.53/wptest/2016/08/08/9-revision-v1/',0,'revision','',0),(22,1,'2016-12-08 12:56:09','2016-12-08 12:56:09','page for testing Database Migration.','Database Migration','','publish','closed','closed','','database-migration','','','2016-12-08 12:56:09','2016-12-08 12:56:09','',0,'http://192.168.100.53/wptest/?page_id=22',0,'page','',0),(23,1,'2016-12-08 12:56:09','2016-12-08 12:56:09','page for testing Database Migration.','Database Migration','','inherit','closed','closed','','22-revision-v1','','','2016-12-08 12:56:09','2016-12-08 12:56:09','',22,'http://192.168.100.53/wptest/2016/12/08/22-revision-v1/',0,'revision','',0),(25,1,'2016-12-20 06:42:22','2016-12-20 06:42:22','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2016-12-20 06:42:22','2016-12-20 06:42:22','',1,'http://192.168.100.53/wptest/?p=25',0,'revision','',0),(26,1,'2016-12-23 12:06:34','2016-12-23 12:06:34','This is the liveblog test post to check feature here.','Liveblog test post','','publish','open','open','','liveblog-test-post','','','2016-12-23 12:07:19','2016-12-23 12:07:19','',0,'http://192.168.100.53/wptest/?p=26',0,'post','',0),(27,1,'2016-12-23 12:06:34','2016-12-23 12:06:34','This is the liveblog test post to check feature here.','Liveblog test post','','inherit','closed','closed','','26-revision-v1','','','2016-12-23 12:06:34','2016-12-23 12:06:34','',26,'http://192.168.100.53/wptest/archives/27',0,'revision','',0),(34,1,'2016-12-27 09:30:24','2016-12-27 09:30:24','','Test 24 Liveblog','','publish','closed','closed','','test-24-liveblog','','','2016-12-27 09:35:25','2016-12-27 09:35:25','',0,'http://192.168.100.53/wptest/?page_id=34',0,'page','',0),(35,1,'2016-12-27 09:30:24','2016-12-27 09:30:24','<div id=\"24lb_thread\" class=\"lb_1368863\"></div>\r\n<script type=\"text/javascript\">\r\n(function() {\r\nvar lb24 = document.createElement(\'script\'); lb24.type = \'text/javascript\'; lb24.id = \'24lbScript\'; lb24.async = true; lb24.charset=\"utf-8\";\r\nlb24.src = \'//v.24liveblog.com/embed/24.js?id=1368863\';\r\n(document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(lb24);})();\r\n</script>','Test 24 Liveblog','','inherit','closed','closed','','34-revision-v1','','','2016-12-27 09:30:24','2016-12-27 09:30:24','',34,'http://192.168.100.53/wptest/34-revision-v1/',0,'revision','',0),(36,1,'2016-12-27 09:35:25','2016-12-27 09:35:25','','Test 24 Liveblog','','inherit','closed','closed','','34-revision-v1','','','2016-12-27 09:35:25','2016-12-27 09:35:25','',34,'http://192.168.100.53/wptest/34-revision-v1/',0,'revision','',0),(39,1,'2016-12-27 11:21:56','2016-12-27 11:21:56','','parallax_bg','','inherit','open','closed','','parallax_bg','','','2016-12-27 11:21:56','2016-12-27 11:21:56','',0,'http://192.168.100.53/wptest/wp-content/uploads/2016/12/parallax_bg.jpg',0,'attachment','image/jpeg',0),(40,1,'2016-12-27 11:24:11','2016-12-27 11:24:11','This is post content where we want to publish our live blogging section.\r\n[liveblog]','Live blogging post','','publish','open','open','','live-blogging-post','','','2016-12-27 11:25:29','2016-12-27 11:25:29','',0,'http://192.168.100.53/wptest/?p=40',0,'post','',0),(42,1,'2016-12-27 11:24:11','2016-12-27 11:24:11','This is post content where we want to publish our live blogging section.\r\n[liveblog]','Live blogging post','','inherit','closed','closed','','40-revision-v1','','','2016-12-27 11:24:11','2016-12-27 11:24:11','',40,'http://192.168.100.53/wptest/40-revision-v1/',0,'revision','',0),(44,1,'2016-12-27 11:25:22','2016-12-27 11:25:22','This is the entry content on blog post via live blogging.\r\n<div class=\"liveblog-image\"><img class=\"attachment-large size-large aligncenter\" src=\"http://192.168.100.53/wptest/wp-content/uploads/2016/12/martin-smith.jpg\" sizes=\"(max-width: 160px) 100vw, 160px\" srcset=\"http://192.168.100.53/wptest/wp-content/uploads/2016/12/martin-smith.jpg 160w, http://192.168.100.53/wptest/wp-content/uploads/2016/12/martin-smith-150x150.jpg 150w, http://192.168.100.53/wptest/wp-content/uploads/2016/12/martin-smith-75x75.jpg 75w\" alt=\"martin-smith\" width=\"160\" height=\"160\" /></div>','Auto Draft','','publish','closed','closed','','auto-draft','','','2016-12-27 11:32:06','2016-12-27 11:32:06','',0,'http://192.168.100.53/wptest/?post_type=liveblog_entry&#038;p=44',0,'liveblog_entry','',0),(45,1,'2016-12-27 11:25:22','2016-12-27 11:25:22','','martin-smith','','inherit','open','closed','','martin-smith','','','2016-12-27 11:25:22','2016-12-27 11:25:22','',40,'http://192.168.100.53/wptest/wp-content/uploads/2016/12/martin-smith.jpg',0,'attachment','image/jpeg',0),(47,1,'2016-12-27 11:27:40','2016-12-27 11:27:40','This is another one post entry for live blog.\r\n<div class=\"liveblog-image\"><img class=\"attachment-large size-large alignleft\" src=\"http://192.168.100.53/wptest/wp-content/uploads/2016/12/David-Cramer.jpg\" sizes=\"(max-width: 160px) 100vw, 160px\" srcset=\"http://192.168.100.53/wptest/wp-content/uploads/2016/12/David-Cramer.jpg 160w, http://192.168.100.53/wptest/wp-content/uploads/2016/12/David-Cramer-150x150.jpg 150w, http://192.168.100.53/wptest/wp-content/uploads/2016/12/David-Cramer-75x75.jpg 75w\" alt=\"David-Cramer\" width=\"160\" height=\"160\" /></div>','Auto Draft','','publish','closed','closed','','auto-draft-2','','','2016-12-27 11:32:29','2016-12-27 11:32:29','',0,'http://192.168.100.53/wptest/?post_type=liveblog_entry&#038;p=47',0,'liveblog_entry','',0),(48,1,'2016-12-27 11:27:40','2016-12-27 11:27:40','','David-Cramer','','inherit','open','closed','','david-cramer','','','2016-12-27 11:27:40','2016-12-27 11:27:40','',40,'http://192.168.100.53/wptest/wp-content/uploads/2016/12/David-Cramer.jpg',0,'attachment','image/jpeg',0),(50,1,'2016-12-27 13:12:33','2016-12-27 13:12:33','This is the test content to test here live blog section.\r\n\r\n<code>[livestream]</code>','Live blog by Live Stream','','publish','open','open','','live-blog-by-live-stream','','','2016-12-27 13:12:53','2016-12-27 13:12:53','',0,'http://192.168.100.53/wptest/?p=50',0,'post','',0),(51,1,'2016-12-27 13:12:33','2016-12-27 13:12:33','This is the test content to test here live blog section.','Live blog by Live Stream','','inherit','closed','closed','','50-revision-v1','','','2016-12-27 13:12:33','2016-12-27 13:12:33','',50,'http://192.168.100.53/wptest/50-revision-v1/',0,'revision','',0),(52,1,'2016-12-27 13:12:53','2016-12-27 13:12:53','This is the test content to test here live blog section.\r\n\r\n<code>[livestream]</code>','Live blog by Live Stream','','inherit','closed','closed','','50-revision-v1','','','2016-12-27 13:12:53','2016-12-27 13:12:53','',50,'http://192.168.100.53/wptest/50-revision-v1/',0,'revision','',0),(53,1,'2016-12-27 13:13:30','2016-12-27 13:13:30','','This entry via live stream','','publish','closed','closed','','this-entry-via-live-stream','','','2016-12-27 13:13:30','2016-12-27 13:13:30','',0,'http://192.168.100.53/wptest/livestream/this-entry-via-live-stream/',0,'livestream','',0),(54,1,'2016-12-27 13:15:54','2016-12-27 13:15:54','','DEV Mode drops a cookie in your browser session and all caching (This includes caching of assets) will be turned off jus','','publish','closed','closed','','dev-mode-drops-a-cookie-in-your-browser-session-and-all-caching-this-includes-caching-of-assets-will-be-turned-off-jus','','','2016-12-27 13:15:54','2016-12-27 13:15:54','',0,'http://192.168.100.53/wptest/livestream/dev-mode-drops-a-cookie-in-your-browser-session-and-all-caching-this-includes-caching-of-assets-will-be-turned-off-jus/',0,'livestream','',0),(55,1,'2016-12-27 13:15:55','2016-12-27 13:15:55','','Screenshot_3','','inherit','open','closed','','screenshot_3','','','2016-12-27 13:15:55','2016-12-27 13:15:55','',54,'http://192.168.100.53/wptest/wp-content/uploads/2016/12/Screenshot_3.jpg',0,'attachment','image/jpeg',0),(56,1,'2016-12-27 13:17:24','2016-12-27 13:17:24','','Nothing to show','','publish','closed','closed','','nothing-to-show','','','2016-12-27 13:17:24','2016-12-27 13:17:24','',0,'http://192.168.100.53/wptest/livestream/nothing-to-show/',0,'livestream','',0),(57,1,'2016-12-27 13:17:24','2016-12-27 13:17:24','','Paul-dobson','','inherit','open','closed','','paul-dobson','','','2016-12-27 13:17:24','2016-12-27 13:17:24','',56,'http://192.168.100.53/wptest/wp-content/uploads/2016/12/Paul-dobson.jpg',0,'attachment','image/jpeg',0),(59,2,'2016-12-27 13:22:11','2016-12-27 13:22:11','','This is by another author','','publish','closed','closed','','this-is-by-another-author','','','2016-12-28 12:16:15','2016-12-28 12:16:15','',0,'http://192.168.100.53/wptest/livestream/this-is-by-another-author/',0,'livestream','',0),(60,1,'2017-01-07 12:19:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2017-01-07 12:19:56','0000-00-00 00:00:00','',0,'http://192.168.100.53/wptest/?p=60',0,'post','',0);
/*!40000 ALTER TABLE `kt_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

