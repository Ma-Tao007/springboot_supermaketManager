/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : supermarket

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 26/05/2021 15:53:22
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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (1, '家电', 0);
INSERT INTO `tb_category` VALUES (2, '水果', 0);
INSERT INTO `tb_category` VALUES (3, '蔬菜', 0);
INSERT INTO `tb_category` VALUES (4, '厨房', 0);
INSERT INTO `tb_category` VALUES (5, '零食', 0);
INSERT INTO `tb_category` VALUES (6, '其他', 0);
INSERT INTO `tb_category` VALUES (7, '玩具', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES (1, '张三', '15011111111', '15011111111@qq.com', 'W95gcjaFHJ');
INSERT INTO `tb_customer` VALUES (2, '李四', '15122222222', '15122222222@qq.com', '4oIbzvO5jw');
INSERT INTO `tb_customer` VALUES (3, '王二', '15022222222', '15022222222@qq.com', 'bWCsC9suP1');
INSERT INTO `tb_customer` VALUES (5, '张强', '15612457812', '1561245781@qq.com', 'XZv8jUtCO1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES (1, '苹果', 10.00, 100, 1, 0, '10斤', '斤', 'yB9uVUa8');
INSERT INTO `tb_goods` VALUES (2, '黄瓜', 5.00, 8, 2, 0, '大棚', '根', '9W7B3Wgv');
INSERT INTO `tb_goods` VALUES (3, '小汽车', 100.00, 10, 4, 0, '小孩玩具', '辆', 'aKWmQSei');

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `categoryid` int(50) NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_goods_category
-- ----------------------------
INSERT INTO `tb_goods_category` VALUES (1, 2, 1);
INSERT INTO `tb_goods_category` VALUES (2, 3, 2);
INSERT INTO `tb_goods_category` VALUES (3, 7, 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_inport
-- ----------------------------
INSERT INTO `tb_inport` VALUES (1, '2021-05-26 14:15:36', '张三', 20, '', 10, 2, 2);
INSERT INTO `tb_inport` VALUES (2, '2021-05-26 14:15:48', '张三', 10, '哈哈', 80, 4, 3);
INSERT INTO `tb_inport` VALUES (3, '2021-05-26 14:16:33', '张三', 100, '苹果', 2, 1, 1);

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
INSERT INTO `tb_logs` VALUES (1, 'admin', '2021-05-26 11:53:27', '192.168.1.136', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (2, 'admin', '2021-05-26 11:53:27', '192.168.1.136', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (3, 'admin', '2021-05-26 11:53:27', '192.168.1.136', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (4, 'admin', '2021-05-26 11:53:27', '192.168.1.136', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (5, 'admin', '2021-05-26 11:53:31', '192.168.1.136', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (6, 'admin', '2021-05-26 11:56:11', '192.168.1.136', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (7, 'admin', '2021-05-26 11:56:11', '192.168.1.136', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (8, 'admin', '2021-05-26 11:56:11', '192.168.1.136', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (9, 'admin', '2021-05-26 11:56:11', '192.168.1.136', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (10, 'admin', '2021-05-26 11:56:22', '192.168.1.136', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (11, 'admin', '2021-05-26 11:56:23', '192.168.1.136', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (12, 'admin', '2021-05-26 11:56:38', '192.168.1.136', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (13, 'admin', '2021-05-26 11:57:04', '192.168.1.136', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (14, 'admin', '2021-05-26 11:57:04', '192.168.1.136', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (15, 'admin', '2021-05-26 11:58:31', '192.168.1.136', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (16, 'admin', '2021-05-26 11:58:31', '192.168.1.136', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (17, 'admin', '2021-05-26 11:59:43', '192.168.1.136', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (18, 'admin', '2021-05-26 11:59:43', '192.168.1.136', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (19, 'admin', '2021-05-26 12:00:13', '192.168.1.136', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (20, 'admin', '2021-05-26 12:00:13', '192.168.1.136', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (21, 'admin', '2021-05-26 14:07:11', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (22, 'admin', '2021-05-26 14:07:14', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (23, 'admin', '2021-05-26 14:07:23', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (24, 'admin', '2021-05-26 14:07:54', '0:0:0:0:0:0:0:1', '执行的方法：addProvider', '供应商添加操作');
INSERT INTO `tb_logs` VALUES (25, 'admin', '2021-05-26 14:07:54', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (26, 'admin', '2021-05-26 14:08:12', '0:0:0:0:0:0:0:1', '执行的方法：addProvider', '供应商添加操作');
INSERT INTO `tb_logs` VALUES (27, 'admin', '2021-05-26 14:08:12', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (28, 'admin', '2021-05-26 14:08:34', '0:0:0:0:0:0:0:1', '执行的方法：addProvider', '供应商添加操作');
INSERT INTO `tb_logs` VALUES (29, 'admin', '2021-05-26 14:08:35', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (30, 'admin', '2021-05-26 14:08:40', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (31, 'admin', '2021-05-26 14:08:42', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (32, 'admin', '2021-05-26 14:08:44', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (33, 'admin', '2021-05-26 14:08:45', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (34, 'admin', '2021-05-26 14:08:58', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (35, 'admin', '2021-05-26 14:08:58', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (36, 'admin', '2021-05-26 14:09:02', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (37, 'admin', '2021-05-26 14:09:02', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (38, 'admin', '2021-05-26 14:09:06', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (39, 'admin', '2021-05-26 14:09:06', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (40, 'admin', '2021-05-26 14:09:12', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (41, 'admin', '2021-05-26 14:09:12', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (42, 'admin', '2021-05-26 14:09:17', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (43, 'admin', '2021-05-26 14:09:17', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (44, 'admin', '2021-05-26 14:09:21', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (45, 'admin', '2021-05-26 14:09:21', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (46, 'admin', '2021-05-26 14:09:51', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (47, 'admin', '2021-05-26 14:09:51', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (48, 'admin', '2021-05-26 14:09:58', '0:0:0:0:0:0:0:1', '执行的方法：saveGoodsCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (49, 'admin', '2021-05-26 14:10:45', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (50, 'admin', '2021-05-26 14:10:45', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (51, 'admin', '2021-05-26 14:10:53', '0:0:0:0:0:0:0:1', '执行的方法：saveGoodsCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (52, 'admin', '2021-05-26 14:10:58', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (53, 'admin', '2021-05-26 14:10:59', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (54, 'admin', '2021-05-26 14:11:06', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (55, 'admin', '2021-05-26 14:11:06', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (56, 'admin', '2021-05-26 14:11:06', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (57, 'admin', '2021-05-26 14:11:06', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (58, 'admin', '2021-05-26 14:11:06', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (59, 'admin', '2021-05-26 14:13:16', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (60, 'admin', '2021-05-26 14:13:19', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (61, 'admin', '2021-05-26 14:13:40', '0:0:0:0:0:0:0:1', '执行的方法：addCustomer', '客户添加操作');
INSERT INTO `tb_logs` VALUES (62, 'admin', '2021-05-26 14:13:40', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (63, 'admin', '2021-05-26 14:13:45', '0:0:0:0:0:0:0:1', '执行的方法：deleteOne', '客户删除操作');
INSERT INTO `tb_logs` VALUES (64, 'admin', '2021-05-26 14:13:45', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (65, 'admin', '2021-05-26 14:13:46', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (66, 'admin', '2021-05-26 14:14:10', '0:0:0:0:0:0:0:1', '执行的方法：addProvider', '供应商添加操作');
INSERT INTO `tb_logs` VALUES (67, 'admin', '2021-05-26 14:14:10', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (68, 'admin', '2021-05-26 14:14:14', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (69, 'admin', '2021-05-26 14:14:15', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (70, 'admin', '2021-05-26 14:14:29', '0:0:0:0:0:0:0:1', '执行的方法：addCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (71, 'admin', '2021-05-26 14:14:29', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (72, 'admin', '2021-05-26 14:14:43', '0:0:0:0:0:0:0:1', '执行的方法：updateProvider', '供应商修改操作');
INSERT INTO `tb_logs` VALUES (73, 'admin', '2021-05-26 14:14:43', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (74, 'admin', '2021-05-26 14:14:50', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (75, 'admin', '2021-05-26 14:15:16', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (76, 'admin', '2021-05-26 14:15:17', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (77, 'admin', '2021-05-26 14:15:22', '0:0:0:0:0:0:0:1', '执行的方法：saveGoodsCategory', '类别添加操作');
INSERT INTO `tb_logs` VALUES (78, 'admin', '2021-05-26 14:15:25', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (79, 'admin', '2021-05-26 14:15:36', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (80, 'admin', '2021-05-26 14:15:36', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (81, 'admin', '2021-05-26 14:15:48', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (82, 'admin', '2021-05-26 14:15:48', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (83, 'admin', '2021-05-26 14:16:33', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (84, 'admin', '2021-05-26 14:16:33', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (85, 'admin', '2021-05-26 14:16:41', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (86, 'admin', '2021-05-26 14:16:41', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (87, 'admin', '2021-05-26 14:16:53', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (88, 'admin', '2021-05-26 14:17:11', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (89, 'admin', '2021-05-26 14:17:41', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (90, 'admin', '2021-05-26 14:17:41', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (91, 'admin', '2021-05-26 14:17:44', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (92, 'admin', '2021-05-26 14:17:54', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (93, 'admin', '2021-05-26 14:18:02', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (94, 'admin', '2021-05-26 14:18:06', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (95, 'admin', '2021-05-26 14:18:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (96, 'admin', '2021-05-26 14:18:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (97, 'admin', '2021-05-26 14:18:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (98, 'admin', '2021-05-26 14:18:07', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (99, 'admin', '2021-05-26 14:18:51', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (100, 'wangwu', '2021-05-26 14:18:55', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (101, 'wangwu', '2021-05-26 14:18:57', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (102, 'wangwu', '2021-05-26 14:18:59', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (103, 'wangwu', '2021-05-26 14:19:00', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (104, 'wangwu', '2021-05-26 14:19:00', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (105, 'wangwu', '2021-05-26 14:19:05', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (106, 'wangwu', '2021-05-26 14:19:06', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (107, 'admin', '2021-05-26 15:24:29', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (108, 'admin', '2021-05-26 15:24:31', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (109, 'admin', '2021-05-26 15:25:05', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (110, 'admin', '2021-05-26 15:25:15', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (111, 'admin', '2021-05-26 15:25:22', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (112, 'admin', '2021-05-26 15:25:35', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (113, 'admin', '2021-05-26 15:25:43', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (114, 'admin', '2021-05-26 15:25:50', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (115, 'admin', '2021-05-26 15:26:01', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (116, 'admin', '2021-05-26 15:26:14', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (117, 'admin', '2021-05-26 15:26:16', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (118, 'admin', '2021-05-26 15:26:25', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (119, 'admin', '2021-05-26 15:26:26', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (120, 'admin', '2021-05-26 15:26:26', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (121, 'admin', '2021-05-26 15:26:26', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (122, 'admin', '2021-05-26 15:26:26', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');

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
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_outport
-- ----------------------------
INSERT INTO `tb_outport` VALUES (1, 2, '2021-05-26 14:16:41', '张三', 100.00, 10, '111', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_outsale
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_provider
-- ----------------------------
INSERT INTO `tb_provider` VALUES (1, '供应商1', '北京市中关村一号', '15411111111', '张三');
INSERT INTO `tb_provider` VALUES (2, '供应商2', '安徽省合肥市一号\n', '15422222222', '张三');
INSERT INTO `tb_provider` VALUES (3, '供应商3', '广东省一号楼', '15611111111', '张三');
INSERT INTO `tb_provider` VALUES (4, '供应商4', '中央大道', '15545124512', '张三');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 585 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role_permission
-- ----------------------------
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
INSERT INTO `tb_role_permission` VALUES (586, 4, 1);
INSERT INTO `tb_role_permission` VALUES (587, 4, 2);
INSERT INTO `tb_role_permission` VALUES (588, 4, 8);
INSERT INTO `tb_role_permission` VALUES (589, 4, 21);
INSERT INTO `tb_role_permission` VALUES (590, 4, 22);
INSERT INTO `tb_role_permission` VALUES (591, 4, 23);
INSERT INTO `tb_role_permission` VALUES (592, 4, 24);
INSERT INTO `tb_role_permission` VALUES (593, 4, 9);
INSERT INTO `tb_role_permission` VALUES (594, 4, 25);
INSERT INTO `tb_role_permission` VALUES (595, 4, 26);
INSERT INTO `tb_role_permission` VALUES (596, 4, 27);
INSERT INTO `tb_role_permission` VALUES (597, 4, 28);
INSERT INTO `tb_role_permission` VALUES (598, 4, 10);
INSERT INTO `tb_role_permission` VALUES (599, 4, 29);
INSERT INTO `tb_role_permission` VALUES (600, 4, 30);
INSERT INTO `tb_role_permission` VALUES (601, 4, 58);
INSERT INTO `tb_role_permission` VALUES (602, 4, 59);
INSERT INTO `tb_role_permission` VALUES (603, 4, 60);
INSERT INTO `tb_role_permission` VALUES (604, 4, 15);
INSERT INTO `tb_role_permission` VALUES (605, 4, 54);
INSERT INTO `tb_role_permission` VALUES (606, 4, 55);
INSERT INTO `tb_role_permission` VALUES (607, 4, 56);
INSERT INTO `tb_role_permission` VALUES (608, 4, 57);
INSERT INTO `tb_role_permission` VALUES (609, 4, 4);
INSERT INTO `tb_role_permission` VALUES (610, 4, 13);
INSERT INTO `tb_role_permission` VALUES (611, 4, 65);
INSERT INTO `tb_role_permission` VALUES (612, 4, 66);
INSERT INTO `tb_role_permission` VALUES (613, 4, 67);
INSERT INTO `tb_role_permission` VALUES (614, 4, 68);
INSERT INTO `tb_role_permission` VALUES (615, 4, 71);
INSERT INTO `tb_role_permission` VALUES (616, 4, 73);
INSERT INTO `tb_role_permission` VALUES (617, 4, 72);

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sale
-- ----------------------------
INSERT INTO `tb_sale` VALUES (1, 2, 2, 2, '2021-05-26 14:17:40', 10, '收到请回答', 'admin', 'QnCej8N', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (7, 1, 1);
INSERT INTO `tb_user_role` VALUES (13, 5, 4);
INSERT INTO `tb_user_role` VALUES (15, 4, 2);

SET FOREIGN_KEY_CHECKS = 1;
