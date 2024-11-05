/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqingfangkong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqingfangkong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqingfangkong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `daigou` */

DROP TABLE IF EXISTS `daigou`;

CREATE TABLE `daigou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `daigou_name` varchar(200) DEFAULT NULL COMMENT '代购商品 Search111',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '发布业主',
  `daigou_number` int(200) DEFAULT NULL COMMENT '需求数量 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `daigou_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='代购记录';

/*Data for the table `daigou` */

insert  into `daigou`(`id`,`daigou_name`,`yonghu_id`,`daigou_number`,`insert_time`,`daigou_content`,`create_time`) values (1,'代购商品1',2,10,'2021-04-16 20:29:44','详情信息1\r\n','2021-04-16 20:29:44'),(2,'代购商品2',2,20,'2021-04-16 20:29:55','详情信息2\r\n','2021-04-16 20:29:55'),(4,'333',5,333,'2021-04-17 11:30:53','333\r\n','2021-04-17 11:30:53');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-16 20:11:13'),(2,'sex_types','性别',2,'女',NULL,'2021-04-16 20:11:13'),(3,'yezhuchuru_types','出入类型',1,'出',NULL,'2021-04-16 20:11:13'),(4,'yezhuchuru_types','出入类型',2,'入',NULL,'2021-04-16 20:11:13'),(5,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-16 20:11:13'),(6,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-16 20:11:13'),(7,'keshou_types','有无咳嗽',1,'有',NULL,'2021-04-16 20:11:13'),(8,'keshou_types','有无咳嗽',2,'无',NULL,'2021-04-16 20:11:13'),(9,'wuaichu_types','有无外出',1,'有',NULL,'2021-04-16 20:11:13'),(10,'wuaichu_types','有无外出',2,'无',NULL,'2021-04-16 20:11:13'),(11,'binghuan_types','是否接触病患',1,'是',NULL,'2021-04-16 20:11:13'),(12,'binghuan_types','是否接触病患',2,'否',NULL,'2021-04-16 20:11:13'),(13,'gaofengxian_types','是否出入高风险区域',1,'是',NULL,'2021-04-16 20:11:13'),(14,'gaofengxian_types','是否出入高风险区域',2,'否',NULL,'2021-04-16 20:11:13');

/*Table structure for table `jiankangdakai` */

DROP TABLE IF EXISTS `jiankangdakai`;

CREATE TABLE `jiankangdakai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangdakai_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiankangdakai_tiwen` double(10,1) DEFAULT NULL COMMENT '当天体温',
  `keshou_types` int(200) DEFAULT NULL COMMENT '有无咳嗽',
  `wuaichu_types` int(200) DEFAULT NULL COMMENT '有无外出',
  `jiankangdakai_didian` varchar(200) DEFAULT NULL COMMENT '外出地点',
  `binghuan_types` int(200) DEFAULT NULL COMMENT '是否接触病患',
  `gaofengxian_types` int(200) DEFAULT NULL COMMENT '是否出入高风险区域',
  `jiankangdakai_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yanzheng` int(255) DEFAULT '0' COMMENT '验证',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='健康信息打卡';

/*Data for the table `jiankangdakai` */

insert  into `jiankangdakai`(`id`,`jiankangdakai_name`,`sex_types`,`jiankangdakai_tiwen`,`keshou_types`,`wuaichu_types`,`jiankangdakai_didian`,`binghuan_types`,`gaofengxian_types`,`jiankangdakai_photo`,`yanzheng`,`create_time`) values (1,'姓名1',2,36.3,2,2,'',2,2,NULL,0,'2021-04-17 09:38:23'),(2,'姓名2',1,38.1,1,2,'无外出',1,1,NULL,1,'2021-04-17 10:04:09');

/*Table structure for table `jubao` */

DROP TABLE IF EXISTS `jubao`;

CREATE TABLE `jubao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jubao_name` varchar(200) DEFAULT NULL COMMENT '标题',
  `jubaoren` varchar(200) DEFAULT NULL COMMENT '举报人',
  `beijubaoren` varchar(200) DEFAULT NULL COMMENT '被举报人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '举报时间',
  `yiqingcelve_content` text COMMENT '举报原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='举报记录';

/*Data for the table `jubao` */

insert  into `jubao`(`id`,`jubao_name`,`jubaoren`,`beijubaoren`,`insert_time`,`yiqingcelve_content`,`create_time`) values (1,'标题1','举报人1','被举报人1','2021-04-16 21:36:38','举报原因1\r\n','2021-04-16 21:36:38'),(2,'标题2','举报人2','被举报人2','2021-04-16 21:36:49','举报原因2\r\n','2021-04-16 21:36:49');

/*Table structure for table `laifangren` */

DROP TABLE IF EXISTS `laifangren`;

CREATE TABLE `laifangren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laifangren_name` varchar(200) DEFAULT NULL COMMENT '来访人员名称',
  `laifangren_mudi` varchar(200) DEFAULT NULL COMMENT '来访目的',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `yiqingcelve_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='来访人员记录';

/*Data for the table `laifangren` */

insert  into `laifangren`(`id`,`laifangren_name`,`laifangren_mudi`,`insert_time`,`yiqingcelve_content`,`create_time`) values (1,'来访人员1','来访目的1','2021-04-16 21:28:33','详情信息1\r\n','2021-04-16 21:28:33'),(2,'来访人员2','来访目的2','2021-04-16 21:28:41','详情信息2\r\n','2021-04-16 21:28:41');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',1,'http://localhost:8080/yiqingfangkong/file/download?fileName=1618625442346.jpg','2021-04-17 10:10:51','公告详情1\r\n','2021-04-17 10:10:51'),(2,'公告2',2,'http://localhost:8080/yiqingfangkong/file/download?fileName=1618625467763.jpg','2021-04-17 10:11:16','公告详情2\r\n','2021-04-17 10:11:16');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ufl0sl060ccefvtky7dl613fvs41i7l8','2021-04-16 20:07:00','2021-04-17 12:31:07'),(2,3,'333','yonghu','业主','zrm4cutbp3oqmc4pfmdi2ngwrumzgqs2','2021-04-17 11:13:52','2021-04-17 12:16:42'),(3,5,'333','yonghu','业主','47hqe8brer8ojn5tshgy9ne7uy2gptgi','2021-04-17 11:27:58','2021-04-17 12:27:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiaodu` */

DROP TABLE IF EXISTS `xiaodu`;

CREATE TABLE `xiaodu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaodu_name` varchar(200) DEFAULT NULL COMMENT '消毒区域 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '消毒时间',
  `xiaodu_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='消毒记录';

/*Data for the table `xiaodu` */

insert  into `xiaodu`(`id`,`xiaodu_name`,`insert_time`,`xiaodu_content`,`create_time`) values (22,'消毒区域1','2021-04-16 21:28:01','详情信息1\r\n','2021-04-16 21:28:01'),(23,'消毒区域2','2021-04-16 21:28:07','详情信息2\r\n','2021-04-16 21:28:07');

/*Table structure for table `yezhuchuru` */

DROP TABLE IF EXISTS `yezhuchuru`;

CREATE TABLE `yezhuchuru` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '出入业主',
  `yezhuchuru_mudi` varchar(200) DEFAULT NULL COMMENT '出入目的',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '出入时间',
  `yezhuchuru_types` int(200) DEFAULT NULL COMMENT '出入类型',
  `yiqingcelve_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='业主出入记录';

/*Data for the table `yezhuchuru` */

insert  into `yezhuchuru`(`id`,`yonghu_id`,`yezhuchuru_mudi`,`insert_time`,`yezhuchuru_types`,`yiqingcelve_content`,`create_time`) values (1,1,'出入目的1','2021-04-16 21:29:00',1,'详情信息1\r\n','2021-04-16 21:29:00'),(2,2,'出入目的2','2021-04-16 21:29:11',2,'详情信息2\r\n','2021-04-16 21:29:11');

/*Table structure for table `yiqingcelve` */

DROP TABLE IF EXISTS `yiqingcelve`;

CREATE TABLE `yiqingcelve` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yiqingcelve_name` varchar(200) DEFAULT NULL COMMENT '策略标题',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `yiqingcelve_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='疫情策略';

/*Data for the table `yiqingcelve` */

insert  into `yiqingcelve`(`id`,`yiqingcelve_name`,`insert_time`,`yiqingcelve_content`,`create_time`) values (1,'策略标题1','2021-04-16 20:27:26','详情信息1\r\n','2021-04-16 20:27:26'),(2,'策略标题2','2021-04-16 20:27:32','详情信息2\r\n','2021-04-16 20:27:32');

/*Table structure for table `yiqingfenbu` */

DROP TABLE IF EXISTS `yiqingfenbu`;

CREATE TABLE `yiqingfenbu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yiqingfenbu_chengshi` varchar(200) DEFAULT NULL COMMENT '城市(区)',
  `yiqingfenbu_shengshi` varchar(200) DEFAULT NULL COMMENT '省市(区)',
  `yiqingfenbu_xinzheng` int(200) DEFAULT '0' COMMENT '新增确诊',
  `yiqingfenbu_wuzhengzhuang` int(200) DEFAULT '0' COMMENT '新增无症状',
  `yiqingfenbu_fengxina` int(200) DEFAULT '0' COMMENT '风险区域',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='疫情分布';

/*Data for the table `yiqingfenbu` */

insert  into `yiqingfenbu`(`id`,`yiqingfenbu_chengshi`,`yiqingfenbu_shengshi`,`yiqingfenbu_xinzheng`,`yiqingfenbu_wuzhengzhuang`,`yiqingfenbu_fengxina`,`create_time`) values (1,'城市1','省市1',1,1,1,'2021-04-16 20:28:10'),(2,'城市2','省市2',2,2,2,'2021-04-16 20:28:21');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '业主姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='业主';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_zhuzhi`,`yonghu_photo`,`create_time`) values (1,'111','123456','业主1',1,'410882199405161544','17796681234','住址1','http://localhost:8080/yiqingfangkong/file/download?fileName=1618575907526.jpg','2021-04-16 20:25:08'),(2,'222','123456','业主2',2,'410882199405161543','17796681233','住址2','http://localhost:8080/yiqingfangkong/file/download?fileName=1618575935272.jpg','2021-04-16 20:25:36'),(5,'333','123456','业主3',2,'410882199912114555','17796681266','住址3','http://localhost:8080/yiqingfangkong/file/download?fileName=1618630133046.jpg','2021-04-17 11:27:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
