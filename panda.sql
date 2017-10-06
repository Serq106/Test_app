/*
SQLyog Ultimate v11.52 (64 bit)
MySQL - 5.5.53 : Database - panda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `panda`;

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

/*Data for the table `history` */

insert  into `history`(`id_history`,`text`,`type`,`uid`) values (60,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (61,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (62,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (63,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (64,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (65,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (66,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (67,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (68,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (69,'Жизнь','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (70,'Жизнь','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (94,'Играю','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (95,'играю','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (96,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (97,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (111,'играю','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (112,'фото','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (113,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (114,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (115,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (116,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (117,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (118,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (119,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (120,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (121,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (122,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (123,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (124,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (125,'вв','posts',1234);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (126,'аа','',1234);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (127,'buhf','posts',1234);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (128,'игра','posts',1234);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (129,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (130,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (131,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (132,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (133,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (134,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (135,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (136,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (137,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (138,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (139,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (140,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (141,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (142,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (143,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (144,'игра','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (145,'пп','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (152,'s','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (153,'ddd','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (154,'s','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (160,'buhf','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (161,'buhf','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (162,'buhf','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (163,'buhf','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (227,'Да. ','0',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (228,'Да. ','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (229,'в',NULL,NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (230,'Игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (231,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (232,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (233,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (234,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (235,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (236,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (237,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (238,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (239,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (240,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (241,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (242,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (243,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (244,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (245,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (246,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (247,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (248,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (249,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (250,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (251,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (252,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (255,'#улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (256,'#улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (257,'#улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (258,'#улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (259,'улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (260,'#ekb','posts',1234);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (261,'улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (262,'улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (263,'улица','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (264,'Buh','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (265,'Buh','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (266,'Buh','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (267,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (268,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (269,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (270,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (271,'игра','video',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (272,'игра','posts',NULL);
insert  into `history`(`id_history`,`text`,`type`,`uid`) values (273,'игра','video',NULL);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id_posts` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `id_photo` varchar(500) DEFAULT NULL,
  `texts` text,
  `url_photo` varchar(1000) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_posts`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

insert  into `posts`(`id_posts`,`id_post`,`id_user`,`id_photo`,`texts`,`url_photo`,`name`) values (51,'747','-102621158','https://pp.userapi.com/c639219/v639219575/3fe42/nOYa2ONz2ys.jpg','Клининг - уборка.  БлескСервис - Ваш правильный выбор в решении вопросов наведения чистоты и порядка!  ☎8 920 014 14 34 ✉https://vk.com/bleckservis #блесксервис #глажка #уборка #химчистка #клининг','https://pp.userapi.com/c638421/v638421124/8ce8/oAcyfg2n0Eo.jpg','Уборка квартир,химчистка,мойка окон  г.Дзержинск');
insert  into `posts`(`id_posts`,`id_post`,`id_user`,`id_photo`,`texts`,`url_photo`,`name`) values (52,'5573','-31324698','https://pp.userapi.com/c639428/v639428869/418ab/ZsxDDjxr0m4.jpg','Сегодня родилась Бейонсе,','https://pp.userapi.com/c626419/v626419284/425fc/doohUBHeRX8.jpg','Клуб Путешествий \"Крылья\"');
insert  into `posts`(`id_posts`,`id_post`,`id_user`,`id_photo`,`texts`,`url_photo`,`name`) values (53,'15837','340900421','https://pp.userapi.com/c638430/v638430069/568fd/Y51JwGpViUQ.jpg','','https://pp.userapi.com/c836335/v836335421/3c2b7/NTwZYw9E44o.jpg','Елена Михайлова');
insert  into `posts`(`id_posts`,`id_post`,`id_user`,`id_photo`,`texts`,`url_photo`,`name`) values (54,'2478','-135242781','https://pp.userapi.com/c638028/v638028585/6e188/x8yykzk2EW4.jpg','','https://pp.userapi.com/c638228/v638228798/161ba/cLFa4DooY_c.jpg','Туристическое агентство Max-Travel');
insert  into `posts`(`id_posts`,`id_post`,`id_user`,`id_photo`,`texts`,`url_photo`,`name`) values (55,'1228','-141775059','https://pp.userapi.com/c840725/v840725781/3f3f/Cej_JCHxXng.jpg','Приглашаю вас в закупку одежды для всей семьи','https://pp.userapi.com/c639330/v639330837/f04f/1BUzl5aRFdA.jpg','Совместные закупки. Одежда для всей семьи');
insert  into `posts`(`id_posts`,`id_post`,`id_user`,`id_photo`,`texts`,`url_photo`,`name`) values (103,'1680','-122459070','https://sun9-12.userapi.com/c841524/v841524281/1e58e/NDSolicZBRI.jpg','',NULL,NULL);

/*Table structure for table `social_network` */

DROP TABLE IF EXISTS `social_network`;

CREATE TABLE `social_network` (
  `id_social_network` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_social_network`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `social_network` */

insert  into `social_network`(`id_social_network`,`name`) values (1,'vk');
insert  into `social_network`(`id_social_network`,`name`) values (2,'youtube');

/*Table structure for table `user_post` */

DROP TABLE IF EXISTS `user_post`;

CREATE TABLE `user_post` (
  `id_user` int(11) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  KEY `id_post` (`id_post`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_posts`),
  CONSTRAINT `user_post_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_post` */

insert  into `user_post`(`id_user`,`id_post`) values (107940536,51);
insert  into `user_post`(`id_user`,`id_post`) values (107940536,52);
insert  into `user_post`(`id_user`,`id_post`) values (107940536,53);
insert  into `user_post`(`id_user`,`id_post`) values (107940536,54);
insert  into `user_post`(`id_user`,`id_post`) values (107940536,55);

/*Table structure for table `user_video` */

DROP TABLE IF EXISTS `user_video`;

CREATE TABLE `user_video` (
  `id_user` int(11) DEFAULT NULL,
  `id_video` int(11) DEFAULT NULL,
  KEY `id_video` (`id_video`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `user_video_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`),
  CONSTRAINT `user_video_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_video` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `id_social_network` int(11) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_social_network` (`id_social_network`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_social_network`) REFERENCES `social_network` (`id_social_network`)
) ENGINE=InnoDB AUTO_INCREMENT=107940753 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id_user`,`uid`,`first_name`,`last_name`,`photo`,`id_social_network`,`login`,`password`,`email`) values (107940536,107940536,'asd','asd','asd',1,NULL,NULL,NULL);

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `player` varchar(300) DEFAULT NULL,
  `title` varchar(3000) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `video` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
