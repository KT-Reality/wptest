
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
INSERT INTO `kt_vp_id` VALUES ('�����D�h+ ��-','commentmeta',1),('@fVNJl��p�Ќ','comments',1),('H��(��M2���\'����','comments',2),('�V���O�c�\0��2�','comments',3),('.͗�SHƯc�ѝ���','comments',4),('���t��A����c�ά�','comments',5),('j�e��E2�^��@]^+','comments',6),('��\r\\��@x��jw�@v','comments',8),('b٠<�1H�\n(�Lߺ�','comments',9),('U}���L^�3��U�V','comments',10),('^�Ϫ�wFS�	`G�P','comments',11),('l|q�F>�$����T','comments',12),('��ru�L��4V\0\\N�','postmeta',1),('�f�w��K����)5I&�','postmeta',14),('I��y\0L���qgV���','postmeta',15),('��EG��rnpT�','postmeta',19),('����iLɿ̇�[I�\\','postmeta',20),('6�g<�Cp���Үeh','postmeta',21),('�S�[.<L���[ۙ','postmeta',22),('\r����A�l����Qp','postmeta',23),('�N[�gsJ��_t�G{��','postmeta',27),('�3����B.����.','postmeta',29),('��f@[�B�3y3�','postmeta',34),('6���K]�^���8�','postmeta',35),('�{��|D���P�j','postmeta',37),('\\U2�A���=\Za�`','postmeta',38),('���ʦK��	��^{G','postmeta',42),('J��]�6B�h\Z��','postmeta',43),(';?�Y�H(�)�1i�f�','postmeta',44),('�mUy�rJL���~��t�','postmeta',46),('�ÜCN������D','postmeta',47),('�V��İL6� ��G_�[','postmeta',51),('�M-�L⯻ت.�','postmeta',52),('�r�@����,��-�','postmeta',57),('=|���I��/��;�','postmeta',58),('��s2J��?��7','postmeta',59),('nD�q��A&�����%�?','postmeta',63),('Tx�v%CȀDzZ8�\Z','postmeta',64),('o����N7�GtN�*','postmeta',65),('\'U���J��:�S��','postmeta',66),('h���N���*ǅ6:J','postmeta',69),('5��u~G��������','postmeta',71),('Y�T�BH��\Z���F^�','postmeta',72),('>�����GТ�J.M���','postmeta',75),('?��~1K��/�h\n�','postmeta',77),('cC%�P�J¸ԕ��L�','posts',1),('�:?\"B�:}�Yj�','posts',2),('��\rT\'�J?�t��2>','posts',9),(';��n�A����K2�\\','posts',22),('*��@L��/Y\Z','posts',26),('vt2�-O��p�Њ24:','posts',34),('���{H�����S�','posts',39),('�O��M���I���ё','posts',40),('}E��gwL�E���\n/','posts',44),(';�r{T�B����I\Z3','posts',45),('��3j�D���c�p��J','posts',47),('�j%N�K���z1I�Ju','posts',48),('eϙ�RhEX�i�=d�','posts',50),('�>�a�@c�7�ᠩ�~','posts',53),('��k7{�Gϟ����','posts',54),('��6e�C���#ν&�','posts',55),('9��,L��dIJ.���','posts',56),(')4R�Q�M���)��4�','posts',57),('n�էu�F��ϗY�b�','posts',59),('\\�����O��W�/��v','posts',61),('�\\�Q�A8�ZQ�ٽ�','terms',1),('�X\\Y�\nOƯ�R�4���','terms',2),('��P��iD7��NB\"T�','terms',3),('�<=bM�@\r�k&\n3\r̀','term_taxonomy',1),('����BO��1i)�JXY','term_taxonomy',2),('v�QV\"K猿�fL8�','term_taxonomy',3),('>x�#@��\'���-�','usermeta',1),('�Ъ I?��h���','usermeta',2),('��_W\'�@s���Lԗr�','usermeta',3),('ۅ�E,�E��t�#f\'�4','usermeta',4),('���~SZM��[�lg#','usermeta',5),('��85�DHa��`���O]','usermeta',6),('e�I��B:��0�[g/�','usermeta',7),('8�+�aVE���Sr�.�','usermeta',8),('$�~.�OM���6�Q�V�','usermeta',9),('�ѷ>c�M������ �','usermeta',10),('ď^Y�sL���J906','usermeta',11),('����CT�I�աf�','usermeta',12),('�#r?|�O0��C��R�','usermeta',13),('L���J���5n7_��','usermeta',16),('^��DIBI�.���|�','usermeta',17),('y�T0J�N����','usermeta',18),(']أŮ�LZ�5�f,���','usermeta',19),('fK�z�GM�9@)��3','usermeta',20),('�2\r�J�O9���E��','usermeta',21),('S�� \'�H�\\�ۨE�H','usermeta',22),('����J:��\\$�l��','usermeta',23),('�R֝� K߃5�9���','usermeta',24),('o��Z|J7�ー��','usermeta',25),('ԩ��RG����Xy�g�','usermeta',26),('6����M�)�T]��','usermeta',27),('���c�C�$�&�-�x','usermeta',28),('t�\rv%M�3���dU�','usermeta',29),('�v�7��IO�25j5grH','usermeta',30),('�3���SH�t;�L±+','usermeta',31),('(���ԢJ鹫�q�Tl','usermeta',32),('m`b�}(@��l�[@�','usermeta',33),('3�O:PsM柽�SZ�e','usermeta',36),('�c`�7L\Z������t','usermeta',37),('E��G�>Iѭ\\���X�\"','usermeta',38),('����hM�N��s�T','usermeta',39),('ҧ�I0�N����~H5','usermeta',40),('8edR\"E9��t�z�','users',1),('��y�JCBg��a �y�T','users',2);
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

