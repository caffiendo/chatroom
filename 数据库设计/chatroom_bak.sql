/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 127.0.0.1:3306
 Source Schema         : chatroom

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 21/10/2018 23:48:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int(11) NOT NULL COMMENT '城市ID',
  `city_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市名称',
  `city_province_id` int(11) NULL DEFAULT NULL COMMENT '城市所属省份ID',
  PRIMARY KEY (`city_id`) USING BTREE,
  INDEX `city_province`(`city_province_id`) USING BTREE,
  CONSTRAINT `city_province` FOREIGN KEY (`city_province_id`) REFERENCES `province` (`province_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '北京市', 1);
INSERT INTO `city` VALUES (2, '天津市', 2);
INSERT INTO `city` VALUES (3, '上海市', 3);
INSERT INTO `city` VALUES (4, '重庆市', 4);
INSERT INTO `city` VALUES (5, '石家庄市', 5);
INSERT INTO `city` VALUES (6, '唐山市', 5);
INSERT INTO `city` VALUES (7, '秦皇岛市', 5);
INSERT INTO `city` VALUES (8, '邯郸市', 5);
INSERT INTO `city` VALUES (9, '邢台市', 5);
INSERT INTO `city` VALUES (10, '保定市', 5);
INSERT INTO `city` VALUES (11, '张家口市', 5);
INSERT INTO `city` VALUES (12, '承德市', 5);
INSERT INTO `city` VALUES (13, '沧州市', 5);
INSERT INTO `city` VALUES (14, '廊坊市', 5);
INSERT INTO `city` VALUES (15, '衡水市', 5);
INSERT INTO `city` VALUES (16, '太原市', 6);
INSERT INTO `city` VALUES (17, '大同市', 6);
INSERT INTO `city` VALUES (18, '阳泉市', 6);
INSERT INTO `city` VALUES (19, '长治市', 6);
INSERT INTO `city` VALUES (20, '晋城市', 6);
INSERT INTO `city` VALUES (21, '朔州市', 6);
INSERT INTO `city` VALUES (22, '晋中市', 6);
INSERT INTO `city` VALUES (23, '运城市', 6);
INSERT INTO `city` VALUES (24, '忻州市', 6);
INSERT INTO `city` VALUES (25, '临汾市', 6);
INSERT INTO `city` VALUES (26, '吕梁市', 6);
INSERT INTO `city` VALUES (27, '台北市', 7);
INSERT INTO `city` VALUES (28, '高雄市', 7);
INSERT INTO `city` VALUES (29, '基隆市', 7);
INSERT INTO `city` VALUES (30, '台中市', 7);
INSERT INTO `city` VALUES (31, '台南市', 7);
INSERT INTO `city` VALUES (32, '新竹市', 7);
INSERT INTO `city` VALUES (33, '嘉义市', 7);
INSERT INTO `city` VALUES (34, '台北县', 7);
INSERT INTO `city` VALUES (35, '宜兰县', 7);
INSERT INTO `city` VALUES (36, '桃园县', 7);
INSERT INTO `city` VALUES (37, '新竹县', 7);
INSERT INTO `city` VALUES (38, '苗栗县', 7);
INSERT INTO `city` VALUES (39, '台中县', 7);
INSERT INTO `city` VALUES (40, '彰化县', 7);
INSERT INTO `city` VALUES (41, '南投县', 7);
INSERT INTO `city` VALUES (42, '云林县', 7);
INSERT INTO `city` VALUES (43, '嘉义县', 7);
INSERT INTO `city` VALUES (44, '台南县', 7);
INSERT INTO `city` VALUES (45, '高雄县', 7);
INSERT INTO `city` VALUES (46, '屏东县', 7);
INSERT INTO `city` VALUES (47, '澎湖县', 7);
INSERT INTO `city` VALUES (48, '台东县', 7);
INSERT INTO `city` VALUES (49, '花莲县', 7);
INSERT INTO `city` VALUES (50, '沈阳市', 8);
INSERT INTO `city` VALUES (51, '大连市', 8);
INSERT INTO `city` VALUES (52, '鞍山市', 8);
INSERT INTO `city` VALUES (53, '抚顺市', 8);
INSERT INTO `city` VALUES (54, '本溪市', 8);
INSERT INTO `city` VALUES (55, '丹东市', 8);
INSERT INTO `city` VALUES (56, '锦州市', 8);
INSERT INTO `city` VALUES (57, '营口市', 8);
INSERT INTO `city` VALUES (58, '阜新市', 8);
INSERT INTO `city` VALUES (59, '辽阳市', 8);
INSERT INTO `city` VALUES (60, '盘锦市', 8);
INSERT INTO `city` VALUES (61, '铁岭市', 8);
INSERT INTO `city` VALUES (62, '朝阳市', 8);
INSERT INTO `city` VALUES (63, '葫芦岛市', 8);
INSERT INTO `city` VALUES (64, '长春市', 9);
INSERT INTO `city` VALUES (65, '吉林市', 9);
INSERT INTO `city` VALUES (66, '四平市', 9);
INSERT INTO `city` VALUES (67, '辽源市', 9);
INSERT INTO `city` VALUES (68, '通化市', 9);
INSERT INTO `city` VALUES (69, '白山市', 9);
INSERT INTO `city` VALUES (70, '松原市', 9);
INSERT INTO `city` VALUES (71, '白城市', 9);
INSERT INTO `city` VALUES (72, '延边朝鲜族自治州', 9);
INSERT INTO `city` VALUES (73, '哈尔滨市', 10);
INSERT INTO `city` VALUES (74, '齐齐哈尔市', 10);
INSERT INTO `city` VALUES (75, '鹤岗市', 10);
INSERT INTO `city` VALUES (76, '双鸭山市', 10);
INSERT INTO `city` VALUES (77, '鸡西市', 10);
INSERT INTO `city` VALUES (78, '大庆市', 10);
INSERT INTO `city` VALUES (79, '伊春市', 10);
INSERT INTO `city` VALUES (80, '牡丹江市', 10);
INSERT INTO `city` VALUES (81, '佳木斯市', 10);
INSERT INTO `city` VALUES (82, '七台河市', 10);
INSERT INTO `city` VALUES (83, '黑河市', 10);
INSERT INTO `city` VALUES (84, '绥化市', 10);
INSERT INTO `city` VALUES (85, '大兴安岭地区', 10);
INSERT INTO `city` VALUES (86, '南京市', 11);
INSERT INTO `city` VALUES (87, '无锡市', 11);
INSERT INTO `city` VALUES (88, '徐州市', 11);
INSERT INTO `city` VALUES (89, '常州市', 11);
INSERT INTO `city` VALUES (90, '苏州市', 11);
INSERT INTO `city` VALUES (91, '南通市', 11);
INSERT INTO `city` VALUES (92, '连云港市', 11);
INSERT INTO `city` VALUES (93, '淮安市', 11);
INSERT INTO `city` VALUES (94, '盐城市', 11);
INSERT INTO `city` VALUES (95, '扬州市', 11);
INSERT INTO `city` VALUES (96, '镇江市', 11);
INSERT INTO `city` VALUES (97, '泰州市', 11);
INSERT INTO `city` VALUES (98, '宿迁市', 11);
INSERT INTO `city` VALUES (99, '杭州市', 12);
INSERT INTO `city` VALUES (100, '宁波市', 12);
INSERT INTO `city` VALUES (101, '温州市', 12);
INSERT INTO `city` VALUES (102, '嘉兴市', 12);
INSERT INTO `city` VALUES (103, '湖州市', 12);
INSERT INTO `city` VALUES (104, '绍兴市', 12);
INSERT INTO `city` VALUES (105, '金华市', 12);
INSERT INTO `city` VALUES (106, '衢州市', 12);
INSERT INTO `city` VALUES (107, '舟山市', 12);
INSERT INTO `city` VALUES (108, '台州市', 12);
INSERT INTO `city` VALUES (109, '丽水市', 12);
INSERT INTO `city` VALUES (110, '合肥市', 13);
INSERT INTO `city` VALUES (111, '芜湖市', 13);
INSERT INTO `city` VALUES (112, '蚌埠市', 13);
INSERT INTO `city` VALUES (113, '淮南市', 13);
INSERT INTO `city` VALUES (114, '马鞍山市', 13);
INSERT INTO `city` VALUES (115, '淮北市', 13);
INSERT INTO `city` VALUES (116, '铜陵市', 13);
INSERT INTO `city` VALUES (117, '安庆市', 13);
INSERT INTO `city` VALUES (118, '黄山市', 13);
INSERT INTO `city` VALUES (119, '滁州市', 13);
INSERT INTO `city` VALUES (120, '阜阳市', 13);
INSERT INTO `city` VALUES (121, '宿州市', 13);
INSERT INTO `city` VALUES (122, '巢湖市', 13);
INSERT INTO `city` VALUES (123, '六安市', 13);
INSERT INTO `city` VALUES (124, '亳州市', 13);
INSERT INTO `city` VALUES (125, '池州市', 13);
INSERT INTO `city` VALUES (126, '宣城市', 13);
INSERT INTO `city` VALUES (127, '福州市', 14);
INSERT INTO `city` VALUES (128, '厦门市', 14);
INSERT INTO `city` VALUES (129, '莆田市', 14);
INSERT INTO `city` VALUES (130, '三明市', 14);
INSERT INTO `city` VALUES (131, '泉州市', 14);
INSERT INTO `city` VALUES (132, '漳州市', 14);
INSERT INTO `city` VALUES (133, '南平市', 14);
INSERT INTO `city` VALUES (134, '龙岩市', 14);
INSERT INTO `city` VALUES (135, '宁德市', 14);
INSERT INTO `city` VALUES (136, '南昌市', 15);
INSERT INTO `city` VALUES (137, '景德镇市', 15);
INSERT INTO `city` VALUES (138, '萍乡市', 15);
INSERT INTO `city` VALUES (139, '九江市', 15);
INSERT INTO `city` VALUES (140, '新余市', 15);
INSERT INTO `city` VALUES (141, '鹰潭市', 15);
INSERT INTO `city` VALUES (142, '赣州市', 15);
INSERT INTO `city` VALUES (143, '吉安市', 15);
INSERT INTO `city` VALUES (144, '宜春市', 15);
INSERT INTO `city` VALUES (145, '抚州市', 15);
INSERT INTO `city` VALUES (146, '上饶市', 15);
INSERT INTO `city` VALUES (147, '济南市', 16);
INSERT INTO `city` VALUES (148, '青岛市', 16);
INSERT INTO `city` VALUES (149, '淄博市', 16);
INSERT INTO `city` VALUES (150, '枣庄市', 16);
INSERT INTO `city` VALUES (151, '东营市', 16);
INSERT INTO `city` VALUES (152, '烟台市', 16);
INSERT INTO `city` VALUES (153, '潍坊市', 16);
INSERT INTO `city` VALUES (154, '济宁市', 16);
INSERT INTO `city` VALUES (155, '泰安市', 16);
INSERT INTO `city` VALUES (156, '威海市', 16);
INSERT INTO `city` VALUES (157, '日照市', 16);
INSERT INTO `city` VALUES (158, '莱芜市', 16);
INSERT INTO `city` VALUES (159, '临沂市', 16);
INSERT INTO `city` VALUES (160, '德州市', 16);
INSERT INTO `city` VALUES (161, '聊城市', 16);
INSERT INTO `city` VALUES (162, '滨州市', 16);
INSERT INTO `city` VALUES (163, '菏泽市', 16);
INSERT INTO `city` VALUES (164, '郑州市', 17);
INSERT INTO `city` VALUES (165, '开封市', 17);
INSERT INTO `city` VALUES (166, '洛阳市', 17);
INSERT INTO `city` VALUES (167, '平顶山市', 17);
INSERT INTO `city` VALUES (168, '安阳市', 17);
INSERT INTO `city` VALUES (169, '鹤壁市', 17);
INSERT INTO `city` VALUES (170, '新乡市', 17);
INSERT INTO `city` VALUES (171, '焦作市', 17);
INSERT INTO `city` VALUES (172, '濮阳市', 17);
INSERT INTO `city` VALUES (173, '许昌市', 17);
INSERT INTO `city` VALUES (174, '漯河市', 17);
INSERT INTO `city` VALUES (175, '三门峡市', 17);
INSERT INTO `city` VALUES (176, '南阳市', 17);
INSERT INTO `city` VALUES (177, '商丘市', 17);
INSERT INTO `city` VALUES (178, '信阳市', 17);
INSERT INTO `city` VALUES (179, '周口市', 17);
INSERT INTO `city` VALUES (180, '驻马店市', 17);
INSERT INTO `city` VALUES (181, '济源市', 17);
INSERT INTO `city` VALUES (182, '武汉市', 18);
INSERT INTO `city` VALUES (183, '黄石市', 18);
INSERT INTO `city` VALUES (184, '十堰市', 18);
INSERT INTO `city` VALUES (185, '荆州市', 18);
INSERT INTO `city` VALUES (186, '宜昌市', 18);
INSERT INTO `city` VALUES (187, '襄樊市', 18);
INSERT INTO `city` VALUES (188, '鄂州市', 18);
INSERT INTO `city` VALUES (189, '荆门市', 18);
INSERT INTO `city` VALUES (190, '孝感市', 18);
INSERT INTO `city` VALUES (191, '黄冈市', 18);
INSERT INTO `city` VALUES (192, '咸宁市', 18);
INSERT INTO `city` VALUES (193, '随州市', 18);
INSERT INTO `city` VALUES (194, '仙桃市', 18);
INSERT INTO `city` VALUES (195, '天门市', 18);
INSERT INTO `city` VALUES (196, '潜江市', 18);
INSERT INTO `city` VALUES (197, '神农架林区', 18);
INSERT INTO `city` VALUES (198, '恩施土家族苗族自治州', 18);
INSERT INTO `city` VALUES (199, '长沙市', 19);
INSERT INTO `city` VALUES (200, '株洲市', 19);
INSERT INTO `city` VALUES (201, '湘潭市', 19);
INSERT INTO `city` VALUES (202, '衡阳市', 19);
INSERT INTO `city` VALUES (203, '邵阳市', 19);
INSERT INTO `city` VALUES (204, '岳阳市', 19);
INSERT INTO `city` VALUES (205, '常德市', 19);
INSERT INTO `city` VALUES (206, '张家界市', 19);
INSERT INTO `city` VALUES (207, '益阳市', 19);
INSERT INTO `city` VALUES (208, '郴州市', 19);
INSERT INTO `city` VALUES (209, '永州市', 19);
INSERT INTO `city` VALUES (210, '怀化市', 19);
INSERT INTO `city` VALUES (211, '娄底市', 19);
INSERT INTO `city` VALUES (212, '湘西土家族苗族自治州', 19);
INSERT INTO `city` VALUES (213, '广州市', 20);
INSERT INTO `city` VALUES (214, '深圳市', 20);
INSERT INTO `city` VALUES (215, '珠海市', 20);
INSERT INTO `city` VALUES (216, '汕头市', 20);
INSERT INTO `city` VALUES (217, '韶关市', 20);
INSERT INTO `city` VALUES (218, '佛山市', 20);
INSERT INTO `city` VALUES (219, '江门市', 20);
INSERT INTO `city` VALUES (220, '湛江市', 20);
INSERT INTO `city` VALUES (221, '茂名市', 20);
INSERT INTO `city` VALUES (222, '肇庆市', 20);
INSERT INTO `city` VALUES (223, '惠州市', 20);
INSERT INTO `city` VALUES (224, '梅州市', 20);
INSERT INTO `city` VALUES (225, '汕尾市', 20);
INSERT INTO `city` VALUES (226, '河源市', 20);
INSERT INTO `city` VALUES (227, '阳江市', 20);
INSERT INTO `city` VALUES (228, '清远市', 20);
INSERT INTO `city` VALUES (229, '东莞市', 20);
INSERT INTO `city` VALUES (230, '中山市', 20);
INSERT INTO `city` VALUES (231, '潮州市', 20);
INSERT INTO `city` VALUES (232, '揭阳市', 20);
INSERT INTO `city` VALUES (233, '云浮市', 20);
INSERT INTO `city` VALUES (234, '兰州市', 21);
INSERT INTO `city` VALUES (235, '金昌市', 21);
INSERT INTO `city` VALUES (236, '白银市', 21);
INSERT INTO `city` VALUES (237, '天水市', 21);
INSERT INTO `city` VALUES (238, '嘉峪关市', 21);
INSERT INTO `city` VALUES (239, '武威市', 21);
INSERT INTO `city` VALUES (240, '张掖市', 21);
INSERT INTO `city` VALUES (241, '平凉市', 21);
INSERT INTO `city` VALUES (242, '酒泉市', 21);
INSERT INTO `city` VALUES (243, '庆阳市', 21);
INSERT INTO `city` VALUES (244, '定西市', 21);
INSERT INTO `city` VALUES (245, '陇南市', 21);
INSERT INTO `city` VALUES (246, '临夏回族自治州', 21);
INSERT INTO `city` VALUES (247, '甘南藏族自治州', 21);
INSERT INTO `city` VALUES (248, '成都市', 22);
INSERT INTO `city` VALUES (249, '自贡市', 22);
INSERT INTO `city` VALUES (250, '攀枝花市', 22);
INSERT INTO `city` VALUES (251, '泸州市', 22);
INSERT INTO `city` VALUES (252, '德阳市', 22);
INSERT INTO `city` VALUES (253, '绵阳市', 22);
INSERT INTO `city` VALUES (254, '广元市', 22);
INSERT INTO `city` VALUES (255, '遂宁市', 22);
INSERT INTO `city` VALUES (256, '内江市', 22);
INSERT INTO `city` VALUES (257, '乐山市', 22);
INSERT INTO `city` VALUES (258, '南充市', 22);
INSERT INTO `city` VALUES (259, '眉山市', 22);
INSERT INTO `city` VALUES (260, '宜宾市', 22);
INSERT INTO `city` VALUES (261, '广安市', 22);
INSERT INTO `city` VALUES (262, '达州市', 22);
INSERT INTO `city` VALUES (263, '雅安市', 22);
INSERT INTO `city` VALUES (264, '巴中市', 22);
INSERT INTO `city` VALUES (265, '资阳市', 22);
INSERT INTO `city` VALUES (266, '阿坝藏族羌族自治州', 22);
INSERT INTO `city` VALUES (267, '甘孜藏族自治州', 22);
INSERT INTO `city` VALUES (268, '凉山彝族自治州', 22);
INSERT INTO `city` VALUES (269, '贵阳市', 23);
INSERT INTO `city` VALUES (270, '六盘水市', 23);
INSERT INTO `city` VALUES (271, '遵义市', 23);
INSERT INTO `city` VALUES (272, '安顺市', 23);
INSERT INTO `city` VALUES (273, '铜仁地区', 23);
INSERT INTO `city` VALUES (274, '毕节地区', 23);
INSERT INTO `city` VALUES (275, '黔西南布依族苗族自治州', 23);
INSERT INTO `city` VALUES (276, '黔东南苗族侗族自治州', 23);
INSERT INTO `city` VALUES (277, '黔南布依族苗族自治州', 23);
INSERT INTO `city` VALUES (278, '海口市', 24);
INSERT INTO `city` VALUES (279, '三亚市', 24);
INSERT INTO `city` VALUES (280, '五指山市', 24);
INSERT INTO `city` VALUES (281, '琼海市', 24);
INSERT INTO `city` VALUES (282, '儋州市', 24);
INSERT INTO `city` VALUES (283, '文昌市', 24);
INSERT INTO `city` VALUES (284, '万宁市', 24);
INSERT INTO `city` VALUES (285, '东方市', 24);
INSERT INTO `city` VALUES (286, '澄迈县', 24);
INSERT INTO `city` VALUES (287, '定安县', 24);
INSERT INTO `city` VALUES (288, '屯昌县', 24);
INSERT INTO `city` VALUES (289, '临高县', 24);
INSERT INTO `city` VALUES (290, '白沙黎族自治县', 24);
INSERT INTO `city` VALUES (291, '昌江黎族自治县', 24);
INSERT INTO `city` VALUES (292, '乐东黎族自治县', 24);
INSERT INTO `city` VALUES (293, '陵水黎族自治县', 24);
INSERT INTO `city` VALUES (294, '保亭黎族苗族自治县', 24);
INSERT INTO `city` VALUES (295, '琼中黎族苗族自治县', 24);
INSERT INTO `city` VALUES (296, '昆明市', 25);
INSERT INTO `city` VALUES (297, '曲靖市', 25);
INSERT INTO `city` VALUES (298, '玉溪市', 25);
INSERT INTO `city` VALUES (299, '保山市', 25);
INSERT INTO `city` VALUES (300, '昭通市', 25);
INSERT INTO `city` VALUES (301, '丽江市', 25);
INSERT INTO `city` VALUES (302, '思茅市', 25);
INSERT INTO `city` VALUES (303, '临沧市', 25);
INSERT INTO `city` VALUES (304, '文山壮族苗族自治州', 25);
INSERT INTO `city` VALUES (305, '红河哈尼族彝族自治州', 25);
INSERT INTO `city` VALUES (306, '西双版纳傣族自治州', 25);
INSERT INTO `city` VALUES (307, '楚雄彝族自治州', 25);
INSERT INTO `city` VALUES (308, '大理白族自治州', 25);
INSERT INTO `city` VALUES (309, '德宏傣族景颇族自治州', 25);
INSERT INTO `city` VALUES (310, '怒江傈傈族自治州', 25);
INSERT INTO `city` VALUES (311, '迪庆藏族自治州', 25);
INSERT INTO `city` VALUES (312, '西宁市', 26);
INSERT INTO `city` VALUES (313, '海东地区', 26);
INSERT INTO `city` VALUES (314, '海北藏族自治州', 26);
INSERT INTO `city` VALUES (315, '黄南藏族自治州', 26);
INSERT INTO `city` VALUES (316, '海南藏族自治州', 26);
INSERT INTO `city` VALUES (317, '果洛藏族自治州', 26);
INSERT INTO `city` VALUES (318, '玉树藏族自治州', 26);
INSERT INTO `city` VALUES (319, '海西蒙古族藏族自治州', 26);
INSERT INTO `city` VALUES (320, '西安市', 27);
INSERT INTO `city` VALUES (321, '铜川市', 27);
INSERT INTO `city` VALUES (322, '宝鸡市', 27);
INSERT INTO `city` VALUES (323, '咸阳市', 27);
INSERT INTO `city` VALUES (324, '渭南市', 27);
INSERT INTO `city` VALUES (325, '延安市', 27);
INSERT INTO `city` VALUES (326, '汉中市', 27);
INSERT INTO `city` VALUES (327, '榆林市', 27);
INSERT INTO `city` VALUES (328, '安康市', 27);
INSERT INTO `city` VALUES (329, '商洛市', 27);
INSERT INTO `city` VALUES (330, '南宁市', 28);
INSERT INTO `city` VALUES (331, '柳州市', 28);
INSERT INTO `city` VALUES (332, '桂林市', 28);
INSERT INTO `city` VALUES (333, '梧州市', 28);
INSERT INTO `city` VALUES (334, '北海市', 28);
INSERT INTO `city` VALUES (335, '防城港市', 28);
INSERT INTO `city` VALUES (336, '钦州市', 28);
INSERT INTO `city` VALUES (337, '贵港市', 28);
INSERT INTO `city` VALUES (338, '玉林市', 28);
INSERT INTO `city` VALUES (339, '百色市', 28);
INSERT INTO `city` VALUES (340, '贺州市', 28);
INSERT INTO `city` VALUES (341, '河池市', 28);
INSERT INTO `city` VALUES (342, '来宾市', 28);
INSERT INTO `city` VALUES (343, '崇左市', 28);
INSERT INTO `city` VALUES (344, '拉萨市', 29);
INSERT INTO `city` VALUES (345, '那曲地区', 29);
INSERT INTO `city` VALUES (346, '昌都地区', 29);
INSERT INTO `city` VALUES (347, '山南地区', 29);
INSERT INTO `city` VALUES (348, '日喀则地区', 29);
INSERT INTO `city` VALUES (349, '阿里地区', 29);
INSERT INTO `city` VALUES (350, '林芝地区', 29);
INSERT INTO `city` VALUES (351, '银川市', 30);
INSERT INTO `city` VALUES (352, '石嘴山市', 30);
INSERT INTO `city` VALUES (353, '吴忠市', 30);
INSERT INTO `city` VALUES (354, '固原市', 30);
INSERT INTO `city` VALUES (355, '中卫市', 30);
INSERT INTO `city` VALUES (356, '乌鲁木齐市', 31);
INSERT INTO `city` VALUES (357, '克拉玛依市', 31);
INSERT INTO `city` VALUES (358, '石河子市　', 31);
INSERT INTO `city` VALUES (359, '阿拉尔市', 31);
INSERT INTO `city` VALUES (360, '图木舒克市', 31);
INSERT INTO `city` VALUES (361, '五家渠市', 31);
INSERT INTO `city` VALUES (362, '吐鲁番市', 31);
INSERT INTO `city` VALUES (363, '阿克苏市', 31);
INSERT INTO `city` VALUES (364, '喀什市', 31);
INSERT INTO `city` VALUES (365, '哈密市', 31);
INSERT INTO `city` VALUES (366, '和田市', 31);
INSERT INTO `city` VALUES (367, '阿图什市', 31);
INSERT INTO `city` VALUES (368, '库尔勒市', 31);
INSERT INTO `city` VALUES (369, '昌吉市　', 31);
INSERT INTO `city` VALUES (370, '阜康市', 31);
INSERT INTO `city` VALUES (371, '米泉市', 31);
INSERT INTO `city` VALUES (372, '博乐市', 31);
INSERT INTO `city` VALUES (373, '伊宁市', 31);
INSERT INTO `city` VALUES (374, '奎屯市', 31);
INSERT INTO `city` VALUES (375, '塔城市', 31);
INSERT INTO `city` VALUES (376, '乌苏市', 31);
INSERT INTO `city` VALUES (377, '阿勒泰市', 31);
INSERT INTO `city` VALUES (378, '呼和浩特市', 32);
INSERT INTO `city` VALUES (379, '包头市', 32);
INSERT INTO `city` VALUES (380, '乌海市', 32);
INSERT INTO `city` VALUES (381, '赤峰市', 32);
INSERT INTO `city` VALUES (382, '通辽市', 32);
INSERT INTO `city` VALUES (383, '鄂尔多斯市', 32);
INSERT INTO `city` VALUES (384, '呼伦贝尔市', 32);
INSERT INTO `city` VALUES (385, '巴彦淖尔市', 32);
INSERT INTO `city` VALUES (386, '乌兰察布市', 32);
INSERT INTO `city` VALUES (387, '锡林郭勒盟', 32);
INSERT INTO `city` VALUES (388, '兴安盟', 32);
INSERT INTO `city` VALUES (389, '阿拉善盟', 32);
INSERT INTO `city` VALUES (390, '澳门特别行政区', 33);
INSERT INTO `city` VALUES (391, '香港特别行政区', 34);

-- ----------------------------
-- Table structure for friend_group
-- ----------------------------
DROP TABLE IF EXISTS `friend_group`;
CREATE TABLE `friend_group`  (
  `friend_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '好友分组ID',
  `friend_group_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '我的好友' COMMENT '好友分组名称',
  `friend_group_user_id` int(10) UNSIGNED NOT NULL COMMENT '好于分组所属用户ID',
  PRIMARY KEY (`friend_group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friend_group
-- ----------------------------
INSERT INTO `friend_group` VALUES (5, '我的好友', 15);
INSERT INTO `friend_group` VALUES (6, '我的好友', 16);
INSERT INTO `friend_group` VALUES (7, '我的好友', 17);
INSERT INTO `friend_group` VALUES (8, '我的好友', 18);

-- ----------------------------
-- Table structure for friend_type
-- ----------------------------
DROP TABLE IF EXISTS `friend_type`;
CREATE TABLE `friend_type`  (
  `friend_type_id` int(10) UNSIGNED NOT NULL COMMENT '好友类型ID',
  `friend_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '好友类型名称',
  PRIMARY KEY (`friend_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friend_type
-- ----------------------------
INSERT INTO `friend_type` VALUES (1, 'normal');
INSERT INTO `friend_type` VALUES (2, 'special');

-- ----------------------------
-- Table structure for friendship_info
-- ----------------------------
DROP TABLE IF EXISTS `friendship_info`;
CREATE TABLE `friendship_info`  (
  `friendship_user_id` int(10) UNSIGNED NOT NULL COMMENT '自己的ID',
  `friendship_friend_id` int(10) UNSIGNED NOT NULL COMMENT '好友的ID',
  `friendship_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '好友备注名称',
  `friendship_friend_type_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '好友类型ID',
  `friendship_friend_group_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '好友所属分组ID',
  PRIMARY KEY (`friendship_user_id`, `friendship_friend_id`) USING BTREE,
  INDEX `friendship_user`(`friendship_user_id`) USING BTREE,
  INDEX `friendship_friend`(`friendship_friend_id`) USING BTREE,
  INDEX `friendship_friend_type`(`friendship_friend_type_id`) USING BTREE,
  INDEX `friendship_friend_group`(`friendship_friend_group_id`) USING BTREE,
  CONSTRAINT `friendship_friend` FOREIGN KEY (`friendship_friend_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `friendship_friend_group` FOREIGN KEY (`friendship_friend_group_id`) REFERENCES `friend_group` (`friend_group_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `friendship_friend_type` FOREIGN KEY (`friendship_friend_type_id`) REFERENCES `friend_type` (`friend_type_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `friendship_user` FOREIGN KEY (`friendship_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendship_info
-- ----------------------------
INSERT INTO `friendship_info` VALUES (15, 16, '刺刺', 1, 5);
INSERT INTO `friendship_info` VALUES (15, 17, '撒比', 1, 5);
INSERT INTO `friendship_info` VALUES (16, 15, '傻a', 1, 6);
INSERT INTO `friendship_info` VALUES (16, 17, '', 1, 6);
INSERT INTO `friendship_info` VALUES (16, 18, '滴滴滴', 1, 6);
INSERT INTO `friendship_info` VALUES (17, 15, '啊啊啊', 1, 7);
INSERT INTO `friendship_info` VALUES (17, 16, '', 1, 7);
INSERT INTO `friendship_info` VALUES (17, 18, '嘀嘀嘀', 1, 7);
INSERT INTO `friendship_info` VALUES (18, 16, '次次次', 1, 8);
INSERT INTO `friendship_info` VALUES (18, 17, '', 1, 8);

-- ----------------------------
-- Table structure for friendship_policy
-- ----------------------------
DROP TABLE IF EXISTS `friendship_policy`;
CREATE TABLE `friendship_policy`  (
  `friendship_policy_id` int(11) NOT NULL COMMENT '添加好友策略ID',
  `friendship_policy_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加好友方式',
  PRIMARY KEY (`friendship_policy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendship_policy
-- ----------------------------
INSERT INTO `friendship_policy` VALUES (1, '回答问题加好友');

-- ----------------------------
-- Table structure for gender
-- ----------------------------
DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender`  (
  `gender_id` int(10) UNSIGNED NOT NULL COMMENT '性别ID',
  `gender_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别名称',
  PRIMARY KEY (`gender_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gender
-- ----------------------------
INSERT INTO `gender` VALUES (1, '男');
INSERT INTO `gender` VALUES (2, '女');
INSERT INTO `gender` VALUES (3, '保密');

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info`  (
  `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '群ID',
  `group_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群名称',
  `group_create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '群创建时间',
  `group_admin_id` int(10) UNSIGNED NOT NULL COMMENT '群主ID',
  `group_icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群头像',
  `group_notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群公告',
  `group_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群简介',
  PRIMARY KEY (`group_id`) USING BTREE,
  UNIQUE INDEX `group_name`(`group_name`) USING BTREE COMMENT '群名称'
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES (11, 'test4', '2018-10-19 11:42:00', 17, NULL, NULL, NULL);
INSERT INTO `group_info` VALUES (12, 'test5', '2018-10-19 16:01:03', 17, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for group_massage
-- ----------------------------
DROP TABLE IF EXISTS `group_massage`;
CREATE TABLE `group_massage`  (
  `group_msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '群消息ID',
  `group_msg_group_id` int(10) UNSIGNED NOT NULL COMMENT '接收消息的群ID',
  `group_msg_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群消息内容',
  `group_msg_msg_type_id` int(10) UNSIGNED NOT NULL COMMENT '消息类型ID',
  `group_msg_from_user_id` int(10) UNSIGNED NOT NULL COMMENT '群消息的发送者ID',
  `group_msg_from_user_nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群消息的发送者昵称',
  `group_msg_send_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '群消息发送时间',
  PRIMARY KEY (`group_msg_id`) USING BTREE,
  INDEX `group_msg_msg_type`(`group_msg_msg_type_id`) USING BTREE,
  INDEX `group_msg_from_user`(`group_msg_from_user_id`) USING BTREE,
  INDEX `group_msg_group`(`group_msg_group_id`) USING BTREE,
  INDEX `group_msg_from_user_nickname`(`group_msg_from_user_nickname`) USING BTREE,
  CONSTRAINT `group_msg_from_user` FOREIGN KEY (`group_msg_from_user_id`) REFERENCES `group_to_user` (`group_user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `group_msg_from_user_nickname` FOREIGN KEY (`group_msg_from_user_nickname`) REFERENCES `group_to_user` (`group_nick_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `group_msg_group` FOREIGN KEY (`group_msg_group_id`) REFERENCES `group_to_user` (`group_group_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `group_msg_msg_type` FOREIGN KEY (`group_msg_msg_type_id`) REFERENCES `massage_type` (`msg_type_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_to_user
-- ----------------------------
DROP TABLE IF EXISTS `group_to_user`;
CREATE TABLE `group_to_user`  (
  `group_user_id` int(10) UNSIGNED NOT NULL COMMENT '群中用户ID',
  `group_group_id` int(10) UNSIGNED NOT NULL COMMENT '群ID',
  `group_join_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入群时间',
  `group_nick_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群内显示昵称',
  PRIMARY KEY (`group_user_id`, `group_group_id`) USING BTREE,
  INDEX `group_user`(`group_user_id`) USING BTREE,
  INDEX `group_group`(`group_group_id`) USING BTREE,
  INDEX `group_nick_name`(`group_nick_name`) USING BTREE,
  CONSTRAINT `group_id` FOREIGN KEY (`group_group_id`) REFERENCES `group_info` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `group_user` FOREIGN KEY (`group_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_to_user
-- ----------------------------
INSERT INTO `group_to_user` VALUES (15, 11, '2018-10-19 19:46:36', NULL);
INSERT INTO `group_to_user` VALUES (16, 12, '2018-10-21 23:47:28', NULL);
INSERT INTO `group_to_user` VALUES (17, 11, '2018-10-19 11:42:00', NULL);
INSERT INTO `group_to_user` VALUES (17, 12, '2018-10-19 16:01:03', NULL);

-- ----------------------------
-- Table structure for massage_info
-- ----------------------------
DROP TABLE IF EXISTS `massage_info`;
CREATE TABLE `massage_info`  (
  `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `msg_post` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息内容',
  `msg_recv_status` bit(1) NOT NULL COMMENT '消息接收状态',
  `msg_send_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送消息时间',
  `msg_msg_type_id` int(10) UNSIGNED NOT NULL COMMENT '消息类型ID',
  `msg_from_user_id` int(10) UNSIGNED NOT NULL COMMENT '消息发送者ID',
  `msg_to_user_id` int(10) UNSIGNED NOT NULL COMMENT '消息接收者ID',
  PRIMARY KEY (`msg_id`) USING BTREE,
  INDEX `msg_msg_type`(`msg_msg_type_id`) USING BTREE,
  INDEX `msg_from_user`(`msg_from_user_id`) USING BTREE,
  INDEX `msg_to_user`(`msg_to_user_id`) USING BTREE,
  CONSTRAINT `msg_from_user` FOREIGN KEY (`msg_from_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `msg_msg_type` FOREIGN KEY (`msg_msg_type_id`) REFERENCES `massage_type` (`msg_type_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `msg_to_user` FOREIGN KEY (`msg_to_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for massage_type
-- ----------------------------
DROP TABLE IF EXISTS `massage_type`;
CREATE TABLE `massage_type`  (
  `msg_type_id` int(10) UNSIGNED NOT NULL COMMENT '消息类型ID',
  `msg_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型名称',
  PRIMARY KEY (`msg_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of massage_type
-- ----------------------------
INSERT INTO `massage_type` VALUES (1, 'text');

-- ----------------------------
-- Table structure for nation
-- ----------------------------
DROP TABLE IF EXISTS `nation`;
CREATE TABLE `nation`  (
  `nation_id` int(11) NOT NULL COMMENT '国家ID',
  `nation_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '国家名称',
  PRIMARY KEY (`nation_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nation
-- ----------------------------
INSERT INTO `nation` VALUES (1, '中国');
INSERT INTO `nation` VALUES (2, '阿尔巴尼亚');
INSERT INTO `nation` VALUES (3, '阿尔及利亚');
INSERT INTO `nation` VALUES (4, '阿富汗');
INSERT INTO `nation` VALUES (5, '阿根廷');
INSERT INTO `nation` VALUES (6, '阿拉伯联合酋长国');
INSERT INTO `nation` VALUES (7, '阿鲁巴');
INSERT INTO `nation` VALUES (8, '阿曼');
INSERT INTO `nation` VALUES (9, '阿塞拜疆');
INSERT INTO `nation` VALUES (10, '阿森松岛');
INSERT INTO `nation` VALUES (11, '埃及');
INSERT INTO `nation` VALUES (12, '埃塞俄比亚');
INSERT INTO `nation` VALUES (13, '爱尔兰');
INSERT INTO `nation` VALUES (14, '爱沙尼亚');
INSERT INTO `nation` VALUES (15, '安道尔');
INSERT INTO `nation` VALUES (16, '安哥拉');
INSERT INTO `nation` VALUES (17, '安圭拉');
INSERT INTO `nation` VALUES (18, '安提瓜岛和巴布达');
INSERT INTO `nation` VALUES (19, '奥地利');
INSERT INTO `nation` VALUES (20, '奥兰群岛');
INSERT INTO `nation` VALUES (21, '澳大利亚');
INSERT INTO `nation` VALUES (22, '巴巴多斯岛');
INSERT INTO `nation` VALUES (23, '巴布亚新几内亚');
INSERT INTO `nation` VALUES (24, '巴哈马');
INSERT INTO `nation` VALUES (25, '巴基斯坦');
INSERT INTO `nation` VALUES (26, '巴拉圭');
INSERT INTO `nation` VALUES (27, '巴勒斯坦');
INSERT INTO `nation` VALUES (28, '巴林');
INSERT INTO `nation` VALUES (29, '巴拿马');
INSERT INTO `nation` VALUES (30, '巴西');
INSERT INTO `nation` VALUES (31, '白俄罗斯');
INSERT INTO `nation` VALUES (32, '百慕大');
INSERT INTO `nation` VALUES (33, '保加利亚');
INSERT INTO `nation` VALUES (34, '北马里亚纳群岛');
INSERT INTO `nation` VALUES (35, '贝宁');
INSERT INTO `nation` VALUES (36, '比利时');
INSERT INTO `nation` VALUES (37, '冰岛');
INSERT INTO `nation` VALUES (38, '波多黎各');
INSERT INTO `nation` VALUES (39, '波兰');
INSERT INTO `nation` VALUES (40, '波斯尼亚和黑塞哥维那');
INSERT INTO `nation` VALUES (41, '玻利维亚');
INSERT INTO `nation` VALUES (42, '伯利兹');
INSERT INTO `nation` VALUES (43, '博茨瓦纳');
INSERT INTO `nation` VALUES (44, '不丹');
INSERT INTO `nation` VALUES (45, '布基纳法索');
INSERT INTO `nation` VALUES (46, '布隆迪');
INSERT INTO `nation` VALUES (47, '布韦岛');
INSERT INTO `nation` VALUES (48, '朝鲜');
INSERT INTO `nation` VALUES (49, '丹麦');
INSERT INTO `nation` VALUES (50, '德国');
INSERT INTO `nation` VALUES (51, '东帝汶');
INSERT INTO `nation` VALUES (52, '多哥');
INSERT INTO `nation` VALUES (53, '多米尼加');
INSERT INTO `nation` VALUES (54, '多米尼加共和国');
INSERT INTO `nation` VALUES (55, '俄罗斯');
INSERT INTO `nation` VALUES (56, '厄瓜多尔');
INSERT INTO `nation` VALUES (57, '厄立特里亚');
INSERT INTO `nation` VALUES (58, '法国');
INSERT INTO `nation` VALUES (59, '法罗群岛');
INSERT INTO `nation` VALUES (60, '法属波利尼西亚');
INSERT INTO `nation` VALUES (61, '法属圭亚那');
INSERT INTO `nation` VALUES (62, '法属南部领地');
INSERT INTO `nation` VALUES (63, '梵蒂冈');
INSERT INTO `nation` VALUES (64, '菲律宾');
INSERT INTO `nation` VALUES (65, '斐济');
INSERT INTO `nation` VALUES (66, '芬兰');
INSERT INTO `nation` VALUES (67, '佛得角');
INSERT INTO `nation` VALUES (68, '弗兰克群岛');
INSERT INTO `nation` VALUES (69, '冈比亚');
INSERT INTO `nation` VALUES (70, '刚果');
INSERT INTO `nation` VALUES (71, '刚果民主共和国');
INSERT INTO `nation` VALUES (72, '哥伦比亚');
INSERT INTO `nation` VALUES (73, '哥斯达黎加');
INSERT INTO `nation` VALUES (74, '格恩西岛');
INSERT INTO `nation` VALUES (75, '格林纳达');
INSERT INTO `nation` VALUES (76, '格陵兰');
INSERT INTO `nation` VALUES (77, '古巴');
INSERT INTO `nation` VALUES (78, '瓜德罗普');
INSERT INTO `nation` VALUES (79, '关岛');
INSERT INTO `nation` VALUES (80, '圭亚那');
INSERT INTO `nation` VALUES (81, '哈萨克斯坦');
INSERT INTO `nation` VALUES (82, '海地');
INSERT INTO `nation` VALUES (83, '韩国');
INSERT INTO `nation` VALUES (84, '荷兰');
INSERT INTO `nation` VALUES (85, '荷属安地列斯');
INSERT INTO `nation` VALUES (86, '赫德和麦克唐纳群岛');
INSERT INTO `nation` VALUES (87, '洪都拉斯');
INSERT INTO `nation` VALUES (88, '基里巴斯');
INSERT INTO `nation` VALUES (89, '吉布提');
INSERT INTO `nation` VALUES (90, '吉尔吉斯斯坦');
INSERT INTO `nation` VALUES (91, '几内亚');
INSERT INTO `nation` VALUES (92, '几内亚比绍');
INSERT INTO `nation` VALUES (93, '加拿大');
INSERT INTO `nation` VALUES (94, '加纳');
INSERT INTO `nation` VALUES (95, '加蓬');
INSERT INTO `nation` VALUES (96, '柬埔寨');
INSERT INTO `nation` VALUES (97, '捷克共和国');
INSERT INTO `nation` VALUES (98, '津巴布韦');
INSERT INTO `nation` VALUES (99, '喀麦隆');
INSERT INTO `nation` VALUES (100, '卡塔尔');
INSERT INTO `nation` VALUES (101, '开曼群岛');
INSERT INTO `nation` VALUES (102, '科科斯群岛');
INSERT INTO `nation` VALUES (103, '科摩罗');
INSERT INTO `nation` VALUES (104, '科特迪瓦');
INSERT INTO `nation` VALUES (105, '科威特');
INSERT INTO `nation` VALUES (106, '克罗地亚');
INSERT INTO `nation` VALUES (107, '肯尼亚');
INSERT INTO `nation` VALUES (108, '库克群岛');
INSERT INTO `nation` VALUES (109, '拉脱维亚');
INSERT INTO `nation` VALUES (110, '莱索托');
INSERT INTO `nation` VALUES (111, '老挝');
INSERT INTO `nation` VALUES (112, '黎巴嫩');
INSERT INTO `nation` VALUES (113, '立陶宛');
INSERT INTO `nation` VALUES (114, '利比里亚');
INSERT INTO `nation` VALUES (115, '利比亚');
INSERT INTO `nation` VALUES (116, '列支敦士登');
INSERT INTO `nation` VALUES (117, '留尼旺岛');
INSERT INTO `nation` VALUES (118, '卢森堡');
INSERT INTO `nation` VALUES (119, '卢旺达');
INSERT INTO `nation` VALUES (120, '罗马尼亚');
INSERT INTO `nation` VALUES (121, '马达加斯加');
INSERT INTO `nation` VALUES (122, '马尔代夫');
INSERT INTO `nation` VALUES (123, '马耳他');
INSERT INTO `nation` VALUES (124, '马拉维');
INSERT INTO `nation` VALUES (125, '马来西亚');
INSERT INTO `nation` VALUES (126, '马里');
INSERT INTO `nation` VALUES (127, '马其顿');
INSERT INTO `nation` VALUES (128, '马绍尔群岛');
INSERT INTO `nation` VALUES (129, '马提尼克');
INSERT INTO `nation` VALUES (130, '马约特岛');
INSERT INTO `nation` VALUES (131, '曼岛');
INSERT INTO `nation` VALUES (132, '毛里求斯');
INSERT INTO `nation` VALUES (133, '毛里塔尼亚');
INSERT INTO `nation` VALUES (134, '美国');
INSERT INTO `nation` VALUES (135, '美属萨摩亚');
INSERT INTO `nation` VALUES (136, '美属外岛');
INSERT INTO `nation` VALUES (137, '蒙古');
INSERT INTO `nation` VALUES (138, '蒙特塞拉特');
INSERT INTO `nation` VALUES (139, '孟加拉');
INSERT INTO `nation` VALUES (140, '秘鲁');
INSERT INTO `nation` VALUES (141, '密克罗尼西亚');
INSERT INTO `nation` VALUES (142, '缅甸');
INSERT INTO `nation` VALUES (143, '摩尔多瓦');
INSERT INTO `nation` VALUES (144, '摩洛哥');
INSERT INTO `nation` VALUES (145, '摩纳哥');
INSERT INTO `nation` VALUES (146, '莫桑比克');
INSERT INTO `nation` VALUES (147, '墨西哥');
INSERT INTO `nation` VALUES (148, '纳米比亚');
INSERT INTO `nation` VALUES (149, '南非');
INSERT INTO `nation` VALUES (150, '南极洲');
INSERT INTO `nation` VALUES (151, '南乔治亚和南桑德威奇群岛');
INSERT INTO `nation` VALUES (152, '瑙鲁');
INSERT INTO `nation` VALUES (153, '尼泊尔');
INSERT INTO `nation` VALUES (154, '尼加拉瓜');
INSERT INTO `nation` VALUES (155, '尼日尔');
INSERT INTO `nation` VALUES (156, '尼日利亚');
INSERT INTO `nation` VALUES (157, '纽埃');
INSERT INTO `nation` VALUES (158, '挪威');
INSERT INTO `nation` VALUES (159, '诺福克');
INSERT INTO `nation` VALUES (160, '帕劳群岛');
INSERT INTO `nation` VALUES (161, '皮特凯恩');
INSERT INTO `nation` VALUES (162, '葡萄牙');
INSERT INTO `nation` VALUES (163, '乔治亚');
INSERT INTO `nation` VALUES (164, '日本');
INSERT INTO `nation` VALUES (165, '瑞典');
INSERT INTO `nation` VALUES (166, '瑞士');
INSERT INTO `nation` VALUES (167, '萨尔瓦多');
INSERT INTO `nation` VALUES (168, '萨摩亚');
INSERT INTO `nation` VALUES (169, '塞尔维亚,黑山');
INSERT INTO `nation` VALUES (170, '塞拉利昂');
INSERT INTO `nation` VALUES (171, '塞内加尔');
INSERT INTO `nation` VALUES (172, '塞浦路斯');
INSERT INTO `nation` VALUES (173, '塞舌尔');
INSERT INTO `nation` VALUES (174, '沙特阿拉伯');
INSERT INTO `nation` VALUES (175, '圣诞岛');
INSERT INTO `nation` VALUES (176, '圣多美和普林西比');
INSERT INTO `nation` VALUES (177, '圣赫勒拿');
INSERT INTO `nation` VALUES (178, '圣基茨和尼维斯');
INSERT INTO `nation` VALUES (179, '圣卢西亚');
INSERT INTO `nation` VALUES (180, '圣马力诺');
INSERT INTO `nation` VALUES (181, '圣皮埃尔和米克隆群岛');
INSERT INTO `nation` VALUES (182, '圣文森特和格林纳丁斯');
INSERT INTO `nation` VALUES (183, '斯里兰卡');
INSERT INTO `nation` VALUES (184, '斯洛伐克');
INSERT INTO `nation` VALUES (185, '斯洛文尼亚');
INSERT INTO `nation` VALUES (186, '斯瓦尔巴和扬马廷');
INSERT INTO `nation` VALUES (187, '斯威士兰');
INSERT INTO `nation` VALUES (188, '苏丹');
INSERT INTO `nation` VALUES (189, '苏里南');
INSERT INTO `nation` VALUES (190, '所罗门群岛');
INSERT INTO `nation` VALUES (191, '索马里');
INSERT INTO `nation` VALUES (192, '塔吉克斯坦');
INSERT INTO `nation` VALUES (193, '泰国');
INSERT INTO `nation` VALUES (194, '坦桑尼亚');
INSERT INTO `nation` VALUES (195, '汤加');
INSERT INTO `nation` VALUES (196, '特克斯和凯克特斯群岛');
INSERT INTO `nation` VALUES (197, '特里斯坦达昆哈');
INSERT INTO `nation` VALUES (198, '特立尼达和多巴哥');
INSERT INTO `nation` VALUES (199, '突尼斯');
INSERT INTO `nation` VALUES (200, '图瓦卢');
INSERT INTO `nation` VALUES (201, '土耳其');
INSERT INTO `nation` VALUES (202, '土库曼斯坦');
INSERT INTO `nation` VALUES (203, '托克劳');
INSERT INTO `nation` VALUES (204, '瓦利斯和福图纳');
INSERT INTO `nation` VALUES (205, '瓦努阿图');
INSERT INTO `nation` VALUES (206, '危地马拉');
INSERT INTO `nation` VALUES (207, '维尔京群岛，美属');
INSERT INTO `nation` VALUES (208, '维尔京群岛，英属');
INSERT INTO `nation` VALUES (209, '委内瑞拉');
INSERT INTO `nation` VALUES (210, '文莱');
INSERT INTO `nation` VALUES (211, '乌干达');
INSERT INTO `nation` VALUES (212, '乌克兰');
INSERT INTO `nation` VALUES (213, '乌拉圭');
INSERT INTO `nation` VALUES (214, '乌兹别克斯坦');
INSERT INTO `nation` VALUES (215, '西班牙');
INSERT INTO `nation` VALUES (216, '希腊');
INSERT INTO `nation` VALUES (217, '新加坡');
INSERT INTO `nation` VALUES (218, '新喀里多尼亚');
INSERT INTO `nation` VALUES (219, '新西兰');
INSERT INTO `nation` VALUES (220, '匈牙利');
INSERT INTO `nation` VALUES (221, '叙利亚');
INSERT INTO `nation` VALUES (222, '牙买加');
INSERT INTO `nation` VALUES (223, '亚美尼亚');
INSERT INTO `nation` VALUES (224, '也门');
INSERT INTO `nation` VALUES (225, '伊拉克');
INSERT INTO `nation` VALUES (226, '伊朗');
INSERT INTO `nation` VALUES (227, '以色列');
INSERT INTO `nation` VALUES (228, '意大利');
INSERT INTO `nation` VALUES (229, '印度');
INSERT INTO `nation` VALUES (230, '印度尼西亚');
INSERT INTO `nation` VALUES (231, '英国');
INSERT INTO `nation` VALUES (232, '英属印度洋领地');
INSERT INTO `nation` VALUES (233, '约旦');
INSERT INTO `nation` VALUES (234, '越南');
INSERT INTO `nation` VALUES (235, '赞比亚');
INSERT INTO `nation` VALUES (236, '泽西岛');
INSERT INTO `nation` VALUES (237, '乍得');
INSERT INTO `nation` VALUES (238, '直布罗陀');
INSERT INTO `nation` VALUES (239, '智利');
INSERT INTO `nation` VALUES (240, '中非共和国');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `province_id` int(11) NOT NULL COMMENT '省份ID',
  `province_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  `province_nation_id` int(11) NULL DEFAULT NULL COMMENT '省份所属国家',
  PRIMARY KEY (`province_id`) USING BTREE,
  INDEX `province_nation`(`province_nation_id`) USING BTREE,
  CONSTRAINT `province_nation` FOREIGN KEY (`province_nation_id`) REFERENCES `nation` (`nation_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '北京市', 1);
INSERT INTO `province` VALUES (2, '天津市', 1);
INSERT INTO `province` VALUES (3, '上海市', 1);
INSERT INTO `province` VALUES (4, '重庆市', 1);
INSERT INTO `province` VALUES (5, '河北省', 1);
INSERT INTO `province` VALUES (6, '山西省', 1);
INSERT INTO `province` VALUES (7, '台湾省', 1);
INSERT INTO `province` VALUES (8, '辽宁省', 1);
INSERT INTO `province` VALUES (9, '吉林省', 1);
INSERT INTO `province` VALUES (10, '黑龙江省', 1);
INSERT INTO `province` VALUES (11, '江苏省', 1);
INSERT INTO `province` VALUES (12, '浙江省', 1);
INSERT INTO `province` VALUES (13, '安徽省', 1);
INSERT INTO `province` VALUES (14, '福建省', 1);
INSERT INTO `province` VALUES (15, '江西省', 1);
INSERT INTO `province` VALUES (16, '山东省', 1);
INSERT INTO `province` VALUES (17, '河南省', 1);
INSERT INTO `province` VALUES (18, '湖北省', 1);
INSERT INTO `province` VALUES (19, '湖南省', 1);
INSERT INTO `province` VALUES (20, '广东省', 1);
INSERT INTO `province` VALUES (21, '甘肃省', 1);
INSERT INTO `province` VALUES (22, '四川省', 1);
INSERT INTO `province` VALUES (23, '贵州省', 1);
INSERT INTO `province` VALUES (24, '海南省', 1);
INSERT INTO `province` VALUES (25, '云南省', 1);
INSERT INTO `province` VALUES (26, '青海省', 1);
INSERT INTO `province` VALUES (27, '陕西省', 1);
INSERT INTO `province` VALUES (28, '广西壮族自治区', 1);
INSERT INTO `province` VALUES (29, '西藏自治区', 1);
INSERT INTO `province` VALUES (30, '宁夏回族自治区', 1);
INSERT INTO `province` VALUES (31, '新疆维吾尔自治区', 1);
INSERT INTO `province` VALUES (32, '内蒙古自治区', 1);
INSERT INTO `province` VALUES (33, '澳门特别行政区', 1);
INSERT INTO `province` VALUES (34, '香港特别行政区', 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_nick_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `user_signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户个性签名',
  `user_gender_id` int(10) UNSIGNED NOT NULL DEFAULT 3 COMMENT '用户性别',
  `user_birthday` date NULL DEFAULT NULL COMMENT '用户生日',
  `user_telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户电话号码',
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `user_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户简介',
  `user_head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户头像',
  `user_age` int(3) UNSIGNED NULL DEFAULT 0 COMMENT '用户年龄',
  `user_vocation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户职业',
  `user_nation_id` int(11) NULL DEFAULT 1 COMMENT '用户国家ID',
  `user_province_id` int(11) NULL DEFAULT 1 COMMENT '用户省份ID',
  `user_city_id` int(11) NULL DEFAULT 1 COMMENT '用户城市ID',
  `user_friendship_policy_id` int(11) NOT NULL DEFAULT 1 COMMENT '用户好友策略ID',
  `user_status_id` int(11) NOT NULL DEFAULT 1 COMMENT '用户状态ID',
  `user_friend_policy_question` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户好友策略问题',
  `user_friend_policy_answer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户好友策略答案',
  `user_friend_policy_password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户好友策略密码',
  `user_register_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户注册时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE,
  UNIQUE INDEX `user_email`(`user_email`) USING BTREE,
  UNIQUE INDEX `user_telephone`(`user_telephone`) USING BTREE,
  INDEX `user_status`(`user_status_id`) USING BTREE,
  INDEX `user_nation`(`user_nation_id`) USING BTREE,
  INDEX `user_province`(`user_province_id`) USING BTREE,
  INDEX `user_city`(`user_city_id`) USING BTREE,
  INDEX `user_friendship_policy`(`user_friendship_policy_id`) USING BTREE,
  INDEX `user_gender`(`user_gender_id`) USING BTREE,
  CONSTRAINT `user_city` FOREIGN KEY (`user_city_id`) REFERENCES `city` (`city_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `user_friendship_policy` FOREIGN KEY (`user_friendship_policy_id`) REFERENCES `friendship_policy` (`friendship_policy_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `user_gender` FOREIGN KEY (`user_gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `user_nation` FOREIGN KEY (`user_nation_id`) REFERENCES `nation` (`nation_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `user_province` FOREIGN KEY (`user_province_id`) REFERENCES `province` (`province_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `user_status` FOREIGN KEY (`user_status_id`) REFERENCES `user_status` (`user_status_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (15, 'aaa', '测试账号a', '7e240de74fb1ed08fa08d38063f6a6a91462a815', '学习使我快乐\n哈哈哈哈\n嗯', 1, '1999-11-11', '789888888', 'aaa@aa.cn', '111', '', 19, '文人', 1, 1, 1, 1, 1, '', '', '', '2018-10-16 16:45:31');
INSERT INTO `user_info` VALUES (16, 'ccc', '测试账号c', 'f36b4825e5db2cf7dd2d2593b3f5c24c0311d8b2', '我要瘦瘦瘦！！！', 2, '1997-10-01', '', 'ccc@ccc.c', '333', '', 21, '工程师', 1, 1, 1, 1, 1, '', '', '', '2018-10-16 16:45:39');
INSERT INTO `user_info` VALUES (17, 'bbb', '测试账号b', '5cb138284d431abd6a053a56625ec088bfb88912', '签名什么的无所谓了', 2, '1998-12-25', '100011100', 'bbb@bbb.bb', '222', '', 20, '老师', 1, 1, 1, 1, 1, '', '', '', '2018-10-16 16:49:14');
INSERT INTO `user_info` VALUES (18, 'ddd', '', '9c969ddf454079e3d439973bbab63ea6233e4087', '', 3, NULL, NULL, 'ddd', '', '', 0, '', 1, 1, 1, 1, 1, '', '', '', '2018-10-19 14:57:46');

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status`  (
  `user_status_id` int(255) NOT NULL COMMENT '用户状态ID',
  `status_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`user_status_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO `user_status` VALUES (1, '在线');
INSERT INTO `user_status` VALUES (2, '隐身');

SET FOREIGN_KEY_CHECKS = 1;
