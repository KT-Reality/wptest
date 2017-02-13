
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
DROP TABLE IF EXISTS `kt_vp_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_vp_id` (
  `vp_id` binary(16) NOT NULL,
  `table` varchar(64) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`vp_id`),
  UNIQUE KEY `table_id` (`table`,`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kt_vp_id` WRITE;
/*!40000 ALTER TABLE `kt_vp_id` DISABLE KEYS */;
INSERT INTO `kt_vp_id` VALUES ('­®—Œ‘D´h+ ÆÆ-','commentmeta',1),('@fVNJlópèĞŒ','comments',1),('Hæè(†M2¼µ€\'¸¡ÿ—','comments',2),('·VÂİôOƒc¼\0Èğ2ı','comments',3),('.Í—ĞSHÆ¯c¶ÑäØİ','comments',4),('±ñÊt”²A–¡ác°Î¬','comments',5),('j¾e˜šE2¶^Š¶@]^+','comments',6),('©¿\r\\€İ@x¯æjwé˜@v','comments',8),('bÙ <ú1H¡\n(©Lßº½','comments',9),('U}ÿÀ‚L^°3óİUæ˜V','comments',10),('^ÉÏªÜwFS	`G°P','comments',11),('l|qÚF>š$·ø‚‰T','comments',12),('óïru£LÏ4V\0\\N’','postmeta',1),('¾fùwÏÉK¸Š™ø)5I&Î','postmeta',14),('Iº§y\0L¿­qgV˜Š“','postmeta',15),('ô†Šó€EG² rnpT˜','postmeta',19),('¸šçÛiLÉ¿Ì‡Õ[Iß\\','postmeta',20),('6Îg<¤Cp’ÂÒ®eh','postmeta',21),('ëS•[.<L†¾’[Û™','postmeta',22),('\r†éœ¿Aál›µ–ŒQp','postmeta',23),('‘N[¥gsJø£_t…G{²¿','postmeta',27),('ö3¯“ş•B.¶è»Áé.','postmeta',29),('ìf@[‰BĞ3y3À','postmeta',34),('6¤£ÂK]¦^š³Æ8ô','postmeta',35),('‹{¹¤|D“ÁéP·j','postmeta',37),('\\U2èA“´€=\ZaÇ`','postmeta',38),('¥İíÊ¦K»	¾÷^{G','postmeta',42),('Jø]ê6B©h\Zì°ñ','postmeta',43),(';?»Y¡H()©1ièfó','postmeta',44),('êmUy¡rJL¬€Ø~ ˜tš','postmeta',46),('ÄÃœCNù—Ö·ŒÍD','postmeta',47),('ØVüÂÄ°L6 øÁG_­[','postmeta',51),('äM-±Lâ¯»Øª.‘','postmeta',52),('érñ’@¶„½¥,ÒÇ-·','postmeta',57),('=|» şIº’/¾;ÿ','postmeta',58),('ï¯Œs2Jãªâˆ?ÿ¯7','postmeta',59),('nDÁqšıA&´ûªø%ı?','postmeta',63),('TxÈv%CÈ€DzZ8Ä\Z','postmeta',64),('o‘‰ìÔN7·GtNÔ*','postmeta',65),('\'Uì©éJ¡¥:èS”¶','postmeta',66),('h“øƒN¿¹ƒ*Ç…6:J','postmeta',69),('5ˆÛu~GàªÄÕö©Ç×','postmeta',71),('YÛTÜBHÁ’\Z¸©œF^’','postmeta',72),('>§‹‰‹ùGĞ¢ğJ.M‚ÀÍ','postmeta',75),('?“¶~1K™¾/¨h\nĞ','postmeta',77),('cC%¨P“JÂ¸Ô•ø«Là','posts',1),('¤:?\"B¶:}¶Yjô','posts',2),(' í\rT\'«J?§tš¶2>','posts',9),(';•ånÊAš¦í§ÍK2û\\','posts',22),('*³ğ@L©İ/Y\Z','posts',26),('vt2¹-O§†pÛĞŠ24:','posts',34),('ª¸Ë{Hö§ò­ãÇSå','posts',39),('‚Ošè‘M·©¼I´ÔêÑ‘','posts',40),('}E—–gwLå¯EŸ¯Ï\n/','posts',44),(';Šr{TéB¬ëËI\Z3','posts',45),('âá3jÂD„ ãcØp§ĞJ','posts',47),('²j%Nè´Kø‘ğz1IÂJu','posts',48),('eÏ™•RhEXœiå=dë','posts',50),('Ñ>¶aš@c¼7Íá ©Ô~','posts',53),('—¬k7{âGÏŸº¡êí','posts',54),('ä¹Ú6eÚC‡¡#Î½&²','posts',55),('9Š,L­dIJ.÷”Ä','posts',56),(')4RÓQÃMª·ƒ)¹Â4´','posts',57),('n¤Õ§u´F®­Ï—Y¶bÔ','posts',59),('\\¥±†ÖÆO¤¹WëŒ/¨öv','posts',61),('„\\Q°A8¤ZQ®Ù½¸','terms',1),('èX\\YÇ\nOÆ¯ÄRş4»ã','terms',2),('¬àP±ÄiD7†ÑNB\"TÀ','terms',3),('Š<=bM¼@\rŒk&\n3\rÍ€','term_taxonomy',1),('—š¿ñ¸BO´·1i)òJXY','term_taxonomy',2),('v‘QV\"KçŒ¿ùfL8ä','term_taxonomy',3),('>xè#@µ¾\'ûÏÂ-¯','usermeta',1),('æĞª I?§úhó´ÿä','usermeta',2),('¼º_W\'»@s£±üLÔ—r„','usermeta',3),('Û…ùE,„Eö¦tĞ#f\'­4','usermeta',4),('¾”É~SZMœœ[ä¾lg#','usermeta',5),('à÷85DHa§­`ÙùÿO]','usermeta',6),('eÈI‡ñB:È0£[g/ú','usermeta',7),('8Ş+ÅaVE£°ŸSrõ.³','usermeta',8),('$¥~.âOM¦ Ÿ6¿QVŸ','usermeta',9),('†Ñ·>c­Mµ‰ö§©ì â','usermeta',10),('Ä^Y›sL²ÔÏJ906','usermeta',11),('©şŸ€CTˆI¹Õ¡f¡','usermeta',12),('ê#r?|´O0®¦C‹ò™R¬','usermeta',13),('L¶ÙÉJ¤¶å5n7_š®','usermeta',16),('^èÔDIBI†.‚Ì×|','usermeta',17),('y×T0Jó®N‚´÷','usermeta',18),(']Ø£Å®óLZµ5×f,¨‹‹','usermeta',19),('fKÖzÚGM¯9@)Ğé3','usermeta',20),('•2\rßJ‹O9‘Ò»E‚','usermeta',21),('SÖè \'ûH©\\’Û¨EÖH','usermeta',22),('ø¤¤J:²ğ\\$–l†’','usermeta',23),('¶RÖ× Kßƒ5Ã9§²Û','usermeta',24),('oşäZ|J7»ãƒ¼Ÿ±','usermeta',25),('Ô©äşRGº˜¦®Xyègš','usermeta',26),('6îôúŸM™)œT]ËÆ','usermeta',27),('Äøêc©CŒ$Ğ&’-«x','usermeta',28),('tç€\rv%Mñ¥3ßÿ«dU¹','usermeta',29),('¾vü7ª‡IO©25j5grH','usermeta',30),('»3ÅêÍSH€t;½LÂ±+','usermeta',31),('(ÎçÏÔ¢Jé¹«äqTl','usermeta',32),('m`bå}(@íŸÃlÙ[@‡','usermeta',33),('3²O:PsMæŸ½şSZşe','usermeta',36),('8edR\"E9¥—tôz','users',1),('áèy—JCBg¥¦a —y•T','users',2);
/*!40000 ALTER TABLE `kt_vp_id` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

