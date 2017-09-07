/*
Navicat MySQL Data Transfer

Source Server         : lichengdai
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-07 15:41:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mss_activity
-- ----------------------------
DROP TABLE IF EXISTS `mss_activity`;
CREATE TABLE `mss_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_title` varchar(50) NOT NULL,
  `activity_picurl` varchar(50) NOT NULL,
  `activity_price` int(5) NOT NULL,
  `activity_stratcity` varchar(255) NOT NULL,
  `activity_strattime` int(10) NOT NULL,
  `activity_endtime` int(10) NOT NULL,
  `activity_lable` varchar(50) NOT NULL,
  `activity_Exid` int(10) NOT NULL,
  `activity_content` varchar(255) NOT NULL,
  `activity_addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_activity
-- ----------------------------

-- ----------------------------
-- Table structure for mss_activity_images
-- ----------------------------
DROP TABLE IF EXISTS `mss_activity_images`;
CREATE TABLE `mss_activity_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_activity_images
-- ----------------------------

-- ----------------------------
-- Table structure for mss_address
-- ----------------------------
DROP TABLE IF EXISTS `mss_address`;
CREATE TABLE `mss_address` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `receiver` varchar(20) NOT NULL COMMENT '收货人',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(30) NOT NULL COMMENT '市',
  `area` varchar(30) NOT NULL COMMENT '区',
  `street` varchar(255) NOT NULL COMMENT '街道及详细地址',
  `postcode` char(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `tel` char(11) NOT NULL COMMENT '联系电话',
  `mobile` varchar(25) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `besttime` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '最佳送货时间',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否默认收货地址 1 是 2 不是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_address
-- ----------------------------
INSERT INTO `mss_address` VALUES ('1', '20', '丽丽', '7', '104', '914', '五圩镇龙马队', '547011', '0774-225566', '13500714869', 'liliA@123.com', '145435343', '1');
INSERT INTO `mss_address` VALUES ('2', '20', '妹妹', '7', '104', '914', '五圩镇', '547011', '0774-225566', '13500714869', 'meimeiA@123.com', '145435343', '2');
INSERT INTO `mss_address` VALUES ('10', '21', '一', '青海', '果洛', '甘德县', '收货', '11111', '13021963212', '', '', '0', '2');
INSERT INTO `mss_address` VALUES ('11', '13', '云之彼端', '6', '77', '709', '顶顶顶顶顶顶顶顶顶顶顶顶顶顶', '', '15812967702', '', 'prcun@qq.com', '0', '2');

-- ----------------------------
-- Table structure for mss_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `mss_admin_log`;
CREATE TABLE `mss_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` bigint(32) unsigned NOT NULL,
  `userid` smallint(3) unsigned NOT NULL,
  `loginfo` varchar(255) NOT NULL,
  `userip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2604 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_admin_log
-- ----------------------------
INSERT INTO `mss_admin_log` VALUES ('2506', '1504668060', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2505', '1504667988', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2504', '1504667885', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2503', '1504667583', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2502', '1504667052', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2501', '1504666974', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2500', '1504666678', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2499', '1504666575', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2498', '1504666509', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2497', '1504666473', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2496', '1504666374', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2495', '1504666036', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2494', '1504665957', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2493', '1504665758', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2492', '1504665559', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2491', '1504665515', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2490', '1504665444', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2489', '1504665412', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2488', '1504665338', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2487', '1504665175', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2486', '1504665127', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2485', '1504665099', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2484', '1504665018', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2483', '1504665008', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2482', '1504664956', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2481', '1504664921', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2480', '1504664908', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2479', '1504664870', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2478', '1504664185', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2477', '1504664110', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2476', '1504664061', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2475', '1504662828', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2474', '1504662682', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2473', '1504662642', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2472', '1504662521', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2471', '1504662487', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2470', '1504661028', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2469', '1504661007', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2468', '1504660858', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2467', '1504660813', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2466', '1504604006', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2465', '1504604005', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2464', '1504603795', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2463', '1504602778', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2462', '1504602711', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2461', '1504602641', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2460', '1504602595', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2459', '1504602522', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2458', '1504602515', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2457', '1504602504', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2456', '1504601423', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2455', '1504599816', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2454', '1504599715', '1', '管理员admin查看了管理员列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2453', '1504599697', '1', '管理员admin查看了分类列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2452', '1504599690', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2451', '1504599512', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2450', '1504599507', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2449', '1504599503', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2448', '1504598975', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2447', '1504598951', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2446', '1504598764', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2445', '1504598730', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2444', '1504598675', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2443', '1504598675', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2442', '1504598674', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2441', '1504598624', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2440', '1504598624', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2439', '1504598623', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2438', '1504598575', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2437', '1504598574', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2436', '1504598551', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2435', '1504598539', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2434', '1504598518', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2433', '1504598131', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2432', '1504581108', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2431', '1504577752', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2430', '1504577566', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2429', '1504577498', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2428', '1504577457', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2427', '1504577417', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2426', '1504576530', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2425', '1504576425', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2424', '1504517073', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2423', '1504517072', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2422', '1504517065', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2421', '1504516802', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2420', '1504516789', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2419', '1504516302', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2418', '1504516015', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2417', '1504515944', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2416', '1504515931', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2415', '1504515894', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2414', '1504515885', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2413', '1504515795', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2412', '1504515784', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2411', '1504515024', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2410', '1504514917', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2409', '1504514879', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2408', '1504514777', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2407', '1504514691', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2406', '1504513432', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2405', '1504513393', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2404', '1504512880', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2403', '1504512863', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2402', '1504512848', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2401', '1504512821', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2400', '1504512559', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2399', '1504509235', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2398', '1504508105', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2397', '1504508078', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2396', '1504508020', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2395', '1504507673', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2394', '1504507654', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2393', '1504507630', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2392', '1504507600', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2391', '1504507492', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2390', '1504507455', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2389', '1504507340', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2388', '1504507312', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2387', '1504507281', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2386', '1504507235', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2385', '1504507152', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2384', '1504507082', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2383', '1504507013', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2382', '1504506969', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2381', '1504506938', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2380', '1504506905', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2379', '1504506846', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2378', '1504506799', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2377', '1504506749', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2376', '1504506674', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2375', '1504506583', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2374', '1504506513', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2373', '1504506505', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2372', '1504506392', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2371', '1504506335', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2370', '1504506299', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2369', '1504506254', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2368', '1504506117', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2367', '1504505969', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2366', '1504505863', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2365', '1504505822', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2364', '1504505722', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2363', '1504505520', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2362', '1504505510', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2361', '1504505427', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2360', '1504505332', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2359', '1504505278', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2358', '1504505180', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2357', '1504505105', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2356', '1504505057', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2355', '1504505027', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2354', '1504504901', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2353', '1504504772', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2352', '1504504699', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2351', '1504504680', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2350', '1504504258', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2349', '1504503567', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2348', '1504503535', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2347', '1504503514', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2346', '1504497781', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2345', '1504497732', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2344', '1504497706', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2343', '1504497684', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2342', '1504497619', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2341', '1504497576', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2340', '1504497540', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2339', '1504491352', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2338', '1504491343', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2337', '1504491325', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2336', '1504488836', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2335', '1504256137', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2334', '1504256009', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2333', '1504255999', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2332', '1504255999', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2331', '1504255914', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2330', '1504255886', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2329', '1504255867', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2328', '1504255801', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2327', '1504255755', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2326', '1504255755', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2325', '1504255755', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2324', '1504255754', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2323', '1504255638', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2322', '1504255621', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2321', '1504255573', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2320', '1504255062', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2319', '1504255002', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2318', '1504254977', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2317', '1504254948', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2316', '1504254931', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2315', '1504254897', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2314', '1504254846', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2313', '1504254762', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2312', '1504254743', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2311', '1504254603', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2310', '1504253376', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2309', '1504253118', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2308', '1504253046', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2307', '1504252508', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2306', '1504251958', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2305', '1504251927', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2304', '1504251850', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2303', '1504251721', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2302', '1504251672', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2301', '1504251625', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2300', '1504251589', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2299', '1504251583', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2298', '1504251565', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2297', '1504251440', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2296', '1504251334', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2295', '1504251141', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2294', '1504250988', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2293', '1504250908', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2292', '1504250842', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2291', '1504250822', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2290', '1504250778', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2289', '1504250694', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2288', '1504250630', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2287', '1504250608', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2286', '1504250513', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2285', '1504250459', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2284', '1504250401', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2283', '1504250394', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2282', '1504250274', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2281', '1504250216', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2280', '1504250095', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2279', '1504250054', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2278', '1504249542', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2277', '1504249481', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2276', '1504249295', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2275', '1504249269', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2274', '1504249252', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2273', '1504249228', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2272', '1504249220', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2271', '1504248644', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2270', '1504248605', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2269', '1504248563', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2268', '1504248552', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2267', '1504248517', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2266', '1504248273', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2265', '1504248263', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2264', '1504248248', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2263', '1504248235', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2262', '1504248181', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2261', '1504248152', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2260', '1504248021', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2259', '1504248000', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2258', '1504247993', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2257', '1504247383', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2256', '1504247310', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2255', '1504247300', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2254', '1504247292', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2253', '1504247261', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2252', '1504247202', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2251', '1504247090', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2250', '1504247073', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2249', '1504247029', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2248', '1504247019', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2247', '1504246602', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2246', '1504246518', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2245', '1504246517', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2244', '1504246404', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2243', '1504246396', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2242', '1504246151', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2241', '1504246128', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2240', '1504246093', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2239', '1504246071', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2238', '1504246033', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2237', '1504245976', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2236', '1504245965', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2235', '1504245929', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2234', '1504245888', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2233', '1504245865', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2232', '1504245784', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2231', '1504245737', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2230', '1504245454', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2229', '1504245246', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2228', '1504245188', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2227', '1504245084', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2226', '1504245058', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2225', '1504245007', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2224', '1504244982', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2223', '1504244970', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2222', '1504244903', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2221', '1504244858', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2220', '1504244685', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2219', '1504244628', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2218', '1504244570', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2217', '1504238370', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2216', '1504238243', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2215', '1504238205', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2214', '1504238181', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2213', '1504238115', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2212', '1504237697', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2211', '1504237610', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2210', '1504237606', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2209', '1504237136', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2208', '1504237120', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2207', '1504236759', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2206', '1504236704', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2205', '1504236665', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2204', '1504236602', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2203', '1504236533', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2202', '1504236480', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2201', '1504236439', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2200', '1504235814', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2199', '1504235796', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2198', '1504234103', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2197', '1504233932', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2196', '1504233911', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2195', '1504232806', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2194', '1504232634', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2193', '1504232610', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2192', '1504232560', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2191', '1504232471', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2190', '1504232393', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2189', '1504232352', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2188', '1504232255', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2187', '1504232210', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2186', '1504232208', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2185', '1504231839', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2184', '1504231614', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2183', '1504231570', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2182', '1504231561', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2181', '1504231511', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2180', '1504228933', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2179', '1504228526', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2178', '1504228307', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2177', '1504174841', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2176', '1504173642', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2175', '1504173362', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2174', '1504173237', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2173', '1504173194', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2172', '1504173161', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2171', '1504173132', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2170', '1504173088', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2169', '1504173008', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2168', '1504172918', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2167', '1504172807', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2166', '1504171790', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2165', '1504171591', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2164', '1504170547', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2163', '1504170165', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2162', '1504169499', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2161', '1504169408', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2160', '1504169151', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2159', '1504169019', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2158', '1504168973', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2157', '1504168952', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2156', '1504168934', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2155', '1504168878', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2154', '1504166957', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2153', '1504166562', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2152', '1504166497', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2151', '1504166078', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2150', '1504166064', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2149', '1504166034', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2148', '1504165887', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2147', '1504165875', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2146', '1504165839', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2145', '1504165782', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2144', '1504165536', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2143', '1504165535', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2142', '1504165069', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2141', '1504158020', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2140', '1504146884', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2139', '1504145521', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2138', '1504145520', '1', '管理员admin修改了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2137', '1504145503', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2136', '1504145503', '1', '管理员admin查看了友情链接列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2135', '1504142511', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2134', '1504142507', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2133', '1504141978', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2132', '1504141907', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2131', '1504141904', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2130', '1504141817', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2129', '1504141811', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2128', '1504141623', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2127', '1504087000', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2126', '1504086811', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2125', '1504086758', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2124', '1504086647', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2123', '1504086636', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2122', '1504086622', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2121', '1504086161', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2120', '1504085940', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2119', '1504083297', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2118', '1504083138', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2117', '1504083089', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2116', '1504083070', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2115', '1504083068', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2114', '1504083066', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2113', '1504082989', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2112', '1504082954', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2111', '1504082920', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2110', '1504082903', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2109', '1504082849', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2108', '1504082740', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2107', '1504082442', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2106', '1504082229', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2105', '1504082198', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2104', '1504082174', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2103', '1504082161', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2102', '1504082149', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2101', '1504082108', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2100', '1504082083', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2099', '1504082040', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2098', '1504081514', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2097', '1504081485', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2096', '1504081299', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2095', '1504081251', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2094', '1504081242', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2093', '1504081226', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2092', '1504081206', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2091', '1504081196', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2090', '1504081187', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2089', '1504081168', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2088', '1504081156', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2087', '1504081139', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2086', '1504081126', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2085', '1504081087', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2084', '1504081075', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2083', '1504081066', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2082', '1504081007', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2081', '1504080939', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2080', '1504080927', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2079', '1504080925', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2078', '1504080877', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2077', '1504080868', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2076', '1504080836', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2075', '1504080833', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2074', '1504080707', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2073', '1504080691', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2072', '1504080655', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2071', '1504080642', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2070', '1504080425', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2069', '1504080423', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2068', '1504080418', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2067', '1504080415', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2066', '1504080128', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2065', '1504080029', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2064', '1504080027', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2063', '1504079593', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2062', '1504079578', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2061', '1504079548', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2060', '1504079535', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2059', '1504079519', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2058', '1504079489', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2057', '1504079456', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2056', '1504079384', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2055', '1504079338', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2054', '1504079299', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2053', '1504079255', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2052', '1504079228', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2051', '1504079215', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2050', '1504079193', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2049', '1504079177', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2048', '1504078974', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2047', '1504078964', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2046', '1504078821', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2045', '1504078252', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2044', '1504078251', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2043', '1504078212', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2042', '1504077794', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2041', '1504077137', '1', '管理员admin添加了商品', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2040', '1504076244', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2039', '1504075550', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2038', '1504075531', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2037', '1504075473', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2036', '1504075196', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2035', '1504075093', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2034', '1504074986', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2033', '1504074861', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2032', '1504074816', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2031', '1504074790', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2030', '1504074446', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2029', '1504074365', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2028', '1504074352', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2027', '1504074331', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2026', '1504074308', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2025', '1504074287', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2024', '1504074238', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2023', '1504073666', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2022', '1504073610', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2021', '1504073597', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2020', '1504073570', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2019', '1504073545', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2018', '1504073447', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2017', '1504073422', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2016', '1504073381', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2015', '1504073280', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2014', '1504072807', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2013', '1504072802', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2012', '1504065526', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2011', '1504065381', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2010', '1504065358', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2009', '1504065226', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2008', '1504065185', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2007', '1504065123', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2006', '1504065092', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2005', '1504065013', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2004', '1504064974', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2003', '1504064958', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2002', '1504064927', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2001', '1504064876', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2000', '1504063590', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1999', '1504063185', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1998', '1504062997', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1997', '1504062990', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1996', '1504062967', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1995', '1504062962', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1994', '1504062954', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1993', '1504062599', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1992', '1504062561', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1991', '1504062539', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1990', '1504062490', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1989', '1504062455', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1988', '1504062438', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1987', '1504062404', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1986', '1504062331', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1985', '1504062261', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1984', '1504062218', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1983', '1504062198', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1982', '1504062141', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1981', '1504062106', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1980', '1504061948', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1979', '1504061746', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1978', '1504061708', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1977', '1504061671', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1976', '1504061638', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1975', '1504061467', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1974', '1504061320', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1973', '1504061304', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1972', '1504061286', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1971', '1504061269', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1970', '1504061223', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1969', '1504061146', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1968', '1504060957', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1967', '1504060832', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1966', '1504060362', '1', '管理员admin查看了分类列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1965', '1504060357', '1', '管理员admin查看了商品规格列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1964', '1504060351', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1963', '1504060348', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1962', '1504060342', '1', '管理员admin查看了商品规格列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1961', '1504060303', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1960', '1504059785', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1959', '1504059456', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1958', '1504059377', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1957', '1504059340', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1956', '1504057084', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1955', '1504057051', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1954', '1504056390', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1953', '1504056390', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1952', '1504056338', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1951', '1504056303', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1950', '1504056298', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1949', '1504055864', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1948', '1504055390', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1947', '1504054789', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1946', '1503998430', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1945', '1503998418', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1944', '1503998399', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1943', '1503998382', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1942', '1503998322', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1941', '1503998307', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1940', '1503998234', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1939', '1503998230', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1938', '1503998202', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1937', '1503997882', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1936', '1503997571', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1935', '1503997533', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1934', '1503997493', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1933', '1503997348', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1932', '1503997329', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1931', '1503995974', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1930', '1503995764', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1929', '1503995637', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1928', '1503994242', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1927', '1503994213', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1926', '1503994177', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1925', '1503990148', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1924', '1503989531', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1923', '1503986586', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1922', '1503911344', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1921', '1503905594', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1920', '1503904688', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1919', '1503904597', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1918', '1503904508', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1917', '1503904325', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1916', '1503904181', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1915', '1503904165', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1914', '1503904036', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1913', '1503903904', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1912', '1503903829', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1911', '1503903823', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1910', '1503903707', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1909', '1503903685', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1908', '1503903663', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1907', '1503903636', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1906', '1503903606', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1905', '1503903397', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1904', '1503903351', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1903', '1503902993', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1902', '1503902991', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1901', '1503902973', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1900', '1503902952', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1899', '1503902741', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1898', '1503902723', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1897', '1503902530', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1896', '1503902517', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1895', '1503902513', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1894', '1503902487', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1893', '1503902458', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1892', '1503902452', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1891', '1503902389', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1890', '1503902141', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1889', '1503901930', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1888', '1503901872', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1887', '1503901547', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1886', '1503901487', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1885', '1503901471', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1884', '1503901452', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1883', '1503901419', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1882', '1503901395', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1881', '1503901294', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1880', '1503900880', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1879', '1503900844', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1878', '1503900763', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1877', '1503900691', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1876', '1503900642', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1875', '1503900635', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1874', '1503900609', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1873', '1503900468', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1872', '1503900414', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1871', '1503899955', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1870', '1503899197', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1869', '1503899007', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1868', '1503898925', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1867', '1503898886', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1866', '1503898868', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1865', '1503898864', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1864', '1503898830', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1863', '1503898665', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1862', '1503898608', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1861', '1503898413', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1860', '1503898370', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1859', '1503898344', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1858', '1503898331', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1857', '1503898312', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1856', '1503898301', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1855', '1503892713', '1', '管理员admin查看了友情链接列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1854', '1503892712', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1853', '1503892701', '1', '管理员admin查看了商品规格列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1852', '1503892695', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1851', '1503891976', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1850', '1503890625', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1849', '1503890466', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1848', '1503890339', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1847', '1503890296', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1846', '1503890181', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1845', '1503884891', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1844', '1503884855', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1843', '1503884852', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1842', '1503884850', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1841', '1503884849', '1', '管理员admin查看了用户列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1840', '1503655797', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1839', '1503655775', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1838', '1503652839', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1837', '1503652790', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1836', '1503652787', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1835', '1503652671', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1834', '1503652653', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1833', '1503652581', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1832', '1503648788', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1831', '1503648278', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1830', '1503646059', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1829', '1503646016', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1828', '1503645981', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1827', '1503645978', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1826', '1503645961', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1825', '1503645891', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1824', '1503645887', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1823', '1503645857', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1822', '1503645854', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1821', '1503645848', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1820', '1503645680', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1819', '1503645563', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1818', '1503645554', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1817', '1503645509', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1816', '1503645393', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1815', '1503645037', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1814', '1503644964', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1813', '1503644912', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1812', '1503644364', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1811', '1503644310', '1', '管理员admin发布了banner配图', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1810', '1503643172', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1809', '1503641515', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1808', '1503641468', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1807', '1503641193', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1806', '1503640925', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1805', '1503640907', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1804', '1503640607', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1803', '1503640449', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1802', '1503640389', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1801', '1503640351', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1800', '1503640279', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1799', '1503640231', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1798', '1503639601', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1797', '1503639525', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1796', '1503639435', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1795', '1503639212', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1794', '1503632373', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1793', '1503631805', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1792', '1503630400', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1791', '1503629706', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1790', '1503629031', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1789', '1503628959', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1788', '1503628914', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1787', '1503628795', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1786', '1503628633', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1785', '1503628183', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1784', '1503627864', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1783', '1503569932', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1782', '1503569746', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1781', '1503569741', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1780', '1503569738', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1779', '1503569735', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1778', '1503569731', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1777', '1503569729', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1776', '1503569707', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1775', '1503569646', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1774', '1503568517', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1773', '1503568401', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1772', '1503568173', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1771', '1503568057', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1770', '1503567982', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1769', '1503567322', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1768', '1503567020', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1767', '1503566602', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1766', '1503566600', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1765', '1503565580', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1764', '1503565565', '1', '管理员admin查看了管理员列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1763', '1503565539', '1', '管理员admin查看了管理员列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1762', '1503565536', '1', '管理员admin查看了分类列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1761', '1503565528', '1', '管理员admin查看了友情链接列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1760', '1503565523', '1', '管理员admin查看了网站配置', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1759', '1503565504', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1758', '1503565449', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1757', '1503564789', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1756', '1503564741', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1755', '1503564051', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1754', '1503563814', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1753', '1503563751', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1752', '1503563482', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1751', '1503563461', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1750', '1503563417', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1749', '1503563394', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1748', '1503563295', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1747', '1503563175', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1746', '1503563038', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1745', '1503563030', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1744', '1503562907', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1743', '1503562659', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1742', '1503562193', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1741', '1503562016', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1740', '1503562000', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1739', '1503561932', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1738', '1503561877', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1737', '1503561810', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1736', '1503561797', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1735', '1503561781', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1734', '1503561192', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1733', '1503561155', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1732', '1503561036', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1731', '1503560962', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1730', '1503560898', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1729', '1503560856', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1728', '1503560753', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1727', '1503560698', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1726', '1503560671', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1725', '1503560595', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1724', '1503560455', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1723', '1503560223', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1722', '1503560206', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1721', '1503560168', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1720', '1503560097', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1719', '1503560080', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1718', '1503560025', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1717', '1503559938', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1716', '1503559886', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1715', '1503559827', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1714', '1503559804', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1713', '1503559707', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1712', '1503557512', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1711', '1503557379', '1', '管理员admin查看了商品列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1710', '1503557351', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1709', '1503557335', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1708', '1503557312', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1707', '1503557187', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1706', '1503557171', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1705', '1503557125', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1704', '1503557105', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1703', '1503557047', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1702', '1503557020', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1701', '1503556996', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1700', '1503556830', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1699', '1503556817', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1698', '1503556801', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1697', '1503556782', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1696', '1503556748', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1695', '1503556693', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1694', '1503556650', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1693', '1503556578', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1692', '1503555915', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1691', '1503555901', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1690', '1503555865', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1689', '1503555821', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1688', '1503555750', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1687', '1503555653', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1686', '1503555579', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1685', '1503555579', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1684', '1503555578', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1683', '1503555577', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1682', '1503555553', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1681', '1503555470', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1680', '1503555447', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1679', '1503555338', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1678', '1503555320', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1677', '1503555239', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1676', '1503555206', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1675', '1503555149', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1674', '1503555052', '1', '管理员admin查看了邮件模板列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('1673', '1503554347', '1', '管理员admin查看了管理员列表', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2507', '1504668081', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2508', '1504668213', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2509', '1504668428', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2510', '1504668833', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2511', '1504669047', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2512', '1504669387', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2513', '1504669534', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2514', '1504669577', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2515', '1504669678', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2516', '1504669720', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2517', '1504669785', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2518', '1504670067', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2519', '1504676031', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2520', '1504676066', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2521', '1504676538', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2522', '1504676597', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2523', '1504676681', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2524', '1504676809', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2525', '1504676860', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2526', '1504676910', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2527', '1504677416', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2528', '1504677445', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2529', '1504677474', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2530', '1504677686', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2531', '1504678108', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2532', '1504678139', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2533', '1504678144', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2534', '1504678235', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2535', '1504678335', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2536', '1504678580', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2537', '1504678738', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2538', '1504678800', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2539', '1504678981', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2540', '1504679527', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2541', '1504679623', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2542', '1504679640', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2543', '1504679750', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2544', '1504679847', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2545', '1504679877', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2546', '1504679927', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2547', '1504680095', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2548', '1504680917', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2549', '1504681990', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2550', '1504682040', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2551', '1504682075', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2552', '1504682125', '1', '管理员admin发布了热门活动', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2553', '1504688473', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2554', '1504688783', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2555', '1504747619', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2556', '1504751260', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2557', '1504751631', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2558', '1504751683', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2559', '1504751718', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2560', '1504751909', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2561', '1504751924', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2562', '1504753441', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2563', '1504753466', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2564', '1504753501', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2565', '1504753544', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2566', '1504753859', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2567', '1504753906', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2568', '1504753975', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2569', '1504753998', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2570', '1504754061', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2571', '1504754066', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2572', '1504754122', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2573', '1504754152', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2574', '1504754362', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2575', '1504754399', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2576', '1504754548', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2577', '1504754602', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2578', '1504754631', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2579', '1504754693', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2580', '1504755006', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2581', '1504755028', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2582', '1504755076', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2583', '1504755507', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2584', '1504755519', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2585', '1504755612', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2586', '1504755654', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2587', '1504755658', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2588', '1504755880', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2589', '1504766369', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2590', '1504766429', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2591', '1504767212', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2592', '1504767365', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2593', '1504767472', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2594', '1504767630', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2595', '1504767689', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2596', '1504767724', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2597', '1504767782', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2598', '1504768842', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2599', '1504769105', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2600', '1504769128', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2601', '1504769558', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2602', '1504769658', '1', '管理员admin发布了特价旅游', '127.0.0.1');
INSERT INTO `mss_admin_log` VALUES ('2603', '1504769932', '1', '管理员admin发布了特价旅游', '127.0.0.1');

-- ----------------------------
-- Table structure for mss_banners
-- ----------------------------
DROP TABLE IF EXISTS `mss_banners`;
CREATE TABLE `mss_banners` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `banner_url` varchar(100) NOT NULL,
  `point_url` varchar(100) NOT NULL,
  `banner_name` varchar(50) NOT NULL,
  `upload_time` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_banners
-- ----------------------------
INSERT INTO `mss_banners` VALUES ('5', '59a3c73a3bf54.jpg', 'http://www.baidu.com', '迷失森林', '1503905594');

-- ----------------------------
-- Table structure for mss_carts
-- ----------------------------
DROP TABLE IF EXISTS `mss_carts`;
CREATE TABLE `mss_carts` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `gid` mediumint(8) unsigned NOT NULL COMMENT '商品ID',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `addnum` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '添加数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_carts
-- ----------------------------

-- ----------------------------
-- Table structure for mss_comment
-- ----------------------------
DROP TABLE IF EXISTS `mss_comment`;
CREATE TABLE `mss_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(50) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_comment
-- ----------------------------
INSERT INTO `mss_comment` VALUES ('1', '1', '1', 'qinwei@123.com', 'qinwei', '<p>好的 真的很好 下次再来哈....</p>', '1', '432232323', '127.0.0.1', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for mss_dilivery
-- ----------------------------
DROP TABLE IF EXISTS `mss_dilivery`;
CREATE TABLE `mss_dilivery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '配送方式名称',
  `freight_name` varchar(90) NOT NULL COMMENT '快递/货运公司名称',
  `type` tinyint(1) unsigned NOT NULL COMMENT '配送类型(1为货到付款,0为先付款后发货)',
  `first_price` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '首重价格',
  `first_weight` float(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '首重重量(g)',
  `second_price` decimal(3,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '续重价格(/kg)',
  `is_save_price` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否支持保价(1支持,2不支持)',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配送方式是否启用(1启用,2关闭)',
  `description` text NOT NULL COMMENT '详细描述',
  `yunfei` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配送方式表';

-- ----------------------------
-- Records of mss_dilivery
-- ----------------------------
INSERT INTO `mss_dilivery` VALUES ('1', '上门取货', '上门取货', '1', '6.00', '999.99', '4.00', '1', '1', '买家自己到商家指定地点取货', '10.00');
INSERT INTO `mss_dilivery` VALUES ('2', 'EMS 国内邮政特快专递', '中国邮政', '1', '6.00', '999.99', '4.00', '1', '1', 'EMS 国内邮政特快专递，\r\n\r\n风一样的感受，轻松购物每一天', '11.00');
INSERT INTO `mss_dilivery` VALUES ('3', '顺丰速递', '顺丰速运', '0', '6.50', '999.99', '7.00', '1', '1', '江、浙、沪地区首重12元/KG，续重2\r\n\r\n元/KG，其余城市首重20元/KG', '12.00');
INSERT INTO `mss_dilivery` VALUES ('4', '韵达', '韵达快递', '0', '7.00', '999.99', '9.00', '1', '1', '韵达 用心在做qqqqqqqqqqqqqqqqqqqqqqqq', '13.00');
INSERT INTO `mss_dilivery` VALUES ('5', '圆通', '圆通速递', '1', '7.50', '999.99', '5.00', '1', '1', '圆通速递', '14.00');

-- ----------------------------
-- Table structure for mss_goods
-- ----------------------------
DROP TABLE IF EXISTS `mss_goods`;
CREATE TABLE `mss_goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `gnum` varchar(30) NOT NULL COMMENT '商品编号',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属分类ID',
  `gtotal` int(11) unsigned NOT NULL COMMENT '商品数量',
  `gstotal` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品销量',
  `gname` varchar(100) NOT NULL COMMENT '商品名称',
  `pic` varchar(255) NOT NULL DEFAULT 'goodspic.gif' COMMENT '商品图片',
  `gdescription` text COMMENT '商品描述',
  `gtype` varchar(255) NOT NULL COMMENT '商品规格',
  `mprice` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '售价',
  `tuijian` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否推荐，1 是 2 否',
  `zuixin` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否最新，1 是 2 否',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态：1正常；2团购；3特价；4秒杀',
  `huishou` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否放入回收站，1 是 2 否',
  `issell` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否上架在售：1是；2已下架',
  `selltime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上架时间',
  `lastmtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  `color` varchar(100) NOT NULL DEFAULT '' COMMENT '测试用字段-颜色',
  `size` varchar(100) NOT NULL DEFAULT '' COMMENT '测试用字段-尺寸',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_goods
-- ----------------------------
INSERT INTO `mss_goods` VALUES ('40', 'scz_40', '14', '82', '0', '2014春装新款女装时尚修身中袖雪纺连衣裙HG3107', '40.jpg', '<p>里料采用聚脂纤维制作，柔滑舒适的体验让人爱不释手；时尚的廓型，在本季大受欢迎，特别强调了灯笼袖的设计，既可爱又能修饰手臂曲线，让你更显魅力；浪漫的花朵图案装点全身却不会显得浮夸繁琐，精致的小女人味道，可以轻易地将众人的目光牢牢吸引。（此款连衣裙配腰带）</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638553999.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638553999.jpg\" style=\"\" height=\"118\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638573780.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638573780.jpg\" style=\"\" height=\"118\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638602965.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638602965.jpg\" style=\"\" height=\"144\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '花纹色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('39', 'scz_39', '14', '59', '0', '2014春装新款女装纯色收腰毛呢背心裙连衣裙DF3310', '39.jpg', '<p>大气修身的版型，设计师选用活力不失高雅的玫红色，衬托典雅端庄的气质，时尚背心款式，内搭更灵活，随心搭出多种风格；时尚松紧腰，适合各种身材的MM，同时修饰腰部曲线，从视觉上能显腿长，采用大块优质羊毛布料，料足大气，秋季百搭款，值得入手。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638159449.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638159449.jpg\" style=\"\" height=\"80\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638162253.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638162253.jpg\" style=\"\" height=\"92\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638183386.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922638183386.jpg\" style=\"\" height=\"90\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '红色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('38', 'scz_38', '14', '47', '0', '2014春装新款韩版女装花色圆领收腰连衣裙GS3042', '38.jpg', '<p>时尚花色连衣裙，修身版型，宽松下摆，收腰设计。外穿彰显甜美可爱风，打底穿着更显独特。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637783317.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637783317.jpg\" style=\"\" height=\"115\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637828285.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637828285.jpg\" style=\"\" height=\"102\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637857694.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637857694.jpg\" style=\"\" height=\"99\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '蓝色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('36', 'scz_36', '14', '29', '0', '2014春装新款女装娃娃领修身短款连衣裙JN3025', '36.jpg', '<p>此款连衣裙无论做工还是质量都无可挑剔，高档面料，贴身立体剪裁，处处都突显了高档做工。娃娃领设计，优雅时尚，拼接设计更是点睛之笔，可爱甜美，必备单品！</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636981257.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636981257.jpg\" style=\"\" height=\"106\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637002558.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637002558.jpg\" style=\"\" height=\"104\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637024274.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637024274.jpg\" style=\"\" height=\"111\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637094220.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637094220.jpg\" style=\"\" height=\"296\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '蓝色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('37', 'scz_37', '14', '54', '0', '2014春装新款女装弹力显瘦撞色连衣裙HO3074 ', '37.jpg', '<p>此款YY采用优质面料，简洁、干净、百搭。本款连衣裙版型经过设计师的严谨设计！ 具有良好的透气性和悬垂性，穿着飘逸、舒适。强力推荐！</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263743916.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263743916.jpg\" style=\"\" height=\"106\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263745937.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263745937.jpg\" style=\"\" height=\"79\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637473701.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922637473701.jpg\" style=\"\" height=\"121\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '红色', 'S|M');
INSERT INTO `mss_goods` VALUES ('35', 'scz_35', '14', '73', '0', '2014春装款女装圆领七分袖短裙连衣裙JQ3029', '35.jpg', '<p>简洁的版型，百搭款式和颜色设计，这款连衣裙是秋冬的必备单品哦。袖部采用不同面料，凸显材质的对比，侧摆处更有开叉设计，个性时尚。 温馨提示：因受拍摄场景光线等影响，图片颜色会有稍许差异，请以细节颜色为主。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263662423.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263662423.jpg\" style=\"\" height=\"120\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636643555.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636643555.jpg\" style=\"\" height=\"98\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636657356.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636657356.jpg\" style=\"\" height=\"188\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '白色', 'S|M');
INSERT INTO `mss_goods` VALUES ('33', 'scz_33', '16', '39', '0', '2014春装新款女装纯色高腰休闲裤GD2457', '33.jpg', '<p>多色可选，简约的板型穿着大方舒适，随意的搭配衬衫或者毛衣都能展现出你的风采，让你尽情的展现自己。如此百搭的一款短裤你还在犹豫什么呢</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640569225.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640569225.jpg\" style=\"\" height=\"134\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640578898.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640578898.jpg\" style=\"\" height=\"105\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640657078.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640657078.jpg\" style=\"\" height=\"240\" width=\"120\"/></p><p><br/></p>', '', '200.00', '180.00', '2', '2', '1', '2', '1', '1390095236', '0', '红色|蓝色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('34', 'scz_34', '14', '143', '0', '2014春装新款女花色娃娃领七分袖高腰显瘦连衣裙NJ3058', '34.jpg', '<p>款式简洁大方，时尚的图案，此款连衣裙适宜多季节穿着。减龄娃娃领型与拼接设计，腰部系带收腰设计，细微之处体现独特魅力，只要一件，就能让您轻松出彩！ 温馨提示：因受拍摄场景光线等影响，视频与图片颜色会有稍许差异，请以图片和细节颜色为主。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636228504.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636228504.jpg\" style=\"\" height=\"127\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263625763.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263625763.jpg\" style=\"\" height=\"151\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636261303.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922636261303.jpg\" style=\"\" height=\"131\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '2', '2', '1', '2', '1', '0', '0', '黑色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('31', 'scz_31', '12', '200', '0', '2014春装新款女直筒圆领小鹿图案长袖毛衣EV0560', '31.jpg', '<p>麋鹿代表着新生活的开始，寓意深刻。经典的麋鹿图案、多色选择是此款毛衣最大的亮点；此款毛衣面料柔软舒适，贴近肌肤；春秋可以单穿，冬天可以作打底毛衣，保暖性非常好；是MM们衣橱中必不可少的秋冬单品哦～～</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635745320.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635745320.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635769879.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635769879.jpg\" style=\"\" height=\"135\" width=\"120\"/></p><p><br/></p>', '', '0.00', '250.00', '2', '2', '1', '2', '1', '0', '0', '绿色|红色', 'M');
INSERT INTO `mss_goods` VALUES ('30', 'scz_30', '12', '154', '0', '2014春装新款女装连帽纯色中长款套头毛衣女DU0677', '30.jpg', '<p>红色主题，夸张V领，连帽设计，双边口袋，每一处设计都彰显与众不同。衣衣穿着舒适，春秋冬三季穿着皆宜。建议内搭贴身T恤或者薄针织衫来搭配此款衣衣。(图中黑色长袖T恤不是配套的，为模特套拍)</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635295092.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635295092.jpg\" style=\"\" height=\"127\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635316872.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635316872.jpg\" style=\"\" height=\"186\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635335746.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922635335746.jpg\" style=\"\" height=\"108\" width=\"120\"/></p><p><br/></p>', '', '0.00', '250.00', '2', '2', '1', '2', '1', '0', '0', '红色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('29', 'scz_29', '12', '93', '0', '2014春装新款女装圆领套头宽松显瘦打底毛衣LO1207', '29.jpg', '<p>本款为宽松版型，大气的圆领设计，宽松的版型配合收紧的下摆设计凸显女性优雅的身材，时尚的金丝线图案设计时尚休闲，添加的兔绒材质弹力较好，更适合人体穿着，这款美衣绝对是衣橱必备的单品！</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634726641.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634726641.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634747596.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634747596.jpg\" style=\"\" height=\"104\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634789023.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634789023.jpg\" style=\"\" height=\"92\" width=\"120\"/></p><p><br/></p>', '', '0.00', '250.00', '2', '2', '1', '2', '1', '0', '0', '蓝色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('28', 'scz_28', '12', '16', '0', '2014春装新款女装蝙蝠袖钩花翻领长袖毛衣DL150', '28.jpg', '<p>一款非常值得推荐的毛衣，最为流行的蝙蝠型设计，细腻的针织麻花造型，甜美的翻领点缀，加上明亮的颜色，绝对让着你大放异彩。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634291530.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634291530.jpg\" style=\"\" height=\"126\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634322363.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634322363.jpg\" style=\"\" height=\"94\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634412985.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922634412985.jpg\" style=\"\" height=\"109\" width=\"120\"/></p><p><br/></p>', '', '0.00', '250.00', '2', '2', '1', '2', '1', '0', '0', '红色', 'S|M|L');
INSERT INTO `mss_goods` VALUES ('27', 'scz_27', '12', '153', '0', '2014春装新款女装纯色蝙蝠袖开衫毛衣GY0807', '27.jpg', '<p>这款纯色开衫毛衣面料舒适 款式新颖 立体裁剪 三色选择 性感时尚 能够显示女性的婀娜身姿</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633872193.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633872193.jpg\" style=\"\" height=\"104\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263390238.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263390238.jpg\" style=\"\" height=\"103\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633944458.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633944458.jpg\" style=\"\" height=\"106\" width=\"120\"/></p><p><br/></p>', '', '333.00', '234.00', '2', '2', '3', '2', '1', '0', '0', '蓝色', 'S|M');
INSERT INTO `mss_goods` VALUES ('24', 'scz_26', '16', '231', '0', '2014春装新款女装时尚纽扣中腰短裤HG3010', '24.jpg', '<p>整体的结构设计时尚而百搭，简约而又不简单，彰显您不凡的品味；风格时尚优雅，韵味十足，腰间配上一条质感细腰带，将腰线提升，让腿部线条拉长再拉长。采用拼接设计，更加时尚！</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639798260.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639798260.jpg\" style=\"\" height=\"121\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639847533.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639847533.jpg\" style=\"\" height=\"147\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639886858.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639886858.jpg\" style=\"\" height=\"131\" width=\"120\"/></p><p><br/></p>', '', '329.00', '231.00', '2', '2', '1', '2', '1', '1390095236', '0', '绿色|蓝色', 'S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('23', 'scz_25', '16', '321', '0', '2014春装新款女装修身显瘦口袋中腰直筒短裤YQ2085', '23.jpg', '<p>该短裤有异于其它短裤的两个前片装饰，让原本单调的裤型变得更有设计感。双色弧形拼接，让短裤不单调。一字口袋装饰，简约时尚。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633103294.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633103294.jpg\" style=\"\" height=\"92\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633126505.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633126505.jpg\" style=\"\" height=\"88\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633213966.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922633213966.jpg\" style=\"\" height=\"241\" width=\"120\"/></p><p><br/></p>', '', '230.00', '161.00', '2', '2', '3', '2', '1', '0', '0', '绿色|蓝色', 'S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('22', 'scz_24', '16', '29', '0', '2014春装新款女装修身中腰金属装饰牛仔短裤MM2353', '22.jpg', '<p>牛仔短裤是每个季节必须必备的时尚单品，这款短裤，面料柔软透气，舒适得体，板型设计非常独到，裤腿毛边穿也非常漂亮，运用时尚流行元素，经典口袋设计，让你的季节不平凡，更好的展现你的完美身姿。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922632574059.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922632574059.jpg\" style=\"\" height=\"89\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263258802.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263258802.jpg\" style=\"\" height=\"83\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922632629434.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922632629434.jpg\" style=\"\" height=\"94\" width=\"120\"/></p><p><br/></p>', '', '170.00', '119.00', '2', '2', '3', '2', '1', '0', '0', '绿色|蓝色', 'XS|S|M|L');
INSERT INTO `mss_goods` VALUES ('1', 'scz_1', '12', '35', '0', '2014春装新款女V领长袖麻花修身中长款毛衣GJ2173', '1.jpg', '<p>针织毛衣在春秋冬三季都是是个宠儿，穿着舒适，透气性好，零距离接近美丽。纯色和V领也是这款衣服的最大特点，简单舒适大方是它展现出的美丽。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392257566433.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392257566433.jpg\" style=\"\" height=\"91\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922575689620.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922575689620.jpg\" style=\"\" height=\"79\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922575693381.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922575693381.jpg\" style=\"\" height=\"79\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922575758831.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922575758831.jpg\" style=\"\" height=\"76\" width=\"120\"/></p><p><img style=\"width:100%\" src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316699531.jpg\" _src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316699531.jpg\"/><img src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316699876.jpg\" _src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316699876.jpg\"/><img src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316692210.jpg\" _src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316692210.jpg\"/><img src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316699307.jpg\" _src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316699307.jpg\"/><img src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316691383.jpg\" _src=\"/project/mss/Public/ueditor/php/../../Uploads/goods_detail/20140210/13920316691383.jpg\"/></p>', '', '195.00', '138.00', '1', '2', '1', '2', '1', '23232323', '0', '蓝色', 'XS|S|M|L|XXL');
INSERT INTO `mss_goods` VALUES ('3', 'scz_3', '12', '5', '30', '2014春装新款女装大码宽松混织保暖开衫毛衣LC2378', '3.jpg', '<p>经典圆领设计，完美展现颈部白皙线条；时尚的纽扣给人眼前一亮的感觉，自然随性；宽松的版型，对身材零限制；面料穿着舒适，富有轻微弹力，无刺激感，快来选购吧~<br/></p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408357270.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408357270.jpg\" style=\"\" height=\"72\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408369245.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408369245.jpg\" style=\"\" height=\"89\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408389408.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408389408.jpg\" style=\"\" height=\"102\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408445106.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408445106.jpg\" style=\"\" height=\"144\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408464842.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904408464842.jpg\" style=\"\" height=\"98\" width=\"120\"/></p><p><br/></p>', '', '598.00', '419.00', '2', '2', '3', '2', '1', '0', '0', '绿色', 'XS|S|M|L|XL');
INSERT INTO `mss_goods` VALUES ('16', 'scz_18', '15', '19', '0', '2014春装新款中腰修身小脚牛仔裤MU2220', '16.jpg', '<p>这款牛仔裤无论是质量和做工都非常棒，优质面料非常舒适，简洁大方的板型设计，还非常好搭配哦~非常修身，必备单品 是MM潮流混搭比较得心应手的一件美单品哦~绝对不容错过哦~温馨提示：因受拍摄场景光线等影响，图片颜色会有稍许差异，请以细节颜色为主。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628935169.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628935169.jpg\" style=\"\" height=\"91\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628957007.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628957007.jpg\" style=\"\" height=\"128\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629017759.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629017759.jpg\" style=\"\" height=\"148\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392262903849.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392262903849.jpg\" style=\"\" height=\"120\" width=\"120\"/></p><p><br/></p>', '', '0.00', '250.00', '1', '2', '1', '2', '1', '0', '0', '红色', 'XS|S|XXL');
INSERT INTO `mss_goods` VALUES ('17', 'scz_19', '15', '63', '0', '2014春装新女修身水洗磨白小脚牛仔裤TK2171', '17.jpg', '<p>牛仔裤是百搭款，不在乎多，一定要有型、质量要好，本款牛仔裤板型简约时尚，经过严格的水洗、磨白等过程，质量层层把关，面料柔软舒适，小脚设计非常修身，起到很好的显瘦提臀的作用，秋装时尚百搭新款！</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629537714.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629537714.jpg\" style=\"\" height=\"40\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629607924.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629607924.jpg\" style=\"\" height=\"71\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629629437.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629629437.jpg\" style=\"\" height=\"82\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629631046.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629631046.jpg\" style=\"\" height=\"93\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629648791.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922629648791.jpg\" style=\"\" height=\"126\" width=\"120\"/></p><p><br/></p>', '', '0.00', '300.00', '1', '2', '1', '2', '1', '0', '0', '绿色|蓝色|银白色', 'XS|S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('18', 'scz_20', '15', '171', '0', '2014春装新款女装多口袋小脚做旧显瘦牛仔裤JM3088', '18.jpg', '<p>在紧身牛仔裤大行其道的同时，休闲款牛仔裤更显得独立出众，此款裤型宽松，多口袋更显潇洒不羁，时尚街头风格浓郁，经典工艺更突出非凡品质，是你不可缺少的一款哦~</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630211265.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630211265.jpg\" style=\"\" height=\"116\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630227988.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630227988.jpg\" style=\"\" height=\"86\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630259982.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630259982.jpg\" style=\"\" height=\"135\" width=\"120\"/></p><p><br/></p>', '', '0.00', '333.00', '1', '2', '1', '2', '1', '0', '0', '绿色|蓝色', 'XS|S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('19', 'scz_21', '15', '71', '0', '2014春装新款女装浅色小脚牛仔裤长裤GY2196', '19.jpg', '<p>这件牛仔裤采用高档舒适的面料，款式新颖，更显档次，显瘦塑身，适合不同风格的美女，穿着季节长，百搭款，性价比高，绝对值得拥有。尺和厘米的转换：[1尺=33.33厘米，1厘米大概是0.03尺]</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630851974.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630851974.jpg\" style=\"\" height=\"51\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630873295.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630873295.jpg\" style=\"\" height=\"89\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630897140.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922630897140.jpg\" style=\"\" height=\"46\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263097476.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263097476.jpg\" style=\"\" height=\"41\" width=\"120\"/></p><p><br/></p>', '', '0.00', '271.00', '1', '2', '1', '2', '1', '0', '0', '黑色|白色|蓝色|绿色', 'XS|S|M|L');
INSERT INTO `mss_goods` VALUES ('20', 'scz_22', '16', '97', '0', '2014春装新款女装中腰显瘦羊毛毛呢短裤FP0104', '20.jpg', '<p>全新的纯色毛呢短裤，时尚百搭，个性的百褶裙摆，即使是搭配基本款的服饰也能轻易彰显出时髦的知性优雅风格，精选优质面料，柔软舒适，穿着轻松方便。<br/><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922631511574.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922631511574.jpg\" style=\"\" height=\"136\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263153780.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263153780.jpg\" style=\"\" height=\"77\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922631594624.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922631594624.jpg\" style=\"\" height=\"76\" width=\"120\"/></p><p><br/></p>', '', '0.00', '450.00', '1', '2', '1', '2', '1', '0', '0', '绿色|蓝色', 'XS|S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('21', 'scz_23', '16', '23', '0', '2014春装新款女装中腰显瘦格子毛呢短裤LF3110', '21.jpg', '<p>整体的结构设计时尚而百搭，简约而又不简单，彰显您不凡的品味；风格清新活力，韵味十足，腰间配上一条质感细腰带，将腰线提升，让腿部线条拉长再拉长。采用波浪边裁剪，更加时尚！</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922631978590.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922631978590.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263200835.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392263200835.jpg\" style=\"\" height=\"111\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922632119137.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922632119137.jpg\" style=\"\" height=\"239\" width=\"120\"/></p><p><br/></p>', '', '0.00', '499.00', '2', '2', '1', '2', '1', '0', '0', '绿色|蓝色', 'XS|S|M|L');
INSERT INTO `mss_goods` VALUES ('4', 'scz_4', '12', '31', '25', '2014春装新款女装翻领长袖假两件套头毛衣GD3030', '4.jpg', '<p>针织毛衣，黑白简约色彩，不单调，也不会太突兀或太平庸，凸显小女人气质；假两件设计，单穿搭配配饰，知性淑女，打底穿着更显独特。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922590453147.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922590453147.jpg\" style=\"\" height=\"124\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922590469411.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922590469411.jpg\" style=\"\" height=\"141\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904409811922.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140123/13904409811922.jpg\" height=\"86\" width=\"120\"/><br/></p>', '', '0.00', '204.00', '2', '1', '1', '2', '1', '0', '0', '白色', 'XS');
INSERT INTO `mss_goods` VALUES ('5', 'scz_5', '12', '44', '0', '2014春装新款女装纯色蝙蝠袖套头长袖毛衣MM2319', '5.jpg', '<p>时尚毛衣，圆领设计，经典大方，同时修饰脸部曲线，面料舒适，上档次，穿上非常漂亮。这款YY是宽松版型哦，对身材没有太大的束缚，颜色漂亮，百搭，适合你的一款时尚YY，快来选购吧。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591513116.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591513116.jpg\" style=\"\" height=\"121\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591538328.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591538328.jpg\" style=\"\" height=\"104\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591593857.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591593857.jpg\" style=\"\" height=\"124\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591726973.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591726973.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591747660.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922591747660.jpg\" style=\"\" height=\"112\" width=\"120\"/></p><p><br/></p>', '', '0.00', '250.00', '2', '1', '1', '2', '1', '0', '0', '黑色', 'XS|S|XXL');
INSERT INTO `mss_goods` VALUES ('6', 'scz_6', '12', '33', '0', '2014春装新款女装圆领条纹打底长袖毛衣LC2232', '6.jpg', '<p>本款毛衣，红色与黄色，鲜艳的颜色搭配彰显高贵，大条纹很显大气，宽松的版型丝毫不限制体型，独特的下摆收口设计，彰显时尚气息。赶紧选购吧~</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392259237828.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392259237828.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922592444103.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922592444103.jpg\" style=\"\" height=\"101\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392259270675.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392259270675.jpg\" style=\"\" height=\"87\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922592714469.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922592714469.jpg\" style=\"\" height=\"92\" width=\"120\"/></p><p><br/></p>', '', '0.00', '300.00', '2', '1', '1', '2', '1', '0', '0', '银白色', 'XS|S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('7', 'scz_7', '13', '12', '0', '2013冬装新款女装韩版长款纯色双口袋毛呢外套JS3014', '7.jpg', '<p>纯色利落的版型，宽松显瘦，时尚有型。多口袋的装饰设计，大翻领的时尚造型。两侧口袋是新颖的双层多穿设计，百变百搭。靓丽的颜色在寒冷的天气不沉闷，走到哪里都是一道亮丽风景。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392259382423.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392259382423.jpg\" style=\"\" height=\"116\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922593845810.gif\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922593845810.gif\" style=\"\" height=\"94\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922593931482.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922593931482.jpg\" style=\"\" height=\"105\" width=\"120\"/></p><p><br/></p>', '', '0.00', '333.00', '2', '1', '1', '2', '1', '0', '0', '红色|蓝色', 'XS|S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('8', 'scz_8', '13', '131', '17', '2013冬装新款女装宽松纯色九分袖中长款毛呢外套LC3235', '8.jpg', '<p>特殊领口设计，精心设计内扣纽扣，使整件衣服精美无暇。宽松的袖型，不限制身材穿着。百搭的驼色，使你在这个秋冬随意搭配，都可呈现出彩的视觉效果~赶紧选购吧。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594671111.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594671111.jpg\" style=\"\" height=\"99\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594683845.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594683845.jpg\" style=\"\" height=\"108\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594708019.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594708019.jpg\" style=\"\" height=\"72\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594797192.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922594797192.jpg\" style=\"\" height=\"121\" width=\"120\"/></p><p><br/></p>', '', '0.00', '271.00', '2', '1', '1', '2', '1', '0', '0', '花纹色', 'XS|S|M|L');
INSERT INTO `mss_goods` VALUES ('9', 'scz_9', '13', '192', '0', '2013冬装新款女装毛领收腰纯色毛呢外套HO2836', '9.jpg', '<p>成熟稳重的黑色或驼色毛呢外套，色牢度佳，而且，驼色总让人散发出一种含蓄的都市感，时髦而高贵。有黑色给人一种神秘成熟，收敛效果，又显得瘦。设计简洁大方的毛领毛呢外套让您既要风度又不失温度。<br/><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922595264564.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922595264564.jpg\" style=\"\" height=\"79\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922595311011.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922595311011.jpg\" style=\"\" height=\"79\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922595344185.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922595344185.jpg\" style=\"\" height=\"138\" width=\"120\"/></p><p><br/></p>', '', '0.00', '450.00', '2', '1', '1', '2', '1', '0', '0', '棕色', 'XS|S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('10', 'scz_10', '13', '123', '0', '2013冬装新款女纯色修身口袋腰带连帽毛呢外套TK2172', '10.jpg', '<p>本款毛呢外套板型修身显瘦，纯色设计简单时尚，连帽设计也非常实用，双色选择两种时尚，精选优质面料，柔软舒适，手感丰富，保暖性强。<br/><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596536857.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596536857.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596543268.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596543268.jpg\" style=\"\" height=\"135\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596615709.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596615709.jpg\" style=\"\" height=\"91\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596633441.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922596633441.jpg\" style=\"\" height=\"90\" width=\"120\"/></p><p><br/></p>', '', '380.00', '299.00', '1', '1', '1', '2', '1', '0', '0', '黑色|白色|蓝色', 'XS|S|M|L');
INSERT INTO `mss_goods` VALUES ('11', 'scz_11', '13', '97', '0', '2013冬装新款女装中长款拼接修身毛呢外套GW2813', '11.jpg', '<p>成熟稳重的驼色毛呢外套，色牢度佳；腰带装饰，既有收腰效果又增加装饰；设计时尚大方的加厚毛呢外套让您既要风度又不失温度。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639196654.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639196654.jpg\" style=\"\" height=\"124\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639238804.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639238804.jpg\" style=\"\" height=\"129\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639273618.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639273618.jpg\" style=\"\" height=\"93\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639349521.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922639349521.jpg\" style=\"\" height=\"113\" width=\"120\"/></p><p><br/></p>', '', '399.00', '199.00', '2', '1', '1', '2', '1', '1390095236', '0', '紫色', '');
INSERT INTO `mss_goods` VALUES ('32', 'scz_32', '16', '137', '0', '2014春装新款女装时尚拼接加厚中腰短裤HG3019', '32.jpg', '<p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640198088.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640198088.jpg\" style=\"\" height=\"121\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640211897.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640211897.jpg\" style=\"\" height=\"130\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640293161.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922640293161.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><br/></p>', '', '300.00', '240.00', '2', '2', '1', '2', '1', '1390095236', '0', '黑色|白色|蓝色|绿色', 'S|M|L|XL|XXL');
INSERT INTO `mss_goods` VALUES ('2', 'scz_2', '12', '50', '0', '2014春装新款女装蝙蝠袖翻领纯色显瘦毛衣DL0114', '2.jpg', '<p>这款毛衣无论是质量还是版型都是非常的韩版，整体宽松局部紧身的版型，可外翻的大一字领设计，能烘托脸部的柔美线条，修饰肩部的线条，柔软舒适的面料，容易打理.</p><p></p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922586773154.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922586773154.jpg\" style=\"\" height=\"80\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922586794205.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922586794205.jpg\" style=\"\" height=\"123\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922586911769.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922586911769.jpg\" style=\"\" height=\"239\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922587039815.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922587039815.jpg\" style=\"\" height=\"269\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922587068543.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922587068543.jpg\" style=\"\" height=\"290\" width=\"120\"/></p><p><br/></p>', '', '336.00', '243.00', '2', '2', '1', '2', '1', '0', '0', '红色', 'XS|S|M|XXL');
INSERT INTO `mss_goods` VALUES ('12', 'scz_14', '14', '1231', '0', '2014春装新款女修身显瘦打底收腰长袖连衣裙MY0213沐', '12.jpg', '<p>永不过时的灰色，性感的V领，搭配一条长丝巾，韩范儿的时尚大气，立刻就被塑造出来，达人入春必备。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922621789824.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922621789824.jpg\" style=\"\" height=\"156\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922621806227.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922621806227.jpg\" style=\"\" height=\"93\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922621857111.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922621857111.jpg\" style=\"\" height=\"147\" width=\"120\"/></p><p><br/></p>', '', '304.00', '212.00', '2', '2', '3', '2', '1', '0', '0', '绿色', 'XS|S|M|L|XXL');
INSERT INTO `mss_goods` VALUES ('14', 'scz_16', '14', '113', '0', '2014春装新款女装纯色蝙蝠袖针织连衣裙DQ1712', '14.jpg', '<p>自然随性又不过于夸张的独特宽松版型，另一种显瘦的完美体现，腰部同色腰带，垂顺版型简约的气质表现，外传内搭都是不可或缺的单品。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627252738.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627252738.jpg\" style=\"\" height=\"106\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627273085.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627273085.jpg\" style=\"\" height=\"106\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627379500.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627379500.jpg\" style=\"\" height=\"142\" width=\"120\"/></p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627537956.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922627537956.jpg\" style=\"\" height=\"101\" width=\"120\"/></p><p><br/></p>', '', '0.00', '203.00', '1', '2', '1', '2', '1', '0', '0', '绿色|蓝色|银白色', 'XS|S|M|L|XL');
INSERT INTO `mss_goods` VALUES ('15', 'scz_17', '14', '32', '0', '2014春装新款女装翻领套头长袖连衣裙CG3008', '15.jpg', '<p>百搭拼接连衣裙，撞色不单调，翻领设计，加上舒适的面料和简洁的款式，可随心搭配，面料里穿插金丝线与众不同，韩味十足，完美的阐释了韩风休闲感；单穿、打底皆可的百搭利器。温馨提示：因受拍摄场景光线等影响，视频与图片颜色会有稍许差异，请以图片和细节颜色为主</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628261818.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628261818.jpg\" style=\"\" height=\"111\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628276264.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922628276264.jpg\" style=\"\" height=\"125\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392262830734.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392262830734.jpg\" style=\"\" height=\"97\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392262835856.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/1392262835856.jpg\" style=\"\" height=\"142\" width=\"120\"/></p><p><br/></p>', '', '0.00', '204.00', '1', '2', '1', '2', '1', '0', '0', '白色', 'XS');
INSERT INTO `mss_goods` VALUES ('13', 'scz_15', '14', '121', '0', '2014春装新款女装纯色连帽套头长袖连衣裙LZ3205', '13.jpg', '<p>百搭纯棉连衣裙，两色可选，柔软的面料加上简洁的款式，可以随心搭配，素色的设计不会太突兀或太平庸，可单穿，可内搭，适合潮流的MM。</p><p><br/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626524432.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626524432.jpg\" style=\"\" height=\"100\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626534141.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626534141.jpg\" style=\"\" height=\"93\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626582842.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626582842.jpg\" style=\"\" height=\"122\" width=\"120\"/></p><p><img src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626642397.jpg\" _src=\"http://localhost/mss/Public/Uploads/goods_detail/20140213/13922626642397.jpg\" style=\"\" height=\"79\" width=\"120\"/></p><p><br/></p>', '', '0.00', '200.00', '1', '2', '1', '2', '1', '0', '0', '花纹色|白色', 'XS|S|M|XXL');
INSERT INTO `mss_goods` VALUES ('47', 'a432', '21', '100', '0', '魅力无极限', '52fdb28a320a3.jpg', '<p>fdsa<br/></p>', '25,24,23,22,26,13,14,15,16', '323.00', '322.00', '2', '1', '1', '1', '1', '1392358026', '0', '黑色|白色|绿色|粉红色', 'L|M|S|XS|XL');

-- ----------------------------
-- Table structure for mss_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `mss_goods_category`;
CREATE TABLE `mss_goods_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL COMMENT '分类名称',
  `ordernum` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序标识',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '商品分类描述',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示，1显示 2不显示',
  `danwei` varchar(50) NOT NULL DEFAULT '' COMMENT '分类单位',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '级次',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_goods_category
-- ----------------------------
INSERT INTO `mss_goods_category` VALUES ('14', '连衣裙', '0', '10', '', '1', '件', '0,10');
INSERT INTO `mss_goods_category` VALUES ('15', '牛仔裤', '0', '11', '', '1', '件', '0,11');
INSERT INTO `mss_goods_category` VALUES ('16', '短裤', '0', '11', '', '1', '件', '0,11');
INSERT INTO `mss_goods_category` VALUES ('13', '毛呢外套', '0', '9', '', '1', '件', '0,9');
INSERT INTO `mss_goods_category` VALUES ('12', '毛衣', '0', '9', '', '1', '件', '0,9');
INSERT INTO `mss_goods_category` VALUES ('9', '上装', '0', '0', '', '1', '件', '0');
INSERT INTO `mss_goods_category` VALUES ('10', '裙装', '0', '0', '', '1', '件', '0');
INSERT INTO `mss_goods_category` VALUES ('11', '下装', '0', '0', '', '1', '件', '0');
INSERT INTO `mss_goods_category` VALUES ('17', '其他', '0', '0', '', '1', '件', '0');
INSERT INTO `mss_goods_category` VALUES ('18', '乱七八糟', '0', '17', '', '1', '件', '0,17');
INSERT INTO `mss_goods_category` VALUES ('21', '栓朝秦暮', '3', '17', '<p>震荡<br/></p>', '1', '件', '0,17');

-- ----------------------------
-- Table structure for mss_goods_desc
-- ----------------------------
DROP TABLE IF EXISTS `mss_goods_desc`;
CREATE TABLE `mss_goods_desc` (
  `gnum` varchar(30) NOT NULL COMMENT '商品编号',
  `gkeywords` varchar(30) NOT NULL DEFAULT '' COMMENT '商品关键字',
  `gdescription` varchar(100) NOT NULL DEFAULT '' COMMENT '商品描述',
  `ginfo` text NOT NULL COMMENT '商品详细信息',
  UNIQUE KEY `gnum` (`gnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_goods_desc
-- ----------------------------

-- ----------------------------
-- Table structure for mss_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `mss_goods_stock`;
CREATE TABLE `mss_goods_stock` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `gnum` varchar(30) NOT NULL COMMENT '商品编号',
  `gname` varchar(50) NOT NULL COMMENT '商品名称',
  `gtypeid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品规格编号',
  `gtype` varchar(30) NOT NULL DEFAULT '' COMMENT '商品规格',
  `stocknum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '库存数量',
  `glocation` varchar(255) NOT NULL DEFAULT '' COMMENT '商品所在地',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_goods_stock
-- ----------------------------

-- ----------------------------
-- Table structure for mss_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `mss_goods_type`;
CREATE TABLE `mss_goods_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格自增id',
  `classid` int(5) NOT NULL COMMENT '商品分类id',
  `typename` varchar(255) NOT NULL COMMENT '规格名称',
  `danwei` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_goods_type
-- ----------------------------
INSERT INTO `mss_goods_type` VALUES ('19', '5', '尺寸', '尺寸');
INSERT INTO `mss_goods_type` VALUES ('18', '5', '颜色', '颜色');

-- ----------------------------
-- Table structure for mss_goods_vtype
-- ----------------------------
DROP TABLE IF EXISTS `mss_goods_vtype`;
CREATE TABLE `mss_goods_vtype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格值自增id',
  `typeid` int(11) NOT NULL COMMENT '规格id',
  `typevalue` varchar(255) NOT NULL COMMENT '规格的值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_goods_vtype
-- ----------------------------
INSERT INTO `mss_goods_vtype` VALUES ('25', '19', 'L');
INSERT INTO `mss_goods_vtype` VALUES ('24', '19', 'M');
INSERT INTO `mss_goods_vtype` VALUES ('23', '19', 'S');
INSERT INTO `mss_goods_vtype` VALUES ('22', '19', 'XS');
INSERT INTO `mss_goods_vtype` VALUES ('13', '18', '黑色');
INSERT INTO `mss_goods_vtype` VALUES ('14', '18', '白色');
INSERT INTO `mss_goods_vtype` VALUES ('15', '18', '绿色');
INSERT INTO `mss_goods_vtype` VALUES ('16', '18', '粉红色');
INSERT INTO `mss_goods_vtype` VALUES ('17', '18', '蓝色');
INSERT INTO `mss_goods_vtype` VALUES ('18', '18', '棕褐色');
INSERT INTO `mss_goods_vtype` VALUES ('19', '18', '紫色');
INSERT INTO `mss_goods_vtype` VALUES ('20', '18', '银白色');
INSERT INTO `mss_goods_vtype` VALUES ('21', '18', '灰色');
INSERT INTO `mss_goods_vtype` VALUES ('26', '19', 'XL');
INSERT INTO `mss_goods_vtype` VALUES ('27', '19', 'XXL');

-- ----------------------------
-- Table structure for mss_images
-- ----------------------------
DROP TABLE IF EXISTS `mss_images`;
CREATE TABLE `mss_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_images
-- ----------------------------
INSERT INTO `mss_images` VALUES ('14', '11', '111.jpg');
INSERT INTO `mss_images` VALUES ('13', '10', '103.jpg');
INSERT INTO `mss_images` VALUES ('12', '10', '102.jpg');
INSERT INTO `mss_images` VALUES ('11', '10', '101.jpg');
INSERT INTO `mss_images` VALUES ('10', '1', '013.jpg');
INSERT INTO `mss_images` VALUES ('9', '1', '012.jpg');
INSERT INTO `mss_images` VALUES ('8', '1', '011.jpg');
INSERT INTO `mss_images` VALUES ('15', '11', '112.jpg');
INSERT INTO `mss_images` VALUES ('16', '11', '113.jpg');
INSERT INTO `mss_images` VALUES ('17', '12', '121.jpg');
INSERT INTO `mss_images` VALUES ('18', '12', '122.jpg');
INSERT INTO `mss_images` VALUES ('19', '12', '123.jpg');
INSERT INTO `mss_images` VALUES ('20', '13', '131.jpg');
INSERT INTO `mss_images` VALUES ('21', '13', '132.jpg');
INSERT INTO `mss_images` VALUES ('22', '13', '133.jpg');
INSERT INTO `mss_images` VALUES ('23', '14', '141.jpg');
INSERT INTO `mss_images` VALUES ('24', '14', '142.jpg');
INSERT INTO `mss_images` VALUES ('25', '14', '143.jpg');
INSERT INTO `mss_images` VALUES ('26', '15', '151.jpg');
INSERT INTO `mss_images` VALUES ('27', '15', '152.jpg');
INSERT INTO `mss_images` VALUES ('28', '15', '153.jpg');
INSERT INTO `mss_images` VALUES ('29', '17', '171.jpg');
INSERT INTO `mss_images` VALUES ('30', '17', '172.jpg');
INSERT INTO `mss_images` VALUES ('31', '17', '173.jpg');
INSERT INTO `mss_images` VALUES ('32', '16', '161.jpg');
INSERT INTO `mss_images` VALUES ('33', '16', '162.jpg');
INSERT INTO `mss_images` VALUES ('34', '16', '163.jpg');
INSERT INTO `mss_images` VALUES ('35', '42', '52fd8b1beb8ab.jpg');
INSERT INTO `mss_images` VALUES ('36', '43', '52fd8c20e2ad1.jpg');
INSERT INTO `mss_images` VALUES ('37', '44', '52fd8e872eea5.jpg');
INSERT INTO `mss_images` VALUES ('38', '45', '52fd8eca703c4.jpg');
INSERT INTO `mss_images` VALUES ('39', '46', '52fd9f4ceea36.jpg');
INSERT INTO `mss_images` VALUES ('40', '47', '52fdb28a320a3.jpg');

-- ----------------------------
-- Table structure for mss_links
-- ----------------------------
DROP TABLE IF EXISTS `mss_links`;
CREATE TABLE `mss_links` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(30) NOT NULL COMMENT '链接名称',
  `url` varchar(100) NOT NULL COMMENT '地址',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '链接描述信息',
  `showtype` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '显示方式：1 图片 2 文字',
  `logo` varchar(100) NOT NULL DEFAULT 'linkpic.gif' COMMENT '链接对应的图片',
  `ordernum` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '排序标识（0-99）',
  `target` varchar(20) NOT NULL DEFAULT '_blank' COMMENT '链接打开位置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_links
-- ----------------------------
INSERT INTO `mss_links` VALUES ('1', 'IT蚂蚁', 'http://itmayi.com', '这是一个简单的分享', '1', '52dfb5739d864.png', '0', '_blank');
INSERT INTO `mss_links` VALUES ('3', '百度一下', 'http://ww.baidu.com', '', '1', '599c026099010.gif', '0', '_blank');

-- ----------------------------
-- Table structure for mss_mail_template
-- ----------------------------
DROP TABLE IF EXISTS `mss_mail_template`;
CREATE TABLE `mss_mail_template` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '模版标题',
  `content` text NOT NULL COMMENT '模版内容',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模版描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_mail_template
-- ----------------------------
INSERT INTO `mss_mail_template` VALUES ('1', '四重奏模板商店用户激活通知', '<div>\r\n	<div style=\\\"background:orange;font-size:18px;\\\">\r\n		<strong>四重奏</strong> \r\n	</div>\r\n	<div>\r\n		<span style=\\\"font-size:13px;\\\">感谢您注册四重奏模板商店,为了保证您的正常登陆,请您点击下列链接激活您的很账户。</span><br />\r\n<strong>点此激活</strong><br />\r\n<span style=\\\"font-size:13px;\\\">如果按钮无法点击请复制下列地址至浏览器地址栏</span><br />\r\n<a href=\\\"http://localhost/mss/\\\">http://localhost/mss/</a>(此邮件48小时内激活有效)\r\n	</div>\r\n</div>', '用户注册邮件验证');

-- ----------------------------
-- Table structure for mss_model
-- ----------------------------
DROP TABLE IF EXISTS `mss_model`;
CREATE TABLE `mss_model` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtitle` varchar(100) NOT NULL COMMENT '模版名称',
  `mname` varchar(100) NOT NULL COMMENT '模版缩写',
  `pic` varchar(255) NOT NULL DEFAULT '模版1.png' COMMENT '模版缩略图',
  `mdescription` varchar(100) NOT NULL DEFAULT '' COMMENT '模版描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_model
-- ----------------------------
INSERT INTO `mss_model` VALUES ('1', 'MSS模版样式一', 'Index', '模版1.png', 'MSS默认主题一，外观设计简洁、美观、大方，采用当下非常流行的扁平化风格，整站完全使用bootstrap框架进行二次开发，使用栅格结构、响应式布局，兼容所有主流浏览器，主要面向PC端设计，bootst');

-- ----------------------------
-- Table structure for mss_order
-- ----------------------------
DROP TABLE IF EXISTS `mss_order`;
CREATE TABLE `mss_order` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `receiverid` int(11) unsigned NOT NULL COMMENT '收货人ID',
  `ordernum` varchar(30) NOT NULL COMMENT '订单号',
  `gnum` varchar(30) NOT NULL COMMENT '商品编号',
  `paystatus` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '订单状态 1 未付款，2 已付款，3 交易成功 ',
  `orderstatus` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否生成订单 1 确认 2 未确认',
  `sendstatus` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '发货状态 1 已发货 2 未发货',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '完成时间',
  `uremark` varchar(255) NOT NULL DEFAULT '' COMMENT '客户备注',
  `sremark` varchar(255) NOT NULL DEFAULT '' COMMENT '客服备注',
  `buynum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `totalprice` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `realprice` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际价格',
  `gtypeid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品规格ID',
  `gtype` varchar(255) NOT NULL DEFAULT '' COMMENT '商品规格',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '支付方式 1 支付宝 2 财付通 3 网银 其它',
  `dilivery_id` int(11) unsigned NOT NULL COMMENT '配送方式ID',
  `transcosts` decimal(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费',
  `transcomp` varchar(100) NOT NULL DEFAULT '' COMMENT '物流公司',
  `transnum` varchar(30) NOT NULL DEFAULT '' COMMENT '物流单号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_order
-- ----------------------------
INSERT INTO `mss_order` VALUES ('26', '20', '2', 'M20140214141102', '', '1', '1', '1', '1392358300', '0', '0', '0', 'fdsafds', '', '3', '600.00', '411.00', '0', '', '2', '2', '11.00', '', '');
INSERT INTO `mss_order` VALUES ('25', '20', '1', 'M20140214133302', '', '2', '2', '2', '1392356013', '0', '0', '0', 'fa', '', '4', '800.00', '811.00', '0', '', '1', '2', '11.00', '', '');
INSERT INTO `mss_order` VALUES ('24', '20', '1', 'M20140214123302', '', '1', '1', '2', '1392352387', '0', '0', '0', 'fdsa', '', '4', '800.00', '812.00', '0', '', '2', '3', '12.00', '', '');
INSERT INTO `mss_order` VALUES ('27', '13', '11', 'M20160321170603', '', '2', '2', '2', '1458551208', '0', '0', '0', '', '', '1', '300.00', '310.00', '0', '', '1', '1', '10.00', '', '');

-- ----------------------------
-- Table structure for mss_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `mss_order_detail`;
CREATE TABLE `mss_order_detail` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gid` mediumint(8) unsigned NOT NULL COMMENT '订单商品ID',
  `gtypeid` smallint(5) unsigned NOT NULL COMMENT '订单商品规格ID',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `num` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `subtotal` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单小计',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '订单ID',
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否删除，1 删除 2 否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_order_detail
-- ----------------------------
INSERT INTO `mss_order_detail` VALUES ('1', '13', '0', '0.00', '1', '200.00', '10', '2');
INSERT INTO `mss_order_detail` VALUES ('2', '13', '0', '0.00', '1', '200.00', '11', '2');
INSERT INTO `mss_order_detail` VALUES ('3', '13', '0', '0.00', '1', '200.00', '12', '2');
INSERT INTO `mss_order_detail` VALUES ('4', '14', '0', '0.00', '1', '203.00', '12', '2');
INSERT INTO `mss_order_detail` VALUES ('5', '15', '0', '0.00', '1', '204.00', '12', '2');
INSERT INTO `mss_order_detail` VALUES ('6', '13', '0', '0.00', '1', '200.00', '13', '2');
INSERT INTO `mss_order_detail` VALUES ('7', '14', '0', '0.00', '1', '203.00', '13', '2');
INSERT INTO `mss_order_detail` VALUES ('8', '13', '0', '200.00', '1', '200.00', '14', '2');
INSERT INTO `mss_order_detail` VALUES ('9', '14', '0', '13.00', '1', '13.00', '14', '2');
INSERT INTO `mss_order_detail` VALUES ('10', '13', '0', '200.00', '1', '200.00', '15', '2');
INSERT INTO `mss_order_detail` VALUES ('11', '14', '0', '203.00', '1', '203.00', '15', '2');
INSERT INTO `mss_order_detail` VALUES ('12', '13', '0', '100.00', '1', '100.00', '16', '2');
INSERT INTO `mss_order_detail` VALUES ('13', '13', '0', '200.00', '1', '200.00', '18', '2');
INSERT INTO `mss_order_detail` VALUES ('14', '13', '0', '200.00', '1', '200.00', '19', '2');
INSERT INTO `mss_order_detail` VALUES ('15', '18', '0', '333.00', '1', '333.00', '19', '2');
INSERT INTO `mss_order_detail` VALUES ('16', '40', '0', '200.00', '1', '200.00', '20', '2');
INSERT INTO `mss_order_detail` VALUES ('17', '40', '0', '200.00', '1', '200.00', '21', '2');
INSERT INTO `mss_order_detail` VALUES ('18', '38', '0', '200.00', '2', '400.00', '22', '2');
INSERT INTO `mss_order_detail` VALUES ('19', '39', '0', '200.00', '2', '400.00', '22', '2');
INSERT INTO `mss_order_detail` VALUES ('20', '38', '0', '200.00', '2', '400.00', '23', '2');
INSERT INTO `mss_order_detail` VALUES ('21', '39', '0', '100.00', '2', '200.00', '23', '2');
INSERT INTO `mss_order_detail` VALUES ('22', '38', '0', '200.00', '2', '400.00', '24', '2');
INSERT INTO `mss_order_detail` VALUES ('23', '39', '0', '200.00', '2', '400.00', '24', '2');
INSERT INTO `mss_order_detail` VALUES ('24', '38', '0', '200.00', '2', '400.00', '25', '2');
INSERT INTO `mss_order_detail` VALUES ('25', '39', '0', '200.00', '2', '400.00', '25', '2');
INSERT INTO `mss_order_detail` VALUES ('26', '39', '0', '200.00', '1', '200.00', '26', '2');
INSERT INTO `mss_order_detail` VALUES ('27', '40', '0', '100.00', '2', '200.00', '26', '2');
INSERT INTO `mss_order_detail` VALUES ('28', '6', '0', '300.00', '1', '300.00', '27', '2');

-- ----------------------------
-- Table structure for mss_pays
-- ----------------------------
DROP TABLE IF EXISTS `mss_pays`;
CREATE TABLE `mss_pays` (
  `id` int(30) NOT NULL AUTO_INCREMENT COMMENT '支付方式的ID',
  `s_id` int(30) NOT NULL COMMENT '商户ID',
  `name` varchar(60) NOT NULL COMMENT '支付方式的名称',
  `pay_key` varchar(30) NOT NULL COMMENT '支付方式的密钥',
  `pay_logo` varchar(90) NOT NULL COMMENT '支付方式LOGO',
  `status` tinyint(4) NOT NULL COMMENT '开启状态(1表示开启,0表示未开启)',
  `descr` text NOT NULL COMMENT '支付方式的详细说明',
  `shouxu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='支付方式表';

-- ----------------------------
-- Records of mss_pays
-- ----------------------------
INSERT INTO `mss_pays` VALUES ('1', '1', '支付宝', '1234567', '20130929115042_587.gif', '1', '支付宝（中国）网络技术有限公司是国内\r\n\r\n领先的独立第三方支付平台，是阿里巴巴集团的关联公司。', '25');
INSERT INTO `mss_pays` VALUES ('2', '2', '财付通', '123', '20130929153857_766.gif', '1', '财付通是腾讯公司创办的中国领先的在线支付\r\n\r\n平台，致力于为互联网用户和企业提供安全、便捷、专业的在线支付服务。', '0');
INSERT INTO `mss_pays` VALUES ('3', '3', '网银在线', '123456', '20130929153949_542.gif', '1', '网银在线是中国领先的电子支付解决方案\r\n\r\n提供商之一。', '33');
INSERT INTO `mss_pays` VALUES ('4', '4', '预付款支付', '123456', '20130929154034_416.gif', '1', '预存款是客户在您网站上的虚拟资金帐\r\n\r\n户。', '12');
INSERT INTO `mss_pays` VALUES ('5', '5', '快钱', '123456', '20130929154117_273.gif', '0', '快钱是国内领先的独立第三方支付企业，旨在\r\n\r\n为各类企业及个人提供安全、便捷和保密的支付清算与账务服务。', '11');
INSERT INTO `mss_pays` VALUES ('6', '6', 'paypal', '123456', '20130929154157_410.gif', '1', '是全球最大的在线支付平台，同时也是目\r\n\r\n前全球贸易网上支付标准。', '22');

-- ----------------------------
-- Table structure for mss_project
-- ----------------------------
DROP TABLE IF EXISTS `mss_project`;
CREATE TABLE `mss_project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_title` varchar(100) NOT NULL,
  `project_imageurl` varchar(100) NOT NULL,
  `cover_word` varchar(100) NOT NULL,
  `project_price` int(5) NOT NULL,
  `project_stratcity` varchar(50) NOT NULL,
  `prostrat_time` int(10) NOT NULL,
  `proend_time` int(10) NOT NULL,
  `project_lable` varchar(100) NOT NULL,
  `proExhibition_id` int(10) NOT NULL,
  `project_content` int(10) NOT NULL,
  `project_addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_project
-- ----------------------------

-- ----------------------------
-- Table structure for mss_project_images
-- ----------------------------
DROP TABLE IF EXISTS `mss_project_images`;
CREATE TABLE `mss_project_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_project_images
-- ----------------------------

-- ----------------------------
-- Table structure for mss_region
-- ----------------------------
DROP TABLE IF EXISTS `mss_region`;
CREATE TABLE `mss_region` (
  `region_id` smallint(5) DEFAULT NULL,
  `parent_id` smallint(5) DEFAULT NULL,
  `region_name` varchar(360) DEFAULT NULL,
  `region_type` tinyint(1) DEFAULT NULL,
  `agency_id` smallint(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_region
-- ----------------------------
INSERT INTO `mss_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `mss_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `mss_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `mss_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `mss_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `mss_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `mss_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `mss_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `mss_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `mss_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `mss_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `mss_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `mss_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `mss_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `mss_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `mss_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `mss_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `mss_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `mss_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `mss_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `mss_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `mss_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `mss_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `mss_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `mss_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `mss_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `mss_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `mss_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `mss_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `mss_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `mss_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `mss_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `mss_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `mss_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `mss_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `mss_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `mss_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `mss_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `mss_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `mss_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `mss_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `mss_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `mss_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `mss_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `mss_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `mss_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `mss_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `mss_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `mss_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `mss_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `mss_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `mss_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `mss_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `mss_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `mss_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `mss_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `mss_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `mss_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `mss_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `mss_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `mss_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `mss_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `mss_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `mss_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `mss_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `mss_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `mss_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `mss_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `mss_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `mss_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `mss_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `mss_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `mss_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `mss_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `mss_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `mss_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `mss_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `mss_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `mss_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `mss_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `mss_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `mss_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `mss_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `mss_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `mss_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `mss_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `mss_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `mss_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `mss_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `mss_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `mss_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `mss_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `mss_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `mss_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `mss_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `mss_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `mss_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `mss_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `mss_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `mss_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `mss_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `mss_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `mss_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `mss_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `mss_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `mss_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `mss_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `mss_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `mss_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `mss_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `mss_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `mss_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `mss_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `mss_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `mss_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `mss_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `mss_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `mss_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `mss_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `mss_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `mss_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `mss_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `mss_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `mss_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `mss_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `mss_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `mss_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `mss_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `mss_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `mss_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `mss_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `mss_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `mss_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `mss_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `mss_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `mss_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `mss_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `mss_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `mss_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `mss_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `mss_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `mss_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `mss_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `mss_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `mss_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `mss_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `mss_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `mss_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `mss_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `mss_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `mss_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `mss_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `mss_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `mss_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `mss_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `mss_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `mss_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `mss_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `mss_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `mss_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `mss_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `mss_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `mss_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `mss_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `mss_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `mss_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `mss_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `mss_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `mss_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `mss_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `mss_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `mss_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `mss_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `mss_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `mss_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `mss_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `mss_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `mss_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `mss_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `mss_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `mss_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `mss_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `mss_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `mss_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `mss_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `mss_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `mss_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `mss_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `mss_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `mss_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `mss_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `mss_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `mss_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `mss_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `mss_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `mss_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `mss_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `mss_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `mss_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `mss_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `mss_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `mss_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `mss_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `mss_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `mss_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `mss_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `mss_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `mss_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `mss_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `mss_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `mss_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `mss_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `mss_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `mss_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `mss_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `mss_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `mss_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `mss_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `mss_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `mss_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `mss_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `mss_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `mss_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `mss_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `mss_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `mss_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `mss_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `mss_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `mss_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `mss_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `mss_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `mss_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `mss_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `mss_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `mss_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `mss_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `mss_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `mss_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `mss_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `mss_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `mss_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `mss_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `mss_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `mss_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `mss_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `mss_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `mss_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `mss_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `mss_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `mss_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `mss_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `mss_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `mss_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `mss_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `mss_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `mss_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `mss_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `mss_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `mss_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `mss_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `mss_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `mss_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `mss_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `mss_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `mss_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `mss_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `mss_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `mss_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `mss_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `mss_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `mss_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `mss_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `mss_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `mss_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `mss_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `mss_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `mss_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `mss_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `mss_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `mss_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `mss_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `mss_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `mss_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `mss_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `mss_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `mss_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `mss_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `mss_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `mss_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `mss_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `mss_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `mss_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `mss_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `mss_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `mss_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `mss_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `mss_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `mss_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `mss_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `mss_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `mss_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `mss_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `mss_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `mss_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `mss_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `mss_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `mss_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `mss_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `mss_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `mss_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `mss_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `mss_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `mss_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `mss_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `mss_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `mss_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `mss_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `mss_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `mss_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `mss_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `mss_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `mss_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `mss_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `mss_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `mss_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `mss_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `mss_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `mss_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `mss_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `mss_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `mss_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `mss_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `mss_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `mss_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `mss_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `mss_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `mss_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `mss_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `mss_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `mss_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `mss_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `mss_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `mss_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `mss_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `mss_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `mss_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `mss_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `mss_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `mss_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `mss_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `mss_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `mss_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `mss_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `mss_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `mss_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `mss_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `mss_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `mss_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `mss_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `mss_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `mss_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `mss_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `mss_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `mss_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `mss_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `mss_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `mss_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `mss_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `mss_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `mss_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `mss_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `mss_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `mss_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `mss_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `mss_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `mss_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `mss_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `mss_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `mss_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `mss_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `mss_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `mss_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `mss_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `mss_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `mss_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `mss_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `mss_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `mss_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `mss_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `mss_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `mss_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `mss_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `mss_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `mss_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `mss_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `mss_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `mss_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `mss_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `mss_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `mss_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `mss_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `mss_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `mss_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `mss_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `mss_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `mss_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `mss_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `mss_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `mss_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `mss_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `mss_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `mss_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `mss_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `mss_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `mss_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `mss_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `mss_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `mss_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `mss_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `mss_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `mss_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `mss_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `mss_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `mss_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `mss_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `mss_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `mss_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `mss_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `mss_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `mss_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `mss_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `mss_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `mss_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `mss_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `mss_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `mss_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `mss_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `mss_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `mss_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `mss_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `mss_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `mss_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `mss_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `mss_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `mss_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `mss_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `mss_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `mss_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `mss_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `mss_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `mss_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `mss_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `mss_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `mss_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `mss_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `mss_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `mss_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `mss_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `mss_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `mss_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `mss_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `mss_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `mss_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `mss_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `mss_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `mss_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `mss_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `mss_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `mss_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `mss_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `mss_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `mss_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `mss_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `mss_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `mss_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `mss_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `mss_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `mss_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `mss_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `mss_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `mss_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `mss_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `mss_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `mss_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `mss_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `mss_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `mss_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `mss_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `mss_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `mss_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `mss_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `mss_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `mss_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `mss_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `mss_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `mss_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `mss_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `mss_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `mss_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `mss_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `mss_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `mss_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `mss_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `mss_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `mss_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `mss_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `mss_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `mss_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `mss_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `mss_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `mss_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `mss_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `mss_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `mss_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `mss_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `mss_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `mss_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `mss_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `mss_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `mss_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `mss_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `mss_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `mss_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `mss_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `mss_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `mss_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `mss_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `mss_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `mss_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `mss_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `mss_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `mss_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `mss_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `mss_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `mss_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `mss_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `mss_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `mss_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `mss_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `mss_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `mss_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `mss_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `mss_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `mss_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `mss_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `mss_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `mss_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `mss_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `mss_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `mss_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `mss_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `mss_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `mss_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `mss_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `mss_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `mss_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `mss_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `mss_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `mss_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `mss_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `mss_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `mss_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `mss_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `mss_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `mss_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `mss_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `mss_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `mss_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `mss_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `mss_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `mss_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `mss_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `mss_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `mss_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `mss_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `mss_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `mss_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `mss_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `mss_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `mss_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `mss_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `mss_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `mss_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `mss_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `mss_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `mss_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `mss_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `mss_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `mss_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `mss_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `mss_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `mss_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `mss_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `mss_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `mss_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `mss_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `mss_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `mss_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `mss_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `mss_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `mss_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `mss_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `mss_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `mss_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `mss_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `mss_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `mss_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `mss_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `mss_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `mss_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `mss_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `mss_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `mss_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `mss_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `mss_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `mss_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `mss_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `mss_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `mss_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `mss_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `mss_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `mss_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `mss_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `mss_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `mss_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `mss_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `mss_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `mss_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `mss_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `mss_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `mss_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `mss_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `mss_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `mss_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `mss_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `mss_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `mss_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `mss_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `mss_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `mss_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `mss_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `mss_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `mss_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `mss_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `mss_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `mss_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `mss_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `mss_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `mss_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `mss_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `mss_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `mss_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `mss_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `mss_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `mss_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `mss_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `mss_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `mss_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `mss_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `mss_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `mss_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `mss_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `mss_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `mss_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `mss_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `mss_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `mss_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `mss_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `mss_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `mss_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `mss_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `mss_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `mss_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `mss_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `mss_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `mss_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `mss_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `mss_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `mss_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `mss_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `mss_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `mss_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `mss_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `mss_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `mss_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `mss_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `mss_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `mss_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `mss_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `mss_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `mss_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `mss_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `mss_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `mss_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `mss_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `mss_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `mss_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `mss_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `mss_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `mss_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `mss_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `mss_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `mss_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `mss_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `mss_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `mss_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `mss_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `mss_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `mss_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `mss_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `mss_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `mss_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `mss_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `mss_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `mss_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `mss_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `mss_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `mss_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `mss_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `mss_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `mss_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `mss_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `mss_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `mss_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `mss_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `mss_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `mss_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `mss_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `mss_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `mss_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `mss_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `mss_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `mss_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `mss_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `mss_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `mss_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `mss_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `mss_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `mss_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `mss_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `mss_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `mss_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `mss_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `mss_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `mss_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `mss_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `mss_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `mss_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `mss_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `mss_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `mss_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `mss_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `mss_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `mss_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `mss_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `mss_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `mss_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `mss_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `mss_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `mss_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `mss_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `mss_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `mss_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `mss_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `mss_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `mss_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `mss_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `mss_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `mss_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `mss_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `mss_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `mss_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `mss_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `mss_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `mss_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `mss_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `mss_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `mss_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `mss_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `mss_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `mss_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `mss_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `mss_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `mss_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `mss_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `mss_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `mss_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `mss_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `mss_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `mss_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `mss_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `mss_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `mss_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `mss_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `mss_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `mss_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `mss_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `mss_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `mss_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `mss_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `mss_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `mss_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `mss_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `mss_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `mss_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `mss_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `mss_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `mss_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `mss_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `mss_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `mss_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `mss_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `mss_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `mss_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `mss_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `mss_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `mss_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `mss_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `mss_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `mss_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `mss_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `mss_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `mss_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `mss_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `mss_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `mss_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `mss_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `mss_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `mss_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `mss_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `mss_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `mss_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `mss_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `mss_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `mss_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `mss_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `mss_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `mss_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `mss_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `mss_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `mss_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `mss_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `mss_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `mss_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `mss_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `mss_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `mss_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `mss_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `mss_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `mss_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `mss_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `mss_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `mss_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `mss_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `mss_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `mss_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `mss_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `mss_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `mss_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `mss_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `mss_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `mss_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `mss_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `mss_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `mss_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `mss_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `mss_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `mss_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `mss_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `mss_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `mss_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `mss_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `mss_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `mss_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `mss_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `mss_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `mss_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `mss_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `mss_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `mss_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `mss_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `mss_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `mss_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `mss_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `mss_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `mss_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `mss_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `mss_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `mss_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `mss_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `mss_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `mss_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `mss_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `mss_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `mss_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `mss_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `mss_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `mss_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `mss_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `mss_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `mss_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `mss_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `mss_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `mss_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `mss_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `mss_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `mss_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `mss_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `mss_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `mss_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `mss_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `mss_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `mss_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `mss_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `mss_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `mss_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `mss_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `mss_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `mss_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `mss_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `mss_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `mss_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `mss_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `mss_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `mss_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `mss_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `mss_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `mss_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `mss_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `mss_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `mss_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `mss_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `mss_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `mss_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `mss_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `mss_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `mss_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `mss_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `mss_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `mss_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `mss_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `mss_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `mss_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `mss_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `mss_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `mss_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `mss_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `mss_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `mss_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `mss_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `mss_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `mss_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `mss_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `mss_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `mss_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `mss_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `mss_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `mss_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `mss_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `mss_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `mss_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `mss_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `mss_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `mss_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `mss_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `mss_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `mss_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `mss_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `mss_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `mss_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `mss_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `mss_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `mss_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `mss_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `mss_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `mss_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `mss_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `mss_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `mss_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `mss_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `mss_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `mss_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `mss_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `mss_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `mss_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `mss_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `mss_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `mss_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `mss_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `mss_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `mss_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `mss_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `mss_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `mss_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `mss_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `mss_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `mss_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `mss_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `mss_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `mss_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `mss_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `mss_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `mss_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `mss_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `mss_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `mss_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `mss_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `mss_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `mss_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `mss_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `mss_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `mss_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `mss_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `mss_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `mss_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `mss_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `mss_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `mss_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `mss_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `mss_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `mss_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `mss_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `mss_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `mss_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `mss_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `mss_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `mss_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `mss_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `mss_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `mss_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `mss_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `mss_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `mss_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `mss_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `mss_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `mss_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `mss_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `mss_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `mss_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `mss_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `mss_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `mss_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `mss_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `mss_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `mss_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `mss_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `mss_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `mss_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `mss_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `mss_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `mss_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `mss_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `mss_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `mss_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `mss_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `mss_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `mss_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `mss_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `mss_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `mss_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `mss_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `mss_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `mss_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `mss_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `mss_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `mss_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `mss_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `mss_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `mss_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `mss_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `mss_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `mss_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `mss_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `mss_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `mss_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `mss_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `mss_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `mss_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `mss_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `mss_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `mss_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `mss_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `mss_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `mss_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `mss_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `mss_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `mss_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `mss_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `mss_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `mss_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `mss_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `mss_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `mss_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `mss_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `mss_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `mss_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `mss_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `mss_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `mss_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `mss_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `mss_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `mss_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `mss_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `mss_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `mss_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `mss_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `mss_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `mss_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `mss_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `mss_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `mss_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `mss_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `mss_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `mss_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `mss_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `mss_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `mss_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `mss_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `mss_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `mss_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `mss_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `mss_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `mss_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `mss_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `mss_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `mss_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `mss_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `mss_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `mss_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `mss_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `mss_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `mss_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `mss_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `mss_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `mss_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `mss_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `mss_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `mss_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `mss_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `mss_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `mss_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `mss_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `mss_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `mss_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `mss_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `mss_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `mss_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `mss_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `mss_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `mss_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `mss_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `mss_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `mss_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `mss_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `mss_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `mss_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `mss_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `mss_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `mss_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `mss_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `mss_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `mss_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `mss_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `mss_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `mss_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `mss_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `mss_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `mss_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `mss_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `mss_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `mss_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `mss_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `mss_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `mss_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `mss_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `mss_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `mss_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `mss_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `mss_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `mss_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `mss_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `mss_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `mss_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `mss_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `mss_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `mss_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `mss_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `mss_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `mss_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `mss_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `mss_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `mss_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `mss_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `mss_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `mss_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `mss_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `mss_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `mss_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `mss_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `mss_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `mss_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `mss_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `mss_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `mss_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `mss_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `mss_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `mss_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `mss_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `mss_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `mss_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `mss_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `mss_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `mss_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `mss_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `mss_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `mss_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `mss_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `mss_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `mss_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `mss_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `mss_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `mss_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `mss_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `mss_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `mss_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `mss_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `mss_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `mss_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `mss_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `mss_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `mss_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `mss_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `mss_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `mss_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `mss_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `mss_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `mss_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `mss_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `mss_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `mss_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `mss_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `mss_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `mss_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `mss_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `mss_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `mss_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `mss_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `mss_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `mss_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `mss_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `mss_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `mss_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `mss_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `mss_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `mss_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `mss_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `mss_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `mss_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `mss_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `mss_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `mss_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `mss_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `mss_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `mss_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `mss_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `mss_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `mss_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `mss_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `mss_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `mss_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `mss_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `mss_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `mss_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `mss_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `mss_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `mss_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `mss_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `mss_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `mss_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `mss_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `mss_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `mss_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `mss_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `mss_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `mss_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `mss_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `mss_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `mss_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `mss_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `mss_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `mss_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `mss_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `mss_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `mss_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `mss_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `mss_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `mss_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `mss_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `mss_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `mss_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `mss_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `mss_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `mss_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `mss_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `mss_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `mss_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `mss_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `mss_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `mss_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `mss_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `mss_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `mss_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `mss_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `mss_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `mss_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `mss_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `mss_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `mss_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `mss_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `mss_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `mss_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `mss_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `mss_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `mss_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `mss_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `mss_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `mss_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `mss_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `mss_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `mss_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `mss_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `mss_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `mss_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `mss_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `mss_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `mss_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `mss_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `mss_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `mss_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `mss_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `mss_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `mss_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `mss_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `mss_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `mss_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `mss_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `mss_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `mss_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `mss_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `mss_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `mss_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `mss_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `mss_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `mss_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `mss_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `mss_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `mss_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `mss_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `mss_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `mss_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `mss_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `mss_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `mss_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `mss_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `mss_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `mss_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `mss_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `mss_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `mss_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `mss_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `mss_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `mss_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `mss_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `mss_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `mss_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `mss_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `mss_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `mss_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `mss_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `mss_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `mss_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `mss_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `mss_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `mss_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `mss_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `mss_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `mss_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `mss_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `mss_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `mss_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `mss_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `mss_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `mss_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `mss_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `mss_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `mss_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `mss_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `mss_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `mss_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `mss_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `mss_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `mss_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `mss_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `mss_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `mss_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `mss_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `mss_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `mss_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `mss_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `mss_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `mss_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `mss_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `mss_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `mss_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `mss_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `mss_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `mss_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `mss_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `mss_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `mss_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `mss_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `mss_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `mss_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `mss_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `mss_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `mss_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `mss_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `mss_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `mss_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `mss_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `mss_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `mss_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `mss_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `mss_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `mss_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `mss_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `mss_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `mss_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `mss_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `mss_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `mss_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `mss_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `mss_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `mss_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `mss_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `mss_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `mss_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `mss_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `mss_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `mss_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `mss_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `mss_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `mss_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `mss_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `mss_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `mss_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `mss_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `mss_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `mss_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `mss_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `mss_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `mss_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `mss_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `mss_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `mss_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `mss_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `mss_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `mss_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `mss_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `mss_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `mss_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `mss_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `mss_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `mss_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `mss_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `mss_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `mss_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `mss_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `mss_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `mss_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `mss_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `mss_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `mss_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `mss_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `mss_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `mss_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `mss_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `mss_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `mss_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `mss_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `mss_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `mss_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `mss_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `mss_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `mss_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `mss_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `mss_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `mss_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `mss_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `mss_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `mss_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `mss_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `mss_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `mss_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `mss_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `mss_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `mss_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `mss_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `mss_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `mss_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `mss_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `mss_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `mss_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `mss_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `mss_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `mss_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `mss_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `mss_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `mss_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `mss_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `mss_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `mss_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `mss_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `mss_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `mss_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `mss_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `mss_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `mss_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `mss_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `mss_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `mss_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `mss_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `mss_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `mss_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `mss_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `mss_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `mss_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `mss_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `mss_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `mss_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `mss_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `mss_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `mss_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `mss_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `mss_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `mss_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `mss_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `mss_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `mss_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `mss_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `mss_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `mss_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `mss_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `mss_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `mss_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `mss_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `mss_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `mss_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `mss_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `mss_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `mss_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `mss_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `mss_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `mss_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `mss_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `mss_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `mss_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `mss_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `mss_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `mss_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `mss_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `mss_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `mss_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `mss_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `mss_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `mss_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `mss_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `mss_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `mss_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `mss_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `mss_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `mss_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `mss_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `mss_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `mss_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `mss_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `mss_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `mss_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `mss_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `mss_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `mss_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `mss_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `mss_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `mss_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `mss_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `mss_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `mss_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `mss_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `mss_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `mss_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `mss_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `mss_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `mss_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `mss_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `mss_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `mss_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `mss_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `mss_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `mss_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `mss_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `mss_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `mss_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `mss_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `mss_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `mss_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `mss_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `mss_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `mss_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `mss_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `mss_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `mss_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `mss_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `mss_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `mss_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `mss_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `mss_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `mss_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `mss_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `mss_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `mss_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `mss_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `mss_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `mss_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `mss_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `mss_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `mss_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `mss_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `mss_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `mss_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `mss_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `mss_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `mss_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `mss_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `mss_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `mss_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `mss_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `mss_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `mss_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `mss_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `mss_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `mss_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `mss_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `mss_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `mss_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `mss_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `mss_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `mss_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `mss_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `mss_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `mss_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `mss_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `mss_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `mss_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `mss_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `mss_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `mss_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `mss_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `mss_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `mss_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `mss_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `mss_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `mss_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `mss_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `mss_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `mss_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `mss_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `mss_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `mss_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `mss_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `mss_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `mss_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `mss_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `mss_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `mss_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `mss_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `mss_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `mss_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `mss_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `mss_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `mss_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `mss_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `mss_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `mss_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `mss_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `mss_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `mss_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `mss_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `mss_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `mss_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `mss_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `mss_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `mss_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `mss_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `mss_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `mss_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `mss_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `mss_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `mss_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `mss_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `mss_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `mss_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `mss_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `mss_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `mss_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `mss_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `mss_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `mss_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `mss_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `mss_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `mss_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `mss_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `mss_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `mss_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `mss_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `mss_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `mss_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `mss_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `mss_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `mss_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `mss_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `mss_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `mss_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `mss_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `mss_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `mss_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `mss_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `mss_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `mss_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `mss_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `mss_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `mss_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `mss_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `mss_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `mss_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `mss_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `mss_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `mss_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `mss_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `mss_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `mss_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `mss_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `mss_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `mss_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `mss_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `mss_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `mss_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `mss_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `mss_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `mss_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `mss_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `mss_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `mss_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `mss_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `mss_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `mss_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `mss_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `mss_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `mss_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `mss_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `mss_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `mss_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `mss_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `mss_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `mss_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `mss_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `mss_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `mss_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `mss_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `mss_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `mss_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `mss_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `mss_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `mss_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `mss_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `mss_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `mss_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `mss_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `mss_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `mss_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `mss_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `mss_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `mss_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `mss_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `mss_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `mss_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `mss_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `mss_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `mss_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `mss_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `mss_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `mss_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `mss_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `mss_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `mss_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `mss_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `mss_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `mss_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `mss_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `mss_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `mss_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `mss_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `mss_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `mss_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `mss_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `mss_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `mss_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `mss_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `mss_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `mss_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `mss_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `mss_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `mss_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `mss_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `mss_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `mss_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `mss_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `mss_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `mss_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `mss_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `mss_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `mss_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `mss_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `mss_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `mss_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `mss_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `mss_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `mss_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `mss_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `mss_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `mss_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `mss_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `mss_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `mss_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `mss_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `mss_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `mss_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `mss_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `mss_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `mss_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `mss_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `mss_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `mss_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `mss_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `mss_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `mss_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `mss_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `mss_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `mss_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `mss_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `mss_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `mss_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `mss_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `mss_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `mss_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `mss_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `mss_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `mss_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `mss_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `mss_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `mss_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `mss_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `mss_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `mss_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `mss_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `mss_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `mss_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `mss_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `mss_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `mss_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `mss_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `mss_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `mss_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `mss_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `mss_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `mss_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `mss_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `mss_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `mss_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `mss_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `mss_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `mss_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `mss_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `mss_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `mss_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `mss_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `mss_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `mss_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `mss_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `mss_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `mss_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `mss_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `mss_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `mss_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `mss_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `mss_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `mss_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `mss_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `mss_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `mss_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `mss_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `mss_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `mss_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `mss_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `mss_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `mss_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `mss_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `mss_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `mss_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `mss_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `mss_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `mss_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `mss_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `mss_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `mss_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `mss_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `mss_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `mss_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `mss_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `mss_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `mss_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `mss_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `mss_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `mss_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `mss_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `mss_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `mss_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `mss_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `mss_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `mss_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `mss_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `mss_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `mss_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `mss_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `mss_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `mss_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `mss_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `mss_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `mss_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `mss_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `mss_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `mss_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `mss_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `mss_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `mss_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `mss_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `mss_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `mss_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `mss_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `mss_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `mss_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `mss_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `mss_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `mss_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `mss_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `mss_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `mss_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `mss_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `mss_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `mss_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `mss_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `mss_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `mss_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `mss_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `mss_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `mss_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `mss_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `mss_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `mss_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `mss_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `mss_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `mss_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `mss_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `mss_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `mss_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `mss_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `mss_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `mss_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `mss_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `mss_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `mss_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `mss_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `mss_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `mss_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `mss_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `mss_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `mss_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `mss_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `mss_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `mss_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `mss_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `mss_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `mss_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `mss_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `mss_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `mss_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `mss_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `mss_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `mss_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `mss_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `mss_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `mss_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `mss_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `mss_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `mss_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `mss_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `mss_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `mss_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `mss_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `mss_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `mss_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `mss_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `mss_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `mss_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `mss_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `mss_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `mss_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `mss_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `mss_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `mss_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `mss_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `mss_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `mss_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `mss_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `mss_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `mss_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `mss_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `mss_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `mss_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `mss_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `mss_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `mss_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `mss_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `mss_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `mss_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `mss_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `mss_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `mss_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `mss_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `mss_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `mss_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `mss_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `mss_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `mss_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `mss_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `mss_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `mss_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `mss_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `mss_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `mss_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `mss_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `mss_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `mss_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `mss_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `mss_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `mss_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `mss_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `mss_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `mss_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `mss_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `mss_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `mss_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `mss_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `mss_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `mss_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `mss_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `mss_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `mss_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `mss_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `mss_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `mss_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `mss_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `mss_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `mss_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `mss_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `mss_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `mss_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `mss_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `mss_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `mss_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `mss_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `mss_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `mss_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `mss_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `mss_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `mss_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `mss_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `mss_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `mss_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `mss_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `mss_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `mss_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `mss_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `mss_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `mss_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `mss_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `mss_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `mss_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `mss_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `mss_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `mss_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `mss_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `mss_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `mss_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `mss_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `mss_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `mss_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `mss_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `mss_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `mss_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `mss_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `mss_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `mss_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `mss_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `mss_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `mss_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `mss_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `mss_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `mss_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `mss_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `mss_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `mss_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `mss_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `mss_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `mss_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `mss_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `mss_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `mss_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `mss_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `mss_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `mss_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `mss_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `mss_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `mss_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `mss_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `mss_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `mss_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `mss_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `mss_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `mss_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `mss_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `mss_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `mss_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `mss_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `mss_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `mss_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `mss_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `mss_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `mss_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `mss_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `mss_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `mss_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `mss_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `mss_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `mss_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `mss_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `mss_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `mss_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `mss_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `mss_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `mss_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `mss_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `mss_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `mss_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `mss_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `mss_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `mss_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `mss_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `mss_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `mss_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `mss_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `mss_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `mss_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `mss_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `mss_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `mss_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `mss_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `mss_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `mss_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `mss_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `mss_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `mss_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `mss_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `mss_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `mss_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `mss_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `mss_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `mss_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `mss_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `mss_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `mss_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `mss_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `mss_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `mss_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `mss_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `mss_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `mss_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `mss_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `mss_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `mss_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `mss_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `mss_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `mss_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `mss_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `mss_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `mss_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `mss_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `mss_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `mss_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `mss_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `mss_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `mss_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `mss_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `mss_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `mss_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `mss_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `mss_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `mss_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `mss_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `mss_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `mss_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `mss_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `mss_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `mss_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `mss_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `mss_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `mss_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `mss_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `mss_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `mss_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `mss_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `mss_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `mss_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `mss_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `mss_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `mss_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `mss_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `mss_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `mss_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `mss_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `mss_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `mss_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `mss_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `mss_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `mss_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `mss_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `mss_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `mss_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `mss_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `mss_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `mss_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `mss_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `mss_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `mss_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `mss_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `mss_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `mss_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `mss_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `mss_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `mss_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `mss_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `mss_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `mss_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `mss_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `mss_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `mss_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `mss_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `mss_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `mss_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `mss_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `mss_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `mss_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `mss_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `mss_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `mss_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `mss_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `mss_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `mss_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `mss_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `mss_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `mss_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `mss_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `mss_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `mss_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `mss_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `mss_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `mss_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `mss_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `mss_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `mss_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `mss_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `mss_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `mss_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `mss_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `mss_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `mss_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `mss_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `mss_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `mss_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `mss_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `mss_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `mss_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `mss_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `mss_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `mss_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `mss_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `mss_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `mss_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `mss_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `mss_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `mss_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `mss_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `mss_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `mss_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `mss_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `mss_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `mss_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `mss_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `mss_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `mss_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `mss_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `mss_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `mss_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `mss_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `mss_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `mss_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `mss_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `mss_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `mss_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `mss_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `mss_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `mss_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `mss_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `mss_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `mss_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `mss_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `mss_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `mss_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `mss_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `mss_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `mss_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `mss_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `mss_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `mss_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `mss_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `mss_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `mss_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `mss_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `mss_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `mss_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `mss_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `mss_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `mss_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `mss_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `mss_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `mss_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `mss_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `mss_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `mss_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `mss_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `mss_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `mss_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `mss_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `mss_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `mss_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `mss_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `mss_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `mss_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `mss_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `mss_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `mss_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `mss_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `mss_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `mss_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `mss_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `mss_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `mss_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `mss_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `mss_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `mss_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `mss_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `mss_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `mss_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `mss_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `mss_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `mss_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `mss_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `mss_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `mss_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `mss_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `mss_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `mss_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `mss_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `mss_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `mss_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `mss_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `mss_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `mss_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `mss_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `mss_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `mss_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `mss_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `mss_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `mss_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `mss_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `mss_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `mss_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `mss_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `mss_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `mss_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `mss_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `mss_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `mss_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `mss_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `mss_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `mss_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `mss_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `mss_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `mss_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `mss_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `mss_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `mss_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `mss_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `mss_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `mss_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `mss_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `mss_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `mss_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `mss_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `mss_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `mss_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `mss_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `mss_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `mss_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `mss_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `mss_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `mss_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `mss_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `mss_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `mss_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `mss_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `mss_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `mss_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `mss_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `mss_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `mss_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `mss_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `mss_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `mss_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `mss_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `mss_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `mss_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `mss_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `mss_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `mss_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `mss_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `mss_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `mss_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `mss_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `mss_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `mss_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `mss_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `mss_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `mss_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `mss_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `mss_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `mss_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `mss_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `mss_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `mss_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `mss_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `mss_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `mss_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `mss_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `mss_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `mss_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `mss_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `mss_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `mss_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `mss_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `mss_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `mss_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `mss_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `mss_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `mss_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `mss_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `mss_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `mss_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `mss_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `mss_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `mss_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `mss_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `mss_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `mss_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `mss_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `mss_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `mss_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `mss_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `mss_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `mss_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `mss_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `mss_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `mss_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `mss_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `mss_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `mss_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `mss_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `mss_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `mss_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `mss_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `mss_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `mss_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `mss_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `mss_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `mss_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `mss_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `mss_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `mss_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `mss_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `mss_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `mss_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for mss_special
-- ----------------------------
DROP TABLE IF EXISTS `mss_special`;
CREATE TABLE `mss_special` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(50) NOT NULL,
  `cover_picture` varchar(155) NOT NULL,
  `

home_title` varchar(50) NOT NULL,
  `home_price` int(10) NOT NULL,
  `special_profile` varchar(255) NOT NULL,
  `special_price` int(10) NOT NULL,
  `start_city` varchar(50) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `label_name` varchar(50) NOT NULL,
  `exhibition_id` int(10) NOT NULL,
  `plate_content` varchar(255) NOT NULL,
  `release_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_special
-- ----------------------------
INSERT INTO `mss_special` VALUES ('1', '111111111', '59a7be9f85a6a.jpg', '', '2147483647', '555555555555', '2147483647', '777777777777', '1455654522', '122222222', '75544333333', '0', '', '0');
INSERT INTO `mss_special` VALUES ('2', '魔鬼深林', '59ae6f658cda0.jpg', '', '4555', '', '999', '北京', '2017', '2017', '国际', '0', '<p>拉丁生活的洋溢</p>', '0');

-- ----------------------------
-- Table structure for mss_special_images
-- ----------------------------
DROP TABLE IF EXISTS `mss_special_images`;
CREATE TABLE `mss_special_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_special_images
-- ----------------------------
INSERT INTO `mss_special_images` VALUES ('1', '1', '59a7be9f85a6a.jpg');
INSERT INTO `mss_special_images` VALUES ('2', '1', '59a7be9f8a88b.jpg');
INSERT INTO `mss_special_images` VALUES ('3', '1', '59a7be9f8ac73.jpg');
INSERT INTO `mss_special_images` VALUES ('4', '2', '59ae6f658cda0.jpg');
INSERT INTO `mss_special_images` VALUES ('5', '2', '59ae6f6597d6a.jpg');

-- ----------------------------
-- Table structure for mss_user
-- ----------------------------
DROP TABLE IF EXISTS `mss_user`;
CREATE TABLE `mss_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `userpwd` char(32) NOT NULL COMMENT '密码',
  `email` varchar(60) NOT NULL COMMENT '邮箱',
  `headpic` varchar(100) NOT NULL DEFAULT 'headpic.gif' COMMENT '头像',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `regip` char(15) NOT NULL DEFAULT '' COMMENT '注册IP',
  `ustatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1正常;2其它',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_user
-- ----------------------------
INSERT INTO `mss_user` VALUES ('13', 'demo', '7fef6171469e80d32c0559f88b377245', 'demo@qq.com', 'headpic.gif', '1392204146', '127.0.0.1', '1');
INSERT INTO `mss_user` VALUES ('20', 'qinwei', 'e10adc3949ba59abbe56e057f20f883e', 'qinwei@123.com', 'headpic.gif', '1392346918', '192.168.130.53', '1');
INSERT INTO `mss_user` VALUES ('21', 'gx4852', '955e42c853b4fdabcb954fb5bb5441f8', '137105161@qq.com', '57617a81155620b6f0ecdfaba6e5235.jpg', '1392357570', '192.168.130.213', '1');

-- ----------------------------
-- Table structure for mss_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `mss_userinfo`;
CREATE TABLE `mss_userinfo` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '性别，1 男 2 女 3 默认',
  `birthday` varchar(10) NOT NULL DEFAULT '' COMMENT '生日',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '用户居住地址',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` char(15) NOT NULL DEFAULT '' COMMENT '登录IP',
  `realname` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `idcard` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证',
  `cellphone` char(11) NOT NULL DEFAULT '' COMMENT '绑定的手机号',
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_userinfo
-- ----------------------------
INSERT INTO `mss_userinfo` VALUES ('13', '1', '1987-2-7', '山东省-济南市-市中区', '1458551142', '180.153.206.34', '', '', '');
INSERT INTO `mss_userinfo` VALUES ('20', '3', '1938-1-1', '北京--', '1392358122', '192.168.130.213', '', '', '');
INSERT INTO `mss_userinfo` VALUES ('21', '1', '1957-3-7', '广东-东莞-莞城区', '1392357599', '192.168.130.213', '', '', '');

-- ----------------------------
-- Table structure for mss_user_admin
-- ----------------------------
DROP TABLE IF EXISTS `mss_user_admin`;
CREATE TABLE `mss_user_admin` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `userpwd` char(32) NOT NULL COMMENT '管理员密码',
  `level` varchar(255) NOT NULL COMMENT '用户权限组',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '管理员邮箱',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `logintime` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_user_admin
-- ----------------------------
INSERT INTO `mss_user_admin` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38', 'ademo@qq.com', '0', '1504769927');
INSERT INTO `mss_user_admin` VALUES ('2', 'r1', '202cb962ac59075b964b07152d234b70', '5,6,7,8,9,10', 'r1@qq.com', '1389924107', '0');
INSERT INTO `mss_user_admin` VALUES ('3', 'a2', '202cb962ac59075b964b07152d234b70', '1,2,3,4,5,6,7,8', 'a2@qq.com', '1390096173', '1390096677');

-- ----------------------------
-- Table structure for mss_user_status
-- ----------------------------
DROP TABLE IF EXISTS `mss_user_status`;
CREATE TABLE `mss_user_status` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `status` smallint(3) unsigned NOT NULL,
  `description` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_user_status
-- ----------------------------
INSERT INTO `mss_user_status` VALUES ('1', '1', '用户列表查看');
INSERT INTO `mss_user_status` VALUES ('2', '2', '用户修改');
INSERT INTO `mss_user_status` VALUES ('3', '3', '用户添加');
INSERT INTO `mss_user_status` VALUES ('4', '4', '用户删除');
INSERT INTO `mss_user_status` VALUES ('5', '5', '网站配置查看');
INSERT INTO `mss_user_status` VALUES ('6', '6', '网站配置修改');
INSERT INTO `mss_user_status` VALUES ('7', '7', '友情链接查看');
INSERT INTO `mss_user_status` VALUES ('8', '8', '友情链接添加');
INSERT INTO `mss_user_status` VALUES ('9', '9', '友情链接删除');
INSERT INTO `mss_user_status` VALUES ('10', '10', '友情链接修改');
INSERT INTO `mss_user_status` VALUES ('11', '11', '商品列表查看');
INSERT INTO `mss_user_status` VALUES ('12', '12', '商品编辑修改');
INSERT INTO `mss_user_status` VALUES ('13', '13', '商品删除');
INSERT INTO `mss_user_status` VALUES ('14', '14', '添加商品');
INSERT INTO `mss_user_status` VALUES ('15', '15', '商品分类查看');
INSERT INTO `mss_user_status` VALUES ('16', '16', '商品分类修改');
INSERT INTO `mss_user_status` VALUES ('17', '17', '商品分类删除');
INSERT INTO `mss_user_status` VALUES ('18', '18', '商品分类添加');
INSERT INTO `mss_user_status` VALUES ('19', '19', '商品规格添加');
INSERT INTO `mss_user_status` VALUES ('20', '20', '商品规格删除');
INSERT INTO `mss_user_status` VALUES ('21', '21', '商品规格修改');
INSERT INTO `mss_user_status` VALUES ('22', '22', '商品规格列表查看');
INSERT INTO `mss_user_status` VALUES ('23', '23', '订单列表查看');
INSERT INTO `mss_user_status` VALUES ('24', '24', '订单删除');
INSERT INTO `mss_user_status` VALUES ('25', '25', '订单编辑');
INSERT INTO `mss_user_status` VALUES ('26', '26', '管理员查看');
INSERT INTO `mss_user_status` VALUES ('27', '27', '管理员删除');
INSERT INTO `mss_user_status` VALUES ('28', '28', '管理员增加');
INSERT INTO `mss_user_status` VALUES ('29', '29', '管理员编辑');
INSERT INTO `mss_user_status` VALUES ('30', '30', '查看邮件模板列表');
INSERT INTO `mss_user_status` VALUES ('31', '31', '编辑邮件模板');
INSERT INTO `mss_user_status` VALUES ('32', '32', '删除邮件模板');
INSERT INTO `mss_user_status` VALUES ('33', '33', '增加邮件模板');
INSERT INTO `mss_user_status` VALUES ('34', '34', '批量发送邮件');
INSERT INTO `mss_user_status` VALUES ('35', '35', '添加banner配图');
INSERT INTO `mss_user_status` VALUES ('36', '36', '特价旅游发布');
INSERT INTO `mss_user_status` VALUES ('37', '37', '旅游项目发布');
INSERT INTO `mss_user_status` VALUES ('38', '38', '热门活动发布');

-- ----------------------------
-- Table structure for mss_webconfig
-- ----------------------------
DROP TABLE IF EXISTS `mss_webconfig`;
CREATE TABLE `mss_webconfig` (
  `item` varchar(50) NOT NULL COMMENT '设置项',
  `content` text NOT NULL COMMENT '设置项内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '设置项说明信息',
  UNIQUE KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mss_webconfig
-- ----------------------------
INSERT INTO `mss_webconfig` VALUES ('shopname', '旅行范儿', '店铺名称');
INSERT INTO `mss_webconfig` VALUES ('shoptitle', '旅行范儿', '店铺标题（在浏览器上方显示）');
INSERT INTO `mss_webconfig` VALUES ('keywords', '韩都衣舍,韩都衣舍旗舰店,韩版潮流女装', '网站关键字');
INSERT INTO `mss_webconfig` VALUES ('description', '韩都衣舍官方直营店、旗舰店，带给你最新的韩版潮流女装咨询，正品保障，货到付款', '店铺描述');
INSERT INTO `mss_webconfig` VALUES ('aemail', '653668615@qq.com', '管理员邮箱');
INSERT INTO `mss_webconfig` VALUES ('shopowner', '信广旅游', '公司法人姓名');
INSERT INTO `mss_webconfig` VALUES ('idcard', '1001001001001008x', '身份证号');
INSERT INTO `mss_webconfig` VALUES ('blicense', '52db7e09c117c.jpg', '营业执照');
INSERT INTO `mss_webconfig` VALUES ('caddress', '999999', '法人身份证号码');
INSERT INTO `mss_webconfig` VALUES ('logo', 'logo.png', '网站logo');
INSERT INTO `mss_webconfig` VALUES ('icpnum', '京ICP备1001175号', '备案信息');
INSERT INTO `mss_webconfig` VALUES ('stacode', '统计代码', '统计代码');
INSERT INTO `mss_webconfig` VALUES ('goodsimg', '52dbe7ac2c701.jpg', '商品默认图片');
INSERT INTO `mss_webconfig` VALUES ('userpic', '52fcd84b9bd3a.gif', '用户默认头像');
INSERT INTO `mss_webconfig` VALUES ('wimg', '水印图片', '水印图片');
INSERT INTO `mss_webconfig` VALUES ('wposition', '4', '水印默认位置');
INSERT INTO `mss_webconfig` VALUES ('walpha', '80%', '水印透明度');
INSERT INTO `mss_webconfig` VALUES ('gnum_prefix', 'scz_', '商品货号前缀');
INSERT INTO `mss_webconfig` VALUES ('isnotice', '1', '是否开启新订单提醒');
INSERT INTO `mss_webconfig` VALUES ('isvemail', '1', '是否开启会员邮箱验证');
INSERT INTO `mss_webconfig` VALUES ('cellphone', '+(010) 666666666666666', '电话号码');
INSERT INTO `mss_webconfig` VALUES ('weibo', 'www.weobo.com/uc=scz', '微博地址');
INSERT INTO `mss_webconfig` VALUES ('address', '北京昌平区LAMP兄弟连', '公司地址');
