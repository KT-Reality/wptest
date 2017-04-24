
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
DROP TABLE IF EXISTS `kt_apmm_custom_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_apmm_custom_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `slug` text,
  `theme_settings` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_apmm_custom_theme` WRITE;
/*!40000 ALTER TABLE `kt_apmm_custom_theme` DISABLE KEYS */;
INSERT INTO `kt_apmm_custom_theme` VALUES (1,'Default Theme','default-theme','a:12:{s:7:\"general\";a:4:{s:11:\"line_height\";s:3:\"1.5\";s:6:\"zindex\";s:3:\"999\";s:13:\"enable_shadow\";s:1:\"1\";s:12:\"shadow_color\";s:7:\"#ffffff\";}s:8:\"menu_bar\";a:18:{s:22:\"enable_menu_background\";s:1:\"1\";s:20:\"menu_background_from\";s:7:\"#5ec073\";s:10:\"font_color\";s:7:\"#ffffff\";s:11:\"font_family\";s:9:\"Open Sans\";s:11:\"font_weight\";s:6:\"normal\";s:11:\"padding_top\";s:4:\"20px\";s:14:\"padding_bottom\";s:4:\"25px\";s:12:\"padding_left\";s:4:\"20px\";s:13:\"padding_right\";s:4:\"22px\";s:5:\"width\";s:4:\"100%\";s:21:\"border_radius_topleft\";s:3:\"0px\";s:22:\"border_radius_topright\";s:3:\"0px\";s:25:\"border_radius_bottomright\";s:3:\"0px\";s:24:\"border_radius_bottomleft\";s:3:\"0px\";s:12:\"border_color\";s:7:\"#5ec073\";s:9:\"alignment\";s:4:\"left\";s:10:\"margin_top\";s:3:\"0px\";s:13:\"margin_bottom\";s:3:\"0px\";}s:8:\"top_menu\";a:20:{s:23:\"enable_background_hover\";s:1:\"1\";s:21:\"background_hover_from\";s:7:\"#47a35b\";s:15:\"bg_active_color\";s:0:\"\";s:17:\"font_color_active\";s:7:\"#ffffff\";s:9:\"font_size\";s:4:\"13px\";s:17:\"font_weight_hover\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:15:\"font_decoration\";s:4:\"none\";s:21:\"font_decoration_hover\";s:4:\"none\";s:19:\"enable_menu_divider\";s:1:\"1\";s:18:\"menu_divider_color\";s:16:\"rgb(255,255,255)\";s:12:\"opacity_glow\";s:3:\"0.5\";s:25:\"enable_menu_label_bgcolor\";s:1:\"1\";s:18:\"menu_label_bgcolor\";s:7:\"#f1ee1a\";s:20:\"menu_label_fontcolor\";s:4:\"#000\";s:19:\"menu_label_fontsize\";s:0:\"\";s:22:\"menu_label_font_family\";s:9:\"Open Sans\";s:22:\"menu_label_font_weight\";s:6:\"normal\";s:25:\"menu_label_font_transform\";s:9:\"uppercase\";s:17:\"enable_background\";s:1:\"0\";}s:12:\"megamenu_bar\";a:11:{s:26:\"enable_megamenu_background\";s:1:\"1\";s:20:\"menu_background_from\";s:7:\"#ffd323\";s:5:\"width\";s:4:\"100%\";s:11:\"padding_top\";s:4:\"15px\";s:14:\"padding_bottom\";s:3:\"5px\";s:12:\"padding_left\";s:3:\"8px\";s:13:\"padding_right\";s:3:\"8px\";s:12:\"border_color\";s:7:\"#ffffff\";s:13:\"border_radius\";s:3:\"0px\";s:10:\"box_shadow\";s:9:\"0 3px 3px\";s:16:\"box_shadow_color\";s:18:\"rgba(0, 0, 0, 0.2)\";}s:11:\"second_menu\";a:2:{s:17:\"enable_background\";s:1:\"0\";s:23:\"enable_background_hover\";s:1:\"0\";}s:10:\"third_menu\";a:2:{s:17:\"enable_background\";s:1:\"0\";s:23:\"enable_background_hover\";s:1:\"0\";}s:7:\"widgets\";a:14:{s:10:\"font_color\";s:6:\"#00000\";s:16:\"font_hover_color\";s:6:\"#00000\";s:9:\"font_size\";s:4:\"14px\";s:11:\"font_weight\";s:4:\"bold\";s:17:\"font_weight_hover\";s:4:\"bold\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:15:\"font_decoration\";s:4:\"none\";s:21:\"font_decoration_hover\";s:4:\"none\";s:18:\"content_font_color\";s:6:\"#00000\";s:17:\"content_font_size\";s:0:\"\";s:19:\"content_font_family\";s:9:\"Open Sans\";s:10:\"margin_top\";s:3:\"0px\";s:13:\"margin_bottom\";s:4:\"10px\";}s:11:\"top_section\";a:9:{s:10:\"font_color\";s:7:\"#000000\";s:9:\"font_size\";s:4:\"13px\";s:11:\"font_weight\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:16:\"image_margin_top\";s:3:\"0px\";s:19:\"image_margin_bottom\";s:4:\"10px\";s:17:\"image_margin_left\";s:3:\"0px\";s:18:\"image_margin_right\";s:3:\"0px\";}s:14:\"bottom_section\";a:9:{s:10:\"font_color\";s:7:\"#000000\";s:9:\"font_size\";s:4:\"13px\";s:11:\"font_weight\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:16:\"image_margin_top\";s:4:\"10px\";s:19:\"image_margin_bottom\";s:3:\"0px\";s:17:\"image_margin_left\";s:3:\"0px\";s:18:\"image_margin_right\";s:3:\"0px\";}s:6:\"flyout\";a:16:{s:17:\"enable_background\";s:1:\"1\";s:19:\"menu_bgcurrentcolor\";s:7:\"#5ec073\";s:18:\"menu_bg_hovercolor\";s:7:\"#47a35b\";s:10:\"font_color\";s:7:\"#ffffff\";s:16:\"font_hover_color\";s:7:\"#ffffff\";s:9:\"font_size\";s:4:\"12px\";s:11:\"font_weight\";s:6:\"normal\";s:17:\"font_weight_hover\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:15:\"font_decoration\";s:4:\"none\";s:21:\"font_decoration_hover\";s:4:\"none\";s:11:\"item_margin\";s:7:\"0px 5px\";s:12:\"item_padding\";s:4:\"10px\";s:10:\"item_width\";s:5:\"210px\";s:19:\"enable_menu_divider\";s:1:\"0\";}s:15:\"mobile_settings\";a:11:{s:24:\"togglebar_enable_bgcolor\";s:1:\"1\";s:25:\"togglebar_background_from\";s:7:\"#5ec073\";s:16:\"togglebar_height\";s:4:\"40px\";s:26:\"resposive_breakpoint_width\";s:5:\"910px\";s:10:\"icon_color\";s:7:\"#ffffff\";s:10:\"text_color\";s:7:\"#ffffff\";s:15:\"togglebar_align\";s:4:\"left\";s:25:\"submenu_closebtn_position\";s:6:\"bottom\";s:23:\"submenus_retractor_text\";s:5:\"CLOSE\";s:17:\"toggle_bar_enable\";s:1:\"0\";s:24:\"togglebar_bghover_enable\";s:1:\"0\";}s:10:\"search_bar\";a:6:{s:9:\"font_size\";s:4:\"10px\";s:5:\"width\";s:5:\"182px\";s:10:\"text_color\";s:6:\"#fffff\";s:8:\"bg_color\";s:7:\"#5ec073\";s:21:\"text_placholder_color\";s:4:\"#ccc\";s:10:\"icon_color\";s:7:\"#ffffff\";}}','2017-04-18 08:04:23','2017-04-18 09:04:27');
/*!40000 ALTER TABLE `kt_apmm_custom_theme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

