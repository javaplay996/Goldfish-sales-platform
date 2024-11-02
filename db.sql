/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jinyuxiaoshoupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jinyuxiaoshoupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jinyuxiaoshoupingtai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410529537 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1616410529536,'2021-03-22 18:55:28',1616410306795,'河南省郑州市金水区杜岭街道二七路郑州市北二七路119号院','zhang8','17703786969','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410640326 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (22,'picture2','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616406481003.jpg'),(23,'picture2','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616410464372.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612075811 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (47,1616410306795,1616405834176,'添加',6,'2021-03-22 18:55:52','2021-03-22 18:55:52'),(48,1616410306795,1616405896510,'使用',6,'2021-03-22 18:57:48','2021-03-22 18:57:48'),(49,1616410306795,1616405896510,'添加',16,'2021-03-22 18:57:48','2021-03-22 18:57:48'),(50,1616410306795,1616405960558,'使用',6,'2021-03-22 18:57:48','2021-03-22 18:57:48'),(51,1616410306795,1616405960558,'添加',7,'2021-03-22 18:57:48','2021-03-22 18:57:48');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-22 22:39:58','新闻标题1','http://localhost:8080/jinyuxiaoshoupingtai/upload/news_picture1.jpg','内容1'),(82,'2021-03-22 22:39:58','新闻标题2','http://localhost:8080/jinyuxiaoshoupingtai/upload/news_picture2.jpg','内容2'),(83,'2021-03-22 22:39:58','新闻标题3','http://localhost:8080/jinyuxiaoshoupingtai/upload/news_picture3.jpg','内容3'),(84,'2021-03-22 22:39:58','新闻标题4','http://localhost:8080/jinyuxiaoshoupingtai/upload/news_picture4.jpg','内容4'),(85,'2021-03-22 22:39:58','新闻标题5','http://localhost:8080/jinyuxiaoshoupingtai/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410668892 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616410552254,'2021-03-22 18:55:52','20213221855524148170','shangpinxinxi',1616410306795,1616405834176,'彩虹鲨','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405497253.webp',1,100,66,100,66,1,'已完成','河南省郑州市金水区杜岭街道二七路郑州市北二七路119号院'),(1616410668566,'2021-03-22 18:57:48','202132218574743571416','shangpinxinxi',1616410306795,1616405960558,'蝴蝶锦鲤','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405917532.webp',1,100,77,100,77,1,'已发货','河南省郑州市金水区杜岭街道二七路郑州市北二七路119号院'),(1616410668891,'2021-03-22 18:57:47','202132218574743228663','shangpinxinxi',1616410306795,1616405896510,'红蓝斑马鱼','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405855232.webp',2,100,88,200,176,1,'已支付','河南省郑州市金水区杜岭街道二七路郑州市北二七路119号院');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410319393 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-20 22:39:58','商品分类1'),(22,'2021-03-20 22:39:58','商品分类2'),(23,'2021-03-20 22:39:58','商品分类3'),(24,'2021-03-20 22:39:58','商品分类4'),(25,'2021-03-20 22:39:58','商品分类5'),(26,'2021-03-20 22:39:58','商品分类6'),(1616410319392,'2021-03-22 18:51:58','分类8');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410366211 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1616405834176,'2021-03-22 17:37:13','1616405488','彩虹鲨','商品分类1','99','1','大','彩虹鲨的详情\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405497253.webp','2021-03-22 19:13:58',7,100,66,6,1),(1616405896510,'2021-03-22 17:38:16','1616405847','红蓝斑马鱼','商品分类1','98','伊犁','大','撒打算\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405855232.webp','2021-03-22 18:59:42',4,100,88,8,1),(1616405960558,'2021-03-22 17:39:19','1616405912','蝴蝶锦鲤','商品分类2','99','2','大','萨达硕大的\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405917532.webp','2021-03-22 18:57:47',2,100,77,7,1),(1616406012735,'2021-03-22 17:40:12','1616405967','黄金龙凤鱼','商品分类3','1000','伊犁','大','黄金龙凤鱼详情\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405972715.webp',NULL,0,100,99,9,1),(1616406052549,'2021-03-22 17:40:52','1616406016','日本兰寿鱼','商品分类4','100','伊犁','大','萨达撒多阿达萨达是\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616406021533.webp',NULL,0,150,133,3,1),(1616406364651,'2021-03-22 17:46:04','1616406308','热带金鱼','商品分类3','100','3','大','硕大的\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616406313480.webp',NULL,0,100,66,5,1),(1616406434269,'2021-03-22 17:47:14','1616406367','日本纯种锦鲤','商品分类3','100','伊犁','大','日本纯种锦鲤\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616406395715.webp',NULL,0,66,10,6,1),(1616410366210,'2021-03-22 18:52:45','1616410326','日本和金鱼','分类8','108','伊犁','大','87878/\r\n','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616410332460.webp','2021-03-22 18:53:52',2,100,80,6,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1373951766598356994 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1373951766598356993,'20213221855524148170','质量不好','2021-03-22 18:56:42',1,2,'11','2021-03-22 18:56:58','2021-03-22 18:56:42');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410784382 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616410784381,'2021-03-22 18:59:43',1616410306795,1616405896510,'shangpinxinxi','红蓝斑马鱼','http://localhost:8080/jinyuxiaoshoupingtai/upload/1616405855232.webp');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (15,1,'admin','users','管理员','c6i8trhivm3kgsumg3f4fnzjldk626g3','2021-03-22 17:23:42','2021-03-22 20:10:57'),(16,1614430386281,'a2','yonghu','用户','3p7an54pgyciblgyjofylopxqn73j9t8','2021-03-22 17:24:27','2021-03-22 18:24:28'),(17,1616410306795,'a8','yonghu','用户','ju1i5q4z2v50nkq226r6rbbw2ilg0yw2','2021-03-22 18:52:59','2021-03-22 20:13:31'),(18,1616410837613,'a9','yonghu','用户','affzulm39fg3ngw8ztusbe33rr3cpoue','2021-03-22 19:00:45','2021-03-22 20:08:01'),(19,1615339905628,'a3','yonghu','用户','s3qxzv13im093cs30ip9vfurb3pa5i52','2021-03-22 19:08:13','2021-03-22 20:08:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616410837614 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-03-20 11:43:03','a2','a2','123456','男','13823888883','229992@qq.ccom',0,0),(1614431342348,'2021-03-20 11:43:03','a4','a4','123456','男','a41','22850@qq.com',0,0),(1615339905628,'2021-03-20 11:43:03','a3','a3','123456','男','13823888883','77389000222@qq.com',0,0),(1615605788598,'2021-03-20 11:43:03','a5','张5','123456','女','17703786969','2@qq.ccom',0,0),(1615606983411,'2021-03-20 11:43:03','a6','张6','123456','男','13823888886','2@qq.ccom',0,0),(1615612231851,'2021-03-20 11:43:03','a7','张7','123456','男','17703786977','2@qq.ccom',0,0),(1616410306795,'2021-03-22 18:51:46','a8','张8','123456','男','17703786938','2@qq.ccom',9440,17),(1616410837613,'2021-03-22 19:00:37','a9','张九','123456',NULL,'17703786968','2@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
