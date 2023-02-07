/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : java_test

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 07/02/2023 14:23:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `id` int(0) NOT NULL COMMENT ' 主键',
  `classifyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (1, '收入');
INSERT INTO `classify` VALUES (2, '支出');
INSERT INTO `classify` VALUES (3, '餐饮');
INSERT INTO `classify` VALUES (4, '日常');
INSERT INTO `classify` VALUES (5, '服饰');
INSERT INTO `classify` VALUES (6, '护肤');
INSERT INTO `classify` VALUES (7, '数码');
INSERT INTO `classify` VALUES (8, '家庭');
INSERT INTO `classify` VALUES (9, '交通');

-- ----------------------------
-- Table structure for icon_set
-- ----------------------------
DROP TABLE IF EXISTS `icon_set`;
CREATE TABLE `icon_set`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `classify_id` int(0) DEFAULT NULL COMMENT '关联分类',
  `icon_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL COMMENT '图标名称',
  `icon_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci DEFAULT NULL COMMENT '图标编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_croatian_ci COMMENT = '所有图标集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of icon_set
-- ----------------------------
INSERT INTO `icon_set` VALUES (1, 1, '工资', 'icongongzi');
INSERT INTO `icon_set` VALUES (2, 1, '奖金', 'iconjiangjin');
INSERT INTO `icon_set` VALUES (3, 1, '公积金', 'icongongjijin');
INSERT INTO `icon_set` VALUES (4, 1, '生活费', 'iconticheng');
INSERT INTO `icon_set` VALUES (5, 1, '零花钱', 'iconlinghuaqian');
INSERT INTO `icon_set` VALUES (6, 1, '压岁钱', 'iconticheng');
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
INSERT INTO `icon_set` VALUES (34, 4, '话费', 'iconhuafei');
INSERT INTO `icon_set` VALUES (35, 4, '网费', 'iconwangzhan');
INSERT INTO `icon_set` VALUES (36, 4, '水电煤', 'iconshuidianbiao');
INSERT INTO `icon_set` VALUES (37, 4, '理发', 'iconlifajiandao');
INSERT INTO `icon_set` VALUES (38, 4, '快递', 'iconkuaidi');
INSERT INTO `icon_set` VALUES (39, 4, '纸巾', 'iconzhijin');
INSERT INTO `icon_set` VALUES (40, 4, '餐具', 'iconcanju');
INSERT INTO `icon_set` VALUES (41, 4, '垃圾袋', 'iconlvxingdai');
INSERT INTO `icon_set` VALUES (42, 5, '帽子', 'iconmaozi');
INSERT INTO `icon_set` VALUES (43, 5, '外套', 'iconwaitao');
INSERT INTO `icon_set` VALUES (44, 5, '裤子', 'iconPANTS');
INSERT INTO `icon_set` VALUES (45, 5, '内衣', 'iconneiyineiku');
INSERT INTO `icon_set` VALUES (46, 5, '文胸', 'iconneiyi');
INSERT INTO `icon_set` VALUES (47, 5, '饰品', 'iconshipin');
INSERT INTO `icon_set` VALUES (48, 5, '包包', 'icona-ziyuan119');
INSERT INTO `icon_set` VALUES (49, 5, '鞋', 'iconxiezi');
INSERT INTO `icon_set` VALUES (50, 5, '高跟鞋', 'iconfuzhuang-gaogenxie');
INSERT INTO `icon_set` VALUES (51, 5, '裙子', 'iconqunzi');
INSERT INTO `icon_set` VALUES (52, 5, '袜子', 'iconwazi');
INSERT INTO `icon_set` VALUES (53, 6, '护肤品', 'iconhufupin');
INSERT INTO `icon_set` VALUES (54, 6, '洗面奶', 'iconximiannai');
INSERT INTO `icon_set` VALUES (55, 6, '医美', 'iconyiliaomeirongke');
INSERT INTO `icon_set` VALUES (56, 6, '身体乳', 'iconshentiru');
INSERT INTO `icon_set` VALUES (57, 6, '化妆水', 'iconhuazhuangshui');
INSERT INTO `icon_set` VALUES (58, 6, '美容仪', 'iconmeirongyi');
INSERT INTO `icon_set` VALUES (59, 6, '洗发水', 'icontubiaoCSban-');
INSERT INTO `icon_set` VALUES (60, 6, '口红', 'iconkouhong');
INSERT INTO `icon_set` VALUES (61, 6, '面膜', 'iconmianmo');
INSERT INTO `icon_set` VALUES (62, 6, 'SPA', 'iconspa');
INSERT INTO `icon_set` VALUES (63, 6, '防晒', 'iconfangshaipenwu');
INSERT INTO `icon_set` VALUES (64, 6, '香水', 'iconxiangshui');
INSERT INTO `icon_set` VALUES (65, 7, '手机', 'iconshouji');
INSERT INTO `icon_set` VALUES (66, 7, '电脑', 'icondiannao');
INSERT INTO `icon_set` VALUES (67, 7, '充电宝', 'iconmobilepower');
INSERT INTO `icon_set` VALUES (68, 7, '耳机', 'iconerji');
INSERT INTO `icon_set` VALUES (69, 7, '键盘', 'iconjianpan-xianxing');
INSERT INTO `icon_set` VALUES (70, 7, '淘宝', 'icontaobaotese');
INSERT INTO `icon_set` VALUES (71, 7, '天猫', 'icontianmaoxingxiang1');
INSERT INTO `icon_set` VALUES (72, 7, '京东', 'iconpay-jingdong');
INSERT INTO `icon_set` VALUES (73, 7, '微信', 'iconweixin');
INSERT INTO `icon_set` VALUES (74, 7, 'Apple', 'iconapple');
INSERT INTO `icon_set` VALUES (75, 7, '小米', 'iconxiaomi');
INSERT INTO `icon_set` VALUES (76, 7, '拼多多', 'iconpinduoduo');
INSERT INTO `icon_set` VALUES (77, 7, '抖音', 'icondouyin');
INSERT INTO `icon_set` VALUES (78, 7, '百度网盘', 'iconpinpaibiaoshi_baiduwangpan');
INSERT INTO `icon_set` VALUES (79, 7, 'QQ音乐', 'iconpinpaibiaoshi_QQyinle');
INSERT INTO `icon_set` VALUES (80, 7, '芒果TV', 'iconmangguoTV');
INSERT INTO `icon_set` VALUES (81, 7, '腾讯视频', 'icontengxunshipin');
INSERT INTO `icon_set` VALUES (82, 7, 'bilibili', 'iconbilibili-line');
INSERT INTO `icon_set` VALUES (83, 7, 'switch', 'iconswitch-line');
INSERT INTO `icon_set` VALUES (84, 7, 'steam', 'iconsteam');
INSERT INTO `icon_set` VALUES (85, 7, 'PS', 'iconplaystation');
INSERT INTO `icon_set` VALUES (86, 7, 'XBox', 'iconlogo-xbox');
INSERT INTO `icon_set` VALUES (87, 7, '优酷', 'iconyouku');
INSERT INTO `icon_set` VALUES (88, 7, 'QQ', 'iconyduitengxunqq');
INSERT INTO `icon_set` VALUES (89, 8, '家人', 'iconchangyonglvyouyewutubiao_fuzhi_fumu');
INSERT INTO `icon_set` VALUES (90, 8, '恋爱', 'iconaiqing');
INSERT INTO `icon_set` VALUES (91, 8, '孩子', 'iconchild');
INSERT INTO `icon_set` VALUES (92, 8, '朋友', 'iconpengyou');
INSERT INTO `icon_set` VALUES (93, 8, '宠物', 'iconchongwu');
INSERT INTO `icon_set` VALUES (94, 9, '交通', 'icontrain');
INSERT INTO `icon_set` VALUES (95, 9, '公交', 'icongongjiao-');
INSERT INTO `icon_set` VALUES (96, 9, '地铁', 'icontielu');
INSERT INTO `icon_set` VALUES (97, 9, '火车', 'iconhuoche');
INSERT INTO `icon_set` VALUES (98, 9, '飞机', 'iconAirplanedeparture');
INSERT INTO `icon_set` VALUES (99, 9, '打车', 'icondache');
INSERT INTO `icon_set` VALUES (100, 9, '自行车', 'iconzihangche');
INSERT INTO `icon_set` VALUES (101, 9, '共享单车', 'iconbike');
INSERT INTO `icon_set` VALUES (102, 9, '轮船', 'iconlunchuan');
INSERT INTO `icon_set` VALUES (103, 9, '电瓶车', 'iconmbile');
INSERT INTO `icon_set` VALUES (104, 9, '摩托车', 'iconmotuoche');
INSERT INTO `icon_set` VALUES (160, 11, '特殊的', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(0) DEFAULT NULL COMMENT '关联用户',
  `class_id` int(0) DEFAULT NULL COMMENT '关联班级',
  `stu_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '学生学号',
  `stu_credit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '学生学分',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 5, 3, '001', '82', NULL);
INSERT INTO `student` VALUES (2, 6, 4, '002', '88', NULL);
INSERT INTO `student` VALUES (3, 7, 1, '003', '91', NULL);
INSERT INTO `student` VALUES (4, 8, 2, '004', '100', NULL);
INSERT INTO `student` VALUES (5, 9, 7, '005', '67', NULL);
INSERT INTO `student` VALUES (6, 10, 7, '006', '72', NULL);
INSERT INTO `student` VALUES (7, NULL, NULL, '007', '70', '无用户信息');
INSERT INTO `student` VALUES (8, 3, NULL, NULL, NULL, '无班级信息');
INSERT INTO `student` VALUES (9, 4, 7, '008', '100', NULL);

-- ----------------------------
-- Table structure for student_class
-- ----------------------------
DROP TABLE IF EXISTS `student_class`;
CREATE TABLE `student_class`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '年级',
  `team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '班级',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '班级名称',
  `slogan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '班级口号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_class
-- ----------------------------
INSERT INTO `student_class` VALUES (1, '1', '1', '1年1班', '快乐成长');
INSERT INTO `student_class` VALUES (2, '1', '2', '幸福2班', NULL);
INSERT INTO `student_class` VALUES (3, '3', '1', '3年1班', NULL);
INSERT INTO `student_class` VALUES (4, '3', '2', '3年2班', NULL);
INSERT INTO `student_class` VALUES (5, '5', '1', '实验班', '无限冲刺');
INSERT INTO `student_class` VALUES (6, '5', '2', '5年2班', NULL);
INSERT INTO `student_class` VALUES (7, '6', '1', '重点班', '只有成功没有失败');
INSERT INTO `student_class` VALUES (8, '6', '2', NULL, NULL);
INSERT INTO `student_class` VALUES (9, '6', '3', '追梦班', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户名称',
  `age` int(0) DEFAULT NULL COMMENT '用户年龄',
  `sex` int(0) DEFAULT NULL COMMENT '用户性别；0：女，1：男',
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '身份证号码',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李父', 42, 1, NULL, '123456');
INSERT INTO `user` VALUES (2, '李母', 41, 0, NULL, '123456');
INSERT INTO `user` VALUES (3, '李大', 27, 1, NULL, '123456');
INSERT INTO `user` VALUES (4, '李二', 12, 1, NULL, '123456');
INSERT INTO `user` VALUES (5, '李小', 9, 0, NULL, '123456');
INSERT INTO `user` VALUES (6, '小红', 10, 0, NULL, '123456');
INSERT INTO `user` VALUES (7, '小明', 7, 1, NULL, '123456');
INSERT INTO `user` VALUES (8, '小小', 8, 0, NULL, '123456');
INSERT INTO `user` VALUES (9, '小可', 11, 1, NULL, '123456');
INSERT INTO `user` VALUES (10, '小兮', 11, 0, NULL, '123456');

SET FOREIGN_KEY_CHECKS = 1;
