/*
 Navicat Premium Data Transfer

 Source Server         : Test
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : java_test

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 02/02/2023 16:03:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `classify_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '账单分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (1, '收入');
INSERT INTO `classify` VALUES (2, '支出');
INSERT INTO `classify` VALUES (3, '餐饮');
INSERT INTO `classify` VALUES (4, '交通');
INSERT INTO `classify` VALUES (5, '数码');
INSERT INTO `classify` VALUES (6, '日常');
INSERT INTO `classify` VALUES (7, '服饰');
INSERT INTO `classify` VALUES (8, '护肤');
INSERT INTO `classify` VALUES (9, '家庭');
INSERT INTO `classify` VALUES (10, '其它');
INSERT INTO `classify` VALUES (33, NULL);

-- ----------------------------
-- Table structure for icon_set
-- ----------------------------
DROP TABLE IF EXISTS `icon_set`;
CREATE TABLE `icon_set`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `classify_id` int(0) DEFAULT NULL COMMENT '分类关联ID',
  `icon_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '图标名称',
  `icon_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '图标编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci COMMENT = '图标集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of icon_set
-- ----------------------------
INSERT INTO `icon_set` VALUES (1, 1, '工资', 'icongongzi');
INSERT INTO `icon_set` VALUES (2, 1, '奖金', 'iconjiangjin');
INSERT INTO `icon_set` VALUES (3, 1, '公积金', 'icongongjijin');
INSERT INTO `icon_set` VALUES (4, 1, '生活费', 'iconticheng');
INSERT INTO `icon_set` VALUES (5, 1, '零花钱', 'iconlinghuaqian');
INSERT INTO `icon_set` VALUES (7, 1, '收红包', 'iconhongbao');
INSERT INTO `icon_set` VALUES (8, 1, '租金', 'iconzujin');
INSERT INTO `icon_set` VALUES (9, 1, '二手置换', 'iconzhihuan');
INSERT INTO `icon_set` VALUES (10, 1, '其他收益', 'iconqita');
INSERT INTO `icon_set` VALUES (11, 3, '早餐', 'iconzaocan');
INSERT INTO `icon_set` VALUES (12, 3, '午餐', 'iconwucan');
INSERT INTO `icon_set` VALUES (13, 3, '晚餐', 'iconwancan');
INSERT INTO `icon_set` VALUES (14, 3, '夜宵', 'iconchuanchuankaochuan');
INSERT INTO `icon_set` VALUES (15, 3, '外卖', 'iconwaimai');
INSERT INTO `icon_set` VALUES (16, 3, '零食', 'iconxianqulingshi');
INSERT INTO `icon_set` VALUES (17, 3, '水果', 'iconshuiguo1');
INSERT INTO `icon_set` VALUES (18, 3, '奶茶', 'iconzhenzhunaicha');
INSERT INTO `icon_set` VALUES (19, 3, '雪糕', 'iconxuegao');
INSERT INTO `icon_set` VALUES (20, 3, '饮料', 'iconyinliao');
INSERT INTO `icon_set` VALUES (21, 3, '矿泉水', 'iconkuangquanshui');
INSERT INTO `icon_set` VALUES (22, 3, '咖啡', 'iconkafei');
INSERT INTO `icon_set` VALUES (23, 3, '茶', 'iconchahu');
INSERT INTO `icon_set` VALUES (24, 3, '甜品', 'iconxuegao');
INSERT INTO `icon_set` VALUES (25, 3, '烟', 'iconleiyancaoyanjux');
INSERT INTO `icon_set` VALUES (26, 3, '酒', 'iconjiu');
INSERT INTO `icon_set` VALUES (27, 3, '蔬菜', 'iconshucai');
INSERT INTO `icon_set` VALUES (28, 3, '肉类', 'iconjitui');
INSERT INTO `icon_set` VALUES (29, 3, '鸡蛋', 'iconjidan');
INSERT INTO `icon_set` VALUES (30, 3, '牛奶', 'iconmilk');
INSERT INTO `icon_set` VALUES (31, 3, '面包', 'iconyunimianbao');
INSERT INTO `icon_set` VALUES (32, 3, '烧烤', 'iconjianminshaokao_kaochuan');
INSERT INTO `icon_set` VALUES (33, 3, '火锅', 'iconhuoguo');
INSERT INTO `icon_set` VALUES (34, 6, '话费', 'iconhuafei');
INSERT INTO `icon_set` VALUES (35, 6, '网费', 'iconwangzhan');
INSERT INTO `icon_set` VALUES (36, 6, '水电煤', 'iconshuidianbiao');
INSERT INTO `icon_set` VALUES (37, 6, '理发', 'iconlifajiandao');
INSERT INTO `icon_set` VALUES (38, 6, '快递', 'iconkuaidi');
INSERT INTO `icon_set` VALUES (39, 6, '纸巾', 'iconzhijin');
INSERT INTO `icon_set` VALUES (40, 6, '餐具', 'iconcanju');
INSERT INTO `icon_set` VALUES (41, 6, '垃圾袋', 'iconlvxingdai');
INSERT INTO `icon_set` VALUES (42, 7, '帽子', 'iconmaozi');
INSERT INTO `icon_set` VALUES (43, 7, '外套', 'iconwaitao');
INSERT INTO `icon_set` VALUES (44, 7, '裤子', 'iconPANTS');
INSERT INTO `icon_set` VALUES (45, 7, '内衣', 'iconneiyineiku');
INSERT INTO `icon_set` VALUES (46, 7, '文胸', 'iconneiyi');
INSERT INTO `icon_set` VALUES (47, 7, '饰品', 'iconshipin');
INSERT INTO `icon_set` VALUES (48, 7, '包包', 'icona-ziyuan119');
INSERT INTO `icon_set` VALUES (49, 7, '鞋', 'iconxiezi');
INSERT INTO `icon_set` VALUES (50, 7, '高跟鞋', 'iconfuzhuang-gaogenxie');
INSERT INTO `icon_set` VALUES (51, 7, '裙子', 'iconqunzi');
INSERT INTO `icon_set` VALUES (52, 7, '袜子', 'iconwazi');
INSERT INTO `icon_set` VALUES (53, 8, '护肤品', 'iconhufupin');
INSERT INTO `icon_set` VALUES (54, 8, '洗面奶', 'iconximiannai');
INSERT INTO `icon_set` VALUES (55, 8, '医美', 'iconyiliaomeirongke');
INSERT INTO `icon_set` VALUES (56, 8, '身体乳', 'iconshentiru');
INSERT INTO `icon_set` VALUES (57, 8, '化妆水', 'iconhuazhuangshui');
INSERT INTO `icon_set` VALUES (58, 8, '美容仪', 'iconmeirongyi');
INSERT INTO `icon_set` VALUES (59, 8, '洗发水', 'icontubiaoCSban-');
INSERT INTO `icon_set` VALUES (60, 8, '口红', 'iconkouhong');
INSERT INTO `icon_set` VALUES (61, 8, '面膜', 'iconmianmo');
INSERT INTO `icon_set` VALUES (62, 8, 'SPA', 'iconspa');
INSERT INTO `icon_set` VALUES (63, 8, '防晒', 'iconfangshaipenwu');
INSERT INTO `icon_set` VALUES (64, 8, '香水', 'iconxiangshui');
INSERT INTO `icon_set` VALUES (65, 5, '手机', 'iconshouji');
INSERT INTO `icon_set` VALUES (66, 5, '电脑', 'icondiannao');
INSERT INTO `icon_set` VALUES (67, 5, '充电宝', 'iconmobilepower');
INSERT INTO `icon_set` VALUES (68, 5, '耳机', 'iconerji');
INSERT INTO `icon_set` VALUES (69, 5, '键盘', 'iconjianpan-xianxing');
INSERT INTO `icon_set` VALUES (70, 5, '淘宝', 'icontaobaotese');
INSERT INTO `icon_set` VALUES (71, 5, '天猫', 'icontianmaoxingxiang1');
INSERT INTO `icon_set` VALUES (72, 5, '京东', 'iconpay-jingdong');
INSERT INTO `icon_set` VALUES (73, 5, '微信', 'iconweixin');
INSERT INTO `icon_set` VALUES (74, 5, 'Apple', 'iconapple');
INSERT INTO `icon_set` VALUES (75, 5, '小米', 'iconxiaomi');
INSERT INTO `icon_set` VALUES (76, 5, '拼多多', 'iconpinduoduo');
INSERT INTO `icon_set` VALUES (77, 5, '抖音', 'icondouyin');
INSERT INTO `icon_set` VALUES (78, 5, '百度网盘', 'iconpinpaibiaoshi_baiduwangpan');
INSERT INTO `icon_set` VALUES (79, 5, 'QQ音乐', 'iconpinpaibiaoshi_QQyinle');
INSERT INTO `icon_set` VALUES (80, 5, '芒果TV', 'iconmangguoTV');
INSERT INTO `icon_set` VALUES (81, 5, '腾讯视频', 'icontengxunshipin');
INSERT INTO `icon_set` VALUES (82, 5, 'bilibili', 'iconbilibili-line');
INSERT INTO `icon_set` VALUES (83, 5, 'switch', 'iconswitch-line');
INSERT INTO `icon_set` VALUES (84, 5, 'steam', 'iconsteam');
INSERT INTO `icon_set` VALUES (85, 5, 'PS', 'iconplaystation');
INSERT INTO `icon_set` VALUES (86, 5, 'XBox', 'iconlogo-xbox');
INSERT INTO `icon_set` VALUES (87, 5, '优酷', 'iconyouku');
INSERT INTO `icon_set` VALUES (88, 5, 'QQ', 'iconyduitengxunqq');
INSERT INTO `icon_set` VALUES (89, 9, '家人', 'iconchangyonglvyouyewutubiao_fuzhi_fumu');
INSERT INTO `icon_set` VALUES (90, 9, '恋爱', 'iconaiqing');
INSERT INTO `icon_set` VALUES (91, 9, '孩子', 'iconchild');
INSERT INTO `icon_set` VALUES (92, 9, '朋友', 'iconpengyou');
INSERT INTO `icon_set` VALUES (93, 9, '宠物', 'iconchongwu');
INSERT INTO `icon_set` VALUES (94, 4, '交通', 'icontrain');
INSERT INTO `icon_set` VALUES (95, 4, '公交', 'icongongjiao-');
INSERT INTO `icon_set` VALUES (96, 4, '地铁', 'icontielu');
INSERT INTO `icon_set` VALUES (97, 4, '火车', 'iconhuoche');
INSERT INTO `icon_set` VALUES (98, 4, '飞机', 'iconAirplanedeparture');
INSERT INTO `icon_set` VALUES (99, 4, '打车', 'icondache');
INSERT INTO `icon_set` VALUES (100, 4, '自行车', 'iconzihangche');
INSERT INTO `icon_set` VALUES (101, 4, '共享单车', 'iconbike');
INSERT INTO `icon_set` VALUES (102, 4, '轮船', 'iconlunchuan');
INSERT INTO `icon_set` VALUES (103, 4, '电瓶车', 'iconmbile');
INSERT INTO `icon_set` VALUES (104, 4, '摩托车', 'iconmotuoche');
INSERT INTO `icon_set` VALUES (105, 90, '特殊的', '');
INSERT INTO `icon_set` VALUES (106, NULL, '特殊的2', NULL);
INSERT INTO `icon_set` VALUES (160, 1, '压岁钱', 'iconticheng');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(0) NOT NULL COMMENT '主键',
  `user_id` int(0) DEFAULT NULL COMMENT '关联用户ID',
  `class_id` int(0) DEFAULT NULL COMMENT '关联班级',
  `stu_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '学生工号',
  `stu_credit` double(255, 0) DEFAULT NULL COMMENT '学分',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 5, 9, '001', 64, NULL);
INSERT INTO `student` VALUES (2, 6, 3, '002', 90, NULL);
INSERT INTO `student` VALUES (3, 7, 1, '003', 98, NULL);
INSERT INTO `student` VALUES (4, 8, 10, '004', 83, NULL);
INSERT INTO `student` VALUES (5, 9, 10, '005', 84, NULL);
INSERT INTO `student` VALUES (6, 10, 11, '006', 88, '');
INSERT INTO `student` VALUES (7, 100, 2, NULL, NULL, '没有该学生的用户信息');
INSERT INTO `student` VALUES (8, 1, 100, NULL, NULL, '没用该学生的班级信息');

-- ----------------------------
-- Table structure for student_class
-- ----------------------------
DROP TABLE IF EXISTS `student_class`;
CREATE TABLE `student_class`  (
  `id` int(0) NOT NULL COMMENT '主键',
  `grade` int(0) DEFAULT NULL COMMENT '年级',
  `team` int(0) DEFAULT NULL COMMENT '班级',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '班级称号',
  `slogan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '口号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_class
-- ----------------------------
INSERT INTO `student_class` VALUES (1, 1, 1, '一年级1班', NULL);
INSERT INTO `student_class` VALUES (2, 1, 2, '一年级2班', NULL);
INSERT INTO `student_class` VALUES (3, 2, 1, '二年级1班', NULL);
INSERT INTO `student_class` VALUES (4, 3, 1, '三年级1班', NULL);
INSERT INTO `student_class` VALUES (5, 3, 2, '三年级2班', NULL);
INSERT INTO `student_class` VALUES (6, 4, 1, '四年级1班', NULL);
INSERT INTO `student_class` VALUES (7, 4, 2, '四年级2班', NULL);
INSERT INTO `student_class` VALUES (8, 4, 3, '四年级3班', NULL);
INSERT INTO `student_class` VALUES (9, 5, 1, '实验班', '勇争第一');
INSERT INTO `student_class` VALUES (10, 5, 2, '五年级2班', '创造奇迹');
INSERT INTO `student_class` VALUES (11, 6, 1, '重点班', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int unsigned NOT NULL COMMENT '主键',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户昵称',
  `age` int(0) DEFAULT NULL COMMENT '用户年龄',
  `sex` int(0) DEFAULT 0 COMMENT '用户性别；0：女，1：男',
  `children` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户孩子关联ID',
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '身份证号码',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李父', 50, 1, '3,4,5,6', NULL, '123456');
INSERT INTO `user` VALUES (2, '李母', 48, 0, '3,4,5,6', NULL, '123456');
INSERT INTO `user` VALUES (3, '李大', 26, 1, '7', NULL, '123456');
INSERT INTO `user` VALUES (4, '李二', 22, 1, NULL, NULL, '123456');
INSERT INTO `user` VALUES (5, '李三', 10, 1, NULL, NULL, '123456');
INSERT INTO `user` VALUES (6, '李小', 8, 0, NULL, NULL, '123456');
INSERT INTO `user` VALUES (7, '李大一', 7, 1, NULL, NULL, '123456');
INSERT INTO `user` VALUES (8, '小明', 11, 1, NULL, NULL, '123456');
INSERT INTO `user` VALUES (9, '小红', 11, 0, NULL, NULL, '123456');
INSERT INTO `user` VALUES (10, '小齐', 12, 1, NULL, NULL, '123456');

SET FOREIGN_KEY_CHECKS = 1;
