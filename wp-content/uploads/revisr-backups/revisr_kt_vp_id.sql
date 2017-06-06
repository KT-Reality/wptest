
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
INSERT INTO `kt_vp_id` VALUES ('�����D�h+ ��-','commentmeta',1),('@fVNJl��p�Ќ','comments',1),('H��(��M2���\'����','comments',2),('�V���O�c�\0��2�','comments',3),('.͗�SHƯc�ѝ���','comments',4),('���t��A����c�ά�','comments',5),('j�e��E2�^��@]^+','comments',6),('��\r\\��@x��jw�@v','comments',8),('b٠<�1H�\n(�Lߺ�','comments',9),('U}���L^�3��U�V','comments',10),('^�Ϫ�wFS�	`G�P','comments',11),('l|q�F>�$����T','comments',12),('��ru�L��4V\0\\N�','postmeta',1),('�f�w��K����)5I&�','postmeta',14),('I��y\0L���qgV���','postmeta',15),('��EG��rnpT�','postmeta',19),('����iLɿ̇�[I�\\','postmeta',20),('6�g<�Cp���Үeh','postmeta',21),('�S�[.<L���[ۙ','postmeta',22),('\r����A�l����Qp','postmeta',23),('�N[�gsJ��_t�G{��','postmeta',27),('�3����B.����.','postmeta',29),('��f@[�B�3y3�','postmeta',34),('6���K]�^���8�','postmeta',35),('�{��|D���P�j','postmeta',37),('\\U2�A���=\Za�`','postmeta',38),('���ʦK��	��^{G','postmeta',42),('J��]�6B�h\Z��','postmeta',43),(';?�Y�H(�)�1i�f�','postmeta',44),('�mUy�rJL���~��t�','postmeta',46),('�ÜCN������D','postmeta',47),('�V��İL6� ��G_�[','postmeta',51),('�M-�L⯻ت.�','postmeta',52),('�r�@����,��-�','postmeta',57),('=|���I��/��;�','postmeta',58),('��s2J��?��7','postmeta',59),('nD�q��A&�����%�?','postmeta',63),('Tx�v%CȀDzZ8�\Z','postmeta',64),('o����N7�GtN�*','postmeta',65),('\'U���J��:�S��','postmeta',66),('h���N���*ǅ6:J','postmeta',69),('5��u~G��������','postmeta',71),('Y�T�BH��\Z���F^�','postmeta',72),('>�����GТ�J.M���','postmeta',75),('?��~1K��/�h\n�','postmeta',77),(',�O/J��\n��\0M�','postmeta',94),('�؄��FƳ!����U','postmeta',95),('\"eb$��@b����A08','postmeta',98),('�E��\\�A�`�JN�y','postmeta',99),('h�4ٶFLe���=2FM','postmeta',100),('��0��G(��K���','postmeta',101),('��]z�QCΏ���=��','postmeta',102),('��~q�@终���','postmeta',103),('.����DT��YZ#�YD','postmeta',104),('�cc�yO���(�=�%','postmeta',105),('C`^�kF?�\'h0-��','postmeta',107),('�	�XDb�WA�(���','postmeta',108),('B�P$�oJ��X�����','postmeta',109),('2>1{vA[��Ax�ТL','postmeta',110),('�}��@�M��\r(�-F','postmeta',111),('�v��i�@߬�-S�Ȥ�','postmeta',112),('bm�^�M��Ҍ��BJG','postmeta',113),('F��ki�B��\r�8X','postmeta',114),('фP���M��� ����','postmeta',116),('�]�lq�CO���d�','postmeta',117),('R�AU�Nz��7��.','postmeta',118),('�Ox�{Jî����','postmeta',119),('/�IE`^D2�!���gL\'','postmeta',120),('4z1V�VEI���\'s','postmeta',121),('0?���CU�<RD�轆','postmeta',122),('��D��A+���T�','postmeta',123),('MКx�BB��D����','postmeta',125),('�jȨ%vHٖa�.��\\�','postmeta',126),('}/���J�\\mpn��K','postmeta',127),('�R+�CJ#����y��','postmeta',128),('�Nq�\ZK��0c��0�','postmeta',129),('�3��Oɖ�U\ZH��\r','postmeta',130),('��>e7K\"�X_YӗJE','postmeta',131),('�/�gF���!�sk\'J','postmeta',132),('=J�q\0Od�WV;k<��','postmeta',134),('\\>vOVĻ��anN�','postmeta',135),('l�R�d�C6��g+�j','postmeta',136),('�!{�@�d�\0��','postmeta',137),('�к��G&�����qu','postmeta',138),('�>~�	Gƛ!�@%�V','postmeta',139),(';��/��G0��3�&��','postmeta',140),('����F��Di����','postmeta',141),('��y�\Z�L�$hҪ�~','postmeta',143),('�h\07@�$���\"�','postmeta',144),('W�&�b`O��Y}5�','postmeta',145),('rYf�JD�%�wHI','postmeta',146),('U�>�E�����P��','postmeta',147),('\"Cgp�E��L-_����','postmeta',148),('�<	R��M��\r\r�e?�','postmeta',149),('oϘ�չB��\n��o$�','postmeta',150),('�-+��DH񩾶ߙo�','postmeta',152),('R!E0�iNZ��D_���','postmeta',153),('��x4ÝN�[M��\Z','postmeta',154),('-*�xU�L{�\\Q�Xa�','postmeta',155),('���0?I8�)\"\'ت��','postmeta',156),('�|6\Z_!G����(͓!�','postmeta',157),('B�i�JK��7�>^���','postmeta',158),('yV�瑂J/�e�W�>��','postmeta',159),('VM�g+qD׺�����.','postmeta',161),('20!H3�G\0��v*%�','postmeta',162),('_���HMn�hMBݟц','postmeta',163),('���Q�@^�a��v��','postmeta',164),('�Y�s�FJ(�$<n5ʯm','postmeta',165),('Y�5M��F���Qã��@','postmeta',166),(' �,o�0M4��F�`�','postmeta',167),('{�\rp&�O٣���1�','postmeta',168),('����Gp�̈́/Vm��','postmeta',170),('�C��J���.�','postmeta',171),('[���w�L|��lԞ2','postmeta',172),('>�6M��Lk-^a��','postmeta',173),('C�W�MJ��?*G���','postmeta',174),('X�����K����D+�S','postmeta',175),('F��U�JK�t\rr\r��t','postmeta',176),('�F�z̸E��RzYo��','postmeta',177),('矔.!CN���CQ�9 ','postmeta',179),('�����@M��H-��9�K','postmeta',180),('6Lc�\"QB�l{���Q�','postmeta',181),('�c���HT��[@���','postmeta',182),('�0ej��D8� �T���','postmeta',183),('�e3riIB���t���&','postmeta',184),('F!���AM��&BG�W','postmeta',185),('��Y��OQ�����Y�','postmeta',186),('t�/�d�I��U5�XZL','postmeta',188),('�SW|ܪH��.륱pMi','postmeta',189),('k��B��e�z(�ҥ','postmeta',190),('h�~E�-G��P��ș�','postmeta',191),('mlc	 JM��+�ށ','postmeta',192),('0�H��pC<��g0','postmeta',193),('�����9M#��Z���-�','postmeta',194),('_��c�\ZAN��L�d�','postmeta',195),('�z�/+�@�p\nh���','postmeta',197),('�ld�@��<Z�\"^','postmeta',198),('��{Xl	O���@��TN','postmeta',199),(',�K�iH*���ܷ	�','postmeta',200),('s8�FkOa���$u~�','postmeta',201),('�O��8KO��2��̫�','postmeta',202),('�[d,�@�UdP���!','postmeta',203),('��\r9@L��y�\"�Ůo','postmeta',204),('��TC ��1�5G��','postmeta',206),('�����B��Pc�v,Y','postmeta',207),('5b6�C��۾vB','postmeta',208),('!�s�=�O�r��>��','postmeta',209),('��;)D1�{I�5Cd�','postmeta',210),('��I/bG�����\r�<H','postmeta',211),('\r����%M�������u�','postmeta',212),('u�r��A��l���̗','postmeta',213),('�T�Ó�F���̼�N','postmeta',215),('6�Vu�D�N˯�+�','postmeta',216),('�aO_�N\"�hn�;�4�','postmeta',217),('���yg�O�����Mr��','postmeta',218),('1c�G\\�Bi�G���rH�','postmeta',219),('\"}�\n\0�A,�������','postmeta',220),('fT�!�\'G\"��[�=8�','postmeta',221),('|8�ʵB}��!��?�','postmeta',222),('C��yU�O��!4s���','postmeta',224),('����t�L���\"��P-','postmeta',225),('E\n[uH�L!����i','postmeta',226),('����rH���b\\�Zպ','postmeta',227),('Ý��:�@��ą�ڈJ','postmeta',228),('���0�\rB��e�J���','postmeta',229),('�d+�Ga��Jr9��','postmeta',230),(',u,�O&��D�M��`','postmeta',231),('��:�;*Oc�\"yγ��','postmeta',233),('?�at\nB� ����','postmeta',234),(')�4��B`�Ga\0$8O?','postmeta',235),('�R��FDJ��<��t�','postmeta',236),('|o(7�*Fܙ�@m�?�0','postmeta',237),('0�0�oA���-��a%�','postmeta',238),('�\"h��B�@m՚�G!','postmeta',239),('͒/[c�I��Ȑo��2','postmeta',240),('!�[%I�F�P��A��','postmeta',242),('�N.��\"A	��{RծƁ','postmeta',243),('�\r���A?�1�X�/�','postmeta',244),('��g��B/���K	��','postmeta',245),('�=�@L�\n!����H','postmeta',246),('$*��jD݌�� �y�Q','postmeta',247),('G�I��A���S��;g1','postmeta',248),('��yD��CΞ�}̂��\'','postmeta',249),('�M��\ZDO�Z�V�H�','postmeta',251),('�00��A�����','postmeta',252),('�V/r�UI��c-`B��','postmeta',253),('���J̮@L���p4Y','postmeta',254),('�9,B�?O��!ݳ���R','postmeta',255),('N��f2�M��������','postmeta',256),('\\z��؎JV��~!7��','postmeta',257),('�]�eh�J��`�t��(','postmeta',258),(':�N/(O��u���CI','postmeta',260),('�CF�8M���R&(��','postmeta',261),('($���G��̊��3!5','postmeta',262),('�ɣ��J���ʨ��v','postmeta',263),('ػ�0>�H퓯��+��','postmeta',264),('�6Ѯ�D]�`/Œ���','postmeta',265),('ˡ�L�#B�)�c��','postmeta',266),(']��4�Ij��b�ۑ�','postmeta',267),('��S�Bߓ|�$y��\Z','postmeta',269),('K��y�Dz��:ɦ�/;','postmeta',270),('��j�G߳�\rS�� ','postmeta',271),('N�qT=�K]�Zt�¸$�','postmeta',272),('k\r�-�I���k��r�','postmeta',273),('�ِe�e@��֞\\�AI','postmeta',274),('E4��z�CǑ6�@��','postmeta',275),('�vh�FBE(�7\r�,˴','postmeta',276),('(1E���KD��*��j�e','postmeta',278),('��|�)�N�2�k�J','postmeta',279),('[����<F�RJ�Hz�','postmeta',280),('�m�,�C\\���Uw=','postmeta',281),('�gs��I���	@���','postmeta',282),('F?�ш�@����Ǒ;�','postmeta',283),('~��cVD;�8(�ĸ6d','postmeta',284),('s%�C�O����ޒ�\Z','postmeta',285),('(mϛ�*GӰ���p�','postmeta',287),('�^�I�C�^~L��','postmeta',288),('ts�r�I�����e=v','postmeta',289),('ڎ;p�F\Z��VY��\n�','postmeta',290),('�.i�|O��\0������','postmeta',291),('�umLVF�;E��1p','postmeta',292),('L�^�G�����x�0F','postmeta',293),('a^+}Z	D��ۅ�=','postmeta',294),('��t��J��x��j�','postmeta',296),('=�+�@��}�#�','postmeta',297),('A-27C��U]�d]','postmeta',298),('����tB��C�zP:','postmeta',299),('8�kP��L��������y','postmeta',300),('�\\b���J]��MYC�s�','postmeta',301),('��.l3�M_����7�,�','postmeta',302),('v\r���E��6݆|�9	','postmeta',303),('e��*YM�]Nv�z','postmeta',305),('��sU}\0@ݷŗ�b�(s','postmeta',306),('���p�A����\'�l','postmeta',307),('�nq|\'Hܗ�幣�','postmeta',308),('d��+@�������.','postmeta',309),('C�t��D{������2','postmeta',310),('O&�oE1�\\���\0��','postmeta',311),('ۂP5<�N\'�!�x����','postmeta',312),('�3!��hI��7���B(','postmeta',314),('��TT�xJ��������-','postmeta',315),('.?���\"G#����G{,D','postmeta',316),('��O�Kt�ҧ+�Q','postmeta',317),('_�K��Lb��ն��&�','postmeta',318),('�n�f5�BS�\0n���gz','postmeta',319),('2(*�|Jb�|��Pb�','postmeta',320),(':�SWAh���*���','postmeta',321),('˻��xMv���Ba','postmeta',323),('�MgE^K(��\0�wr�^','postmeta',324),('@���E��.tҼr�','postmeta',325),(')a�0�,Io���Ӌ���','postmeta',326),('욡5�7DR�Rs��y�','postmeta',327),('���*O�K��yh���','postmeta',328),('�2�B�Ly���j�:�','postmeta',329),('.�=���F^��q��_dl','postmeta',330),('���-0G��}l�q�x','postmeta',332),('#�l}O4����O�cx','postmeta',333),('	��_DÃ�񜔷b}','postmeta',334),('�Γ�B������','postmeta',335),('h9�0MO��\'�c\0','postmeta',336),('��={Hy��AG�Rʻ','postmeta',337),('��P���HN���E�j','postmeta',338),('֤���0Ge�s�f/�Rm','postmeta',341),('���BKJ�4���{','postmeta',342),('�s�[dO����`̩�','postmeta',343),('��I��5\"K\"�m','postmeta',344),('#w��)Jv�*3^tM��','postmeta',345),('�v&ֺ�KV�[=��52P','postmeta',346),('�V��@#��\0��I&','postmeta',347),('�,��E6�Ƹ:���','postmeta',348),('6���4qJC�-n�T��','postmeta',349),('�OL_Ly�i��\\��','postmeta',350),('����r�Lڛ͆��J�','postmeta',351),('���>#�J��Ȏ��r','postmeta',352),('�à�V{Aj�`����y','postmeta',353),('�l����H@�D:�=��','postmeta',361),('���ւ�GҘ�R~�H�','postmeta',365),('O�H\'+mB��yo|�%�','postmeta',366),('�c��2#Eԑ���X','postmeta',367),('c��J������3\'0','postmeta',369),('�A�e4C����2�r','postmeta',370),('��lʎ�@���P��b]','postmeta',372),('6`��j�Hग़��v�Z','postmeta',373),('��\nݓH{����iZ-�','postmeta',374),('M���RC�7�R���y','postmeta',375),('z+J�F�M��x����','postmeta',378),('cC%�P�J¸ԕ��L�','posts',1),('�:?\"B�:}�Yj�','posts',2),('��\rT\'�J?�t��2>','posts',9),(';��n�A�����K2�\\','posts',22),('*��@L��/Y\Z','posts',26),('vt2�-O��p�Њ24:','posts',34),('���{H�����S�','posts',39),('�O��M���I���ё','posts',40),('}E��gwL�E���\n/','posts',44),(';�r{T�B����I\Z3','posts',45),('��3j�D���c�p��J','posts',47),('�j%N�K���z1I�Ju','posts',48),('eϙ�RhEX�i�=d�','posts',50),('�>�a�@c�7�ᠩ�~','posts',53),('��k7{�Gϟ����','posts',54),('��6e�C���#ν&�','posts',55),('9��,L��dIJ.���','posts',56),(')4R�Q�M���)��4�','posts',57),('n�էu�F��ϗY�b�','posts',59),('\\�����O��W�/��v','posts',61),('?��>^@���t�*�Ey','posts',74),('�3��FG�$�%,��','posts',79),('�HB�AQ�|l1.J�','posts',80),('��$H]��������','posts',81),('�q�\\b�G����1)�U','posts',82),('j=\0��F����X�','posts',83),('�B�\r�G��Eʠ4;Z','posts',84),('Wб�M٨�g��','posts',85),('�����J������)�&','posts',86),('mCq�ƞFd�ǁz�A�\Z','posts',87),('K\0\\#�FB�,&\0�S�','posts',88),('��7��MMt���\r�b�','posts',89),('�*�ЀM�| ���O�','posts',90),('��߱=Bӡ����\r','posts',91),('�۠g��GI�c�8����','posts',92),('�\n��\0�M\Z�Ƌ��(�!','posts',93),('�O��J\"���uȟ�','posts',94),('�l [\"�F��q�Ŏ�','posts',95),('���\"�J1�/e�Y,','posts',96),('־%�D2��*�+/��','posts',97),('Ot�$�}Ie��0Mjr','posts',98),('�e~�EGw�0lGi\nt�','posts',99),('�3�GTK�>t�}�!','posts',100),('�ӡ� PB��z�M o�','posts',101),('�*�Hr�F6�PA��pF','posts',102),('7�+��]A����ޟ�O','posts',103),('ᦽk\0,I����~*','posts',104),('ԋ���	K��sx�\r��','posts',106),('�@\'��J��P;ݿ˄','posts',109),('��ja�B\0���D�','posts',110),('��\\άD\0�>�˝�A\\','posts',111),('������O��oz/{���','posts',114),('w�KDw��P ���Z','posts',115),('��@<�N����P�3�','posts',116),('����PI�+6v�/��','posts',117),('V�`B�OK�\n�;�8a�','posts',118),('��A���A*�������','posts',119),('�]g,hK��R��v7','posts',120),('��ҬO]���u+�C�','posts',121),('O�!� NɌ��d0r��','posts',123),('�\\�Q�A8�ZQ�ٽ�','terms',1),('�X\\Y�\nOƯ�R�4���','terms',2),('��P��iD7��NB\"T�','terms',3),('Ww&�A��p�����','terms',4),('�l0�C�G��%I����C','terms',5),('l�*ݮ*E5��!����','terms',6),('�<=bM�@\r�k&\n3\r̀','term_taxonomy',1),('����BO��1i)�JXY','term_taxonomy',2),('v�QV\"K猿�fL8�','term_taxonomy',3),('wM��V@���܃x�','term_taxonomy',4),('�K<Z:A@{���x~���','term_taxonomy',5),('�7��N�e}��ո�','term_taxonomy',6),('>x�#@��\'���-�','usermeta',1),('�Ъ I?��h���','usermeta',2),('��_W\'�@s���Lԗr�','usermeta',3),('ۅ�E,�E��t�#f\'�4','usermeta',4),('���~SZM��[�lg#','usermeta',5),('��85�DHa��`���O]','usermeta',6),('e�I��B:��0�[g/�','usermeta',7),('8�+�aVE���Sr�.�','usermeta',8),('$�~.�OM���6�Q�V�','usermeta',9),('�ѷ>c�M������ �','usermeta',10),('ď^Y�sL���J906','usermeta',11),('����CT�I�աf�','usermeta',12),('�#r?|�O0��C��R�','usermeta',13),('L���J���5n7_��','usermeta',16),('^��DIBI�.���|�','usermeta',17),('y�T0J�N����','usermeta',18),(']أŮ�LZ�5�f,���','usermeta',19),('fK�z�GM�9@)��3','usermeta',20),('�2\r�J�O9���E��','usermeta',21),('S�� \'�H�\\�ۨE�H','usermeta',22),('����J:��\\$�l��','usermeta',23),('�R֝� K߃5�9���','usermeta',24),('o��Z|J7�ー��','usermeta',25),('ԩ��RG����Xy�g�','usermeta',26),('6����M�)�T]��','usermeta',27),('���c�C�$�&�-�x','usermeta',28),('t�\rv%M�3���dU�','usermeta',29),('�v�7��IO�25j5grH','usermeta',30),('�3���SH�t;�L±+','usermeta',31),('(���ԢJ鹫�q�Tl','usermeta',32),('m`b�}(@��l�[@�','usermeta',33),('3�O:PsM柽�SZ�e','usermeta',36),('�c`�7L\Z������t','usermeta',37),('E��G�>Iѭ\\���X�\"','usermeta',38),('����hM�N��s�T','usermeta',39),('ҧ�I0�N����~H5','usermeta',40),('8edR\"E9��t�z�','users',1),('��y�JCBg��a �y�T','users',2);
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

