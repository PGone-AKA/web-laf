/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.100.1-mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : laf

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/12/2021 22:11:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (19, 'laf_category', '物品种类', '', NULL, 'LafCategory', 'tree', 'com.ruoyi.wx', 'wx', 'category', '物品种类', 'yang', '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"cate_name\",\"treeParentCode\":\"paraent_id\",\"parentMenuName\":\"物品分类\",\"treeCode\":\"cate_id\"}', 'admin', '2021-10-08 16:14:51', '', '2021-10-08 16:31:08', '');
INSERT INTO `gen_table` VALUES (20, 'laf_student', '学生表', '', NULL, 'LafStudent', 'crud', 'com.ruoyi.wx', 'wx', 'student', '学生', 'yang', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户管理\",\"treeCode\":\"\"}', 'admin', '2021-10-08 17:29:45', '', '2021-12-06 16:38:26', '');
INSERT INTO `gen_table` VALUES (21, 'laf_release', '帖子表', '', NULL, 'LafRelease', 'crud', 'com.ruoyi.wx', 'wx', 'release', '帖子', 'yang', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"帖子管理\",\"treeCode\":\"\"}', 'admin', '2021-10-08 17:53:33', '', '2021-12-08 11:07:17', '');
INSERT INTO `gen_table` VALUES (22, 'laf_announce', 'WX公告', '', NULL, 'LafAnnounce', 'crud', 'com.ruoyi.wx', 'wx', 'announce', '小程序公告', 'yang', '0', '/', '{\"parentMenuId\":\"4\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"失物招领\",\"treeCode\":\"\"}', 'admin', '2021-12-20 11:21:04', '', '2021-12-20 15:32:34', '');
INSERT INTO `gen_table` VALUES (23, 'laf_comment', '用户评论表', '', NULL, 'LafComment', 'tree', 'com.ruoyi.wx', 'wx', 'comment', '帖子留言', 'yang', '0', '/', '{\"parentMenuId\":\"4\",\"treeName\":\"com_content\",\"treeParentCode\":\"paraent_id\",\"parentMenuName\":\"失物招领\",\"treeCode\":\"com_id\"}', 'admin', '2021-12-22 15:54:03', '', '2021-12-22 16:17:23', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 283 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (230, '19', 'cate_id', '物品ID', 'int', 'Long', 'cateId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-10-08 16:14:51', NULL, '2021-10-08 16:31:08');
INSERT INTO `gen_table_column` VALUES (231, '19', 'paraent_id', '父ID', 'int', 'Long', 'paraentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-10-08 16:14:51', NULL, '2021-10-08 16:31:08');
INSERT INTO `gen_table_column` VALUES (232, '19', 'cate_name', '名称', 'varchar(255)', 'String', 'cateName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-10-08 16:14:51', NULL, '2021-10-08 16:31:08');
INSERT INTO `gen_table_column` VALUES (233, '19', 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2021-10-08 16:14:51', NULL, '2021-10-08 16:31:08');
INSERT INTO `gen_table_column` VALUES (234, '19', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2021-10-08 16:14:51', NULL, '2021-10-08 16:31:08');
INSERT INTO `gen_table_column` VALUES (235, '19', 'cate_stutus', '状态', 'enum(\'使用中\',\'已删除\')', 'String', 'cateStutus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_user_status', 6, 'admin', '2021-10-08 16:14:51', NULL, '2021-10-08 16:31:08');
INSERT INTO `gen_table_column` VALUES (236, '20', 'stu_id', '学生ID', 'int', 'Long', 'stuId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (237, '20', 'stu_nick', '昵称', 'varchar(255)', 'String', 'stuNick', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (238, '20', 'stu_name', '姓名', 'varchar(255)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (239, '20', 'stu_sex', '性别', 'char(1)', 'String', 'stuSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_user_sex', 4, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (240, '20', 'stu_xh', '学号', 'varchar(255)', 'String', 'stuXh', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (241, '20', 'stu_password', '密码', 'varchar(255)', 'String', 'stuPassword', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (242, '20', 'stu_department', '学院', 'varchar(255)', 'String', 'stuDepartment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (243, '20', 'stu_major', '专业', 'varchar(255)', 'String', 'stuMajor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (244, '20', 'stu_className', '班级', 'varchar(255)', 'String', 'stuClassname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (245, '20', 'stu_qq', 'QQ', 'varchar(255)', 'String', 'stuQq', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (246, '20', 'stu_email', 'email', 'varchar(255)', 'String', 'stuEmail', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (247, '20', 'stu_image', '头像', 'varchar(255)', 'String', 'stuImage', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 12, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (248, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (249, '20', 'stu_status', '状态', 'char(1)', 'String', 'stuStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_user_status', 14, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (250, '20', 'openid', 'openId', 'varchar(255)', 'String', 'openid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-10-08 17:29:45', NULL, '2021-12-06 16:38:26');
INSERT INTO `gen_table_column` VALUES (251, '21', 'rel_id', '帖子ID', 'int', 'Long', 'relId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (252, '21', 'rel_title', '标题', 'varchar(255)', 'String', 'relTitle', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (253, '21', 'rel_desc', '描述', 'varchar(255)', 'String', 'relDesc', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (254, '21', 'rel_contact', '联系方式', 'varchar(255)', 'String', 'relContact', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (255, '21', 'rel_cate_id', '物品种类', 'int', 'Long', 'relCateId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_category', 5, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (256, '21', 'rel_time', '线索时间', 'datetime', 'Date', 'relTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (257, '21', 'rel_campus', '校区', 'varchar(255)', 'String', 'relCampus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_campus', 7, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (258, '21', 'create_place', '地点', 'varchar(255)', 'String', 'createPlace', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 8, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (259, '21', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (260, '21', 'create_id', '发布者ID', 'int', 'Long', 'createId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (261, '21', 'rel_image', '图片', 'varchar(255)', 'String', 'relImage', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (262, '21', 'rel_satus', '类别', 'char(1)', 'String', 'relSatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_release_cate', 12, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (263, '21', 'rel_star', '赞', 'int', 'Long', 'relStar', '0', '0', NULL, NULL, '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (264, '21', 'rel_flag', '状态', 'char(1)', 'String', 'relFlag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'laf_release_status', 14, 'admin', '2021-10-08 17:53:33', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (266, '21', 'rel_flow', '浏览量', 'int', 'Long', 'relFlow', '0', '0', NULL, NULL, '1', '1', NULL, 'EQ', 'input', '', 15, '', '2021-12-08 10:38:22', NULL, '2021-12-08 11:07:17');
INSERT INTO `gen_table_column` VALUES (268, '22', 'ann_title', '标题类型', 'char(1)', 'String', 'annTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_notice_type', 2, 'admin', '2021-12-20 11:21:04', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (269, '22', 'ann_content', '内容', 'varchar(255)', 'String', 'annContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2021-12-20 11:21:04', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (270, '22', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-20 11:21:04', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (271, '22', 'creat_time', '发布时间', 'datetime', 'Date', 'creatTime', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'datetime', '', 5, 'admin', '2021-12-20 11:21:04', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (272, '22', 'image', '图片', 'varchar(255)', 'String', 'image', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2021-12-20 11:21:04', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (273, '22', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_notice_status', 7, 'admin', '2021-12-20 11:21:04', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (274, '22', 'ann_id', '公告id', 'int', 'Long', 'annId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, '', '2021-12-20 11:41:24', NULL, '2021-12-20 15:32:34');
INSERT INTO `gen_table_column` VALUES (275, '23', 'com_id', 'ID', 'int', 'Long', 'comId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (276, '23', 'paraent_id', '父ID', 'int', 'Long', 'paraentId', '0', '0', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (277, '23', 'com_rel_id', '文章ID', 'int', 'Long', 'comRelId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (278, '23', 'com_stu_id', '用户ID', 'int', 'Long', 'comStuId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (279, '23', 'com_content', '内容', 'varchar(255)', 'String', 'comContent', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 5, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (280, '23', 'create_time', '评论时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (281, '23', 'com_star', '赞', 'int', 'Long', 'comStar', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');
INSERT INTO `gen_table_column` VALUES (282, '23', 'com_status', '状态', 'char(1)', 'String', 'comStatus', '0', '0', NULL, NULL, '1', '1', '1', 'EQ', 'select', 'laf_user_status', 8, 'admin', '2021-12-22 15:54:03', NULL, '2021-12-22 16:17:23');

-- ----------------------------
-- Table structure for laf_announce
-- ----------------------------
DROP TABLE IF EXISTS `laf_announce`;
CREATE TABLE `laf_announce`  (
  `ann_id` int NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `ann_title` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '(1通知，2公告）',
  `ann_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公告内容',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `creat_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容图片',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '2' COMMENT '状态（0使用，2停用）',
  PRIMARY KEY (`ann_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_announce
-- ----------------------------
INSERT INTO `laf_announce` VALUES (1, '1', '我们失物招领系统即将上线！！！', 'admin', '2021-10-08 00:00:00', '', '1');
INSERT INTO `laf_announce` VALUES (3, '2', 'hello world !', 'admin', '2021-11-28 00:00:00', '', '1');
INSERT INTO `laf_announce` VALUES (4, '1', '2022年祝大家新年快乐！！！！', 'admin', '2021-12-21 00:00:00', '', '0');

-- ----------------------------
-- Table structure for laf_category
-- ----------------------------
DROP TABLE IF EXISTS `laf_category`;
CREATE TABLE `laf_category`  (
  `cate_id` int NOT NULL AUTO_INCREMENT COMMENT '物品类别id',
  `paraent_id` int NULL DEFAULT NULL COMMENT '所属id',
  `cate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '种类名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `cate_stutus` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '状态(1使用中，2已删除）',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_category
-- ----------------------------
INSERT INTO `laf_category` VALUES (1, 0, '物品', '2021-09-27 18:24:49', 'admin', '1');
INSERT INTO `laf_category` VALUES (2, 1, '身份证', '2021-10-08 21:56:36', NULL, '1');
INSERT INTO `laf_category` VALUES (3, 1, '学生证', '2021-10-08 21:56:42', NULL, '1');
INSERT INTO `laf_category` VALUES (4, 1, '衣物', '2021-12-06 16:44:26', NULL, '1');

-- ----------------------------
-- Table structure for laf_comment
-- ----------------------------
DROP TABLE IF EXISTS `laf_comment`;
CREATE TABLE `laf_comment`  (
  `com_id` int NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `paraent_id` int NULL DEFAULT NULL COMMENT '父评论id',
  `com_rel_id` int NULL DEFAULT NULL COMMENT '帖子id',
  `com_stu_id` int NULL DEFAULT NULL COMMENT '评论者id',
  `com_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `com_star` int NULL DEFAULT NULL COMMENT '评论赞',
  `com_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '评论状态（1保留，2删除）',
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_comment
-- ----------------------------
INSERT INTO `laf_comment` VALUES (2, 0, 122, 6, 'hello，world', '2021-12-22 15:57:18', 1, '1');
INSERT INTO `laf_comment` VALUES (5, 0, 122, 6, '哈哈', '2021-12-01 19:20:35', 1, '1');
INSERT INTO `laf_comment` VALUES (11, 0, 121, 4, '12321321', '2021-12-22 22:09:12', NULL, '1');
INSERT INTO `laf_comment` VALUES (12, 0, 120, 4, 'nihao', '2021-12-22 22:09:40', NULL, '1');
INSERT INTO `laf_comment` VALUES (13, 0, 120, 4, 'haha', '2021-12-22 22:13:03', NULL, '1');
INSERT INTO `laf_comment` VALUES (20, 0, 118, 4, 'asdad', '2021-12-22 22:31:39', NULL, '1');
INSERT INTO `laf_comment` VALUES (21, 0, 118, 4, 'asdadada', '2021-12-22 22:31:46', NULL, '1');
INSERT INTO `laf_comment` VALUES (22, 0, 118, 4, 'asdadad', '2021-12-22 22:31:49', NULL, '1');
INSERT INTO `laf_comment` VALUES (23, 0, 116, 4, 'asdasd', '2021-12-22 22:31:54', NULL, '1');
INSERT INTO `laf_comment` VALUES (24, 0, 116, 4, 'asdasda', '2021-12-22 22:31:56', NULL, '1');
INSERT INTO `laf_comment` VALUES (25, 0, 116, 4, 'asdasd', '2021-12-22 22:31:58', NULL, '1');
INSERT INTO `laf_comment` VALUES (26, 0, 116, 4, 'asdasdad', '2021-12-22 22:32:01', NULL, '1');
INSERT INTO `laf_comment` VALUES (27, 0, 116, 4, 'asdada', '2021-12-22 22:32:04', NULL, '1');
INSERT INTO `laf_comment` VALUES (30, 0, 118, 4, 'sadads', '2021-12-22 22:33:12', NULL, '1');
INSERT INTO `laf_comment` VALUES (31, 0, 119, 4, '1111', '2021-12-23 09:19:28', NULL, '1');
INSERT INTO `laf_comment` VALUES (32, 0, 119, 4, '111', '2021-12-23 09:19:31', NULL, '1');
INSERT INTO `laf_comment` VALUES (33, 0, 119, 4, '233232', '2021-12-23 09:19:33', NULL, '1');
INSERT INTO `laf_comment` VALUES (34, 0, 119, 4, '12312321214', '2021-12-23 09:19:36', NULL, '1');
INSERT INTO `laf_comment` VALUES (35, 0, 121, 4, 'haha', '2021-12-23 09:20:27', NULL, '1');
INSERT INTO `laf_comment` VALUES (39, 0, 121, 4, '213123', '2021-12-23 09:56:46', NULL, '1');
INSERT INTO `laf_comment` VALUES (41, 0, 117, 4, '1231', '2021-12-23 09:58:50', NULL, '1');
INSERT INTO `laf_comment` VALUES (42, 0, 118, 4, '111', '2021-12-23 10:00:36', NULL, '1');
INSERT INTO `laf_comment` VALUES (43, 0, 118, 4, '1231231', '2021-12-23 10:00:43', NULL, '1');
INSERT INTO `laf_comment` VALUES (44, 0, 121, 4, '111', '2021-12-23 10:00:54', NULL, '1');
INSERT INTO `laf_comment` VALUES (58, 5, 122, 4, '哈哈啥啊', '2021-12-23 12:55:48', NULL, '1');
INSERT INTO `laf_comment` VALUES (60, 0, 122, 4, '11', '2021-12-23 12:57:02', NULL, '1');
INSERT INTO `laf_comment` VALUES (61, 5, 122, 4, '叫啥呢', '2021-12-23 13:01:17', NULL, '1');
INSERT INTO `laf_comment` VALUES (62, 2, 122, 4, 'nihao', '2021-12-23 13:02:01', NULL, '1');
INSERT INTO `laf_comment` VALUES (64, 0, 122, 4, 'hello', '2021-12-23 13:04:14', NULL, '1');
INSERT INTO `laf_comment` VALUES (66, 0, 120, 4, '许世平傻逼', '2021-12-23 19:46:26', NULL, '1');
INSERT INTO `laf_comment` VALUES (67, 66, 120, 6, '大傻逼', '2021-12-23 19:47:01', NULL, '1');
INSERT INTO `laf_comment` VALUES (68, 66, 120, 6, '1', '2021-12-23 19:47:15', NULL, '1');
INSERT INTO `laf_comment` VALUES (69, 0, 120, 6, '1', '2021-12-23 19:47:21', NULL, '1');
INSERT INTO `laf_comment` VALUES (70, 0, 120, 4, '你好', '2021-12-23 19:47:37', NULL, '1');
INSERT INTO `laf_comment` VALUES (71, 0, 125, 4, '我', '2021-12-23 19:56:20', NULL, '1');
INSERT INTO `laf_comment` VALUES (72, 0, 125, 4, '2', '2021-12-23 19:56:25', NULL, '1');
INSERT INTO `laf_comment` VALUES (73, 0, 125, 4, '3', '2021-12-23 19:58:02', NULL, '1');
INSERT INTO `laf_comment` VALUES (74, 0, 125, 4, '5', '2021-12-23 20:00:06', NULL, '1');
INSERT INTO `laf_comment` VALUES (75, 0, 125, 4, '8', '2021-12-23 20:00:39', NULL, '1');
INSERT INTO `laf_comment` VALUES (76, 0, 124, 4, 'q', '2021-12-23 20:02:18', NULL, '1');
INSERT INTO `laf_comment` VALUES (77, 0, 124, 4, '你好', '2021-12-23 20:04:03', NULL, '1');
INSERT INTO `laf_comment` VALUES (78, 0, 124, 4, '33', '2021-12-23 20:04:27', NULL, '1');
INSERT INTO `laf_comment` VALUES (79, 0, 124, 4, '44', '2021-12-23 20:05:04', NULL, '1');
INSERT INTO `laf_comment` VALUES (80, 0, 129, 4, '1', '2021-12-23 20:17:36', NULL, '1');
INSERT INTO `laf_comment` VALUES (81, 0, 129, 4, '2', '2021-12-23 20:17:59', NULL, '1');
INSERT INTO `laf_comment` VALUES (82, 0, 129, 4, '11', '2021-12-23 20:22:00', NULL, '1');
INSERT INTO `laf_comment` VALUES (84, 0, 129, 4, '33', '2021-12-23 20:22:03', NULL, '1');
INSERT INTO `laf_comment` VALUES (85, 0, 129, 4, '11', '2021-12-23 20:22:05', NULL, '1');
INSERT INTO `laf_comment` VALUES (86, 0, 129, 4, '1', '2021-12-23 20:24:09', NULL, '1');
INSERT INTO `laf_comment` VALUES (87, 0, 129, 4, '26565', '2021-12-23 20:26:16', NULL, '1');
INSERT INTO `laf_comment` VALUES (88, 0, 129, 4, '789', '2021-12-23 20:59:01', NULL, '1');
INSERT INTO `laf_comment` VALUES (90, 0, 131, 4, '2', '2021-12-23 21:04:45', NULL, '1');
INSERT INTO `laf_comment` VALUES (91, 0, 133, 4, '2@', '2021-12-23 21:30:30', NULL, '1');
INSERT INTO `laf_comment` VALUES (92, 0, 133, 4, '22', '2021-12-23 21:32:24', NULL, '1');
INSERT INTO `laf_comment` VALUES (93, 0, 134, 6, '1', '2021-12-23 21:57:12', NULL, '1');
INSERT INTO `laf_comment` VALUES (94, 93, 134, 4, '干啥', '2021-12-23 21:57:20', NULL, '1');
INSERT INTO `laf_comment` VALUES (95, 94, 134, 6, '哈哈', '2021-12-23 21:57:28', NULL, '1');

-- ----------------------------
-- Table structure for laf_push
-- ----------------------------
DROP TABLE IF EXISTS `laf_push`;
CREATE TABLE `laf_push`  (
  `push_id` int NOT NULL COMMENT '推送id',
  `push_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送标题',
  `push_clue` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送线索',
  `push_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送图片',
  `cate_id` int NULL DEFAULT NULL COMMENT '所属种类',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `push_count` int NULL DEFAULT NULL COMMENT '推送次数',
  `push_similar` double NULL DEFAULT NULL COMMENT '相似度',
  `push_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '推送状态（1寻找中，2成功，3已取消）',
  PRIMARY KEY (`push_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_push
-- ----------------------------
INSERT INTO `laf_push` VALUES (1, '丢失校园卡', '姓名许世平', NULL, 1, '2021-09-27 18:26:05', 0, NULL, '1');

-- ----------------------------
-- Table structure for laf_release
-- ----------------------------
DROP TABLE IF EXISTS `laf_release`;
CREATE TABLE `laf_release`  (
  `rel_id` int NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `rel_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '帖子标题',
  `rel_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '帖子描述',
  `rel_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '帖子联系方式',
  `rel_cate_id` int NULL DEFAULT NULL COMMENT '所属物品种类id',
  `rel_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '物品丢失发现时间',
  `rel_campus` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物品丢失寻找校区',
  `create_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物品丢失发现地点',
  `create_time` datetime NULL DEFAULT NULL COMMENT '帖子创建时间',
  `create_id` int NULL DEFAULT NULL COMMENT '发布者id',
  `rel_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '帖子图片',
  `rel_satus` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '帖子类别(1代表失物，2代表寻物)',
  `rel_star` int(10) UNSIGNED ZEROFILL NULL DEFAULT 0000000000 COMMENT '获得赞',
  `rel_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否成功（1寻找中，2成功，3取消）',
  `rel_flow` int UNSIGNED NULL DEFAULT 1 COMMENT '浏览量',
  PRIMARY KEY (`rel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_release
-- ----------------------------
INSERT INTO `laf_release` VALUES (104, '1', '11', '121dadad', 3, '2021-12-20 10:57:35', '不选择', NULL, '2021-09-01 12:58:24', 4, '/img/user/tiezi/8WbBLflx3j2bfdbdc84daf744dfd5c0b58c0ed39e221.png', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (105, '1231', '12321', '12312312', 3, '2021-12-20 10:57:36', '不选择', NULL, '2021-10-06 12:58:38', 4, '/img/user/tiezi/3IfuxJ0JOKDEb6353bf4e0f7dc61f52048a2585e51cf.png', '1', 0000000001, '2', 1);
INSERT INTO `laf_release` VALUES (106, 'asdadad', 'sdada', 'cksjakdaa', 2, '2021-12-20 10:57:36', '不选择', NULL, '2021-10-06 12:59:48', 4, '/img/user/tiezi/nQlHTgmCIPivb6353bf4e0f7dc61f52048a2585e51cf.png', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (107, '我的', '我们', '123456', 2, '2021-12-20 10:57:37', '红旗校区', NULL, '2021-10-06 13:01:24', 4, '/img/user/tiezi/tmp_cde98bf3232b71e4f420e9549516ca4b.jpg', '2', 0000000001, '2', 1);
INSERT INTO `laf_release` VALUES (108, '8722', '1', '1', 1, '2021-12-20 10:57:37', '南昌校区', NULL, '2021-10-06 13:06:14', 6, '/img/user/shiwu.png', '2', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (109, '就觉得肯德基', '不能', 'qjjwje', 3, '2021-12-20 10:57:38', '不选择', NULL, '2021-10-06 13:06:51', 4, '/img/user/tiezi/tmp_261eec0acb9c659453b9e54f5f067c18.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (110, '111', '？', '111', 2, '2021-12-20 10:57:39', '南昌校区', NULL, '2021-10-06 13:06:57', 6, '/img/user/shiwu.png', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (111, '111', '111', '111', 1, '2021-12-20 10:57:39', '南昌校区', NULL, '2021-10-06 13:07:37', 6, '/img/user/tiezi/tmp_08835869e79cdb4b235a3fa55a3eee55.jpg', '2', 0000000001, '2', 1);
INSERT INTO `laf_release` VALUES (112, '刘江8722神', '8722阿萨达开了多久俺姥可视对讲阿卡丽记录卡绝对是离开加了科技科利达进口量达记录卡就点卡啊的啊大飒飒党的', 'qq123456', 3, '2021-12-20 10:57:40', '南昌校区', NULL, '2021-10-06 13:14:05', 4, '/img/user/tiezi/tmp_d0deab2d0fe83a75fe92ff7f1afdc5a3.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (113, '寻找一卡通', '1203教室丢失', 'qq6876203', 2, '2021-12-20 10:57:41', '南昌校区', NULL, '2021-10-06 22:49:21', 4, '/img/user/tiezi/tmp_72dc3decade9181c831e1348e8bd75e2.jpg', '2', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (114, '寻找一卡通', '华晨宇名字', 'qq123456', 2, '2021-12-20 10:57:42', '南昌校区', NULL, '2021-10-06 22:50:13', 4, '/img/user/tiezi/tmp_486f11cbdd01b7b000b82941458ee48e.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (115, '测试bug', 'hello，world', 'QQ123456', 2, '2021-12-20 10:57:42', '南昌校区', '', '2021-10-08 18:15:04', 4, '/img/user/tiezi/0Rkb32kgoPvr43e701fecbd3e65227fa04699861d1e7.webp', '1', 0000000001, '2', 1);
INSERT INTO `laf_release` VALUES (116, 'test', '你好', '123', 2, '2021-12-20 10:57:43', '不选择', NULL, '2021-10-08 18:24:36', 4, '/img/user/tiezi/igQUCkXOOQa743e701fecbd3e65227fa04699861d1e7.webp', '2', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (117, '测试分类', '11', '11', 1, '2021-12-20 10:57:44', '三江校区', NULL, '2021-10-08 21:52:50', 4, '/img/user/tiezi/zoYWIp2ZUbEq43e701fecbd3e65227fa04699861d1e7.webp', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (118, '测试1.2', '123456', '123456', 2, '2021-12-20 10:57:45', '红旗校区', NULL, '2021-10-09 12:38:21', 4, '/img/user/tiezi/tmp_0f48d5aa20695617b14e6afe872d7023.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (119, '你好李欢迎', '1', 'q', 2, '2021-12-20 10:57:46', '南昌校区', NULL, '2021-10-09 22:45:26', 4, '/img/user/tiezi/tmp_cfa381896434a5a13e223a04d700fe02.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (120, '许世平大帅比', '8722', '111', 2, '2021-12-20 10:57:47', '南昌校区', NULL, '2021-10-09 22:46:58', 6, '/img/user/tiezi/tmp_d9067d2321df42d0a333dbe4aa0a78be.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (121, '今天', '今天', '在', 3, '2021-12-20 10:57:49', '南昌校区', NULL, '2021-10-10 20:20:20', 4, '/img/user/tiezi/tmp_bfc3a7b0fe025734245fb6674f90e614.jpg', '2', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (122, 'test', '11', '11', 2, '2021-12-13 00:00:00', '南昌校区', '', '2021-12-06 16:15:52', 4, '/img/user/tiezi/oRwVTAZDqGrI2c3dd20939b4a139079b806989c939db.png', '1', 0000000040, '1', 50);
INSERT INTO `laf_release` VALUES (124, 'Find my son', 'His name is xsp', '11111', NULL, '2021-12-23 20:07:54', '南昌校区', NULL, '2021-12-23 19:49:19', 6, '/img/user/xunwu.png', '2', 0000000000, '1', 0);
INSERT INTO `laf_release` VALUES (125, 'Wq', 'Ry', 'Rydg', NULL, '2021-12-23 20:07:55', '南昌校区', NULL, '2021-12-23 19:50:05', 6, '/img/user/shiwu.png', '1', 0000000000, '1', 0);
INSERT INTO `laf_release` VALUES (126, '我', '你', 'qqq', NULL, '2021-12-23 20:07:57', '不选择', NULL, '2021-12-23 20:05:32', 4, '/img/user/tiezi/tmp_63ac06d41c46891d21372c6c37b3d0e9.jpg', '1', 0000000000, '1', 0);
INSERT INTO `laf_release` VALUES (127, '你', '好', '啊', NULL, '2021-12-23 20:07:59', '不选择', NULL, '2021-12-23 20:06:33', 4, '/img/user/tiezi/tmp_fdd2e74c686ac35bec269a3f4f1acb72.jpg', '2', 0000000000, '1', 0);
INSERT INTO `laf_release` VALUES (128, 'test', 'test', '123', NULL, '2021-12-23 20:12:29', '不选择', NULL, '2021-12-23 20:09:44', 4, '/img/user/tiezi/tmp_d19b5f0b5b8073ff3954642bcdaeb668.jpg', '1', 0000000001, '1', 1);
INSERT INTO `laf_release` VALUES (129, '你好', '你好', '11', 2, NULL, '不选择', NULL, '2021-12-23 20:11:53', 4, '/img/user/tiezi/tmp_636211f66cc55bc5bb9b67ad6af8fe4b.jpg', '1', 0000000000, '1', 0);
INSERT INTO `laf_release` VALUES (130, '1', '1', '1', NULL, NULL, '不选择', NULL, '2021-12-23 21:01:22', 4, '/img/user/shiwu.png', '1', 0000000000, '1', 1);
INSERT INTO `laf_release` VALUES (131, 'test1.0.0', 'hello，world', '123456', 3, '2021-12-23 21:04:29', '不选择', '', '2021-12-23 21:03:16', 4, '/img/user/tiezi/tmp_588a1801ced54e04b0f1e441106bc741.jpg', '1', 0000000000, '1', 1);
INSERT INTO `laf_release` VALUES (132, 'test1.0.0', '寻找一个demo', '123456', 1, NULL, '南昌校区', NULL, '2021-12-23 21:06:05', 4, '/img/user/tiezi/tmp_264c59b67ad78526eddb2f6ce9770a1a.jpg', '2', 0000000000, '1', 1);
INSERT INTO `laf_release` VALUES (133, '1', '1', '123', NULL, NULL, '南昌校区', NULL, '2021-12-23 21:29:28', 4, '/img/user/tiezi/tmp_1fb85cfacce18dbb2739b2486671e595.jpg', '1', 0000000000, '1', 1);
INSERT INTO `laf_release` VALUES (134, 'test', '你好', '123456', 2, NULL, '南昌校区', NULL, '2021-12-23 21:31:01', 4, '/img/user/tiezi/tmp_9b7be20c362816b8d754692075461073.jpg', '2', 0000000000, '1', 1);

-- ----------------------------
-- Table structure for laf_student
-- ----------------------------
DROP TABLE IF EXISTS `laf_student`;
CREATE TABLE `laf_student`  (
  `stu_id` int NOT NULL AUTO_INCREMENT COMMENT '学生唯一表示id',
  `stu_nick` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学生别名昵称',
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学生姓名',
  `stu_sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '3' COMMENT '性别（1男，2女，3外星人）',
  `stu_xh` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学号',
  `stu_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `stu_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学院',
  `stu_major` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '专业',
  `stu_className` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '班级',
  `stu_qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'qq',
  `stu_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'email',
  `stu_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户创建时间',
  `stu_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '用户当前状态(1使用，2停用）',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'wx小程序标识用户id',
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_student
-- ----------------------------
INSERT INTO `laf_student` VALUES (1, '空城', '李易峰', '3', '5720191930', 'yang52199', '软件工程学院', '软件开发', '193班', '1347456958', '134745698@qq.com', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132', '2021-10-08 17:27:50', '1', '');
INSERT INTO `laf_student` VALUES (4, 'yang', '', '1', '', '', '', '', '', '', '', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132', '2021-10-21 17:27:53', '1', 'o-AmG4kLqQvGARX1O4zVONdtNCi0');
INSERT INTO `laf_student` VALUES (5, '我是傻逼', '', '2', '', '', '', '', '', '', '', 'https://thirdwx.qlogo.cn/mmopen/vi_32/wpYvpZPYxDyUibZiaKyOh1ZhQu3AiajZS7C1x98flz59yjadIibUwicf6hZFv7hYJKasxmjlf61UH7xV34yFNt524zQ/132', '2021-10-07 17:27:57', '1', 'o-AmG4rlYUzqmZASAJldbI1lENL8');
INSERT INTO `laf_student` VALUES (6, '顾。', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/QoPAicbDv67QicVyYJPibeWxNCiaQuqJvdbysiasSL9p0JkpKdAfXKiauXWKyzIRJXVbNdOdCWE4XjpcUSZ0pgHzKIUw/132', '2021-10-09 17:28:00', '1', 'o-AmG4rsy4iAGVedruEaRPV6g_r0');
INSERT INTO `laf_student` VALUES (7, '薛之谦', '王家康', '1', '', '', '', '', '', '', '', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132', '2021-10-08 17:43:00', '1', '');
INSERT INTO `laf_student` VALUES (8, '伍仟', '吴亦凡', '1', '', '', '', '', '', '', '', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132', '2021-10-08 18:09:38', '1', '');

-- ----------------------------
-- Table structure for laf_student_online
-- ----------------------------
DROP TABLE IF EXISTS `laf_student_online`;
CREATE TABLE `laf_student_online`  (
  `stu_sessionId` int NOT NULL COMMENT '学生会话id',
  `stu_login_xh` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登陆学号',
  `ipaddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登陆ip\r\n',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登陆地点',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '浏览器类型',
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作系统',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`stu_sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_student_online
-- ----------------------------

-- ----------------------------
-- Table structure for laf_success
-- ----------------------------
DROP TABLE IF EXISTS `laf_success`;
CREATE TABLE `laf_success`  (
  `suss_id` int NOT NULL AUTO_INCREMENT,
  `suss_cid` int NULL DEFAULT NULL,
  `suss_uid` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`suss_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laf_success
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017C0C6F059878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017C0C6F059878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017C0C6F059878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-AI4GVVJ1640255015279', 1640268132367, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1640255020000, -1, 5, 'PAUSED', 'CRON', 1640255015000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1640255025000, -1, 5, 'PAUSED', 'CRON', 1640255015000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1640255020000, -1, 5, 'PAUSED', 'CRON', 1640255015000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-09-22 15:36:15', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '校园失物管理系统', 0, '许肖阳', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '江西理工大学', 1, '许肖阳', '15888888888', '1347456958@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:22:16');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '华东交通大学', 2, '许世平', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:23:15');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '南昌校区', 1, '肖阳', '15888888888', '1347456958@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:22:31');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '黄金校区', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:22:40');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '三江校区', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:22:47');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '南区', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:23:22');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '北区', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:23:27');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '男', '1', 'laf_user_sex', NULL, NULL, 'N', '0', 'admin', '2021-10-08 15:10:15', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (101, 2, '女', '2', 'laf_user_sex', NULL, NULL, 'N', '0', 'admin', '2021-10-08 15:10:33', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (102, 3, '外星人', '3', 'laf_user_sex', NULL, NULL, 'Y', '0', 'admin', '2021-10-08 15:10:52', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (103, 1, '使用中', '1', 'laf_user_status', '', 'primary', 'Y', '0', 'admin', '2021-10-08 15:14:23', 'admin', '2021-10-08 15:18:57', '用户正常使用');
INSERT INTO `sys_dict_data` VALUES (104, 2, '已停用', '2', 'laf_user_status', '', 'danger', 'N', '0', 'admin', '2021-10-08 15:14:48', 'admin', '2021-10-08 15:19:03', '用户已经停用');
INSERT INTO `sys_dict_data` VALUES (105, 1, '寻找中', '1', 'laf_release_status', '', 'warning', 'Y', '0', 'admin', '2021-10-08 15:24:15', 'admin', '2021-10-08 15:26:01', '帖子状态寻找中');
INSERT INTO `sys_dict_data` VALUES (106, 2, '已成功', '2', 'laf_release_status', '', 'success', 'N', '0', 'admin', '2021-10-08 15:24:54', 'admin', '2021-10-08 15:25:58', '帖子已经成功');
INSERT INTO `sys_dict_data` VALUES (107, 3, '已取消', '3', 'laf_release_status', NULL, 'danger', 'N', '0', 'admin', '2021-10-08 15:25:53', '', NULL, '帖子取消删除');
INSERT INTO `sys_dict_data` VALUES (108, 1, '失物招领', '1', 'laf_release_cate', NULL, 'primary', 'Y', '0', 'admin', '2021-10-08 15:31:09', '', NULL, '失物招领');
INSERT INTO `sys_dict_data` VALUES (109, 2, '寻物启事', '2', 'laf_release_cate', NULL, 'success', 'N', '0', 'admin', '2021-10-08 15:31:45', '', NULL, '寻物启事');
INSERT INTO `sys_dict_data` VALUES (110, 1, '寻找中', '1', 'laf_push_status', NULL, 'warning', 'Y', '0', 'admin', '2021-10-08 17:19:13', '', NULL, '物品寻找中');
INSERT INTO `sys_dict_data` VALUES (111, 2, '已成功', '2', 'laf_push_status', NULL, 'success', 'N', '0', 'admin', '2021-10-08 17:19:50', '', NULL, '订阅寻找已经成功');
INSERT INTO `sys_dict_data` VALUES (112, 3, '已取消', '3', 'laf_push_status', NULL, 'danger', 'N', '0', 'admin', '2021-10-08 17:20:21', '', NULL, '用户取消订阅');
INSERT INTO `sys_dict_data` VALUES (113, 1, '未选择', '1', 'laf_category', '', 'info', 'Y', '0', 'admin', '2021-12-08 11:02:31', 'admin', '2021-12-22 22:25:51', '');
INSERT INTO `sys_dict_data` VALUES (114, 2, '身份证', '2', 'laf_category', NULL, 'info', 'Y', '0', 'admin', '2021-12-08 11:02:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 3, '学生证', '3', 'laf_category', NULL, 'info', 'Y', '0', 'admin', '2021-12-08 11:03:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 4, '衣物', '3', 'laf_category', NULL, 'info', 'Y', '0', 'admin', '2021-12-08 11:03:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 1, '不选择', '不选择', 'laf_campus', '', 'info', 'Y', '0', 'admin', '2021-12-08 11:04:48', 'admin', '2021-12-22 22:24:03', '');
INSERT INTO `sys_dict_data` VALUES (118, 2, '黄金校区', '黄金校区', 'laf_campus', NULL, 'info', 'Y', '0', 'admin', '2021-12-08 11:05:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 3, '南昌校区', '南昌校区', 'laf_campus', '', 'info', 'Y', '0', 'admin', '2021-12-08 11:05:54', 'admin', '2021-12-08 11:06:00', '');
INSERT INTO `sys_dict_data` VALUES (120, 4, '红旗校区', '红旗校区', 'laf_campus', NULL, 'info', 'Y', '0', 'admin', '2021-12-08 11:06:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 5, '三江校区', '三江校区', 'laf_campus', NULL, 'info', 'Y', '0', 'admin', '2021-12-08 11:06:37', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, 'wx用户性别', 'laf_user_sex', '0', 'admin', '2021-10-08 15:07:35', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, 'wx实体状态', 'laf_user_status', '0', 'admin', '2021-10-08 15:12:43', 'admin', '2021-10-08 17:06:30', '使用，停用');
INSERT INTO `sys_dict_type` VALUES (102, 'wx帖子状态', 'laf_release_status', '0', 'admin', '2021-10-08 15:22:57', 'admin', '2021-10-08 15:28:20', 'wx发布帖子字典');
INSERT INTO `sys_dict_type` VALUES (103, 'wx帖子类别', 'laf_release_cate', '0', 'admin', '2021-10-08 15:29:11', '', NULL, '微信帖子类别失物还是寻物');
INSERT INTO `sys_dict_type` VALUES (104, 'wx订阅状态', 'laf_push_status', '0', 'admin', '2021-10-08 17:18:37', '', NULL, '微信用户订阅状态');
INSERT INTO `sys_dict_type` VALUES (105, 'wx物品种类', 'laf_category', '0', 'admin', '2021-12-08 10:44:46', '', NULL, '物品分类');
INSERT INTO `sys_dict_type` VALUES (106, 'wx校区字典', 'laf_campus', '0', 'admin', '2021-12-08 11:04:14', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-09-22 15:36:15', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-09-22 15:36:15', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-09-22 15:36:15', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 247 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-22 17:21:03');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-22 18:19:49');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-22 18:32:30');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-22 18:34:16');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-22 18:34:30');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-22 20:03:24');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-22 20:03:38');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-23 19:28:57');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-23 20:29:54');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-26 19:42:01');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-26 19:46:10');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-26 19:49:29');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 10:29:45');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 11:34:14');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 18:36:19');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 18:41:56');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 19:09:12');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 19:26:46');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 19:28:40');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 20:28:16');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 21:05:15');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 21:09:59');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-27 21:10:32');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-28 15:48:27');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-28 15:52:25');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-28 15:59:44');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-28 16:06:09');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-09-28 16:23:52');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-09-28 16:24:45');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 19:38:25');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 19:43:19');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 19:43:56');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 19:45:16');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 20:08:14');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 20:09:09');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-01 20:10:25');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-02 10:28:58');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-02 15:54:50');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-02 20:15:28');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 12:14:20');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 14:27:09');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 14:33:38');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 14:40:07');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 14:42:04');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 14:44:46');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-04 14:49:27');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 09:12:39');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 12:05:29');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 15:05:02');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 15:07:27');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 15:21:25');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 15:23:52');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 15:27:51');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 15:39:56');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-05 22:07:54');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 14:38:21');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 14:49:47');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 15:01:14');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 16:14:39');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 16:37:08');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 16:52:05');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 16:57:36');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 17:06:38');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 17:36:51');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:06:52');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:11:00');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:23:41');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:24:48');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:28:46');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:36:53');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 18:37:26');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 20:38:14');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-08 20:41:11');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-08 21:55:04');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-09 11:59:14');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-09 12:23:36');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-09 12:25:53');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-11 15:01:51');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-11 15:11:42');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-11 15:11:54');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-11 15:12:04');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-11 15:12:28');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-11 15:12:35');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-11 15:21:00');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-18 15:01:08');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-18 15:07:23');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 16:25:13');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 16:35:59');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 16:36:53');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-06 16:42:30');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 10:37:49');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 10:41:56');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 10:44:05');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 10:55:55');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 11:09:16');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 11:16:51');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 11:19:11');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-08 11:45:44');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-09 14:49:54');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-09 15:01:55');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-09 15:08:46');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-09 15:09:58');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-09 15:12:00');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 09:21:29');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 09:29:21');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 09:31:54');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 09:33:31');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 09:38:46');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 09:39:59');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 15:24:28');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 15:33:19');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 21:34:44');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 21:35:59');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '192.168.3.29', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-13 21:56:44');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '192.168.3.29', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-13 21:57:22');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 10:36:26');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:13:07');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:16:24');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:38:02');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:42:31');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:46:29');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:51:33');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 11:55:28');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 14:17:09');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 14:37:52');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 15:30:28');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 15:55:55');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 16:50:09');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 17:00:12');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 17:04:35');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-20 17:10:33');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-21 20:36:14');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-21 20:41:30');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-21 20:42:53');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-21 20:47:26');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-21 20:48:13');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-21 20:50:44');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 15:52:25');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 16:16:03');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 16:18:52');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 16:22:24');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 21:02:07');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 22:14:01');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-22 22:20:23');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-23 11:35:03');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-23 19:03:12');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-23 21:03:56');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2005 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-09-22 15:36:14', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-09-22 15:36:14', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2021-09-22 15:36:14', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '失物招领', 0, 4, '#', 'menuBlank', 'M', '0', '1', '', 'fa fa-cogs', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:46:50', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', 'menuItem', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 19:02:02', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-09-22 15:36:14', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-09-22 15:36:14', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-09-22 15:36:14', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-09-22 15:36:14', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-09-22 15:36:14', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-09-22 15:36:14', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-09-22 15:36:14', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-09-22 15:36:14', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-09-22 15:36:14', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-09-22 15:36:14', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-09-22 15:36:14', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-09-22 15:36:14', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-09-22 15:36:14', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-09-22 15:36:14', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-09-22 15:36:14', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-09-22 15:36:14', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-09-22 15:36:14', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-09-22 15:36:14', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '用户管理', 4, 3, '/wx/student', 'menuItem', 'M', '0', '1', '', 'fa fa-address-card-o', 'admin', '2021-09-22 18:48:47', 'admin', '2021-12-22 16:12:38', '');
INSERT INTO `sys_menu` VALUES (2001, '帖子管理', 4, 4, '/wx/release', 'menuItem', 'M', '0', '1', '', 'fa fa-bar-chart', 'admin', '2021-10-04 14:34:35', 'admin', '2021-12-22 16:12:54', '');
INSERT INTO `sys_menu` VALUES (2002, '物品分类', 4, 2, '/wx/category', 'menuItem', 'C', '0', '0', '', 'fa fa-cube', 'admin', '2021-10-08 14:51:19', 'admin', '2021-12-22 16:12:25', '');
INSERT INTO `sys_menu` VALUES (2003, '小程序公告', 4, 0, '/wx/announce', 'menuItem', 'C', '0', '1', '', 'fa fa-send-o', 'admin', '2021-12-20 11:30:10', 'admin', '2021-12-20 11:32:09', '');
INSERT INTO `sys_menu` VALUES (2004, '评论管理', 4, 5, '/wx/comment', 'menuItem', 'C', '0', '1', 'wx:comment:view', 'fa fa-volume-up', 'admin', '2021-12-22 16:15:01', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-09-22 15:36:15', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 492 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_config\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 17:21:10');
INSERT INTO `sys_oper_log` VALUES (101, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"若依科技\"],\"deptName\":[\"江西理工大学\"],\"orderNum\":[\"1\"],\"leader\":[\"肖阳\"],\"phone\":[\"15888888888\"],\"email\":[\"1347456958@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:22:16');
INSERT INTO `sys_oper_log` VALUES (102, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"江西理工大学\"],\"deptName\":[\"南昌校区\"],\"orderNum\":[\"1\"],\"leader\":[\"肖阳\"],\"phone\":[\"15888888888\"],\"email\":[\"1347456958@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:22:31');
INSERT INTO `sys_oper_log` VALUES (103, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"江西理工大学\"],\"deptName\":[\"黄金校区\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:22:40');
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"江西理工大学\"],\"deptName\":[\"三江校区\"],\"orderNum\":[\"3\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:22:47');
INSERT INTO `sys_oper_log` VALUES (105, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '106', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:22:54');
INSERT INTO `sys_oper_log` VALUES (106, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '107', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:22:57');
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"102\"],\"parentId\":[\"100\"],\"parentName\":[\"若依科技\"],\"deptName\":[\"华东交通大学\"],\"orderNum\":[\"2\"],\"leader\":[\"许世平\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:23:15');
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"108\"],\"parentId\":[\"102\"],\"parentName\":[\"华东交通大学\"],\"deptName\":[\"南区\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:23:22');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"109\"],\"parentId\":[\"102\"],\"parentName\":[\"华东交通大学\"],\"deptName\":[\"北区\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:23:27');
INSERT INTO `sys_oper_log` VALUES (110, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"项目组长\"],\"postCode\":[\"boss\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:27:09');
INSERT INTO `sys_oper_log` VALUES (111, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', 1, 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:28:07');
INSERT INTO `sys_oper_log` VALUES (112, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"普通游客\"],\"postCode\":[\"guest\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:28:22');
INSERT INTO `sys_oper_log` VALUES (113, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"董事长\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:28:46');
INSERT INTO `sys_oper_log` VALUES (114, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"首席执行官\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:29:36');
INSERT INTO `sys_oper_log` VALUES (115, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"许世平\"],\"dept.deptName\":[\"三江校区\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"2\"],\"role\":[\"2\"],\"remark\":[\"开发人员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:30:29');
INSERT INTO `sys_oper_log` VALUES (116, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '南昌校区', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"许肖阳\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"1347456958@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:39:39');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '南昌校区', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2021-09-22 18:45:07');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '南昌校区', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2021-09-22 18:45:19');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"失物招领\"],\"url\":[\"\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-cogs\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:46:29');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"失物招领\"],\"url\":[\"#\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-cogs\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:46:38');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"失物招领\"],\"url\":[\"#\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-cogs\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:46:50');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:48:47');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 18:49:21');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"100\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"系统管理员\"],\"url\":[\"/system/user\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 19:00:16');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"100\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-22 19:02:02');
INSERT INTO `sys_oper_log` VALUES (126, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()', 'POST', 1, 'admin', '南昌校区', '/monitor/online/batchForceLogout', '127.0.0.1', '内网IP', '{\"ids\":[\"31170915-a4bb-4e38-88db-8cc1dec1e14e\"]}', '{\"msg\":\"当前登录用户无法强退\",\"code\":500}', 0, NULL, '2021-09-22 20:03:47');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:43:59');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:46:17');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:46:19');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:46:23');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:49:36');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:49:40');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/synchDb/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-26 19:49:54');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 18:37:00');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 18:37:05');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 18:42:04');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 18:42:10');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-09-27 18:55:16');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:09:28');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:09:31');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:10:56');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:11:00');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"89\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生唯一表示id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"90\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学生别名昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"91\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"92\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"93\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"94\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].isInsert\":', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:11:44');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-09-27 19:12:02');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:28:48');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 19:28:55');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-09-27 19:29:09');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/wx/student\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 20:29:01');
INSERT INTO `sys_oper_log` VALUES (149, '【请填写功能名称】', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"1\"],\"stuNick\":[\"空城\"],\"stuName\":[\"许肖阳\"],\"stuSex\":[\"\"],\"stuXh\":[\"5720191930\"],\"stuPassword\":[\"yang52199\"],\"stuDepartment\":[\"软件工程学院\"],\"stuMajor\":[\"软件开发\"],\"stuClassname\":[\"193班\"],\"stuQq\":[\"1347456958\"],\"stuEmail\":[\"134745698@qq.com\"],\"stuImage\":[\"\"],\"stuStatus\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-27 21:05:45');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"102\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"103\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"104\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"105\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"106\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"107\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].isInsert\":[\"1\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-09-28 15:50:03');
INSERT INTO `sys_oper_log` VALUES (151, '【请填写功能名称】', 5, 'com.ruoyi.web.controller.wx.LafStudentController.export()', 'POST', 1, 'admin', '南昌校区', '/wx/student/export', '127.0.0.1', '内网IP', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"],\"isAsc\":[\"asc\"],\"stuNick\":[\"\"],\"stuName\":[\"\"],\"stuSex\":[\"\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"\"],\"stuStatus\":[\"\"]}', '{\"msg\":\"2499bbe2-86b4-4088-bd95-d9ef95762118_【请填写功能名称】数据.xlsx\",\"code\":0}', 0, NULL, '2021-09-28 16:02:55');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-02 10:29:12');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-02 10:29:17');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"115\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"116\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"微信名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"117\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"118\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"119\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"120\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].isInsert\":[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-02 10:31:12');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-10-02 10:31:15');
INSERT INTO `sys_oper_log` VALUES (156, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"1\"],\"stuNick\":[\"空城\"],\"stuName\":[\"李易峰\"],\"stuSex\":[\"\"],\"stuXh\":[\"5720191930\"],\"stuPassword\":[\"yang52199\"],\"stuDepartment\":[\"软件工程学院\"],\"stuMajor\":[\"软件开发\"],\"stuClassname\":[\"193班\"],\"stuQq\":[\"1347456958\"],\"stuEmail\":[\"134745698@qq.com\"],\"stuImage\":[\"\"],\"openid\":[\"\"],\"stuStatus\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-02 20:16:00');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_release\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 12:14:49');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"129\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"130\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"帖子标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"131\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"帖子描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"132\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"133\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"134\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"物品丢失发现时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 12:19:00');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_release', '127.0.0.1', '内网IP', '\"laf_release\"', NULL, 0, NULL, '2021-10-04 12:19:35');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 12:23:02');
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_release\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 12:23:05');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 14:27:16');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_release\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 14:27:19');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"161\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"162\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"163\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"线索描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"164\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"165\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类(外键)\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"166\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"丢失发现时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].isI', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 14:29:02');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_release', '127.0.0.1', '内网IP', '\"laf_release\"', NULL, 0, NULL, '2021-10-04 14:29:04');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"4\"],\"menuType\":[\"M\"],\"menuName\":[\"帖子管理\"],\"url\":[\"/wx/release\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-04 14:34:35');
INSERT INTO `sys_oper_log` VALUES (167, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"222\"],\"relDesc\":[\"222\"],\"relContact\":[\"2222\"],\"relCateId\":[\"1\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'rel_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\BaiduNetdiskDownload\\RuoYi-master\\RuoYi\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafReleaseMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafReleaseMapper.insertLafRelease-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_release          ( rel_title,             rel_desc,             rel_contact,             rel_cate_id,                          rel_campus,             create_place,             create_time,             create_id,             rel_image,                          rel_satus,             rel_issuccess,             rel_isdel )           values ( ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'rel_id\' doesn\'t have a default value\n; Field \'rel_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'rel_id\' doesn\'t have a default value', '2021-10-05 09:17:04');
INSERT INTO `sys_oper_log` VALUES (168, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"22\"],\"relDesc\":[\"222\"],\"relContact\":[\"222\"],\"relCateId\":[\"1\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 09:17:30');
INSERT INTO `sys_oper_log` VALUES (169, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"333\"],\"relDesc\":[\"333\"],\"relContact\":[\"333\"],\"relCateId\":[\"\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 09:17:39');
INSERT INTO `sys_oper_log` VALUES (170, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"444\"],\"relDesc\":[\"444\"],\"relContact\":[\"444\"],\"relCateId\":[\"\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"44\"],\"createId\":[\"4\"],\"relImage\":[\"\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 09:17:53');
INSERT INTO `sys_oper_log` VALUES (171, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"555\"],\"relDesc\":[\"555\"],\"relContact\":[\"55\"],\"relCateId\":[\"\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\\t\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 09:18:13');
INSERT INTO `sys_oper_log` VALUES (172, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"666\"],\"relDesc\":[\"666\"],\"relContact\":[\"666\"],\"relCateId\":[\"\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 09:18:23');
INSERT INTO `sys_oper_log` VALUES (173, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"88\"],\"relDesc\":[\"888\"],\"relContact\":[\"88\"],\"relCateId\":[\"\"],\"relTime\":[\"\"],\"relCampus\":[\"\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\\t\"],\"relStar\":[\"\"],\"relIssuccess\":[\"\"],\"commAmount\":[\"\"],\"relSatus\":[\"\"],\"relIsdel\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 09:20:22');
INSERT INTO `sys_oper_log` VALUES (174, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, NULL, NULL, '/wx/release/add', '127.0.0.1', '内网IP', '{\"token\":[\"B8UoIvqGp3/aWZUhd0zTyw==\"]}', NULL, 1, 'Cannot invoke \"com.auth0.jwt.interfaces.DecodedJWT.getClaims()\" because \"jwt\" is null', '2021-10-05 10:56:17');
INSERT INTO `sys_oper_log` VALUES (175, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, NULL, NULL, '/wx/release/add', '192.168.3.29', '内网IP', '{\"createId\":4,\"createTime\":1633402598232,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 10:56:38');
INSERT INTO `sys_oper_log` VALUES (176, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, NULL, NULL, '/wx/release/add', '192.168.3.29', '内网IP', '{\"createId\":4,\"createTime\":1633402679735,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 10:57:59');
INSERT INTO `sys_oper_log` VALUES (177, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, NULL, NULL, '/wx/release/add', '192.168.3.29', '内网IP', '{\"createId\":4,\"createTime\":1633402838627,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 11:00:38');
INSERT INTO `sys_oper_log` VALUES (178, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, NULL, NULL, '/wx/release/add', '192.168.3.29', '内网IP', '{\"createId\":4,\"createTime\":1633402971981,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 11:02:52');
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 12:05:34');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14,13,10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:05:31');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:05:36');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:07:44');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:07:48');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"194\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"195\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"196\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"197\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"198\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"199\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].isInsert\":[\"1', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:13:06');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-10-05 15:17:04');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"4\"],\"menuType\":[\"M\"],\"menuName\":[\"用户管理\"],\"url\":[\"/wx/student\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:21:57');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_release\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:28:59');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/synchDb/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:29:07');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"209\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"210\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"211\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"212\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"213\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类id\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"214\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"丢失发现时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].isIns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-05 15:30:27');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_release', '127.0.0.1', '内网IP', '\"laf_release\"', NULL, 0, NULL, '2021-10-05 15:30:31');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_category\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 14:38:40');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"laf_category\"],\"tableComment\":[\"物品种类\"],\"className\":[\"LafCategory\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"224\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"物品ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cateId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"225\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"226\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"cateName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"227\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"createTime\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"228\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建者\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"createBy\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"229\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"cateStutus\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 14:43:57');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_category', '127.0.0.1', '内网IP', '\"laf_category\"', NULL, 0, NULL, '2021-10-08 14:44:02');
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"物品分类\"],\"url\":[\"/wx/category\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-cube\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 14:51:19');
INSERT INTO `sys_oper_log` VALUES (195, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"身份证\"],\"cateStutus\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'cate_stutus\' at row 1\r\n### The error may exist in file [D:\\Programs\\WXapp\\wx-laf\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafCategoryMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafCategoryMapper.insertLafCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_category          ( paraent_id,             cate_name,             create_time,                          cate_stutus )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'cate_stutus\' at row 1\n; Data truncated for column \'cate_stutus\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'cate_stutus\' at row 1', '2021-10-08 14:51:46');
INSERT INTO `sys_oper_log` VALUES (196, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"身份证\"],\"cateStutus\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'cate_stutus\' at row 1\r\n### The error may exist in file [D:\\Programs\\WXapp\\wx-laf\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafCategoryMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafCategoryMapper.insertLafCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_category          ( paraent_id,             cate_name,             create_time,                          cate_stutus )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'cate_stutus\' at row 1\n; Data truncated for column \'cate_stutus\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'cate_stutus\' at row 1', '2021-10-08 14:57:34');
INSERT INTO `sys_oper_log` VALUES (197, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"身份证\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'cate_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Programs\\WXapp\\wx-laf\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafCategoryMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafCategoryMapper.insertLafCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_category          ( paraent_id,             cate_name,             create_time )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'cate_id\' doesn\'t have a default value\n; Field \'cate_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'cate_id\' doesn\'t have a default value', '2021-10-08 15:01:22');
INSERT INTO `sys_oper_log` VALUES (198, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"\"],\"cateName\":[\"身份证\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'cate_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Programs\\WXapp\\wx-laf\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafCategoryMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafCategoryMapper.insertLafCategory-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_category          ( cate_name,             create_time )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'cate_id\' doesn\'t have a default value\n; Field \'cate_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'cate_id\' doesn\'t have a default value', '2021-10-08 15:02:34');
INSERT INTO `sys_oper_log` VALUES (199, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"身份证\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:03:18');
INSERT INTO `sys_oper_log` VALUES (200, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"衣物\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:03:37');
INSERT INTO `sys_oper_log` VALUES (201, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"3\"],\"cateName\":[\"短袖\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:03:45');
INSERT INTO `sys_oper_log` VALUES (202, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"wx用户性别\"],\"dictType\":[\"laf_user_sex\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:07:35');
INSERT INTO `sys_oper_log` VALUES (203, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"男\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"性别男\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:10:15');
INSERT INTO `sys_oper_log` VALUES (204, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"女\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"性别女\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:10:33');
INSERT INTO `sys_oper_log` VALUES (205, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"外星人\"],\"dictValue\":[\"3\"],\"dictType\":[\"laf_user_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"性别未知\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:10:52');
INSERT INTO `sys_oper_log` VALUES (206, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"用户状态\"],\"dictType\":[\"laf_user_status\"],\"status\":[\"0\"],\"remark\":[\"用户状态显示停用或使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:12:43');
INSERT INTO `sys_oper_log` VALUES (207, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"使用中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_user_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"用户正常使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:14:23');
INSERT INTO `sys_oper_log` VALUES (208, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已停用\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_user_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"用户已经停用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:14:48');
INSERT INTO `sys_oper_log` VALUES (209, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"wx用户状态\"],\"dictType\":[\"laf_user_status\"],\"status\":[\"0\"],\"remark\":[\"用户状态显示停用或使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:18:05');
INSERT INTO `sys_oper_log` VALUES (210, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"103\"],\"dictLabel\":[\"使用中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_user_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"用户正常使用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:18:57');
INSERT INTO `sys_oper_log` VALUES (211, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"104\"],\"dictLabel\":[\"已停用\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_user_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"danger\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"用户已经停用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:19:03');
INSERT INTO `sys_oper_log` VALUES (212, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"wx帖子\"],\"dictType\":[\"laf_release\"],\"status\":[\"0\"],\"remark\":[\"wx发布帖子字典\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:22:57');
INSERT INTO `sys_oper_log` VALUES (213, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"102\"],\"dictName\":[\"wx帖子\"],\"dictType\":[\"laf_release_statu\"],\"status\":[\"0\"],\"remark\":[\"wx发布帖子字典\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:23:19');
INSERT INTO `sys_oper_log` VALUES (214, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"102\"],\"dictName\":[\"wx帖子\"],\"dictType\":[\"laf_release_status\"],\"status\":[\"0\"],\"remark\":[\"wx发布帖子字典\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:23:24');
INSERT INTO `sys_oper_log` VALUES (215, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"寻找中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"帖子状态寻找中\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:24:15');
INSERT INTO `sys_oper_log` VALUES (216, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"寻找中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"帖子状态寻找中\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:24:23');
INSERT INTO `sys_oper_log` VALUES (217, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"寻找中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"帖子状态寻找中\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:24:31');
INSERT INTO `sys_oper_log` VALUES (218, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"寻找中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"帖子状态寻找中\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:24:35');
INSERT INTO `sys_oper_log` VALUES (219, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已成功\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:24:54');
INSERT INTO `sys_oper_log` VALUES (220, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"106\"],\"dictLabel\":[\"已成功\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"帖子已经成功\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:25:10');
INSERT INTO `sys_oper_log` VALUES (221, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已取消\"],\"dictValue\":[\"3\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"danger\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"帖子取消删除\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:25:53');
INSERT INTO `sys_oper_log` VALUES (222, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"106\"],\"dictLabel\":[\"已成功\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"帖子已经成功\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:25:58');
INSERT INTO `sys_oper_log` VALUES (223, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"105\"],\"dictLabel\":[\"寻找中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_release_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"帖子状态寻找中\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:26:01');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:27:55');
INSERT INTO `sys_oper_log` VALUES (225, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"102\"],\"dictName\":[\"wx帖子状态\"],\"dictType\":[\"laf_release_status\"],\"status\":[\"0\"],\"remark\":[\"wx发布帖子字典\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:28:20');
INSERT INTO `sys_oper_log` VALUES (226, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"wx帖子类别\"],\"dictType\":[\"laf_release_cate\"],\"status\":[\"0\"],\"remark\":[\"微信帖子类别失物还是寻物\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:29:11');
INSERT INTO `sys_oper_log` VALUES (227, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"失物招领\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_release_cate\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"失物招领\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:31:09');
INSERT INTO `sys_oper_log` VALUES (228, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"寻物启事\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_release_cate\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"寻物启事\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 15:31:45');
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_category\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 16:14:51');
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"laf_category\"],\"tableComment\":[\"物品种类\"],\"className\":[\"LafCategory\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"230\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"物品ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cateId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"231\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"232\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"cateName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"233\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"createTime\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"234\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建者\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"createBy\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"235\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"cateStutus\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 16:31:08');
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_category', '127.0.0.1', '内网IP', '\"laf_category\"', NULL, 0, NULL, '2021-10-08 16:31:18');
INSERT INTO `sys_oper_log` VALUES (232, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"3\"],\"cateName\":[\"帽子\"],\"cateStutus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 16:37:52');
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"194\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"195\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"196\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"197\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"laf_user_sex\"],\"columns[4].columnId\":[\"198\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"199\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 16:48:10');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-10-08 16:48:25');
INSERT INTO `sys_oper_log` VALUES (235, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"101\"],\"dictName\":[\"wx实体状态\"],\"dictType\":[\"laf_user_status\"],\"status\":[\"0\"],\"remark\":[\"使用，停用\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:06:30');
INSERT INTO `sys_oper_log` VALUES (236, '物品种类', 2, 'com.ruoyi.web.controller.wx.LafCategoryController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/edit', '127.0.0.1', '内网IP', '{\"cateId\":[\"2\"],\"paraentId\":[\"1\"],\"parentName\":[\"物品\"],\"cateName\":[\"身份证\"],\"cateStutus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:12:06');
INSERT INTO `sys_oper_log` VALUES (237, '物品种类', 2, 'com.ruoyi.web.controller.wx.LafCategoryController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/edit', '127.0.0.1', '内网IP', '{\"cateId\":[\"2\"],\"paraentId\":[\"1\"],\"parentName\":[\"物品\"],\"cateName\":[\"身份证\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:12:16');
INSERT INTO `sys_oper_log` VALUES (238, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"学生证\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:12:35');
INSERT INTO `sys_oper_log` VALUES (239, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"4\"],\"stuNick\":[\"华晨宇\"],\"stuName\":[\"\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\"],\"stuCreatetime\":[\"\"],\"stuStatus\":[\"2\"],\"openid\":[\"o-AmG4kLqQvGARX1O4zVONdtNCi0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:15:10');
INSERT INTO `sys_oper_log` VALUES (240, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"4\"],\"stuNick\":[\"华晨宇\"],\"stuName\":[\"\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\"],\"stuCreatetime\":[\"\"],\"stuStatus\":[\"1\"],\"openid\":[\"o-AmG4kLqQvGARX1O4zVONdtNCi0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:15:24');
INSERT INTO `sys_oper_log` VALUES (241, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"wx订阅状态\"],\"dictType\":[\"laf_push_status\"],\"status\":[\"0\"],\"remark\":[\"微信用户订阅状态\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:18:37');
INSERT INTO `sys_oper_log` VALUES (242, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"寻找中\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_push_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"物品寻找中\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:19:13');
INSERT INTO `sys_oper_log` VALUES (243, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已成功\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_push_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"订阅寻找已经成功\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:19:50');
INSERT INTO `sys_oper_log` VALUES (244, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已取消\"],\"dictValue\":[\"3\"],\"dictType\":[\"laf_push_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"danger\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"用户取消订阅\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:20:22');
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:29:42');
INSERT INTO `sys_oper_log` VALUES (246, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:29:45');
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"236\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"237\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"238\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"239\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"laf_user_sex\"],\"columns[4].columnId\":[\"240\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"241\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:32:22');
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-10-08 17:32:26');
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"236\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"237\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"238\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"239\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"laf_user_sex\"],\"columns[4].columnId\":[\"240\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"241\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:41:27');
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-10-08 17:41:31');
INSERT INTO `sys_oper_log` VALUES (251, '学生', 1, 'com.ruoyi.web.controller.wx.LafStudentController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/add', '127.0.0.1', '内网IP', '{\"stuNick\":[\"薛之谦\"],\"stuName\":[\"王家康\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"\"],\"stuStatus\":[\"1\"],\"openid\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:42:59');
INSERT INTO `sys_oper_log` VALUES (252, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"证件\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:48:07');
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"236\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"237\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"238\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"239\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"laf_user_sex\"],\"columns[4].columnId\":[\"240\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"241\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:52:30');
INSERT INTO `sys_oper_log` VALUES (254, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:53:26');
INSERT INTO `sys_oper_log` VALUES (255, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_release\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:53:33');
INSERT INTO `sys_oper_log` VALUES (256, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 17:59:08');
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_release', '127.0.0.1', '内网IP', '\"laf_release\"', NULL, 0, NULL, '2021-10-08 17:59:20');
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_student', '127.0.0.1', '内网IP', '\"laf_student\"', NULL, 0, NULL, '2021-10-08 18:03:13');
INSERT INTO `sys_oper_log` VALUES (259, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/6', '127.0.0.1', '内网IP', '6', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 18:08:24');
INSERT INTO `sys_oper_log` VALUES (260, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/2', '127.0.0.1', '内网IP', '2', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 18:08:31');
INSERT INTO `sys_oper_log` VALUES (261, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"7\"],\"cateName\":[\"身份证\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 18:08:38');
INSERT INTO `sys_oper_log` VALUES (262, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"7\"],\"cateName\":[\"学生证\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 18:08:46');
INSERT INTO `sys_oper_log` VALUES (263, '学生', 1, 'com.ruoyi.web.controller.wx.LafStudentController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/add', '127.0.0.1', '内网IP', '{\"stuNick\":[\"伍仟\"],\"stuName\":[\"吴亦凡\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"\"],\"stuStatus\":[\"1\"],\"openid\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 18:09:37');
INSERT INTO `sys_oper_log` VALUES (264, '帖子', 2, 'com.ruoyi.web.controller.wx.LafReleaseController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/edit', '127.0.0.1', '内网IP', '{\"relId\":[\"115\"],\"relTitle\":[\"测试bug\"],\"relDesc\":[\"hello，world\"],\"relContact\":[\"QQ123456\"],\"relCateId\":[\"2\"],\"relTime\":[\"\"],\"relCampus\":[\"南昌校区\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"/img/user/tiezi/0Rkb32kgoPvr43e701fecbd3e65227fa04699861d1e7.webp\"],\"relSatus\":[\"1\"],\"relStar\":[\"\"],\"relFlag\":[\"2\"],\"commAmount\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 18:16:15');
INSERT INTO `sys_oper_log` VALUES (265, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:55:15');
INSERT INTO `sys_oper_log` VALUES (266, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/5', '127.0.0.1', '内网IP', '5', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:55:18');
INSERT INTO `sys_oper_log` VALUES (267, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/7', '127.0.0.1', '内网IP', '7', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:56:24');
INSERT INTO `sys_oper_log` VALUES (268, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/8', '127.0.0.1', '内网IP', '8', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:56:27');
INSERT INTO `sys_oper_log` VALUES (269, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/9', '127.0.0.1', '内网IP', '9', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:56:29');
INSERT INTO `sys_oper_log` VALUES (270, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"身份证\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:56:36');
INSERT INTO `sys_oper_log` VALUES (271, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"学生证\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-08 21:56:42');
INSERT INTO `sys_oper_log` VALUES (272, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].isI', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-09 12:24:58');
INSERT INTO `sys_oper_log` VALUES (273, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"4\"],\"stuNick\":[\"李易峰\"],\"stuName\":[\"\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\"],\"stuStatus\":[\"1\"],\"openid\":[\"o-AmG4kLqQvGARX1O4zVONdtNCi0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-11 15:02:29');
INSERT INTO `sys_oper_log` VALUES (274, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"5\"],\"stuNick\":[\"我是傻逼\"],\"stuName\":[\"\"],\"stuSex\":[\"2\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/wpYvpZPYxDyUibZiaKyOh1ZhQu3AiajZS7C1x98flz59yjadIibUwicf6hZFv7hYJKasxmjlf61UH7xV34yFNt524zQ/132\"],\"stuStatus\":[\"1\"],\"openid\":[\"o-AmG4rlYUzqmZASAJldbI1lENL8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-10-11 15:02:58');
INSERT INTO `sys_oper_log` VALUES (275, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"laf_student\"],\"tableComment\":[\"学生表\"],\"className\":[\"LafStudent\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"236\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"stuId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"237\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNick\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"238\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"239\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"laf_user_sex\"],\"columns[4].columnId\":[\"240\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学号\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"stuXh\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"241\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"密码\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"stuPassword\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-06 16:38:26');
INSERT INTO `sys_oper_log` VALUES (276, '物品种类', 2, 'com.ruoyi.web.controller.wx.LafCategoryController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/edit', '127.0.0.1', '内网IP', '{\"cateId\":[\"2\"],\"paraentId\":[\"1\"],\"parentName\":[\"物品\"],\"cateName\":[\"衣物\"],\"cateStutus\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-06 16:43:01');
INSERT INTO `sys_oper_log` VALUES (277, '物品种类', 2, 'com.ruoyi.web.controller.wx.LafCategoryController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/edit', '127.0.0.1', '内网IP', '{\"cateId\":[\"2\"],\"paraentId\":[\"1\"],\"parentName\":[\"物品\"],\"cateName\":[\"衣物\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-06 16:43:56');
INSERT INTO `sys_oper_log` VALUES (278, '物品种类', 3, 'com.ruoyi.web.controller.wx.LafCategoryController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/category/remove/2', '127.0.0.1', '内网IP', '2', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-06 16:44:04');
INSERT INTO `sys_oper_log` VALUES (279, '物品种类', 1, 'com.ruoyi.web.controller.wx.LafCategoryController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/add', '127.0.0.1', '内网IP', '{\"paraentId\":[\"1\"],\"cateName\":[\"衣服\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-06 16:44:25');
INSERT INTO `sys_oper_log` VALUES (280, '物品种类', 2, 'com.ruoyi.web.controller.wx.LafCategoryController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/category/edit', '127.0.0.1', '内网IP', '{\"cateId\":[\"12\"],\"paraentId\":[\"1\"],\"parentName\":[\"物品\"],\"cateName\":[\"衣物\"],\"cateStutus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-06 16:44:34');
INSERT INTO `sys_oper_log` VALUES (281, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/synchDb/laf_release', '127.0.0.1', '内网IP', '\"laf_release\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 10:38:22');
INSERT INTO `sys_oper_log` VALUES (282, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].is', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 10:41:31');
INSERT INTO `sys_oper_log` VALUES (283, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].is', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 10:42:31');
INSERT INTO `sys_oper_log` VALUES (284, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"wx物品种类\"],\"dictType\":[\"laf_category\"],\"status\":[\"0\"],\"remark\":[\"物品分类\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 10:44:46');
INSERT INTO `sys_oper_log` VALUES (285, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].is', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 10:46:51');
INSERT INTO `sys_oper_log` VALUES (286, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_release', '127.0.0.1', '内网IP', '\"laf_release\"', NULL, 0, NULL, '2021-12-08 10:46:54');
INSERT INTO `sys_oper_log` VALUES (287, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"columns[5].isI', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 10:59:11');
INSERT INTO `sys_oper_log` VALUES (288, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"全部物品\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:02:31');
INSERT INTO `sys_oper_log` VALUES (289, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"身份证\"],\"dictValue\":[\"2\"],\"dictType\":[\"laf_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:02:56');
INSERT INTO `sys_oper_log` VALUES (290, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"学生证\"],\"dictValue\":[\"3\"],\"dictType\":[\"laf_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:03:13');
INSERT INTO `sys_oper_log` VALUES (291, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"衣物\"],\"dictValue\":[\"3\"],\"dictType\":[\"laf_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:03:30');
INSERT INTO `sys_oper_log` VALUES (292, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"wx校区字典\"],\"dictType\":[\"laf_campus\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:04:14');
INSERT INTO `sys_oper_log` VALUES (293, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"全部校区\"],\"dictValue\":[\"不选择\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:04:48');
INSERT INTO `sys_oper_log` VALUES (294, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"黄金校区\"],\"dictValue\":[\"黄金校区\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:05:29');
INSERT INTO `sys_oper_log` VALUES (295, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"南昌校区\"],\"dictValue\":[\"南昌校区\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:05:54');
INSERT INTO `sys_oper_log` VALUES (296, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"119\"],\"dictLabel\":[\"南昌校区\"],\"dictValue\":[\"南昌校区\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:06:00');
INSERT INTO `sys_oper_log` VALUES (297, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"红旗校区\"],\"dictValue\":[\"红旗校区\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:06:19');
INSERT INTO `sys_oper_log` VALUES (298, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"三江校区\"],\"dictValue\":[\"三江校区\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:06:37');
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"laf_category\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:07:09');
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"laf_release\"],\"tableComment\":[\"帖子表\"],\"className\":[\"LafRelease\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"251\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"帖子ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"relId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"252\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"relTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"253\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relDesc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"254\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系方式\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relContact\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"255\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"物品种类\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"relCateId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"laf_category\"],\"columns[5].columnId\":[\"256\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"线索时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"relTime\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:07:17');
INSERT INTO `sys_oper_log` VALUES (301, '帖子', 1, 'com.ruoyi.web.controller.wx.LafReleaseController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/add', '127.0.0.1', '内网IP', '{\"relTitle\":[\"222\"],\"relDesc\":[\"1\"],\"relContact\":[\"111\"],\"relCateId\":[\"2\"],\"relTime\":[\"2021-12-08\"],\"relCampus\":[\"不选择\"],\"createPlace\":[\"11212\"],\"createId\":[\"4\"],\"relImage\":[\"\"],\"relSatus\":[\"1\"],\"relFlag\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-08 11:46:18');
INSERT INTO `sys_oper_log` VALUES (302, '帖子', 3, 'com.ruoyi.web.controller.wx.LafReleaseController.remove()', 'POST', 1, 'admin', '南昌校区', '/wx/release/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"123\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-13 15:24:40');
INSERT INTO `sys_oper_log` VALUES (303, '帖子', 2, 'com.ruoyi.web.controller.wx.LafReleaseController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/edit', '127.0.0.1', '内网IP', '{\"relId\":[\"122\"],\"relTitle\":[\"11\"],\"relDesc\":[\"11\"],\"relContact\":[\"11\"],\"relCateId\":[\"2\"],\"relTime\":[\"\"],\"relCampus\":[\"南昌校区\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"/img/user/tiezi/oRwVTAZDqGrI2c3dd20939b4a139079b806989c939db.png\"],\"relSatus\":[\"1\"],\"relStar\":[\"40\"],\"relFlag\":[\"1\"],\"relFlow\":[\"50\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-13 15:25:00');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_announce\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:21:04');
INSERT INTO `sys_oper_log` VALUES (305, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"laf_announce\"],\"tableComment\":[\"WX公告\"],\"className\":[\"LafAnnounce\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"267\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"公告id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\" annId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"268\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"(1通知，2公告）\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"annTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"269\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"公告内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"annContent\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"summernote\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"270\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"271\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"发布时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"creatTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"272\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"内容图片\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"image\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"]', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:22:17');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"laf_announce\"],\"tableComment\":[\"WX公告\"],\"className\":[\"LafAnnounce\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"267\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"annId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"268\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"annTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"sys_notice_type\"],\"columns[2].columnId\":[\"269\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"annContent\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"summernote\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"270\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"271\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"发布时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"creatTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"272\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"图片\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"image\"],\"columns[5].isInsert', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:24:33');
INSERT INTO `sys_oper_log` VALUES (307, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_announce', '127.0.0.1', '内网IP', '\"laf_announce\"', NULL, 0, NULL, '2021-12-20 11:25:24');
INSERT INTO `sys_oper_log` VALUES (308, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"4\"],\"menuType\":[\"M\"],\"menuName\":[\"小程序公告\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-send-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:30:10');
INSERT INTO `sys_oper_log` VALUES (309, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"小程序公告\"],\"url\":[\"/wx/announce\"],\"target\":[\"menuItem\"],\"perms\":[\"wx:announce:list\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-send-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:32:00');
INSERT INTO `sys_oper_log` VALUES (310, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"小程序公告\"],\"url\":[\"/wx/announce\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-send-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:32:09');
INSERT INTO `sys_oper_log` VALUES (311, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/synchDb/laf_announce', '127.0.0.1', '内网IP', '\"laf_announce\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:41:24');
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_announce', '127.0.0.1', '内网IP', '\"laf_announce\"', NULL, 0, NULL, '2021-12-20 11:47:55');
INSERT INTO `sys_oper_log` VALUES (313, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"我<font color=\\\"#000000\\\" style=\\\"background-color: rgb(255, 255, 0);\\\">们失物招领系统即将上线！！！</font>\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:51:47');
INSERT INTO `sys_oper_log` VALUES (314, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"我<font color=\\\"#000000\\\" style=\\\"background-color: rgb(0, 0, 0);\\\">们失物招领系统即将上线！！！</font>\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:51:58');
INSERT INTO `sys_oper_log` VALUES (315, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"<span style=\\\"background-color: rgb(57, 132, 198);\\\">我<font color=\\\"#000000\\\" style=\\\"\\\">们失物招领系统即将上线！！！</font></span>\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:52:09');
INSERT INTO `sys_oper_log` VALUES (316, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"<span style=\\\"background-color: rgb(57, 132, 198);\\\">我<font color=\\\"#000000\\\" style=\\\"\\\">们失物招领系统即将上线！！！</font></span>\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:52:28');
INSERT INTO `sys_oper_log` VALUES (317, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"<font color=\\\"#ffffff\\\" style=\\\"background-color: rgb(0, 0, 0);\\\">我们失物招领系统即将上线！！！</font>\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:52:49');
INSERT INTO `sys_oper_log` VALUES (318, '小程序公告', 1, 'com.ruoyi.web.controller.wx.LafAnnounceController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/add', '127.0.0.1', '内网IP', '{\"annTitle\":[\"2\"],\"annContent\":[\"<p>你好</p>\"],\"creatTime\":[\"2021-12-02\"],\"image\":[\"\"],\"status\":[\"0\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ann_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Programs\\WXapp\\失物招领app\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafAnnounceMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafAnnounceMapper.insertLafAnnounce-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_announce          ( ann_title,             ann_content,                          creat_time,             image,             status )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'ann_id\' doesn\'t have a default value\n; Field \'ann_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ann_id\' doesn\'t have a default value', '2021-12-20 11:53:08');
INSERT INTO `sys_oper_log` VALUES (319, '小程序公告', 1, 'com.ruoyi.web.controller.wx.LafAnnounceController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/add', '127.0.0.1', '内网IP', '{\"annTitle\":[\"2\"],\"annContent\":[\"<p>你好</p>\"],\"creatTime\":[\"2021-12-02\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:53:44');
INSERT INTO `sys_oper_log` VALUES (320, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"我们失物招领系统即将上线！！！\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:55:53');
INSERT INTO `sys_oper_log` VALUES (321, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"2\"],\"annTitle\":[\"2\"],\"annContent\":[\"<p>你好</p>\"],\"creatTime\":[\"2021-12-02\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:55:58');
INSERT INTO `sys_oper_log` VALUES (322, '小程序公告', 3, 'com.ruoyi.web.controller.wx.LafAnnounceController.remove()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:56:03');
INSERT INTO `sys_oper_log` VALUES (323, '小程序公告', 1, 'com.ruoyi.web.controller.wx.LafAnnounceController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/add', '127.0.0.1', '内网IP', '{\"annTitle\":[\"2\"],\"annContent\":[\"<p>hello world</p>\"],\"creatTime\":[\"2021-11-28\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 11:56:21');
INSERT INTO `sys_oper_log` VALUES (324, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"我们失物招领系统即将上线！！！\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 15:30:45');
INSERT INTO `sys_oper_log` VALUES (325, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"3\"],\"annTitle\":[\"2\"],\"annContent\":[\"<p>hello world !</p>\"],\"creatTime\":[\"2021-11-28\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 15:30:54');
INSERT INTO `sys_oper_log` VALUES (326, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"3\"],\"annTitle\":[\"2\"],\"annContent\":[\"hello world !\"],\"creatTime\":[\"2021-11-28\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 15:31:39');
INSERT INTO `sys_oper_log` VALUES (327, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"laf_announce\"],\"tableComment\":[\"WX公告\"],\"className\":[\"LafAnnounce\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"274\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"公告id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"annId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"268\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"annTitle\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"sys_notice_type\"],\"columns[2].columnId\":[\"269\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"annContent\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"270\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"271\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"发布时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"creatTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"272\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"图片\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"image\"],\"columns[5].isInsert', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-20 15:32:34');
INSERT INTO `sys_oper_log` VALUES (328, '小程序公告', 1, 'com.ruoyi.web.controller.wx.LafAnnounceController.addSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/add', '127.0.0.1', '内网IP', '{\"annTitle\":[\"1\"],\"annContent\":[\"2022年祝大家新年快乐！！！！\"],\"creatTime\":[\"2021-12-21\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-21 20:43:37');
INSERT INTO `sys_oper_log` VALUES (329, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"3\"],\"annTitle\":[\"2\"],\"annContent\":[\"hello world !\"],\"creatTime\":[\"2021-11-28\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-21 20:43:42');
INSERT INTO `sys_oper_log` VALUES (330, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"laf_comment\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 15:54:03');
INSERT INTO `sys_oper_log` VALUES (331, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"laf_comment\"],\"tableComment\":[\"用户评论表\"],\"className\":[\"LafComment\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"275\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"评论id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"comId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"276\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父评论id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"277\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"帖子id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"comRelId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"278\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论者id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"comStuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"279\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"评论内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"comContent\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"280\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[5].isInsert\":[\"1\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:02:27');
INSERT INTO `sys_oper_log` VALUES (332, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_comment', '127.0.0.1', '内网IP', '\"laf_comment\"', NULL, 0, NULL, '2021-12-22 16:02:31');
INSERT INTO `sys_oper_log` VALUES (333, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"laf_comment\"],\"tableComment\":[\"用户评论表\"],\"className\":[\"LafComment\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"275\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"评论id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"comId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"276\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父评论id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"277\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"帖子id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"comRelId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"278\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论者id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"comStuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"279\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"评论内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"comContent\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"280\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[5].isInsert\":[\"1\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:05:30');
INSERT INTO `sys_oper_log` VALUES (334, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"laf_comment\"],\"tableComment\":[\"用户评论表\"],\"className\":[\"LafComment\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"275\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"评论id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"comId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"276\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父评论id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"277\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"帖子id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"comRelId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"278\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论者id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"comStuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"279\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"评论内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"comContent\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"280\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[5].isInsert\":[\"1\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:06:39');
INSERT INTO `sys_oper_log` VALUES (335, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_comment', '127.0.0.1', '内网IP', '\"laf_comment\"', NULL, 0, NULL, '2021-12-22 16:06:42');
INSERT INTO `sys_oper_log` VALUES (336, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"laf_comment\"],\"tableComment\":[\"用户评论表\"],\"className\":[\"LafComment\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"275\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"comId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"276\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"277\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"文章ID\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"comRelId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"278\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"comStuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"279\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"comContent\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"280\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评论时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5]', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:09:56');
INSERT INTO `sys_oper_log` VALUES (337, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_comment', '127.0.0.1', '内网IP', '\"laf_comment\"', NULL, 0, NULL, '2021-12-22 16:10:00');
INSERT INTO `sys_oper_log` VALUES (338, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"物品分类\"],\"url\":[\"/wx/category\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-cube\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:12:25');
INSERT INTO `sys_oper_log` VALUES (339, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"4\"],\"menuType\":[\"M\"],\"menuName\":[\"用户管理\"],\"url\":[\"/wx/student\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:12:38');
INSERT INTO `sys_oper_log` VALUES (340, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"4\"],\"menuType\":[\"M\"],\"menuName\":[\"帖子管理\"],\"url\":[\"/wx/release\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:12:54');
INSERT INTO `sys_oper_log` VALUES (341, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '南昌校区', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"评论管理\"],\"url\":[\"/wx/comment\"],\"target\":[\"menuItem\"],\"perms\":[\"wx:comment:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-volume-up\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:15:01');
INSERT INTO `sys_oper_log` VALUES (342, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"laf_comment\"],\"tableComment\":[\"用户评论表\"],\"className\":[\"LafComment\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"275\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"comId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"276\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"277\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"文章ID\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"comRelId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"278\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"comStuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"279\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"comContent\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"280\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评论时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:17:09');
INSERT INTO `sys_oper_log` VALUES (343, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/synchDb/laf_comment', '127.0.0.1', '内网IP', '\"laf_comment\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:17:19');
INSERT INTO `sys_oper_log` VALUES (344, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '南昌校区', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"laf_comment\"],\"tableComment\":[\"用户评论表\"],\"className\":[\"LafComment\"],\"functionAuthor\":[\"yang\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"275\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"comId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"276\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"paraentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"277\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"文章ID\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"comRelId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"278\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"comStuId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"279\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"comContent\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"280\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评论时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 16:17:23');
INSERT INTO `sys_oper_log` VALUES (345, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '南昌校区', '/tool/gen/download/laf_comment', '127.0.0.1', '内网IP', '\"laf_comment\"', NULL, 0, NULL, '2021-12-22 16:17:48');
INSERT INTO `sys_oper_log` VALUES (346, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"7\"],\"stuNick\":[\"薛之谦\"],\"stuName\":[\"王家康\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\"],\"stuStatus\":[\"1\"],\"openid\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 21:03:20');
INSERT INTO `sys_oper_log` VALUES (347, '学生', 2, 'com.ruoyi.web.controller.wx.LafStudentController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/student/edit', '127.0.0.1', '内网IP', '{\"stuId\":[\"8\"],\"stuNick\":[\"伍仟\"],\"stuName\":[\"吴亦凡\"],\"stuSex\":[\"1\"],\"stuXh\":[\"\"],\"stuPassword\":[\"\"],\"stuDepartment\":[\"\"],\"stuMajor\":[\"\"],\"stuClassname\":[\"\"],\"stuQq\":[\"\"],\"stuEmail\":[\"\"],\"stuImage\":[\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0ev3v9wh9pIrmqcmNxXzhib0X9eUBnhu3M4MmvE0n7icVgVohQwvIVibaDrthuXMNUVdEtVuI9y3ibQ/132\"],\"stuStatus\":[\"1\"],\"openid\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 21:03:24');
INSERT INTO `sys_oper_log` VALUES (348, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '南昌校区', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"yang\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"1347456958@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 21:04:06');
INSERT INTO `sys_oper_log` VALUES (349, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"createTime\":1640181165398,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'com_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Programs\\WXapp\\失物招领app\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafCommentMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafCommentMapper.insertLafComment-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_comment          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'com_id\' doesn\'t have a default value\n; Field \'com_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'com_id\' doesn\'t have a default value', '2021-12-22 21:52:45');
INSERT INTO `sys_oper_log` VALUES (350, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '//wx/comment/add', '192.168.3.29', '内网IP', '{\"createTime\":1640181252180,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'com_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Programs\\WXapp\\失物招领app\\web-laf\\yang-wxlaf\\target\\classes\\mapper\\wx\\LafCommentMapper.xml]\r\n### The error may involve com.ruoyi.wx.mapper.LafCommentMapper.insertLafComment-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into laf_comment          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'com_id\' doesn\'t have a default value\n; Field \'com_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'com_id\' doesn\'t have a default value', '2021-12-22 21:54:12');
INSERT INTO `sys_oper_log` VALUES (351, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '//wx/comment/add', '192.168.3.29', '内网IP', '{\"createTime\":1640181305726,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 21:55:05');
INSERT INTO `sys_oper_log` VALUES (352, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"createTime\":1640181322591,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 21:55:22');
INSERT INTO `sys_oper_log` VALUES (353, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"createTime\":1640181350567,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 21:55:50');
INSERT INTO `sys_oper_log` VALUES (354, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"1111\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640181769805,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:02:49');
INSERT INTO `sys_oper_log` VALUES (355, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"1121313\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640182004286,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:06:44');
INSERT INTO `sys_oper_log` VALUES (356, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"12321321\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640182151529,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:09:11');
INSERT INTO `sys_oper_log` VALUES (357, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"nihao\",\"comRelId\":120,\"comStuId\":4,\"createTime\":1640182180193,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:09:40');
INSERT INTO `sys_oper_log` VALUES (358, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"haha\",\"comRelId\":120,\"comStuId\":4,\"createTime\":1640182382702,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:13:02');
INSERT INTO `sys_oper_log` VALUES (359, '帖子留言', 3, 'com.ruoyi.web.controller.wx.LafCommentController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/comment/remove/8', '127.0.0.1', '内网IP', '8', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:14:10');
INSERT INTO `sys_oper_log` VALUES (360, '帖子留言', 3, 'com.ruoyi.web.controller.wx.LafCommentController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/comment/remove/7', '127.0.0.1', '内网IP', '7', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:14:12');
INSERT INTO `sys_oper_log` VALUES (361, '帖子留言', 3, 'com.ruoyi.web.controller.wx.LafCommentController.remove()', 'GET', 1, 'admin', '南昌校区', '/wx/comment/remove/6', '127.0.0.1', '内网IP', '6', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:14:14');
INSERT INTO `sys_oper_log` VALUES (362, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"117\"],\"dictLabel\":[\"不选择\"],\"dictValue\":[\"不选择\"],\"dictType\":[\"laf_campus\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:24:03');
INSERT INTO `sys_oper_log` VALUES (363, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"123131\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183091586,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:24:51');
INSERT INTO `sys_oper_log` VALUES (364, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafCommentController.addSave()', 'POST', 1, NULL, NULL, '/wx/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"武切维奇翁\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183102228,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:25:02');
INSERT INTO `sys_oper_log` VALUES (365, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '南昌校区', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"113\"],\"dictLabel\":[\"未选择\"],\"dictValue\":[\"1\"],\"dictType\":[\"laf_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:25:51');
INSERT INTO `sys_oper_log` VALUES (366, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"12321313\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183318808,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:28:38');
INSERT INTO `sys_oper_log` VALUES (367, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"12321313\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183328828,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:28:48');
INSERT INTO `sys_oper_log` VALUES (368, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"12313131\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183461810,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:01');
INSERT INTO `sys_oper_log` VALUES (369, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"123123\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183483957,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:23');
INSERT INTO `sys_oper_log` VALUES (370, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdad\",\"comRelId\":118,\"comStuId\":4,\"createTime\":1640183499209,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:39');
INSERT INTO `sys_oper_log` VALUES (371, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdadada\",\"comRelId\":118,\"comStuId\":4,\"createTime\":1640183505675,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:45');
INSERT INTO `sys_oper_log` VALUES (372, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdadad\",\"comRelId\":118,\"comStuId\":4,\"createTime\":1640183508815,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:48');
INSERT INTO `sys_oper_log` VALUES (373, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdasd\",\"comRelId\":116,\"comStuId\":4,\"createTime\":1640183514470,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:54');
INSERT INTO `sys_oper_log` VALUES (374, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdasda\",\"comRelId\":116,\"comStuId\":4,\"createTime\":1640183516416,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:56');
INSERT INTO `sys_oper_log` VALUES (375, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdasd\",\"comRelId\":116,\"comStuId\":4,\"createTime\":1640183518261,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:31:58');
INSERT INTO `sys_oper_log` VALUES (376, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdasdad\",\"comRelId\":116,\"comStuId\":4,\"createTime\":1640183520630,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:32:00');
INSERT INTO `sys_oper_log` VALUES (377, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdada\",\"comRelId\":116,\"comStuId\":4,\"createTime\":1640183523560,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:32:03');
INSERT INTO `sys_oper_log` VALUES (378, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdasd\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183567691,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:32:47');
INSERT INTO `sys_oper_log` VALUES (379, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"asdad\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640183576562,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:32:56');
INSERT INTO `sys_oper_log` VALUES (380, '帖子留言', 1, 'com.ruoyi.web.controller.wx.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.100.1', '内网IP', '{\"comContent\":\"sadads\",\"comRelId\":118,\"comStuId\":4,\"createTime\":1640183591660,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-22 22:33:11');
INSERT INTO `sys_oper_log` VALUES (381, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1111\",\"comRelId\":119,\"comStuId\":4,\"createTime\":1640222368199,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:19:28');
INSERT INTO `sys_oper_log` VALUES (382, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"111\",\"comRelId\":119,\"comStuId\":4,\"createTime\":1640222370845,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:19:30');
INSERT INTO `sys_oper_log` VALUES (383, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"233232\",\"comRelId\":119,\"comStuId\":4,\"createTime\":1640222373187,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:19:33');
INSERT INTO `sys_oper_log` VALUES (384, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"12312321214\",\"comRelId\":119,\"comStuId\":4,\"createTime\":1640222375510,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:19:35');
INSERT INTO `sys_oper_log` VALUES (385, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"haha\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640222426774,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:20:26');
INSERT INTO `sys_oper_log` VALUES (386, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"nihao\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640222430854,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:20:30');
INSERT INTO `sys_oper_log` VALUES (387, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1213\",\"comRelId\":119,\"comStuId\":4,\"createTime\":1640222467575,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:21:07');
INSERT INTO `sys_oper_log` VALUES (388, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1214\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640224453742,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:54:13');
INSERT INTO `sys_oper_log` VALUES (389, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"213123\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640224606300,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:56:46');
INSERT INTO `sys_oper_log` VALUES (390, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1231231\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640224609463,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:56:49');
INSERT INTO `sys_oper_log` VALUES (391, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1231\",\"comRelId\":117,\"comStuId\":4,\"createTime\":1640224730032,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 09:58:50');
INSERT INTO `sys_oper_log` VALUES (392, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"111\",\"comRelId\":118,\"comStuId\":4,\"createTime\":1640224836172,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:00:36');
INSERT INTO `sys_oper_log` VALUES (393, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1231231\",\"comRelId\":118,\"comStuId\":4,\"createTime\":1640224843214,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:00:43');
INSERT INTO `sys_oper_log` VALUES (394, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"111\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640224853765,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:00:53');
INSERT INTO `sys_oper_log` VALUES (395, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"121\",\"comRelId\":121,\"comStuId\":4,\"createTime\":1640224863677,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:01:03');
INSERT INTO `sys_oper_log` VALUES (396, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"nihao\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640224879213,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:01:19');
INSERT INTO `sys_oper_log` VALUES (397, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640226598400,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:29:58');
INSERT INTO `sys_oper_log` VALUES (398, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove/', '192.168.3.29', '内网IP', '{\"comId\":[\"37\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:38:19');
INSERT INTO `sys_oper_log` VALUES (399, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"47\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:48:37');
INSERT INTO `sys_oper_log` VALUES (400, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"47\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-12-23 10:48:43');
INSERT INTO `sys_oper_log` VALUES (401, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:49:58');
INSERT INTO `sys_oper_log` VALUES (402, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:50:12');
INSERT INTO `sys_oper_log` VALUES (403, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:51:20');
INSERT INTO `sys_oper_log` VALUES (404, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640227997361,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:53:17');
INSERT INTO `sys_oper_log` VALUES (405, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"1\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640228269550,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:57:49');
INSERT INTO `sys_oper_log` VALUES (406, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640228388152,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 10:59:48');
INSERT INTO `sys_oper_log` VALUES (407, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640228457214,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:00:57');
INSERT INTO `sys_oper_log` VALUES (408, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640228460575,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:01:00');
INSERT INTO `sys_oper_log` VALUES (409, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640228462473,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:01:02');
INSERT INTO `sys_oper_log` VALUES (410, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640228463843,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:01:03');
INSERT INTO `sys_oper_log` VALUES (411, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"54\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:01:06');
INSERT INTO `sys_oper_log` VALUES (412, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:01:45');
INSERT INTO `sys_oper_log` VALUES (413, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:04:36');
INSERT INTO `sys_oper_log` VALUES (414, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"19\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:04:44');
INSERT INTO `sys_oper_log` VALUES (415, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"49\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:06:43');
INSERT INTO `sys_oper_log` VALUES (416, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"51\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:06:45');
INSERT INTO `sys_oper_log` VALUES (417, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:06:51');
INSERT INTO `sys_oper_log` VALUES (418, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"52\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:06:57');
INSERT INTO `sys_oper_log` VALUES (419, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"50\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:07:01');
INSERT INTO `sys_oper_log` VALUES (420, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"29\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:07:03');
INSERT INTO `sys_oper_log` VALUES (421, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"48\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:07:07');
INSERT INTO `sys_oper_log` VALUES (422, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"53\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:07:08');
INSERT INTO `sys_oper_log` VALUES (423, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"哈哈屁啊\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640229857806,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:24:17');
INSERT INTO `sys_oper_log` VALUES (424, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"哈哈pi\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640230225161,\"paraentId\":5,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:30:25');
INSERT INTO `sys_oper_log` VALUES (425, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:31:59');
INSERT INTO `sys_oper_log` VALUES (426, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"28\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:32:01');
INSERT INTO `sys_oper_log` VALUES (427, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"jiao 啥\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640230331968,\"paraentId\":15,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 11:32:11');
INSERT INTO `sys_oper_log` VALUES (428, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:41:36');
INSERT INTO `sys_oper_log` VALUES (429, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"46\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:41:45');
INSERT INTO `sys_oper_log` VALUES (430, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"38\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:41:48');
INSERT INTO `sys_oper_log` VALUES (431, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"55\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:52:33');
INSERT INTO `sys_oper_log` VALUES (432, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"56\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:52:45');
INSERT INTO `sys_oper_log` VALUES (433, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"40\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:23');
INSERT INTO `sys_oper_log` VALUES (434, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"36\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:25');
INSERT INTO `sys_oper_log` VALUES (435, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:27');
INSERT INTO `sys_oper_log` VALUES (436, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:29');
INSERT INTO `sys_oper_log` VALUES (437, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"45\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:32');
INSERT INTO `sys_oper_log` VALUES (438, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"哈哈啥啊\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235347628,\"paraentId\":5,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:47');
INSERT INTO `sys_oper_log` VALUES (439, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"57\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:51');
INSERT INTO `sys_oper_log` VALUES (440, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"hi\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235356899,\"paraentId\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:55:56');
INSERT INTO `sys_oper_log` VALUES (441, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"11\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235421529,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 12:57:01');
INSERT INTO `sys_oper_log` VALUES (442, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"叫啥呢\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235677161,\"paraentId\":5,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 13:01:17');
INSERT INTO `sys_oper_log` VALUES (443, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"nihao\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235720568,\"paraentId\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 13:02:00');
INSERT INTO `sys_oper_log` VALUES (444, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '127.0.0.1', '内网IP', '{\"comId\":[\"59\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 13:04:01');
INSERT INTO `sys_oper_log` VALUES (445, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"nihao\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235850174,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 13:04:10');
INSERT INTO `sys_oper_log` VALUES (446, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '127.0.0.1', '内网IP', '{\"comContent\":\"hello\",\"comRelId\":122,\"comStuId\":4,\"createTime\":1640235853849,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 13:04:13');
INSERT INTO `sys_oper_log` VALUES (447, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '192.168.3.220', '内网IP', '{\"comId\":[\"63\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 18:35:43');
INSERT INTO `sys_oper_log` VALUES (448, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"4\"],\"annTitle\":[\"1\"],\"annContent\":[\"2022年祝大家新年快乐！！！！\"],\"creatTime\":[\"2021-12-21\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:12:05');
INSERT INTO `sys_oper_log` VALUES (449, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"我们失物招领系统即将上线！！！\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:12:08');
INSERT INTO `sys_oper_log` VALUES (450, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"1\"],\"annTitle\":[\"1\"],\"annContent\":[\"我们失物招领系统即将上线！！！\"],\"creatTime\":[\"2021-10-08\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:12:42');
INSERT INTO `sys_oper_log` VALUES (451, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"4\"],\"annTitle\":[\"1\"],\"annContent\":[\"2022年祝大家新年快乐！！！！\"],\"creatTime\":[\"2021-12-21\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:12:46');
INSERT INTO `sys_oper_log` VALUES (452, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"4\"],\"annTitle\":[\"1\"],\"annContent\":[\"2022年祝大家新年快乐！！！！\"],\"creatTime\":[\"2021-12-21\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:13:04');
INSERT INTO `sys_oper_log` VALUES (453, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"3\"],\"annTitle\":[\"2\"],\"annContent\":[\"hello world !\"],\"creatTime\":[\"2021-11-28\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:13:06');
INSERT INTO `sys_oper_log` VALUES (454, '帖子', 2, 'com.ruoyi.web.controller.wx.LafReleaseController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/edit', '127.0.0.1', '内网IP', '{\"relId\":[\"122\"],\"relTitle\":[\"test\"],\"relDesc\":[\"11\"],\"relContact\":[\"11\"],\"relCateId\":[\"2\"],\"relTime\":[\"2021-12-13\"],\"relCampus\":[\"南昌校区\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"/img/user/tiezi/oRwVTAZDqGrI2c3dd20939b4a139079b806989c939db.png\"],\"relSatus\":[\"1\"],\"relStar\":[\"40\"],\"relFlag\":[\"1\"],\"relFlow\":[\"50\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:15:22');
INSERT INTO `sys_oper_log` VALUES (455, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"3\"],\"annTitle\":[\"2\"],\"annContent\":[\"hello world !\"],\"creatTime\":[\"2021-11-28\"],\"image\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:18:59');
INSERT INTO `sys_oper_log` VALUES (456, '小程序公告', 2, 'com.ruoyi.web.controller.wx.LafAnnounceController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/announce/edit', '127.0.0.1', '内网IP', '{\"annId\":[\"4\"],\"annTitle\":[\"1\"],\"annContent\":[\"2022年祝大家新年快乐！！！！\"],\"creatTime\":[\"2021-12-21\"],\"image\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:19:02');
INSERT INTO `sys_oper_log` VALUES (457, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.224', '内网IP', '{\"comContent\":\"许世平大帅比\",\"comRelId\":120,\"comStuId\":6,\"createTime\":1640259985236,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:46:25');
INSERT INTO `sys_oper_log` VALUES (458, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"许世平傻逼\",\"comRelId\":120,\"comStuId\":4,\"createTime\":1640259985913,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:46:25');
INSERT INTO `sys_oper_log` VALUES (459, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.224', '内网IP', '{\"comContent\":\"大傻逼\",\"comRelId\":120,\"comStuId\":6,\"createTime\":1640260020598,\"paraentId\":66,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:47:00');
INSERT INTO `sys_oper_log` VALUES (460, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.224', '内网IP', '{\"comContent\":\"1\",\"comRelId\":120,\"comStuId\":6,\"createTime\":1640260035289,\"paraentId\":66,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:47:15');
INSERT INTO `sys_oper_log` VALUES (461, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.224', '内网IP', '{\"comContent\":\"1\",\"comRelId\":120,\"comStuId\":6,\"createTime\":1640260040995,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:47:21');
INSERT INTO `sys_oper_log` VALUES (462, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"你好\",\"comRelId\":120,\"comStuId\":4,\"createTime\":1640260057427,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:47:37');
INSERT INTO `sys_oper_log` VALUES (463, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '192.168.3.224', '内网IP', '{\"comId\":[\"65\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:48:04');
INSERT INTO `sys_oper_log` VALUES (464, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"我\",\"comRelId\":125,\"comStuId\":4,\"createTime\":1640260579590,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:56:19');
INSERT INTO `sys_oper_log` VALUES (465, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"2\",\"comRelId\":125,\"comStuId\":4,\"createTime\":1640260584761,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:56:24');
INSERT INTO `sys_oper_log` VALUES (466, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"3\",\"comRelId\":125,\"comStuId\":4,\"createTime\":1640260682496,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 19:58:02');
INSERT INTO `sys_oper_log` VALUES (467, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"5\",\"comRelId\":125,\"comStuId\":4,\"createTime\":1640260805944,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:00:05');
INSERT INTO `sys_oper_log` VALUES (468, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"8\",\"comRelId\":125,\"comStuId\":4,\"createTime\":1640260839034,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:00:39');
INSERT INTO `sys_oper_log` VALUES (469, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"q\",\"comRelId\":124,\"comStuId\":4,\"createTime\":1640260938291,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:02:18');
INSERT INTO `sys_oper_log` VALUES (470, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"你好\",\"comRelId\":124,\"comStuId\":4,\"createTime\":1640261043453,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:04:03');
INSERT INTO `sys_oper_log` VALUES (471, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"33\",\"comRelId\":124,\"comStuId\":4,\"createTime\":1640261066608,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:04:26');
INSERT INTO `sys_oper_log` VALUES (472, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"44\",\"comRelId\":124,\"comStuId\":4,\"createTime\":1640261104438,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:05:04');
INSERT INTO `sys_oper_log` VALUES (473, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"1\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640261855516,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:17:35');
INSERT INTO `sys_oper_log` VALUES (474, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"2\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640261879118,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:17:59');
INSERT INTO `sys_oper_log` VALUES (475, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"11\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640262119860,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:21:59');
INSERT INTO `sys_oper_log` VALUES (476, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"22\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640262121576,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:22:01');
INSERT INTO `sys_oper_log` VALUES (477, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"33\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640262123166,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:22:03');
INSERT INTO `sys_oper_log` VALUES (478, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"11\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640262125103,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:22:05');
INSERT INTO `sys_oper_log` VALUES (479, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '192.168.3.29', '内网IP', '{\"comId\":[\"83\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:22:41');
INSERT INTO `sys_oper_log` VALUES (480, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"1\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640262248661,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:24:08');
INSERT INTO `sys_oper_log` VALUES (481, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"26565\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640262375715,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:26:15');
INSERT INTO `sys_oper_log` VALUES (482, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.29', '内网IP', '{\"comContent\":\"789\",\"comRelId\":129,\"comStuId\":4,\"createTime\":1640264340865,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 20:59:00');
INSERT INTO `sys_oper_log` VALUES (483, '帖子', 2, 'com.ruoyi.web.controller.wx.LafReleaseController.editSave()', 'POST', 1, 'admin', '南昌校区', '/wx/release/edit', '127.0.0.1', '内网IP', '{\"relId\":[\"131\"],\"relTitle\":[\"test1.0.0\"],\"relDesc\":[\"hello，world\"],\"relContact\":[\"123456\"],\"relCateId\":[\"3\"],\"relTime\":[\"\"],\"relCampus\":[\"不选择\"],\"createPlace\":[\"\"],\"createId\":[\"4\"],\"relImage\":[\"/img/user/tiezi/tmp_588a1801ced54e04b0f1e441106bc741.jpg\"],\"relSatus\":[\"1\"],\"relStar\":[\"0\"],\"relFlag\":[\"1\"],\"relFlow\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:04:29');
INSERT INTO `sys_oper_log` VALUES (484, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"2\",\"comRelId\":131,\"comStuId\":4,\"createTime\":1640264679297,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:04:39');
INSERT INTO `sys_oper_log` VALUES (485, '帖子留言', 3, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.remove()', 'GET', 1, NULL, NULL, '/wx/info/comment/remove', '192.168.3.220', '内网IP', '{\"comId\":[\"89\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:04:41');
INSERT INTO `sys_oper_log` VALUES (486, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"2\",\"comRelId\":131,\"comStuId\":4,\"createTime\":1640264684810,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:04:44');
INSERT INTO `sys_oper_log` VALUES (487, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"2@\",\"comRelId\":133,\"comStuId\":4,\"createTime\":1640266230144,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:30:30');
INSERT INTO `sys_oper_log` VALUES (488, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"22\",\"comRelId\":133,\"comStuId\":4,\"createTime\":1640266344261,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:32:24');
INSERT INTO `sys_oper_log` VALUES (489, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.224', '内网IP', '{\"comContent\":\"1\",\"comRelId\":134,\"comStuId\":6,\"createTime\":1640267832255,\"paraentId\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:57:12');
INSERT INTO `sys_oper_log` VALUES (490, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.220', '内网IP', '{\"comContent\":\"干啥\",\"comRelId\":134,\"comStuId\":4,\"createTime\":1640267839930,\"paraentId\":93,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:57:19');
INSERT INTO `sys_oper_log` VALUES (491, '帖子留言', 1, 'com.ruoyi.web.controller.wx.web.LafReleaseInfoController.addSave()', 'POST', 1, NULL, NULL, '/wx/info/comment/add', '192.168.3.224', '内网IP', '{\"comContent\":\"哈哈\",\"comRelId\":134,\"comStuId\":6,\"createTime\":1640267848334,\"paraentId\":94,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-23 21:57:28');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '首席执行官', 1, '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:29:36', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-09-22 15:36:14', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'guest', '普通游客', 4, '0', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:28:22', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2021-09-22 15:36:14', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2021-09-22 15:36:14', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'yang', '00', '1347456958@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2021-12-23 21:03:56', '2021-09-22 15:36:14', 'admin', '2021-09-22 15:36:14', '', '2021-12-23 21:03:56', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '许世平', '00', 'ry@qq.com', '15666666666', '2', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2021-09-22 15:36:14', '2021-09-22 15:36:14', 'admin', '2021-09-22 15:36:14', 'admin', '2021-09-22 18:30:29', '开发人员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
