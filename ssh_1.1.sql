/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50728
Source Host           : 127.0.0.1:3306
Source Database       : ssh_1.1

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2019-10-30 18:55:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_cms_course
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_course`;
CREATE TABLE `t_cms_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  `content` longtext,
  `is_parent` bit(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm69fsjkf0ifvdfypvvkp9461w` (`pid`),
  CONSTRAINT `FK1m4n86i9j8brt4p8emqwklyya` FOREIGN KEY (`pid`) REFERENCES `t_cms_course` (`id`),
  CONSTRAINT `FKm69fsjkf0ifvdfypvvkp9461w` FOREIGN KEY (`pid`) REFERENCES `t_cms_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_course
-- ----------------------------
INSERT INTO `t_cms_course` VALUES ('1', '云时代技术', '1', '1', null, null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('2', '云计算', '2', '0', '1', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('3', '云产品', '3', '0', '1', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('4', '大数据', '4', '0', '1', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('6', '云基础', '5', '0', '2', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('7', '云框架', '6', '0', '2', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('8', '软件研发', '7', '0', '8', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('9', '编程语言', '8', '1', '8', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('10', '移动开发', '9', '1', '8', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('11', 'java', '10', '1', '8', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('12', 'java', '11', '0', '8', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('13', 'UI', '12', '1', null, null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('14', '移动开发', '13', '0', '8', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('15', '编程语言', '14', '1', '8', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('16', 'Web前端', '15', '0', '12', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('17', 'Java基础', '16', '0', '12', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('18', '数据库', '17', '0', '12', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('19', 'UI', '18', '0', null, null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('20', 'PS软件基础', '19', '0', '19', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('21', 'Javaweb', '20', '0', '12', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('22', '框架', '21', '0', '12', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('23', 'AI软件基础', '22', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('24', '创意手绘', '23', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('25', '设计阶段', '24', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('26', '平面设计', '25', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('27', '电商设计', '26', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('28', 'UI设计', '27', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('29', 'AE动效设计', '28', '0', '19', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('30', 'AI基本形状绘制', '29', '0', '23', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('31', '图形的运算及变形', '30', '0', '23', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('32', '颜色的填充与混合', '31', '0', '23', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('33', '文字工具及混合应用', '32', '0', '23', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('34', '新媒体', '33', '0', null, null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('35', '运营基础', '34', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('36', '微信运营', '35', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('37', '短视频运营', '37', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('38', '产品运营', '38', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('39', '区块链运营', '39', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('40', '微博运营', '36', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('41', '自媒体', '40', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('42', '社群运营', '41', '0', '34', null, null, null, null, '', null);
INSERT INTO `t_cms_course` VALUES ('43', '如何构建运营思维', '42', '0', '35', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('44', '运营人必备修图常用技巧', '43', '0', '35', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('45', '微信公众平台基础操作', '44', '0', '36', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('46', '微信公众号运营规划', '45', '0', '36', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('47', '10W+爆款软文撰写技法', '46', '1', '36', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('48', '10W+爆款软文撰写技法', '47', '0', '36', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('49', '企业微信运营案例分析', '48', '0', '36', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('50', '短视频运营的基础', '49', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('51', 'PGC.OGC.UGC短视频平台快速认知', '50', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('52', '视频后期特效-After Effects', '51', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('53', '短视频内容策划脚本', '52', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('54', 'videoleap', '53', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('55', '专业剪辑软件-premiere 剪辑 字幕 转场', '54', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('56', '短视频商业合作模式', '55', '0', '37', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('57', '产品运营入门', '56', '0', '38', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('58', '产品上线应用市场', '57', '0', '38', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('59', '运营核心', '58', '0', '38', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('60', '微博营销模式解析', '59', '0', '40', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('61', '认识企业微博主页', '60', '0', '40', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('62', '微博定位策略', '61', '0', '40', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('63', '什么是区块链', '62', '0', '39', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('64', '主流数字货币交易平台与交易方式', '63', '0', '39', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('65', '数字货币短线交易方法与常用指标介绍', '64', '0', '39', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('66', '数字货币必做的运营渠道', '65', '0', '39', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('67', '数字货币社群的运营方式', '66', '0', '39', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('68', '自媒体基础', '67', '0', '41', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('69', '自媒体注册必过技巧', '68', '0', '41', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('70', '自媒体月入8000核心策略', '69', '0', '41', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('71', '伪原创速成技巧', '70', '0', '41', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('72', '什么是社群', '71', '0', '42', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('73', '快速搭建社群', '72', '0', '42', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('74', '社群运营平台的选择', '73', '0', '42', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('75', '社群推广与传播', '74', '0', '42', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('76', '移动web开发', '75', '0', '14', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('77', '移动App开发', '76', '0', '14', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('78', '平面构成', '77', '0', '24', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('79', '绘画中的透视', '78', '0', '24', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('80', 'UI扁平、拟物ICON绘制', '79', '0', '24', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('81', '手绘人物形象设计', '80', '0', '24', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('82', '手绘卡通形象设计', '81', '0', '24', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('83', '字体设计及', '82', '0', '25', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('84', '色彩构成', '83', '0', '25', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('85', '版式设计 ', '84', '0', '25', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('86', '构图设计', '85', '0', '25', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('87', '视觉设计', '86', '0', '25', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('88', '品牌LOGO设计', '87', '0', '26', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('89', '名片设计与输出', '88', '0', '26', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('90', '品牌VI系统设计', '89', '0', '26', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('91', '包装、画册设计', '90', '0', '26', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('92', '专业摄影、产品精修', '91', '0', '27', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('93', '活动策划', '92', '0', '27', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('94', '电商平台尺寸规范', '93', '0', '27', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('95', '移动端店铺设计', '94', '0', '27', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('96', '项目实战', '95', '0', '27', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('97', '图标设计', '96', '0', '28', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('98', 'Axure', '97', '0', '28', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('99', 'H5页面', '98', '0', '28', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('100', '移动端项目实战App', '99', '0', '28', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('101', '跨平台综合设计', '100', '0', '28', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('102', 'AE形状动画效果', '101', '0', '29', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('103', 'AE遮罩及路径动画', '102', '0', '29', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('104', '交互动画流程及项目规范', '103', '0', '29', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('105', '办公软件', '104', '0', null, null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('106', 'Office  Word', '105', '1', '105', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('107', 'Excel', '106', '1', '105', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('108', 'PPT演示文稿', '107', '1', '105', null, null, null, null, '\0', null);
INSERT INTO `t_cms_course` VALUES ('161', 'aaa', '108', '0', null, '2019-07-14 03:54:04', '2019-07-14 03:54:04', null, '', '\0', null);

-- ----------------------------
-- Table structure for t_cms_image
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_image`;
CREATE TABLE `t_cms_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_image
-- ----------------------------
INSERT INTO `t_cms_image` VALUES ('8', '231', 'http://localhost:80/upload/20190508/173675108710920.jpg', '1', '0', null, null, null);
INSERT INTO `t_cms_image` VALUES ('9', '232', 'http://localhost:80/upload/20190508/173687312224900.jpg', '2', '0', null, null, null);
INSERT INTO `t_cms_image` VALUES ('10', '233', 'http://localhost:80/upload/20190508/173693165384601.jpg', '3', '0', null, null, null);
INSERT INTO `t_cms_image` VALUES ('11', '234', 'http://localhost:80/upload/20190508/173698185428434.jpg', '4', '0', null, null, null);
INSERT INTO `t_cms_image` VALUES ('12', '236', 'http://localhost:80/upload/20190508/173709841606890.jpg', '5', '0', null, null, null);
INSERT INTO `t_cms_image` VALUES ('13', '469', 'http://localhost:80/upload/20190707/1407285651664291.png', '6', '0', null, '2019-07-07 21:01:07', null);
INSERT INTO `t_cms_image` VALUES ('14', null, null, '7', '0', '2019-07-13 20:04:20', '2019-07-13 20:04:20', null);

-- ----------------------------
-- Table structure for t_cms_link
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_link`;
CREATE TABLE `t_cms_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_link
-- ----------------------------
INSERT INTO `t_cms_link` VALUES ('4', '百度', 'http://www.baidu.com', '1', '0', null, null, null);
INSERT INTO `t_cms_link` VALUES ('5', '淘宝', 'http://www.taobao.com', '2', '0', null, null, null);
INSERT INTO `t_cms_link` VALUES ('6', '今日头条', 'http://www.toutiao.com', '3', '0', null, null, null);
INSERT INTO `t_cms_link` VALUES ('7', '小米', 'http://www.mi.com', '4', '0', null, null, null);
INSERT INTO `t_cms_link` VALUES ('8', '58同城', 'http://www.58.com', '5', '0', null, null, null);

-- ----------------------------
-- Table structure for t_cms_news
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_news`;
CREATE TABLE `t_cms_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `type_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`),
  KEY `FKnmwqm8g79jnlelxpqjdu0w1a8` (`type_id`),
  CONSTRAINT `FKmmj53yjikraj8ckceomcouc5y` FOREIGN KEY (`type_id`) REFERENCES `t_system_datadict` (`id`),
  CONSTRAINT `FKnmwqm8g79jnlelxpqjdu0w1a8` FOREIGN KEY (`type_id`) REFERENCES `t_system_datadict` (`id`),
  CONSTRAINT `t_cms_news_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `t_system_datadict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1544 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_news
-- ----------------------------
INSERT INTO `t_cms_news` VALUES ('2', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('3', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('4', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('5', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('6', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('7', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('8', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('9', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('10', '2019年6月嘉为教育资讯2019年6月嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '18', '11', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('11', '嘉为大讲堂走进企业之走进申通', null, '18', '12', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('12', '嘉为大讲堂5月精彩回顾', null, '18', '13', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('13', '2019年5月「NPDP考前辅导」', null, '18', '14', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('14', 'PPT精美制作与演示技巧」', '<p>asfafas<br/></p>', '18', '15', '0', '2019-06-29 21:04:31', '2019-07-07 21:04:28', null);
INSERT INTO `t_cms_news` VALUES ('15', '「Excel高效数据管理」', null, '18', '17', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('16', '考前辅导」直播课程圆满结束', null, '18', '16', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('17', ' 认证培训」直播圆满结束嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '16', '18', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('18', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '16', '19', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('19', '嘉为大讲堂走进企业之走进申通', null, '16', '20', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('20', '嘉为大讲堂5月精彩回顾', null, '16', '21', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('21', '2019年5月「NPDP考前辅导」', null, '16', '22', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('22', 'PPT精美制作与演示技巧」', null, '16', '23', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('23', '「Excel高效数据管理」', null, '16', '24', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('24', '考前辅导」直播课程圆满结束', null, '16', '25', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('30', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('31', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('32', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('33', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('34', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('35', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('36', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('37', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('45', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('46', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('47', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('48', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('49', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('50', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('51', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('52', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('53', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('54', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('55', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('56', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('57', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('58', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('59', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('60', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('76', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('77', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('78', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('79', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('80', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('81', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('82', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('83', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('84', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('85', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('86', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('87', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('88', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('89', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('90', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('91', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('92', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('93', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('94', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('95', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('96', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('97', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('98', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('99', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('100', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('101', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('102', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('103', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('104', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('105', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('106', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('107', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('139', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('140', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('141', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('142', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('143', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('144', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('145', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('146', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('147', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('148', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('149', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('150', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('151', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('152', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('153', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('154', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('155', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('156', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('157', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('158', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('159', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('160', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('161', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('162', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('163', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('164', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('165', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('166', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('167', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('168', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('169', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('170', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('171', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('172', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('173', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('174', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('175', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('176', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('177', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('178', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('179', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('180', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('181', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('182', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('183', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('184', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('185', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('186', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('187', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('188', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('189', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('190', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('191', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('192', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('193', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('194', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('195', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('196', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('197', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('198', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('199', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('200', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('201', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('202', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('266', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('267', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('268', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('269', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('270', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('271', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('272', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('273', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('274', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('275', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('276', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('277', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('278', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('279', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('280', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('281', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('282', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('283', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('284', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('285', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('286', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('287', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('288', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('289', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('290', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('291', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('292', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('293', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('294', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('295', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('296', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('297', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('298', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('299', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('300', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('301', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('302', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('303', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('304', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('305', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('306', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('307', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('308', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('309', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('310', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('311', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('312', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('313', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('314', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('315', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('316', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('317', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('318', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('319', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('320', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('321', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('322', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('323', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('324', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('325', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('326', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('327', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('328', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('329', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('330', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('331', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('332', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('333', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('334', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('335', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('336', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('337', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('338', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('339', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('340', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('341', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('342', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('343', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('344', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('345', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('346', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('347', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('348', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('349', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('350', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('351', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('352', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('353', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('354', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('355', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('356', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('357', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('358', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('359', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('360', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('361', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('362', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('363', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('364', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('365', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('366', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('367', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('368', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('369', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('370', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('371', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('372', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('373', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('374', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('375', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('376', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('377', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('378', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('379', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('380', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('381', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('382', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('383', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('384', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('385', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('386', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('387', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('388', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('389', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('390', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('391', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('392', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('393', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('521', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('522', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('523', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('524', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('525', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('526', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('527', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('528', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('529', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('530', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('531', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('532', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('533', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('534', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('535', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('536', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('537', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('538', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('539', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('540', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('541', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('542', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('543', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('544', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('545', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('546', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('547', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('548', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('549', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('550', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('551', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('552', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('553', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('554', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('555', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('556', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('557', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('558', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('559', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('560', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('561', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('562', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('563', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('564', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('565', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('566', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('567', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('568', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('569', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('570', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('571', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('572', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('573', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('574', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('575', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('576', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('577', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('578', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('579', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('580', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('581', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('582', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('583', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('584', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('585', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('586', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('587', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('588', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('589', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('590', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('591', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('592', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('593', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('594', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('595', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('596', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('597', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('598', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('599', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('600', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('601', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('602', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('603', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('604', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('605', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('606', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('607', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('608', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('609', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('610', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('611', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('612', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('613', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('614', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('615', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('616', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('617', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('618', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('619', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('620', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('621', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('622', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('623', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('624', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('625', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('626', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('627', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('628', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('629', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('630', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('631', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('632', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('633', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('634', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('635', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('636', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('637', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('638', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('639', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('640', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('641', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('642', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('643', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('644', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('645', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('646', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('647', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('648', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('649', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('650', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('651', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('652', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('653', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('654', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('655', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('656', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('657', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('658', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('659', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('660', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('661', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('662', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('663', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('664', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('665', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('666', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('667', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('668', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('669', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('670', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('671', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('672', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('673', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('674', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('675', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('676', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('677', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('678', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('679', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('680', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('681', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('682', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('683', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('684', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('685', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('686', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('687', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('688', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('689', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('690', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('691', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('692', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('693', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('694', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('695', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('696', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('697', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('698', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('699', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('700', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('701', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('702', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('703', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('704', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('705', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('706', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('707', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('708', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('709', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('710', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('711', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('712', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('713', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('714', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('715', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('716', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('717', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('718', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('719', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('720', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('721', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('722', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('723', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('724', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('725', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('726', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('727', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('728', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('729', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('730', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('731', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('732', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('733', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('734', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('735', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('736', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('737', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('738', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('739', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('740', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('741', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('742', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('743', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('744', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('745', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('746', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('747', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('748', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('749', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('750', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('751', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('752', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('753', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('754', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('755', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('756', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('757', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('758', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('759', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('760', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('761', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('762', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('763', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('764', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('765', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('766', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('767', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('768', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('769', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('770', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('771', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('772', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('773', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('774', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('775', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('776', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1032', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1033', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1034', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1035', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1036', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1037', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1038', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1039', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1040', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1041', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1042', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1043', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1044', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1045', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1046', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1047', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1048', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1049', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1050', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1051', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1052', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1053', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1054', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1055', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1056', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1057', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1058', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1059', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1060', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1061', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1062', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1063', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1064', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1065', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1066', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1067', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1068', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1069', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1070', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1071', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1072', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1073', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1074', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1075', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1076', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1077', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1078', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1079', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1080', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1081', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1082', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1083', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1084', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1085', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1086', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1087', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1088', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1089', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1090', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1091', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1092', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1093', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1094', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1095', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1096', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1097', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1098', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1099', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1100', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1101', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1102', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1103', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1104', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1105', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1106', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1107', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1108', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1109', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1110', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1111', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1112', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1113', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1114', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1115', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1116', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1117', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1118', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1119', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1120', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1121', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1122', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1123', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1124', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1125', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1126', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1127', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1128', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1129', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1130', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1131', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1132', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1133', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1134', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1135', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1136', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1137', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1138', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1139', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1140', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1141', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1142', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1143', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1144', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1145', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1146', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1147', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1148', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1149', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1150', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1151', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1152', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1153', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1154', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1155', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1156', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1157', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1158', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1159', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1160', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1161', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1162', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1163', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1164', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1165', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1166', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1167', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1168', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1169', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1170', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1171', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1172', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1173', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1174', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1175', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1176', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1177', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1178', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1179', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1180', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1181', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1182', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1183', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1184', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1185', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1186', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1187', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1188', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1189', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1190', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1191', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1192', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1193', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1194', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1195', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1196', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1197', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1198', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1199', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1200', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1201', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1202', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1203', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1204', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1205', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1206', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1207', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1208', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1209', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1210', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1211', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1212', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1213', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1214', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1215', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1216', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1217', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1218', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1219', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1220', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1221', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1222', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1223', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1224', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1225', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1226', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1227', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1228', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1229', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1230', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1231', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1232', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1233', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1234', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1235', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1236', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1237', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1238', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1239', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1240', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1241', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1242', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1243', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1244', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1245', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1246', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1247', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1248', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1249', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1250', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1251', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1252', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1253', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1254', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1255', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1256', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1257', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1258', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1259', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1260', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1261', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1262', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1263', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1264', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1265', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1266', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1267', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1268', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1269', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1270', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1271', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1272', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1273', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1274', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1275', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1276', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1277', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1278', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1279', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1280', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1281', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1282', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1283', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1284', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1285', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1286', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1287', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1288', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1289', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1290', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1291', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1292', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1293', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1294', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1295', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1296', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1297', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1298', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1299', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1300', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1301', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1302', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1303', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1304', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1305', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1306', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1307', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1308', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1309', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1310', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1311', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1312', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1313', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1314', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1315', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1316', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1317', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1318', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1319', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1320', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1321', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1322', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1323', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1324', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1325', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1326', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1327', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1328', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1329', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1330', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1331', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1332', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1333', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1334', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1335', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1336', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1337', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1338', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1339', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1340', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1341', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1342', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1343', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1344', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1345', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1346', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1347', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1348', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1349', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1350', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1351', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1352', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1353', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1354', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1355', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1356', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1357', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1358', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1359', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1360', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1361', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1362', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1363', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1364', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1365', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1366', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1367', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1368', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1369', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1370', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1371', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1372', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1373', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1374', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1375', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1376', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1377', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1378', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1379', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1380', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1381', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1382', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1383', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1384', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1385', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1386', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1387', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1388', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1389', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1390', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1391', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1392', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1393', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1394', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1395', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1396', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1397', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1398', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1399', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1400', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1401', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1402', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1403', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1404', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1405', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1406', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1407', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1408', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1409', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1410', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1411', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1412', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1413', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1414', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1415', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1416', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1417', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1418', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1419', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1420', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1421', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1422', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1423', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1424', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1425', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1426', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1427', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1428', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1429', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1430', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1431', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1432', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1433', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1434', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1435', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1436', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1437', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1438', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1439', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1440', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1441', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1442', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1443', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1444', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1445', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1446', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1447', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1448', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1449', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1450', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1451', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1452', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1453', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1454', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1455', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1456', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1457', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1458', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1459', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1460', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1461', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1462', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1463', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1464', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1465', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1466', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1467', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1468', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1469', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1470', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1471', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1472', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1473', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1474', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1475', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1476', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1477', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1478', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1479', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1480', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1481', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1482', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1483', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1484', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1485', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1486', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1487', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1488', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1489', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1490', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1491', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1492', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1493', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1494', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1495', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1496', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1497', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1498', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1499', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1500', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1501', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1502', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1503', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1504', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1505', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1506', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1507', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1508', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1509', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1510', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1511', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1512', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1513', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1514', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1515', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1516', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1517', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1518', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1519', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1520', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1521', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1522', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1523', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1524', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1525', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1526', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1527', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1528', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1529', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1530', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1531', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1532', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1533', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1534', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1535', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1536', '嘉为教育资讯嘉为大讲堂走进企业之走进申通', null, '17', '10', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1537', '嘉为大讲堂走进企业之走进申通', null, '17', '3', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1538', '嘉为大讲堂5月精彩回顾', null, '17', '5', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1539', '2019年5月「NPDP考前辅导」', null, '17', '4', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1540', 'PPT精美制作与演示技巧」', null, '17', '6', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1541', '「Excel高效数据管理」', null, '17', '7', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1542', '考前辅导」直播课程圆满结束', null, '17', '8', '0', '2019-06-29 21:04:31', null, null);
INSERT INTO `t_cms_news` VALUES ('1543', ' 认证培训」直播圆满结束', null, '17', '9', '0', '2019-06-29 21:04:31', null, null);

-- ----------------------------
-- Table structure for t_cms_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_resource`;
CREATE TABLE `t_cms_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `intro` longtext,
  `outline` longtext,
  `sort` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`),
  KEY `FKpvt1awtq7oq5yk258kvr1a6pv` (`type_id`),
  CONSTRAINT `FK4nol4fj5n0aweyyx4nbckmd9w` FOREIGN KEY (`type_id`) REFERENCES `t_system_datadict` (`id`),
  CONSTRAINT `FKpvt1awtq7oq5yk258kvr1a6pv` FOREIGN KEY (`type_id`) REFERENCES `t_system_datadict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_resource
-- ----------------------------
INSERT INTO `t_cms_resource` VALUES ('36', 'java', '2019-07-01', '4-6个月', '银川', '443', 'http://www.nxqhedu.cn:80/upload/20190621/776196023269900.jpg', '', '<p><span style=\"font-size:24px;font-family:宋体\">Java</span><span style=\"font-size:24px;font-family:宋体\">是一种程序设计语言，主要用于在Internet上进行网络编程。本课程主要介绍了Java最基本的入门知识，通过本课程的学习，希望学生了解网络编程方面的最新动态，掌握Java语言基本的语法知识，利用Java的优点编制出高质量的应用程序，并能应用到网页设计和网站建设中去；能正确、熟练地进行程序的调试和维护。</span></p><p><img src=\"/ueditor/jsp/upload/image/20190621/1561088301205097054.jpg\" title=\"1561088301205097054.jpg\" alt=\"u=1082825054,4184452632&amp;fm=26&amp;gp=0.jpg\"/></p>', '<p><span style=\"font-size:12px;font-family:宋体\">（一）Java语言及运行环境简介（ 1 学时）<br/>1. Java的特色<br/>2. Java的应用<br/>3. \r\n安装JDK重点：安装JDK<br/><br/>（二）面向对象程序设计（ 1 学时）<br/>1. 面向对象的基本概念<br/>2. \r\nJava面向对象的支持<br/>重点：面向对象的概念<br/>难点：面向对象的支持<br/><br/>（三）Java的语法（ 4 学时）<br/>1. \r\n常量与变量<br/>2. Java的表达式与控制符<br/>3. 基本语句<br/>4. 流程控制语句<br/>5. 命令行参数<br/>6. 例外处理<br/>7. \r\n一些常用的类<br/>重点：基本语法和语句和一些常用的类<br/>难点：命令行参数、例外处理<br/><br/>（四）Applet程序设计（ 2 学时）<br/>1. \r\nApplet概论<br/>2. 建立简单的Applet<br/>3. 在网页中加入Applet<br/>4. \r\nApplet的绘图及颜色字体设置<br/>重点：建立简单的Applet、在网页中加入Applet<br/>难点：Applet的绘图及颜色字体设置<br/><br/>（五） \r\n图形用户界面 设计 （ 4 学时）<br/>1. Java的图形用户界面概念<br/>2. 基本用户界面对象<br/>3. 图形用户界面组件的布局<br/>4. \r\n事件的处理<br/>重点：图形用户界面组件的布局<br/>难点：事件的处理<br/><br/>（六） Java的输入与输出 （ 2 学时）<br/>1. \r\nJava的输入输出<br/>2. Java的标准输入与输出<br/>3. Java的目录及文件管理<br/>4. \r\nJava的文件存取<br/>重点：Java的输入与输出<br/>难点：Java文件存取</span></p>', '1', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('37', 'UI设计', '2019-07-01', '4-6个月', '银川', '354', 'http://www.nxqhedu.cn:80/upload/20190621/776587836762600.jpg', '', '<p style=\"white-space: normal;\"><strong>第一阶段：软件基础与平面设计 熟练使用软件可以说在UI设计过程当是首要，也是最为重要的基础。为此该阶段将对Photoshop和AdobeIllustrator两款软件进行系统学习。 平面设计作为设计的基石，可以说在UI设计中有着不可或缺的重要作用，所以该阶段千锋将采用平面的实际商业案例对软件及手法进行详细解读。</strong></p><p style=\"white-space: normal;\"><strong>第二阶段：webUI&amp;前端 此阶段需要学员掌握网站构成与设计理念，同时掌握前端代码的书写，前端与网站设计相辅相成</strong></p><p><img src=\"/ueditor/jsp/upload/image/20190621/1561089626415036165.png\" title=\"1561089626415036165.png\" alt=\"section2 (1).png\"/></p>', '<p><span style=\"text-decoration: none; background-color: rgb(141, 179, 226);\"><em><strong><span style=\"text-decoration: none; color: rgb(255, 0, 0);\">UI设计基础软件&nbsp; &nbsp; UI交互设计理念</span></strong></em></span></p><p><span style=\"text-decoration: none; background-color: rgb(141, 179, 226);\"><em><strong><span style=\"text-decoration: none; color: rgb(255, 0, 0);\">UI交互设计软件&nbsp; &nbsp; APP交互设计</span></strong></em></span></p><p><span style=\"text-decoration: none; background-color: rgb(141, 179, 226);\"><em><strong><span style=\"text-decoration: none; color: rgb(255, 0, 0);\">UI视觉设计拓展&nbsp; &nbsp; UI交互设计动效<span style=\"text-decoration: none; color: rgb(255, 0, 0); background-color: rgb(141, 179, 226);\"></span></span></strong></em></span></p><p><br/></p>', '2', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('38', '新媒体运营', '2019-07-12', '1-2', '银川', '412', 'http://www.nxqhedu.cn:80/upload/20190624/1047523887881700.jpg', '', '<p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">新媒体涵盖了所有数字化的媒体形式。包括所有数字化的传统媒体、网络媒体、移动端媒体、数字电视、数字报刊杂志等。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">一个相对的概念，是报刊、广播、电视等传统媒体以后发展起来的新的媒体形态，包括网络媒体、手机媒体、数字电视等</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">新媒体亦是一个宽泛的概念，利用数字技术、网络技术，通过互联网、宽带局域网、无线通信网、卫星等渠道，以及电脑、手机、数字电视机等终端，向用户提供信息和娱乐服务的传播形态。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">严格地说，<span class=\"bjh-strong\" style=\"font-size: 18px; font-weight: 700;\">新媒体应该称为数字化新媒体。</span></span></p><p><br/></p>', '<p><strong style=\"color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">第一阶段</strong><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　营销基础</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　如何构建营销思维</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　营销人必备修图常用技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第二阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微信运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　新媒体营销基础</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　了解微信营销</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微信公众平台基础操作</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微信公众号运营规划</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　史上最全微信图文精美排版技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　爆款软文撰写技</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　新媒体内容+人格+商品的连接</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　公众号快速推广吸粉技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微信公众号数据全面分析解读</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微信第三方服务平台使用攻略……<br/><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第三阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　短视频运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　初识剪辑</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　抖音技术流-特效</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　剪辑强化</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　转场</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　字幕、包装</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　自媒体栏目制作</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　手机拍摄技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　个人作品</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第四阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　自媒体运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　自媒体基础</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　自媒体注册必过技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　自媒体月入8000核心策略</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　伪原创速成技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第五阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　社群运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　什么是社群</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　快速搭建社群</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　社群运营平台的选择</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　社群推广与传播</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　QQ营销秘而不宣的推广技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"新媒体运营培训\" src=\"/ueditor/jsp/upload/image/20190624/1561359590816008460.jpg\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第六阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博基础</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博营销概述</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博装修大揭秘</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博运营实战</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博涨粉攻略</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博推广工具的利用</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博营销案例分析</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　微博大V广告合作</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　实训：撰写微博运营方案</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第七阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　产品运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　产品运营入门</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　产品认识</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　对应用市场的基本认识</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　产品上线应用市场</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　线上推广</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　线下推广</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　运营核心</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　运营类型</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　产品的更新迭代</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　运营职场前夕大作战……</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第八阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　营销策划</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　活动策划和执行全套技法</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　论坛&amp;着陆页/专题策划技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　H5页面策划技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　Axure原型图制作技法</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　实训：H5制作</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　实训：活动策划</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第九阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　区块链运营</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　什么是区块链</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　主流数字货币与常见货币形式介绍</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　主流数字货币交易平台与交易方式</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　数字货币短线交易方法与常用指标介绍</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　新数字货币发行方式</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　数字货币常用钱包</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　数字货币必做的运营渠道</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　数字货币主流推广渠道</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　数字货币社群的运营方式</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第十阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　媒介推广</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　商业合作推广渠道介绍</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　贴吧营销及推广技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　问答平台营销绝密推广引流技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　文库营销及不可告人的推广技巧</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　危机公关处理技巧与方法</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　网络营销推广策略表</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　月度&amp;季度&amp;年度-网络营销推广方案</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　网络营销推广(实施)计划</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　网络营销推广效果报告</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　推广常见问题梳理与总结回顾</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong>第十一阶段</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　综合项目</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　项目二： 直播课程项目策划与推广(24课时)</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(112, 112, 112); font-family: arial, 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; white-space: normal; background-color: rgb(255, 255, 255);\">　　项目一： 新媒体工作项目运营管理(24课时）</p><p><br/></p>', '3', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('39', '办公软件', '2019-06-24', '15天-1一个月', '银川', '418', 'http://www.nxqhedu.cn:80/upload/20190624/1053284987112700.jpg', '', '<p style=\";margin-bottom:0;background:white\"><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">Office</span><span style=\"font-size:14px;color:#424242\">是由金山软件股份有限公司自主研发的一款办公软件套装，可以实现办公软件最常用的文字、表格、演示等多种功能。具有内存占用低、运行速度快、体积小巧、强大插件平台支持、免费提供海量在线存储空间及文档模板、支持阅读和输出</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">PDF</span><span style=\"font-size:14px;color:#424242\">文件、全面兼容微软</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">Office97-2010</span><span style=\"font-size:14px;color:#424242\">格式（</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">doc/docx/xls/xlsx/ppt/pptx</span><span style=\"font-size:14px;color:#424242\">等）独特优势。覆盖</span><span style=\"font-size: 14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">Windows</span><span style=\"font-size:14px;color:#424242\">、</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">Linux</span><span style=\"font-size:14px;color:#424242\">、</span><span style=\"font-size:14px;font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">Android</span><span style=\"font-size: 14px;color:#424242\">、</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">iOS</span><span style=\"font-size:14px;color:#424242\">等多个平台。</span></p><p style=\";background: white;word-wrap: break-word;overflow: hidden\"><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">&nbsp;Office</span><span style=\"font-size:14px;color:#424242\">支持桌面和移动办公。且</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">WPS</span><span style=\"font-size:14px;color:#424242\">移动版通过</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">Google Play</span><span style=\"font-size:14px;color:#424242\">平台，已覆盖的</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">50</span><span style=\"font-size:14px;color:#424242\">多个国家和地区，</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\"> Android</span><span style=\"font-size:14px;color:#424242\">在应用排行榜上领先于微软及其他竞争对手，居同类应用之首。</span></p><p style=\";background: white;word-wrap: break-word;overflow: hidden\"><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">&nbsp;</span></p><p style=\";background: white;word-wrap: break-word;overflow: hidden\"><span style=\"font-size:14px;color:#424242\">通过学习让大家快速掌握</span><span style=\"font-size:14px;font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#424242\">wps</span><span style=\"font-size:14px;color:#424242\">办公软件的使用，课程实用性，针对性较强，让学员快速上手，也能够让初学者，快速入门</span></p><p><br/></p>', '<p style=\"margin-top:5px;margin-right:0;margin-bottom:5px;margin-left: 0\">一、文字工具的介绍、字体段落的设置</p><p style=\"margin: 5px 0\">二、文字工具样式页面表格的使用</p><p style=\"margin: 5px 0\">三、演示工具的使用内页和目录的制作</p><p style=\"margin: 5px 0\">四、演示制作幻灯片母版</p><p style=\"margin: 5px 0\">五、表格工具制作简单的工具</p><p style=\"margin: 5px 0\">六、表格工具实例考勤表的制作，数据有效性的使用</p><p style=\"margin: 5px 0\"><span style=\"font-family: Arial, sans-serif\"></span></p><p>&nbsp;</p><p><br/></p>', '4', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('40', 'java', '2019-07-01', '4-6个月', '银川', '421', 'http://www.nxqhedu.cn:80/upload/20190627/1287569460030200.jpg', '', '<p>Java课程是<a target=\"_blank\" href=\"https://baike.baidu.com/item/java%E8%BD%AF%E4%BB%B6%E5%B7%A5%E7%A8%8B%E5%B8%88/8874587\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">java软件工程师</a>学习和应用java的必要课程，java课程主要学习：Java编程语言，<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java/85979\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Java</a>类文件格式，<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java%E8%99%9A%E6%8B%9F%E6%9C%BA/6810577\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Java虚拟机</a>和Java应用程序接口(Java API)，java游戏项目开发等课程。</p><p>Java是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java%E5%B9%B3%E5%8F%B0\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Java平台</a>（即JavaSE, JavaEE, JavaME）的总称。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人<a target=\"_blank\" href=\"https://baike.baidu.com/item/PC\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">PC</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%95%B0%E6%8D%AE%E4%B8%AD%E5%BF%83/967340\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">数据中心</a>、游戏控制台、科学<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%B6%85%E7%BA%A7%E8%AE%A1%E7%AE%97%E6%9C%BA/5373711\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">超级计算机</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A7%BB%E5%8A%A8\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">移动</a>电话和<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%92%E8%81%94%E7%BD%91/199186\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">互联网</a>，同时拥有全球最大的开发者专业社群。在全球云计算和<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A7%BB%E5%8A%A8%E4%BA%92%E8%81%94%E7%BD%91/7837035\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">移动互联网</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%A7%E4%B8%9A%E7%8E%AF%E5%A2%83/7393296\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">产业环境</a>下，<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java/85979\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Java</a>更具备了显著优势和广阔前景。</p><p><br/></p>', '<h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">J2SE</h3><p>java标准基础应用平台，<a target=\"_blank\" href=\"https://baike.baidu.com/item/J2SE/2902733\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">J2SE</a>主要是一些<a target=\"_blank\" href=\"https://baike.baidu.com/item/JAVA/85979\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">JAVA</a>的基础类东西和一些<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%A1%8C%E9%9D%A2%E8%BD%AF%E4%BB%B6\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">桌面软件</a>的开发是和VB还有Deliph一样的东西，属于C/S架构的，不怎么使用了主要是打打基础的语言。</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">J2EE</h3><p><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%81%E4%B8%9A%E7%BA%A7%E5%BC%80%E5%8F%91\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">企业级开发</a>应用平台，主要的框架有Struts+Spring+<a target=\"_blank\" href=\"https://baike.baidu.com/item/Hibernate\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Hibernate</a>等主要框架。</p><p><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2EE/110838\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">J2EE</a>是一套全然不同于传统应用开发的技术架构，包含许多组件，主要可简化且规范应用系统的开发与部署，进而提高可移植性、安全与再用价值。</p><p>J2EE核心是一组技术规范与指南，其中所包含的各类组件、服务架构及技术层次，均有共通的标准及规格，让各种依循<a target=\"_blank\" href=\"https://baike.baidu.com/item/J2EE%E6%9E%B6%E6%9E%84/8679457\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">J2EE架构</a>的不同平台之间，存在良好的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%85%BC%E5%AE%B9%E6%80%A7/1446869\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">兼容性</a>，解决过去企业后端使用的信息产品彼此之间无法兼容，导致企业内部或外部难以互通的窘境。</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">J2ME</h3><p>微缩版开发应用平台，主要是手机类开发用的。</p><p>J2ME是一种高度优化的<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java/85979\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Java</a>运行环境，主要针对消费类电子设备的，例如<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%9C%82%E7%AA%9D%E7%94%B5%E8%AF%9D/1725392\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">蜂窝电话</a>和<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8F%AF%E8%A7%86%E7%94%B5%E8%AF%9D/113732\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">可视电话</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%95%B0%E5%AD%97%E6%9C%BA%E9%A1%B6%E7%9B%92/6984962\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">数字机顶盒</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B1%BD%E8%BD%A6%E5%AF%BC%E8%88%AA%E7%B3%BB%E7%BB%9F/2210045\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">汽车导航系统</a>等等。J2ME技术在1999年的JavaOne Developer Conference大会上正式推出，它将<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java%E8%AF%AD%E8%A8%80/4148931\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">Java语言</a>的与平台无关的特性移植到小型电子设备上,允许移动无线设备之间共享应用程序。</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><p><br/></p>', '5', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('41', 'PS软件基础', '2019-07-10', '1-2个月之间', '银川', '422', 'http://www.nxqhedu.cn:80/upload/20190627/1288557912120700.jpg', '', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '6', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('42', 'PS软件基础', '2019-07-10', '1-2个月之间', '银川', '422', 'http://www.nxqhedu.cn:80/upload/20190627/1288557912120700.jpg', '', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '7', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('43', '新媒体运营', '2019-07-09', '1-2个月之间', '银川', '', '', '', '', '', '8', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('65', 'C++实战', '2019-06-20', '40天', '银川', '443', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>aaa<br/></p>', '<p>bbb<br/></p>', '9', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('66', 'java实战', '2019-05-29', '60天', '银川', '446', 'http://localhost:80/upload/20190627/537643111079911.jpg', null, '<p>aaa<br/></p>', '<p>aa<br/></p>', '10', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('67', 'java实战', '2019-05-30', '40天', '银川', '447', 'http://localhost:80/upload/20190627/538683267746777.png', null, '', '', '11', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('68', 'java实战', '2019-06-20', '40天', '银川', '443', 'http://localhost:80/upload/20190627/538822365654360.png', null, '', '', '12', '20', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('69', 'C++实战', '2019-06-20', '40天', '银川', '443', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>aaa<br/></p>', '<p>bbb<br/></p>', '9', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('70', 'PS软件基础', '2019-06-20', '4-6个月', '银川', '443', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '13', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('71', '新媒体运营', '2019-06-20', '4-6个月', '银川', '443', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '14', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('72', '新媒体运营', '2019-06-20', '4-6个月', '银川', '354', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '15', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('73', 'UI设计', '2019-06-20', '4-6个月', '银川', '412', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '16', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('74', 'UI设计', '2019-06-20', '4-6个月', '银川', '418', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'http://localhost:80/upload/20190627/535645026711516.mp4', '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><font color=\"#606060\"><b>五、</b></font>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '17', '21', '0', '2019-06-30 00:22:30', null, null);
INSERT INTO `t_cms_resource` VALUES ('75', 'java实战333', '2019-05-29', '40天', '银川', '453', 'http://localhost:80/upload/20190630/757018854221884.png', null, '', '', '18', '20', '0', null, '2019-06-30 08:23:38', null);
INSERT INTO `t_cms_resource` VALUES ('76', 'C++实战aaa', '2019-06-28', '40天bbb', '银川666', '455', 'http://localhost:80/upload/20190630/758300195366255.png', null, '<p>Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe   Photoshop CS6 是Adobe Photoshop中的第13个主要版本。</p>', '<p>一、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">PS设计基础知识</span></p><p>二、&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">图像后期处理方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">三、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">平面设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">四、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">CG插画方向</span></p><p><span style=\"color:#606060\"><strong>五、</strong></span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">小动画设计方向</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">六、</span>&nbsp;<span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\">总结综合应用</span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span><br/></p><p><span class=\"sp-name\" style=\"box-sizing: border-box; font-size: 16px; font-weight: 600; line-height: 32px; color: rgb(96, 96, 96); cursor: pointer; height: 40px; position: relative;\"><br/></span></p><ul class=\"sp-unit-sons list-paddingleft-2\" style=\"list-style-type: none;\"></ul><p><br/></p>', '19', '22', '0', null, '2019-06-30 08:44:58', null);
INSERT INTO `t_cms_resource` VALUES ('77', 'aaa', '2019-06-13', 'bbb', 'ccc', '457', 'http://localhost:80/upload/20190630/793157631694471.jpg', null, '<p>444777<br/></p>', '<p>555777<br/></p>', '20', '22', '0', '2019-06-30 18:21:04', '2019-06-30 18:25:58', null);
INSERT INTO `t_cms_resource` VALUES ('78', 'java实战111', '2019-07-17', '2222333', '银川4444', '470', 'http://localhost:80/upload/20190707/1407542140626755.jpg', null, '<p>aaaa555<br/></p>', '<p>bbbbb666<br/></p>', '21', '21', '0', '2019-07-07 21:06:17', '2019-07-07 21:07:23', null);

-- ----------------------------
-- Table structure for t_common_file
-- ----------------------------
DROP TABLE IF EXISTS `t_common_file`;
CREATE TABLE `t_common_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_common_file
-- ----------------------------
INSERT INTO `t_common_file` VALUES ('89', 'http://localhost:80/upload/20180902/29241902669183.jpg', 'LL019.jpg', '500429', 'image/jpeg', '89', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('90', 'http://localhost:80/upload/20180902/29246381569409.jpg', 'LL047.jpg', '435879', 'image/jpeg', '90', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('91', 'http://localhost:80/upload/20180902/29247045928807.jpg', 'LL048.jpg', '397386', 'image/jpeg', '91', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('92', 'http://localhost:80/upload/20180902/29247730806785.jpg', 'LL049.jpg', '398599', 'image/jpeg', '92', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('93', 'http://localhost:80/upload/20180902/29248555756943.jpg', 'LL050.jpg', '384802', 'image/jpeg', '93', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('94', 'http://localhost:80/upload/20180902/29249199817256.jpg', 'LL051.jpg', '382780', 'image/jpeg', '94', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('95', 'http://localhost:80/upload/20180902/706741288497.jpg', 'LL010.jpg', '408525', 'image/jpeg', '95', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('96', 'http://localhost:80/upload/20180902/1350674619132.jpg', 'LL047.jpg', '435879', 'image/jpeg', '96', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('97', 'http://localhost:80/upload/20180902/1508522466227.png', '0001.png', '253649', 'image/png', '97', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('98', 'http://localhost:80/upload/20180902/1513897094549.png', 'img12.png', '327448', 'image/png', '98', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('99', 'http://localhost:80/upload/20180902/1653796432111.png', 'img15.png', '1477879', 'image/png', '99', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('100', 'http://localhost:80/upload/20180902/1780428398632.png', 'img12.png', '327448', 'image/png', '100', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('101', 'http://localhost:80/upload/20180902/1855203765168.jpg', '04.jpg', '1417', 'image/jpeg', '101', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('102', 'http://localhost:80/upload/20180902/2140007676055.png', 'img12.png', '327448', 'image/png', '102', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('103', 'http://localhost:80/upload/20180902/2145475248095.jpg', '06.jpg', '1417', 'image/jpeg', '103', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('104', 'http://localhost:80/upload/20180902/2147102899251.jpg', '3.jpg', '271594', 'image/jpeg', '104', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('105', 'http://localhost:80/upload/20180902/2152655356063.jpg', '03.jpg', '1417', 'image/jpeg', '105', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('106', 'http://localhost:80/upload/20180902/2152694285514.jpg', '04.jpg', '1417', 'image/jpeg', '106', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('107', 'http://localhost:80/upload/20180902/2153005010768.jpg', '4.jpg', '434464', 'image/jpeg', '107', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('108', 'http://localhost:80/upload/20180902/2153391210424.jpg', '5.jpg', '549997', 'image/jpeg', '108', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('109', 'http://localhost:80/upload/20180902/2622369886671.png', 'img13.png', '241260', 'image/png', '109', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('110', 'http://localhost:80/upload/20180902/2631804206624.png', 'img11.png', '478385', 'image/png', '110', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('111', 'http://localhost:80/upload/20180902/3304422829937.png', 'img14.png', '464400', 'image/png', '111', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('112', 'http://localhost:80/upload/20180902/3377654626746.jpg', '01.jpg', '1418', 'image/jpeg', '112', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('113', 'http://localhost:80/upload/20180902/3547350111986.jpg', '5.jpg', '549997', 'image/jpeg', '113', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('114', 'http://localhost:80/upload/20180902/3774524570669.png', 'img11.png', '478385', 'image/png', '114', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('115', 'http://localhost:80/upload/20180902/4476424781587.png', 'img14.png', '464400', 'image/png', '115', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('116', 'http://localhost:80/upload/20180902/6354984068083.jpg', '5.jpg', '549997', 'image/jpeg', '116', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('117', 'http://localhost:80/upload/20180902/6500363449360.jpg', '4.jpg', '434464', 'image/jpeg', '117', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('118', 'http://localhost:80/upload/20180902/7763351907198.png', 'img13.png', '241260', 'image/png', '118', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('119', 'http://localhost:80/upload/20180902/7791678674131.png', 'img12.png', '327448', 'image/png', '119', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('120', 'http://localhost:80/upload/20180902/8228116486416.jpg', '06.jpg', '1417', 'image/jpeg', '120', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('121', 'http://localhost:80/upload/20180902/8233806025174.jpg', '5.jpg', '549997', 'image/jpeg', '121', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('122', 'http://localhost:80/upload/20180902/8233807880190.jpg', '06.jpg', '1417', 'image/jpeg', '122', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('123', 'http://localhost:80/upload/20180902/8234011614363.png', 'img11.png', '478385', 'image/png', '123', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('124', 'http://localhost:80/upload/20180902/8234234630933.png', 'img12.png', '327448', 'image/png', '124', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('125', 'http://localhost:80/upload/20180902/8234336450066.png', 'img13.png', '241260', 'image/png', '125', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('126', 'http://localhost:80/upload/20180902/9411330810263.png', 'img11.png', '478385', 'image/png', '126', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('127', 'http://localhost:80/upload/20180902/9411451771035.png', 'img12.png', '327448', 'image/png', '127', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('128', 'http://localhost:80/upload/20180902/9411555902467.png', 'img13.png', '241260', 'image/png', '128', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('129', 'http://localhost:80/upload/20180902/10118270337899.png', 'img13.png', '241260', 'image/png', '129', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('130', 'http://localhost:80/upload/20180902/10291365871784.jpg', '5.jpg', '549997', 'image/jpeg', '130', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('131', 'http://localhost:80/upload/20180902/10343750078948.png', 'img13.png', '241260', 'image/png', '131', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('132', 'http://localhost:80/upload/20180902/10437519913984.jpg', '4.jpg', '434464', 'image/jpeg', '132', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('133', 'http://localhost:80/upload/20180902/10440819576602.png', 'img13.png', '241260', 'image/png', '133', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('134', 'http://localhost:80/upload/20180902/10507721280431.png', 'img14.png', '464400', 'image/png', '134', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('135', 'http://localhost:80/upload/20180902/10565225543650.png', 'img13.png', '241260', 'image/png', '135', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('136', 'http://localhost:80/upload/20180902/10569171970620.png', 'img15.png', '1477879', 'image/png', '136', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('137', 'http://localhost:80/upload/20180902/10591232826968.png', 'img14.png', '464400', 'image/png', '137', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('138', 'http://localhost:80/upload/20180902/10715169111335.jpg', '04.jpg', '1417', 'image/jpeg', '138', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('139', 'http://localhost:80/upload/20180902/10719577074157.png', 'img13.png', '241260', 'image/png', '139', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('140', 'http://localhost:80/upload/20180902/11160659478888.jpg', '3.jpg', '271594', 'image/jpeg', '140', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('141', 'http://localhost:80/upload/20180902/11160663235232.jpg', '04.jpg', '1417', 'image/jpeg', '141', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('142', 'http://localhost:80/upload/20180902/11161223078925.jpg', '5.jpg', '549997', 'image/jpeg', '142', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('143', 'http://localhost:80/upload/20180902/11161347689926.jpg', '4.jpg', '434464', 'image/jpeg', '143', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('144', 'http://localhost:80/upload/20180902/11161350628707.jpg', '06.jpg', '1417', 'image/jpeg', '144', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('145', 'http://localhost:80/upload/20180902/11161577443921.png', 'img11.png', '478385', 'image/png', '145', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('146', 'http://localhost:80/upload/20180902/11192184828103.png', 'img11.png', '478385', 'image/png', '146', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('147', 'http://localhost:80/upload/20180902/11192319830769.png', 'img12.png', '327448', 'image/png', '147', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('148', 'http://localhost:80/upload/20180902/11192421528107.png', 'img13.png', '241260', 'image/png', '148', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('149', 'http://localhost:80/upload/20180902/11192618290744.png', 'img14.png', '464400', 'image/png', '149', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('150', 'http://localhost:80/upload/20180902/11273271382645.jpg', '4.jpg', '434464', 'image/jpeg', '150', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('151', 'http://localhost:80/upload/20180902/11273661886726.jpg', '5.jpg', '549997', 'image/jpeg', '151', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('152', 'http://localhost:80/upload/20180902/11273663528418.jpg', '06.jpg', '1417', 'image/jpeg', '152', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('153', 'http://localhost:80/upload/20180902/11273865584434.png', 'img11.png', '478385', 'image/png', '153', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('154', 'http://localhost:80/upload/20180902/11274064844250.png', 'img12.png', '327448', 'image/png', '154', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('155', 'http://localhost:80/upload/20180902/11274169275066.png', 'img13.png', '241260', 'image/png', '155', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('156', 'http://localhost:80/upload/20180902/11274368178977.png', 'img14.png', '464400', 'image/png', '156', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('157', 'http://localhost:80/upload/20180902/11410743763433.jpg', '06.jpg', '1417', 'image/jpeg', '157', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('158', 'http://localhost:80/upload/20180902/11410965261201.png', 'img11.png', '478385', 'image/png', '158', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('159', 'http://localhost:80/upload/20180902/11411103301104.png', 'img12.png', '327448', 'image/png', '159', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('160', 'http://localhost:80/upload/20180902/11411202464433.png', 'img13.png', '241260', 'image/png', '160', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('161', 'http://localhost:80/upload/20180902/11411402267225.png', 'img14.png', '464400', 'image/png', '161', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('162', 'http://localhost:80/upload/20180902/11412026387032.png', 'img15.png', '1477879', 'image/png', '162', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('163', 'http://localhost:80/upload/20180902/11412343543033.png', 'img16.png', '767970', 'image/png', '163', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('164', 'http://localhost:80/upload/20180902/11412343609036.jpg', 'logo.jpg', '2040', 'image/jpeg', '164', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('165', 'http://localhost:80/upload/20180902/11418959531326.jpg', '03.jpg', '1417', 'image/jpeg', '165', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('166', 'http://localhost:80/upload/20180902/11419144430174.jpg', '3.jpg', '271594', 'image/jpeg', '166', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('167', 'http://localhost:80/upload/20180902/11419146887970.jpg', '04.jpg', '1417', 'image/jpeg', '167', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('168', 'http://localhost:80/upload/20180902/11419324281422.jpg', '4.jpg', '434464', 'image/jpeg', '168', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('169', 'http://localhost:80/upload/20180902/11419844916336.jpg', '5.jpg', '549997', 'image/jpeg', '169', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('170', 'http://localhost:80/upload/20180902/11419979940516.png', 'img12.png', '327448', 'image/png', '170', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('171', 'http://localhost:80/upload/20180902/11485162457052.png', 'img13.png', '241260', 'image/png', '171', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('172', 'http://localhost:80/upload/20190423/16624680899223.jpg', '2.jpg', '185036', 'image/jpeg', '172', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('173', 'http://localhost:80/upload/20190423/16624687692706.jpg', '4.jpg', '335523', 'image/jpeg', '173', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('174', 'http://localhost:80/upload/20190423/16625085929952.jpg', '5.jpg', '398422', 'image/jpeg', '174', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('175', 'http://localhost:80/upload/20190423/22331414687255.jpg', '2.jpg', '185036', 'image/jpeg', '175', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('176', 'http://localhost:80/upload/20190423/27972281346239.jpg', '2.jpg', '185036', 'image/jpeg', '176', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('177', 'http://localhost:80/upload/20190423/27980552782870.jpg', '3.jpg', '237338', 'image/jpeg', '177', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('178', 'http://localhost:80/upload/20190423/27982032598433.jpg', '4.jpg', '335523', 'image/jpeg', '178', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('179', 'http://localhost:80/upload/20190423/27983287423140.jpg', '5.jpg', '398422', 'image/jpeg', '179', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('180', 'http://localhost:80/upload/20190424/103110086564483.jpg', '4.jpg', '335523', 'image/jpeg', '180', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('181', 'http://localhost:80/upload/20190424/104047132727272.jpg', '4.jpg', '335523', 'image/jpeg', '181', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('182', 'http://localhost:80/upload/20190424/104155189033789.jpg', '5.jpg', '398422', 'image/jpeg', '182', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('183', 'http://localhost:80/upload/20190424/104534218152153.jpg', '4.jpg', '335523', 'image/jpeg', '183', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('184', 'http://localhost:80/upload/20190424/104552325009198.jpg', '04.jpg', '463', 'image/jpeg', '184', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('185', 'http://localhost:80/upload/20190426/81093929032712.jpg', '4.jpg', '335473', 'image/jpeg', '185', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('186', 'http://localhost:80/upload/20190426/81100444919449.jpg', '04.jpg', '1097', 'image/jpeg', '186', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('187', 'http://localhost:80/upload/20190502/551794278719623.jpg', '01.jpg', '1418', 'image/jpeg', '187', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('188', 'http://localhost:80/upload/20190502/552432253812186.png', 'img13.png', '241260', 'image/png', '188', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('189', 'http://localhost:80/upload/20190502/552432290101754.png', 'img14.png', '464400', 'image/png', '189', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('190', 'http://localhost:80/upload/20190502/552432323246029.png', 'img15.png', '1477879', 'image/png', '190', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('191', 'http://localhost:80/upload/20190502/553547359815665.png', 'img11.png', '478385', 'image/png', '191', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('192', 'http://localhost:80/upload/20190502/553567915961422.jpg', '2.jpg', '236269', 'image/jpeg', '192', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('193', 'http://localhost:80/upload/20190502/554960829822700.jpg', '3.jpg', '271594', 'image/jpeg', '193', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('194', 'http://localhost:80/upload/20190502/555781614366676.jpg', '1.jpg', '107421', 'image/jpeg', '194', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('195', 'http://localhost:80/upload/20190502/555788508897076.png', 'img12.png', '327448', 'image/png', '195', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('196', 'http://localhost:80/upload/20190502/555788529778903.png', 'img13.png', '241260', 'image/png', '196', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('197', 'http://localhost:80/upload/20190502/555788552478253.png', 'img14.png', '464400', 'image/png', '197', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('198', 'http://localhost:80/upload/20190502/557245511263065.jpg', '2.jpg', '236269', 'image/jpeg', '198', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('199', 'http://localhost:80/upload/20190502/557251878148255.png', 'img13.png', '241260', 'image/png', '199', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('200', 'http://localhost:80/upload/20190502/557257343592518.png', 'img12.png', '327448', 'image/png', '200', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('201', 'http://localhost:80/upload/20190502/557257364478722.png', 'img13.png', '241260', 'image/png', '201', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('202', 'http://localhost:80/upload/20190502/557257383035038.png', 'img14.png', '464400', 'image/png', '202', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('203', 'http://localhost:80/upload/20190502/557448625750995.png', 'img12.png', '327448', 'image/png', '203', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('204', 'http://localhost:80/upload/20190502/557621418224392.png', 'img11.png', '478385', 'image/png', '204', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('205', 'http://localhost:80/upload/20190502/557624746482103.png', 'img12.png', '327448', 'image/png', '205', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('206', 'http://localhost:80/upload/20190502/558036132060361.jpg', '2.jpg', '236269', 'image/jpeg', '206', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('207', 'http://localhost:80/upload/20190502/558046709241472.png', 'img12.png', '327448', 'image/png', '207', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('208', 'http://localhost:80/upload/20190502/558046721585242.png', 'img13.png', '241260', 'image/png', '208', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('209', 'http://localhost:80/upload/20190502/558046752341283.png', 'img14.png', '464400', 'image/png', '209', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('210', 'http://localhost:80/upload/20190502/558046779678892.png', 'img15.png', '1477879', 'image/png', '210', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('211', 'http://localhost:80/upload/20190502/558127702893997.png', 'img13.png', '241260', 'image/png', '211', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('212', 'http://localhost:80/upload/20190502/558132049902760.jpg', '06.jpg', '1417', 'image/jpeg', '212', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('213', 'http://localhost:80/upload/20190502/558132089605290.png', 'img11.png', '478385', 'image/png', '213', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('214', 'http://localhost:80/upload/20190502/558132109133456.png', 'img12.png', '327448', 'image/png', '214', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('215', 'http://localhost:80/upload/20190502/558132123210146.png', 'niuzai.png', '1619', 'image/png', '215', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('216', 'http://localhost:80/upload/20190502/558132157037816.png', 'OA系统权限结构图.png', '9649', 'image/png', '216', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('217', 'http://localhost:80/upload/20190506/6992822577939.jpg', '2.jpg', '185036', 'image/jpeg', '217', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('218', 'http://localhost:80/upload/20190506/6996338644659.jpg', '03.jpg', '462', 'image/jpeg', '218', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('219', 'http://localhost:80/upload/20190506/8904354290913.jpg', '2.jpg', '185036', 'image/jpeg', '219', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('220', 'http://localhost:80/upload/20190506/8909362103647.jpg', '02.jpg', '463', 'image/jpeg', '220', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('221', 'http://localhost:80/upload/20190506/9204819205452.jpg', '5.jpg', '398422', 'image/jpeg', '221', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('222', 'http://localhost:80/upload/20190506/9513105738479.jpg', '4.jpg', '335523', 'image/jpeg', '222', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('223', 'http://localhost:80/upload/20190506/9534793391413.jpg', '2.jpg', '185036', 'image/jpeg', '223', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('224', 'http://localhost:80/upload/20190506/9688773435101.jpg', '4.jpg', '335523', 'image/jpeg', '224', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('225', 'http://localhost:80/upload/20190506/9745410214463.jpg', '4.jpg', '335523', 'image/jpeg', '225', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('226', 'http://localhost:80/upload/20190506/9760542448189.jpg', '4.jpg', '335523', 'image/jpeg', '226', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('227', 'http://localhost:80/upload/20190506/9767389720624.jpg', '5.jpg', '398422', 'image/jpeg', '227', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('228', 'http://localhost:80/upload/20190506/9779674743544.jpg', '06.jpg', '462', 'image/jpeg', '228', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('229', 'http://localhost:80/upload/20190508/173666155002753.jpg', '39569EC4B5B96512842E6E802AEC2A0D23397081.jpg', '108920', 'image/jpeg', '229', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('230', 'http://localhost:80/upload/20190508/173671542123995.jpg', 'AEAF1046865C36A26D30D49C853166A4457EEFC9.jpg', '77647', 'image/jpeg', '230', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('231', 'http://localhost:80/upload/20190508/173675108710920.jpg', '39569EC4B5B96512842E6E802AEC2A0D23397081.jpg', '108920', 'image/jpeg', '231', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('232', 'http://localhost:80/upload/20190508/173687312224900.jpg', '4D4733D21A7D105436FE29FE9ABCC3ADBE8048DF.jpg', '149951', 'image/jpeg', '232', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('233', 'http://localhost:80/upload/20190508/173693165384601.jpg', '95AFDBBD8A216B3EDD0EC78EA2620A168BEDA0BF.jpg', '114086', 'image/jpeg', '233', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('234', 'http://localhost:80/upload/20190508/173698185428434.jpg', '254F61DFFF216C55249278A8869F13B6660FDD93.jpg', '69693', 'image/jpeg', '234', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('235', 'http://localhost:80/upload/20190508/173705220928163.jpg', '39569EC4B5B96512842E6E802AEC2A0D23397081.jpg', '108920', 'image/jpeg', '235', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('236', 'http://localhost:80/upload/20190508/173709841606890.jpg', 'AEAF1046865C36A26D30D49C853166A4457EEFC9.jpg', '77647', 'image/jpeg', '236', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('237', 'http://localhost:80/upload/20190611/3162092129744474.jpg', '2.jpg', '236269', 'image/jpeg', '237', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('238', 'http://localhost:80/upload/20190611/3162097835339637.jpg', '03.jpg', '1417', 'image/jpeg', '238', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('239', 'http://localhost:80/upload/20190612/3252793449064798.jpg', '2.jpg', '236269', 'image/jpeg', '239', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('240', 'http://localhost:80/upload/20190612/3252819418249282.jpg', '3.jpg', '271594', 'image/jpeg', '240', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('241', 'http://localhost:80/upload/20190612/3257985399329003.jpg', '2.jpg', '236269', 'image/jpeg', '241', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('242', 'http://localhost:80/upload/20190612/3258167475315714.jpg', '2.jpg', '236269', 'image/jpeg', '242', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('243', 'http://localhost:80/upload/20190612/3258443365805432.jpg', '03.jpg', '1417', 'image/jpeg', '243', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('244', 'http://localhost:80/upload/20190612/3258492004243688.jpg', '3.jpg', '271594', 'image/jpeg', '244', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('245', 'http://localhost:80/upload/20190612/3258537198993140.jpg', '4.jpg', '434464', 'image/jpeg', '245', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('246', 'http://localhost:80/upload/20190612/3258560557541600.jpg', '2.jpg', '236269', 'image/jpeg', '246', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('247', 'http://localhost:80/upload/20190612/3259486750477538.jpg', '03.jpg', '1417', 'image/jpeg', '247', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('248', 'http://localhost:80/upload/20190612/3259527275283623.jpg', '2.jpg', '236269', 'image/jpeg', '248', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('249', 'http://localhost:80/upload/20190612/3266400943522513.jpg', '2.jpg', '236269', 'image/jpeg', '249', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('250', 'http://localhost:80/upload/20190612/3267040118725544.jpg', '3.jpg', '271594', 'image/jpeg', '250', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('251', 'http://localhost:80/upload/20190612/3267066016512349.jpg', '2.jpg', '236269', 'image/jpeg', '251', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('252', 'http://localhost:80/upload/20190612/3267182930936222.jpg', '04.jpg', '1417', 'image/jpeg', '252', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('253', 'http://localhost:80/upload/20190614/3411701522649780.jpg', '4E461CD13CF455AEA895BE384CC9E61E36FA4982.jpg', '94612', 'image/jpeg', '253', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('254', 'http://localhost:80/upload/20190614/3418835535865130.jpg', '4E461CD13CF455AEA895BE384CC9E61E36FA4982.jpg', '94612', 'image/jpeg', '254', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('255', 'http://localhost:80/upload/20190614/3419075661551533.jpg', '4E461CD13CF455AEA895BE384CC9E61E36FA4982.jpg', '94612', 'image/jpeg', '255', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('256', 'http://localhost:80/upload/20190614/3419196034246715.jpg', '43DD04759D3E25D16D2C5DF674EA25B418C730DF.jpg', '120926', 'image/jpeg', '256', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('257', 'http://localhost:80/upload/20190614/3419364747257848.jpg', '4E461CD13CF455AEA895BE384CC9E61E36FA4982.jpg', '94612', 'image/jpeg', '257', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('258', 'http://localhost:80/upload/20190614/3419463897578577.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '258', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('259', 'http://localhost:80/upload/20190614/3419549001087817.png', '1B1E514E3483CADF895A3122B84615D2952FA0D3.png', '29290', 'image/png', '259', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('260', 'http://localhost:80/upload/20190614/3419621599646268.jpg', '31FDB5003566CD68443866188CE890BB5C6ECF2C.jpg', '94648', 'image/jpeg', '260', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('261', 'http://localhost:80/upload/20190614/3419749869938990.jpg', '0209B627DFC27C7D6FFB0E32720A389FCDAA5E3B.jpg', '123913', 'image/jpeg', '261', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('262', 'http://localhost:80/upload/20190614/3419812129078218.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '262', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('263', 'http://localhost:80/upload/20190614/3419874609238601.jpg', 'C5A06D52B64D0479FDE702B93B70DB3147183E4F.jpg', '138578', 'image/jpeg', '263', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('264', 'http://localhost:80/upload/20190614/3420024577092032.png', '46F6EF8F383417BF9B463782A8410623B1CC6A02.png', '48433', 'image/png', '264', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('265', 'http://localhost:80/upload/20190614/3420077242891265.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '265', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('266', 'http://localhost:80/upload/20190614/3420147369139629.jpg', '98069AEF959104C94C4695BCDAF3EC636CE47F85.jpg', '131601', 'image/jpeg', '266', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('267', 'http://localhost:80/upload/20190614/3420205955416656.jpg', '3700336A94F1E8A32A189CBAB135F77A49B1E4E1.jpg', '106000', 'image/jpeg', '267', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('268', 'http://localhost:80/upload/20190614/3420257741361831.jpg', 'FA45C47A38111A3E3B95D34A06045CA2F70D3CCB.jpg', '133309', 'image/jpeg', '268', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('269', 'http://localhost:80/upload/20190614/3420302485440104.jpg', '097A3668A6B6D3EF4F11A3614F63989C231A07E3.jpg', '110412', 'image/jpeg', '269', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('270', 'http://localhost:80/upload/20190614/3420371098287135.png', 'D7DEA1EBD7F4B0651140EA50B5C6ECE2AB7C7D84.png', '25809', 'image/png', '270', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('271', 'http://localhost:80/upload/20190614/3420431647689256.png', 'D7DEA1EBD7F4B0651140EA50B5C6ECE2AB7C7D84.png', '25809', 'image/png', '271', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('272', 'http://localhost:80/upload/20190614/3420444556693737.png', 'CC1F267D1B1CCF4B21733FFFFD9F87F487047706.png', '40594', 'image/png', '272', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('273', 'http://www.nxqhedu.cn:80/upload/20190617/443598621393900.jpg', '新媒体.jpg', '316286', 'image/jpeg', '273', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('274', 'http://www.nxqhedu.cn:80/upload/20190617/444025232223300.jpg', 'Java.jpg', '114567', 'image/jpeg', '274', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('275', 'http://www.nxqhedu.cn:80/upload/20190617/444391170547900.jpg', 'Java.jpg', '114567', 'image/jpeg', '275', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('276', 'http://www.nxqhedu.cn:80/upload/20190617/444511791740600.jpg', 'Java.jpg', '114567', 'image/jpeg', '276', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('277', 'http://www.nxqhedu.cn:80/upload/20190617/444560787718500.jpg', 'Java.jpg', '114567', 'image/jpeg', '277', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('278', 'http://www.nxqhedu.cn:80/upload/20190617/444560901796500.jpg', 'UI2.jpg', '91747', 'image/jpeg', '278', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('279', 'http://www.nxqhedu.cn:80/upload/20190617/444561097199700.jpg', 'UI.jpg', '89094', 'image/jpeg', '279', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('280', 'http://www.nxqhedu.cn:80/upload/20190617/444561587906300.jpg', '新媒体2.jpg', '68950', 'image/jpeg', '280', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('281', 'http://www.nxqhedu.cn:80/upload/20190617/444561610078100.jpg', '新媒体.jpg', '316286', 'image/jpeg', '281', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('282', 'http://www.nxqhedu.cn:80/upload/20190617/444561988927700.jpg', '学校公众号.jpg', '248949', 'image/jpeg', '282', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('283', 'http://www.nxqhedu.cn:80/upload/20190617/444773758026200.jpg', 'Java.jpg', '114567', 'image/jpeg', '283', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('284', 'http://www.nxqhedu.cn:80/upload/20190617/445230952390300.jpg', 'Java.jpg', '114567', 'image/jpeg', '284', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('285', 'http://www.nxqhedu.cn:80/upload/20190617/445650580631100.jpg', '学校公众号.jpg', '248949', 'image/jpeg', '285', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('286', 'http://www.nxqhedu.cn:80/upload/20190617/447488662633400.jpg', '新媒体.jpg', '316286', 'image/jpeg', '286', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('287', 'http://www.nxqhedu.cn:80/upload/20190617/447981584918100.jpg', '新媒体.jpg', '316286', 'image/jpeg', '287', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('288', 'http://www.nxqhedu.cn:80/upload/20190617/448668509219700.jpg', 'timg.jpg', '12149', 'image/jpeg', '288', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('289', 'http://www.nxqhedu.cn:80/upload/20190617/449054856896600.jpg', 'u=16320031,833300556&fm=26&gp=0.jpg', '42833', 'image/jpeg', '289', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('290', 'http://www.nxqhedu.cn:80/upload/20190617/449130152308600.jpg', 'u=16320031,833300556&fm=26&gp=0.jpg', '42833', 'image/jpeg', '290', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('291', 'http://www.nxqhedu.cn:80/upload/20190617/449163687035000.jpg', 'timg (1).jpg', '72768', 'image/jpeg', '291', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('292', 'http://www.nxqhedu.cn:80/upload/20190617/449200076433200.jpg', 'timg (5).jpg', '19013', 'image/jpeg', '292', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('293', 'http://www.nxqhedu.cn:80/upload/20190617/449314307125200.jpg', 'timg (2).jpg', '26727', 'image/jpeg', '293', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('294', 'http://www.nxqhedu.cn:80/upload/20190617/449760813219500.jpg', 'Java.jpg', '114567', 'image/jpeg', '294', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('295', 'http://www.nxqhedu.cn:80/upload/20190617/450268612879200.jpg', 'box6_a2.jpg', '50914', 'image/jpeg', '295', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('296', 'http://www.nxqhedu.cn:80/upload/20190617/450459356484400.jpg', 'u=4136627788,1370402877&fm=26&gp=0.jpg', '57038', 'image/jpeg', '296', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('297', 'http://www.nxqhedu.cn:80/upload/20190617/451394485856200.jpg', 'UI2.jpg', '91747', 'image/jpeg', '297', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('298', 'http://www.nxqhedu.cn:80/upload/20190617/453363953420700.jpg', '学校公众号.jpg', '248949', 'image/jpeg', '298', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('299', 'http://www.nxqhedu.cn:80/upload/20190617/453559520429400.jpg', '下载.jpg', '13101', 'image/jpeg', '299', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('300', 'http://www.nxqhedu.cn:80/upload/20190619/597054847802100.jpg', 'timg.jpg', '41680', 'image/jpeg', '300', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('301', 'http://www.nxqhedu.cn:80/upload/20190619/597221417066800.jpg', 'timg (1).jpg', '19712', 'image/jpeg', '301', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('302', 'http://www.nxqhedu.cn:80/upload/20190619/597605999535000.jpg', '0298116001553790000p2360.jpg', '84384', 'image/jpeg', '302', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('303', 'http://www.nxqhedu.cn:80/upload/20190619/597790314132700.jpg', '90.jpg', '54208', 'image/jpeg', '303', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('304', 'http://www.nxqhedu.cn:80/upload/20190619/597928961872100.jpg', '1550048455a5408.jpg', '99948', 'image/jpeg', '304', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('305', 'http://www.nxqhedu.cn:80/upload/20190619/598069386807700.jpg', 'u=4028733043,2831625985&fm=202&src=2000&mola=new&crop=v1.jpg', '4221', 'image/jpeg', '305', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('306', 'http://www.nxqhedu.cn:80/upload/20190619/598340295834400.jpg', 'u=218674752,4221245558&fm=202&mola=new&crop=v1.jpg', '8282', 'image/jpeg', '306', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('307', 'http://www.nxqhedu.cn:80/upload/20190619/598464747728400.jpg', 'u=2315314554,652570859&fm=202&mola=new&crop=v1.jpg', '8776', 'image/jpeg', '307', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('308', 'http://www.nxqhedu.cn:80/upload/20190619/604793681296400.jpg', 'u=3367630641,1876031106&fm=27&gp=0.jpg', '27930', 'image/jpeg', '308', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('309', 'http://www.nxqhedu.cn:80/upload/20190619/604938978895300.jpg', 'u=2436521269,3891909216&fm=202&mola=new&crop=v1.jpg', '15526', 'image/jpeg', '309', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('310', 'http://www.nxqhedu.cn:80/upload/20190619/605247059452100.jpg', 'u=2634959893,1718278578&fm=202&mola=new&crop=v1.jpg', '3984', 'image/jpeg', '310', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('311', 'http://www.nxqhedu.cn:80/upload/20190619/617537540894100.jpg', 'u=3459889475,311002622&fm=85&s=91C19C44EA20C44D182EBA12030010DD.jpg', '2827', 'image/jpeg', '311', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('312', 'http://www.nxqhedu.cn:80/upload/20190619/617640373941900.jpg', 'u=1314962657,670611553&fm=27&gp=0.jpg', '20222', 'image/jpeg', '312', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('313', 'http://www.nxqhedu.cn:80/upload/20190619/617723543812300.jpg', 'u=4185021629,654205438&fm=58.jpg', '4806', 'image/jpeg', '313', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('314', 'http://www.nxqhedu.cn:80/upload/20190619/617802592168900.jpg', '新媒体.jpg', '316286', 'image/jpeg', '314', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('315', 'http://www.nxqhedu.cn:80/upload/20190619/617951477964200.jpg', 'u=3632332970,1916894852&fm=111&gp=0.jpg', '6027', 'image/jpeg', '315', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('316', 'http://www.nxqhedu.cn:80/upload/20190619/618103953889000.jpg', 'u=2205393247,695001034&fm=27&gp=0.jpg', '29791', 'image/jpeg', '316', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('317', 'http://www.nxqhedu.cn:80/upload/20190619/618222744397800.jpg', 'u=3973732229,425235430&fm=111&gp=0.jpg', '7445', 'image/jpeg', '317', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('318', 'http://www.nxqhedu.cn:80/upload/20190619/618310687718400.jpg', 'u=1327290870,4063403209&fm=15&gp=0.jpg', '19599', 'image/jpeg', '318', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('319', 'http://www.nxqhedu.cn:80/upload/20190619/618400331681700.jpg', 'u=2396360444,548950267&fm=27&gp=0.jpg', '38672', 'image/jpeg', '319', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('320', 'http://www.nxqhedu.cn:80/upload/20190619/618466949338700.jpg', 'u=1077949665,3752855456&fm=27&gp=0.jpg', '29572', 'image/jpeg', '320', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('321', 'http://www.nxqhedu.cn:80/upload/20190619/618854848169800.jpg', 'u=1224168060,1236521932&fm=27&gp=0.jpg', '32800', 'image/jpeg', '321', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('322', 'http://www.nxqhedu.cn:80/upload/20190619/618937950171200.jpg', 'u=1107200332,2200847821&fm=27&gp=0.jpg', '66287', 'image/jpeg', '322', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('323', 'http://www.nxqhedu.cn:80/upload/20190619/619103161754600.png', '5c5e53aceb0348cca3424bf3c60fd3b0.png', '145941', 'image/png', '323', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('324', 'http://www.nxqhedu.cn:80/upload/20190619/619352687152600.jpg', 'u=3244575106,1361377495&fm=27&gp=0.jpg', '35297', 'image/jpeg', '324', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('325', 'http://www.nxqhedu.cn:80/upload/20190619/619638692276700.jpg', 'u=2818930557,3765124350&fm=27&gp=0.jpg', '20085', 'image/jpeg', '325', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('326', 'http://www.nxqhedu.cn:80/upload/20190619/619791691610200.jpg', 'u=1205347185,3504098786&fm=27&gp=0.jpg', '40014', 'image/jpeg', '326', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('327', 'http://www.nxqhedu.cn:80/upload/20190619/619913597944000.jpg', 'u=1256917464,1111664282&fm=85&app=63&f=JPEG.jpg', '2956', 'image/jpeg', '327', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('328', 'http://www.nxqhedu.cn:80/upload/20190619/619913659292100.jpg', 'u=1205347185,3504098786&fm=27&gp=0.jpg', '40014', 'image/jpeg', '328', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('329', 'http://www.nxqhedu.cn:80/upload/20190619/619969732241000.jpg', 'u=1256917464,1111664282&fm=85&app=63&f=JPEG.jpg', '2956', 'image/jpeg', '329', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('330', 'http://www.nxqhedu.cn:80/upload/20190619/620014930221300.jpg', 'u=1256917464,1111664282&fm=85&app=63&f=JPEG.jpg', '2956', 'image/jpeg', '330', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('331', 'http://www.nxqhedu.cn:80/upload/20190619/620216904242800.jpg', 'u=2029353074,417249068&fm=27&gp=0.jpg', '36656', 'image/jpeg', '331', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('332', 'http://www.nxqhedu.cn:80/upload/20190620/680595036454900.jpg', '微信图片_20190620085728.jpg', '145204', 'image/jpeg', '332', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('333', 'http://www.nxqhedu.cn:80/upload/20190620/681205681116700.jpg', '微信图片_20190620085728.jpg', '145204', 'image/jpeg', '333', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('334', 'http://www.nxqhedu.cn:80/upload/20190620/706606033345200.jpg', '下载.jpg', '4154', 'image/jpeg', '334', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('335', 'http://www.nxqhedu.cn:80/upload/20190620/706928362987500.jpg', '下载.jpg', '4154', 'image/jpeg', '335', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('336', 'http://www.nxqhedu.cn:80/upload/20190620/706958961128100.jpg', 'u=3833953357,1780420872&fm=202&src=756&mola=new&crop=v1.jpg', '3346', 'image/jpeg', '336', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('337', 'http://www.nxqhedu.cn:80/upload/20190620/706959003513700.jpg', 'u=2438678423,2404077217&fm=27&gp=0.jpg', '35003', 'image/jpeg', '337', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('338', 'http://www.nxqhedu.cn:80/upload/20190620/706959062245200.jpg', 'u=3946036432,4058973840&fm=202&mola=new&crop=v1.jpg', '12037', 'image/jpeg', '338', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('339', 'http://www.nxqhedu.cn:80/upload/20190620/706959067045100.jpg', 'u=4024886318,2738543450&fm=202&src=756&mola=new&crop=v1.jpg', '1718', 'image/jpeg', '339', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('340', 'http://www.nxqhedu.cn:80/upload/20190620/706959092280100.jpg', 'u=3263335564,2172992602&fm=15&gp=0.jpg', '26667', 'image/jpeg', '340', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('341', 'http://www.nxqhedu.cn:80/upload/20190620/706959128694300.jpg', '下载.jpg', '4154', 'image/jpeg', '341', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('342', 'http://www.nxqhedu.cn:80/upload/20190620/708758016431300.png', '1853129625.png', '80502', 'image/png', '342', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('343', 'http://www.nxqhedu.cn:80/upload/20190620/708881995234100.jpg', 'u=2071591566,4219035524&fm=85&s=ECA204D514C024F85E24D91E030040C3.jpg', '4651', 'image/jpeg', '343', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('344', 'http://www.nxqhedu.cn:80/upload/20190620/709529683957100.jpg', 'u=214037784,2332594003&fm=202&mola=new&crop=v1.jpg', '12404', 'image/jpeg', '344', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('345', 'http://www.nxqhedu.cn:80/upload/20190620/710047826613700.jpg', 'u=1786334563,1976967248&fm=85&s=432BBB45AD134BCC183CB57203008030.jpg', '2618', 'image/jpeg', '345', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('346', 'http://www.nxqhedu.cn:80/upload/20190620/710171073137300.jpg', 'u=2250865965,1365161670&fm=85&s=E6A0D54E5EE2B05B56C10C13010080C1.jpg', '3096', 'image/jpeg', '346', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('347', 'http://www.nxqhedu.cn:80/upload/20190620/710383403014200.jpg', 'u=1059081615,2833302040&fm=58.jpg', '4626', 'image/jpeg', '347', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('348', 'http://www.nxqhedu.cn:80/upload/20190620/710644138508100.jpg', 'u=1828551280,2735196744&fm=85&app=57&f=JPEG.jpg', '3751', 'image/jpeg', '348', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('349', 'http://www.nxqhedu.cn:80/upload/20190620/711484110309100.jpg', 'u=1679785555,970330511&fm=85&app=63&f=JPEG.jpg', '4539', 'image/jpeg', '349', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('350', 'http://www.nxqhedu.cn:80/upload/20190620/712015650696100.jpg', 'u=3787437009,1073318326&fm=85.jpg', '1763', 'image/jpeg', '350', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('351', 'http://www.nxqhedu.cn:80/upload/20190620/712123647492000.jpg', 'u=2900118226,577394673&fm=85&s=6E80E80A02621701C03BF5B703001028.jpg', '2684', 'image/jpeg', '351', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('352', 'http://www.nxqhedu.cn:80/upload/20190620/714589827433100.jpg', 'Java.jpg', '114567', 'image/jpeg', '352', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('353', 'http://www.nxqhedu.cn:80/upload/20190621/776196023269900.jpg', '7c6fb50f62626c73f2bab68bdc7b87aa.jpg', '130518', 'image/jpeg', '353', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('354', 'http://www.nxqhedu.cn:80/upload/20190621/776587836762600.jpg', '微信图片_20190621113836.jpg', '195790', 'image/jpeg', '354', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('355', 'http://www.nxqhedu.cn:80/upload/20190621/792334729465500.jpg', 'u=2840067864,779135722&fm=27&gp=0.jpg', '19859', 'image/jpeg', '355', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('356', 'http://www.nxqhedu.cn:80/upload/20190621/792478486444800.jpg', 'u=2792866183,826540781&fm=26&gp=0.jpg', '19090', 'image/jpeg', '356', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('357', 'http://www.nxqhedu.cn:80/upload/20190621/792568698032700.jpg', 'u=839183515,490159568&fm=26&gp=0.jpg', '18308', 'image/jpeg', '357', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('358', 'http://www.nxqhedu.cn:80/upload/20190621/792735938152500.jpg', 'u=408399206,2320396200&fm=11&gp=0.jpg', '42275', 'image/jpeg', '358', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('359', 'http://www.nxqhedu.cn:80/upload/20190621/792829249450400.jpg', '下载.jpg', '32580', 'image/jpeg', '359', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('360', 'http://www.nxqhedu.cn:80/upload/20190621/792912897691200.jpg', 'u=3461026704,1677433014&fm=26&gp=0.jpg', '47627', 'image/jpeg', '360', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('361', 'http://www.nxqhedu.cn:80/upload/20190621/792980679818500.jpg', 'u=487975241,1218943775&fm=26&gp=0.jpg', '17252', 'image/jpeg', '361', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('362', 'http://www.nxqhedu.cn:80/upload/20190621/793042738805000.jpg', 'u=3889782573,2959111878&fm=26&gp=0.jpg', '24188', 'image/jpeg', '362', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('363', 'http://www.nxqhedu.cn:80/upload/20190621/793620036395000.jpg', '下载 (1).jpg', '23681', 'image/jpeg', '363', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('364', 'http://www.nxqhedu.cn:80/upload/20190621/793691103586000.jpg', '下载 (2).jpg', '20074', 'image/jpeg', '364', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('365', 'http://www.nxqhedu.cn:80/upload/20190621/793911706772400.jpg', 'u=713748001,2476058811&fm=26&gp=0.jpg', '27417', 'image/jpeg', '365', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('366', 'http://www.nxqhedu.cn:80/upload/20190621/794758478753700.jpg', '下载 (3).jpg', '19485', 'image/jpeg', '366', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('367', 'http://www.nxqhedu.cn:80/upload/20190621/795006177173500.jpg', '下载.jpg', '17989', 'image/jpeg', '367', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('368', 'http://www.nxqhedu.cn:80/upload/20190621/795068315922500.jpg', '下载 (1).jpg', '36573', 'image/jpeg', '368', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('369', 'http://www.nxqhedu.cn:80/upload/20190621/795136839007700.jpg', 'u=1719148354,2565204409&fm=15&gp=0.jpg', '39527', 'image/jpeg', '369', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('370', 'http://www.nxqhedu.cn:80/upload/20190621/795212051275700.jpg', 'u=3182195404,826192385&fm=26&gp=0.jpg', '23102', 'image/jpeg', '370', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('371', 'http://www.nxqhedu.cn:80/upload/20190621/795512780483000.jpg', 'u=678334353,3602231673&fm=202&src=608&mola=new&crop=v1.jpg', '6253', 'image/jpeg', '371', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('372', 'http://www.nxqhedu.cn:80/upload/20190621/795580070032800.jpg', 'u=807391977,2833727359&fm=58&bpow=669&bpoh=400.jpg', '2794', 'image/jpeg', '372', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('373', 'http://www.nxqhedu.cn:80/upload/20190621/797404923241600.jpg', '2.jpg', '7126', 'image/jpeg', '373', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('374', 'http://www.nxqhedu.cn:80/upload/20190621/797404949205000.jpg', '1.jpg', '15519', 'image/jpeg', '374', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('375', 'http://www.nxqhedu.cn:80/upload/20190621/797404986196400.jpg', '3.jpg', '24072', 'image/jpeg', '375', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('376', 'http://www.nxqhedu.cn:80/upload/20190624/1027482805795900.jpg', '微信图片_20190624091606.jpg', '62729', 'image/jpeg', '376', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('377', 'http://www.nxqhedu.cn:80/upload/20190624/1027504028161900.png', '微信图片_20190624091552.png', '232640', 'image/png', '377', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('378', 'http://www.nxqhedu.cn:80/upload/20190624/1027520037302900.png', '微信图片_20190624091552.png', '232640', 'image/png', '378', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('379', 'http://www.nxqhedu.cn:80/upload/20190624/1027538013483500.jpg', '微信图片_20190624091842.jpg', '93671', 'image/jpeg', '379', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('380', 'http://www.nxqhedu.cn:80/upload/20190624/1032551566372000.jpg', 't01acec6a8ce1d1b8d7.jpg', '5367', 'image/jpeg', '380', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('381', 'http://www.nxqhedu.cn:80/upload/20190624/1032653942075800.jpg', 'u=734387260,87238584&fm=27&gp=0.jpg', '40176', 'image/jpeg', '381', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('382', 'http://www.nxqhedu.cn:80/upload/20190624/1032777813996700.jpg', 'u=2009755743,983112123&fm=27&gp=0.jpg', '15613', 'image/jpeg', '382', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('383', 'http://www.nxqhedu.cn:80/upload/20190624/1032907674295900.jpg', 'u=2903068497,4096856003&fm=27&gp=0.jpg', '82331', 'image/jpeg', '383', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('384', 'http://www.nxqhedu.cn:80/upload/20190624/1032994825874200.jpg', 'u=2511452726,2577845858&fm=202&mola=new&crop=v1.jpg', '23207', 'image/jpeg', '384', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('385', 'http://www.nxqhedu.cn:80/upload/20190624/1033159619052400.jpg', 't01acec6a8ce1d1b8d7.jpg', '5367', 'image/jpeg', '385', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('386', 'http://www.nxqhedu.cn:80/upload/20190624/1033231081840000.jpg', 'u=2868685870,3326462060&fm=27&gp=0.jpg', '40176', 'image/jpeg', '386', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('387', 'http://www.nxqhedu.cn:80/upload/20190624/1033314507758900.jpg', 'u=3444504423,3450538389&fm=27&gp=0.jpg', '78044', 'image/jpeg', '387', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('388', 'http://www.nxqhedu.cn:80/upload/20190624/1033398780582400.jpg', 'u=3409262078,1937576634&fm=27&gp=0.jpg', '45355', 'image/jpeg', '388', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('389', 'http://www.nxqhedu.cn:80/upload/20190624/1033483156775200.jpg', 'u=1730680966,2591052023&fm=27&gp=0.jpg', '16075', 'image/jpeg', '389', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('390', 'http://www.nxqhedu.cn:80/upload/20190624/1033610403310300.jpg', 'u=2624375533,103099596&fm=27&gp=0.jpg', '62211', 'image/jpeg', '390', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('391', 'http://www.nxqhedu.cn:80/upload/20190624/1033757695576500.jpg', 'u=36834531,4042142986&fm=27&gp=0.jpg', '50781', 'image/jpeg', '391', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('392', 'http://www.nxqhedu.cn:80/upload/20190624/1034025545624200.jpg', 'u=756199356,4081968455&fm=27&gp=0.jpg', '27973', 'image/jpeg', '392', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('393', 'http://www.nxqhedu.cn:80/upload/20190624/1034463377657200.jpg', 'u=3287670170,7609574&fm=27&gp=0.jpg', '24940', 'image/jpeg', '393', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('394', 'http://www.nxqhedu.cn:80/upload/20190624/1034717965894900.jpg', 'u=472848221,3164937360&fm=27&gp=0.jpg', '25358', 'image/jpeg', '394', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('395', 'http://www.nxqhedu.cn:80/upload/20190624/1041722410761100.jpg_400x400.jpg', 'TB2q9_HnkKWBuNjy1zjXXcOypXa_!!755750157.jpg_400x400.jpg', '12339', 'image/jpeg', '395', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('396', 'http://www.nxqhedu.cn:80/upload/20190624/1045417823261700.png', '1732941877.png', '54286', 'image/png', '396', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('397', 'http://www.nxqhedu.cn:80/upload/20190624/1045491448641900.jpg', 'u=2639017929,2522078370&fm=27&gp=0.jpg', '23168', 'image/jpeg', '397', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('398', 'http://www.nxqhedu.cn:80/upload/20190624/1045582473629400.jpg', 'u=3743282470,1084929824&fm=85&s=4E222BC1D0526DD0049504D603005012.jpg', '3992', 'image/jpeg', '398', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('399', 'http://www.nxqhedu.cn:80/upload/20190624/1045685732236600.jpg', 'u=3338077045,3118821246&fm=15&gp=0.jpg', '15110', 'image/jpeg', '399', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('400', 'http://www.nxqhedu.cn:80/upload/20190624/1045919328369700.jpg', 'u=3501885015,4105246648&fm=27&gp=0.jpg', '99574', 'image/jpeg', '400', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('401', 'http://www.nxqhedu.cn:80/upload/20190624/1045990634879400.jpg', 'u=2249962956,4144157979&fm=27&gp=0.jpg', '27334', 'image/jpeg', '401', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('402', 'http://www.nxqhedu.cn:80/upload/20190624/1046099484244300.jpg', 'u=337150369,373516329&fm=27&gp=0.jpg', '30578', 'image/jpeg', '402', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('403', 'http://www.nxqhedu.cn:80/upload/20190624/1046145632361900.jpg', 'u=1568928276,1945084205&fm=27&gp=0.jpg', '68270', 'image/jpeg', '403', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('404', 'http://www.nxqhedu.cn:80/upload/20190624/1046398131919300.jpg', 'u=4259577578,3921415859&fm=26&gp=0.jpg', '27948', 'image/jpeg', '404', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('405', 'http://www.nxqhedu.cn:80/upload/20190624/1046558317630700.jpg', 'u=1638105451,710711892&fm=27&gp=0.jpg', '35398', 'image/jpeg', '405', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('406', 'http://www.nxqhedu.cn:80/upload/20190624/1047007797390400.jpg', 'u=1145035949,2523860952&fm=26&gp=0.jpg', '16492', 'image/jpeg', '406', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('407', 'http://www.nxqhedu.cn:80/upload/20190624/1047121715827300.jpg', 'u=1201442808,2015734843&fm=15&gp=0.jpg', '12278', 'image/jpeg', '407', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('408', 'http://www.nxqhedu.cn:80/upload/20190624/1047224171384200.jpg', 'u=801744192,55325197&fm=27&gp=0.jpg', '19975', 'image/jpeg', '408', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('409', 'http://www.nxqhedu.cn:80/upload/20190624/1047349609050000.jpg', '新媒体.jpg', '316286', 'image/jpeg', '409', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('410', 'http://www.nxqhedu.cn:80/upload/20190624/1047358601241600.jpg', '新媒体2.jpg', '68950', 'image/jpeg', '410', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('411', 'http://www.nxqhedu.cn:80/upload/20190624/1047480054560900.jpg', 'u=1375274294,3874161575&fm=27&gp=0.jpg', '25116', 'image/jpeg', '411', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('412', 'http://www.nxqhedu.cn:80/upload/20190624/1047523887881700.jpg', 'u=1375274294,3874161575&fm=27&gp=0.jpg', '25116', 'image/jpeg', '412', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('413', 'http://www.nxqhedu.cn:80/upload/20190624/1048829542848400.jpg', 'u=1627962055,69856437&fm=27&gp=0.jpg', '26306', 'image/jpeg', '413', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('414', 'http://www.nxqhedu.cn:80/upload/20190624/1049446411933600.jpg', 'bangongruanjianpeixunbanhaibaosheji_9036331_small.jpg', '28623', 'image/jpeg', '414', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('415', 'http://www.nxqhedu.cn:80/upload/20190624/1049653602616800.jpg', '20171012165231183.jpg', '47692', 'image/jpeg', '415', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('416', 'http://www.nxqhedu.cn:80/upload/20190624/1049775174198000.jpg', '94cad1c8a786c917752cc23cc53d70cf3bc75783.jpg', '10214', 'image/jpeg', '416', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('417', 'http://www.nxqhedu.cn:80/upload/20190624/1050503121966600.jpg', 'u=1627962055,69856437&fm=27&gp=0.jpg', '26306', 'image/jpeg', '417', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('418', 'http://www.nxqhedu.cn:80/upload/20190624/1053284987112700.jpg', 'u=1627962055,69856437&fm=27&gp=0.jpg', '26306', 'image/jpeg', '418', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('419', 'http://www.nxqhedu.cn:80/upload/20190624/1053493591692799.jpg', 'u=2697394953,2920716093&fm=27&gp=0.jpg', '31629', 'image/jpeg', '419', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('420', 'http://www.nxqhedu.cn:80/upload/20190624/1053566907104700.jpg', 'u=2697394953,2920716093&fm=27&gp=0.jpg', '31629', 'image/jpeg', '420', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('421', 'http://www.nxqhedu.cn:80/upload/20190627/1287569460030200.jpg', '下载.jpg', '44502', 'image/jpeg', '421', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('422', 'http://www.nxqhedu.cn:80/upload/20190627/1288557912120700.jpg', '下载 (1).jpg', '27452', 'image/jpeg', '422', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('423', 'http://localhost:80/upload/20190627/532560950421342.jpg', '532560950421342.jpg', '56316', 'image/jpeg', '423', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('424', 'http://localhost:80/upload/20190627/532589829382959.hlv', '532589829382959.hlv', '33599310', 'application/octet-stream', '424', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('425', 'http://localhost:80/upload/20190627/533255445210175.png', '1B1E514E3483CADF895A3122B84615D2952FA0D3.png', '29290', 'image/png', '425', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('426', 'http://localhost:80/upload/20190627/533449038233702.png', '1B1E514E3483CADF895A3122B84615D2952FA0D3.png', '29290', 'image/png', '426', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('427', 'http://localhost:80/upload/20190627/533460112943751.jpg', '98069AEF959104C94C4695BCDAF3EC636CE47F85.jpg', '131601', 'image/jpeg', '427', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('428', 'http://localhost:80/upload/20190627/533769118680411.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '428', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('429', 'http://localhost:80/upload/20190627/533784293335467.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '429', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('430', 'http://localhost:80/upload/20190627/533795298926258.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '430', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('431', 'http://localhost:80/upload/20190627/533813115078543.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '431', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('432', 'http://localhost:80/upload/20190627/533844376731281.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '432', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('433', 'http://localhost:80/upload/20190627/533888271192565.jpg', '3700336A94F1E8A32A189CBAB135F77A49B1E4E1.jpg', '106000', 'image/jpeg', '433', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('434', 'http://localhost:80/upload/20190627/535029044150875.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '434', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('435', 'http://localhost:80/upload/20190627/535034539874363.jpg', 'timg.jpg', '108528', 'image/jpeg', '435', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('436', 'http://localhost:80/upload/20190627/535074268126036.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '436', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('437', 'http://localhost:80/upload/20190627/535089264599290.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '437', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('438', 'http://localhost:80/upload/20190627/535141601342796.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '438', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('439', 'http://localhost:80/upload/20190627/535157302318805.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '439', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('440', 'http://localhost:80/upload/20190627/535381631602574.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '440', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('441', 'http://localhost:80/upload/20190627/535431921263604.png', '1B1E514E3483CADF895A3122B84615D2952FA0D3.png', '29290', 'image/png', '441', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('442', 'http://localhost:80/upload/20190627/535645026711516.mp4', '535645026711516.mp4', '50343727', 'video/mp4', '442', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('443', 'http://localhost:80/upload/20190627/535645073591599.jpg', 'timg.jpg', '108528', 'image/jpeg', '443', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('444', 'http://localhost:80/upload/20190627/536496870651465.png', '536496870651465.png', '32261', 'image/png', '444', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('445', 'http://localhost:80/upload/20190627/536548449431257.mp4', '536548449431257.mp4', '50343727', 'video/mp4', '445', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('446', 'http://localhost:80/upload/20190627/537643111079911.jpg', 'timg.jpg', '108528', 'image/jpeg', '446', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('447', 'http://localhost:80/upload/20190627/538683267746777.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '447', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('448', 'http://localhost:80/upload/20190627/538822365654360.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '448', '0', '2019-06-29 21:04:31', '2019-06-29 21:04:31', null);
INSERT INTO `t_common_file` VALUES ('449', 'http://localhost:80/upload/20190630/752417614733927.jpg', 'timg.jpg', '108528', 'image/jpeg', '449', '0', '2019-06-30 07:06:52', '2019-06-30 07:06:52', null);
INSERT INTO `t_common_file` VALUES ('450', 'http://localhost:80/upload/20190630/756294555989961.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '450', '0', '2019-06-30 08:11:29', '2019-06-30 08:11:29', null);
INSERT INTO `t_common_file` VALUES ('451', 'http://localhost:80/upload/20190630/756324442880283.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '451', '0', '2019-06-30 08:11:59', '2019-06-30 08:11:59', null);
INSERT INTO `t_common_file` VALUES ('452', 'http://localhost:80/upload/20190630/756839032334034.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '452', '0', '2019-06-30 08:20:33', '2019-06-30 08:20:33', null);
INSERT INTO `t_common_file` VALUES ('453', 'http://localhost:80/upload/20190630/757018854221884.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '453', '0', '2019-06-30 08:23:33', '2019-06-30 08:23:33', null);
INSERT INTO `t_common_file` VALUES ('454', 'http://localhost:80/upload/20190630/757584083663483.jpg', 'timg.jpg', '108528', 'image/jpeg', '454', '0', '2019-06-30 08:32:59', '2019-06-30 08:32:59', null);
INSERT INTO `t_common_file` VALUES ('455', 'http://localhost:80/upload/20190630/758300195366255.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '455', '0', '2019-06-30 08:44:55', '2019-06-30 08:44:55', null);
INSERT INTO `t_common_file` VALUES ('456', 'http://localhost:80/upload/20190630/792862078203974.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '456', '0', '2019-06-30 18:20:55', '2019-06-30 18:20:55', null);
INSERT INTO `t_common_file` VALUES ('457', 'http://localhost:80/upload/20190630/793157631694471.jpg', 'timg.jpg', '108528', 'image/jpeg', '457', '0', '2019-06-30 18:25:50', '2019-06-30 18:25:50', null);
INSERT INTO `t_common_file` VALUES ('458', 'http://localhost:80/upload/20190630/806106052892799.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '458', '0', '2019-06-30 22:01:39', '2019-06-30 22:01:39', null);
INSERT INTO `t_common_file` VALUES ('459', 'http://localhost:80/upload/20190630/806660896543563.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '459', '0', '2019-06-30 22:10:54', '2019-06-30 22:10:54', null);
INSERT INTO `t_common_file` VALUES ('460', 'http://localhost:80/upload/20190707/1349982569953263.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '460', '0', '2019-07-07 05:06:01', '2019-07-07 05:06:01', null);
INSERT INTO `t_common_file` VALUES ('461', 'http://localhost:80/upload/20190707/1350054167192402.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '461', '0', '2019-07-07 05:07:13', '2019-07-07 05:07:13', null);
INSERT INTO `t_common_file` VALUES ('462', 'http://localhost:80/upload/20190707/1352301546331980.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '462', '0', '2019-07-07 05:44:40', '2019-07-07 05:44:40', null);
INSERT INTO `t_common_file` VALUES ('463', 'http://localhost:80/upload/20190707/1398445795580025.png', '28624F3731C4E9554DE7EFBA1E7324D13D426534.png', '32261', 'image/png', '463', '0', '2019-07-07 18:33:45', '2019-07-07 18:33:45', null);
INSERT INTO `t_common_file` VALUES ('464', 'http://localhost:80/upload/20190707/1398539758665343.jpg', 'timg.jpg', '108528', 'image/jpeg', '464', '0', '2019-07-07 18:35:18', '2019-07-07 18:35:18', null);
INSERT INTO `t_common_file` VALUES ('465', 'http://localhost:80/upload/20190707/1398578172755478.jpg', '880BADF5FDA530C945FB3BB8F9E1108BFEC6EB61.jpg', '54313', 'image/jpeg', '465', '0', '2019-07-07 18:35:57', '2019-07-07 18:35:57', null);
INSERT INTO `t_common_file` VALUES ('466', 'http://localhost:80/upload/20190707/1398656913860027.jpg', 'FA45C47A38111A3E3B95D34A06045CA2F70D3CCB.jpg', '133309', 'image/jpeg', '466', '0', '2019-07-07 18:37:16', '2019-07-07 18:37:16', null);
INSERT INTO `t_common_file` VALUES ('467', 'http://localhost:80/upload/20190707/1399317746319362.png', '0C2979EBA2A6D5B43BBE32658CA65A62C69DB3F9.png', '34743', 'image/png', '467', '0', '2019-07-07 18:48:16', '2019-07-07 18:48:16', null);
INSERT INTO `t_common_file` VALUES ('468', 'http://localhost:80/upload/20190707/1407268126899031.jpg', 'timg.jpg', '108528', 'image/jpeg', '468', '0', '2019-07-07 21:00:47', '2019-07-07 21:00:47', null);
INSERT INTO `t_common_file` VALUES ('469', 'http://localhost:80/upload/20190707/1407285651664291.png', 'D7DEA1EBD7F4B0651140EA50B5C6ECE2AB7C7D84.png', '25809', 'image/png', '469', '0', '2019-07-07 21:01:04', '2019-07-07 21:01:04', null);
INSERT INTO `t_common_file` VALUES ('470', 'http://localhost:80/upload/20190707/1407542140626755.jpg', 'timg.jpg', '108528', 'image/jpeg', '470', '0', '2019-07-07 21:05:21', '2019-07-07 21:05:21', null);
INSERT INTO `t_common_file` VALUES ('471', 'http://localhost:80/upload/20190707/1407591376176979.mp4', '1407591376176979.mp4', '50343727', 'video/mp4', '471', '0', '2019-07-07 21:06:10', '2019-07-07 21:06:10', null);

-- ----------------------------
-- Table structure for t_system_datadict
-- ----------------------------
DROP TABLE IF EXISTS `t_system_datadict`;
CREATE TABLE `t_system_datadict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpoln725ysrj2q0bv9u3ahda1l` (`pid`),
  CONSTRAINT `FKe73bfntf6ym3a7j9q8fv92st6` FOREIGN KEY (`pid`) REFERENCES `t_system_datadict` (`id`),
  CONSTRAINT `FKpoln725ysrj2q0bv9u3ahda1l` FOREIGN KEY (`pid`) REFERENCES `t_system_datadict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_datadict
-- ----------------------------
INSERT INTO `t_system_datadict` VALUES ('1', '性别', 'xb', '1', '0', null, null, null, null, 'closed');
INSERT INTO `t_system_datadict` VALUES ('2', '男', 'xb_01', '2', '0', '1', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('3', '女', 'xb_02', '3', '0', '1', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('4', 'EasyUI按钮样式', 'eubs', '4', '0', null, null, null, null, 'closed');
INSERT INTO `t_system_datadict` VALUES ('5', 'icon-back', 'eubs_01', '5', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('6', 'icon-add', 'eubs_02', '6', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('7', 'icon-edit', 'eubs_03', '7', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('8', 'icon-search', 'eubs_04', '8', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('9', 'icon-movedown', 'eubs_05', '10', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('10', 'icon-moveup', 'eubs_06', '9', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('11', 'icon-redo', 'eubs_07', '11', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('12', 'icon-undo', 'eubs_08', '12', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('13', 'icon-reload', 'eubs_09', '13', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('14', 'icon-cancel', 'eubs_10', '14', '0', '4', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('15', '新闻分类', 'xwfl', '15', '0', null, null, null, null, 'closed');
INSERT INTO `t_system_datadict` VALUES ('16', '新品速递', 'xwfl_01', '16', '0', '15', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('17', '培训新闻', 'xwfl_02', '17', '0', '15', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('18', '原创文章', 'xwfl_03', '18', '0', '15', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('19', '资源分类', 'zyfl', '19', '0', null, null, null, null, 'closed');
INSERT INTO `t_system_datadict` VALUES ('20', '线下面授', 'zyfl_01', '20', '0', '19', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('21', '线上视频', 'zyfl_02', '21', '0', '19', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('22', '互动直播', 'zyfl_03', '22', '0', '19', null, null, null, 'open');
INSERT INTO `t_system_datadict` VALUES ('23', '学历', 'aa81d2', '23', '0', null, '2019-07-18 15:51:24', '2019-07-18 15:51:24', null, 'closed');
INSERT INTO `t_system_datadict` VALUES ('24', '小学', 'aa81d2_01', '24', '0', '23', '2019-07-18 15:58:07', '2019-07-18 15:58:07', null, 'open');
INSERT INTO `t_system_datadict` VALUES ('25', '初中', 'aa81d2_02', '25', '0', '23', '2019-07-18 15:59:00', '2019-07-18 17:09:43', null, 'open');
INSERT INTO `t_system_datadict` VALUES ('26', '中专', 'aa81d2_03', '26', '0', '23', '2019-07-21 01:59:08', '2019-07-21 01:59:08', null, 'open');

-- ----------------------------
-- Table structure for t_system_element
-- ----------------------------
DROP TABLE IF EXISTS `t_system_element`;
CREATE TABLE `t_system_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`),
  KEY `FKil79s8vt1keqrrixcn0q4deyh` (`style_id`),
  CONSTRAINT `FKil79s8vt1keqrrixcn0q4deyh` FOREIGN KEY (`style_id`) REFERENCES `t_system_datadict` (`id`),
  CONSTRAINT `FKpqigyahb4je26lj81qc7jr4en` FOREIGN KEY (`style_id`) REFERENCES `t_system_datadict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_element
-- ----------------------------
INSERT INTO `t_system_element` VALUES ('1', '添加', 'doAdd', '6', '1', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('2', '修改', 'doUpdate', '7', '2', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('3', '删除', 'doDelete', '14', '3', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('4', '上移', 'doMoveUp', '10', '4', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('5', '下移', 'doMoveDown', '9', '8', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('6', '查看', 'doShow', '8', '10', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('7', '预览', 'doPreview', '8', '13', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('8', '返回', 'doBack', '5', '15', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('9', '导入', 'doImport', '11', '16', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('10', '导出', 'doExport', '12', '17', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('11', '模板下载', 'doDownTemp', '9', '24', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('12', '下载', 'doDown', '9', '14', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('13', '初始化密码', 'doInitPwd', '13', '32', '0', null, null, null);
INSERT INTO `t_system_element` VALUES ('15', '分配角色', 'doGrantRole', '6', '33', '0', '2019-07-08 17:23:56', '2019-07-08 17:23:56', null);
INSERT INTO `t_system_element` VALUES ('16', '分配权限', 'doGrantPurview', '6', '34', '0', '2019-07-08 17:24:46', '2019-07-08 17:24:46', null);

-- ----------------------------
-- Table structure for t_system_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_system_feedback`;
CREATE TABLE `t_system_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `enable` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`),
  KEY `FK2v5chcqj72okbpwl516l338tt` (`user_id`),
  CONSTRAINT `FK2v5chcqj72okbpwl516l338tt` FOREIGN KEY (`user_id`) REFERENCES `t_system_user` (`id`),
  CONSTRAINT `FKm0g8c3o7j8ys912joop97l7tr` FOREIGN KEY (`user_id`) REFERENCES `t_system_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for t_system_purview
-- ----------------------------
DROP TABLE IF EXISTS `t_system_purview`;
CREATE TABLE `t_system_purview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_menu` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp6eci5gvb4n3t7fj22trhssh6` (`pid`),
  KEY `FK2siy06qroac1f27hov11iqxen` (`element_id`),
  CONSTRAINT `FK2siy06qroac1f27hov11iqxen` FOREIGN KEY (`element_id`) REFERENCES `t_system_element` (`id`),
  CONSTRAINT `FKf87vxuqpqxga1xk17y9g8s0yi` FOREIGN KEY (`element_id`) REFERENCES `t_system_element` (`id`),
  CONSTRAINT `FKjxjkdnitjwxo139b1x02y78uh` FOREIGN KEY (`pid`) REFERENCES `t_system_purview` (`id`),
  CONSTRAINT `FKp6eci5gvb4n3t7fj22trhssh6` FOREIGN KEY (`pid`) REFERENCES `t_system_purview` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_purview
-- ----------------------------
INSERT INTO `t_system_purview` VALUES ('1', null, null, '系统管理', '', '0', '1', '0', '', null, null, '');
INSERT INTO `t_system_purview` VALUES ('2', '1', null, '用户管理', 'system/user/listUI', '0', '2', '0', '', null, null, '');
INSERT INTO `t_system_purview` VALUES ('3', '1', null, '权限管理', 'system/purview/listUI', '0', '17', '0', '', null, null, '');
INSERT INTO `t_system_purview` VALUES ('4', '1', null, '页面元素', 'system/element/listUI', '0', '23', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('5', '1', null, '数据字典', 'system/datadict/listUI', '0', '57', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('6', null, null, '基本功能', null, '0', '0', '0', '', null, null, '');
INSERT INTO `t_system_purview` VALUES ('21', '2', '1', '用户添加', 'system/user/add', '1', '3', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('22', '2', '2', '用户修改', 'system/user/update', '1', '4', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('23', '2', '3', '用户删除', 'system/user/delete', '1', '5', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('24', '2', '13', '用户密码初始化', 'system/user/pwdInit', '1', '6', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('31', '3', '1', '权限添加', 'system/purview/add', '1', '8', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('32', '3', '2', '权限修改', 'system/purview/update', '1', '9', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('33', '3', '3', '权限删除', 'system/purview/delete', '1', '10', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('34', '3', '4', '权限上移', 'system/purview/move', '1', '11', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('35', '3', '5', '权限下移', 'system/purview/move', '1', '12', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('41', '4', '1', '页面元素添加', 'system/element/add', '1', '18', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('42', '4', '2', '页面元素修改', 'system/element/update', '1', '19', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('43', '4', '3', '页面元素删除', 'system/element/delete', '1', '20', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('44', '4', '4', '页面元素上移', 'system/element/move', '1', '21', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('45', '4', '5', '页面元素下移', 'system/element/move', '1', '22', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('51', '5', '1', '数据字典添加', 'system/datadict/add', '1', '24', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('52', '5', '2', '数据字典修改', 'system/datadict/update', '1', '25', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('53', '5', '3', '数据字典删除', 'system/datadict/delete', '1', '26', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('54', '5', '4', '数据字典上移', 'system/datadict/move', '1', '27', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('55', '5', '5', '数据字典下移', 'system/datadict/move', '1', '28', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('56', '6', null, '学生管理', 'test/student/listUI', '0', '29', '1', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('57', '56', '1', '学生添加', 'test/student/add', '1', '30', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('58', '56', '3', '学生删除', 'test/student/delete', '1', '32', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('59', '56', '2', '学生修改', 'test/student/update', '1', '31', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('60', '6', null, '滚动图片', 'cms/image/listUI', '0', '33', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('61', '60', '1', '滚动图片添加', 'cms/image/add', '1', '34', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('62', '60', '3', '滚动图片删除', 'cms/image/delete', '1', '36', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('63', '60', '2', '滚动图片修改', 'cms/image/update', '1', '35', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('64', '6', null, '全部课程', 'cms/course/listUI', '0', '37', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('65', '64', '1', '课程添加', 'cms/course/add', '1', '38', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('66', '64', '2', '课程修改', 'cms/course/update', '1', '39', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('67', '64', '3', '课程删除', 'cms/course/delete', '1', '40', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('68', '64', '4', '课程上移', 'cms/course/move', '1', '41', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('69', '64', '5', '课程下移', 'cms/course/move', '1', '42', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('70', '6', null, '友情链接', 'cms/link/listUI', '0', '43', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('72', '70', '1', '链接添加', 'cms/link/add', '1', '44', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('73', '70', '2', '链接修改', 'cms/link/update', '1', '45', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('74', '70', '3', '链接删除', 'cms/link/delete', '1', '46', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('75', '6', null, '新闻管理', 'cms/news/listUI', '0', '47', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('76', '75', '1', '新闻添加', 'cms/news/add', '1', '48', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('77', '75', '2', '新闻修改', 'cms/news/update', '1', '49', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('78', '75', '3', '新闻删除', 'cms/news/delete', '1', '50', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('79', '75', '4', '新闻上移', 'cms/news/move', '1', '51', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('80', '75', '5', '新闻下移', 'cms/news/move', '1', '52', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('81', '6', null, '开班信息', 'cms/resource/listUI', '0', '53', '0', null, null, null, '');
INSERT INTO `t_system_purview` VALUES ('82', '81', '1', '班级添加', 'cms/resource/add', '1', '54', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('83', '81', '2', '班级修改', 'cms/resource/update', '1', '55', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('84', '81', '3', '班级删除', 'cms/resource/delete', '1', '56', '0', null, null, null, '\0');
INSERT INTO `t_system_purview` VALUES ('94', '1', null, '角色管理', 'system/role/listUI', '0', '7', '0', null, '2019-07-08 17:54:26', '2019-07-08 17:54:26', '');
INSERT INTO `t_system_purview` VALUES ('95', '94', '1', '角色添加', 'system/role/add', '1', '58', '0', null, '2019-07-08 17:55:31', '2019-07-08 17:55:31', '\0');
INSERT INTO `t_system_purview` VALUES ('96', '94', '2', '角色修改', 'system/role/update', '1', '59', '0', null, '2019-07-08 17:55:58', '2019-07-08 17:55:58', '\0');
INSERT INTO `t_system_purview` VALUES ('97', '94', '3', '角色删除', 'system/role/delete', '1', '60', '0', null, '2019-07-08 17:56:20', '2019-07-08 17:56:20', '\0');
INSERT INTO `t_system_purview` VALUES ('98', '2', '15', '用户分配角色', 'system/user/grantRole', '1', '61', '0', null, '2019-07-08 19:12:01', '2019-07-08 19:12:01', '\0');
INSERT INTO `t_system_purview` VALUES ('99', '94', '16', '角色分配权限', 'system/role/grantPurview', '1', '62', '0', null, '2019-07-08 23:42:57', '2019-07-08 23:42:57', '\0');

-- ----------------------------
-- Table structure for t_system_role
-- ----------------------------
DROP TABLE IF EXISTS `t_system_role`;
CREATE TABLE `t_system_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `add_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `remark` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_role
-- ----------------------------
INSERT INTO `t_system_role` VALUES ('1', '1', '0', '2019-07-08 17:57:23', '2019-07-08 17:57:23', null, '网站编辑');
INSERT INTO `t_system_role` VALUES ('2', '2', '0', '2019-07-08 18:00:59', '2019-07-08 18:00:59', null, '管理员');
INSERT INTO `t_system_role` VALUES ('3', '3', '0', '2019-07-08 20:37:04', '2019-07-08 20:37:04', null, '超级管理员');
INSERT INTO `t_system_role` VALUES ('4', '4', '0', '2019-07-10 20:14:23', '2019-07-10 20:14:23', null, 'aaa');

-- ----------------------------
-- Table structure for t_system_role_purview
-- ----------------------------
DROP TABLE IF EXISTS `t_system_role_purview`;
CREATE TABLE `t_system_role_purview` (
  `role_id` int(11) NOT NULL,
  `purview_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`purview_id`),
  KEY `FK910nm2ih4301527wiu6fxmtmu` (`purview_id`),
  CONSTRAINT `FK6onwpg2mr6fsemutygbqybjhl` FOREIGN KEY (`purview_id`) REFERENCES `t_system_purview` (`id`),
  CONSTRAINT `FK910nm2ih4301527wiu6fxmtmu` FOREIGN KEY (`purview_id`) REFERENCES `t_system_purview` (`id`),
  CONSTRAINT `FKgm47sep896wf7ie4sighydvv8` FOREIGN KEY (`role_id`) REFERENCES `t_system_role` (`id`),
  CONSTRAINT `FKmmf7xjla2hj7xtcqdal6y1ymw` FOREIGN KEY (`role_id`) REFERENCES `t_system_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_role_purview
-- ----------------------------
INSERT INTO `t_system_role_purview` VALUES ('1', '64');
INSERT INTO `t_system_role_purview` VALUES ('1', '65');
INSERT INTO `t_system_role_purview` VALUES ('1', '66');
INSERT INTO `t_system_role_purview` VALUES ('1', '67');
INSERT INTO `t_system_role_purview` VALUES ('1', '68');
INSERT INTO `t_system_role_purview` VALUES ('1', '69');

-- ----------------------------
-- Table structure for t_system_user
-- ----------------------------
DROP TABLE IF EXISTS `t_system_user`;
CREATE TABLE `t_system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_user
-- ----------------------------
INSERT INTO `t_system_user` VALUES ('1', 'admin', '管理员', '0192023a7bbd73250516f069df18b500', '0', '1', null, '2019-07-07 01:05:18', null);
INSERT INTO `t_system_user` VALUES ('7', 'ls', '李四1111222', '0f60dd0bcb58e50e8190327dc60e826a', '0', '2', '2019-07-07 01:20:47', '2019-07-07 01:50:57', null);
INSERT INTO `t_system_user` VALUES ('8', 'ww', '王五', 'a87c9f7493e17b6aaa1b0ff155ce5765', '0', '3', '2019-07-08 19:42:50', '2019-10-29 19:32:59', null);

-- ----------------------------
-- Table structure for t_system_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_system_user_role`;
CREATE TABLE `t_system_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKco9b7p8no61vmxbdc3hddig1j` (`role_id`),
  CONSTRAINT `FK40vx5y4cawkso0bh91atfgnja` FOREIGN KEY (`user_id`) REFERENCES `t_system_user` (`id`),
  CONSTRAINT `FK6p3nl68vbjnxvk18yw6lawx66` FOREIGN KEY (`user_id`) REFERENCES `t_system_user` (`id`),
  CONSTRAINT `FKco9b7p8no61vmxbdc3hddig1j` FOREIGN KEY (`role_id`) REFERENCES `t_system_role` (`id`),
  CONSTRAINT `FKrlahykkrch8y4nwimxxcuvag` FOREIGN KEY (`role_id`) REFERENCES `t_system_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_system_user_role
-- ----------------------------
INSERT INTO `t_system_user_role` VALUES ('7', '1');
INSERT INTO `t_system_user_role` VALUES ('8', '1');
INSERT INTO `t_system_user_role` VALUES ('7', '3');

-- ----------------------------
-- Procedure structure for p1
-- ----------------------------
DROP PROCEDURE IF EXISTS `p1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p1`()
select * from t_cms_link
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_role_purview
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_role_purview`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_role_purview`(in roleId int, in purviewIds varchar(255))
begin 
	delete from t_system_role_purview where role_id = roleId;
	insert into t_system_role_purview (role_id, purview_id) select roleId, id from t_system_purview where find_in_set(id, purviewIds);
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_user_role
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_user_role`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_user_role`(in userId int, in roleIds varchar(255))
begin 
	delete from t_system_user_role where user_id = userId;
	insert into t_system_user_role (user_id, role_id) select userId, id from t_system_role where find_in_set(id, roleIds);
end
;;
DELIMITER ;
