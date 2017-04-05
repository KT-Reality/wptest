
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
INSERT INTO `kt_vp_id` VALUES ('≠ÆóåëD¥h+ ∆∆-','commentmeta',1),('@fVNJlçÛpËç–å','comments',1),('HÊË(èÜM2ºµÄ\'∏°ˇó','comments',2),('∑V¬›ÙOÉcº\0»2˝','comments',3),('.Õó–SH∆Øc∂—ù‰ÿ›','comments',4),('±Ò tî≤Aêñ°·c∞Œ¨ç','comments',5),('jæeòöE2∂^ä∂@]^+','comments',6),('©ø\r\\Ä›@xØÊjwÈò@v','comments',8),('bŸ†<˙1H°\n(©Lﬂ∫Ω','comments',9),('U}ˇ¿ÇL^∞3Û›UÊòV','comments',10),('^…œ™‹wFSè	`G∞P','comments',11),('l|q⁄F>ö$∑¯ÇâT','comments',12),('ÛÔru£Lûœ4V\0\\Ní','postmeta',1),('æf˘wœ…K∏äô¯)5I&Œ','postmeta',14),('I∫ßy\0Løê≠qgVòäì','postmeta',15),('ÙÜäÛêÄEG≤†rnpTò','postmeta',19),('∏öÁ€iL…øÃá’[Iﬂ\\','postmeta',20),('6Œg<§Cpçí¬“Æeh','postmeta',21),('ÎSï[.<LÜæí[€ô','postmeta',22),('\rÜÈúøA·èlõµñåQp','postmeta',23),('ëN[•gsJ¯£_tÖG{≤ø','postmeta',27),('ˆ3Øì˛ïB.∂Ëª¡È.','postmeta',29),('èÏf@[âB–3y3¿','postmeta',34),('6§£¬K]¶^ö≥∆8Ù','postmeta',35),('ã{π§|Dì¡ÈP∑j','postmeta',37),('\\U2ËAì¥Ä=\Za«`','postmeta',38),('•›Ì ¶Kªû	æ˜^{G','postmeta',42),('Jê¯]Í6B©h\ZÏ∞Òê','postmeta',43),(';?ªY°H(û)©1iËfÛ','postmeta',44),('ÍmUy°rJL¨Äÿ~†òtö','postmeta',46),('ƒ√úCN˘ó÷∑åÕD','postmeta',47),('ÿV¸¬ƒ∞L6ê ¯¡G_≠[','postmeta',51),('‰M-±L‚Øªÿ™.ë','postmeta',52),('ÈrÒí@∂ÑΩ•,“«-∑','postmeta',57),('=|ª†˛I∫í/æé;ˇ','postmeta',58),('ÔØås2J„™‚à?ˇØ7','postmeta',59),('nD¡qö˝A&¥˚™ê¯%˝?','postmeta',63),('Tx»v%C»ÄDzZ8ƒ\Z','postmeta',64),('oëâÏÅ‘N7∑GtN‘*','postmeta',65),('\'UêÏ©ÈJ°•:ËûSî∂','postmeta',66),('hì¯ÉNøπÉ*«Ö6:J','postmeta',69),('5à€u~G‡™ƒ’ˆè©«◊','postmeta',71),('Y€T‹BH¡í\Z∏©úF^í','postmeta',72),('>ßãâã˘G–¢J.MÇ¿Õ','postmeta',75),('?ì∂~1Kôæ/®h\n–','postmeta',77),(',íO/Jˆª\nã’\0M∂','postmeta',94),('ÛÿÑ“«F∆≥!öÿ˝˙U','postmeta',95),('cC%®PìJ¬∏‘ï¯´L‡','posts',1),('§:?\"B∂:}∂YjÙ','posts',2),('†Ì\rT\'´J?ßtö∂2>','posts',9),(';ïÂn Aö¶ÌßÕK2˚\\','posts',22),('*≥@L©›/Y\Z','posts',26),('vt2π-OßÜp€–ä24:','posts',34),('™∏À{HˆßÚ≠„«SÂ','posts',39),('ÇOöËëM∑©ºI¥‘Í—ë','posts',40),('}EóñgwLÂØEüØœ\n/','posts',44),(';är{TÈB¨êÎÀI\Z3','posts',45),('‚·3j¬DÑ†„cÿpß–J','posts',47),('≤j%NË¥K¯ëz1I¬Ju','posts',48),('eœôïRhEXúiÂ=dÎ','posts',50),('—>∂aö@cº7Õ·†©‘~','posts',53),('ó¨k7{‚Gœü∫°ÍÌ','posts',54),('‰π⁄6e⁄Cá°ç#ŒΩ&≤','posts',55),('9êä,L≠èdIJ.˜îƒ','posts',56),(')4R”Q√M™∑É)π¬4¥','posts',57),('n§’ßu¥FÆ≠œóY∂b‘','posts',59),('\\•±Ü÷∆O§πWÎå/®ˆv','posts',61),('?µÿ>^@ì∞Ât—*˘Ey','posts',74),('Ñ\\ùQ∞A8§ZQÆŸΩ∏','terms',1),('ËX\\Y«\nO∆ØƒR˛4ªè„','terms',2),('¨‡P±ƒiD7Ü—NB\"T¿','terms',3),('ä<=bMº@\råk&\n3\rÕÄ','term_taxonomy',1),('óöøÒ∏BO¥∑1i)ÚJXY','term_taxonomy',2),('vëQV\"KÁåø˘fL8‰','term_taxonomy',3),('>xË#@µæ\'˚œ¬-Ø','usermeta',1),('Ê–™ I?ß˙hÛ¥ˇ‰','usermeta',2),('º∫_W\'ª@s£±¸L‘órÑ','usermeta',3),('€Ö˘E,ÑEˆ¶t–#f\'≠4','usermeta',4),('æî…~SZMúú[‰ælg#','usermeta',5),('‡˜85éDHaß≠`Ÿ˘ˇO]','usermeta',6),('e»IáÒB:ç»0£[g/˙','usermeta',7),('8ﬁ+≈aVE£∞üSrı.≥','usermeta',8),('$•~.‚OM¶†ü6øQéVü','usermeta',9),('Ü—∑>c≠Mµâˆß©Ï ‚','usermeta',10),('ƒè^YõsL≤‘œJ906','usermeta',11),('©˛üÄCTàIπ’°f°','usermeta',12),('Í#r?|¥O0Æ¶CãÚôR¨','usermeta',13),('L∂Ÿ…J§∂Â5n7_öÆ','usermeta',16),('^Ë‘DIBIÜ.ÇÃ◊|û','usermeta',17),('y◊T0JÛÆNÇê¥˜','usermeta',18),(']ÿ£≈ÆÛLZµ5◊f,®ãã','usermeta',19),('fK÷z⁄GMØ9@)–È3','usermeta',20),('ï2\rﬂJãO9ë“ªEèÇ','usermeta',21),('S÷Ë \'˚H©\\í€®E÷H','usermeta',22),('¯§ù§J:≤\\$ñlÜí','usermeta',23),('∂R÷ù◊ KﬂÉ5√9ß≤€','usermeta',24),('o˛‰Z|J7ª„Éºü±','usermeta',25),('‘©‰û˛RG∫ò¶ÆXyËgö','usermeta',26),('6ÓÙ˙üMô)úT]À∆','usermeta',27),('ƒ¯Íc©Cå$–&í-´x','usermeta',28),('tÁÄ\rv%MÒ•3ﬂˇ´dUπ','usermeta',29),('æv¸7™áIO©25j5grH','usermeta',30),('ª3≈ÍÕSHÄt;ΩL¬±+','usermeta',31),('(ŒÁœ‘¢JÈπ´‰qçTl','usermeta',32),('m`bÂ}(@Ìü√lŸ[@á','usermeta',33),('3≤O:PsMÊüΩ˛SZ˛e','usermeta',36),('Ú¨c`ª7L\Zû°†ºŒ„t','usermeta',37),('E˙˝Gª>I—≠\\≥ŸÈX”\"','usermeta',38),('ÕÚƒÎhM†N–ÓÑs—T','usermeta',39),('“ßÍI0ŒN±√ÌÂ~H5','usermeta',40),('8edR\"E9•ótÙzù','users',1),('·ËyóJCBg•¶a óyïT','users',2);
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

