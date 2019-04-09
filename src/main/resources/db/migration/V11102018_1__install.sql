/*
SQLyog Ultimate v11.5 (32 bit)
MySQL - 5.7.18-log : Database - shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shop`;

/*Table structure for table `atribute_value` */

DROP TABLE IF EXISTS `atribute_value`;

CREATE TABLE `atribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `atributes_id` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `post_id` (`post_id`),
  KEY `atribute_value_ibfk_2` (`atributes_id`),
  CONSTRAINT `atribute_value_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  CONSTRAINT `atribute_value_ibfk_2` FOREIGN KEY (`atributes_id`) REFERENCES `atributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

/*Data for the table `atribute_value` */

insert  into `atribute_value`(`id`,`value`,`post_id`,`atributes_id`) values (28,'lop',13,42),(29,'shrik',13,43),(30,'tulamus',13,44),(32,'hangasuyc',13,45),(35,'lefak',13,46),(36,'neqame',13,47),(37,'laz',13,48),(38,'nor',14,42),(39,'taza',14,43),(40,'4',14,44),(41,'esim',14,45),(42,'metlax',14,46),(43,'kayf',14,47),(44,'heraka',14,48),(45,'4',15,49),(46,'4',16,50),(47,'targe',16,51),(48,'ayo',16,52),(49,'asdasd',17,42),(50,'krish',17,43),(51,'lusamut',17,44),(52,'esim',17,45),(53,'metlax',17,46),(54,'9',17,47),(55,'g',17,48),(63,'4',19,49),(65,'asdaq',21,42),(66,'aqsdq',21,43),(67,'asdaq',21,44),(68,'scasdas',21,45),(69,'asdasdas',21,46),(70,'asdasdaq',21,47),(71,'asdasd',21,48),(72,'pol',22,42),(73,'krish',22,43),(74,'luys',22,44),(75,'sanhang',22,45),(76,'kayfik',22,46),(77,'meq',22,47),(78,'asdasd',22,48),(79,'asdasdasd',23,42),(80,'asdasdqw',23,43),(81,'asdasdqw',23,44),(82,'asdasdasd',23,45),(83,'asdasdasd',23,46),(84,'asdaqswqw',23,47),(85,'asdasd',23,48),(86,'5',24,49),(87,'8',25,49),(88,'metlax',26,42),(89,'jesht',26,43),(90,'paytic',26,44),(91,'arka',26,45),(92,'er',26,46),(93,'asda',26,47),(94,'asdasd',26,48),(95,'taza',27,53),(96,'poxinq',27,54),(97,'bron',27,55),(101,'ka vaytem',31,53),(102,'89',31,54),(103,'ha ka',31,55),(104,'5',32,49),(107,'10',34,50),(108,'bardzr4',34,51),(109,'margo',34,52),(110,'nor e',35,53),(111,'ka vaytem',35,54),(112,'bdi or',35,55),(113,'10',38,58),(114,'ka 7 hat',38,59),(115,'iiii',38,60),(116,'ha ha',38,61),(117,'karella',44,65),(119,'asd',46,42),(120,'123',46,43),(121,'123',46,44),(122,'qwe',46,45),(123,'asd',46,46),(124,'asdasd',46,47),(125,'asdas',46,48),(126,'vazox',47,65),(127,'asdaq',48,42),(128,'aaaa',48,43),(129,'d',48,44),(130,'d',48,45),(131,'d',48,46),(132,'d',48,47),(133,'ddd',48,48);

/*Table structure for table `atributes` */

DROP TABLE IF EXISTS `atributes`;

CREATE TABLE `atributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `atributes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

/*Data for the table `atributes` */

insert  into `atributes`(`id`,`name`,`category_id`) values (42,'pol',45),(43,'krish',45),(44,'lusamut',45),(45,'sanhanguyc',45),(46,'kafel',45),(47,'meqena',45),(48,'zal',45),(49,'kalos',49),(50,'harker',50),(51,'varker',50),(52,'marker',50),(53,'akkumlyator',52),(54,'zaryadchnik',52),(55,'chxol',52),(56,'ekran',53),(57,'pult',53),(58,'gin',56),(59,'hamar',56),(60,'senyak',56),(61,'taq jur',56),(62,'7texani',57),(63,'blblac',60),(64,'qar',66),(65,'tesak',68),(66,'tariq',69),(67,'taretiv',71);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`parent_id`) values (44,'ansharj guyq',0),(45,'tun',44),(47,'shenq',44),(48,'transport',0),(49,'avto',48),(50,'visotni',44),(51,'Texnika',0),(52,'Heraqxosner',51),(53,'herustacuyc',51),(56,'Hyuranoc',44),(57,'Avtobus',48),(60,'shinutyun',44),(66,'kisaqand',44),(67,'kendaniner',0),(68,'trchunner',67),(69,'shner',67),(70,'sermer ev buyser',0),(71,'gyuxtexnika',48);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `country` */

insert  into `country`(`id`,`region`,`parent_id`) values (11,'Shirak',0),(12,'Gyumri',11),(13,'artik',11),(14,'lori',0),(15,'vanadzor',14),(16,'alaverdi',14),(38,'Tavush',0),(39,'Ijevan',38),(40,'Dilijan',38),(41,'Aragacotn',0),(42,'Ashtarak',41),(43,'Aparan',41),(44,'Talin',41),(45,'Kotayq',0),(46,'Abovyan',45),(47,'Hrazdan',45),(48,'Gexarquniq',0),(49,'Sevan',48),(50,'Gavar',48),(51,'Vayoc Dzor',0),(52,'Exegnadzor',51),(53,'Vayq',51),(54,'Syuniq',0),(55,'Sisian',54),(56,'Kapan',55),(57,'Goris',54),(60,'brnakot',54),(62,'Maralik',11);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_pat` varchar(255) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`pic_pat`,`post_id`) values (74,'1523961612629_1521111748681_8.jpg',13),(75,'1531323994444_004.jpg',14),(76,'1531323994554_5NATA.jpg',14),(77,'1531323994604_6A.JPG',14),(79,'1531323994704_31_1024.jpg',14),(80,'1531323994734_033.jpg',14),(81,'1531324032120_60420_20LT_20POOH_20HUGGING.JPG',15),(82,'1531324032190_20050501ajkwallpapersrukusoche.jpg',15),(83,'1531324032310_50725115[1].jpg',15),(84,'1531324032350_AAAAAAA.JPG',15),(85,'1531324032380_aec3cc79ce51.jpg',15),(86,'1531324032410_ALADIN.JPG',15),(87,'1531324032440_AMOREK.JPG',15),(88,'1531324032470_animals_014.jpg',15),(89,'1531324087207_b4c007a1b025.jpg',16),(90,'1531324087257_BETTY01_1028.JPG',16),(91,'1531324087317_BUGS.JPG',16),(92,'1531324087367_BUGS_BUNNY.JPG',16),(93,'1531324087397_CALUS.JPG',16),(94,'1531324087437_CARTOON_5.JPG',16),(95,'1531324087467_CARTOON800_01.JPG',16),(96,'1531324087497_CARTOON800_05.JPG',16),(97,'1531324087527_CARTOON800_09.JPG',16),(98,'1531324087547_CARTOON800_14.JPG',16),(99,'1531325358188_CARTOON1024_18.JPG',17),(100,'1531325358278_CARTOON1024_19.JPG',17),(101,'1531325358308_CARTOON1024_20.JPG',17),(102,'1531325358358_CARTOON1024_23.JPG',17),(103,'1531325358398_CARTOON1024_25.JPG',17),(104,'1531325358438_CARTOON1024_26.JPG',17),(105,'1531325358468_CARTOON1024_27.JPG',17),(106,'1531325358498_CARTOON1024_28.JPG',17),(117,'1532012988838_03952de00cd72e45aefbbc1c1fa26fdd.jpg',19),(119,'1532012989088_16265233_1095498947228603_1319628471671841265_n.jpg',19),(120,'1532012989148_f4932fba2c4e0be9e4565bc2cd5bdc8f.jpg',19),(121,'1532012989238_getImage.jpg',19),(123,'1532016603804_547453_280780328724447_873811831_n.jpg',19),(124,'1532016603954_pins.jpg',19),(125,'1532016604034_sdfsdf.jpg',19),(126,'1532016604074_ugjfklufy.png',19),(127,'1532016604114_wertwer.jpg',19),(128,'1532016604184_wfawf.jpg',19),(129,'1532016604234_xbnzsdbz.jpg',19),(135,'1532016748516_522510_223931111084163_1002722619_n.jpg',13),(136,'1532016748586_534854_331272836983582_359986845_n.jpg',13),(137,'1532016748686_541448_223931397750801_1912975945_n.jpg',13),(138,'1532016748756_547453_280780328724447_873811831_n.jpg',13),(139,'1532016748786_547613_280779848724495_1747021197_n.jpg',13),(140,'1532016748816_857735_223931847750756_420539551_o.jpg',13),(141,'1532016748836_857789_223931724417435_1499544726_o.jpg',13),(142,'1532016748866_859713_223931624417445_1645168061_o.jpg',13),(143,'1532016748886_886976_223931311084143_702392821_o.jpg',13),(145,'1532016748946_971326_500912609989629_1958707108_n.jpg',13),(146,'1532016748986_995104_500913539989536_190186790_n.jpg',13),(147,'1532016749006_1001008_500914919989398_102986561_n.jpg',13),(149,'1532016749056_1492971_385877798222826_1794694581_n.jpg',13),(155,'1532079304642_20160409_172835.jpg',21),(156,'1532079304767_20160409_172835_2.jpg',21),(157,'1532079304829_20160409_172836.jpg',21),(158,'1532079304907_20160409_172836_2.jpg',21),(159,'1532079304970_20160411_104559.jpg',21),(160,'1532079453860_20160426_202259.jpg',22),(161,'1532079453953_20160426_202317.jpg',22),(162,'1532079454296_20160426_202322.jpg',22),(163,'1532079454343_20160428_150856_LLS.jpg',22),(164,'1532079454374_20160428_150900_LLS.jpg',22),(165,'1532079454437_20160428_150927_LLS.jpg',22),(166,'1532079454484_20160428_150952.jpg',22),(167,'1532079454593_20160428_150954.jpg',22),(168,'1532079454640_20160501_163404.jpg',22),(169,'1532079454686_20160501_163404_2.jpg',22),(170,'1532079454749_20160501_163445.jpg',22),(171,'1532079454796_20160501_163446.jpg',22),(172,'1532079454842_20160501_163448.jpg',22),(173,'1532079454874_20160501_164743.jpg',22),(174,'1532079454952_20160501_164811.jpg',22),(175,'1532080420770_20160414_160736.jpg',23),(176,'1532080420879_20160414_160736_2.jpg',23),(177,'1532080420957_20160414_160738.jpg',23),(178,'1532080421019_20160414_160738_2.jpg',23),(179,'1532080421051_20160417_125411.jpg',23),(180,'1532080421113_20160417_125425.jpg',23),(181,'1532080421144_20160417_125443.jpg',23),(182,'1532080421175_20160417_125451.jpg',23),(183,'1532080421207_20160426_201519.jpg',23),(184,'1532080421300_20160426_201523.jpg',23),(185,'1532080421347_20160426_201526.jpg',23),(186,'1532080421394_20160426_201529.jpg',23),(187,'1532080421425_20160426_201533.jpg',23),(188,'1532080421472_20160426_201730.jpg',23),(189,'1532080421534_20160426_201736.jpg',23),(190,'1532080421581_20160426_201750.jpg',23),(191,'1532080421612_20160426_201756.jpg',23),(192,'1532080421659_20160426_201819.jpg',23),(193,'1532080421690_20160426_201915.jpg',23),(194,'1532080421737_20160426_201921.jpg',23),(195,'1532080421768_20160426_202259.jpg',23),(196,'1532080421815_20160426_202317.jpg',23),(197,'1532080421862_20160426_202322.jpg',23),(198,'1532080421909_20160428_150856_LLS.jpg',23),(199,'1532080421940_20160428_150900_LLS.jpg',23),(200,'1532080422689_20160428_150927_LLS.jpg',23),(201,'1532080422860_20160428_150952.jpg',23),(202,'1532080422938_20160428_150954.jpg',23),(203,'1532080422969_20160501_163404.jpg',23),(204,'1532080423016_20160501_163404_2.jpg',23),(205,'1532080423047_20160501_163445.jpg',23),(206,'1532080423110_20160501_163446.jpg',23),(207,'1532080423141_20160501_163448.jpg',23),(208,'1532080423219_20160501_164743.jpg',23),(209,'1532080423250_20160501_164811.jpg',23),(210,'1532103734581_1452098537465.jpg',24),(212,'1532103734706_1452608638747.jpg',24),(213,'1532103734768_1452608646603.jpg',24),(214,'1532103734815_1452608752196.jpg',24),(215,'1532103734846_1452710433251.jpg',24),(216,'1532103734862_1452710453720.jpg',24),(217,'1532103734893_1452778946335.jpg',24),(218,'1532103734956_1452971068561.jpg',24),(219,'1532103734971_1453229722286.jpg',24),(220,'1532103735018_1453229734006.jpg',24),(221,'1532103735065_1453229901853.jpg',24),(222,'1532103735096_1453304156462.jpg',24),(223,'1532103735158_1453304215178.jpg',24),(224,'1532103735190_1453304247722.jpg',24),(225,'1532103735236_1453304283004.jpg',24),(226,'1532103735330_1453382478955.jpg',24),(227,'1532103735346_1453388901601.jpg',24),(228,'1532103735377_1453388929802.jpg',24),(229,'1532103735408_1453388956982.jpg',24),(230,'1532103735439_1453389019428.jpg',24),(231,'1532103735470_1453567907454.jpg',24),(234,'1532103735595_1453754355563.jpg',24),(235,'1532103735642_1453796580933.jpg',24),(236,'1532103735720_1453796605584.jpg',24),(237,'1532103735736_1453796641506.jpg',24),(238,'1532103735814_1453796859861.jpg',24),(239,'1532103735829_1453796874363.jpg',24),(240,'1532103735860_1453796937006.jpg',24),(241,'1532103735892_1453797581508.jpg',24),(242,'1532103735923_1453812118931.jpg',24),(243,'1532103735954_1453820477490.jpg',24),(245,'1532103736172_1453822585768.jpg',24),(246,'1532103736250_1453822742587.jpg',24),(247,'1532103736313_1453822751449.jpg',24),(248,'1532103736344_1453822849184.jpg',24),(249,'1532103736375_1453822951065.jpg',24),(250,'1532103736406_1453822989555.jpg',24),(251,'1532103736438_1453823001891.jpg',24),(252,'1532103736484_1453823142434.jpg',24),(253,'1532103736500_1453914133143.jpg',24),(254,'1532103736531_1453914142902.jpg',24),(255,'1532103736562_1453914144818.jpg',24),(256,'1532103736594_1453914161963.jpg',24),(257,'1532103736625_1453992320001.jpg',24),(258,'1532103736640_1454156881403.jpg',24),(259,'1532103736672_1454156888386.jpg',24),(262,'1532112063813_1385017_442313152546216_687416521_n.jpg',25),(263,'1532112063845_1529690_1452089695019141_1396094931_o.jpg',25),(264,'1532112063907_1531978_356468764501385_3667392184715682267_n.jpg',25),(265,'1532112063954_1554587_949185165142115_8816232427508547056_n.jpg',25),(266,'1532112063985_1779699_775885552482783_8647095985505822687_n.jpg',25),(267,'1532112064016_1962830_696826877038001_2954068640199739200_n.jpg',25),(268,'1532112064063_10430865_838397562887543_79958239685175605_n.jpg',25),(269,'1532112064094_10492046_551515161626014_892993949931384632_n.jpg',25),(270,'1532112064141_10513403_10202436532778901_6619037524169108321_n.jpg',25),(272,'1532112064250_10525974_10152513601495768_3967738941115306986_n.jpg',25),(273,'1532112064281_10527011_1446901802237962_1842860805_o.jpg',25),(274,'1532353626114_0-02-04-2502d2ed82273b4cbc4653513c1281d39b944553eca735da8c6b752d997db3f4_full.jpg',26),(275,'1532353626551_0-02-04-4979fc01f4f4edd4a9a7767f31c518812563af0ff566c17888b9dc22e2df7fd7_full.jpg',26),(276,'1532353626707_0-02-04-7160d7349f81dc873c27cbc415060b42b4497f2c0a69f4f4bd4273234f6d48c0_full.jpg',26),(277,'1532353626863_0-02-04-fc973824231e9e6d4ab836b205d804d7fd9662b8a313ca57c9e30e11814380b4_full.jpg',26),(278,'1532353627425_0-02-05-1cb1f62ceaeed0f31ebcf73de64c83ea05a00cce7b0c124017d7fd0c277885c1_full.jpg',26),(279,'1532353627628_0-02-05-1daafee41fd43db1b70a73979106c3d69dfcbc790da4dbebaa434f2e5c0ae3da_full.jpg',26),(280,'1532353627830_0-02-05-7b58b2b5b52282a562b95e5fdf479c5807acff202fffd560638f97f51c6ca256_full.jpg',26),(281,'1532353628049_0-02-05-8c0189f1c4cb7012ac9350da941d878233fb8d1d68a08e9e7fe8ddd15982ce5a_full.jpg',26),(282,'1536095578624_301735_239312219512978_1378493674_n.jpg',27),(283,'1536095578733_1425502_592526350873093_8595412903348705809_n.jpg',27),(284,'1536095578749_1555330_476906055762427_402681755_n.jpg',27),(285,'1536095578780_1780812_495402423912790_1626929542_n.jpg',27),(286,'1536095578811_1920234_10202421709037704_265186208_n.jpg',27),(287,'1536095578858_1982223_541442359303009_1708986347_n.jpg',27),(289,'1536326212713_TempNER1A5C58E6.jpg',31),(290,'1536326212806_TempNER1A342F0B.jpg',31),(291,'1536326212884_TempNER1AD413F5.jpg',31),(292,'1536326212915_TempNER1BEC388A.jpg',31),(293,'1536326212978_TempNER1C140A41.jpg',31),(294,'1536326213025_TempNER1C6415FD.jpg',31),(295,'1536326213056_TempNER1D7D007B.jpg',31),(296,'1536326213103_TempNER1DE10E99.jpg',31),(297,'1536326213165_TempNER1E2733CD.jpg',31),(298,'1536326525707_TempNER1A342F0B.jpg',31),(299,'1536326525754_TempNER1AD413F5.jpg',31),(300,'1536326525817_TempNER1AFC42BE.jpg',31),(301,'1536326525863_TempNER1B4C737D.jpg',31),(302,'1536326525941_TempNER1C140A41.jpg',31),(303,'1536326525957_TempNER1C6415FD.jpg',31),(304,'1536326525988_TempNER1CA0634F.jpg',31),(305,'1536326526019_TempNER1CC96F68.jpg',31),(306,'1536326526051_TempNER1DE10E99.jpg',31),(307,'1536326526113_TempNER1E2733CD.jpg',31),(308,'1536326526175_TempNER1E8127D3.jpg',31),(309,'1536326526207_TempNER1F907F0D.jpg',31),(310,'1536326526253_TempNER2A01065A.jpg',31),(311,'1536326526285_TempNER2A29248D.jpg',31),(312,'1536326526316_TempNER2B2E5AE7.jpg',31),(313,'1536326526363_TempNER2B745D3D.jpg',31),(314,'1536326526487_TempNER2C1432DE.jpg',31),(315,'1536326526519_TempNER2D414908.jpg',31),(316,'1536326526550_TempNER2DAF5DE9.jpg',31),(317,'1536326526581_TempNER2DF55F67.jpg',31),(318,'1536326526612_TempNER2E955EA5.jpg',31),(319,'1536326526659_TempNER2EA911D5.jpg',31),(320,'1536326526690_TempNER2EB3199F.jpg',31),(321,'1536326526737_TempNER2F712F15.jpg',31),(322,'1536326526768_TempNER2FE07426.jpg',31),(323,'1536326526799_TempNER3A6F3356.jpg',31),(324,'1536326526862_TempNER3A296117.jpg',31),(325,'1536326526877_TempNER3AD4789D.jpg',31),(326,'1536326526909_TempNER3C462738.jpg',31),(327,'1536326526940_TempNER3D224E68.jpg',31),(328,'1536326526971_TempNER3DC303F9.jpg',31),(329,'1536326527002_TempNER3E4F77E7.jpg',31),(330,'1536326527033_TempNER3F994C29.jpg',31),(331,'1536326527065_TempNER3F496778.jpg',31),(332,'1536333728745_1523611689665_2.png',32),(333,'1536333728823_1523611689831_4.png',32),(334,'1536333728870_1523611689956_5.png',32),(336,'1536333728932_1523611690057_7.png',32),(337,'1536333729057_1523611690090_8.png',32),(338,'1536333729104_1523611690119_9.png',32),(339,'1536333729151_1523611744972_1.png',32),(340,'1536333729182_1523611745014_6.png',32),(341,'1536333729244_1523611745048_ourmember01.png',32),(343,'1536345329732_TempNER2F215718.jpg',34),(344,'1536345329857_TempNER2FE07426.jpg',34),(345,'1536345329888_TempNER3A6F3356.jpg',34),(346,'1536345329935_TempNER3A296117.jpg',34),(347,'1536345329997_TempNER3AD4789D.jpg',34),(348,'1536345330060_TempNER3AFC7FA6.jpg',34),(349,'1536345330122_TempNER3C462738.jpg',34),(350,'1536345330138_TempNER3D224E68.jpg',34),(351,'1536345330169_TempNER3DC303F9.jpg',34),(352,'1536345330200_TempNER3E4F77E7.jpg',34),(353,'1536345330231_TempNER3E6D3371.jpg',34),(354,'1536345330496_TempNER3F994C29.jpg',34),(355,'1536345330574_TempNER3F496778.jpg',34),(356,'1536489355198_1522951501184_8.png',35),(357,'1536489355307_1522951501248_9.png',35),(358,'1536489355369_1522951501284_a1.jpg',35),(359,'1536489355400_1522951501318_l8.jpg',35),(360,'1536489355447_1523212597576_avatar-3.jpg',35),(361,'1536489355494_1523212846940_6.png',35),(362,'1536489355556_1523212847016_7.png',35),(363,'1536489355588_1523212847073_8.png',35),(364,'1536489355619_1523212847116_9.png',35),(365,'1536489355681_1523358506635_8.png',35),(366,'1536489902861_000001.jpg',38),(367,'1536489902908_001.jpg',38),(368,'1536489902955_01.jpg',38),(369,'1536489902986_002.jpg',38),(370,'1536489903033_02.jpg',38),(371,'1536489903064_03.jpg',38),(372,'1536489903095_011.jpg',38),(373,'1536489903157_022.jpg',38),(374,'1536489903220_45 (1).jpg',38),(375,'1536489903251_45 (2).jpg',38),(376,'1536491710011_BLANCHE__037.JPG',43),(377,'1536491720276_BUGS.JPG',43),(378,'1536491725892_BUGS_BUNNY.JPG',43),(379,'1536491725923_CALUS.JPG',43),(380,'1536491725986_CARTOON_5.JPG',43),(381,'1536491726017_CARTOON_7.JPG',43),(382,'1536491726064_CARTOON800_01.JPG',43),(383,'1536491726095_CARTOON800_05.JPG',43),(384,'1536491726142_CARTOON800_09.JPG',43),(385,'1536491726189_CARTOON800_14.JPG',43),(386,'1536492329367_DISNEY_FOND_ECRAN_PETER3.JPG',44),(387,'1536492329413_DISNEY1.JPG',44),(388,'1536492329445_DISNEY2.JPG',44),(389,'1536492329491_DISNEY3.JPG',44),(390,'1536492329538_DISNEY4.JPG',44),(391,'1536492329569_DISNEY6.JPG',44),(392,'1536492329616_DISNEY7.JPG',44),(393,'1536492329632_DONALD1.JPG',44),(394,'1536492329694_DRUZYNA.JPG',44),(395,'1536492329725_Duck River.jpg',44),(400,'1537468729109_LIONKING1.JPG',46),(401,'1537468729202_LITTLEMERMAID.JPG',46),(402,'1537468729234_MINI.JPG',46),(403,'1537468729280_MINI_20_DAIZY.JPG',46),(404,'1537468729405_MINI_GOOFY.JPG',46),(405,'1537468729483_Mult.jpg',46),(406,'1537468729546_MV2007.JPG',46),(407,'1537468729561_MYSLACY_DROPPY.JPG',46),(408,'1537468729592_SHREK.JPG',46),(409,'1537468729624_SHREK_1_600.JPG',46),(410,'1537468729655_TA21.JPG',46),(411,'1537468729686_THE_20LION_20KING.JPG',46),(412,'1537544750292_GEE_RU_2791.JPG',47),(413,'1537544750480_GEE_RU_2798.JPG',47),(414,'1537544750542_GEE_RU_2799.JPG',47),(415,'1537544750589_GEE_RU_2800.JPG',47),(416,'1537544750620_GEE_RU_2804.JPG',47),(417,'1537544750682_GEE_RU_2805.JPG',47),(418,'1537544750729_GEE_RU_2853.JPG',47),(419,'1537544750776_GEE_RU_3598.JPG',47),(420,'1537544750807_GEE_RU_3870.JPG',47),(421,'1537544750870_GEE_RU_3871.JPG',47),(422,'1538152917182_2.jpg',48),(423,'1538152917229_3RDANNI.JPG',48),(424,'1538152917260_004.jpg',48),(425,'1538152917291_5NATA.jpg',48),(426,'1538152917322_8ed5ece4de09.jpg',48),(427,'1538152917354_9ab36a4c8e3c.jpg',48),(428,'1538152917385_12.jpg',48),(429,'1538152917416_31_1024.jpg',48);

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `view` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `post_ibfk_4` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `post_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `post` */

insert  into `post`(`id`,`title`,`description`,`price`,`timestamp`,`user_id`,`category_id`,`country_id`,`view`) values (13,'POXVAC E ARDEN','asdasdasd',19000,'2018-09-04 13:53:17',30,47,11,9),(14,'   tner  ','asdasd',1000,'2018-09-07 17:57:02',30,45,11,5),(15,'   avto   ','asdqwe',2000,'2018-07-11 19:47:12',30,49,13,43),(16,'   gites   ','asdaseqw',1500,'2018-07-11 19:48:06',30,50,12,14),(17,'   armen post   ','desc',1600,'2018-07-11 20:09:17',30,45,14,11),(19,'   Hundai   ','ix35',25000,'2018-07-19 20:10:03',30,49,11,12),(21,'   asdas   ','qweqw',9000,'2018-07-20 13:35:04',30,45,12,6),(22,'   qweqweqwe   ','aaaaaaaaaaaaaaaaa',12600,'2018-07-20 13:37:33',30,45,16,16),(23,'   qweqweasd   ','asdasdasd',25000,'2018-07-20 13:53:39',30,45,13,9),(24,'   golf4   ','descrip',35000,'2018-07-20 20:22:14',30,49,16,12),(25,'   meqena   ','gruzaviG',8500,'2018-09-21 23:58:44',30,49,40,1),(26,'   sepakan tun   ','gtnvum e esim urtex',15000,'2018-07-23 17:47:05',30,45,44,7),(27,'iphpn','5s',40000,'2018-09-05 01:12:58',30,52,12,5),(31,'samsung','S7',120000,'2018-09-07 17:22:05',30,52,11,4),(32,'divyatka','nkaragrum em',98400,'2018-09-07 19:22:08',33,49,12,5),(34,'15 kvartal','nkarchutyun',50000,'2018-09-07 22:35:29',33,50,47,2),(35,'iphone','nkarchutyun',9900,'2018-09-09 14:37:30',30,52,11,6),(38,'arandzin','bardzr',32000,'2018-09-09 14:45:34',30,56,11,9),(43,'tutak','karella',8500,'2018-09-09 15:15:07',30,68,12,3),(44,'tutak','chitik',8500,'2018-09-09 15:25:21',30,68,12,9),(46,'asdasd','asdasd',26500,'2018-09-20 22:38:47',57,45,42,9),(47,'jaylam','kjnasdkkjwqLorem ipsum dolor sit amet, consectetur adipiscing elit.',4000,'2018-09-21 19:45:50',68,68,43,3),(48,'asdasd','asdasd',0,'2018-09-28 20:41:56',30,45,12,1);

/*Table structure for table `post_picture` */

DROP TABLE IF EXISTS `post_picture`;

CREATE TABLE `post_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_pat` varchar(255) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `post_picture_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `post_picture` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_pic_pat` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `tel_1` varchar(255) DEFAULT NULL,
  `tel_2` varchar(255) DEFAULT NULL,
  `type` enum('USER','ADMIN','FB_USER') NOT NULL DEFAULT 'USER',
  `gender` enum('MALE','FEMALE') NOT NULL DEFAULT 'MALE',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(255) DEFAULT NULL,
  `verify` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_pic_id` (`user_pic_pat`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`user_pic_pat`,`country_id`,`tel_1`,`tel_2`,`type`,`gender`,`register_time`,`token`,`verify`) values (29,'admin','admin','admin@mail.com','$2a$10$0e35T38H3ydFoyWmKQ6/c.sDNhmyl7ucYFQlU55mJb/jCsETxhlMi','1535394591792_IMG_0606.JPG',12,NULL,NULL,'ADMIN','MALE','2018-09-07 16:07:51','',1),(30,'vahe','Simonyans','Vahesimonyan650@gmail.com','$2a$10$quPHkGLiDhzPGmIlUfloSOogS/6NklIHDIfSbtpTIsyyoU4n21Uc2','1538153345894_60420_20LT_20POOH_20HUGGING.JPG',49,'11a','2a','USER','MALE','2018-10-04 23:43:05','',1),(31,'armenAAAAasd','armenyan','armen@mail.com','$2a$10$p6Dyxf9AsXdXNUGSPmqMm.obADvfa1.qdwULjPvnSGwxPGafA//xu','1524046243931_1521111748681_8.jpg',11,'aaa','ssss','USER','MALE','2018-04-18 23:41:13',NULL,1),(32,'Gevor','gevorgyan','gvor@mail.com','$2a$10$M1mw.tbe3HpbXE/PXPLv3eEI3Dcw6stsgJS8x9cyOdG56fT3mtEfO','1524085391867_TempNER1C6415FD.jpg',13,'vvv','sss','USER','MALE','2018-04-19 01:03:37','4c3fafe2-fe03-488a-bce7-8f6ce179b6f9',1),(33,'Hayk','Avetisyan','haykavetisyan992@gmail.com','$2a$10$iZYXMFUT4ej01KBVZqEZ7.1R7bf6H5owvnNfvebuBhen0DxKoug/.','1531499309501_004.jpg',12,'+37494020582','','USER','MALE','2018-09-07 23:57:31',NULL,1),(34,'artyom','artyom','artyom@mail.ru','$2a$10$8PLuGJYgf3T83VOFQjNUT.FTRDJYKleV959HX/u7fsWp.UUXkqVDu','1535394591792_IMG_0606.JPG',12,'123123','123345','USER','MALE','2018-08-27 22:30:15','08514d3d-478d-4ef9-b135-9c770a355328',1),(57,'qqqqq','qqqqqq','wqewqe@mail.com','$2a$10$JDK3kg3lH2wuvKpMMnF0X.DmNcSqPATYXiSt8Sq1bbSdCAYTRuEgq','1537468621095_',49,'asdasd','asdasdasd','USER','MALE','2018-09-20 22:37:33','a3953063-ad39-44c7-8da4-238a5da6c24c',1),(68,'Vahe','Simonyan','Simonyan@gmail.com','$2a$10$kqfOHpsjRVzrw2OlCDQ2GOKfsfazoN2IN.WhVxGu4lfxkn9XXoASK','https://graph.facebook.com/v2.5/1542175612595270/picture',12,'123125','343453567','USER','MALE','2018-09-21 19:47:19',NULL,1),(75,'Vahe','Simonyan','Simonyan@gmail.com','$2a$10$FtTjfH3lbjaUBUDKvYBom.zLloXH1cgpsnmrcXznQUKyh1L95ZBa2','https://graph.facebook.com/v2.5/1542175612595270/picture',12,NULL,NULL,'FB_USER','MALE','2018-09-26 00:17:37',NULL,1),(77,'qwe','qwe','qweqweqwe@gmail.com','$2a$10$z8aAp63QciYo7jMpy17jAeWPrKAXuA6mHy3gOxziA5u.8eEJ4y0Le','1538151995171_6A.JPG',12,'qwe','qwe','USER','MALE','2018-09-28 20:26:48','7b43818e-c0bd-4f89-a85a-dd21976249d6',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;