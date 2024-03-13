/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_zf

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 17/06/2023 20:42:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add order', 18, 'add_order');
INSERT INTO `auth_permission` VALUES (70, 'Can change order', 18, 'change_order');
INSERT INTO `auth_permission` VALUES (71, 'Can delete order', 18, 'delete_order');
INSERT INTO `auth_permission` VALUES (72, 'Can view order', 18, 'view_order');
INSERT INTO `auth_permission` VALUES (73, 'Can add comment', 19, 'add_comment');
INSERT INTO `auth_permission` VALUES (74, 'Can change comment', 19, 'change_comment');
INSERT INTO `auth_permission` VALUES (75, 'Can delete comment', 19, 'delete_comment');
INSERT INTO `auth_permission` VALUES (76, 'Can view comment', 19, 'view_comment');
INSERT INTO `auth_permission` VALUES (77, 'Can add banner', 20, 'add_banner');
INSERT INTO `auth_permission` VALUES (78, 'Can change banner', 20, 'change_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can delete banner', 20, 'delete_banner');
INSERT INTO `auth_permission` VALUES (80, 'Can view banner', 20, 'view_banner');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1687005032729.jpeg', 'http://www.baidu.com111', '2023-06-17 20:30:25.896872');

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '四居室', '2023-06-17 16:41:52.865724');
INSERT INTO `b_classification` VALUES (2, '三居室', '2023-06-17 16:42:08.183740');
INSERT INTO `b_classification` VALUES (3, '一居室', '2023-06-17 16:42:17.586509');
INSERT INTO `b_classification` VALUES (4, '二居室', '2023-06-17 16:42:45.652966');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, 'dddf', '2023-06-17 17:21:34.877745', 0, 8, 2);
INSERT INTO `b_comment` VALUES (2, 'hhhhh', '2023-06-17 20:29:53.728224', 0, 2, 2);
INSERT INTO `b_comment` VALUES (3, 'a', '2023-06-17 20:36:31.828502', 0, 8, 3);
INSERT INTO `b_comment` VALUES (4, 'b', '2023-06-17 20:36:33.321394', 0, 8, 3);
INSERT INTO `b_comment` VALUES (5, 'c', '2023-06-17 20:36:34.487991', 0, 8, 3);
INSERT INTO `b_comment` VALUES (6, 'd', '2023-06-17 20:36:35.935023', 0, 8, 3);
INSERT INTO `b_comment` VALUES (7, 'f', '2023-06-17 20:36:37.033651', 0, 8, 3);
INSERT INTO `b_comment` VALUES (8, 'e', '2023-06-17 20:36:38.226124', 0, 8, 3);
INSERT INTO `b_comment` VALUES (9, 'g', '2023-06-17 20:36:39.354871', 0, 8, 3);
INSERT INTO `b_comment` VALUES (10, 'eee', '2023-06-17 20:36:40.743537', 0, 8, 3);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 16:33:16.811472');
INSERT INTO `b_login_log` VALUES (2, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 17:20:40.908734');
INSERT INTO `b_login_log` VALUES (3, 'fff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 20:36:16.065442');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 20:37:37.701067');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'aaa', 'hhhhhh', '2023-06-17 20:30:41.221974');
INSERT INTO `b_notice` VALUES (2, 'ggg', '你好哈哈', '2023-06-17 20:30:50.266843');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 547 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-17 16:29:44.535868', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-17 16:29:44.538257', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-17 16:29:44.543900', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-17 16:29:44.541897', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-17 16:33:16.816129', '/myapp/admin/adminLogin', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-17 16:33:17.744703', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-17 16:33:17.747722', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-17 16:33:17.750771', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-17 16:33:41.698897', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-17 16:33:43.160517', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-17 16:33:43.162026', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-17 16:33:43.182888', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-17 16:41:37.416474', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-17 16:41:37.418474', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-17 16:41:37.420236', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-17 16:41:42.762155', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-17 16:41:52.878415', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-17 16:41:52.898263', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-17 16:42:08.198474', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-17 16:42:08.231634', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-17 16:42:17.590512', '/myapp/admin/classification/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-17 16:42:17.634869', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-17 16:42:45.665642', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-17 16:42:45.686830', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-17 16:42:48.318825', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-17 16:42:55.013881', '/myapp/admin/tag/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-17 16:42:55.031399', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-17 16:43:03.544317', '/myapp/admin/tag/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-17 16:43:03.560034', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-17 16:43:13.120713', '/myapp/admin/tag/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-17 16:43:13.139548', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-17 16:43:26.220278', '/myapp/admin/tag/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-17 16:43:26.239128', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-17 16:45:37.616388', '/myapp/admin/tag/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-17 16:45:37.636495', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-17 16:45:39.665190', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-17 16:45:50.243050', '/myapp/admin/classification/update', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-17 16:45:50.259728', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-17 16:45:58.461899', '/myapp/admin/classification/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-17 16:45:58.479891', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-17 16:46:05.874547', '/myapp/admin/classification/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-17 16:46:05.894468', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-17 16:46:32.749355', '/myapp/admin/classification/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-17 16:46:32.767355', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-17 16:46:35.060340', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-17 16:46:37.344829', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-17 16:46:38.494291', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-17 16:47:36.369249', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-17 16:47:38.522371', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-17 16:47:38.525199', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-17 16:47:38.526206', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-17 16:49:35.835829', '/myapp/admin/thing/create', 'POST', NULL, '281');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-17 16:49:35.890929', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-17 16:49:38.373842', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-17 16:49:38.375843', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-17 16:49:38.385843', '/myapp/index/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-17 16:49:38.408192', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-17 16:49:38.442829', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-17 16:52:23.856973', '/myapp/admin/thing/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-17 16:52:23.913089', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-17 16:52:54.583165', '/myapp/admin/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-17 16:52:54.652509', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-17 16:53:34.649154', '/myapp/admin/thing/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-17 16:53:34.713415', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-17 16:54:22.565479', '/myapp/admin/thing/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-17 16:54:22.637953', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-17 16:54:59.499657', '/myapp/admin/thing/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-17 16:54:59.573088', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-17 16:55:35.242549', '/myapp/admin/thing/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-17 16:55:35.333347', '/myapp/admin/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-17 16:56:06.083484', '/myapp/admin/thing/create', 'POST', NULL, '156');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-17 16:56:06.224783', '/myapp/admin/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-17 16:56:40.260238', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-17 16:56:40.370005', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-17 16:57:03.163482', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-17 16:57:03.281154', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-17 16:57:13.848170', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-17 16:57:13.960223', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-17 16:57:20.938179', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-17 16:57:21.083061', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-17 16:57:27.694686', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-17 16:57:27.791033', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-17 16:57:35.252025', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-17 16:57:35.378769', '/myapp/admin/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-17 16:57:42.139183', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-17 16:57:42.250139', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-17 16:57:48.727794', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-17 16:57:48.836912', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-17 16:57:57.665327', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-17 16:57:57.775155', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-17 16:58:00.759177', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-17 16:58:00.764640', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-17 16:58:00.767810', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-17 16:58:00.807475', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-17 16:58:00.830688', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-17 16:58:00.883218', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-17 16:58:00.914596', '/upload/cover/1686992239156.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-17 16:58:00.922396', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-17 16:58:00.927865', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-17 16:58:00.933249', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-17 16:58:00.934664', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-17 16:58:00.937080', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-17 16:58:00.939082', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-17 16:58:11.760593', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-17 16:59:11.702567', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-17 16:59:11.809397', '/myapp/admin/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-17 16:59:15.589211', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-17 16:59:48.286044', '/myapp/admin/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-17 16:59:48.378206', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-17 16:59:50.789724', '/upload/cover/1686992239156.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-17 17:00:29.875753', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-17 17:00:29.979132', '/myapp/admin/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-17 17:00:34.072521', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-17 17:01:10.040265', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-17 17:01:10.143204', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-17 17:01:12.561335', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-17 17:01:49.211819', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-17 17:01:49.322588', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-17 17:01:51.188583', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-17 17:02:20.746512', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-17 17:02:20.870591', '/myapp/admin/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-17 17:02:26.594322', '/upload/cover/1686992266944.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-17 17:02:53.458277', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-17 17:02:53.557563', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-17 17:02:55.540158', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-17 17:03:24.541815', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-17 17:03:24.655693', '/myapp/admin/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-17 17:03:28.319165', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-17 17:03:28.325510', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-17 17:03:28.334521', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-17 17:03:28.369033', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-17 17:03:28.384763', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-17 17:03:28.411093', '/upload/cover/1686992266944.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-17 17:03:28.416472', '/upload/cover/1686992266944.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-17 17:03:28.417515', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-17 17:03:28.417515', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-17 17:03:28.419238', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-17 17:03:28.420952', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-17 17:04:04.215056', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-17 17:04:05.602229', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-17 17:04:06.899318', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-17 17:04:28.199469', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-17 17:04:28.207063', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-17 17:04:28.236128', '/myapp/admin/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-17 17:04:33.247317', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-17 17:05:58.115968', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-17 17:05:58.125500', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-17 17:05:58.173472', '/myapp/admin/classification/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-17 17:06:32.337165', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-17 17:06:52.925712', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-17 17:06:56.954096', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-17 17:06:58.557285', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-17 17:07:00.307133', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-17 17:07:11.321199', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-17 17:07:11.333688', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-17 17:07:11.345605', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-17 17:07:11.372328', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-17 17:07:11.376323', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-17 17:07:11.409282', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-17 17:07:11.411278', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-17 17:07:11.413342', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-17 17:07:11.415333', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-17 17:07:11.418905', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-17 17:07:11.422970', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-17 17:07:34.750339', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-17 17:07:34.809559', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-17 17:07:34.829048', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-17 17:07:34.829048', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-17 17:07:42.721869', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-17 17:07:42.766352', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-17 17:07:42.792717', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-17 17:07:42.795817', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-17 17:12:17.019596', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-17 17:12:17.024228', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-17 17:12:17.032370', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-17 17:12:17.044281', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-17 17:12:17.045298', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-17 17:12:17.065153', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-17 17:12:17.071050', '/upload/cover/1686992266944.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-17 17:12:17.072187', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-17 17:12:17.075219', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-17 17:12:17.075219', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-17 17:12:17.076224', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-17 17:12:48.235386', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-17 17:12:48.238400', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-17 17:12:48.246487', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-17 17:12:48.258741', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-17 17:13:23.712976', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-17 17:13:23.723667', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-17 17:13:23.735267', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-17 17:13:23.737298', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-17 17:16:39.369933', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-17 17:16:39.372933', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-17 17:16:39.450865', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-17 17:16:39.454016', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-17 17:16:39.467343', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-17 17:16:39.482620', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-17 17:16:39.501422', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-17 17:16:46.132450', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-17 17:16:46.136478', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-17 17:16:46.201821', '/myapp/admin/classification/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-17 17:16:47.751498', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-17 17:16:55.990180', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-17 17:16:56.161880', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-17 17:17:15.736453', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-17 17:17:15.741211', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-17 17:17:15.812945', '/myapp/admin/tag/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-17 17:17:22.534455', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-17 17:17:22.641281', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-17 17:17:28.706926', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-17 17:17:40.454855', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-17 17:17:40.578984', '/myapp/admin/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-17 17:17:42.157538', '/upload/cover/1686992239156.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-17 17:17:45.886827', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-17 17:17:46.000007', '/myapp/admin/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-17 17:17:47.682144', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-17 17:17:51.340032', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-17 17:17:51.498505', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-17 17:17:54.275482', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-17 17:17:57.767200', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-17 17:17:57.870915', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-17 17:18:02.069044', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-17 17:18:05.306583', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-17 17:18:05.442251', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-17 17:18:07.260329', '/upload/cover/1686992266944.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-17 17:18:10.470087', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-17 17:18:10.575941', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-17 17:18:12.648193', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-17 17:18:16.817794', '/myapp/admin/thing/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-17 17:18:16.927020', '/myapp/admin/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-17 17:18:18.620780', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-17 17:18:22.064168', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-17 17:18:22.210055', '/myapp/admin/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-17 17:18:30.070574', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-17 17:18:30.217965', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-17 17:18:35.442914', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-17 17:18:35.447968', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-17 17:18:35.473475', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-17 17:18:35.485484', '/myapp/index/thing/detail', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-17 17:20:15.300606', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-17 17:20:15.310678', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-17 17:20:15.323487', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-17 17:20:15.349467', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-17 17:20:20.737095', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-17 17:20:20.745345', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-17 17:20:20.761132', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-17 17:20:20.789272', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-17 17:20:20.792344', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-17 17:20:20.824193', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-17 17:20:20.831807', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-17 17:20:20.834224', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-17 17:20:20.834224', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-17 17:20:20.836496', '/upload/cover/1686992253293.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-17 17:20:35.853871', '/myapp/index/user/register', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-17 17:20:40.913732', '/myapp/index/user/login', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-17 17:20:41.007760', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-17 17:20:41.021945', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-17 17:20:41.024947', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-17 17:20:41.061312', '/myapp/index/tag/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-17 17:20:41.077063', '/upload/cover/1686992239156.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-17 17:20:41.078065', '/upload/cover/1686992239156.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-17 17:20:42.741519', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-17 17:20:42.758099', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-17 17:20:42.765000', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-17 17:20:42.785579', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-17 17:21:14.363553', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-17 17:21:14.370340', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-17 17:21:14.382111', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-17 17:21:14.410136', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-17 17:21:17.352884', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-17 17:21:17.369206', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-17 17:21:17.382071', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-17 17:21:17.395587', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-17 17:21:17.406812', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-17 17:21:28.353114', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-17 17:21:28.385453', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-17 17:21:29.290547', '/myapp/index/thing/addCollectUser', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-17 17:21:29.321444', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-17 17:21:34.890195', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-17 17:21:34.906865', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-17 17:21:38.517962', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-17 17:21:38.531457', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-17 17:21:38.535479', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-17 17:21:38.553925', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-17 17:22:25.197865', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-17 17:22:25.215888', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-17 17:22:25.218863', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-17 17:22:25.222088', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-17 17:22:27.603955', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-17 17:22:30.154603', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-17 17:22:31.389061', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-17 17:22:32.434500', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-17 17:22:34.406263', '/myapp/index/thing/removeWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-17 17:22:34.428831', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-17 17:22:36.472409', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-17 17:22:36.473764', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-17 17:22:36.475767', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-17 17:22:36.521534', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-17 17:22:36.543532', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-17 17:22:36.544614', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-17 17:22:36.550415', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-17 17:22:36.550415', '/upload/cover/1686992276046.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-17 17:22:43.516802', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-17 17:22:43.535008', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-17 17:22:43.559574', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-17 17:22:43.568345', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-17 17:22:43.596710', '/upload/cover/1686992245631.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-17 20:25:17.483595', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-17 20:25:17.488452', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-17 20:25:17.492986', '/myapp/index/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-17 20:25:17.524848', '/myapp/index/tag/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-17 20:25:17.609799', '/upload/cover/1686992221018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-17 20:25:17.609799', '/upload/cover/1686992231596.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-17 20:25:17.610458', '/upload/cover/1686992239156.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-17 20:25:17.633478', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-17 20:25:17.634281', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-17 20:25:17.635033', '/upload/cover/1686992260320.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-17 20:25:17.672160', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-17 20:25:17.672160', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-17 20:25:17.685155', '/upload/cover/1686991716501.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-17 20:29:13.766107', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-17 20:29:13.767121', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-17 20:29:13.773115', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-17 20:29:13.786113', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-17 20:29:14.930398', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-17 20:29:15.527339', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-17 20:29:15.989913', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-17 20:29:16.405750', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-17 20:29:16.994701', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-17 20:29:17.906216', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-17 20:29:18.298043', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-17 20:29:18.702170', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-17 20:29:19.337067', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-17 20:29:20.099588', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-17 20:29:26.066557', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-17 20:29:26.067551', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-17 20:29:26.068501', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-17 20:29:26.082270', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-17 20:29:34.184352', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-17 20:29:34.186776', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-17 20:29:34.194513', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-17 20:29:34.199740', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-17 20:29:36.476712', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-17 20:29:37.860716', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-17 20:29:37.861902', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-17 20:29:37.870796', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-17 20:29:37.882797', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-17 20:29:39.290199', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-17 20:29:39.922452', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-17 20:29:41.711542', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-17 20:29:41.722542', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-17 20:29:41.725544', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-17 20:29:41.739547', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-17 20:29:46.157557', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-17 20:29:46.195511', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-17 20:29:46.666598', '/myapp/index/thing/addCollectUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-17 20:29:46.710966', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-17 20:29:53.741943', '/myapp/index/comment/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-17 20:29:53.777592', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-17 20:30:00.096508', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-17 20:30:00.100511', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-17 20:30:00.108022', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-17 20:30:00.114023', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-17 20:30:09.837414', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-17 20:30:09.839415', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-17 20:30:09.894992', '/myapp/admin/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-17 20:30:13.266772', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-17 20:30:14.402195', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-17 20:30:14.431148', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-17 20:30:14.472233', '/myapp/admin/tag/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-17 20:30:15.179109', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-17 20:30:16.948954', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-17 20:30:18.202261', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-17 20:30:20.514792', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-17 20:30:21.260419', '/myapp/admin/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-17 20:30:22.157011', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-17 20:30:25.912179', '/myapp/admin/ad/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-17 20:30:25.931675', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-17 20:30:33.691682', '/myapp/admin/ad/update', 'POST', NULL, '137');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-17 20:30:33.727218', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-17 20:30:33.757679', '/upload/ad/1687005032729.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-17 20:30:35.041777', '/myapp/admin/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-17 20:30:41.236423', '/myapp/admin/notice/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-17 20:30:41.254934', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-17 20:30:50.270784', '/myapp/admin/notice/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-17 20:30:50.313886', '/myapp/admin/notice/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-17 20:30:53.381546', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-17 20:32:23.985611', '/myapp/admin/overview/count', 'GET', NULL, '374');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-17 20:32:35.694272', '/myapp/admin/overview/count', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-17 20:32:58.355524', '/myapp/admin/overview/count', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-17 20:33:46.096757', '/myapp/admin/overview/count', 'GET', NULL, '235');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-17 20:33:46.342842', '/myapp/admin/overview/count', 'GET', NULL, '481');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-17 20:34:01.588032', '/myapp/admin/overview/count', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-17 20:34:29.943848', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-17 20:35:13.354136', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-17 20:35:14.282489', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-17 20:35:14.291597', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-17 20:35:14.304241', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-17 20:35:14.316995', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-17 20:35:15.136933', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-17 20:35:15.141469', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-17 20:35:15.157113', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-17 20:35:15.159112', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-17 20:35:15.305415', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-17 20:35:15.316994', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-17 20:35:15.319004', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-17 20:35:15.325996', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-17 20:35:15.518869', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-17 20:35:15.523132', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-17 20:35:15.544232', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-17 20:35:15.547268', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-17 20:35:15.691236', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-17 20:35:15.698228', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-17 20:35:15.712145', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-17 20:35:15.722389', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-17 20:35:15.849193', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-17 20:35:15.854507', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-17 20:35:15.865701', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-17 20:35:15.872436', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-17 20:35:16.022569', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-17 20:35:16.031563', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-17 20:35:16.032565', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-17 20:35:16.043707', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-17 20:35:18.260644', '/myapp/admin/overview/count', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-17 20:35:22.310507', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-17 20:35:22.316407', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-17 20:35:22.333079', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-17 20:35:22.335849', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-17 20:35:23.616095', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-17 20:35:23.619084', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-17 20:35:23.632085', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-17 20:35:23.638086', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-17 20:35:24.919248', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-17 20:35:24.922249', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-17 20:35:24.940238', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-17 20:35:24.954380', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-17 20:35:25.072468', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-17 20:35:25.073460', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-17 20:35:25.084988', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-17 20:35:25.095362', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-17 20:35:25.243296', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-17 20:35:25.249562', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-17 20:35:25.281564', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-17 20:35:25.292564', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-17 20:35:27.944832', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-17 20:35:27.950320', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-17 20:35:27.961690', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-17 20:35:27.967981', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-17 20:35:28.895166', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-17 20:35:28.899118', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-17 20:35:28.910126', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-17 20:35:28.919700', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-17 20:35:29.105954', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-17 20:35:29.113616', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-17 20:35:29.125551', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-17 20:35:29.136551', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-17 20:35:29.304355', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-17 20:35:29.312465', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-17 20:35:29.324323', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-17 20:35:29.333992', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-17 20:35:31.473566', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-17 20:35:51.449211', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-17 20:35:59.280913', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1049');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-17 20:36:01.247723', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-17 20:36:03.229813', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-17 20:36:06.632323', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-17 20:36:06.635334', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-17 20:36:06.645832', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-17 20:36:06.660834', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-17 20:36:13.449995', '/myapp/index/user/register', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-17 20:36:16.069402', '/myapp/index/user/login', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-17 20:36:16.135678', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-17 20:36:16.137694', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-17 20:36:16.139697', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-17 20:36:16.173945', '/myapp/index/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-17 20:36:17.288842', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-17 20:36:17.291738', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-17 20:36:17.308525', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-17 20:36:17.312613', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-17 20:36:19.801647', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-17 20:36:19.839251', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-17 20:36:20.171331', '/myapp/index/thing/addCollectUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-17 20:36:20.193766', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-17 20:36:23.590323', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-17 20:36:25.288497', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-17 20:36:27.012213', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-17 20:36:31.842108', '/myapp/index/comment/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-17 20:36:31.877428', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-17 20:36:33.334070', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-17 20:36:33.372482', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-17 20:36:34.501661', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-17 20:36:34.535691', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-17 20:36:35.948839', '/myapp/index/comment/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-17 20:36:35.990764', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-17 20:36:37.046685', '/myapp/index/comment/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-17 20:36:37.094006', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-06-17 20:36:38.239792', '/myapp/index/comment/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-06-17 20:36:38.275718', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-06-17 20:36:39.360266', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-06-17 20:36:39.395516', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-06-17 20:36:40.748068', '/myapp/index/comment/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-06-17 20:36:40.771823', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-06-17 20:36:46.048344', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-06-17 20:36:47.179487', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-06-17 20:36:52.719545', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-06-17 20:36:53.506878', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-06-17 20:36:54.597514', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-06-17 20:36:54.598528', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-06-17 20:36:54.637051', '/myapp/admin/tag/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-06-17 20:37:03.667884', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-06-17 20:37:03.771448', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-06-17 20:37:06.038233', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-06-17 20:37:06.693472', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-06-17 20:37:06.711674', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-06-17 20:37:06.753378', '/myapp/admin/tag/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-06-17 20:37:11.649748', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-06-17 20:37:27.873864', '/myapp/admin/user/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-06-17 20:37:27.901863', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-06-17 20:37:37.704072', '/myapp/admin/adminLogin', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-06-17 20:37:37.840694', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-06-17 20:37:37.841696', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-06-17 20:37:37.877395', '/myapp/admin/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-06-17 20:37:43.187556', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-06-17 20:37:58.485097', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-06-17 20:38:00.409291', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-06-17 20:38:00.413488', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-06-17 20:38:00.452904', '/myapp/admin/tag/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-06-17 20:38:35.820980', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-06-17 20:38:35.822981', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-06-17 20:38:35.824598', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-06-17 20:38:35.849671', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-06-17 20:38:48.855007', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-06-17 20:38:48.857267', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-06-17 20:38:48.862762', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-06-17 20:38:48.877363', '/myapp/index/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-06-17 20:38:55.039585', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-06-17 20:38:55.797083', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-06-17 20:38:56.748895', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-06-17 20:39:05.249032', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-06-17 20:39:05.270033', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-06-17 20:39:05.278465', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-06-17 20:39:05.287689', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-06-17 20:39:07.140835', '/myapp/index/thing/addWishUser', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-06-17 20:39:07.187361', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-06-17 20:39:07.514351', '/myapp/index/thing/addCollectUser', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-06-17 20:39:07.543199', '/myapp/index/thing/detail', 'GET', NULL, '10');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '空调', '2023-06-17 16:42:54.999284');
INSERT INTO `b_tag` VALUES (2, '冰箱', '2023-06-17 16:43:03.530870');
INSERT INTO `b_tag` VALUES (3, '洗衣机', '2023-06-17 16:43:13.108295');
INSERT INTO `b_tag` VALUES (4, '宽带', '2023-06-17 16:43:26.215280');
INSERT INTO `b_tag` VALUES (5, '地铁', '2023-06-17 16:45:37.602655');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chaoxiang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `louceng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mianji` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xiaoqu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yajin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zlfs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '佳兴园次卧飘窗带衣帽间', 'cover/1686991716501.jpeg', '小区配套成熟，小区东北角有早市每天享受新鲜的蔬菜水果，物美价廉。购物有易世达购物广场、物美大卖场、华贸天地街、尚品、K酷、龙德广场等多个大型购物场所。中行、农行、工行、建行、交行等通银行齐全。医院有长庚和航空总医院', '1000', '北京市朝阳区颐和园路99号', '南北', '0', 0, 0, '2023-06-17 16:49:35.810699', 0, 0, 0, 0, 2, '18层', '120', '颐和园小区', '', '年租', '13222222222');
INSERT INTO `b_thing` VALUES (2, '上地创新大厦 信息路', 'cover/1686992276046.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '900', '北京市xxx路', '南北', '0', 0, 0, '2023-06-17 16:52:23.823002', 0, 0, 1, 1, 4, '20层', '120', '小路小区', '', '月租', '13222222222');
INSERT INTO `b_thing` VALUES (3, '艺术区附近金盏嘉园两居主卧', 'cover/1686992266944.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '800', '北京市99小区', '南北', '0', 0, 0, '2023-06-17 16:52:54.556447', 4, 0, 0, 0, 3, '20', '100', '哈哈小区', '', '年租', '13222222222');
INSERT INTO `b_thing` VALUES (4, '大柳树 世纪东方嘉园 次卧室', 'cover/1686992260320.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '600', '北京xxx路', '南北', '0', 0, 0, '2023-06-17 16:53:34.628888', 5, 0, 0, 0, 2, '20层', '200', '小萝莉小区', '', '年租', '13222222222');
INSERT INTO `b_thing` VALUES (5, '良乡建华北里小区2室1厅', 'cover/1686992253293.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '300', '北京市xxx路', '南北', '0', 0, 0, '2023-06-17 16:54:22.532399', 0, 0, 0, 0, 1, '16层', '100', '788小区', '', '月租', '13222222222');
INSERT INTO `b_thing` VALUES (6, '华贸城朝南主卧带飘窗', 'cover/1686992245631.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '700', '北京市哈哈路', '南北', '0', 0, 0, '2023-06-17 16:54:59.465750', 0, 0, 0, 0, 2, '19层', '120', '小路小区', '', '年租', '13222222222');
INSERT INTO `b_thing` VALUES (7, '佳兴园次卧飘窗带衣帽间', 'cover/1686992239156.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '800', '北京市xxx路', '南北', '0', 0, 0, '2023-06-17 16:55:35.215036', 0, 0, 0, 0, 3, '20层', '120', '新希望小区', '200', '年租', '13222222222');
INSERT INTO `b_thing` VALUES (8, '稻田地铁站 三家合租 朝南次卧室', 'cover/1686992231596.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电！！！', '800', '北京市88路', '东西', '0', 0, 0, '2023-06-17 16:56:05.950747', 13, 0, 1, 2, 4, '20层', '80', '豪华小区', '200', '月租', '13222222222');
INSERT INTO `b_thing` VALUES (9, '八角游乐园 八角南里次卧', 'cover/1686992221018.jpeg', '房源亮点\r\n推荐6大理由\r\n第一：地理位置优越。\r\n第二：公交地铁离得近，出行方便。\r\n第三：周围商店，购物方便，节省您的宝贵时间。\r\n第四：小区绿化。环境优美。宁静和谐，好环境总会给人带来好心情。\r\n第五：房干净整洁，温馨舒适，窗明几净，就等着您的。\r\n第六：家电齐全豪华装修，宽敞明亮，布局大方，采光好。\r\n就凭您对我的一份信任，我用百分的热情让您满意，欢迎致电', '800', '北京市海淀区999', '南北', '0', 0, 0, '2023-06-17 16:56:40.227523', 0, 0, 0, 0, 3, '22层', '90', '梦想小区', '100', '年租', '13599998888');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 2);
INSERT INTO `b_thing_collect` VALUES (1, 8, 2);
INSERT INTO `b_thing_collect` VALUES (3, 8, 3);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (1, 1, 2);
INSERT INTO `b_thing_tag` VALUES (2, 1, 3);
INSERT INTO `b_thing_tag` VALUES (3, 4, 1);
INSERT INTO `b_thing_tag` VALUES (4, 4, 2);
INSERT INTO `b_thing_tag` VALUES (5, 4, 3);
INSERT INTO `b_thing_tag` VALUES (6, 4, 4);
INSERT INTO `b_thing_tag` VALUES (7, 4, 5);
INSERT INTO `b_thing_tag` VALUES (8, 5, 1);
INSERT INTO `b_thing_tag` VALUES (9, 5, 2);
INSERT INTO `b_thing_tag` VALUES (10, 5, 3);
INSERT INTO `b_thing_tag` VALUES (11, 5, 5);
INSERT INTO `b_thing_tag` VALUES (12, 6, 2);
INSERT INTO `b_thing_tag` VALUES (13, 6, 3);
INSERT INTO `b_thing_tag` VALUES (14, 7, 2);
INSERT INTO `b_thing_tag` VALUES (15, 7, 3);
INSERT INTO `b_thing_tag` VALUES (16, 7, 5);
INSERT INTO `b_thing_tag` VALUES (17, 8, 2);
INSERT INTO `b_thing_tag` VALUES (18, 8, 4);
INSERT INTO `b_thing_tag` VALUES (19, 8, 5);
INSERT INTO `b_thing_tag` VALUES (20, 9, 3);
INSERT INTO `b_thing_tag` VALUES (21, 9, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 2, 2);
INSERT INTO `b_thing_wish` VALUES (3, 8, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-17 17:20:35.850893', 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579');
INSERT INTO `b_user` VALUES (3, 'fff', '343d9040a671c45832ee5381860e2996', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-17 20:36:13.446327', 0, NULL, 0, NULL, '343d9040a671c45832ee5381860e2996');
INSERT INTO `b_user` VALUES (4, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-17 20:37:27.868656', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-17 16:25:02.358047');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-17 16:25:02.666058');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-17 16:25:02.751491');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-17 16:25:02.766700');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-17 16:25:02.778706');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-17 16:25:02.861307');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-17 16:25:02.910746');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-17 16:25:02.957900');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-17 16:25:02.965116');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-17 16:25:03.003771');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-17 16:25:03.006936');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-17 16:25:03.014215');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-17 16:25:03.063959');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-17 16:25:03.116012');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-17 16:25:03.163158');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-17 16:25:03.170301');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-17 16:25:03.218460');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-17 16:25:03.937867');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230617_1624', '2023-06-17 16:25:04.173615');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2023-06-17 16:25:04.213461');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0003_thing_mobile', '2023-06-17 17:14:30.934122');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
