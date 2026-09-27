DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`user_name` varchar(64) NOT NULL UNIQUE comment '用户姓名',
`user_gender` varchar(64) comment '用户性别',
`user_age` varchar(64) comment '用户年龄',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `ticket_center`;
CREATE TABLE `ticket_center`(
	   `ticket_center_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车票中心ID',
`train_number` varchar(64) comment '火车编号',
`departure_station` varchar(64) comment '出发站',
`station_along_the_way` varchar(64) comment '沿途站',
`terminus` varchar(64) comment '终点站',
`departure_time` datetime comment '发车时间',
`seat_type` varchar(64) comment '座位类型',
`seat_price` int(11) DEFAULT 0 comment '座位价格',
`remaining_seats` varchar(64) comment '剩余座位',
`cover_picture` varchar(255) comment '封面图',
`ticket_purchase_instructions` text comment '购票须知',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ticket_center_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '车票中心';
insert into `ticket_center` values (1,'火车编号1','出发站1','沿途站1','终点站1','2022-3-21 13:45:36','座位类型1',5,'剩余座位1','点此播放','购票须知1','104','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (2,'火车编号2','出发站2','沿途站2','终点站2','2022-3-21 13:45:36','座位类型2',10,'剩余座位2','点此播放','购票须知2','357','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (3,'火车编号3','出发站3','沿途站3','终点站3','2022-3-21 13:45:36','座位类型3',15,'剩余座位3','点此播放','购票须知3','777','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (4,'火车编号4','出发站4','沿途站4','终点站4','2022-3-21 13:45:36','座位类型4',20,'剩余座位4','点此播放','购票须知4','333','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (5,'火车编号5','出发站5','沿途站5','终点站5','2022-3-21 13:45:36','座位类型5',25,'剩余座位5','点此播放','购票须知5','156','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (6,'火车编号6','出发站6','沿途站6','终点站6','2022-3-21 13:45:36','座位类型6',30,'剩余座位6','点此播放','购票须知6','828','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (7,'火车编号7','出发站7','沿途站7','终点站7','2022-3-21 13:45:36','座位类型7',35,'剩余座位7','点此播放','购票须知7','14','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_center` values (8,'火车编号8','出发站8','沿途站8','终点站8','2022-3-21 13:45:36','座位类型8',40,'剩余座位8','点此播放','购票须知8','995','0','2022-03-21 13:45:36','2022-03-21 13:45:36');

DROP TABLE IF EXISTS `ticket_purchase_order`;
CREATE TABLE `ticket_purchase_order`(
	   `ticket_purchase_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购票订单ID',
`train_number` varchar(64) comment '火车编号',
`departure_station` varchar(64) comment '出发站',
`station_along_the_way` varchar(64) comment '沿途站',
`terminus` varchar(64) comment '终点站',
`departure_time` varchar(64) comment '发车时间',
`seat_type` varchar(64) comment '座位类型',
`seat_price` varchar(64) comment '座位价格',
`ticket_no` varchar(64) comment '车票编号',
`purchase_user` int(11) DEFAULT 0 comment '购买用户',
`ticket_purchase_time` time comment '购票时间',
`number_of_votes_purchased` int(11) DEFAULT 0 comment '购买票数',
`payment_amount` varchar(64) comment '支付金额',
`ticket_purchase_instructions` text comment '购票须知',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ticket_purchase_order_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '购票订单';
insert into `ticket_purchase_order` values (1,'火车编号1','出发站1','沿途站1','终点站1','发车时间1','座位类型1','座位价格1','车票编号1',0,'13:45:36',5,'支付金额1','购票须知1','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (2,'火车编号2','出发站2','沿途站2','终点站2','发车时间2','座位类型2','座位价格2','车票编号2',0,'13:45:36',10,'支付金额2','购票须知2','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (3,'火车编号3','出发站3','沿途站3','终点站3','发车时间3','座位类型3','座位价格3','车票编号3',0,'13:45:36',15,'支付金额3','购票须知3','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (4,'火车编号4','出发站4','沿途站4','终点站4','发车时间4','座位类型4','座位价格4','车票编号4',0,'13:45:36',20,'支付金额4','购票须知4','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (5,'火车编号5','出发站5','沿途站5','终点站5','发车时间5','座位类型5','座位价格5','车票编号5',0,'13:45:36',25,'支付金额5','购票须知5','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (6,'火车编号6','出发站6','沿途站6','终点站6','发车时间6','座位类型6','座位价格6','车票编号6',0,'13:45:36',30,'支付金额6','购票须知6','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (7,'火车编号7','出发站7','沿途站7','终点站7','发车时间7','座位类型7','座位价格7','车票编号7',0,'13:45:36',35,'支付金额7','购票须知7','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_purchase_order` values (8,'火车编号8','出发站8','沿途站8','终点站8','发车时间8','座位类型8','座位价格8','车票编号8',0,'13:45:36',40,'支付金额8','购票须知8','未支付','支付宝','0','2022-03-21 13:45:36','2022-03-21 13:45:36');

DROP TABLE IF EXISTS `ticket_refund_record`;
CREATE TABLE `ticket_refund_record`(
	   `ticket_refund_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '退票记录ID',
`train_number` varchar(64) comment '火车编号',
`departure_station` varchar(64) comment '出发站',
`station_along_the_way` varchar(64) comment '沿途站',
`terminus` varchar(64) comment '终点站',
`departure_time` varchar(64) comment '发车时间',
`seat_type` varchar(64) comment '座位类型',
`seat_price` varchar(64) comment '座位价格',
`ticket_no` varchar(64) comment '车票编号',
`purchase_user` int(11) DEFAULT 0 comment '购买用户',
`number_of_votes_purchased` varchar(64) comment '购买票数',
`payment_amount` varchar(64) comment '支付金额',
`ticket_purchase_instructions` text comment '购票须知',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ticket_refund_record_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '退票记录';
insert into `ticket_refund_record` values (1,'火车编号1','出发站1','沿途站1','终点站1','发车时间1','座位类型1','座位价格1','车票编号1',0,'购买票数1','支付金额1','购票须知1','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (2,'火车编号2','出发站2','沿途站2','终点站2','发车时间2','座位类型2','座位价格2','车票编号2',0,'购买票数2','支付金额2','购票须知2','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (3,'火车编号3','出发站3','沿途站3','终点站3','发车时间3','座位类型3','座位价格3','车票编号3',0,'购买票数3','支付金额3','购票须知3','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (4,'火车编号4','出发站4','沿途站4','终点站4','发车时间4','座位类型4','座位价格4','车票编号4',0,'购买票数4','支付金额4','购票须知4','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (5,'火车编号5','出发站5','沿途站5','终点站5','发车时间5','座位类型5','座位价格5','车票编号5',0,'购买票数5','支付金额5','购票须知5','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (6,'火车编号6','出发站6','沿途站6','终点站6','发车时间6','座位类型6','座位价格6','车票编号6',0,'购买票数6','支付金额6','购票须知6','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (7,'火车编号7','出发站7','沿途站7','终点站7','发车时间7','座位类型7','座位价格7','车票编号7',0,'购买票数7','支付金额7','购票须知7','0','2022-03-21 13:45:36','2022-03-21 13:45:36');
insert into `ticket_refund_record` values (8,'火车编号8','出发站8','沿途站8','终点站8','发车时间8','座位类型8','座位价格8','车票编号8',0,'购买票数8','支付金额8','购票须知8','0','2022-03-21 13:45:36','2022-03-21 13:45:36');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','3',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1647833415936.jpg','898',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1647833415939.jpg','598',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1647833415939.jpg','724',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1647833415949.jpg','186',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `slides` values ('5','轮播图5','内容5','/article/details?article=5','/api/upload/image_1647833415936.jpg','249',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
insert into `article` values ('1','火车为什么没有18号车厢，却有17和19号呢？原因很简单！','火车','670','0',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ",null,null,null,'<p>自欧洲工业革命之后，科技的快速发展对人们的生活影响非常的巨大，从各个方面都有了非常大的改变，尤其是在交通方面。</p><p>由于蒸汽机的广泛应用，欧洲的科学家首先将其应用到交通领域。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/451/w652h599/20220321/7ca8-e17ecae5aea72ad6c6cfd19543b814ce.jpg"></p><p>1814年，英国人乔治·斯蒂芬森发明了蒸汽机动力的机车。</p><p><strong>因为需要使用蒸汽动力，烟囱会不断向外冒出热气，人们形象地将它称为“火车”，而正是这种火车，成为未来200年间应用最广泛的运输形式。</strong></p><p>火车传入中国的时间比欧洲晚了半个世纪。</p><p>虽然传入的时间很短，但中国的火车发展却进步飞速。</p><p>经过百年时间的发展，中国目前的铁路线路总长度已经居世界首位，是世界上铁路运输最发达的国家之一。</p><p><strong>然而，尽管现在的国人经常乘坐火车出行，但总会被一个问题困扰，中国的火车很少能看到第18号车厢，这是为什么呢？</strong></p><p><strong>原因很简单，而这要从中国的铁路发展史说起。</strong></p><p>01一代国民神车，绿皮火车</p><p>中国的铁路发展史是一部充满血泪和屈辱的历史。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/618/w862h556/20220321/9161-d9e3b77de79d249a16026fb631a1c709.jpg"></p><p>1840年以后，由于清朝统治者的软弱，致使大量的西方国家来到中国瓜分财富。除了从商业上掠夺财富之外，丰富的矿产资源也是西方国家掠夺的对象。</p><p><strong>为了能快速开采和运输矿产，西方国家在中国开始修建铁路</strong>。</p><p><strong>中国早期的铁路基本都是西方国家用以掠夺资源利用的，带有很强的半殖民地性质。</strong></p><p><strong>直到1876年，中国才出现了第一条正式运营性质的铁路——吴淞铁路。</strong></p><p>可是，吴淞铁路仅仅运行的不足一年便被拆除，在当时的国人眼中，这种机器运输是非常不可靠的，所以国家的铁路发展也非常得缓慢。</p><p><strong>到新中国成立之后，中国的铁路才开始有了较好地发展环境</strong>。</p><p>当时的国家因为国力较弱，只能以原有的旧铁路线路为依托，进行修整铁路线路。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/554/w845h509/20220321/8d07-14d48dad507c724670a488f950fb1ae4.jpg"></p><p>在那个物资匮乏的年代，辛劳的中国人凭借坚韧的品格和辛勤的汗水硬是将铁路线路铺向全国，而火车也几乎成为人们出远门的唯一交通工具。</p><p>但是，中国的人口数量太大，现有的铁路运输根本无力承担。</p><p>直到<strong>上个世纪80年代，铁路运输压力才有所改变</strong>。</p><p>当时，全国的铁路线路已经铺设超过5万公里，而火车的样式也发生了巨大的改变。</p><p>火车的车厢数量增加，车体的涂装也保留着那个年代的战时审美，清一色的绿色涂装。</p><p><strong>在未来的几十年中，这种绿皮火车一度成为人们出行的主要依靠，被现代人亲切地称为一代神车。</strong></p><p>02难以找到18号车厢的中国火车</p><p>中国的绿皮火车是时代发展的产物，也是中国铁路中上个世纪50年代到80年代的象征。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/659/w883h576/20220321/ce1f-4c5e822bea01a120d6d424ab74372bfc.jpg"></p><p>当时中国的铁路管理还不完善，不仅火车的车速很慢，车上也非常的拥挤、嘈杂。</p><p>即便这样，能乘坐火车出行，在当时也是一件值得吹嘘的事情。</p><p><strong>因为物质匮乏，运输压力巨大，加上计划经济带来的弊病，那个时代的人想要乘坐火车是需要组织上出具介绍信的，否则连车票都买不到</strong>。</p><p>随着90年代的到来，一代神车的历史地位首次动摇。</p><p>当时的绿皮火车大都年久失修，普遍存在车厢脏、乱、差的现象，加上速度又慢，已经引起了很多旅客的不满。</p><p>由于问题的普遍存在，中国铁路多次发起提速和改进铁路服务的要求，而火车也在一次次地整改中变得更加舒适。</p><p>既然旅途变得舒适了，人们的关注点自然就有所转移，很多人就又提出了疑问，有些人在乘车时见过17号车厢，也有人见过19号车厢，但都没见过18号车厢，难道这其中有些什么忌讳？</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/349/w714h435/20220321/408a-47496a445a3a0bb4838812dbfb09048b.jpg"></p><p>事实上，火车很少能见到18号车厢并不是什么忌讳，和民间的封建传说没有任何关联，它只是铁路管理上的一种非常正常的现象。</p><p><strong>在铁路管理上，火车的长度并不是随意决定的，而是要根据站台的长度来规范。</strong>在中国，站台的标准长度约550米，一节车厢的长度约24米，理论上，一列火车的车厢能达到22节的长度。</p><p>实际情况是，火车的长度计算要将火车头计算进来，而且除了火车头，火车的行进还需要配电车厢和其他不能用于乘客的车厢。</p><p><strong>这样计算下来，留给乘客的车厢基本都不会超过18节，所以大家平常见到最多地也只是17号车厢。</strong></p><p>凡事都有例外。</p><p>常规状态下，18号车厢确实很难见到，但在一些特殊时期还是很容易见到的。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/611/w885h526/20220321/4ae9-aeb9ae0b3a2745f8615246242e28e299.jpg"></p><p>例如说中国的国庆节小长假期间和春运期间都是很容易见到的，甚至还能见到20号开外的车厢，而这样的方法叫做“临时欠编”，也是对资源的一种合理利用。</p><p>03飞速发展的中国火车</p><p>中国的火车经过了几十年的发展，曾经的一代神车已经逐渐退出了历史舞台。</p><p><strong>如今，国家已经研发出了更加快捷、高效的火车来代替绿皮车，曾经独占鳌头的绿皮车体系被现在的高铁体系二分天下。</strong></p><p>高铁体系的建设是中国铁路发展史上具有划时代意义的杰作，它改变了人们对火车的传统观念，也改变了火车的运营形式。</p><p><strong>未来，中国的火车一定会在高铁体系上继续稳步发展，将中国的铁路发展带入更高层次的新时代。</strong></p>','/api/upload/image_1647832246654.jpg',null);
insert into `article` values ('2','火车为什么没有18号车厢，却有17和19号呢？原因很简单！','火车','993','0',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ",null,null,null,'<p>自欧洲工业革命之后，科技的快速发展对人们的生活影响非常的巨大，从各个方面都有了非常大的改变，尤其是在交通方面。</p><p>由于蒸汽机的广泛应用，欧洲的科学家首先将其应用到交通领域。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/451/w652h599/20220321/7ca8-e17ecae5aea72ad6c6cfd19543b814ce.jpg"></p><p>1814年，英国人乔治·斯蒂芬森发明了蒸汽机动力的机车。</p><p><strong>因为需要使用蒸汽动力，烟囱会不断向外冒出热气，人们形象地将它称为“火车”，而正是这种火车，成为未来200年间应用最广泛的运输形式。</strong></p><p>火车传入中国的时间比欧洲晚了半个世纪。</p><p>虽然传入的时间很短，但中国的火车发展却进步飞速。</p><p>经过百年时间的发展，中国目前的铁路线路总长度已经居世界首位，是世界上铁路运输最发达的国家之一。</p><p><strong>然而，尽管现在的国人经常乘坐火车出行，但总会被一个问题困扰，中国的火车很少能看到第18号车厢，这是为什么呢？</strong></p><p><strong>原因很简单，而这要从中国的铁路发展史说起。</strong></p><p>01一代国民神车，绿皮火车</p><p>中国的铁路发展史是一部充满血泪和屈辱的历史。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/618/w862h556/20220321/9161-d9e3b77de79d249a16026fb631a1c709.jpg"></p><p>1840年以后，由于清朝统治者的软弱，致使大量的西方国家来到中国瓜分财富。除了从商业上掠夺财富之外，丰富的矿产资源也是西方国家掠夺的对象。</p><p><strong>为了能快速开采和运输矿产，西方国家在中国开始修建铁路</strong>。</p><p><strong>中国早期的铁路基本都是西方国家用以掠夺资源利用的，带有很强的半殖民地性质。</strong></p><p><strong>直到1876年，中国才出现了第一条正式运营性质的铁路——吴淞铁路。</strong></p><p>可是，吴淞铁路仅仅运行的不足一年便被拆除，在当时的国人眼中，这种机器运输是非常不可靠的，所以国家的铁路发展也非常得缓慢。</p><p><strong>到新中国成立之后，中国的铁路才开始有了较好地发展环境</strong>。</p><p>当时的国家因为国力较弱，只能以原有的旧铁路线路为依托，进行修整铁路线路。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/554/w845h509/20220321/8d07-14d48dad507c724670a488f950fb1ae4.jpg"></p><p>在那个物资匮乏的年代，辛劳的中国人凭借坚韧的品格和辛勤的汗水硬是将铁路线路铺向全国，而火车也几乎成为人们出远门的唯一交通工具。</p><p>但是，中国的人口数量太大，现有的铁路运输根本无力承担。</p><p>直到<strong>上个世纪80年代，铁路运输压力才有所改变</strong>。</p><p>当时，全国的铁路线路已经铺设超过5万公里，而火车的样式也发生了巨大的改变。</p><p>火车的车厢数量增加，车体的涂装也保留着那个年代的战时审美，清一色的绿色涂装。</p><p><strong>在未来的几十年中，这种绿皮火车一度成为人们出行的主要依靠，被现代人亲切地称为一代神车。</strong></p><p>02难以找到18号车厢的中国火车</p><p>中国的绿皮火车是时代发展的产物，也是中国铁路中上个世纪50年代到80年代的象征。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/659/w883h576/20220321/ce1f-4c5e822bea01a120d6d424ab74372bfc.jpg"></p><p>当时中国的铁路管理还不完善，不仅火车的车速很慢，车上也非常的拥挤、嘈杂。</p><p>即便这样，能乘坐火车出行，在当时也是一件值得吹嘘的事情。</p><p><strong>因为物质匮乏，运输压力巨大，加上计划经济带来的弊病，那个时代的人想要乘坐火车是需要组织上出具介绍信的，否则连车票都买不到</strong>。</p><p>随着90年代的到来，一代神车的历史地位首次动摇。</p><p>当时的绿皮火车大都年久失修，普遍存在车厢脏、乱、差的现象，加上速度又慢，已经引起了很多旅客的不满。</p><p>由于问题的普遍存在，中国铁路多次发起提速和改进铁路服务的要求，而火车也在一次次地整改中变得更加舒适。</p><p>既然旅途变得舒适了，人们的关注点自然就有所转移，很多人就又提出了疑问，有些人在乘车时见过17号车厢，也有人见过19号车厢，但都没见过18号车厢，难道这其中有些什么忌讳？</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/349/w714h435/20220321/408a-47496a445a3a0bb4838812dbfb09048b.jpg"></p><p>事实上，火车很少能见到18号车厢并不是什么忌讳，和民间的封建传说没有任何关联，它只是铁路管理上的一种非常正常的现象。</p><p><strong>在铁路管理上，火车的长度并不是随意决定的，而是要根据站台的长度来规范。</strong>在中国，站台的标准长度约550米，一节车厢的长度约24米，理论上，一列火车的车厢能达到22节的长度。</p><p>实际情况是，火车的长度计算要将火车头计算进来，而且除了火车头，火车的行进还需要配电车厢和其他不能用于乘客的车厢。</p><p><strong>这样计算下来，留给乘客的车厢基本都不会超过18节，所以大家平常见到最多地也只是17号车厢。</strong></p><p>凡事都有例外。</p><p>常规状态下，18号车厢确实很难见到，但在一些特殊时期还是很容易见到的。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/611/w885h526/20220321/4ae9-aeb9ae0b3a2745f8615246242e28e299.jpg"></p><p>例如说中国的国庆节小长假期间和春运期间都是很容易见到的，甚至还能见到20号开外的车厢，而这样的方法叫做“临时欠编”，也是对资源的一种合理利用。</p><p>03飞速发展的中国火车</p><p>中国的火车经过了几十年的发展，曾经的一代神车已经逐渐退出了历史舞台。</p><p><strong>如今，国家已经研发出了更加快捷、高效的火车来代替绿皮车，曾经独占鳌头的绿皮车体系被现在的高铁体系二分天下。</strong></p><p>高铁体系的建设是中国铁路发展史上具有划时代意义的杰作，它改变了人们对火车的传统观念，也改变了火车的运营形式。</p><p><strong>未来，中国的火车一定会在高铁体系上继续稳步发展，将中国的铁路发展带入更高层次的新时代。</strong></p>','/api/upload/image_1647832246654.jpg',null);
insert into `article` values ('3','全球最奢侈的火车，四天行程要花四万，运气好会跟当地皇室同行！','火车','100','0',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ",null,null,null,'<p>出门旅游，最令人焦心的就是出行方式！相信大家都有过和小编一样的经历，遇到什么节假日想要去哪个地方来个几日游，最后却无奈发现大部分时间都浪费在交通上了。许多远途旅行的人都选择火车作为出行方式，美其名为“沿途能够观赏美景”。听起来倒是很文艺，然而现实往往是这样的：大包小包的行李、拥挤的车厢、各种奇怪的味道、嘈杂的声音……欣赏美景是不可能了，能压制住内心的烦躁就不错了！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/91/w535h356/20220320/5745-5d0d4be2a5939710153f480512d395aa.png"></p><p>那是不是真的没有你们“心目中”样子的火车呢？你们肯定会说：“当然啊，有的话早八百年就去坐了！”可别把话说的太满哦！小编今天就要告诉你，有！但你还真就不一定愿意坐！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/18/w600h218/20220320/115e-e16065be414f9222fbd1ed41415b280e.png"></p><p>苏格兰皇家列车就是这样一个“火车中的上流人”！它是英国唯一的豪华卧铺列车，也是目前全世界最贵的列车，由东方特快公司打造，于1985年开始运营。怎么样？是不是与你印象里的绿皮火车不太一样呢？不止是这样，除了外观尽显奢华，苏格兰皇家列车的服务和内在配置也是一流的！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/744/w462h282/20220320/3935-94593ade7ba0059974993b2cd232cb4d.png"></p><p>想象一下，通往列车的道路铺着红毯，迎接你的不是拿着喇叭的检票员，而是穿着正式的专属服务员，微笑地向你递上一杯表示欢迎的饮品，更是有风笛手们为你吹奏乐曲……这是一番怎样的景象啊，是不是瞬间感觉自己变成了“上帝”一样的顾客？小编告诉你，这就是你乘坐苏格兰皇家列车可以享受到的欢迎仪式！不仅如此，每天晚上客人休息的时候，苏格兰列车还会停止运行，为的是旅客能有一个安静的睡眠环境！可以说是十分的贴心和人性化了！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/76/w550h326/20220320/3ab3-00cd5cbf893f3dcfa58a7591d2f00b39.png"></p><p>列车总共有14节车厢，每一节车厢都不一样。跟一般火车人挤人的现象不一样，苏格兰皇家列车一次只能为36名旅客提供服务，以保证每一位顾客都享受到全方位的服务。而且来搭乘这趟火车说不定还能遇上当地的皇室，车上的红木风格尽显奢华，房间的豪华程度也堪比酒店，从床上用品到洗浴用品都来自意大利的奢侈品牌，让你尽情感受什么叫做“精致”！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/159/w600h359/20220320/ef32-35e8479e49cf846f52ed4c725f53a348.png"></p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/181/w639h342/20220320/c90d-08f9d054adc950db5e8dc375dc135049.png"></p><p>苏格兰皇家列车只在每年的4月到10月才运营，制订了不同的旅行路线供客人选择，沿途的风景也真的如电影或小说里描述的那样迷人。这才是所谓的“欣赏沿途风景”啊！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/99/w563h336/20220320/6b01-15877cde5b9bb05ce135330c5d6dace5.png"></p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/45/w640h205/20220320/a0aa-a69006aefcaa2c438aad03e2adc8608b.png"></p><p>在这里，值得一提的是，列车上的晚餐服务。在如此高大上的列车上，晚餐吃泡面那当然是不可能的，应该是正儿八经的西餐。可是，让你想象不到的是，列车上的晚餐服务不仅仅食物堪比西餐厅，就连用餐旅客的穿着也尽显欧式风情！晚礼服、西装、领结……男男女女都完全一副上流社会人士的样子，再加上有专门的乐队演奏。整个氛围一点也不像是旅途火车上的样子，简直就是高档次的晚宴！</p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/143/w639h304/20220320/e0fe-f3771f36014ea38c06e48dafb6c8ee19.png"></p><p><br></p><p><img src="https://n.sinaimg.cn/sinakd10110/176/w466h510/20220320/2557-83d192b335795805f74d0c58c7226ec1.png"></p><p><br></p><p>那么，为什么这么好的列车，小编说你们不一定愿意去呢？那当然是因为它昂贵的“车费”啦！苏格兰皇家列车四天的费用折合为人民币大概是四万多元，平均每天一万的费用，可不是所有人都能接受的！是不是感觉贫穷限制了你对火车的想象？不说了，小编要去努力攒钱了！</p>','/api/upload/image_1647832461921.jpg',null);
insert into `article` values ('4','火车为什么没有18号车厢，却有17和19号呢？原因很简单！','火车','411','0',"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ",null,null,null,'<p>自欧洲工业革命之后，科技的快速发展对人们的生活影响非常的巨大，从各个方面都有了非常大的改变，尤其是在交通方面。</p><p>由于蒸汽机的广泛应用，欧洲的科学家首先将其应用到交通领域。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/451/w652h599/20220321/7ca8-e17ecae5aea72ad6c6cfd19543b814ce.jpg"></p><p>1814年，英国人乔治·斯蒂芬森发明了蒸汽机动力的机车。</p><p><strong>因为需要使用蒸汽动力，烟囱会不断向外冒出热气，人们形象地将它称为“火车”，而正是这种火车，成为未来200年间应用最广泛的运输形式。</strong></p><p>火车传入中国的时间比欧洲晚了半个世纪。</p><p>虽然传入的时间很短，但中国的火车发展却进步飞速。</p><p>经过百年时间的发展，中国目前的铁路线路总长度已经居世界首位，是世界上铁路运输最发达的国家之一。</p><p><strong>然而，尽管现在的国人经常乘坐火车出行，但总会被一个问题困扰，中国的火车很少能看到第18号车厢，这是为什么呢？</strong></p><p><strong>原因很简单，而这要从中国的铁路发展史说起。</strong></p><p>01一代国民神车，绿皮火车</p><p>中国的铁路发展史是一部充满血泪和屈辱的历史。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/618/w862h556/20220321/9161-d9e3b77de79d249a16026fb631a1c709.jpg"></p><p>1840年以后，由于清朝统治者的软弱，致使大量的西方国家来到中国瓜分财富。除了从商业上掠夺财富之外，丰富的矿产资源也是西方国家掠夺的对象。</p><p><strong>为了能快速开采和运输矿产，西方国家在中国开始修建铁路</strong>。</p><p><strong>中国早期的铁路基本都是西方国家用以掠夺资源利用的，带有很强的半殖民地性质。</strong></p><p><strong>直到1876年，中国才出现了第一条正式运营性质的铁路——吴淞铁路。</strong></p><p>可是，吴淞铁路仅仅运行的不足一年便被拆除，在当时的国人眼中，这种机器运输是非常不可靠的，所以国家的铁路发展也非常得缓慢。</p><p><strong>到新中国成立之后，中国的铁路才开始有了较好地发展环境</strong>。</p><p>当时的国家因为国力较弱，只能以原有的旧铁路线路为依托，进行修整铁路线路。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/554/w845h509/20220321/8d07-14d48dad507c724670a488f950fb1ae4.jpg"></p><p>在那个物资匮乏的年代，辛劳的中国人凭借坚韧的品格和辛勤的汗水硬是将铁路线路铺向全国，而火车也几乎成为人们出远门的唯一交通工具。</p><p>但是，中国的人口数量太大，现有的铁路运输根本无力承担。</p><p>直到<strong>上个世纪80年代，铁路运输压力才有所改变</strong>。</p><p>当时，全国的铁路线路已经铺设超过5万公里，而火车的样式也发生了巨大的改变。</p><p>火车的车厢数量增加，车体的涂装也保留着那个年代的战时审美，清一色的绿色涂装。</p><p><strong>在未来的几十年中，这种绿皮火车一度成为人们出行的主要依靠，被现代人亲切地称为一代神车。</strong></p><p>02难以找到18号车厢的中国火车</p><p>中国的绿皮火车是时代发展的产物，也是中国铁路中上个世纪50年代到80年代的象征。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/659/w883h576/20220321/ce1f-4c5e822bea01a120d6d424ab74372bfc.jpg"></p><p>当时中国的铁路管理还不完善，不仅火车的车速很慢，车上也非常的拥挤、嘈杂。</p><p>即便这样，能乘坐火车出行，在当时也是一件值得吹嘘的事情。</p><p><strong>因为物质匮乏，运输压力巨大，加上计划经济带来的弊病，那个时代的人想要乘坐火车是需要组织上出具介绍信的，否则连车票都买不到</strong>。</p><p>随着90年代的到来，一代神车的历史地位首次动摇。</p><p>当时的绿皮火车大都年久失修，普遍存在车厢脏、乱、差的现象，加上速度又慢，已经引起了很多旅客的不满。</p><p>由于问题的普遍存在，中国铁路多次发起提速和改进铁路服务的要求，而火车也在一次次地整改中变得更加舒适。</p><p>既然旅途变得舒适了，人们的关注点自然就有所转移，很多人就又提出了疑问，有些人在乘车时见过17号车厢，也有人见过19号车厢，但都没见过18号车厢，难道这其中有些什么忌讳？</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/349/w714h435/20220321/408a-47496a445a3a0bb4838812dbfb09048b.jpg"></p><p>事实上，火车很少能见到18号车厢并不是什么忌讳，和民间的封建传说没有任何关联，它只是铁路管理上的一种非常正常的现象。</p><p><strong>在铁路管理上，火车的长度并不是随意决定的，而是要根据站台的长度来规范。</strong>在中国，站台的标准长度约550米，一节车厢的长度约24米，理论上，一列火车的车厢能达到22节的长度。</p><p>实际情况是，火车的长度计算要将火车头计算进来，而且除了火车头，火车的行进还需要配电车厢和其他不能用于乘客的车厢。</p><p><strong>这样计算下来，留给乘客的车厢基本都不会超过18节，所以大家平常见到最多地也只是17号车厢。</strong></p><p>凡事都有例外。</p><p>常规状态下，18号车厢确实很难见到，但在一些特殊时期还是很容易见到的。</p><p><img src="http://n.sinaimg.cn/sinakd20220321ac/611/w885h526/20220321/4ae9-aeb9ae0b3a2745f8615246242e28e299.jpg"></p><p>例如说中国的国庆节小长假期间和春运期间都是很容易见到的，甚至还能见到20号开外的车厢，而这样的方法叫做“临时欠编”，也是对资源的一种合理利用。</p><p>03飞速发展的中国火车</p><p>中国的火车经过了几十年的发展，曾经的一代神车已经逐渐退出了历史舞台。</p><p><strong>如今，国家已经研发出了更加快捷、高效的火车来代替绿皮车，曾经独占鳌头的绿皮车体系被现在的高铁体系二分天下。</strong></p><p>高铁体系的建设是中国铁路发展史上具有划时代意义的杰作，它改变了人们对火车的传统观念，也改变了火车的运营形式。</p><p><strong>未来，中国的火车一定会在高铁体系上继续稳步发展，将中国的铁路发展带入更高层次的新时代。</strong></p>','/api/upload/image_1647832246654.jpg',null);
insert into `article_type` values ('1','100','火车','0',null,null,null,"2022-03-21 05:45:36.000 ","2022-03-21 05:45:36.000 ");
