/*
 Navicat Premium Data Transfer

 Source Server         : 224
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : 192.168.1.224:3306
 Source Schema         : supermarket

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 13/05/2021 16:33:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category`  (
  `cateid` int(50) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `catename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `isdel` int(50) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`cateid`) USING BTREE,
  INDEX `catename`(`catename`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (1, '百货类1', 0);
INSERT INTO `tb_category` VALUES (2, '食品类', 0);
INSERT INTO `tb_category` VALUES (3, '零食类', 0);
INSERT INTO `tb_category` VALUES (4, '海鲜类', 0);
INSERT INTO `tb_category` VALUES (5, '熟肉类', 0);
INSERT INTO `tb_category` VALUES (6, '蔬菜类', 0);
INSERT INTO `tb_category` VALUES (7, '生肉类', 0);
INSERT INTO `tb_category` VALUES (9, '测试', 0);

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `custid` int(50) NOT NULL AUTO_INCREMENT,
  `custname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户名',
  `custphone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户电话',
  `custemail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户邮箱',
  `custvip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'vip编号',
  PRIMARY KEY (`custid`) USING BTREE,
  INDEX `custname`(`custname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES (3, '王五1', '13688888888', '111111@qq.com', 'opyz52nHM8');
INSERT INTO `tb_customer` VALUES (4, '张小明', '0755-9123131', '213123@sina.com', 'KFXmyTy3As');
INSERT INTO `tb_customer` VALUES (5, '雷生', '027-11011011', '6666@66.com', 'qfQi2XvCM3');
INSERT INTO `tb_customer` VALUES (6, '张三1', '13622222222', '111@qq.com', 'VZwD3ie62m');
INSERT INTO `tb_customer` VALUES (9, 'maker', '15045124578', '2567451@qq.com', 'GczpXAh9AO');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods`  (
  `gid` int(50) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `gname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `gprice` double(50, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `gquantity` int(50) NULL DEFAULT 0 COMMENT '商品数量',
  `providerid` int(50) NULL DEFAULT NULL COMMENT '供货商编号',
  `dangerquantity` int(50) NULL DEFAULT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格',
  `goodspackage` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格类型',
  `gnumbering` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES (8, '蛋黄派', 15.00, 8, 2, 0, '500g', '袋', 'QyWIm9D5');
INSERT INTO `tb_goods` VALUES (9, '法式软面包', 36.90, 0, 2, 150, '3000g', '袋', 'cNnmUS50');
INSERT INTO `tb_goods` VALUES (10, '香辣花生', 36.90, 0, 8, 222, '3000g', '袋', 'uw2r8HV1');
INSERT INTO `tb_goods` VALUES (11, '可可甜心', 31.90, 0, 8, 20, '1000g', '袋', 'K2EC2UmX');
INSERT INTO `tb_goods` VALUES (12, '法式软面包', 32.90, 0, 9, 20, '2000g', '袋', 'dAplaVu7');
INSERT INTO `tb_goods` VALUES (13, '米老头', 33.90, 0, 9, 20, '3000g', '袋', 'fqwL1WKh');
INSERT INTO `tb_goods` VALUES (14, '麦香鸡块', 34.90, 0, 9, 20, '4000g', '袋', 'T2av2wDe');
INSERT INTO `tb_goods` VALUES (15, '荷兰豆', 35.90, 0, 9, 20, '100g', '袋', 'GMRc4wLF');
INSERT INTO `tb_goods` VALUES (16, '巧克力威化饼', 36.90, 0, 8, 20, '200g', '袋', 'IJtj8GSE');
INSERT INTO `tb_goods` VALUES (17, '鱿鱼丝', 37.90, 73, 11, 20, '300g', '袋', 'VAyJD2Oc');
INSERT INTO `tb_goods` VALUES (18, '大果粒', 38.90, 0, 11, 20, '40g', '袋', 'zM8TGhZk');
INSERT INTO `tb_goods` VALUES (19, '开心果', 39.90, 0, 11, 20, '50g', '袋', 'yMi96xuf');
INSERT INTO `tb_goods` VALUES (20, '蒜香花生', 11.90, 0, 11, 20, '6g', '袋', '19Ft4vBT');
INSERT INTO `tb_goods` VALUES (21, '雪鱼柳', 20.90, 0, 11, 20, '700g', '袋', '6FyN8NrO');
INSERT INTO `tb_goods` VALUES (22, '牛肉干', 22.90, 0, 11, 20, '800g', '袋', 'wKu4S9xQ');
INSERT INTO `tb_goods` VALUES (23, '正林西瓜子', 322.90, 0, 4, 20, '900g', '袋', 'HExBiHv9');
INSERT INTO `tb_goods` VALUES (24, '牛蹄筋', 32.90, 0, 4, 20, '1000g', '袋', 'A80RL7PG');
INSERT INTO `tb_goods` VALUES (25, '巧克力派', 31.90, 0, 4, 20, '1100g', '袋', '7qnuPWd8');
INSERT INTO `tb_goods` VALUES (26, '北京锅巴', 46.90, 0, 4, 20, '1200g', '袋', '8YfjnonO');
INSERT INTO `tb_goods` VALUES (27, '旺仔QQ糖', 16.90, 0, 3, 20, '1300g', '袋', 'BpukaVmE');
INSERT INTO `tb_goods` VALUES (28, '海苔', 26.90, 0, 3, 20, '1400g', '袋', 'iolcY3re');
INSERT INTO `tb_goods` VALUES (29, '酪夹面包', 56.90, 0, 3, 20, '1500g', '袋', 'RKEPDUHx');
INSERT INTO `tb_goods` VALUES (30, '话梅', 76.90, 0, 3, 20, '1600g', '袋', 'AwZgjFDt');
INSERT INTO `tb_goods` VALUES (31, '草莓蛋卷', 86.90, 0, 2, 20, '1700g', '袋', 'AsTTFph9');
INSERT INTO `tb_goods` VALUES (32, '水晶糖', 116.90, 0, 2, 20, '1800g', '袋', 'rZzoV61l');
INSERT INTO `tb_goods` VALUES (33, '泡芙', 10.90, 0, 2, 20, '200g', '袋', 'hjni4dKK');
INSERT INTO `tb_goods` VALUES (34, '麦芽糖', 11.90, 0, 2, 20, '300g', '袋', 'XAmHJc2G');
INSERT INTO `tb_goods` VALUES (35, '香草冰淇淋', 10.90, 0, 1, 0, '300g', '袋', 'ezDRe8eM');
INSERT INTO `tb_goods` VALUES (36, '饼干', 12.90, 520, 1, 0, '300g', '袋', 'OiSnmltJ');
INSERT INTO `tb_goods` VALUES (37, '煎饼', 13.90, 320, 1, 0, '300g', '袋', 'INaaqWm9');
INSERT INTO `tb_goods` VALUES (38, '跳跳糖', 14.90, 19, 1, 20, '300g', '袋', 'GRvJBWBS');
INSERT INTO `tb_goods` VALUES (39, '唐僧肉', 15.90, 50, 1, 20, '300g', '袋', 'K00ob15T');
INSERT INTO `tb_goods` VALUES (40, '挑豆', 16.90, 100, 1, 20, '400g', '袋', 'p2aYwqsR');
INSERT INTO `tb_goods` VALUES (41, '辣条', 1.00, 0, 1, 20, '20g', '袋', 'G1vTDX7s');
INSERT INTO `tb_goods` VALUES (42, '小饼干', 5.00, 0, 1, 200, '20g', '袋', 'drHWAH0R');
INSERT INTO `tb_goods` VALUES (43, '百度服务器', 1000.00, 0, 27, 0, '10m', '1件', 'mSsblYjO');
INSERT INTO `tb_goods` VALUES (44, '测试商品', 100.00, 90, 1, 0, '大瓶子', '没有', '2eJbjNoq');

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `categoryid` int(50) NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_goods_category
-- ----------------------------
INSERT INTO `tb_goods_category` VALUES (3, 1, 8);
INSERT INTO `tb_goods_category` VALUES (4, 2, 38);
INSERT INTO `tb_goods_category` VALUES (5, 3, 38);
INSERT INTO `tb_goods_category` VALUES (6, 9, 44);

-- ----------------------------
-- Table structure for tb_inport
-- ----------------------------
DROP TABLE IF EXISTS `tb_inport`;
CREATE TABLE `tb_inport`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `inptime` datetime NULL DEFAULT NULL,
  `operateperson` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `number` int(50) NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `inpprice` double NULL DEFAULT NULL,
  `providerid` int(50) NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_inport
-- ----------------------------
INSERT INTO `tb_inport` VALUES (5, '2021-01-11 21:06:23', '张三', 450, '', 10, 2, 8);
INSERT INTO `tb_inport` VALUES (6, '2021-02-16 09:22:36', '张三', 20, '', 20, 1, 38);
INSERT INTO `tb_inport` VALUES (7, '2021-03-10 09:27:41', '张三', 19, '', 35, 1, 38);
INSERT INTO `tb_inport` VALUES (8, '2021-03-30 09:28:46', '张三', 1000, '', 5, 1, 35);
INSERT INTO `tb_inport` VALUES (9, '2021-04-16 09:28:55', '张三', 500, '', 10, 1, 36);
INSERT INTO `tb_inport` VALUES (10, '2021-04-16 09:29:09', '张三', 300, '', 3, 1, 37);
INSERT INTO `tb_inport` VALUES (11, '2021-04-16 09:29:21', '张三', 50, '', 1, 1, 39);
INSERT INTO `tb_inport` VALUES (12, '2021-04-16 09:29:33', '张三', 100, '', 2, 1, 40);
INSERT INTO `tb_inport` VALUES (13, '2021-04-16 09:29:41', '张三', 100, '', 8, 11, 17);
INSERT INTO `tb_inport` VALUES (14, '2021-04-16 09:29:50', '张三', 200, '', 3, 8, 10);
INSERT INTO `tb_inport` VALUES (15, '2021-04-16 09:30:02', '张三', 0, '', 10, 9, 12);
INSERT INTO `tb_inport` VALUES (16, '2021-04-17 09:11:57', '李四', 100, '', 20, 2, 8);
INSERT INTO `tb_inport` VALUES (17, '2021-04-17 09:16:39', '李四', 100, '', 10, 2, 8);
INSERT INTO `tb_inport` VALUES (18, '2021-04-17 09:39:14', '李四', 20, '', 10, 1, 35);
INSERT INTO `tb_inport` VALUES (19, '2021-05-13 09:28:38', '张三', 20, 'ggg', 10, 1, 36);
INSERT INTO `tb_inport` VALUES (20, '2021-05-13 15:10:30', '张三', 10, '测试的', 100, 27, 43);
INSERT INTO `tb_inport` VALUES (21, '2021-05-13 15:33:38', '李四', 20, '近点东西吃', 10, 1, 37);
INSERT INTO `tb_inport` VALUES (22, '2021-05-13 16:29:49', '张三', 100, '啊哈哈', 10, 1, 44);

-- ----------------------------
-- Table structure for tb_logs
-- ----------------------------
DROP TABLE IF EXISTS `tb_logs`;
CREATE TABLE `tb_logs`  (
  `lid` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆用户',
  `ltime` datetime NULL DEFAULT NULL COMMENT '登陆时间',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作类型',
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_logs
-- ----------------------------
INSERT INTO `tb_logs` VALUES (1014, 'admin', '2021-05-13 11:34:12', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1015, 'admin', '2021-05-13 11:34:17', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1016, 'admin', '2021-05-13 11:34:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1017, 'admin', '2021-05-13 11:34:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1018, 'admin', '2021-05-13 11:34:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1019, 'admin', '2021-05-13 11:34:22', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1020, 'admin', '2021-05-13 14:10:00', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1021, 'admin', '2021-05-13 14:10:02', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1022, 'admin', '2021-05-13 14:10:02', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1023, 'admin', '2021-05-13 14:10:03', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1024, 'admin', '2021-05-13 14:10:03', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1025, 'admin', '2021-05-13 14:10:16', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (1026, 'admin', '2021-05-13 14:10:16', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1027, 'admin', '2021-05-13 14:10:18', '0:0:0:0:0:0:0:1', '执行的方法：deleteOne', '类别删除操作');
INSERT INTO `tb_logs` VALUES (1028, 'admin', '2021-05-13 14:10:19', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1029, 'admin', '2021-05-13 14:51:20', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1030, 'admin', '2021-05-13 14:51:21', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1031, 'admin', '2021-05-13 14:51:25', '0:0:0:0:0:0:0:1', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (1032, 'admin', '2021-05-13 14:51:25', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1033, 'admin', '2021-05-13 14:51:33', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1034, 'admin', '2021-05-13 14:51:34', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1035, 'admin', '2021-05-13 14:51:55', '0:0:0:0:0:0:0:1', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (1036, 'admin', '2021-05-13 14:51:55', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1037, 'admin', '2021-05-13 14:52:00', '0:0:0:0:0:0:0:1', '执行的方法：deleteOne', '客户删除操作');
INSERT INTO `tb_logs` VALUES (1038, 'admin', '2021-05-13 14:52:00', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1039, 'admin', '2021-05-13 14:53:07', '0:0:0:0:0:0:0:1', '执行的方法：updateCustomer', '客户修改操作');
INSERT INTO `tb_logs` VALUES (1040, 'admin', '2021-05-13 14:53:07', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1041, 'admin', '2021-05-13 14:53:13', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1042, 'admin', '2021-05-13 14:53:44', '0:0:0:0:0:0:0:1', '执行的方法：addProvider', '供应商添加操作');
INSERT INTO `tb_logs` VALUES (1043, 'admin', '2021-05-13 14:53:44', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1044, 'admin', '2021-05-13 14:53:48', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1045, 'admin', '2021-05-13 14:53:53', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1046, 'admin', '2021-05-13 14:56:04', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (1047, 'admin', '2021-05-13 14:56:04', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1048, 'admin', '2021-05-13 14:56:14', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1049, 'admin', '2021-05-13 15:08:45', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1050, 'admin', '2021-05-13 15:08:56', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1051, 'admin', '2021-05-13 15:09:30', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1052, 'admin', '2021-05-13 15:09:32', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1053, 'admin', '2021-05-13 15:09:33', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1054, 'admin', '2021-05-13 15:09:34', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1055, 'admin', '2021-05-13 15:09:35', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (1056, 'admin', '2021-05-13 15:09:37', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1057, 'admin', '2021-05-13 15:09:39', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1058, 'admin', '2021-05-13 15:09:40', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1059, 'admin', '2021-05-13 15:09:41', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1060, 'admin', '2021-05-13 15:09:42', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1061, 'admin', '2021-05-13 15:09:47', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (1062, 'admin', '2021-05-13 15:09:47', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1063, 'admin', '2021-05-13 15:10:30', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (1064, 'admin', '2021-05-13 15:10:30', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1065, 'admin', '2021-05-13 15:10:39', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (1066, 'admin', '2021-05-13 15:16:54', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1067, 'admin', '2021-05-13 15:16:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1068, 'admin', '2021-05-13 15:16:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1069, 'admin', '2021-05-13 15:16:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1070, 'admin', '2021-05-13 15:16:54', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1071, 'admin', '2021-05-13 15:17:23', '0:0:0:0:0:0:0:1', '执行的方法：saveGoodsCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (1072, 'admin', '2021-05-13 15:17:43', '0:0:0:0:0:0:0:1', '执行的方法：updateUser', '用户修改操作');
INSERT INTO `tb_logs` VALUES (1073, 'admin', '2021-05-13 15:17:43', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1074, 'admin', '2021-05-13 15:17:50', '0:0:0:0:0:0:0:1', '执行的方法：updateUser', '用户修改操作');
INSERT INTO `tb_logs` VALUES (1075, 'admin', '2021-05-13 15:17:51', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1076, 'admin', '2021-05-13 15:18:06', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1077, 'admin', '2021-05-13 15:18:12', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1078, 'admin', '2021-05-13 15:18:13', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1079, 'admin', '2021-05-13 15:18:13', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1080, 'admin', '2021-05-13 15:18:14', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1081, 'admin', '2021-05-13 15:18:14', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1082, 'admin', '2021-05-13 15:18:14', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1083, 'admin', '2021-05-13 15:18:14', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1084, 'admin', '2021-05-13 15:18:15', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1085, 'admin', '2021-05-13 15:18:15', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1086, 'admin', '2021-05-13 15:18:16', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1087, 'admin', '2021-05-13 15:18:16', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1088, 'admin', '2021-05-13 15:18:18', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (1089, 'admin', '2021-05-13 15:18:18', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1090, 'admin', '2021-05-13 15:18:21', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (1091, 'admin', '2021-05-13 15:18:21', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1092, 'admin', '2021-05-13 15:18:22', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (1093, 'admin', '2021-05-13 15:18:23', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1094, 'admin', '2021-05-13 15:18:25', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (1095, 'admin', '2021-05-13 15:18:25', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1096, 'admin', '2021-05-13 15:18:27', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1097, 'admin', '2021-05-13 15:18:30', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (1098, 'admin', '2021-05-13 15:18:30', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1099, 'admin', '2021-05-13 15:24:10', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (1100, 'admin', '2021-05-13 15:24:11', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1101, 'admin', '2021-05-13 15:24:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1102, 'admin', '2021-05-13 15:24:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1103, 'admin', '2021-05-13 15:24:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1104, 'admin', '2021-05-13 15:24:21', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1105, 'admin', '2021-05-13 15:32:47', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1106, 'admin', '2021-05-13 15:32:48', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1107, 'admin', '2021-05-13 15:32:50', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1108, 'admin', '2021-05-13 15:32:52', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1109, 'admin', '2021-05-13 15:33:01', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1110, 'admin', '2021-05-13 15:33:02', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1111, 'hw', '2021-05-13 15:33:17', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1112, 'hw', '2021-05-13 15:33:19', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1113, 'hw', '2021-05-13 15:33:38', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (1114, 'hw', '2021-05-13 15:33:38', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1115, 'hw', '2021-05-13 15:33:40', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1116, 'hw', '2021-05-13 15:33:43', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1117, 'hw', '2021-05-13 15:33:47', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (1118, 'admin', '2021-05-13 15:33:58', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1119, 'admin', '2021-05-13 15:34:01', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1120, 'admin', '2021-05-13 15:34:07', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1121, 'admin', '2021-05-13 15:34:15', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (1122, 'hw', '2021-05-13 15:34:26', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1123, 'hw', '2021-05-13 15:34:28', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1124, 'hw', '2021-05-13 15:34:29', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (1125, 'admin', '2021-05-13 15:38:39', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1126, 'admin', '2021-05-13 15:38:41', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1127, 'admin', '2021-05-13 15:38:43', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1128, 'admin', '2021-05-13 15:40:56', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1129, 'admin', '2021-05-13 15:41:37', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (1130, 'admin', '2021-05-13 16:12:17', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1131, 'admin', '2021-05-13 16:12:33', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1132, 'admin', '2021-05-13 16:12:41', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1133, 'admin', '2021-05-13 16:12:53', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1134, 'admin', '2021-05-13 16:13:00', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1135, 'admin', '2021-05-13 16:13:11', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (1136, 'admin', '2021-05-13 16:13:11', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1137, 'admin', '2021-05-13 16:13:29', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1138, 'admin', '2021-05-13 16:13:41', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (1139, 'admin', '2021-05-13 16:13:58', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1140, 'admin', '2021-05-13 16:14:07', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1141, 'admin', '2021-05-13 16:14:15', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1142, 'admin', '2021-05-13 16:14:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1143, 'admin', '2021-05-13 16:14:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1144, 'admin', '2021-05-13 16:14:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1145, 'admin', '2021-05-13 16:14:56', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1146, 'admin', '2021-05-13 16:14:59', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1147, 'admin', '2021-05-13 16:15:14', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1148, 'admin', '2021-05-13 16:15:14', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1149, 'admin', '2021-05-13 16:15:14', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1150, 'admin', '2021-05-13 16:15:14', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1151, 'admin', '2021-05-13 16:15:23', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1152, 'admin', '2021-05-13 16:15:58', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1153, 'admin', '2021-05-13 16:15:58', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1154, 'admin', '2021-05-13 16:15:58', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1155, 'admin', '2021-05-13 16:15:58', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1156, 'admin', '2021-05-13 16:15:58', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1157, 'admin', '2021-05-13 16:28:17', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1158, 'admin', '2021-05-13 16:28:19', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1159, 'admin', '2021-05-13 16:28:22', '0:0:0:0:0:0:0:1', '执行的方法：deleteOne', '客户删除操作');
INSERT INTO `tb_logs` VALUES (1160, 'admin', '2021-05-13 16:28:22', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1161, 'admin', '2021-05-13 16:28:30', '0:0:0:0:0:0:0:1', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (1162, 'admin', '2021-05-13 16:28:30', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1163, 'admin', '2021-05-13 16:28:33', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1164, 'admin', '2021-05-13 16:28:38', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1165, 'admin', '2021-05-13 16:28:40', '0:0:0:0:0:0:0:1', '执行的方法：deleteOne', '供应商删除操作');
INSERT INTO `tb_logs` VALUES (1166, 'admin', '2021-05-13 16:28:40', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1167, 'admin', '2021-05-13 16:28:54', '0:0:0:0:0:0:0:1', '执行的方法：addProvider', '供应商添加操作');
INSERT INTO `tb_logs` VALUES (1168, 'admin', '2021-05-13 16:28:54', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1169, 'admin', '2021-05-13 16:28:57', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1170, 'admin', '2021-05-13 16:29:20', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (1171, 'admin', '2021-05-13 16:29:20', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1172, 'admin', '2021-05-13 16:29:21', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (1173, 'admin', '2021-05-13 16:29:28', '0:0:0:0:0:0:0:1', '执行的方法：saveGoodsCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (1174, 'admin', '2021-05-13 16:29:30', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1175, 'admin', '2021-05-13 16:29:34', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1176, 'admin', '2021-05-13 16:29:49', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (1177, 'admin', '2021-05-13 16:29:49', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1178, 'admin', '2021-05-13 16:29:55', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (1179, 'admin', '2021-05-13 16:29:55', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1180, 'admin', '2021-05-13 16:29:56', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (1181, 'admin', '2021-05-13 16:29:59', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1182, 'admin', '2021-05-13 16:30:07', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (1183, 'admin', '2021-05-13 16:30:14', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (1184, 'admin', '2021-05-13 16:30:26', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (1185, 'admin', '2021-05-13 16:30:27', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1186, 'admin', '2021-05-13 16:30:30', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (1187, 'admin', '2021-05-13 16:30:46', '0:0:0:0:0:0:0:1', '执行的方法：addOutsale', '退货添加操作');
INSERT INTO `tb_logs` VALUES (1188, 'admin', '2021-05-13 16:30:46', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1189, 'admin', '2021-05-13 16:31:04', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (1190, 'admin', '2021-05-13 16:31:13', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (1191, 'admin', '2021-05-13 16:31:18', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (1192, 'admin', '2021-05-13 16:31:24', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (1193, 'admin', '2021-05-13 16:31:26', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1194, 'admin', '2021-05-13 16:31:26', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (1195, 'admin', '2021-05-13 16:31:26', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (1196, 'admin', '2021-05-13 16:31:26', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (1197, 'lisi', '2021-05-13 16:31:40', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1198, 'lisi', '2021-05-13 16:31:42', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (1199, 'lisi', '2021-05-13 16:31:42', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (1200, 'wangwu', '2021-05-13 16:32:05', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (1201, 'wangwu', '2021-05-13 16:32:06', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (1202, 'wangwu', '2021-05-13 16:32:07', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (1203, 'wangwu', '2021-05-13 16:32:07', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (1204, 'wangwu', '2021-05-13 16:32:08', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (1205, 'wangwu', '2021-05-13 16:32:08', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');

-- ----------------------------
-- Table structure for tb_outport
-- ----------------------------
DROP TABLE IF EXISTS `tb_outport`;
CREATE TABLE `tb_outport`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `providerid` int(50) NULL DEFAULT NULL,
  `outputtime` datetime NULL DEFAULT NULL,
  `operateperson` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `outprice` double(50, 2) NULL DEFAULT NULL,
  `number` int(50) NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_outport
-- ----------------------------
INSERT INTO `tb_outport` VALUES (11, 2, '2021-01-10 16:45:57', '张三', 500.00, 50, '过期了', 8);
INSERT INTO `tb_outport` VALUES (12, 2, '2021-02-11 21:06:53', '张三', 500.00, 50, '', 8);
INSERT INTO `tb_outport` VALUES (13, 1, '2021-02-16 09:24:10', '张三', 1580.00, 79, '', 38);
INSERT INTO `tb_outport` VALUES (14, 1, '2021-03-16 09:26:56', '张三', 20.00, 1, '', 38);
INSERT INTO `tb_outport` VALUES (15, 9, '2021-03-16 21:07:11', '李四', 200.00, 20, '', 12);
INSERT INTO `tb_outport` VALUES (16, 9, '2021-04-16 22:03:51', '李四', 300.00, 30, '', 12);
INSERT INTO `tb_outport` VALUES (17, 8, '2021-04-16 22:08:11', '李四', 600.00, 200, '', 10);
INSERT INTO `tb_outport` VALUES (18, 1, '2021-04-17 09:39:21', '李四', 220.00, 22, '', 35);
INSERT INTO `tb_outport` VALUES (19, 1, '2021-04-17 09:39:28', '李四', 1500.00, 150, '', 35);
INSERT INTO `tb_outport` VALUES (20, 1, '2021-04-22 17:52:36', '李四', 2000.00, 200, '11', 35);
INSERT INTO `tb_outport` VALUES (21, 1, '2021-04-22 17:53:36', '李四', 6480.00, 648, '11', 35);
INSERT INTO `tb_outport` VALUES (22, 2, '2021-04-26 17:08:28', '李四', 10000.00, 500, '', 8);
INSERT INTO `tb_outport` VALUES (23, 11, '2021-04-26 17:17:31', '李四', 160.00, 20, '', 17);
INSERT INTO `tb_outport` VALUES (24, 27, '2021-05-13 15:24:10', '张三', 1000.00, 10, '有问题', 43);
INSERT INTO `tb_outport` VALUES (25, 1, '2021-05-13 16:29:55', '张三', 100.00, 10, '是', 44);

-- ----------------------------
-- Table structure for tb_outsale
-- ----------------------------
DROP TABLE IF EXISTS `tb_outsale`;
CREATE TABLE `tb_outsale`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `outtime` datetime NULL DEFAULT NULL COMMENT '退货时间',
  `outprice` double(50, 2) NULL DEFAULT NULL COMMENT '退货价格',
  `number` int(50) NULL DEFAULT NULL COMMENT '退货数量',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `goodsid` int(50) NULL DEFAULT NULL,
  `outserial` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货编号',
  `sid` int(50) NULL DEFAULT NULL,
  `operateperson` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_outsale
-- ----------------------------
INSERT INTO `tb_outsale` VALUES (24, '2020-12-26 18:16:19', 3.00, 3, '', 17, '57UiV35', 9, '王五');
INSERT INTO `tb_outsale` VALUES (27, '2021-03-26 18:34:06', 20.00, 2, '', 8, 'H6s4ZR0', 10, '王五');
INSERT INTO `tb_outsale` VALUES (28, '2021-05-13 16:30:46', 100.00, 10, '255', 44, '1SQyLnb', 11, '张三');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pid` int(50) NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `href` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `percode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spread` int(50) NULL DEFAULT NULL,
  `available` int(50) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES (1, 0, 'menu', '进销存管理系统', NULL, NULL, 1, 1);
INSERT INTO `tb_permission` VALUES (2, 1, 'menu', '基础管理', NULL, '', 0, 1);
INSERT INTO `tb_permission` VALUES (3, 1, 'menu', '进货退货管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (4, 1, 'menu', '销售管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (5, 1, 'menu', '系统管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (6, 1, 'menu', '其他管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (8, 2, 'menu', '客户管理', '/toCustomer', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (9, 2, 'menu', '供应商管理', '/toProvider', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (10, 2, 'menu', '商品管理', '/toGoods', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (11, 3, 'menu', '商品进货', '/toInport', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (12, 3, 'menu', '商品退货查询', '/toOutport', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (13, 4, 'menu', '商品销售', '/toSale', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (15, 2, 'menu', '商品类别管理', '/toCategory', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (16, 5, 'menu', '权限管理', '/toPermission', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (17, 5, 'menu', '角色管理', '/toRole', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (18, 5, 'menu', '用户管理', '/toUser', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (19, 6, 'menu', '日志管理', '/toLog', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (21, 8, 'permission', '客户查询', NULL, 'customer:view', 0, 1);
INSERT INTO `tb_permission` VALUES (22, 8, 'permission', '客户添加', NULL, 'customer:create', 0, 1);
INSERT INTO `tb_permission` VALUES (23, 8, 'permission', '客户修改', NULL, 'customer:update', 0, 1);
INSERT INTO `tb_permission` VALUES (24, 8, 'permission', '客户删除', NULL, 'customer:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (25, 9, 'permission', '供应商查询', NULL, 'provider:view', 0, 1);
INSERT INTO `tb_permission` VALUES (26, 9, 'permission', '供应商添加', NULL, 'provider:create', 0, 1);
INSERT INTO `tb_permission` VALUES (27, 9, 'permission', '供应商修改', NULL, 'provider:update', 0, 1);
INSERT INTO `tb_permission` VALUES (28, 9, 'permission', '供应商删除', NULL, 'provider:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (29, 10, 'permission', '商品查询', NULL, 'goods:view', 0, 1);
INSERT INTO `tb_permission` VALUES (30, 10, 'permission', '商品添加', NULL, 'goods:create', 0, 1);
INSERT INTO `tb_permission` VALUES (31, 16, 'permission', '添加权限', NULL, 'permission:create', 0, 1);
INSERT INTO `tb_permission` VALUES (32, 16, 'permission', '修改权限', NULL, 'permission:update', 0, 1);
INSERT INTO `tb_permission` VALUES (33, 16, 'permission', '删除权限', NULL, 'permission:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (34, 16, 'permission', '权限查询', NULL, 'permission:view', 0, 1);
INSERT INTO `tb_permission` VALUES (35, 17, 'permission', '添加角色', NULL, 'role:create', 0, 1);
INSERT INTO `tb_permission` VALUES (36, 17, 'permission', '修改角色', NULL, 'role:update', 0, 1);
INSERT INTO `tb_permission` VALUES (37, 17, 'permission', '角色删除', NULL, 'role:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (38, 17, 'permission', '分配权限', NULL, 'role:selectPermission', 0, 1);
INSERT INTO `tb_permission` VALUES (39, 17, 'permission', '角色查询', NULL, 'role:view', 0, 1);
INSERT INTO `tb_permission` VALUES (40, 18, 'permission', '添加用户', NULL, 'user:create', 0, 1);
INSERT INTO `tb_permission` VALUES (41, 18, 'permission', '修改用户', NULL, 'user:update', 0, 1);
INSERT INTO `tb_permission` VALUES (42, 18, 'permission', '删除用户', NULL, 'user:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (43, 18, 'permission', '用户分配角色', NULL, 'user:selectRole', 0, 1);
INSERT INTO `tb_permission` VALUES (44, 18, 'permission', '重置密码', NULL, 'user:resetPwd', 0, 1);
INSERT INTO `tb_permission` VALUES (45, 18, 'permission', '用户查询', NULL, 'user:view', 0, 1);
INSERT INTO `tb_permission` VALUES (46, 19, 'permission', '日志查询', NULL, 'info:view', 0, 1);
INSERT INTO `tb_permission` VALUES (47, 19, 'permission', '日志删除', NULL, 'info:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (48, 19, 'permission', '日志批量删除', NULL, 'info:batchdelete', 0, 1);
INSERT INTO `tb_permission` VALUES (49, 20, 'permission', '公告查询', NULL, 'notice:view', 0, 1);
INSERT INTO `tb_permission` VALUES (50, 20, 'permission', '公告添加', NULL, 'notice:create', 0, 1);
INSERT INTO `tb_permission` VALUES (51, 20, 'permission', '公告修改', NULL, 'notice:update', 0, 1);
INSERT INTO `tb_permission` VALUES (54, 15, 'permission', '类别添加', NULL, 'category:create', 0, 1);
INSERT INTO `tb_permission` VALUES (55, 15, 'permission', '类别修改', NULL, 'category:update', 0, 1);
INSERT INTO `tb_permission` VALUES (56, 15, 'permission', '类别删除', NULL, 'category:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (57, 15, 'permission', '类别查询', NULL, 'category:view', 0, 1);
INSERT INTO `tb_permission` VALUES (58, 10, 'permission', '商品修改', NULL, 'goods:update', 0, 1);
INSERT INTO `tb_permission` VALUES (59, 10, 'permission', '商品删除', NULL, 'goods:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (60, 10, 'permission', '分配类别', NULL, 'goods:selectCategory', 0, 1);
INSERT INTO `tb_permission` VALUES (61, 11, 'permission', '进货查询', NULL, 'inport:view', 0, 1);
INSERT INTO `tb_permission` VALUES (62, 11, 'permission', '进货修改', NULL, 'inport:update', 0, 1);
INSERT INTO `tb_permission` VALUES (63, 11, 'permission', '进货删除', NULL, 'inport:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (64, 11, 'permission', '退货添加', NULL, 'return:create', 0, 1);
INSERT INTO `tb_permission` VALUES (65, 13, 'permission', '销售查询', NULL, 'sale:view', 0, 1);
INSERT INTO `tb_permission` VALUES (66, 13, 'permission', '销售添加', NULL, 'sale:create', 0, 1);
INSERT INTO `tb_permission` VALUES (67, 13, 'permission', '销售删除', NULL, 'sale:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (68, 13, 'permission', '销售修改', NULL, 'sale:update', 0, 1);
INSERT INTO `tb_permission` VALUES (69, 11, 'permission', '进货添加', NULL, 'inport:create', 0, 1);
INSERT INTO `tb_permission` VALUES (70, 11, 'permission', '退货查询', NULL, 'return:view', 0, 1);
INSERT INTO `tb_permission` VALUES (71, 13, 'permission', '销售退货', NULL, 'returnsale:create', 0, 1);
INSERT INTO `tb_permission` VALUES (72, 4, 'menu', '商品销售退货', '/toOutsale', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (73, 13, 'permission', '销售退货查询', NULL, 'returnsale:view', 0, 1);
INSERT INTO `tb_permission` VALUES (74, 6, 'menu', '统计报表', '/toReport', NULL, 0, 1);

-- ----------------------------
-- Table structure for tb_provider
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider`;
CREATE TABLE `tb_provider`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `providername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商地址',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商公司联系电话',
  `opername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_provider
-- ----------------------------
INSERT INTO `tb_provider` VALUES (1, '旺旺食品', '仙桃市旺旺食品有限公司', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (2, '达利园食品', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (3, '娃哈哈集团', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (4, '格力集团', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (5, '小洋人集团', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (6, '可口可乐', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (7, '卫龙食品', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (8, '百草味食品', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (9, '良品铺子', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (10, '比比赞', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (11, '三只松鼠', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (12, '购实惠', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (13, '周黑鸭', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (14, '好利来', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (26, '百事可乐有限公司', '河北省石家庄市百事可乐股份有限公司', '13633333333', '张三');
INSERT INTO `tb_provider` VALUES (28, '测试供应商', '哈哈', '15045714578', '张三');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `roleid` int(50) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE,
  INDEX `rolename`(`rolename`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '系统管理员', '拥有角色管理、为角色分配权限、用户管理、为用户分配角色');
INSERT INTO `tb_role` VALUES (2, '货物管理员', '管理进货退货');
INSERT INTO `tb_role` VALUES (4, '商品管理员', '管理商品、商品类别、供应商、客户、商品销售');

-- ----------------------------
-- Table structure for tb_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_permission`;
CREATE TABLE `tb_role_permission`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `role_id` int(50) NULL DEFAULT NULL,
  `permission_id` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_role_per_1`(`role_id`) USING BTREE,
  INDEX `fk_role_per_2`(`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 586 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role_permission
-- ----------------------------
INSERT INTO `tb_role_permission` VALUES (433, 4, 1);
INSERT INTO `tb_role_permission` VALUES (434, 4, 2);
INSERT INTO `tb_role_permission` VALUES (435, 4, 8);
INSERT INTO `tb_role_permission` VALUES (436, 4, 21);
INSERT INTO `tb_role_permission` VALUES (437, 4, 22);
INSERT INTO `tb_role_permission` VALUES (438, 4, 23);
INSERT INTO `tb_role_permission` VALUES (439, 4, 24);
INSERT INTO `tb_role_permission` VALUES (440, 4, 9);
INSERT INTO `tb_role_permission` VALUES (441, 4, 25);
INSERT INTO `tb_role_permission` VALUES (442, 4, 26);
INSERT INTO `tb_role_permission` VALUES (443, 4, 27);
INSERT INTO `tb_role_permission` VALUES (444, 4, 28);
INSERT INTO `tb_role_permission` VALUES (445, 4, 10);
INSERT INTO `tb_role_permission` VALUES (446, 4, 29);
INSERT INTO `tb_role_permission` VALUES (447, 4, 30);
INSERT INTO `tb_role_permission` VALUES (448, 4, 58);
INSERT INTO `tb_role_permission` VALUES (449, 4, 59);
INSERT INTO `tb_role_permission` VALUES (450, 4, 60);
INSERT INTO `tb_role_permission` VALUES (451, 4, 15);
INSERT INTO `tb_role_permission` VALUES (452, 4, 54);
INSERT INTO `tb_role_permission` VALUES (453, 4, 55);
INSERT INTO `tb_role_permission` VALUES (454, 4, 56);
INSERT INTO `tb_role_permission` VALUES (455, 4, 57);
INSERT INTO `tb_role_permission` VALUES (456, 4, 4);
INSERT INTO `tb_role_permission` VALUES (457, 4, 13);
INSERT INTO `tb_role_permission` VALUES (458, 4, 65);
INSERT INTO `tb_role_permission` VALUES (459, 4, 66);
INSERT INTO `tb_role_permission` VALUES (460, 4, 67);
INSERT INTO `tb_role_permission` VALUES (461, 4, 68);
INSERT INTO `tb_role_permission` VALUES (462, 4, 71);
INSERT INTO `tb_role_permission` VALUES (463, 4, 73);
INSERT INTO `tb_role_permission` VALUES (464, 4, 72);
INSERT INTO `tb_role_permission` VALUES (491, 1, 1);
INSERT INTO `tb_role_permission` VALUES (492, 1, 2);
INSERT INTO `tb_role_permission` VALUES (493, 1, 8);
INSERT INTO `tb_role_permission` VALUES (494, 1, 21);
INSERT INTO `tb_role_permission` VALUES (495, 1, 22);
INSERT INTO `tb_role_permission` VALUES (496, 1, 23);
INSERT INTO `tb_role_permission` VALUES (497, 1, 24);
INSERT INTO `tb_role_permission` VALUES (498, 1, 9);
INSERT INTO `tb_role_permission` VALUES (499, 1, 25);
INSERT INTO `tb_role_permission` VALUES (500, 1, 26);
INSERT INTO `tb_role_permission` VALUES (501, 1, 27);
INSERT INTO `tb_role_permission` VALUES (502, 1, 28);
INSERT INTO `tb_role_permission` VALUES (503, 1, 10);
INSERT INTO `tb_role_permission` VALUES (504, 1, 29);
INSERT INTO `tb_role_permission` VALUES (505, 1, 30);
INSERT INTO `tb_role_permission` VALUES (506, 1, 58);
INSERT INTO `tb_role_permission` VALUES (507, 1, 59);
INSERT INTO `tb_role_permission` VALUES (508, 1, 60);
INSERT INTO `tb_role_permission` VALUES (509, 1, 15);
INSERT INTO `tb_role_permission` VALUES (510, 1, 54);
INSERT INTO `tb_role_permission` VALUES (511, 1, 55);
INSERT INTO `tb_role_permission` VALUES (512, 1, 56);
INSERT INTO `tb_role_permission` VALUES (513, 1, 57);
INSERT INTO `tb_role_permission` VALUES (514, 1, 3);
INSERT INTO `tb_role_permission` VALUES (515, 1, 11);
INSERT INTO `tb_role_permission` VALUES (516, 1, 61);
INSERT INTO `tb_role_permission` VALUES (517, 1, 62);
INSERT INTO `tb_role_permission` VALUES (518, 1, 63);
INSERT INTO `tb_role_permission` VALUES (519, 1, 64);
INSERT INTO `tb_role_permission` VALUES (520, 1, 69);
INSERT INTO `tb_role_permission` VALUES (521, 1, 70);
INSERT INTO `tb_role_permission` VALUES (522, 1, 12);
INSERT INTO `tb_role_permission` VALUES (523, 1, 4);
INSERT INTO `tb_role_permission` VALUES (524, 1, 13);
INSERT INTO `tb_role_permission` VALUES (525, 1, 65);
INSERT INTO `tb_role_permission` VALUES (526, 1, 66);
INSERT INTO `tb_role_permission` VALUES (527, 1, 67);
INSERT INTO `tb_role_permission` VALUES (528, 1, 68);
INSERT INTO `tb_role_permission` VALUES (529, 1, 71);
INSERT INTO `tb_role_permission` VALUES (530, 1, 73);
INSERT INTO `tb_role_permission` VALUES (531, 1, 72);
INSERT INTO `tb_role_permission` VALUES (532, 1, 5);
INSERT INTO `tb_role_permission` VALUES (533, 1, 16);
INSERT INTO `tb_role_permission` VALUES (534, 1, 31);
INSERT INTO `tb_role_permission` VALUES (535, 1, 32);
INSERT INTO `tb_role_permission` VALUES (536, 1, 33);
INSERT INTO `tb_role_permission` VALUES (537, 1, 34);
INSERT INTO `tb_role_permission` VALUES (538, 1, 17);
INSERT INTO `tb_role_permission` VALUES (539, 1, 35);
INSERT INTO `tb_role_permission` VALUES (540, 1, 36);
INSERT INTO `tb_role_permission` VALUES (541, 1, 37);
INSERT INTO `tb_role_permission` VALUES (542, 1, 38);
INSERT INTO `tb_role_permission` VALUES (543, 1, 39);
INSERT INTO `tb_role_permission` VALUES (544, 1, 18);
INSERT INTO `tb_role_permission` VALUES (545, 1, 40);
INSERT INTO `tb_role_permission` VALUES (546, 1, 41);
INSERT INTO `tb_role_permission` VALUES (547, 1, 42);
INSERT INTO `tb_role_permission` VALUES (548, 1, 43);
INSERT INTO `tb_role_permission` VALUES (549, 1, 44);
INSERT INTO `tb_role_permission` VALUES (550, 1, 45);
INSERT INTO `tb_role_permission` VALUES (551, 1, 6);
INSERT INTO `tb_role_permission` VALUES (552, 1, 19);
INSERT INTO `tb_role_permission` VALUES (553, 1, 46);
INSERT INTO `tb_role_permission` VALUES (554, 1, 47);
INSERT INTO `tb_role_permission` VALUES (555, 1, 48);
INSERT INTO `tb_role_permission` VALUES (556, 1, 74);
INSERT INTO `tb_role_permission` VALUES (576, 2, 1);
INSERT INTO `tb_role_permission` VALUES (577, 2, 3);
INSERT INTO `tb_role_permission` VALUES (578, 2, 11);
INSERT INTO `tb_role_permission` VALUES (579, 2, 61);
INSERT INTO `tb_role_permission` VALUES (580, 2, 62);
INSERT INTO `tb_role_permission` VALUES (581, 2, 63);
INSERT INTO `tb_role_permission` VALUES (582, 2, 64);
INSERT INTO `tb_role_permission` VALUES (583, 2, 69);
INSERT INTO `tb_role_permission` VALUES (584, 2, 70);
INSERT INTO `tb_role_permission` VALUES (585, 2, 12);

-- ----------------------------
-- Table structure for tb_sale
-- ----------------------------
DROP TABLE IF EXISTS `tb_sale`;
CREATE TABLE `tb_sale`  (
  `saleid` int(50) NOT NULL AUTO_INCREMENT,
  `gid` int(50) NOT NULL COMMENT '商品外键',
  `custid` int(50) NULL DEFAULT NULL COMMENT '客户外键',
  `buyquantity` int(50) NULL DEFAULT NULL COMMENT '销售数量',
  `buytime` datetime NULL DEFAULT NULL COMMENT '销售时间',
  `money` double(50, 0) NULL DEFAULT NULL COMMENT '销售金额',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `numbering` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '销售编号',
  `realnumber` int(50) NULL DEFAULT NULL COMMENT '实际销售量',
  PRIMARY KEY (`saleid`) USING BTREE,
  INDEX `fk_shop_sale`(`gid`) USING BTREE,
  INDEX `fk_customer_sale`(`custid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sale
-- ----------------------------
INSERT INTO `tb_sale` VALUES (1, 8, 3, 20, '2021-01-10 17:28:26', 300, '111', 'admin', 'V4l3KvE', 20);
INSERT INTO `tb_sale` VALUES (2, 8, 4, 20, '2021-02-10 17:28:26', 300, '111', 'admin', 'n9TfSks', 20);
INSERT INTO `tb_sale` VALUES (3, 8, 5, 10, '2021-03-10 17:28:26', 300, '111', 'admin', 'cRkPJ3P', 10);
INSERT INTO `tb_sale` VALUES (4, 8, 3, 30, '2021-04-10 20:34:27', 15, '11', 'admin', 'YWZWZBa', 30);
INSERT INTO `tb_sale` VALUES (5, 8, 3, 20, '2021-04-11 21:07:50', 15, '', 'admin', 'NySfYiQ', 20);
INSERT INTO `tb_sale` VALUES (6, 38, 3, 20, '2021-04-16 09:23:11', 35, '', 'admin', 'kYi3Uen', 20);
INSERT INTO `tb_sale` VALUES (7, 8, 0, 10, '2021-04-17 09:30:52', 10, '', 'sp', 'mOs2nXN', 10);
INSERT INTO `tb_sale` VALUES (8, 8, 0, 1, '2021-04-17 09:36:53', 15, '', 'sp', 'L7RjgfM', 1);
INSERT INTO `tb_sale` VALUES (9, 17, 0, 10, '2021-04-26 17:32:39', 1, '', 'sp', '6LFgXV2', 7);
INSERT INTO `tb_sale` VALUES (10, 8, 0, 3, '2021-04-26 18:33:44', 10, '', 'sp', 'RZzqn1u', 1);
INSERT INTO `tb_sale` VALUES (11, 44, 4, 10, '2021-05-13 16:30:26', 10, '11', 'admin', 'fbcd34T', 0);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `uid` int(50) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码盐值',
  `uname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `usex` int(50) NULL DEFAULT NULL COMMENT '性别',
  `uphone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `uemail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `available` int(50) NULL DEFAULT 0 COMMENT '状态 0 启用 1 停用',
  `ucreatetime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `type` int(50) NULL DEFAULT NULL COMMENT '用户类型[0超级管理员 1普通用户]',
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `isdel`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'e53897b4beaf8f5376ed64bcb0878c7e', '65eef679a0fa4619b7098791db543bce', '张三', 1, '13622225252', '1111111111@qq.com', 1, '2021-04-03 20:11:07', 0);
INSERT INTO `tb_user` VALUES (4, 'lisi', '1f467f95a27e1f7fb1f377b14bf7d3c5', 'ba0638b6183c49e0b35668ed7f9c075a', '李四', 1, '13622222222', '132@qq.com', 1, '2021-04-06 17:07:47', 1);
INSERT INTO `tb_user` VALUES (5, 'wangwu', '9137fb7a237d9fbf7a0016c6126c8fff', 'db04509b18ba4b34a02421d033fd9280', '王五', 1, '13611111111', '111@qq.com', 1, '2021-04-16 09:32:12', 1);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NULL DEFAULT NULL,
  `role_id` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_role_1`(`user_id`) USING BTREE,
  INDEX `fk_user_role_2`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (7, 1, 1);
INSERT INTO `tb_user_role` VALUES (13, 5, 4);
INSERT INTO `tb_user_role` VALUES (15, 4, 2);

SET FOREIGN_KEY_CHECKS = 1;
