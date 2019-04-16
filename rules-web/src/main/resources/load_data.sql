use schoolrulessystem;

### userinfo ###
INSERT INTO userinfo VALUES(3903150332, '葛凡', 1, '工程试验班1503', 2015, '软件工程', '软件学院');
INSERT INTO userinfo VALUES(3903150326, '李涛江', 1, '工程试验班1503', 2015, '软件工程', '软件学院');
INSERT INTO userinfo VALUES(3903150327, '陈铭明', 1,'工程试验班1503', 2015, '软件工程', '软件学院');
INSERT INTO userinfo VALUES(3901170505, '孙佳程', 1,'软件1705', 2017, '软件工程', '软件学院');

### signon ###
INSERT INTO signon VALUES(3903150326, 3903150326);
INSERT INTO signon VALUES(3903150332, 3903150332);
INSERT INTO signon VALUES(3903150327, 3903150327);
INSERT INTO signon VALUES(3901170505, 3901170505);

### college ###
INSERT INTO college VALUES(1, "资源与安全工程学院");
INSERT INTO college VALUES(2, "资源加工与生物工程学院");
INSERT INTO college VALUES(3, "肿瘤研究所");
INSERT INTO college VALUES(4, "中国村落文化研究中心");
INSERT INTO college VALUES(5, "医学遗传学国家重点实验室");
INSERT INTO college VALUES(6, "医学检验系");
INSERT INTO college VALUES(7, "冶金与环境学院");
INSERT INTO college VALUES(8, "药学院");
INSERT INTO college VALUES(9, "信息与网络中心");
INSERT INTO college VALUES(10, "信息科学与工程学院");
INSERT INTO college VALUES(11, "信息安全与大数据研究院");
INSERT INTO college VALUES(12, "湘雅医院");
INSERT INTO college VALUES(13, "湘雅医学院海口医院");
INSERT INTO college VALUES(14, "湘雅医学院附属株洲医院");
INSERT INTO college VALUES(15, "湘雅医学院");
INSERT INTO college VALUES(16, "湘雅三医院");
INSERT INTO college VALUES(17, "湘雅护理学院");
INSERT INTO college VALUES(18, "湘雅国际转化医学联合研究院");
INSERT INTO college VALUES(19, "湘雅二医院");
INSERT INTO college VALUES(20, "物理与电子学院");
INSERT INTO college VALUES(21, "文学与新闻传播学院");
INSERT INTO college VALUES(22, "卫生部肝胆肠外科研究中心");
INSERT INTO college VALUES(23, "外国语学院");
INSERT INTO college VALUES(24, "土木工程学院");
INSERT INTO college VALUES(25, "体育教研部");
INSERT INTO college VALUES(26, "数学与统计学院");
INSERT INTO college VALUES(27, "生殖与干细胞工程研究所");
INSERT INTO college VALUES(28, "生命科学学院（医学遗传学国家重点实验室）");
INSERT INTO college VALUES(29, "生命科学学院");
INSERT INTO college VALUES(30, "商学院");
INSERT INTO college VALUES(31, "软件学院");
INSERT INTO college VALUES(32, "软件工程学院");
INSERT INTO college VALUES(33, "轻合金研究院");
INSERT INTO college VALUES(34, "能源科学与工程学院");
INSERT INTO college VALUES(35, "马克思主义学院");
INSERT INTO college VALUES(36, "隆平分院");
INSERT INTO college VALUES(37, "临床药理研究所");
INSERT INTO college VALUES(38, "口腔医学院");
INSERT INTO college VALUES(39, "军事教研室");
INSERT INTO college VALUES(40, "交通运输工程学院");
INSERT INTO college VALUES(41, "建筑与艺术学院");
INSERT INTO college VALUES(42, "基础医学院");
INSERT INTO college VALUES(43, "机电工程学院");
INSERT INTO college VALUES(44, "化学化工学院");
INSERT INTO college VALUES(45, "护理学院");
INSERT INTO college VALUES(46, "航空航天学院");
INSERT INTO college VALUES(47, "国际合作与交流处");
INSERT INTO college VALUES(48, "公共卫生学院");
INSERT INTO college VALUES(49, "公共管理学院");
INSERT INTO college VALUES(50, "高等教育科学研究所");
INSERT INTO college VALUES(51, "粉末冶金研究院");
INSERT INTO college VALUES(52, "分子药物与治疗研究所");
INSERT INTO college VALUES(53, "法学院");
INSERT INTO college VALUES(54, "地球科学与信息物理学院");
INSERT INTO college VALUES(55, "材料科学与工程学院");
INSERT INTO college VALUES(56, "本科生院");
INSERT INTO college VALUES(57, "爱尔眼科学院");
/*INSERT INTO college VALUES(1, '资源与安全工程学院');
INSERT INTO college VALUES(2, '材料科学与工程学院');
INSERT INTO college VALUES(3, '粉末冶金研究院');
INSERT INTO college VALUES(4, '商学院');
INSERT INTO college VALUES(5, '地球科学与信息物理学院');
INSERT INTO college VALUES(6, '信息科学与工程学院');
INSERT INTO college VALUES(7, '建筑与艺术学院');
INSERT INTO college VALUES(8, '机电工程学院');
INSERT INTO college VALUES(9, '物理与电子学院');
INSERT INTO college VALUES(10, '法学院');
INSERT INTO college VALUES(11, '基础医学院');
INSERT INTO college VALUES(12, '外国语学院');
INSERT INTO college VALUES(13, '土木工程学院');
INSERT INTO college VALUES(14, '文学与新闻传播学院');
INSERT INTO college VALUES(15, '航空航天学院');
INSERT INTO college VALUES(16, '湘雅护理学院');
INSERT INTO college VALUES(17, '化学化工学院');
INSERT INTO college VALUES(18, '冶金与环境学院');
INSERT INTO college VALUES(19, '能源科学与工程学院');
INSERT INTO college VALUES(20, '交通运输工程学院');
INSERT INTO college VALUES(21, '湘雅医学院');
INSERT INTO college VALUES(22, '口腔医学院');
INSERT INTO college VALUES(23, '资源加工与生物工程学院');
INSERT INTO college VALUES(24, '公共管理学院');
INSERT INTO college VALUES(25, '马克思主义学院');
INSERT INTO college VALUES(26, '软件学院');
INSERT INTO college VALUES(27, '生命科学学院');
INSERT INTO college VALUES(28, '信息安全与大数据研究院');
INSERT INTO college VALUES(29, '数学与统计学院');
INSERT INTO college VALUES(30, '药学院');
INSERT INTO college VALUES(31, '公共卫生学院');
INSERT INTO college VALUES(32, '体育教研部');*/

### major ###
INSERT INTO major VALUES(100, 1, '安全工程');
INSERT INTO major VALUES(101, 2, '材料国际');
INSERT INTO major VALUES(102, 3, '材料化学');
INSERT INTO major VALUES(103, 2, '材料科学与工程');
INSERT INTO major VALUES(104, 4, '财务管理');
INSERT INTO major VALUES(105, 1, '采矿工程');
INSERT INTO major VALUES(106, 5, '测绘工程');
INSERT INTO major VALUES(107, 6, '测控技术与仪器');
INSERT INTO major VALUES(108, 7, '产品设计');
INSERT INTO major VALUES(109, 8, '车辆工程');
INSERT INTO major VALUES(110, 1, '城市地下空间工程');
INSERT INTO major VALUES(111, 7, '城乡规划');
INSERT INTO major VALUES(112, 5, '地理信息科学');
INSERT INTO major VALUES(113, 5, '地球物理学');
INSERT INTO major VALUES(114, 5, '地质工程');
INSERT INTO major VALUES(115, 6, '电气工程及其自动化');
INSERT INTO major VALUES(116, 4, '电子商务');
INSERT INTO major VALUES(117, 6, '电子信息工程');
INSERT INTO major VALUES(118, 9, '电子信息科学与技术');
INSERT INTO major VALUES(119, 10, '法学');
INSERT INTO major VALUES(120, 11, '法医学');
INSERT INTO major VALUES(121, 12, '法语');
INSERT INTO major VALUES(122, 3, '粉体材料科学与工程');
INSERT INTO major VALUES(123, 3, '高分子材料与工程');
INSERT INTO major VALUES(124, 13, '工程管理');
INSERT INTO major VALUES(125, 13, '工程力学');
INSERT INTO major VALUES(126, 4, '工商管理');
INSERT INTO major VALUES(127, 4, '工商管理（高水平运动）');
INSERT INTO major VALUES(128, 9, '光电信息科学与工程');
INSERT INTO major VALUES(129, 14, '广播电视学');
INSERT INTO major VALUES(130, 4, '国际经济与贸易');
INSERT INTO major VALUES(131, 14, '汉语言文学');
INSERT INTO major VALUES(132, 15, '航空航天工程');
INSERT INTO major VALUES(133, 16, '护理学');
INSERT INTO major VALUES(134, 17, '化学工程与工艺');
INSERT INTO major VALUES(135, 18, '环境工程');
INSERT INTO major VALUES(136, 7, '环境设计');
INSERT INTO major VALUES(137, 4, '会计学');
INSERT INTO major VALUES(138, 11, '基础医学');
INSERT INTO major VALUES(139, 8, '机械设计制造及其自动化');
INSERT INTO major VALUES(140, 6, '计算机科学与技术');
INSERT INTO major VALUES(141, 19, '建筑环境与能源应用工程');
INSERT INTO major VALUES(142, 7, '建筑学');
INSERT INTO major VALUES(143, 20, '交通设备与控制工程');
INSERT INTO major VALUES(144, 20, '交通运输');
INSERT INTO major VALUES(145, 4, '金融学');
INSERT INTO major VALUES(146, 21, '精神医学');
INSERT INTO major VALUES(147, 22, '口腔医学(五年制)');
INSERT INTO major VALUES(148, 22, '口腔医学（5+3）');
INSERT INTO major VALUES(149, 23, '矿物加工工程');
INSERT INTO major VALUES(150, 24, '劳动与社会保障');
INSERT INTO major VALUES(151, 25, '理工预科');
INSERT INTO major VALUES(152, 21, '临床医学(八年)');
INSERT INTO major VALUES(153, 21, '临床医学(五年制)');
INSERT INTO major VALUES(154, 21, '麻醉学');
INSERT INTO major VALUES(155, 19, '能源与动力工程');
INSERT INTO major VALUES(156, 12, '日语');
INSERT INTO major VALUES(157, 26, '软件工程');
INSERT INTO major VALUES(158, 24, '社会学');
INSERT INTO major VALUES(159, 23, '生物技术');
INSERT INTO major VALUES(160, 27, '生物科学');
INSERT INTO major VALUES(161, 28, '生物信息学');
INSERT INTO major VALUES(162, 11, '生物医学工程');
INSERT INTO major VALUES(163, 4, '市场营销');
INSERT INTO major VALUES(164, 7, '视觉传达设计');
INSERT INTO major VALUES(165, 6, '数据科学与大数据技术');
INSERT INTO major VALUES(166, 29, '数学与应用数学');
INSERT INTO major VALUES(167, 14, '数字出版');
INSERT INTO major VALUES(168, 25, '思想政治教育');
INSERT INTO major VALUES(169, 15, '探测制导与控制技术');
INSERT INTO major VALUES(170, 13, '铁道工程');
INSERT INTO major VALUES(171, 6, '通信工程');
INSERT INTO major VALUES(172, 29, '统计学');
INSERT INTO major VALUES(173, 13, '土木工程');
INSERT INTO major VALUES(174, 13, '土木国际');
INSERT INTO major VALUES(175, 8, '微电子科学与工程');
INSERT INTO major VALUES(176, 25, '文史预科');
INSERT INTO major VALUES(177, 23, '无机非金属材料工程');
INSERT INTO major VALUES(178, 7, '舞蹈表演');
INSERT INTO major VALUES(179, 6, '物联网工程');
INSERT INTO major VALUES(180, 20, '物流工程');
INSERT INTO major VALUES(181, 12, '西班牙语');
INSERT INTO major VALUES(182, 13, '消防工程');
INSERT INTO major VALUES(183, 18, '新能源材料与器件');
INSERT INTO major VALUES(184, 19, '新能源科学与工程');
INSERT INTO major VALUES(185, 6, '信息安全');
INSERT INTO major VALUES(186, 4, '信息管理与信息系统');
INSERT INTO major VALUES(187, 29, '信息与计算科学');
INSERT INTO major VALUES(188, 24, '行政管理');
INSERT INTO major VALUES(189, 5, '遥感科学与技术');
INSERT INTO major VALUES(190, 30, '药学');
INSERT INTO major VALUES(191, 18, '冶金工程');
INSERT INTO major VALUES(192, 21, '医学检验技术');
INSERT INTO major VALUES(193, 7, '音乐表演');
INSERT INTO major VALUES(194, 12, '英语');
INSERT INTO major VALUES(195, 17, '应用化学');
INSERT INTO major VALUES(196, 9, '应用物理学');
INSERT INTO major VALUES(197, 31, '预防医学');
INSERT INTO major VALUES(198, 32, '运动训练');
INSERT INTO major VALUES(199, 17, '制药工程');
INSERT INTO major VALUES(200, 6, '智能科学与技术');
INSERT INTO major VALUES(201, 5, '资源勘查工程');
INSERT INTO major VALUES(202, 6, '自动化');

### clazz ###
INSERT INTO clazz VALUES(300, 1, '安全1701');
INSERT INTO clazz VALUES(301, 1, '安全1703');
INSERT INTO clazz VALUES(302, 1, '安全1702');
INSERT INTO clazz VALUES(303, 2, '材料国际1701');
INSERT INTO clazz VALUES(304, 2, '材料国际1702');
INSERT INTO clazz VALUES(305, 3, '材化1702');
INSERT INTO clazz VALUES(306, 3, '材化1703');
INSERT INTO clazz VALUES(307, 3, '材化1701');
INSERT INTO clazz VALUES(308, 4, '材料1708');
INSERT INTO clazz VALUES(309, 4, '材料1701');
INSERT INTO clazz VALUES(310, 4, '材料1707');
INSERT INTO clazz VALUES(311, 4, '材料1710');
INSERT INTO clazz VALUES(312, 4, '材料1703');
INSERT INTO clazz VALUES(313, 4, '材料1706');
INSERT INTO clazz VALUES(314, 4, '材料1704');
INSERT INTO clazz VALUES(315, 4, '材料1705');
INSERT INTO clazz VALUES(316, 4, '材料1709');
INSERT INTO clazz VALUES(317, 4, '材料1702');
INSERT INTO clazz VALUES(318, 5, '财务1701');
INSERT INTO clazz VALUES(319, 5, '财务1702');
INSERT INTO clazz VALUES(320, 5, '财务1703');
INSERT INTO clazz VALUES(321, 6, '采矿1703');
INSERT INTO clazz VALUES(322, 6, '采矿1704');
INSERT INTO clazz VALUES(323, 6, '采矿1702');
INSERT INTO clazz VALUES(324, 6, '采矿1701');
INSERT INTO clazz VALUES(325, 7, '测绘1702');
INSERT INTO clazz VALUES(326, 7, '测绘1703');
INSERT INTO clazz VALUES(327, 7, '测绘1701');
INSERT INTO clazz VALUES(328, 8, '测控1702');
INSERT INTO clazz VALUES(329, 8, '测控1701');
INSERT INTO clazz VALUES(330, 8, '测控1703');
INSERT INTO clazz VALUES(331, 9, '产设1702');
INSERT INTO clazz VALUES(332, 9, '产设1701');
INSERT INTO clazz VALUES(333, 9, '产设1703');
INSERT INTO clazz VALUES(334, 10, '车辆1701');
INSERT INTO clazz VALUES(335, 10, '车辆1702');
INSERT INTO clazz VALUES(336, 11, '城地1702');
INSERT INTO clazz VALUES(337, 11, '城地1703');
INSERT INTO clazz VALUES(338, 11, '城地1701');
INSERT INTO clazz VALUES(339, 12, '城规1701');
INSERT INTO clazz VALUES(340, 12, '城规1702');
INSERT INTO clazz VALUES(341, 13, '地信1701');
INSERT INTO clazz VALUES(342, 13, '地信1702');
INSERT INTO clazz VALUES(343, 14, '地物1702');
INSERT INTO clazz VALUES(344, 14, '地物1703');
INSERT INTO clazz VALUES(345, 14, '地物1701');
INSERT INTO clazz VALUES(346, 15, '地质1701');
INSERT INTO clazz VALUES(347, 15, '地质1702');
INSERT INTO clazz VALUES(348, 16, '电气1701');
INSERT INTO clazz VALUES(349, 16, '电气1705');
INSERT INTO clazz VALUES(350, 16, '电气1703');
INSERT INTO clazz VALUES(351, 16, '电气1706');
INSERT INTO clazz VALUES(352, 16, '电气1702');
INSERT INTO clazz VALUES(353, 16, '电气1707');
INSERT INTO clazz VALUES(354, 16, '电气1704');
INSERT INTO clazz VALUES(355, 17, '电商1701');
INSERT INTO clazz VALUES(356, 18, '电信1701');
INSERT INTO clazz VALUES(357, 19, '电科1703');
INSERT INTO clazz VALUES(358, 19, '电科1701');
INSERT INTO clazz VALUES(359, 19, '电科1702');
INSERT INTO clazz VALUES(360, 19, '电科1704');
INSERT INTO clazz VALUES(361, 19, '电科1705');
INSERT INTO clazz VALUES(362, 20, '法学1704');
INSERT INTO clazz VALUES(363, 20, '法学1701');
INSERT INTO clazz VALUES(364, 20, '法学1703');
INSERT INTO clazz VALUES(365, 20, '法学1705');
INSERT INTO clazz VALUES(366, 20, '法学1702');
INSERT INTO clazz VALUES(367, 21, '法医1701');
INSERT INTO clazz VALUES(368, 22, '法语1701');
INSERT INTO clazz VALUES(369, 23, '粉体1703');
INSERT INTO clazz VALUES(370, 23, '粉体1701');
INSERT INTO clazz VALUES(371, 23, '粉体1704');
INSERT INTO clazz VALUES(372, 23, '粉体1702');
INSERT INTO clazz VALUES(373, 23, '粉体1705');
INSERT INTO clazz VALUES(374, 24, '高分子1701');
INSERT INTO clazz VALUES(375, 25, '工管1701');
INSERT INTO clazz VALUES(376, 25, '工管1702');
INSERT INTO clazz VALUES(377, 26, '工力1701');
INSERT INTO clazz VALUES(378, 26, '工力1702');
INSERT INTO clazz VALUES(379, 27, '工商1701');
INSERT INTO clazz VALUES(380, 28, '工商(高水平)1701');
INSERT INTO clazz VALUES(381, 29, '光电1701');
INSERT INTO clazz VALUES(382, 29, '光电1702');
INSERT INTO clazz VALUES(383, 30, '广电1701');
INSERT INTO clazz VALUES(384, 30, '广电1702');
INSERT INTO clazz VALUES(385, 31, '国贸1702');
INSERT INTO clazz VALUES(386, 31, '国贸1703');
INSERT INTO clazz VALUES(387, 31, '国贸1701');
INSERT INTO clazz VALUES(388, 32, '中文1702');
INSERT INTO clazz VALUES(389, 32, '中文1704');
INSERT INTO clazz VALUES(390, 32, '中文1701');
INSERT INTO clazz VALUES(391, 32, '中文1703');
INSERT INTO clazz VALUES(392, 33, '航天1701');
INSERT INTO clazz VALUES(393, 34, '护理1702');
INSERT INTO clazz VALUES(394, 34, '护理1704');
INSERT INTO clazz VALUES(395, 34, '护理1701');
INSERT INTO clazz VALUES(396, 34, '护理1703');
INSERT INTO clazz VALUES(397, 35, '化工1702');
INSERT INTO clazz VALUES(398, 35, '化工1703');
INSERT INTO clazz VALUES(399, 35, '化工1704');
INSERT INTO clazz VALUES(400, 35, '化工1701');
INSERT INTO clazz VALUES(401, 36, '环境1702');
INSERT INTO clazz VALUES(402, 36, '环境1701');
INSERT INTO clazz VALUES(403, 37, '环设1701');
INSERT INTO clazz VALUES(404, 37, '环设1702');
INSERT INTO clazz VALUES(405, 38, '会计1703');
INSERT INTO clazz VALUES(406, 38, '会计1701');
INSERT INTO clazz VALUES(407, 38, '会计1702');
INSERT INTO clazz VALUES(408, 39, '基础医学1701');
INSERT INTO clazz VALUES(409, 40, '机械1703');
INSERT INTO clazz VALUES(410, 40, '机械1711');
INSERT INTO clazz VALUES(411, 40, '机械1712');
INSERT INTO clazz VALUES(412, 40, '机械1702');
INSERT INTO clazz VALUES(413, 40, '机械1701');
INSERT INTO clazz VALUES(414, 40, '机械1709');
INSERT INTO clazz VALUES(415, 40, '机械1708');
INSERT INTO clazz VALUES(416, 40, '机械1710');
INSERT INTO clazz VALUES(417, 40, '机械1707');
INSERT INTO clazz VALUES(418, 40, '机械1713');
INSERT INTO clazz VALUES(419, 40, '机械1705');
INSERT INTO clazz VALUES(420, 40, '机械1704');
INSERT INTO clazz VALUES(421, 40, '机械1706');
INSERT INTO clazz VALUES(422, 41, '计算机1701');
INSERT INTO clazz VALUES(423, 41, '计算机1706');
INSERT INTO clazz VALUES(424, 41, '计算机1704');
INSERT INTO clazz VALUES(425, 41, '计算机1703');
INSERT INTO clazz VALUES(426, 41, '计算机1702');
INSERT INTO clazz VALUES(427, 41, '计算机1705');
INSERT INTO clazz VALUES(428, 42, '建环1701');
INSERT INTO clazz VALUES(429, 42, '建环1702');
INSERT INTO clazz VALUES(430, 43, '建筑1701');
INSERT INTO clazz VALUES(431, 43, '建筑1702');
INSERT INTO clazz VALUES(432, 44, '交设1704');
INSERT INTO clazz VALUES(433, 44, '交设1706');
INSERT INTO clazz VALUES(434, 44, '交设1705');
INSERT INTO clazz VALUES(435, 44, '交设1703');
INSERT INTO clazz VALUES(436, 44, '交设1701');
INSERT INTO clazz VALUES(437, 44, '交设1702');
INSERT INTO clazz VALUES(438, 45, '交运1701');
INSERT INTO clazz VALUES(439, 45, '交运1706');
INSERT INTO clazz VALUES(440, 45, '交运1703');
INSERT INTO clazz VALUES(441, 45, '交运1704');
INSERT INTO clazz VALUES(442, 45, '交运1705');
INSERT INTO clazz VALUES(443, 45, '交运1702');
INSERT INTO clazz VALUES(444, 46, '金融1703');
INSERT INTO clazz VALUES(445, 46, '金融1702');
INSERT INTO clazz VALUES(446, 46, '金融1701');
INSERT INTO clazz VALUES(447, 47, '精神1701');
INSERT INTO clazz VALUES(448, 48, '口腔（五年）1701');
INSERT INTO clazz VALUES(449, 49, '口腔（5+3）1702');
INSERT INTO clazz VALUES(450, 49, '口腔（5+3）1701');
INSERT INTO clazz VALUES(451, 50, '矿物1702');
INSERT INTO clazz VALUES(452, 50, '矿物1701');
INSERT INTO clazz VALUES(453, 50, '矿物1703');
INSERT INTO clazz VALUES(454, 50, '矿物1704');
INSERT INTO clazz VALUES(455, 51, '劳保1701');
INSERT INTO clazz VALUES(456, 51, '劳保1702');
INSERT INTO clazz VALUES(457, 52, '理工预科1702班');
INSERT INTO clazz VALUES(458, 52, '理工预科1703班');
INSERT INTO clazz VALUES(459, 52, '理工预科1701班');
INSERT INTO clazz VALUES(460, 53, '临床（八年）1704');
INSERT INTO clazz VALUES(461, 53, '临床（八年）1703');
INSERT INTO clazz VALUES(462, 53, '临床（八年）1702');
INSERT INTO clazz VALUES(463, 53, '临床（八年）1701');
INSERT INTO clazz VALUES(464, 54, '临床（五年）1701');
INSERT INTO clazz VALUES(465, 54, '临床（五年）1710');
INSERT INTO clazz VALUES(466, 54, '临床（五年）1707');
INSERT INTO clazz VALUES(467, 54, '临床（五年）1703');
INSERT INTO clazz VALUES(468, 54, '临床（五年）1704');
INSERT INTO clazz VALUES(469, 54, '临床（五年）1709');
INSERT INTO clazz VALUES(470, 54, '临床（五年）1702');
INSERT INTO clazz VALUES(471, 54, '临床（五年）1705');
INSERT INTO clazz VALUES(472, 54, '临床（五年）1712');
INSERT INTO clazz VALUES(473, 54, '临床（五年）1706');
INSERT INTO clazz VALUES(474, 54, '临床（五年）1708');
INSERT INTO clazz VALUES(475, 54, '临床（五年）1711');
INSERT INTO clazz VALUES(476, 55, '麻醉1702');
INSERT INTO clazz VALUES(477, 55, '麻醉1701');
INSERT INTO clazz VALUES(478, 56, '能动1701');
INSERT INTO clazz VALUES(479, 56, '能动1702');
INSERT INTO clazz VALUES(480, 56, '能动1704');
INSERT INTO clazz VALUES(481, 56, '能动1703');
INSERT INTO clazz VALUES(482, 56, '能动1705');
INSERT INTO clazz VALUES(483, 57, '日语1701');
INSERT INTO clazz VALUES(484, 58, '软件1703');
INSERT INTO clazz VALUES(485, 58, '软件1705');
INSERT INTO clazz VALUES(486, 58, '软件1706');
INSERT INTO clazz VALUES(487, 58, '软件1704');
INSERT INTO clazz VALUES(488, 58, '软件1701');
INSERT INTO clazz VALUES(489, 58, '软件1702');
INSERT INTO clazz VALUES(490, 59, '社会1702');
INSERT INTO clazz VALUES(491, 59, '社会1701');
INSERT INTO clazz VALUES(492, 60, '生技1702');
INSERT INTO clazz VALUES(493, 60, '生技1701');
INSERT INTO clazz VALUES(494, 61, '生科1702');
INSERT INTO clazz VALUES(495, 61, '生科1701');
INSERT INTO clazz VALUES(496, 62, '生信1701');
INSERT INTO clazz VALUES(497, 63, '生医1701');
INSERT INTO clazz VALUES(498, 64, '营销1701');
INSERT INTO clazz VALUES(499, 65, '视传1701');
INSERT INTO clazz VALUES(500, 65, '视传1702');
INSERT INTO clazz VALUES(501, 65, '视传1703');
INSERT INTO clazz VALUES(502, 66, '大数据1702');
INSERT INTO clazz VALUES(503, 66, '大数据1701');
INSERT INTO clazz VALUES(504, 67, '应数1703');
INSERT INTO clazz VALUES(505, 67, '应数1702');
INSERT INTO clazz VALUES(506, 67, '应数1701');
INSERT INTO clazz VALUES(507, 68, '出版1701');
INSERT INTO clazz VALUES(508, 68, '出版1702');
INSERT INTO clazz VALUES(509, 69, '思政1701');
INSERT INTO clazz VALUES(510, 70, '探控1701');
INSERT INTO clazz VALUES(511, 71, '铁道1702');
INSERT INTO clazz VALUES(512, 71, '铁道1703');
INSERT INTO clazz VALUES(513, 71, '铁道1701');
INSERT INTO clazz VALUES(514, 72, '通信1704');
INSERT INTO clazz VALUES(515, 72, '通信1701');
INSERT INTO clazz VALUES(516, 72, '通信1702');
INSERT INTO clazz VALUES(517, 72, '通信1703');
INSERT INTO clazz VALUES(518, 73, '统计1702');
INSERT INTO clazz VALUES(519, 73, '统计1703');
INSERT INTO clazz VALUES(520, 73, '统计1701');
INSERT INTO clazz VALUES(521, 74, '土木1710');
INSERT INTO clazz VALUES(522, 74, '土木1704');
INSERT INTO clazz VALUES(523, 74, '土木1707');
INSERT INTO clazz VALUES(524, 74, '土木1711');
INSERT INTO clazz VALUES(525, 74, '土木1713');
INSERT INTO clazz VALUES(526, 74, '土木1709');
INSERT INTO clazz VALUES(527, 74, '土木1703');
INSERT INTO clazz VALUES(528, 74, '土木1701');
INSERT INTO clazz VALUES(529, 74, '土木1708');
INSERT INTO clazz VALUES(530, 74, '土木1702');
INSERT INTO clazz VALUES(531, 74, '土木1714');
INSERT INTO clazz VALUES(532, 74, '土木1712');
INSERT INTO clazz VALUES(533, 74, '土木1706');
INSERT INTO clazz VALUES(534, 74, '土木1705');
INSERT INTO clazz VALUES(535, 75, '土木国际1701');
INSERT INTO clazz VALUES(536, 75, '土木国际1702');
INSERT INTO clazz VALUES(537, 76, '微电子1701');
INSERT INTO clazz VALUES(538, 76, '微电子1702');
INSERT INTO clazz VALUES(539, 77, '文史预科1701班');
INSERT INTO clazz VALUES(540, 78, '无机1702');
INSERT INTO clazz VALUES(541, 78, '无机1701');
INSERT INTO clazz VALUES(542, 79, '舞蹈1701');
INSERT INTO clazz VALUES(543, 80, '物联网1701');
INSERT INTO clazz VALUES(544, 80, '物联网1702');
INSERT INTO clazz VALUES(545, 81, '物流1701');
INSERT INTO clazz VALUES(546, 82, '西班牙语1701');
INSERT INTO clazz VALUES(547, 83, '消防1702');
INSERT INTO clazz VALUES(548, 83, '消防1701');
INSERT INTO clazz VALUES(549, 84, '能器1702');
INSERT INTO clazz VALUES(550, 84, '能器1701');
INSERT INTO clazz VALUES(551, 85, '新能源1702');
INSERT INTO clazz VALUES(552, 85, '新能源1701');
INSERT INTO clazz VALUES(553, 86, '信安1702');
INSERT INTO clazz VALUES(554, 86, '信安1701');
INSERT INTO clazz VALUES(555, 87, '信管1702');
INSERT INTO clazz VALUES(556, 87, '信管1701');
INSERT INTO clazz VALUES(557, 88, '信科1701');
INSERT INTO clazz VALUES(558, 88, '信科1702');
INSERT INTO clazz VALUES(559, 89, '行政1702');
INSERT INTO clazz VALUES(560, 89, '行政1701');
INSERT INTO clazz VALUES(561, 90, '遥感1701');
INSERT INTO clazz VALUES(562, 91, '药学1703');
INSERT INTO clazz VALUES(563, 91, '药学1702');
INSERT INTO clazz VALUES(564, 91, '药学1701');
INSERT INTO clazz VALUES(565, 92, '冶金1701');
INSERT INTO clazz VALUES(566, 92, '冶金1705');
INSERT INTO clazz VALUES(567, 92, '冶金1704');
INSERT INTO clazz VALUES(568, 92, '冶金1706');
INSERT INTO clazz VALUES(569, 92, '冶金1703');
INSERT INTO clazz VALUES(570, 92, '冶金1702');
INSERT INTO clazz VALUES(571, 93, '检验1702');
INSERT INTO clazz VALUES(572, 93, '检验1703');
INSERT INTO clazz VALUES(573, 93, '检验1701');
INSERT INTO clazz VALUES(574, 94, '音乐1702');
INSERT INTO clazz VALUES(575, 94, '音乐1701');
INSERT INTO clazz VALUES(576, 95, '英语1704');
INSERT INTO clazz VALUES(577, 95, '英语1703');
INSERT INTO clazz VALUES(578, 95, '英语1701');
INSERT INTO clazz VALUES(579, 95, '英语1702');
INSERT INTO clazz VALUES(580, 96, '应化1702');
INSERT INTO clazz VALUES(581, 96, '应化1706');
INSERT INTO clazz VALUES(582, 96, '应化1704');
INSERT INTO clazz VALUES(583, 96, '应化1705');
INSERT INTO clazz VALUES(584, 96, '应化1703');
INSERT INTO clazz VALUES(585, 96, '应化1701');
INSERT INTO clazz VALUES(586, 97, '应物1701');
INSERT INTO clazz VALUES(587, 98, '预防1701');
INSERT INTO clazz VALUES(588, 98, '预防1703');
INSERT INTO clazz VALUES(589, 98, '预防1702');
INSERT INTO clazz VALUES(590, 99, '运训1702');
INSERT INTO clazz VALUES(591, 99, '运训1701');
INSERT INTO clazz VALUES(592, 100, '制药1702');
INSERT INTO clazz VALUES(593, 100, '制药1701');
INSERT INTO clazz VALUES(594, 101, '智能1702');
INSERT INTO clazz VALUES(595, 101, '智能1701');
INSERT INTO clazz VALUES(596, 102, '地勘1701');
INSERT INTO clazz VALUES(597, 102, '地勘1703');
INSERT INTO clazz VALUES(598, 102, '地勘1702');
INSERT INTO clazz VALUES(599, 103, '自动化1704');
INSERT INTO clazz VALUES(600, 103, '自动化1707');
INSERT INTO clazz VALUES(601, 103, '自动化1702');
INSERT INTO clazz VALUES(602, 103, '自动化1705');
INSERT INTO clazz VALUES(603, 103, '自动化1701');
INSERT INTO clazz VALUES(604, 103, '自动化1706');
INSERT INTO clazz VALUES(605, 103, '自动化1703');

### admin ###
INSERT INTO admin(account, password, username, role, rolerange) VALUES('hstc@root', 'hstc@root', '系统管理员',0, '@hstc#@hstc#@hstc#@hstc');

### titlediff ###
INSERT INTO titlediff VALUES(1, '易');
INSERT INTO titlediff VALUES(2, '中');
INSERT INTO titlediff VALUES(3, '难');

### title ###
INSERT INTO title(name,diff_id,score) VALUES('( )不能减少用户计算机被攻击的可能性。', 1, 2);
INSERT INTO title(name,diff_id,score) VALUES('计算机网络中的安全是指（）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('按我国国家条例规定，全国计算机信息系统安全保护工作的主管部门是(   )。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('NET是（  ）机构组织的域名。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('两会中提出，要组合法规、（）和技术手段，加强对影响国计民生的基础信息系统的安全监管。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('Windows NT 和Windows 2000系统能设置为在几次无效登录后锁定帐号,这可以防止(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列哪个选项属于侵犯个人隐私的攻击(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('以下哪项不属于防止口令猜测的措施？ (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列不属于系统安全的技术是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('抵御电子邮箱入侵措施中，不正确的是（   ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络监听是(   )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('不属于计算机病毒防治的策略的是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('针对数据包过滤和应用网关技术存在的缺点而引入的防火墙技术，这是（   ）防火墙的特点。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在每天下午5点使用计算机结束时断开终端的连接属于（   ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('2003年上半年发生的较有影响的计算机及网络病毒是什么(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('SQL 杀手蠕虫病毒发作的特征是什么(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('当今IT 的发展与安全投入，安全意识和安全手段之间形成(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('我国的计算机年犯罪率的增长是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息安全风险缺口是指(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息网络安全的第一个时代(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息网络安全的第三个时代(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息网络安全的第二个时代(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络安全在多网合一时代的脆弱性体现在(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('人对网络的依赖性最高的时代(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络攻击与防御处于不对称状态是因为(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络攻击的种类(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('语义攻击利用的是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('1995年之后信息网络安全问题就是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('风险评估的三个要素(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息网络安全（风险）评估的方法(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('PDR模型与访问控制的主要区别(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息安全中PDR模型的关键因素是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机网络最早出现在哪个年代(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('最早研究计算机网络的目的是什么？(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('最早的计算机网络与传统的通信网络最大的区别是什么？(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('关于80年代Mirros 蠕虫危害的描述，哪句话是错误的？(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('以下关于DOS攻击的描述，哪句话是正确的？(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('许多黑客攻击都是利用软件实现中的缓冲区溢出的漏洞，对于这一威胁，最可靠的解决方案是什么？(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下面哪个功能属于操作系统中的安全功能 (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下面哪个功能属于操作系统中的日志记录功能(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('(  )成舆情引导和危机处理重要抓手',1,2);
INSERT INTO title(name,diff_id,score) VALUES('Windows NT提供的分布式安全环境又被称为(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下面哪一个情景属于身份验证（Authentication）过程(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下面哪一个情景属于授权（Authorization）(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下面哪一个情景属于审计（Audit）(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('以网络为本的知识文明人们所关心的主要安全是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('第一次出现"HACKER"这个词是在(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('可能给系统造成影响或者破坏的人包括(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('黑客的主要攻击手段包括(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('从统计的情况看，造成危害最大的黑客攻击是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('第一个计算机病毒出现在(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('口令攻击的主要目的是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('通过口令使用习惯调查发现有大约___%的人使用的口令长度低于5个字符的(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('通常一个三个字符的口令破解需要(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('黑色星期四是指(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('大家所认为的对Internet安全技术进行研究是从_______时候开始的 (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机紧急应急小组的简称是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('邮件炸弹攻击主要是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('逻辑炸弹通常是通过(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('1996年上海某寻呼台发生的逻辑炸弹事件，造事者被判"情节轻微，无罪释放"是因为(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('扫描工具(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('DDOS攻击是利用_____进行攻击(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('全国首例计算机入侵银行系统是通过(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('黑客造成的主要安全隐患包括(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('从统计的资料看，内部攻击是网络攻击的(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('江泽民主席指出信息战的主要形式是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('广义地说，信息战是指敌对双方为达成各自的国家战略目标，为夺取______在等各个领域的信息优势，运用信息和信息技术手段而展开的信息斗争(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('狭义地说，信息战是指军事领域里的信息斗争。它是敌对双方为争夺信息的______，通过利用、破坏敌方和保护己方的信息、信息系统而采取的作战形式 (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息战的战争危害较常规战争的危害(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息战的军人身份确认较常规战争的军人身份确认(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('互联网用户应在其网络正式联通之日起_____内，到公安机关办理国际联网备案手续(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('一般性的计算机安全事故和计算机违法案件可由_____受理(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机刑事案件可由_____受理(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机信息系统发生安全事故和案件，应当______在内报告当地公安机关公共信息网络安全监察部门(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对计算机安全事故的原因的认定或确定由_____作出(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对发生计算机安全事故和案件的计算机信息系统，如存在安全隐患的，______应当要求限期整改(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('传入我国的第一例计算机病毒是＿＿(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列情形中不构成侵权的是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机病毒是_____(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机病毒不能够_____(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('1994年我国颁布的第一个与信息安全有关的法规是_____(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网页病毒主要通过以下途径传播(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('故意制作、传播计算机病毒等破坏性程序，影响计算机系统正常运行，后果严重的，将受到____处罚(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机病毒防治产品根据____标准进行检验(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('《计算机病毒防治管理办法》是在哪一年颁布的(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('边界防范的根本作用是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('路由设置是边界防范的(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络物理隔离是指(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('VPN是指(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('带VPN的防火墙的基本原理流程是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('防火墙主要可以分为(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('NAT 是指(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('VPN通常用于建立____之间的安全通道(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在安全区域划分中DMZ 区通常用做(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('目前用户局域网内部区域划分通常通过____实现(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('防火墙的部署(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('防火墙是一个(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('目前的防火墙防范主要是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在被屏蔽的主机体系中，堡垒主机位于(  )中，所有的外部连接都经过滤路由器到它上面去',1,2);
INSERT INTO title(name,diff_id,score) VALUES('IP地址欺骗通常是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('Code Red爆发于2001年7月，利用微软的IIS漏洞在Web服务器之间传播。针对这一漏洞，微软早在2001年三月就发布了相关的补丁。如果今天服务器仍然感染Code Red，那么属于哪个阶段的问题?（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('现代主动安全防御的主要手段是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('古代主动安全防御的典型手段有(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机信息系统，是指由(  )及其相关的和配套的设备、设施(含网络)构成的，按照一定的应用目标和规则对信息进行采集、加工、储存、传输、检索等处理的人机系统。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机信息系统的安全保护，应当保障(  )，运行环境的安全，保障信息的安全，保障计算机功能的正常发挥，以维护计算机信息系统的安全运行。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络蠕虫一般指利用计算机系统漏洞、通过互联网传播扩散的一类病毒程序。为了防止受到网络蠕虫的侵害，应当注意对(  )进行升级更新。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机病毒是指(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机连网的主要目的是________。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('关于计算机病毒知识，叙述不正确的是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('公司USB接口标准：院中心研发部门(  ),一般职能部门(  ).',1,2);
INSERT INTO title(name,diff_id,score) VALUES('木马程序一般是指潜藏在用户电脑中带有恶意性质的(  )，利用它可以在用户不知情的情况下窃取用户联网电脑上的重要数据信息。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('为了防止各种各样的病毒对计算机系统造成危害，可以在计算机上安装防病毒软件，并注意及时(  )，以保证能防止和查杀新近出现的病毒',1,2);
INSERT INTO title(name,diff_id,score) VALUES('局域网内如果一个计算机的IP地址与另外一台计算机的IP地址一样，则（   ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('同一根网线的两头插在同一交换机上会（   ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('企业重要数据要及时进行（　　），以防出现以外情况导致数据丢失。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('WINDOWS主机推荐使用（  ）格式',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机网络是地理上分散的多台（  ）遵循约定的通信协议，通过软硬件互联的系统。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('密码学的目的是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('某公司未经授权,擅自在其经营的网站提供某电影供在线观看,该公司侵犯了制作该电影的电影公司的(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('互联网上网服务营业场所不得允许未成年人进入经营者应当要求其出示(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在网络环境下权利管理信息专指以(  )出现的信息,它们被嵌在电子文档里,附加于作品的每件复制品上或作品中向公众传播时显示出来',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在网络纠纷案件中网络游戏客户的号码被盗了,应采取的合理措施是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('PKI支持的服务不包括（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对于IPv6，两会中提议，要加强对部署IPv6应用机构的（  ）工作。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('PKI管理对象不包括（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下面不属于PKI组成部分的是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('SSL产生会话密钥的方式是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('属于Web中使用的安全协议（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('传输层保护的网络采用的主要技术是建立在（  ）基础上的。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('通常所说的移动VPN是指（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('属于第二层的VPN隧道协议有（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('GRE协议的乘客协议是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('VPN的加密手段为（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('将公司与外部供应商、客户及其他利益相关群体相连接的是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('PPTP、L2TP和L2F隧道协议属于（  ）协议。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对于计算机病毒的描述,以下哪个是正确的?(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('不属于VPN的核心技术是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('目前，VPN使用了（  ）技术保证了通信的安全性。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）通过一个拥有与专用网络相同策略的共享基础设施，提供对企业内部网或外部网的远程访问。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）是世界上首个强制推行网络实名制的国家。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机软件的著作权属于(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('杀毒软件能够(  )。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('口令破解的最好方法是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('杂凑码最好的攻击方式是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('可以被数据完整性机制防止的攻击方式是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('会话侦听与劫持技术属于（  ）技术',1,2);
INSERT INTO title(name,diff_id,score) VALUES('PKI的主要组成不包括（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('恶意代码是（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('社会工程学常被黑客用于（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('windows中强制终止进程的命令是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('现代病毒木马融合了（  ）新技术',1,2);
INSERT INTO title(name,diff_id,score) VALUES('溢出攻击的核心是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('《中华人民共和国网络安全法》自（  ）起施行。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络运营者应当对其收集的用户信息严格保密，并建立健全（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络运营者不得泄露、篡改、毁损其收集的个人信息；未经（   ）同意，不得向他人提供个人信息。但是，经过处理无法识别特定个人且不能复原的除外。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('企业负责人年度关键业绩指标评价标准中（专业公司），网络与信息安全任务完成率中:重点考核落实公司网络与信息安全方面工作任务和要求的任务完成情况，不发生网络与信息安全事件方面。发生网络安全重大管理违章事件，每起减该指标分值的%；发生网络安全较大管理违章事件，每起减该指标分值的    %；发生网络安全管理违章事件，每起减该指标分值的    %；发生网络安全技术违章事件，每起减该指标分值的 （  ）   %。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）负责统筹协调网络安全工作和相关监督管理工作。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列不属于网络系统安全的技术是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('企业负责人年度业绩考核减项指标及评价标准，各单位提供的信息系统软硬件产品存在恶意漏洞、恶意代码的，每起减   分；引起严重后果的，每起减   分。（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('国家坚持网络安全与信息化发展并重，遵循（  ）的方针，推进网络基础设施建设和互联互通，鼓励网络技术创新和应用，支持培养网络安全人才，建立健全网络安全保障体系，提高网络安全保护能力。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('《网络安全法》规定，各级人民政府及其有关部门应当组织开展经常性的网络安全宣传教育，并（  ）有关单位做好网络安全宣传教育工作。  ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('国家建立和完善网络安全标准体系。（  ）和国务院其他有关部门根据各自的职责，组织制定并适时修订有关网络安全管理以及网络产品、服务和运行安全的国家标准、行业标准',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络关键设备和网络安全专用产品应当按照相关国家标准的强制性要求，由具备资格的机构（  ）或者安全检测符合要求后，方可销售或者提供。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('国家鼓励开发网络数据安全保护和利用技术，促进（  ）开放，推动技术创新和经济社会发展。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('家倡导诚实守信、健康文明的网络行为，推动传播社会主义核心价值观，采取措施提高全社会的（  ）和水平，形成全社会共同参与促进网络安全的良好环境。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('根据《网络安全法》的规定，国家实行网络安全（  ）保护制度。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('开发环境及测试环境应与实际运行环境及办公环境（   ），同时测试环境禁止使用生产数据。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('系统上线前，研发项目组应严格遵循《国家电网公司信息系统上下线管理规定》要求开展（  ），并增加代码安全检测内容。严格落实测试各环节相关要求，并及时将问题隐患进行整改。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('根据《网络安全法》的规定，关键信息基础设施的运营者在中华人民共和国境内运营中收集和产生的个人信息和重要数据应当在（  ）。因业务需要，确需向境外提供的，应当按照国家网信部门会同国务院有关部门制定的办法进行安全评估，法律、行政法规另有规定的，依照其规定。      ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('关键信息基础设施的运营者采购网络产品和服务，应当按照规定与提供者签订（  ）协议，明确安全和保密义务与责任 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('依法负有网络安全监督管理职责的部门及其工作人员，必须对在履行职责中知悉的（  ）严格保密，不得泄露、出售或者非法向他人提供。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('关键信息基础设施的运营者应当自行或者委托网络安全服务机构对其网络的安全性和可能存在的风险（  ）至少进行一次检测评估，并将检测评估情况和改进措施报送相关负责关键信息基础设施安全保护工作的部门。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('关键信息基础设施的运营者在中华人民共和国境内运营中收集和产生的个人信息和重要数据应当在境内存储。因业务需要，确需向境外提供的，应当按照（  ）会同国务院有关部门制定的办法进行安全评估；法律、行政法规另有规定的，依照其规定。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('各单位要认真组织开展网络安全宣传学习年活动，抓好《网络安全法》的学习宣贯，全面开展普法工作，做到深入理解、逐条落实。修编网络安全相关规章制度，将网络安全法律要求（  ），贯穿公司（  ），做到（  ）。   ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('根据《中华人民共和国网络安全法》 网络运营者不履行本法第二十一条、第二十五条规定的网络安全保护义务的，由有关主管部门责令改正，给予警告;拒不改正或者导致危害网络安全等后果的，处( )罚款，对直接负责的主管人员处五千元以上五万元以下罚款 (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('狠抓网络安全责任落实和绩效考核。各单位要牢固树立风险意识，充分认识责任义务，层层签订（   ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('要狠抓网络安全责任落实。要（   ），加强对信息系统开发、使用、运维人员的管理，加大考核力度，对各类违规、违章和网络信息安全事件，严肃问责、坚决处理。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('检测和运行单位做好网络安全的“三关三监测”，即（   ）的检测和闭环管理，防控网络安全风险引入。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('个人发现网络运营者违反法律、行政法规的规定或者双方的约定收集、使用其个人信息的，有权要求网络运营者  其个人信息。（    ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('信息系统高危漏洞补丁在漏洞发布  个工作日之内；中（低）危漏洞补丁在漏洞发布  个工作日之内，完成补丁制作及自测工作。 （    ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('数据（网页）遭篡改、假冒、泄露或窃取，对公司安全生产、经营活动或社会形象产生特别重大影响，可判定为（   ）级信息系统事件。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（   ）应当为公安机关、国家安全机关依法维护国家安全和侦查犯罪的活动提供技术支持和协助。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('解决实际问题，是引导舆论的（  ）手段。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在舆情引导与危机处理中，（  ）思维十分重要。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('健全舆情处置机制，涉事责任部门作为第（  ）责任主体。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对待宗教问题采取“（  ）”“十分严谨”“周密考虑”的态度。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（   ） 是今后处理少数民族事件和民族地区可能出现的重大事件的指导原则。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络舆情联动应急机制，主要包括（  ）、预警、应对三个环节。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情引导是一个大的概念、一项系统工程，包括舆情监测、舆情研判、舆情应对及具体的封端删除、正面宣传引导和（  ）等。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情本身也是有等级的，可分为（  ）等级。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆论引导贵在（  ）。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情危机应对有两个基本立足点：一是引导（）;二是引导（）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆论引导的方向：（  ）、引导影响流、消除噪音流。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('如果经过舆情研判其信息属于有害信息，那首要的措施就是(  )。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）是中国管理互联网的唯一最高机关。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('我国实行的是网络媒体（  ）管理制度。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('一个涉我舆情出现后，首要的工作就是查清信息（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('甲冒充新闻工作者,以在新闻网站上发布隐私为要挟向乙、丙、丁等人索取了数十万财物。甲的行为应当认定为(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对微博、微信、客户端，从（  ）的角度看，技术上没有难度，认知上也不困难。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('以微博、微信和客户端为代表的新媒体，正日益改变着舆论格局，移动终端正成为中国新的舆论场和沟通对话新通道，“两微一端”已成为网络舆论的（  ）。  ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('对涉及领导干部的（  ）公众事件，地方党委和政府只能一味捂着、盖着，力图大事化小、小事化了。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在碰一些带有宗教色彩或有宗教徒参与的群体性事件时，（  ）笼统地将其归结为宗教原因。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）是舆情发生发展客观规律的要求，也是信息传播和舆论引导的现实需要。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆论引导（  ）说完就完。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ） 要快，甚至越快越好，这强调的是不要失语，要抢占先机，争取主动。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('结合相关举措的新闻报道配发评论，是舆论引导的（  ）方式。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情引导与（  ）的能力已然和创造财富的能力同等重要。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('新媒体时代（  ）的传播，完全摆脱了时间与空间的限制。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('互联网最大的优点是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('移动互联是大势所趋，是历史潮流。未来的世界是(  )的世界。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）同志指出，做好网上舆论工作是一项长期任务，要创新改进网上宣传，运用网络传播规律，弘扬主旋律，激发正能量，大力培育和践行社会主义核心价值观，把握好网上舆论引导的时、度、效，使网络空间清朗起来。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('新形势下，只有充分运用媒体融合传播，多终端、多媒体、多样态融合传播，才能更高效地扩大舆论（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('建立（  ）舆情的机制，一是第一时间发现舆情苗头，收集舆情信息，二是建立信息收集平台，整理舆情信息。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在新媒体时代，舆情传播的（  ）和路径已经发生了根本性的变革。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('“你是准备替党说话，还是准备替老百姓说话？”迅速成了（  ）年又一句网络雷语！',1,2);
INSERT INTO title(name,diff_id,score) VALUES('官员涉嫌（  ），恐怕是所有党政舆情首当其冲的焦点了。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）舆情焦点主要集中在官员涉嫌奢侈腐败、打官腔说雷语、官场不良生态、违法及背离公平正义、案件真相含混、灾害救援不力、伤害民族感情、漠视民生权益、错误行政理念、 敏感新政出台等方面。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES(' 媒体融合发展是传媒领域正在进行的一场重大而深刻的变革。传统媒体和新兴媒体的关系，大体经历了三个阶段，一是传统媒体建设新兴媒体，二是传统媒体和新兴媒体互动发展，三是传统媒体和新兴媒体融合发展，现在正进入第（  ）个阶段。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）时代人人都是发言人，人人都是宣传员，人人都是思想政治工作者。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('“第三方”的角色，一般由（  ）来担当。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）有两大硬性要求一是发言主体要具备相应的能力和水平，包括基本发言素质和网络素养等；二是建设好网络发言阵地，包括政务网站、微博、微信发布平台等。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ） 有三大必备意识一是信息要真实充足;二是秉持平等交流观念;三是保持频度和效率。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('充分运用（  ）通道发言，目的有两点，一是坚持主动发布政务信息，二是积极回应社会关切。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('遇到网络敲诈等类似情况，相关信息明显不真实、无中生有，捕风捉影、道听途说，或者违反了相关法律，构成了侵权、违法的，应立即举报，借助（  ） 手段加以解决。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('一个涉我舆情出现后，首要的工作就是（  ）。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('抓住矛盾，运用矛盾分析法，解决现实问题，是舆论引导（  ）和最有效的方式。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('报送舆情信息，数量是（  ），质量是关键。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('好的舆情分析报告要有鲜明的（  ）、新颖的观点、严密的逻辑、精巧的结构和准确的文字。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('全面反映舆情，（  ）事无巨细一律记录。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）直接决定着舆情信息的价值。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）是舆情信息的生命，是对舆情产品信息内容首要的最基本的要求。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情研判，研什么？判什么？直接点讲，就是研判其（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络舆情信息价值的大小，主要取决于舆情信息的（  ）、典型性和危害性。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('互联网的(   )也是一种生产力。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('微博传播是（  ）的广泛传播',1,2);
INSERT INTO title(name,diff_id,score) VALUES('“两微一端”已成（  ）的重心。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('新兴媒体传播的一个重要特点就是（  ）。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('平等对话、真诚对话，是（  ）发言的基本原则，也是实际行动的基本原则。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）的移动化，正在开启内涵更为丰富的“移动政务”时代。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('企事业单位有了微博、微信，（  ）建立自己的客户端了。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('媒体时代的三件法宝是指（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('门户时代的三件法宝是指（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('社交时代的三件法宝是指（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络从（  ）变身为新闻传播主阵地，后来居上 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('(  )不仅是技术、是媒体、是经济，更是文化、是意识形态、是国家软实力的重要体现 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ） 是指网络媒体转载或发布的新闻和言论，通过新闻跟帖、论坛、微博、微信等渠道充分互动后形成的一种意见倾向',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络舆论是（  ）的一种，即在互联网上传播的公众对某一焦点问题所表现出的有一定影响力的、带倾向性的意见或言论 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('2011年以来，（  ） 等新媒介的异军突起，改变了中国社会的舆论传播格局和生成、演变机制，重塑了中国社会的舆论生态 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('互联网的（  ），给舆论的形成和传播插上了神奇的翅膀。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('实情决定网情，（  ）是网络舆论的主体。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）使舆论引导变得异常困难 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在信息时代，（  ）作为国家安全的重要内容，其重要性得到了全世界各国的公认。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('所谓（  ），也就是人们常常脱口而出的“IT”，是指与信息相关的技术。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）是社会舆情在互联网上的一种特殊反映，是人们对政治、经济、文化和社会等领域情况和问题的思想观点在网上的集中反映，具有即时性、开放性、丰富性、匿名性、复杂性等特点。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情信息与舆情的主要区别就在于舆情是客观存在的，而舆情信息只是舆情的一种（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ） 以点对点的方式传播，内容多停留在传受双方的移动终端上，其他用户无法获知',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ） 业技术和舆情监测机构代为监测本部门、本系统或本地区的网络舆情 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ），就是对监测得来的网络舆情信息进行认识、分析、研究和甄别，判断舆情信息的价值 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情信息是否具有典型性，主要看它是否具有 （  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('根据目前的一般需要，可以把舆情报告分为（  ）等几种类型 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情引导与危机处理要强调（  ），贵在早，贵在快。先人一步、先声夺人，关键时刻不失语、重大问题不缺位 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在微传播广泛运用的当下，（   ）原则为越来越多的组织和个人所接受 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情引导，尤其应对突发事件，（  ）是最根本的 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情引导与危机处理的效果，是需要进行（  ）的 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('要想实现有效化解网络舆情危机的目的，尤其有必要建立（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('舆情搞清楚后，接下来就是采取具体的应对措施了，而这其中（  ）居首要 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('新闻发布会上一般要给记者提供（  ）、事实材料、背景资料以及其他相关素材 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）是传统发言机制的补充和发展，是传统发言在新媒介上的延伸，是适应新形势下网络舆论引导需要的产物，也是行使社会管理职能的创新之举 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络发言的两大硬性要求，一是发言主体要具备相应的能力和水平，包括（  ）和网络素养等；二是建设好网络发言阵地，包括政务网站、微博、微信发布平台等 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网络发言三大必备意识：一是信息要真实充足;二是（  ） ;三是保持频度和效率 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ），通常指的是与事件无直接利益关系者的声音',1,2);
INSERT INTO title(name,diff_id,score) VALUES('新媒体时代，数字化、网络化、即时化、互动化的特征，快速地影响和改变了社会舆论的生成模式，使信息传播具有鲜明新特点。主要体现在：（  ），传播内容海量化，传播节点碎片化 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('做好网上宣传工作，关键是要遵循和把握网络（  ）规律，努力跳出传统宣传的固定思维、固有逻辑和固化模式 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）做得好、做到位，后面的实际工作就有更大的几率得以顺利推进 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在突发事件网络舆情的应对中，有一种具体的“抓手”，就是（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('以微博、微信和客户端为代表的新媒体，正日益改变着舆论格局，移动终端正成为中国新的舆论场和沟通对话新通道，（  ）已成为网络舆论的重心 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('微博、微信等自媒体工具的大量使用，使得政府信息发布和公众沟通进入“自媒体”时代，由以大众传播为主导开始向以（  ）的社会舆论格局转变 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('（  ）被誉为“永不落幕的新闻发布会”“信息公开的新选择”“参政议政的新途径”“社会管理的新模式”“舆论监督的新平台” ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('微信传播渠道的三种形态，即（  ） ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('提高微信传播效率的关键是（  ），而微信内容优劣的关键是价值 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('计算机病毒是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列不属于系统安全的技术是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('从风险分析的观点来看，计算机系统的最主要弱点是（  ）。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('当为计算机资产定义保险覆盖率时，下列哪一项应该特别考虑？（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('大学生小吴在网上以一个知名作家的名义写博客,但事先没有征得该作家 同意。小吴应当承担(  ) 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('绿色上网软件可以安装在家庭和学校的(  ) 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('浏览网页时,遇到的最常见的网络广告形式是(  ) 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列选项中,不属于个人隐私信息的是(  )。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('根据《互联网上网服务营业场所管理条例》,网吧每日营业时间限于(  ) 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('李某将同学张某的小说擅自发表在网络上,该行为(  )。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在设定网上交易流程方面,一个好的电子商务网站必须做到(  )。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('我国出现第一例计算机病毒的时间是(  ) 。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('表演者对其表演享有许可他人通过网络向公众传播其表演并获得报酬的 权利。该权利的保护期限是(  ) ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('我国首部文明上网系列丛书是(   )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列有关隐私权的表述,错误的是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在原告起诉被告抢注域名案件中,以下不能判定被告对其域名的注册、使用具有恶意的是(  ) ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('根据 《治安管理处罚法》 的规定,煽动民族仇恨、 民族歧视,或者在出版物、 计算机信息网络中刊载民族歧视、侮辱内容的,处 10 日以上 15 日以下拘留,可以 并处(  )以下罚款。 ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('关于网络游戏的经营规则,下列说法错误的是(   ) ',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网页恶意代码通常利用（  ）来实现植入并进行攻击。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('要安全浏览网页不应该（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('网站的安全协议是https时，该网站浏览时会进行(    )处理。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('为了规范互联网电子邮件服务，依法台理垃圾电子邮件问题，保障互联网电子邮件用户的合法权益，信息产业部于2006年2月20日颁布了，自2006年3月30日开始施行。 (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('为了防范垃圾电子邮件，互联网电子邮件服务提供者应当按照信息产业部制定的技术标准建设互联网电子邮件服务系统，电子邮件服务器(    )匿名转发功能。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('互联网电子邮件服务提供者对用户的(   )和互联网电子邮件地址负有保密的义务。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('为了防御网络监听，最常用的方法是(    )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('向有限的空间输入超长的字符串是哪一种攻击手段? (  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('主要用于加密机制的协议是(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('用户收到了一封可疑的电子邮件,要求用户提供银行账户及密码，这是属于何种攻击手段?(    )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('在以下认证方式中，最常用的认证方式是:(  )',1,2);
INSERT INTO title(name,diff_id,score) VALUES('不属于常见的危险密码是（  ）。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('下列选项中，不属于两会提案智慧城市存在的风险的是（  ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('两会中提议，要对关键信息基础设施的运营企业购置国产网络安全设备出台（ ）',1,2);
INSERT INTO title(name,diff_id,score) VALUES('两会中指出，关键信息基础设施运营者缺乏采购（ ）安全设备的主动性。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('两会中提议，要全面提高（ ）、非涉密信息系统和工业控制系统安全保密风险实际防控能力。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('两会提案认为，军工行业工业控制系统与涉密信息系统安全互联中存在（   ）个关键问题。',1,2);
INSERT INTO title(name,diff_id,score) VALUES('两会提案认为，工业互联网目前面临的（ ）个主要问题。',1,2);

### choice ###
INSERT INTO choice(title_id, content, checked) VALUES(1, '﻿选用比较长和复杂的用户登录口令',  1);
INSERT INTO choice(title_id, content, checked) VALUES(1, '使用防病毒软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(1, '尽量避免开放过多的网络服务',  0);
INSERT INTO choice(title_id, content, checked) VALUES(1, '定期扫描系统硬盘碎片',  0);
INSERT INTO choice(title_id, content, checked) VALUES(2, '网络中设备设置环境的安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(2, '网络使用者的安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(2, '网络中信息的安全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(2, '网络财产的安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(3, '安全部',  0);
INSERT INTO choice(title_id, content, checked) VALUES(3, '信息产业部',  0);
INSERT INTO choice(title_id, content, checked) VALUES(3, '监察部',  0);
INSERT INTO choice(title_id, content, checked) VALUES(3, '公安部',  1);
INSERT INTO choice(title_id, content, checked) VALUES(4, '商业',  0);
INSERT INTO choice(title_id, content, checked) VALUES(4, '国际',  0);
INSERT INTO choice(title_id, content, checked) VALUES(4, '网络',  1);
INSERT INTO choice(title_id, content, checked) VALUES(4, '非盈利性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(5, '管理',  1);
INSERT INTO choice(title_id, content, checked) VALUES(5, '限制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(5, '科学',  0);
INSERT INTO choice(title_id, content, checked) VALUES(5, '社会',  0);
INSERT INTO choice(title_id, content, checked) VALUES(6, '木马;',  0);
INSERT INTO choice(title_id, content, checked) VALUES(6, '暴力攻击;',  1);
INSERT INTO choice(title_id, content, checked) VALUES(6, 'IP欺骗;',  0);
INSERT INTO choice(title_id, content, checked) VALUES(6, '缓存溢出攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(7, '破坏性攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(7, '身份盗窃',  1);
INSERT INTO choice(title_id, content, checked) VALUES(7, '收集资料',  0);
INSERT INTO choice(title_id, content, checked) VALUES(7, '诈骗',  0);
INSERT INTO choice(title_id, content, checked) VALUES(8, '严格限定从一个给定的终端进行非法认证的次数;',  0);
INSERT INTO choice(title_id, content, checked) VALUES(8, '确保口令不在终端上再现;',  1);
INSERT INTO choice(title_id, content, checked) VALUES(8, '防止用户使用太短的口令;',  0);
INSERT INTO choice(title_id, content, checked) VALUES(8, '使用机器产生的口令',  0);
INSERT INTO choice(title_id, content, checked) VALUES(9, '防火墙',  0);
INSERT INTO choice(title_id, content, checked) VALUES(9, '加密狗',  1);
INSERT INTO choice(title_id, content, checked) VALUES(9, '认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(9, '防病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(10, '不用生日做密码',  0);
INSERT INTO choice(title_id, content, checked) VALUES(10, '不要使用少于5位的密码',  0);
INSERT INTO choice(title_id, content, checked) VALUES(10, '不要使用纯数字',  0);
INSERT INTO choice(title_id, content, checked) VALUES(10, '自己做服务器',  1);
INSERT INTO choice(title_id, content, checked) VALUES(11, '远程观察一个用户的电脑',  0);
INSERT INTO choice(title_id, content, checked) VALUES(11, '监视网络的状态、传输的数据流',  1);
INSERT INTO choice(title_id, content, checked) VALUES(11, '监视PC系统运行的情况',  0);
INSERT INTO choice(title_id, content, checked) VALUES(11, '监视一个网站的发展方向',  0);
INSERT INTO choice(title_id, content, checked) VALUES(12, ' 确认您手头常备一张真正“干净”的引导盘',  0);
INSERT INTO choice(title_id, content, checked) VALUES(12, ' 及时、可靠升级反病毒产品',  0);
INSERT INTO choice(title_id, content, checked) VALUES(12, ' 新购置的计算机软件也要进行病毒检测',  0);
INSERT INTO choice(title_id, content, checked) VALUES(12, ' 整理磁盘',  1);
INSERT INTO choice(title_id, content, checked) VALUES(13, '包过滤型',  0);
INSERT INTO choice(title_id, content, checked) VALUES(13, '应用级网关型',  0);
INSERT INTO choice(title_id, content, checked) VALUES(13, '复合型防火墙',  0);
INSERT INTO choice(title_id, content, checked) VALUES(13, '代理服务型',  1);
INSERT INTO choice(title_id, content, checked) VALUES(14, '外部终端的物理安全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(14, '通信线的物理安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(14, '窃听数据',  0);
INSERT INTO choice(title_id, content, checked) VALUES(14, '网络地址欺骗',  0);
INSERT INTO choice(title_id, content, checked) VALUES(15, 'SARS',  0);
INSERT INTO choice(title_id, content, checked) VALUES(15, 'SQL杀手蠕虫',  1);
INSERT INTO choice(title_id, content, checked) VALUES(15, '手机病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(15, '小球病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(16, '大量消耗网络带宽',  1);
INSERT INTO choice(title_id, content, checked) VALUES(16, '攻击个人PC终端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(16, '破坏PC游戏程序',  0);
INSERT INTO choice(title_id, content, checked) VALUES(16, '攻击手机网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(17, '安全风险屏障',  0);
INSERT INTO choice(title_id, content, checked) VALUES(17, '安全风险缺口',  1);
INSERT INTO choice(title_id, content, checked) VALUES(17, '管理方式的变革',  0);
INSERT INTO choice(title_id, content, checked) VALUES(17, '管理方式的缺口',  0);
INSERT INTO choice(title_id, content, checked) VALUES(18, '10%',  0);
INSERT INTO choice(title_id, content, checked) VALUES(18, '160%',  0);
INSERT INTO choice(title_id, content, checked) VALUES(18, '60%',  1);
INSERT INTO choice(title_id, content, checked) VALUES(18, '300%',  0);
INSERT INTO choice(title_id, content, checked) VALUES(19, 'IT',  1);
INSERT INTO choice(title_id, content, checked) VALUES(19, '信息化中，信息不足产生的漏洞',  0);
INSERT INTO choice(title_id, content, checked) VALUES(19, '计算机网络运行，维护的漏洞',  0);
INSERT INTO choice(title_id, content, checked) VALUES(19, '计算中心的火灾隐患',  0);
INSERT INTO choice(title_id, content, checked) VALUES(20, '九十年代中叶',  0);
INSERT INTO choice(title_id, content, checked) VALUES(20, '九十年代中叶前',  1);
INSERT INTO choice(title_id, content, checked) VALUES(20, '世纪之交',  0);
INSERT INTO choice(title_id, content, checked) VALUES(20, '专网时代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(21, '主机时代, 专网时代, 多网合一时代',  1);
INSERT INTO choice(title_id, content, checked) VALUES(21, '主机时代, PC机时代, 网络时代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(21, 'PC机时代,网络时代,信息时代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(21, '2001年,2002年,2003年',  0);
INSERT INTO choice(title_id, content, checked) VALUES(22, '专网时代',  1);
INSERT INTO choice(title_id, content, checked) VALUES(22, '九十年代中叶前',  0);
INSERT INTO choice(title_id, content, checked) VALUES(22, '世纪之交',  0);
INSERT INTO choice(title_id, content, checked) VALUES(22, '九十年代中叶',  0);
INSERT INTO choice(title_id, content, checked) VALUES(23, '网络的脆弱性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(23, '软件的脆弱性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(23, '管理的脆弱性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(23, '应用的脆弱性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(24, '专网时代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(24, 'PC时代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(24, '多网合一时代',  1);
INSERT INTO choice(title_id, content, checked) VALUES(24, '主机时代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(25, '管理的脆弱性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(25, '应用的脆弱性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(25, '网络软，硬件的复杂性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(25, '软件的脆弱性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(26, '物理攻击，语法攻击，语义攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(26, '黑客攻击，病毒攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(26, '硬件攻击，软件攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(26, '物理攻击，黑客攻击，病毒攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(27, '信息内容的含义',  1);
INSERT INTO choice(title_id, content, checked) VALUES(27, '病毒对软件攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(27, '黑客对系统攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(27, '黑客和病毒的攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(28, '风险管理',  1);
INSERT INTO choice(title_id, content, checked) VALUES(28, '访问控制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(28, '消除风险',  0);
INSERT INTO choice(title_id, content, checked) VALUES(28, '回避风险',  0);
INSERT INTO choice(title_id, content, checked) VALUES(29, '政策，结构和技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(29, '组织，技术和信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(29, '硬件，软件和人',  0);
INSERT INTO choice(title_id, content, checked) VALUES(29, '资产，威胁和脆弱性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(30, '定性评估与定量评估相结合',  1);
INSERT INTO choice(title_id, content, checked) VALUES(30, '定性评估',  0);
INSERT INTO choice(title_id, content, checked) VALUES(30, '定量评估',  0);
INSERT INTO choice(title_id, content, checked) VALUES(30, '定点评估',  0);
INSERT INTO choice(title_id, content, checked) VALUES(31, 'PDR把安全对象看作一个整体',  1);
INSERT INTO choice(title_id, content, checked) VALUES(31, 'PDR作为系统保护的第一道防线',  0);
INSERT INTO choice(title_id, content, checked) VALUES(31, 'PDR采用定性评估与定量评估相结合DPDR的关键因素是人',  0);
INSERT INTO choice(title_id, content, checked) VALUES(31, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(32, '人',  1);
INSERT INTO choice(title_id, content, checked) VALUES(32, '技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(32, '模型',  0);
INSERT INTO choice(title_id, content, checked) VALUES(32, '客体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(33, '20世纪50年代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(33, '20世纪60年代',  1);
INSERT INTO choice(title_id, content, checked) VALUES(33, '20世纪80年代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(33, '20世纪90年代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(34, '直接的个人通信；',  0);
INSERT INTO choice(title_id, content, checked) VALUES(34, '共享硬盘空间、打印机等设备；',  0);
INSERT INTO choice(title_id, content, checked) VALUES(34, '共享计算资源；',  1);
INSERT INTO choice(title_id, content, checked) VALUES(34, '大量的数据交换。',  0);
INSERT INTO choice(title_id, content, checked) VALUES(35, '计算机网络带宽和速度大大提高',  0);
INSERT INTO choice(title_id, content, checked) VALUES(35, '计算机网络采用了分组交换技术',  1);
INSERT INTO choice(title_id, content, checked) VALUES(35, '计算机网络采用了电路交换技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(35, '计算机网络的可靠性大大提高',  0);
INSERT INTO choice(title_id, content, checked) VALUES(36, '该蠕虫利用Unix系统上的漏洞传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(36, '窃取用户的机密信息，破坏计算机数据文件',  1);
INSERT INTO choice(title_id, content, checked) VALUES(36, '占用了大量的计算机处理器的时间，导致拒绝服务',  0);
INSERT INTO choice(title_id, content, checked) VALUES(36, '大量的流量堵塞了网络，导致网络瘫痪',  0);
INSERT INTO choice(title_id, content, checked) VALUES(37, '不需要侵入受攻击的系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(37, '以窃取目标系统上的机密信息为目的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(37, '导致目标系统无法处理正常用户的请求',  1);
INSERT INTO choice(title_id, content, checked) VALUES(37, '如果目标系统没有漏洞，远程攻击就不可能成功',  0);
INSERT INTO choice(title_id, content, checked) VALUES(38, '安装防火墙',  0);
INSERT INTO choice(title_id, content, checked) VALUES(38, '安装入侵检测系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(38, '给系统安装最新的补丁',  1);
INSERT INTO choice(title_id, content, checked) VALUES(38, '安装防病毒软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(39, '控制用户的作业排序和运行',  0);
INSERT INTO choice(title_id, content, checked) VALUES(39, '实现主机和外设的并行处理以及异常情况的处理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(39, '保护系统程序和作业，禁止不合要求的对程序和数据的访问',  1);
INSERT INTO choice(title_id, content, checked) VALUES(39, '对计算机用户访问系统和资源的情况进行记录',  0);
INSERT INTO choice(title_id, content, checked) VALUES(40, '控制用户的作业排序和运行',  0);
INSERT INTO choice(title_id, content, checked) VALUES(40, '以合理的方式处理错误事件，而不至于影响其他程序的正常运行',  0);
INSERT INTO choice(title_id, content, checked) VALUES(40, '保护系统程序和作业，禁止不合要求的对程序和数据的访问',  0);
INSERT INTO choice(title_id, content, checked) VALUES(40, '对计算机用户访问系统和资源的情况进行记录',  1);
INSERT INTO choice(title_id, content, checked) VALUES(41, '微博',  0);
INSERT INTO choice(title_id, content, checked) VALUES(41, ' 论坛',  0);
INSERT INTO choice(title_id, content, checked) VALUES(41, ' 两微一端',  1);
INSERT INTO choice(title_id, content, checked) VALUES(41, '微信',  0);
INSERT INTO choice(title_id, content, checked) VALUES(42, '域（Domain）',  1);
INSERT INTO choice(title_id, content, checked) VALUES(42, '工作组',  0);
INSERT INTO choice(title_id, content, checked) VALUES(42, '对等网',  0);
INSERT INTO choice(title_id, content, checked) VALUES(42, '安全网',  0);
INSERT INTO choice(title_id, content, checked) VALUES(43, '用户依照系统提示输入用户名和口令',  1);
INSERT INTO choice(title_id, content, checked) VALUES(43, '用户在网络上共享了自己编写的一份Office文档，并设定哪些用户可以阅读，哪些用户可以修改',  0);
INSERT INTO choice(title_id, content, checked) VALUES(43, '用户使用加密软件对自己编写的Office文档进行加密，以阻止其他人得到这份拷贝后看到文档中的内容',  0);
INSERT INTO choice(title_id, content, checked) VALUES(43, '某个人尝试登录到你的计算机中，但是口令输入的不对，系统提示口令错误，并将这次失败的登录过程纪录在系统日志中',  0);
INSERT INTO choice(title_id, content, checked) VALUES(44, '用户依照系统提示输入用户名和口令',  0);
INSERT INTO choice(title_id, content, checked) VALUES(44, '用户在网络上共享了自己编写的一份Office文档，并设定哪些用户可以阅读，哪些用户可以修改',  1);
INSERT INTO choice(title_id, content, checked) VALUES(44, '用户使用加密软件对自己编写的Office文档进行加密，以阻止其他人得到这份拷贝后看到文档中的内容',  0);
INSERT INTO choice(title_id, content, checked) VALUES(44, '某个人尝试登录到你的计算机中，但是口令输入的不对，系统提示口令错误，并将这次失败的登录过程纪录在系统日志中',  0);
INSERT INTO choice(title_id, content, checked) VALUES(45, '用户依照系统提示输入用户名和口令',  0);
INSERT INTO choice(title_id, content, checked) VALUES(45, '用户在网络上共享了自己编写的一份Office文档，并设定哪些用户可以阅读，哪些用户可以修改',  0);
INSERT INTO choice(title_id, content, checked) VALUES(45, '用户使用加密软件对自己编写的Office文档进行加密，以阻止其他人得到这份拷贝后看到文档中的内容',  0);
INSERT INTO choice(title_id, content, checked) VALUES(45, '某个人尝试登录到你的计算机中，但是口令输入的不对，系统提示口令错误，并将这次失败的登录过程纪录在系统日志中',  1);
INSERT INTO choice(title_id, content, checked) VALUES(46, '人身安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(46, '社会安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(46, '信息安全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(46, '财产安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(47, 'BELL实验室',  0);
INSERT INTO choice(title_id, content, checked) VALUES(47, '麻省理工AI实验室',  1);
INSERT INTO choice(title_id, content, checked) VALUES(47, 'AT&T实验室',  0);
INSERT INTO choice(title_id, content, checked) VALUES(47, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(48, '所有网络与信息系统使用者',  1);
INSERT INTO choice(title_id, content, checked) VALUES(48, '只有黑客',  0);
INSERT INTO choice(title_id, content, checked) VALUES(48, '只有跨客',  0);
INSERT INTO choice(title_id, content, checked) VALUES(48, '黑客和跨客',  0);
INSERT INTO choice(title_id, content, checked) VALUES(49, '社会工程攻击、蛮力攻击和技术攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(49, '人类工程攻击、武力攻击及技术攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(49, '社会工程攻击、系统攻击及技术攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(49, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(50, '漏洞攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(50, '蠕虫攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(50, '病毒攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(50, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(51, '40年代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(51, '70',  1);
INSERT INTO choice(title_id, content, checked) VALUES(51, '90年代',  0);
INSERT INTO choice(title_id, content, checked) VALUES(51, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(52, '获取口令破坏系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(52, '获取口令进入系统',  1);
INSERT INTO choice(title_id, content, checked) VALUES(52, '仅获取口令没有用途',  0);
INSERT INTO choice(title_id, content, checked) VALUES(52, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(53, '50.5',  0);
INSERT INTO choice(title_id, content, checked) VALUES(53, '51.',  1);
INSERT INTO choice(title_id, content, checked) VALUES(53, '52.5',  0);
INSERT INTO choice(title_id, content, checked) VALUES(53, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(54, '18毫秒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(54, '18',  1);
INSERT INTO choice(title_id, content, checked) VALUES(54, '18分',  0);
INSERT INTO choice(title_id, content, checked) VALUES(54, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(55, '1998年11月3日星期四',  1);
INSERT INTO choice(title_id, content, checked) VALUES(55, '1999年6月24日星期四',  0);
INSERT INTO choice(title_id, content, checked) VALUES(55, '2000年4月13日星期四',  0);
INSERT INTO choice(title_id, content, checked) VALUES(55, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(56, 'Internet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(56, '第一个计算机病毒出现',  0);
INSERT INTO choice(title_id, content, checked) VALUES(56, '黑色星期四',  1);
INSERT INTO choice(title_id, content, checked) VALUES(56, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(57, 'CERT',  1);
INSERT INTO choice(title_id, content, checked) VALUES(57, 'FIRST',  0);
INSERT INTO choice(title_id, content, checked) VALUES(57, 'SANA',  0);
INSERT INTO choice(title_id, content, checked) VALUES(57, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(58, '破坏被攻击者邮件服务器',  0);
INSERT INTO choice(title_id, content, checked) VALUES(58, '添满被攻击者邮箱',  1);
INSERT INTO choice(title_id, content, checked) VALUES(58, '破坏被攻击者邮件客户端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(58, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(59, '必须远程控制启动执行，实施破坏',  0);
INSERT INTO choice(title_id, content, checked) VALUES(59, '指定条件或外来触发启动执行，实施破坏',  1);
INSERT INTO choice(title_id, content, checked) VALUES(59, '通过管理员控制启动执行，实施破坏',  0);
INSERT INTO choice(title_id, content, checked) VALUES(59, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(60, '证据不足',  0);
INSERT INTO choice(title_id, content, checked) VALUES(60, '没有造成破坏',  0);
INSERT INTO choice(title_id, content, checked) VALUES(60, '法律不健全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(60, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(61, '只能作为攻击工具',  0);
INSERT INTO choice(title_id, content, checked) VALUES(61, '只能作为防范工具',  0);
INSERT INTO choice(title_id, content, checked) VALUES(61, '既可作为攻击工具也可以作为防范工具',  1);
INSERT INTO choice(title_id, content, checked) VALUES(61, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(62, '其他网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(62, '通讯握手过程问题',  0);
INSERT INTO choice(title_id, content, checked) VALUES(62, '中间代理',  1);
INSERT INTO choice(title_id, content, checked) VALUES(62, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(63, '安装无限MODEM进行攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(63, '通过内部系统进行攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(63, '通过搭线进行攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(63, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(64, '破坏系统、窃取信息及伪造信息',  1);
INSERT INTO choice(title_id, content, checked) VALUES(64, '攻击系统、获取信息及假冒信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(64, '进入系统、损毁信息及谣传信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(64, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(65, '次要攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(65, '最主要攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(65, '不是攻击源',  0);
INSERT INTO choice(title_id, content, checked) VALUES(65, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(66, '电子战和计算机网络战',  1);
INSERT INTO choice(title_id, content, checked) VALUES(66, '信息攻击和网络攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(66, '系统破坏和信息破坏',  0);
INSERT INTO choice(title_id, content, checked) VALUES(66, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(67, '政治、经济、国防、领土、文化、外交',  0);
INSERT INTO choice(title_id, content, checked) VALUES(67, '政治、经济、军事、科技、文化、外交',  1);
INSERT INTO choice(title_id, content, checked) VALUES(67, '网络、经济、信息、科技、文化、外交',  0);
INSERT INTO choice(title_id, content, checked) VALUES(67, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(68, '占有权、控制权和制造权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(68, '保存权、制造权和使用权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(68, '获取权、控制权和使用权',  1);
INSERT INTO choice(title_id, content, checked) VALUES(68, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(69, '轻',  0);
INSERT INTO choice(title_id, content, checked) VALUES(69, '重',  0);
INSERT INTO choice(title_id, content, checked) VALUES(69, '不一定',  1);
INSERT INTO choice(title_id, content, checked) VALUES(69, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(70, '难',  1);
INSERT INTO choice(title_id, content, checked) VALUES(70, '易',  0);
INSERT INTO choice(title_id, content, checked) VALUES(70, '难说',  0);
INSERT INTO choice(title_id, content, checked) VALUES(70, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(71, '三十日',  1);
INSERT INTO choice(title_id, content, checked) VALUES(71, '二十日',  0);
INSERT INTO choice(title_id, content, checked) VALUES(71, '十五日',  0);
INSERT INTO choice(title_id, content, checked) VALUES(71, '四十日',  0);
INSERT INTO choice(title_id, content, checked) VALUES(72, '案发地市级公安机关公共信息网络安全监察部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(72, '案发地当地县级（区、市）公安机关治安部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(72, '案发地当地县级（区、市）公安机关公共信息网络安全监察部门',  1);
INSERT INTO choice(title_id, content, checked) VALUES(72, '案发地当地公安派出所',  0);
INSERT INTO choice(title_id, content, checked) VALUES(73, '案发地市级公安机关公共信息网络安全监察部门',  1);
INSERT INTO choice(title_id, content, checked) VALUES(73, '案发地市级公安机关治安部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(73, '案发地当地县级（区、市）公安机关公共信息网络安全监察部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(73, '案发地当地公安派出所',  0);
INSERT INTO choice(title_id, content, checked) VALUES(74, '8小时',  0);
INSERT INTO choice(title_id, content, checked) VALUES(74, '48小时',  0);
INSERT INTO choice(title_id, content, checked) VALUES(74, '36小时',  0);
INSERT INTO choice(title_id, content, checked) VALUES(74, '24小时',  1);
INSERT INTO choice(title_id, content, checked) VALUES(75, '人民法院',  0);
INSERT INTO choice(title_id, content, checked) VALUES(75, '公安机关',  0);
INSERT INTO choice(title_id, content, checked) VALUES(75, '发案单位',  1);
INSERT INTO choice(title_id, content, checked) VALUES(75, '以上都可以',  0);
INSERT INTO choice(title_id, content, checked) VALUES(76, '人民法院',  0);
INSERT INTO choice(title_id, content, checked) VALUES(76, '公安机关',  1);
INSERT INTO choice(title_id, content, checked) VALUES(76, '发案单位的主管部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(76, '以上都可以',  0);
INSERT INTO choice(title_id, content, checked) VALUES(77, '大麻病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(77, '小球病毒',  1);
INSERT INTO choice(title_id, content, checked) VALUES(77, '1575病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(77, '米开朗基罗病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(78, '未经他人同意擅自在网络上公布他人隐私',  0);
INSERT INTO choice(title_id, content, checked) VALUES(78, '下载网络小说供离线阅读',  1);
INSERT INTO choice(title_id, content, checked) VALUES(78, '伪造、篡改个人信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(78, '非法侵入他人电脑窃取资料',  0);
INSERT INTO choice(title_id, content, checked) VALUES(79, '计算机程序',  1);
INSERT INTO choice(title_id, content, checked) VALUES(79, '数据',  0);
INSERT INTO choice(title_id, content, checked) VALUES(79, '临时文件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(79, '应用软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(80, '破坏计算机功能或者毁坏数据',  0);
INSERT INTO choice(title_id, content, checked) VALUES(80, '影响计算机使用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(80, '能够自我复制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(80, '保护版权',  1);
INSERT INTO choice(title_id, content, checked) VALUES(81, '国际互联网管理备案规定',  0);
INSERT INTO choice(title_id, content, checked) VALUES(81, '计算机病毒防治管理办法',  0);
INSERT INTO choice(title_id, content, checked) VALUES(81, '网吧管理规定',  0);
INSERT INTO choice(title_id, content, checked) VALUES(81, '中华人民共和国计算机信息系统安全保护条例',  1);
INSERT INTO choice(title_id, content, checked) VALUES(82, '邮件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(82, '文件交换',  0);
INSERT INTO choice(title_id, content, checked) VALUES(82, '网络浏览',  1);
INSERT INTO choice(title_id, content, checked) VALUES(82, '光盘',  0);
INSERT INTO choice(title_id, content, checked) VALUES(83, '处五年以下有期徒刑或者拘役',  1);
INSERT INTO choice(title_id, content, checked) VALUES(83, '拘留',  0);
INSERT INTO choice(title_id, content, checked) VALUES(83, '罚款',  0);
INSERT INTO choice(title_id, content, checked) VALUES(83, '警告',  0);
INSERT INTO choice(title_id, content, checked) VALUES(84, '计算机病毒防治产品评级准测',  1);
INSERT INTO choice(title_id, content, checked) VALUES(84, '计算机病毒防治管理办法',  0);
INSERT INTO choice(title_id, content, checked) VALUES(84, '基于DOS系统的安全评级准则',  0);
INSERT INTO choice(title_id, content, checked) VALUES(84, '计算机病毒防治产品检验标准',  0);
INSERT INTO choice(title_id, content, checked) VALUES(85, '1994',  0);
INSERT INTO choice(title_id, content, checked) VALUES(85, '1997',  0);
INSERT INTO choice(title_id, content, checked) VALUES(85, '2000',  1);
INSERT INTO choice(title_id, content, checked) VALUES(85, '1998',  0);
INSERT INTO choice(title_id, content, checked) VALUES(86, '对系统工作情况进行检验与控制，防止外部非法入侵',  0);
INSERT INTO choice(title_id, content, checked) VALUES(86, '对网络运行状况进行检验与控制，防止外部非法入侵',  0);
INSERT INTO choice(title_id, content, checked) VALUES(86, '对访问合法性进行检验与控制，防止外部非法入侵',  1);
INSERT INTO choice(title_id, content, checked) VALUES(86, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(87, '基本手段之一',  1);
INSERT INTO choice(title_id, content, checked) VALUES(87, '根本手段',  0);
INSERT INTO choice(title_id, content, checked) VALUES(87, '无效手段',  0);
INSERT INTO choice(title_id, content, checked) VALUES(87, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(88, '两个网络间链路层在任何时刻不能直接通讯',  0);
INSERT INTO choice(title_id, content, checked) VALUES(88, '两个网络间网络层在任何时刻不能直接通讯',  0);
INSERT INTO choice(title_id, content, checked) VALUES(88, '两个网络间链路层、网络层在任何时刻都不能直接通讯',  1);
INSERT INTO choice(title_id, content, checked) VALUES(88, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(89, '虚拟的专用网络',  1);
INSERT INTO choice(title_id, content, checked) VALUES(89, '虚拟的协议网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(89, '虚拟的包过滤网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(89, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(90, '先进行流量检查',  1);
INSERT INTO choice(title_id, content, checked) VALUES(90, '先进行协议检查',  0);
INSERT INTO choice(title_id, content, checked) VALUES(90, '先进行合法性检查',  0);
INSERT INTO choice(title_id, content, checked) VALUES(90, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(91, '包过滤型、代理性、混合型',  1);
INSERT INTO choice(title_id, content, checked) VALUES(91, '包过滤型、系统代理型、应用代理型',  0);
INSERT INTO choice(title_id, content, checked) VALUES(91, '包过滤型、内容过滤型、混合型',  0);
INSERT INTO choice(title_id, content, checked) VALUES(91, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(92, '网络地址传输',  0);
INSERT INTO choice(title_id, content, checked) VALUES(92, '网络地址转换',  1);
INSERT INTO choice(title_id, content, checked) VALUES(92, '网络地址跟踪',  0);
INSERT INTO choice(title_id, content, checked) VALUES(92, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(93, '总部与分支机构、与合作伙伴、与移动办公用户',  1);
INSERT INTO choice(title_id, content, checked) VALUES(93, '客户与客户、与合作伙伴、与远程用户',  0);
INSERT INTO choice(title_id, content, checked) VALUES(93, '总部与分支机构、与外部网站、与移动办公用户',  0);
INSERT INTO choice(title_id, content, checked) VALUES(93, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(94, '数据区',  0);
INSERT INTO choice(title_id, content, checked) VALUES(94, '对外服务区',  1);
INSERT INTO choice(title_id, content, checked) VALUES(94, '重要业务区',  0);
INSERT INTO choice(title_id, content, checked) VALUES(94, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(95, '物理隔离',  0);
INSERT INTO choice(title_id, content, checked) VALUES(95, 'Vlan',  1);
INSERT INTO choice(title_id, content, checked) VALUES(95, '防火墙防范',  0);
INSERT INTO choice(title_id, content, checked) VALUES(95, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(96, '只需要在与Internet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(96, '在需要保护局域网络的所有出入口设置',  1);
INSERT INTO choice(title_id, content, checked) VALUES(96, '需要在出入口和网段之间进行部署',  0);
INSERT INTO choice(title_id, content, checked) VALUES(96, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(97, '分离器、限制器、分析器',  1);
INSERT INTO choice(title_id, content, checked) VALUES(97, '隔离器、控制器、分析器',  0);
INSERT INTO choice(title_id, content, checked) VALUES(97, '分离器、控制器、解析器',  0);
INSERT INTO choice(title_id, content, checked) VALUES(97, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(98, '主动防范',  0);
INSERT INTO choice(title_id, content, checked) VALUES(98, '被动防范',  1);
INSERT INTO choice(title_id, content, checked) VALUES(98, '不一定',  0);
INSERT INTO choice(title_id, content, checked) VALUES(98, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(99, '内部网络',  1);
INSERT INTO choice(title_id, content, checked) VALUES(99, '周边网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(99, '外部网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(99, '自由连接',  0);
INSERT INTO choice(title_id, content, checked) VALUES(100, '黑客的攻击手段',  1);
INSERT INTO choice(title_id, content, checked) VALUES(100, '防火墙的专门技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(100, 'IP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(100, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(101, '微软公司软件的设计阶段的失误',  0);
INSERT INTO choice(title_id, content, checked) VALUES(101, '微软公司软件的实现阶段的失误',  0);
INSERT INTO choice(title_id, content, checked) VALUES(101, '系统管理员维护阶段的失误',  1);
INSERT INTO choice(title_id, content, checked) VALUES(101, '最终用户使用阶段的失误',  0);
INSERT INTO choice(title_id, content, checked) VALUES(102, '探测、预警、监视、警报',  1);
INSERT INTO choice(title_id, content, checked) VALUES(102, '嘹望、烟火、巡更、敲梆',  0);
INSERT INTO choice(title_id, content, checked) VALUES(102, '调查、报告、分析、警报',  0);
INSERT INTO choice(title_id, content, checked) VALUES(102, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(103, '探测、预警、监视、警报',  0);
INSERT INTO choice(title_id, content, checked) VALUES(103, '嘹望、烟火、巡更、敲梆',  1);
INSERT INTO choice(title_id, content, checked) VALUES(103, '调查、报告、分析、警报',  0);
INSERT INTO choice(title_id, content, checked) VALUES(103, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(104, '计算机硬件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(104, '计算机',  1);
INSERT INTO choice(title_id, content, checked) VALUES(104, '计算机软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(104, '计算机网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(105, '计算机及其相关的和配套的设备、设施的安全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(105, '计算机的安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(105, '计算机硬件的系统安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(105, '计算机操作人员的安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(106, '计算机操作系统',  1);
INSERT INTO choice(title_id, content, checked) VALUES(106, '计算机硬件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(106, '文字处理软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(106, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(107, '带细菌的磁盘',  0);
INSERT INTO choice(title_id, content, checked) VALUES(107, ' 已损坏的磁盘',  0);
INSERT INTO choice(title_id, content, checked) VALUES(107, ' 具有破坏性的特制程序',  1);
INSERT INTO choice(title_id, content, checked) VALUES(107, '被破坏了的程序',  0);
INSERT INTO choice(title_id, content, checked) VALUES(108, '资源共享',  1);
INSERT INTO choice(title_id, content, checked) VALUES(108, '共用一个硬盘',  0);
INSERT INTO choice(title_id, content, checked) VALUES(108, '节省经费',  0);
INSERT INTO choice(title_id, content, checked) VALUES(108, '提高可靠性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(109, ' 计算机病毒是人为制造的一种破坏性程序',  0);
INSERT INTO choice(title_id, content, checked) VALUES(109, ' 大多数病毒程序具有自身复制功能',  0);
INSERT INTO choice(title_id, content, checked) VALUES(109, ' 安装防病毒卡,并不能完全杜绝病毒的侵入',  0);
INSERT INTO choice(title_id, content, checked) VALUES(109, ' 不使用来历不明的软件是防止病毒侵入的有效措施',  1);
INSERT INTO choice(title_id, content, checked) VALUES(110, '2% 5%',  1);
INSERT INTO choice(title_id, content, checked) VALUES(110, '4% 10%',  0);
INSERT INTO choice(title_id, content, checked) VALUES(110, '5% 10%',  0);
INSERT INTO choice(title_id, content, checked) VALUES(110, '2% 4%',  0);
INSERT INTO choice(title_id, content, checked) VALUES(111, '远程控制软件',  1);
INSERT INTO choice(title_id, content, checked) VALUES(111, '计算机操作系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(111, '木头做的马',  0);
INSERT INTO choice(title_id, content, checked) VALUES(111, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(112, '分析',  0);
INSERT INTO choice(title_id, content, checked) VALUES(112, '升级',  1);
INSERT INTO choice(title_id, content, checked) VALUES(112, '检查',  0);
INSERT INTO choice(title_id, content, checked) VALUES(112, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(113, '两台计算机都正常',  0);
INSERT INTO choice(title_id, content, checked) VALUES(113, '两台计算机都无法通讯',  0);
INSERT INTO choice(title_id, content, checked) VALUES(113, '一台正常通讯一台无法通讯',  1);
INSERT INTO choice(title_id, content, checked) VALUES(113, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(114, '网络环路',  1);
INSERT INTO choice(title_id, content, checked) VALUES(114, '根本没有影响',  0);
INSERT INTO choice(title_id, content, checked) VALUES(114, '短路',  0);
INSERT INTO choice(title_id, content, checked) VALUES(114, '回路',  0);
INSERT INTO choice(title_id, content, checked) VALUES(115, '杀毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(115, '加密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(115, '备份',  1);
INSERT INTO choice(title_id, content, checked) VALUES(115, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(116, 'NTFS',  1);
INSERT INTO choice(title_id, content, checked) VALUES(116, 'FAT32',  0);
INSERT INTO choice(title_id, content, checked) VALUES(116, 'FAT',  0);
INSERT INTO choice(title_id, content, checked) VALUES(116, 'LINUX',  0);
INSERT INTO choice(title_id, content, checked) VALUES(117, ' 计算机',  0);
INSERT INTO choice(title_id, content, checked) VALUES(117, ' 主从计算机',  0);
INSERT INTO choice(title_id, content, checked) VALUES(117, ' 自主计算机',  1);
INSERT INTO choice(title_id, content, checked) VALUES(117, ' 数字设备',  0);
INSERT INTO choice(title_id, content, checked) VALUES(118, ' 研究数据加密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(118, ' 研究数据解密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(118, ' 研究数据保密',  1);
INSERT INTO choice(title_id, content, checked) VALUES(118, ' 研究信息安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(119, '专利权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(119, '商标权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(119, '信息网络传播权',  1);
INSERT INTO choice(title_id, content, checked) VALUES(119, '发明权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(120, '学生证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(120, '身份证',  1);
INSERT INTO choice(title_id, content, checked) VALUES(120, '工作证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(120, '借书证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(121, '数字化形式',  1);
INSERT INTO choice(title_id, content, checked) VALUES(121, '纸面化形式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(121, '图像形式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(121, '声音形式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(122, '向网站客服投诉请求解决',  1);
INSERT INTO choice(title_id, content, checked) VALUES(122, '拨打120',  0);
INSERT INTO choice(title_id, content, checked) VALUES(122, '拨打119',  0);
INSERT INTO choice(title_id, content, checked) VALUES(122, '找网络黑客再盗回来',  0);
INSERT INTO choice(title_id, content, checked) VALUES(123, ' 非对称密钥技术及证书管理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(123, ' 目录服务',  0);
INSERT INTO choice(title_id, content, checked) VALUES(123, ' 对称密钥的产生和分发',  0);
INSERT INTO choice(title_id, content, checked) VALUES(123, ' 访问控制服务',  1);
INSERT INTO choice(title_id, content, checked) VALUES(124, '标准制定',  0);
INSERT INTO choice(title_id, content, checked) VALUES(124, ' 风险评估',  1);
INSERT INTO choice(title_id, content, checked) VALUES(124, ' 使用限制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(124, ' 普及',  0);
INSERT INTO choice(title_id, content, checked) VALUES(125, ' ID和口令',  1);
INSERT INTO choice(title_id, content, checked) VALUES(125, ' 证书',  0);
INSERT INTO choice(title_id, content, checked) VALUES(125, ' 密钥',  0);
INSERT INTO choice(title_id, content, checked) VALUES(125, ' 证书撤消',  0);
INSERT INTO choice(title_id, content, checked) VALUES(126, ' 证书主体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(126, ' 使用证书的应用和系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(126, ' 证书权威机构',  0);
INSERT INTO choice(title_id, content, checked) VALUES(126, ' AS',  1);
INSERT INTO choice(title_id, content, checked) VALUES(127, ' 从密钥管理数据库中请求获得',  0);
INSERT INTO choice(title_id, content, checked) VALUES(127, ' 每台客户机分配一个密钥',  0);
INSERT INTO choice(title_id, content, checked) VALUES(127, ' 客户机随机产生并加密后通服务器',  1);
INSERT INTO choice(title_id, content, checked) VALUES(127, ' 由服务器产生并分配给客户机',  0);
INSERT INTO choice(title_id, content, checked) VALUES(128, ' PEM、SSL',  0);
INSERT INTO choice(title_id, content, checked) VALUES(128, ' S-HTTP、S/MIME',  0);
INSERT INTO choice(title_id, content, checked) VALUES(128, ' SSL、S-HTTP',  1);
INSERT INTO choice(title_id, content, checked) VALUES(128, ' S/MIME、SSL',  0);
INSERT INTO choice(title_id, content, checked) VALUES(129, ' 可靠的传输服务，安全套接字层SSL协议',  1);
INSERT INTO choice(title_id, content, checked) VALUES(129, ' 不可靠的传输服务，S-HTTP协议',  0);
INSERT INTO choice(title_id, content, checked) VALUES(129, ' 可靠的传输服务，',  0);
INSERT INTO choice(title_id, content, checked) VALUES(129, ' 不可靠的传输服务，安全套接字层SSL协议',  0);
INSERT INTO choice(title_id, content, checked) VALUES(130, ' Access',  1);
INSERT INTO choice(title_id, content, checked) VALUES(130, ' Intranet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(130, ' Extranet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(130, ' 以上皆不是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(131, ' IPSec',  0);
INSERT INTO choice(title_id, content, checked) VALUES(131, ' PPTP',  1);
INSERT INTO choice(title_id, content, checked) VALUES(131, 'GRE',  0);
INSERT INTO choice(title_id, content, checked) VALUES(131, ' 以上皆不是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(132, ' IP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(132, ' IPX',  0);
INSERT INTO choice(title_id, content, checked) VALUES(132, ' AppleTalk',  0);
INSERT INTO choice(title_id, content, checked) VALUES(132, ' 上述皆可',  1);
INSERT INTO choice(title_id, content, checked) VALUES(133, ' 具有加密功能的防火墙',  0);
INSERT INTO choice(title_id, content, checked) VALUES(133, ' 具有加密功能的路由器',  0);
INSERT INTO choice(title_id, content, checked) VALUES(133, ' VPN内的各台主机对各自的信息进行相应的加密',  1);
INSERT INTO choice(title_id, content, checked) VALUES(133, ' 单独的加密设备',  0);
INSERT INTO choice(title_id, content, checked) VALUES(134, ' 内联网VPN',  0);
INSERT INTO choice(title_id, content, checked) VALUES(134, '  外联网VPN',  1);
INSERT INTO choice(title_id, content, checked) VALUES(134, '  远程接入VPN',  0);
INSERT INTO choice(title_id, content, checked) VALUES(134, '  无线VPN',  0);
INSERT INTO choice(title_id, content, checked) VALUES(135, '  第一层隧道',  0);
INSERT INTO choice(title_id, content, checked) VALUES(135, '  第二层隧道',  1);
INSERT INTO choice(title_id, content, checked) VALUES(135, '  第三层隧道',  0);
INSERT INTO choice(title_id, content, checked) VALUES(135, '  第四层隧道',  0);
INSERT INTO choice(title_id, content, checked) VALUES(136, '感染病毒不会对计算机系统文件造成',  0);
INSERT INTO choice(title_id, content, checked) VALUES(136, '感染病毒只会对文件造成破坏,不会造成数据丢失',  0);
INSERT INTO choice(title_id, content, checked) VALUES(136, '感染病毒,有时会窃取敏感信息,给用户带来经济损失',  1);
INSERT INTO choice(title_id, content, checked) VALUES(136, '感染病毒会一定会对计算机软硬件带来危害',  0);
INSERT INTO choice(title_id, content, checked) VALUES(137, '  隧道技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(137, '  身份认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(137, '  日志记录',  1);
INSERT INTO choice(title_id, content, checked) VALUES(137, '  访问控制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(138, ' 隧道协议、身份认证和数据加密',  1);
INSERT INTO choice(title_id, content, checked) VALUES(138, ' 身份认证、数据加密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(138, ' 隧道协议、身份认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(138, ' 隧道协议、数据加密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(139, '  Access',  1);
INSERT INTO choice(title_id, content, checked) VALUES(139, '  Intranet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(139, '  Extranet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(139, '  Internet',  0);
INSERT INTO choice(title_id, content, checked) VALUES(140, '美国',  0);
INSERT INTO choice(title_id, content, checked) VALUES(140, '日本',  0);
INSERT INTO choice(title_id, content, checked) VALUES(140, '韩国',  1);
INSERT INTO choice(title_id, content, checked) VALUES(140, '德国',  0);
INSERT INTO choice(title_id, content, checked) VALUES(141, '销售商',  0);
INSERT INTO choice(title_id, content, checked) VALUES(141, '使用者',  0);
INSERT INTO choice(title_id, content, checked) VALUES(141, '软件开发者',  1);
INSERT INTO choice(title_id, content, checked) VALUES(141, '购买者',  0);
INSERT INTO choice(title_id, content, checked) VALUES(142, '消除已感染的所有病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(142, '发现并阻止任何病毒的入侵',  0);
INSERT INTO choice(title_id, content, checked) VALUES(142, '杜绝对计算机的侵害',  0);
INSERT INTO choice(title_id, content, checked) VALUES(142, '发现病毒入侵的某些迹象并及时清除或提醒操作者',  1);
INSERT INTO choice(title_id, content, checked) VALUES(143, '暴力破解',  0);
INSERT INTO choice(title_id, content, checked) VALUES(143, '组合破解',  1);
INSERT INTO choice(title_id, content, checked) VALUES(143, '字典攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(143, '生日攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(144, '穷举攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(144, '中途相遇',  0);
INSERT INTO choice(title_id, content, checked) VALUES(144, '字典攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(144, '生日攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(145, '假冒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(145, '抵赖',  0);
INSERT INTO choice(title_id, content, checked) VALUES(145, '数据中途窃取',  0);
INSERT INTO choice(title_id, content, checked) VALUES(145, '数据中途篡改',  1);
INSERT INTO choice(title_id, content, checked) VALUES(146, '密码分析还原',  0);
INSERT INTO choice(title_id, content, checked) VALUES(146, '协议漏洞渗透',  1);
INSERT INTO choice(title_id, content, checked) VALUES(146, '应用漏洞分析与渗透',  0);
INSERT INTO choice(title_id, content, checked) VALUES(146, 'DOS攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(147, ' CA',  0);
INSERT INTO choice(title_id, content, checked) VALUES(147, 'SSL',  1);
INSERT INTO choice(title_id, content, checked) VALUES(147, ' RA',  0);
INSERT INTO choice(title_id, content, checked) VALUES(147, 'CR',  0);
INSERT INTO choice(title_id, content, checked) VALUES(148, '病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(148, '广告',  0);
INSERT INTO choice(title_id, content, checked) VALUES(148, '间谍',  0);
INSERT INTO choice(title_id, content, checked) VALUES(148, '都是',  1);
INSERT INTO choice(title_id, content, checked) VALUES(149, '口令获取',  1);
INSERT INTO choice(title_id, content, checked) VALUES(149, 'ARP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(149, 'TCP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(149, 'DDOS',  0);
INSERT INTO choice(title_id, content, checked) VALUES(150, 'Tasklist',  0);
INSERT INTO choice(title_id, content, checked) VALUES(150, 'Netsat',  0);
INSERT INTO choice(title_id, content, checked) VALUES(150, 'Taskkill',  1);
INSERT INTO choice(title_id, content, checked) VALUES(150, 'Netshare',  0);
INSERT INTO choice(title_id, content, checked) VALUES(151, '进程注入',  0);
INSERT INTO choice(title_id, content, checked) VALUES(151, '注册表隐藏',  0);
INSERT INTO choice(title_id, content, checked) VALUES(151, '漏洞扫描',  0);
INSERT INTO choice(title_id, content, checked) VALUES(151, '都是',  1);
INSERT INTO choice(title_id, content, checked) VALUES(152, '修改堆栈记录中进程的返回地址',  1);
INSERT INTO choice(title_id, content, checked) VALUES(152, '利用Shellcode',  0);
INSERT INTO choice(title_id, content, checked) VALUES(152, '提升用户进程权限',  0);
INSERT INTO choice(title_id, content, checked) VALUES(152, '捕捉程序漏洞',  0);
INSERT INTO choice(title_id, content, checked) VALUES(153, '2016年11月7日',  0);
INSERT INTO choice(title_id, content, checked) VALUES(153, '2017年6月1日',  1);
INSERT INTO choice(title_id, content, checked) VALUES(153, '2017年1月1日',  0);
INSERT INTO choice(title_id, content, checked) VALUES(153, '2016年12月1日',  0);
INSERT INTO choice(title_id, content, checked) VALUES(154, '用户信息保密制度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(154, '用户信息保护制度',  1);
INSERT INTO choice(title_id, content, checked) VALUES(154, '用户信息加密制度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(154, '用户信息保全制度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(155, '本人',  0);
INSERT INTO choice(title_id, content, checked) VALUES(155, '本人单位',  0);
INSERT INTO choice(title_id, content, checked) VALUES(155, '被收集者',  1);
INSERT INTO choice(title_id, content, checked) VALUES(155, '国家主管部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(156, '5 3 1 0.5',  0);
INSERT INTO choice(title_id, content, checked) VALUES(156, '4 2 1 0.5',  0);
INSERT INTO choice(title_id, content, checked) VALUES(156, '5 2.5 1 0.5',  1);
INSERT INTO choice(title_id, content, checked) VALUES(156, '4 3 2 0.57',  0);
INSERT INTO choice(title_id, content, checked) VALUES(157, '国家网信部门',  1);
INSERT INTO choice(title_id, content, checked) VALUES(157, '国务院电信主管部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(157, '公安部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(157, '以上均是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(158, '防火墙',  0);
INSERT INTO choice(title_id, content, checked) VALUES(158, '加密狗',  1);
INSERT INTO choice(title_id, content, checked) VALUES(158, '认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(158, '防病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(159, '1  3	',  0);
INSERT INTO choice(title_id, content, checked) VALUES(159, '2  4',  1);
INSERT INTO choice(title_id, content, checked) VALUES(159, '2  5',  0);
INSERT INTO choice(title_id, content, checked) VALUES(159, '1  4',  0);
INSERT INTO choice(title_id, content, checked) VALUES(160, '积极利用、科学发展、依法管理、确保安全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(160, '同步规划、同步建设、同步使用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(160, '网络实名制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(160, '网络安全等级保护制度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(161, '指导、督促',  1);
INSERT INTO choice(title_id, content, checked) VALUES(161, '支持、指导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(161, '鼓励、引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(161, '支持、引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(162, '电信研究机构',  0);
INSERT INTO choice(title_id, content, checked) VALUES(162, '国务院标准化行政主管部门',  1);
INSERT INTO choice(title_id, content, checked) VALUES(162, '网信部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(162, '电信企业',  0);
INSERT INTO choice(title_id, content, checked) VALUES(163, '认证设备合格',  0);
INSERT INTO choice(title_id, content, checked) VALUES(163, '安全认证合格',  1);
INSERT INTO choice(title_id, content, checked) VALUES(163, '认证网速合格',  0);
INSERT INTO choice(title_id, content, checked) VALUES(163, '认证产品合',  0);
INSERT INTO choice(title_id, content, checked) VALUES(164, '公共图书馆资源',  0);
INSERT INTO choice(title_id, content, checked) VALUES(164, '国家数据资源',  0);
INSERT INTO choice(title_id, content, checked) VALUES(164, '公共学校资源',  0);
INSERT INTO choice(title_id, content, checked) VALUES(164, '公共数据资源',  1);
INSERT INTO choice(title_id, content, checked) VALUES(165, '网络安全意识',  1);
INSERT INTO choice(title_id, content, checked) VALUES(165, '网络诚信意识',  0);
INSERT INTO choice(title_id, content, checked) VALUES(165, '网络道德意识',  0);
INSERT INTO choice(title_id, content, checked) VALUES(165, '网络健康意识',  0);
INSERT INTO choice(title_id, content, checked) VALUES(166, '等级',  1);
INSERT INTO choice(title_id, content, checked) VALUES(166, '分层',  0);
INSERT INTO choice(title_id, content, checked) VALUES(166, '结构',  0);
INSERT INTO choice(title_id, content, checked) VALUES(166, '行政级别',  0);
INSERT INTO choice(title_id, content, checked) VALUES(167, '相似',  0);
INSERT INTO choice(title_id, content, checked) VALUES(167, '高度仿真',  0);
INSERT INTO choice(title_id, content, checked) VALUES(167, ' 一致',  0);
INSERT INTO choice(title_id, content, checked) VALUES(167, '安全隔离',  1);
INSERT INTO choice(title_id, content, checked) VALUES(168, '第三方安全测评',  1);
INSERT INTO choice(title_id, content, checked) VALUES(168, '中国电科院测评',  0);
INSERT INTO choice(title_id, content, checked) VALUES(168, '安全专家委测评',  0);
INSERT INTO choice(title_id, content, checked) VALUES(168, '国家安全机构测评',  0);
INSERT INTO choice(title_id, content, checked) VALUES(169, '境外存储',  0);
INSERT INTO choice(title_id, content, checked) VALUES(169, '外部存储器储存',  0);
INSERT INTO choice(title_id, content, checked) VALUES(169, '第三方存储',  0);
INSERT INTO choice(title_id, content, checked) VALUES(169, '境内存储',  1);
INSERT INTO choice(title_id, content, checked) VALUES(170, '安全保密',  1);
INSERT INTO choice(title_id, content, checked) VALUES(170, '安全保护',  0);
INSERT INTO choice(title_id, content, checked) VALUES(170, '安全保障',  0);
INSERT INTO choice(title_id, content, checked) VALUES(170, '安全责任',  0);
INSERT INTO choice(title_id, content, checked) VALUES(171, '个人信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(171, '隐私',  0);
INSERT INTO choice(title_id, content, checked) VALUES(171, '商业秘密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(171, '以上全是',  1);
INSERT INTO choice(title_id, content, checked) VALUES(172, '每两年',  0);
INSERT INTO choice(title_id, content, checked) VALUES(172, '每年',  1);
INSERT INTO choice(title_id, content, checked) VALUES(172, '每半年',  0);
INSERT INTO choice(title_id, content, checked) VALUES(172, '每季度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(173, '公安机关',  0);
INSERT INTO choice(title_id, content, checked) VALUES(173, '国家安全机关',  0);
INSERT INTO choice(title_id, content, checked) VALUES(173, '国家网信部门',  1);
INSERT INTO choice(title_id, content, checked) VALUES(173, '有关主管部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(174, '135',  0);
INSERT INTO choice(title_id, content, checked) VALUES(174, '234',  0);
INSERT INTO choice(title_id, content, checked) VALUES(174, '134',  1);
INSERT INTO choice(title_id, content, checked) VALUES(174, '235',  0);
INSERT INTO choice(title_id, content, checked) VALUES(175, '一万元以上十万元以下',  1);
INSERT INTO choice(title_id, content, checked) VALUES(175, '五千元以上五万元以下',  0);
INSERT INTO choice(title_id, content, checked) VALUES(175, '一万元以上二十万元以下',  0);
INSERT INTO choice(title_id, content, checked) VALUES(175, '五万元以上五十万元以下',  0);
INSERT INTO choice(title_id, content, checked) VALUES(176, '网络安全责任书',  1);
INSERT INTO choice(title_id, content, checked) VALUES(176, '网络安全保障书',  0);
INSERT INTO choice(title_id, content, checked) VALUES(176, '网络安全承诺书',  0);
INSERT INTO choice(title_id, content, checked) VALUES(176, '网络安全责任状',  0);
INSERT INTO choice(title_id, content, checked) VALUES(177, '生产与管理并重,人防与技措并重',  0);
INSERT INTO choice(title_id, content, checked) VALUES(177, '内防与外控并重,人防与技防并重',  0);
INSERT INTO choice(title_id, content, checked) VALUES(177, '内控与外防并重,人防与技防并重',  1);
INSERT INTO choice(title_id, content, checked) VALUES(177, '内防与外控并重，人防与技措并重',  0);
INSERT INTO choice(title_id, content, checked) VALUES(178, '系统上线、检修和漏洞修复三个关键节点',  1);
INSERT INTO choice(title_id, content, checked) VALUES(178, '系统交付、投运和漏洞消控三个关键节点',  0);
INSERT INTO choice(title_id, content, checked) VALUES(178, '系统上线、运行和漏洞消控三个关键节点',  0);
INSERT INTO choice(title_id, content, checked) VALUES(178, '系统开发、投运和补丁修复三个关键节点',  0);
INSERT INTO choice(title_id, content, checked) VALUES(179, '删除',  1);
INSERT INTO choice(title_id, content, checked) VALUES(179, '更正',  0);
INSERT INTO choice(title_id, content, checked) VALUES(179, '保护',  0);
INSERT INTO choice(title_id, content, checked) VALUES(179, '撤销',  0);
INSERT INTO choice(title_id, content, checked) VALUES(180, '15,30',  0);
INSERT INTO choice(title_id, content, checked) VALUES(180, '7,15',  1);
INSERT INTO choice(title_id, content, checked) VALUES(180, '3,5',  0);
INSERT INTO choice(title_id, content, checked) VALUES(180, '9,18',  0);
INSERT INTO choice(title_id, content, checked) VALUES(181, '5',  1);
INSERT INTO choice(title_id, content, checked) VALUES(181, '6',  0);
INSERT INTO choice(title_id, content, checked) VALUES(181, '7',  0);
INSERT INTO choice(title_id, content, checked) VALUES(181, '8',  0);
INSERT INTO choice(title_id, content, checked) VALUES(182, '任何人',  0);
INSERT INTO choice(title_id, content, checked) VALUES(182, '网信部门和有关部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(182, '网络运营者',  1);
INSERT INTO choice(title_id, content, checked) VALUES(182, '网络使用者',  0);
INSERT INTO choice(title_id, content, checked) VALUES(183, '根本',  1);
INSERT INTO choice(title_id, content, checked) VALUES(183, '一般',  0);
INSERT INTO choice(title_id, content, checked) VALUES(183, '必备',  0);
INSERT INTO choice(title_id, content, checked) VALUES(183, '普通',  0);
INSERT INTO choice(title_id, content, checked) VALUES(184, '法制',  1);
INSERT INTO choice(title_id, content, checked) VALUES(184, '政治',  0);
INSERT INTO choice(title_id, content, checked) VALUES(184, '逻辑',  0);
INSERT INTO choice(title_id, content, checked) VALUES(184, '思辨',  0);
INSERT INTO choice(title_id, content, checked) VALUES(185, '一',  0);
INSERT INTO choice(title_id, content, checked) VALUES(185, '二',  1);
INSERT INTO choice(title_id, content, checked) VALUES(185, '三',  0);
INSERT INTO choice(title_id, content, checked) VALUES(185, '四',  0);
INSERT INTO choice(title_id, content, checked) VALUES(186, '特别慎重',  1);
INSERT INTO choice(title_id, content, checked) VALUES(186, '特事特办',  0);
INSERT INTO choice(title_id, content, checked) VALUES(186, '特别处理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(186, '特别思维',  0);
INSERT INTO choice(title_id, content, checked) VALUES(187, '三个维护',  0);
INSERT INTO choice(title_id, content, checked) VALUES(187, '四个维护',  0);
INSERT INTO choice(title_id, content, checked) VALUES(187, '五个维护',  1);
INSERT INTO choice(title_id, content, checked) VALUES(187, '二个维护',  0);
INSERT INTO choice(title_id, content, checked) VALUES(188, '监测',  1);
INSERT INTO choice(title_id, content, checked) VALUES(188, '监督',  0);
INSERT INTO choice(title_id, content, checked) VALUES(188, '监察',  0);
INSERT INTO choice(title_id, content, checked) VALUES(188, '监视',  0);
INSERT INTO choice(title_id, content, checked) VALUES(189, '危机疏导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(189, '危机引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(189, '危机公关',  0);
INSERT INTO choice(title_id, content, checked) VALUES(189, '危机处理',  1);
INSERT INTO choice(title_id, content, checked) VALUES(190, '四',  1);
INSERT INTO choice(title_id, content, checked) VALUES(190, '三',  0);
INSERT INTO choice(title_id, content, checked) VALUES(190, '二',  0);
INSERT INTO choice(title_id, content, checked) VALUES(190, '一',  0);
INSERT INTO choice(title_id, content, checked) VALUES(191, '早、快',  1);
INSERT INTO choice(title_id, content, checked) VALUES(191, '处理得当',  0);
INSERT INTO choice(title_id, content, checked) VALUES(191, '及时发现',  0);
INSERT INTO choice(title_id, content, checked) VALUES(191, '得当',  0);
INSERT INTO choice(title_id, content, checked) VALUES(192, '事实',  0);
INSERT INTO choice(title_id, content, checked) VALUES(192, '价值',  0);
INSERT INTO choice(title_id, content, checked) VALUES(192, '事实、价值',  1);
INSERT INTO choice(title_id, content, checked) VALUES(192, '事实、方向',  0);
INSERT INTO choice(title_id, content, checked) VALUES(193, '控制信息流、',  1);
INSERT INTO choice(title_id, content, checked) VALUES(193, '控制关注度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(193, '控制方向',  0);
INSERT INTO choice(title_id, content, checked) VALUES(193, '控制事实',  0);
INSERT INTO choice(title_id, content, checked) VALUES(194, '删除和封堵',  1);
INSERT INTO choice(title_id, content, checked) VALUES(194, '删除',  0);
INSERT INTO choice(title_id, content, checked) VALUES(194, '封堵',  0);
INSERT INTO choice(title_id, content, checked) VALUES(194, '控制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(195, '中央网信办',  1);
INSERT INTO choice(title_id, content, checked) VALUES(195, '中宣部',  0);
INSERT INTO choice(title_id, content, checked) VALUES(195, '中央办公厅',  0);
INSERT INTO choice(title_id, content, checked) VALUES(195, '国务院',  0);
INSERT INTO choice(title_id, content, checked) VALUES(196, '属地化',  1);
INSERT INTO choice(title_id, content, checked) VALUES(196, '中央集权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(196, '分属',  0);
INSERT INTO choice(title_id, content, checked) VALUES(196, '片区',  0);
INSERT INTO choice(title_id, content, checked) VALUES(197, '源头',  1);
INSERT INTO choice(title_id, content, checked) VALUES(197, '去向',  0);
INSERT INTO choice(title_id, content, checked) VALUES(197, '关注度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(197, '所属区域',  0);
INSERT INTO choice(title_id, content, checked) VALUES(198, '敲诈勒索罪',  1);
INSERT INTO choice(title_id, content, checked) VALUES(198, '诈骗罪',  0);
INSERT INTO choice(title_id, content, checked) VALUES(198, '招摇撞骗罪',  0);
INSERT INTO choice(title_id, content, checked) VALUES(198, '寻衅滋事罪',  0);
INSERT INTO choice(title_id, content, checked) VALUES(199, '应用者',  1);
INSERT INTO choice(title_id, content, checked) VALUES(199, '管理者',  0);
INSERT INTO choice(title_id, content, checked) VALUES(199, '政府部门',  0);
INSERT INTO choice(title_id, content, checked) VALUES(199, '舆情分析者',  0);
INSERT INTO choice(title_id, content, checked) VALUES(200, '重心',  1);
INSERT INTO choice(title_id, content, checked) VALUES(200, '中心',  0);
INSERT INTO choice(title_id, content, checked) VALUES(200, '核心',  0);
INSERT INTO choice(title_id, content, checked) VALUES(200, '平台',  0);
INSERT INTO choice(title_id, content, checked) VALUES(201, '负面评价',  1);
INSERT INTO choice(title_id, content, checked) VALUES(201, '贪腐',  0);
INSERT INTO choice(title_id, content, checked) VALUES(201, '作风',  0);
INSERT INTO choice(title_id, content, checked) VALUES(201, '执政',  0);
INSERT INTO choice(title_id, content, checked) VALUES(202, '应',  0);
INSERT INTO choice(title_id, content, checked) VALUES(202, '不应',  1);
INSERT INTO choice(title_id, content, checked) VALUES(202, '有条件地',  0);
INSERT INTO choice(title_id, content, checked) VALUES(202, '无原则的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(203, '持续发布',  1);
INSERT INTO choice(title_id, content, checked) VALUES(203, '不发布',  0);
INSERT INTO choice(title_id, content, checked) VALUES(203, '有条件地发布',  0);
INSERT INTO choice(title_id, content, checked) VALUES(203, '无原则的发布',  0);
INSERT INTO choice(title_id, content, checked) VALUES(204, '不是',  1);
INSERT INTO choice(title_id, content, checked) VALUES(204, '是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(204, '有条件地',  0);
INSERT INTO choice(title_id, content, checked) VALUES(204, '无原则的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(205, '信息发布',  1);
INSERT INTO choice(title_id, content, checked) VALUES(205, '信息删除',  0);
INSERT INTO choice(title_id, content, checked) VALUES(205, '查清信息来源',  0);
INSERT INTO choice(title_id, content, checked) VALUES(205, '信息处理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(206, '常用',  1);
INSERT INTO choice(title_id, content, checked) VALUES(206, '不常用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(206, '一般',  0);
INSERT INTO choice(title_id, content, checked) VALUES(206, '特殊',  0);
INSERT INTO choice(title_id, content, checked) VALUES(207, '危机处理',  1);
INSERT INTO choice(title_id, content, checked) VALUES(207, '报告',  0);
INSERT INTO choice(title_id, content, checked) VALUES(207, '分析',  0);
INSERT INTO choice(title_id, content, checked) VALUES(207, '应用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(208, '信息',  1);
INSERT INTO choice(title_id, content, checked) VALUES(208, '技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(208, '手段',  0);
INSERT INTO choice(title_id, content, checked) VALUES(208, '平台',  0);
INSERT INTO choice(title_id, content, checked) VALUES(209, '天下互联',  1);
INSERT INTO choice(title_id, content, checked) VALUES(209, '快',  0);
INSERT INTO choice(title_id, content, checked) VALUES(209, '方便',  0);
INSERT INTO choice(title_id, content, checked) VALUES(209, '好用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(210, '移动互联',  1);
INSERT INTO choice(title_id, content, checked) VALUES(210, '互联网',  0);
INSERT INTO choice(title_id, content, checked) VALUES(210, '年轻人',  0);
INSERT INTO choice(title_id, content, checked) VALUES(210, '有技能',  0);
INSERT INTO choice(title_id, content, checked) VALUES(211, '胡锦涛',  0);
INSERT INTO choice(title_id, content, checked) VALUES(211, '习近平',  1);
INSERT INTO choice(title_id, content, checked) VALUES(211, '李克强',  0);
INSERT INTO choice(title_id, content, checked) VALUES(211, '温家宝',  0);
INSERT INTO choice(title_id, content, checked) VALUES(212, '引导力',  1);
INSERT INTO choice(title_id, content, checked) VALUES(212, '管制力',  0);
INSERT INTO choice(title_id, content, checked) VALUES(212, '分析面',  0);
INSERT INTO choice(title_id, content, checked) VALUES(212, '能量',  0);
INSERT INTO choice(title_id, content, checked) VALUES(213, '快速发现',  1);
INSERT INTO choice(title_id, content, checked) VALUES(213, '分析',  0);
INSERT INTO choice(title_id, content, checked) VALUES(213, '引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(213, '搜集',  0);
INSERT INTO choice(title_id, content, checked) VALUES(214, '方式',  1);
INSERT INTO choice(title_id, content, checked) VALUES(214, '渠道',  0);
INSERT INTO choice(title_id, content, checked) VALUES(214, '内容',  0);
INSERT INTO choice(title_id, content, checked) VALUES(214, '平台',  0);
INSERT INTO choice(title_id, content, checked) VALUES(215, '2009',  1);
INSERT INTO choice(title_id, content, checked) VALUES(215, '2010',  0);
INSERT INTO choice(title_id, content, checked) VALUES(215, '2008',  0);
INSERT INTO choice(title_id, content, checked) VALUES(215, '2007',  0);
INSERT INTO choice(title_id, content, checked) VALUES(216, '奢侈腐败',  1);
INSERT INTO choice(title_id, content, checked) VALUES(216, '作风',  0);
INSERT INTO choice(title_id, content, checked) VALUES(216, '工作能力',  0);
INSERT INTO choice(title_id, content, checked) VALUES(216, '工作方式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(217, '党政',  1);
INSERT INTO choice(title_id, content, checked) VALUES(217, '政府',  0);
INSERT INTO choice(title_id, content, checked) VALUES(217, '企事业',  0);
INSERT INTO choice(title_id, content, checked) VALUES(217, '网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(218, '一',  0);
INSERT INTO choice(title_id, content, checked) VALUES(218, '二',  0);
INSERT INTO choice(title_id, content, checked) VALUES(218, '三',  1);
INSERT INTO choice(title_id, content, checked) VALUES(218, '四',  0);
INSERT INTO choice(title_id, content, checked) VALUES(219, '信息化',  1);
INSERT INTO choice(title_id, content, checked) VALUES(219, '网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(219, '自媒体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(219, '网络即时',  0);
INSERT INTO choice(title_id, content, checked) VALUES(220, '各种相关专家',  1);
INSERT INTO choice(title_id, content, checked) VALUES(220, '网友',  0);
INSERT INTO choice(title_id, content, checked) VALUES(220, '党政机关',  0);
INSERT INTO choice(title_id, content, checked) VALUES(220, '大V',  0);
INSERT INTO choice(title_id, content, checked) VALUES(221, '网络发言',  1);
INSERT INTO choice(title_id, content, checked) VALUES(221, '舆论引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(221, '新闻发言',  0);
INSERT INTO choice(title_id, content, checked) VALUES(221, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(222, '网络发言',  1);
INSERT INTO choice(title_id, content, checked) VALUES(222, '舆论引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(222, '新闻发言',  0);
INSERT INTO choice(title_id, content, checked) VALUES(222, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(223, '即时通讯',  0);
INSERT INTO choice(title_id, content, checked) VALUES(223, '网络媒介',  0);
INSERT INTO choice(title_id, content, checked) VALUES(223, '传统媒介',  0);
INSERT INTO choice(title_id, content, checked) VALUES(223, '网络新媒介',  1);
INSERT INTO choice(title_id, content, checked) VALUES(224, '法律',  1);
INSERT INTO choice(title_id, content, checked) VALUES(224, '管理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(224, '技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(224, '媒介',  0);
INSERT INTO choice(title_id, content, checked) VALUES(225, '删除',  1);
INSERT INTO choice(title_id, content, checked) VALUES(225, '管理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(225, '引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(225, '查清信息源头',  0);
INSERT INTO choice(title_id, content, checked) VALUES(226, '最根本',  1);
INSERT INTO choice(title_id, content, checked) VALUES(226, '核对',  0);
INSERT INTO choice(title_id, content, checked) VALUES(226, '复查',  0);
INSERT INTO choice(title_id, content, checked) VALUES(226, '分析',  0);
INSERT INTO choice(title_id, content, checked) VALUES(227, '基础',  1);
INSERT INTO choice(title_id, content, checked) VALUES(227, '关键',  0);
INSERT INTO choice(title_id, content, checked) VALUES(227, '核心',  0);
INSERT INTO choice(title_id, content, checked) VALUES(227, '重点',  0);
INSERT INTO choice(title_id, content, checked) VALUES(228, '主题',  1);
INSERT INTO choice(title_id, content, checked) VALUES(228, '关键',  0);
INSERT INTO choice(title_id, content, checked) VALUES(228, '核心',  0);
INSERT INTO choice(title_id, content, checked) VALUES(228, '重点',  0);
INSERT INTO choice(title_id, content, checked) VALUES(229, '并不是',  1);
INSERT INTO choice(title_id, content, checked) VALUES(229, '就是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(229, '应该是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(229, '应该不是',  0);
INSERT INTO choice(title_id, content, checked) VALUES(230, '时效性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(230, '准确性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(230, '公开性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(230, '透明度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(231, '准确',  1);
INSERT INTO choice(title_id, content, checked) VALUES(231, '高效',  0);
INSERT INTO choice(title_id, content, checked) VALUES(231, '及时',  0);
INSERT INTO choice(title_id, content, checked) VALUES(231, '有用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(232, '危害性大小',  1);
INSERT INTO choice(title_id, content, checked) VALUES(232, '价值大小',  0);
INSERT INTO choice(title_id, content, checked) VALUES(232, '用途',  0);
INSERT INTO choice(title_id, content, checked) VALUES(232, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(233, '核心性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(233, '有用性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(233, '精简性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(233, '重要性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(234, '“抄袭”',  1);
INSERT INTO choice(title_id, content, checked) VALUES(234, '“趣味”',  0);
INSERT INTO choice(title_id, content, checked) VALUES(234, '“娱乐”',  0);
INSERT INTO choice(title_id, content, checked) VALUES(234, '“多变”',  0);
INSERT INTO choice(title_id, content, checked) VALUES(235, '裂变式',  1);
INSERT INTO choice(title_id, content, checked) VALUES(235, '数列式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(235, '等级式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(235, '多变式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(236, '网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(236, '舆论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(236, '网络舆论',  1);
INSERT INTO choice(title_id, content, checked) VALUES(236, '信息发布',  0);
INSERT INTO choice(title_id, content, checked) VALUES(237, '微传播',  1);
INSERT INTO choice(title_id, content, checked) VALUES(237, '快速传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(237, '便捷传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(237, '点对点传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(238, '“两微一端”',  1);
INSERT INTO choice(title_id, content, checked) VALUES(238, '微博',  0);
INSERT INTO choice(title_id, content, checked) VALUES(238, '微信',  0);
INSERT INTO choice(title_id, content, checked) VALUES(238, '客户端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(239, '渠道',  1);
INSERT INTO choice(title_id, content, checked) VALUES(239, '技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(239, '信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(239, '客户端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(240, '还应',  1);
INSERT INTO choice(title_id, content, checked) VALUES(240, '不必',  0);
INSERT INTO choice(title_id, content, checked) VALUES(240, '有条件的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(240, 'null',  0);
INSERT INTO choice(title_id, content, checked) VALUES(241, '报纸、广播、电视',  1);
INSERT INTO choice(title_id, content, checked) VALUES(241, '杂志、广播、电视',  0);
INSERT INTO choice(title_id, content, checked) VALUES(241, '报纸、图书、电视',  0);
INSERT INTO choice(title_id, content, checked) VALUES(241, '报纸、广播、电报',  0);
INSERT INTO choice(title_id, content, checked) VALUES(242, '新闻、评论、采访',  0);
INSERT INTO choice(title_id, content, checked) VALUES(242, '消息、评论、采访',  0);
INSERT INTO choice(title_id, content, checked) VALUES(242, '新闻、评论、访谈',  1);
INSERT INTO choice(title_id, content, checked) VALUES(242, '消息、评述、访谈',  0);
INSERT INTO choice(title_id, content, checked) VALUES(243, '微博、微信、APP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(243, ' 微博、微信、客户端',  1);
INSERT INTO choice(title_id, content, checked) VALUES(243, '微博、博客、APP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(243, '论坛、微信、APP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(244, '小众媒体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(244, ' 大众媒体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(244, '主流媒体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(244, '边缘媒体',  1);
INSERT INTO choice(title_id, content, checked) VALUES(245, '舆论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(245, '媒介',  0);
INSERT INTO choice(title_id, content, checked) VALUES(245, '网络',  1);
INSERT INTO choice(title_id, content, checked) VALUES(245, '电脑',  0);
INSERT INTO choice(title_id, content, checked) VALUES(246, '网络舆情',  0);
INSERT INTO choice(title_id, content, checked) VALUES(246, '网络舆论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(246, '网络信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(246, '网络表态',  1);
INSERT INTO choice(title_id, content, checked) VALUES(247, '社会反响',  0);
INSERT INTO choice(title_id, content, checked) VALUES(247, '社会声音',  0);
INSERT INTO choice(title_id, content, checked) VALUES(247, '社会意见',  0);
INSERT INTO choice(title_id, content, checked) VALUES(247, '社会舆论',  1);
INSERT INTO choice(title_id, content, checked) VALUES(248, '微博',  1);
INSERT INTO choice(title_id, content, checked) VALUES(248, '微信',  0);
INSERT INTO choice(title_id, content, checked) VALUES(248, '博客',  0);
INSERT INTO choice(title_id, content, checked) VALUES(248, '客户端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(249, '联动性和开放性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(249, '互动性和即时性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(249, '联动性和即时',  0);
INSERT INTO choice(title_id, content, checked) VALUES(249, '互动性和开放性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(250, '意见领袖',  0);
INSERT INTO choice(title_id, content, checked) VALUES(250, '群众',  0);
INSERT INTO choice(title_id, content, checked) VALUES(250, '网民',  1);
INSERT INTO choice(title_id, content, checked) VALUES(250, '管理员',  0);
INSERT INTO choice(title_id, content, checked) VALUES(251, '舆论公信基础损伤',  0);
INSERT INTO choice(title_id, content, checked) VALUES(251, '社会公信高级损伤',  0);
INSERT INTO choice(title_id, content, checked) VALUES(251, '舆论公信高级损伤',  0);
INSERT INTO choice(title_id, content, checked) VALUES(251, '社会公信基础损伤',  1);
INSERT INTO choice(title_id, content, checked) VALUES(252, '信息网络安全',  1);
INSERT INTO choice(title_id, content, checked) VALUES(252, '信息传播安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(252, '信息存储安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(252, '信息账户安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(253, '信息工具',  0);
INSERT INTO choice(title_id, content, checked) VALUES(253, '网络工具',  0);
INSERT INTO choice(title_id, content, checked) VALUES(253, '信息技术',  1);
INSERT INTO choice(title_id, content, checked) VALUES(253, '网络技术',  0);
INSERT INTO choice(title_id, content, checked) VALUES(254, '网络舆情',  1);
INSERT INTO choice(title_id, content, checked) VALUES(254, '网络评论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(254, '网络讨论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(254, '网络舆论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(255, '特殊形式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(255, '拓展形式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(255, '表现内容',  0);
INSERT INTO choice(title_id, content, checked) VALUES(255, '反映形式',  1);
INSERT INTO choice(title_id, content, checked) VALUES(256, '微博',  0);
INSERT INTO choice(title_id, content, checked) VALUES(256, 'APP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(256, '微信',  1);
INSERT INTO choice(title_id, content, checked) VALUES(256, '客户端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(257, '委托监督',  0);
INSERT INTO choice(title_id, content, checked) VALUES(257, '委托监测',  1);
INSERT INTO choice(title_id, content, checked) VALUES(257, '委托管理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(257, '委托收集',  0);
INSERT INTO choice(title_id, content, checked) VALUES(258, '网络舆情分析',  1);
INSERT INTO choice(title_id, content, checked) VALUES(258, '网络舆情判断',  0);
INSERT INTO choice(title_id, content, checked) VALUES(258, '网络舆情研判',  0);
INSERT INTO choice(title_id, content, checked) VALUES(258, '网络舆情研究',  0);
INSERT INTO choice(title_id, content, checked) VALUES(259, '特殊性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(259, '代表性',  1);
INSERT INTO choice(title_id, content, checked) VALUES(259, '普遍性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(259, '专一性',  0);
INSERT INTO choice(title_id, content, checked) VALUES(260, '预警式、持续式、回顾式、课题式',  1);
INSERT INTO choice(title_id, content, checked) VALUES(260, '预告式、持续式、前瞻式、课题式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(260, '预警式、间断式、回顾式、项目式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(260, '预警式、持续式、前瞻式、项目式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(261, '责任意识',  0);
INSERT INTO choice(title_id, content, checked) VALUES(261, '时间意识',  0);
INSERT INTO choice(title_id, content, checked) VALUES(261, '时效意识',  1);
INSERT INTO choice(title_id, content, checked) VALUES(261, '速度意识',  0);
INSERT INTO choice(title_id, content, checked) VALUES(262, '“黄金24小时”',  0);
INSERT INTO choice(title_id, content, checked) VALUES(262, '“黄金12小时”',  0);
INSERT INTO choice(title_id, content, checked) VALUES(262, '“黄金1小时',  1);
INSERT INTO choice(title_id, content, checked) VALUES(262, '“黄金半小时”',  0);
INSERT INTO choice(title_id, content, checked) VALUES(263, '解决问题',  1);
INSERT INTO choice(title_id, content, checked) VALUES(263, '分析原因',  0);
INSERT INTO choice(title_id, content, checked) VALUES(263, '正面回应',  0);
INSERT INTO choice(title_id, content, checked) VALUES(263, '解决方法',  0);
INSERT INTO choice(title_id, content, checked) VALUES(264, '分析',  0);
INSERT INTO choice(title_id, content, checked) VALUES(264, '评估',  1);
INSERT INTO choice(title_id, content, checked) VALUES(264, '讨论',  0);
INSERT INTO choice(title_id, content, checked) VALUES(264, '梳理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(265, '舆情事前预警机制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(265, '舆情事中应急机制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(265, '舆情事后评估机制',  1);
INSERT INTO choice(title_id, content, checked) VALUES(265, '舆情成因分析机制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(266, '有害信息控制',  1);
INSERT INTO choice(title_id, content, checked) VALUES(266, '有害信息删除',  0);
INSERT INTO choice(title_id, content, checked) VALUES(266, '正面信息传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(266, '正面信息控制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(267, '新闻通告',  0);
INSERT INTO choice(title_id, content, checked) VALUES(267, '新闻通稿',  1);
INSERT INTO choice(title_id, content, checked) VALUES(267, '新闻线索',  0);
INSERT INTO choice(title_id, content, checked) VALUES(267, '新闻素材',  0);
INSERT INTO choice(title_id, content, checked) VALUES(268, '网络评论机',  0);
INSERT INTO choice(title_id, content, checked) VALUES(268, '舆论引导机制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(268, '网络讨论机制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(268, '网络发言机制',  1);
INSERT INTO choice(title_id, content, checked) VALUES(269, '基本发言素质',  1);
INSERT INTO choice(title_id, content, checked) VALUES(269, '网络语言使用素质',  0);
INSERT INTO choice(title_id, content, checked) VALUES(269, '基本道德素质',  0);
INSERT INTO choice(title_id, content, checked) VALUES(269, '网络消息发布素质',  0);
INSERT INTO choice(title_id, content, checked) VALUES(270, '表述清晰易懂',  0);
INSERT INTO choice(title_id, content, checked) VALUES(270, '持有辩论态度',  0);
INSERT INTO choice(title_id, content, checked) VALUES(270, '秉持平等交流观念',  1);
INSERT INTO choice(title_id, content, checked) VALUES(270, '积极表态',  0);
INSERT INTO choice(title_id, content, checked) VALUES(271, '群众声音',  0);
INSERT INTO choice(title_id, content, checked) VALUES(271, '第三方声音',  1);
INSERT INTO choice(title_id, content, checked) VALUES(271, '旁观者声音',  0);
INSERT INTO choice(title_id, content, checked) VALUES(271, '网友声音',  0);
INSERT INTO choice(title_id, content, checked) VALUES(272, '传播主体多元化',  1);
INSERT INTO choice(title_id, content, checked) VALUES(272, '传播频率高效化',  0);
INSERT INTO choice(title_id, content, checked) VALUES(272, '传播形式多样化',  0);
INSERT INTO choice(title_id, content, checked) VALUES(272, '传播渠道辐射化',  0);
INSERT INTO choice(title_id, content, checked) VALUES(273, '扩散传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(273, ' 信息公开',  0);
INSERT INTO choice(title_id, content, checked) VALUES(273, ' 微传播',  1);
INSERT INTO choice(title_id, content, checked) VALUES(273, '跳跃传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(274, '前期预警准备',  0);
INSERT INTO choice(title_id, content, checked) VALUES(274, '前期舆论管控',  0);
INSERT INTO choice(title_id, content, checked) VALUES(274, '前期数据收集',  0);
INSERT INTO choice(title_id, content, checked) VALUES(274, '前期舆论准备',  1);
INSERT INTO choice(title_id, content, checked) VALUES(275, '封锁信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(275, ' 快速切割',  1);
INSERT INTO choice(title_id, content, checked) VALUES(275, ' 正面引导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(275, '及时澄清',  0);
INSERT INTO choice(title_id, content, checked) VALUES(276, '两微一端',  1);
INSERT INTO choice(title_id, content, checked) VALUES(276, ' 微平台',  0);
INSERT INTO choice(title_id, content, checked) VALUES(276, ' 新媒介',  0);
INSERT INTO choice(title_id, content, checked) VALUES(276, '新媒体',  0);
INSERT INTO choice(title_id, content, checked) VALUES(277, '小众引导为主导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(277, '人际传播为主导',  1);
INSERT INTO choice(title_id, content, checked) VALUES(277, '人际交流为主导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(277, '网络传播为主导',  0);
INSERT INTO choice(title_id, content, checked) VALUES(278, '论坛',  0);
INSERT INTO choice(title_id, content, checked) VALUES(278, ' 客户端',  0);
INSERT INTO choice(title_id, content, checked) VALUES(278, ' 微信',  0);
INSERT INTO choice(title_id, content, checked) VALUES(278, '微博',  1);
INSERT INTO choice(title_id, content, checked) VALUES(279, ' 自媒体传播、人际传播、大众传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(279, ' 自媒体传播、群体传播、小众传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(279, ' 自媒体传播、群体传播、大众传播',  1);
INSERT INTO choice(title_id, content, checked) VALUES(279, ' 多媒体传播、群体传播、大众传播',  0);
INSERT INTO choice(title_id, content, checked) VALUES(280, '微信内容',  1);
INSERT INTO choice(title_id, content, checked) VALUES(280, ' 微信性质',  0);
INSERT INTO choice(title_id, content, checked) VALUES(280, ' 微信形式',  0);
INSERT INTO choice(title_id, content, checked) VALUES(280, '微信题目',  0);
INSERT INTO choice(title_id, content, checked) VALUES(281, '计算机程序',  1);
INSERT INTO choice(title_id, content, checked) VALUES(281, '临时文件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(281, '应用软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(281, '数据',  0);
INSERT INTO choice(title_id, content, checked) VALUES(282, '防火墙',  0);
INSERT INTO choice(title_id, content, checked) VALUES(282, '加密狗',  1);
INSERT INTO choice(title_id, content, checked) VALUES(282, '认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(282, '防病毒',  0);
INSERT INTO choice(title_id, content, checked) VALUES(283, '内部计算机处理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(283, '系统输入输出',  1);
INSERT INTO choice(title_id, content, checked) VALUES(283, '通讯和网络',  0);
INSERT INTO choice(title_id, content, checked) VALUES(283, '外部计算机处理',  0);
INSERT INTO choice(title_id, content, checked) VALUES(284, '已买的软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(284, '定做的软件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(284, '硬件',  0);
INSERT INTO choice(title_id, content, checked) VALUES(284, '数据',  1);
INSERT INTO choice(title_id, content, checked) VALUES(285, '侵权责任',  1);
INSERT INTO choice(title_id, content, checked) VALUES(285, '违约责任',  0);
INSERT INTO choice(title_id, content, checked) VALUES(285, '刑事责任',  0);
INSERT INTO choice(title_id, content, checked) VALUES(285, '行政责任',  0);
INSERT INTO choice(title_id, content, checked) VALUES(286, '电视机上',  0);
INSERT INTO choice(title_id, content, checked) VALUES(286, '个人电脑上',  1);
INSERT INTO choice(title_id, content, checked) VALUES(286, '电话上',  0);
INSERT INTO choice(title_id, content, checked) VALUES(286, '幻灯机上',  0);
INSERT INTO choice(title_id, content, checked) VALUES(287, '飘移广告',  0);
INSERT INTO choice(title_id, content, checked) VALUES(287, '旗帜广告',  1);
INSERT INTO choice(title_id, content, checked) VALUES(287, '竞价广告',  0);
INSERT INTO choice(title_id, content, checked) VALUES(287, '邮件列表',  0);
INSERT INTO choice(title_id, content, checked) VALUES(288, '恋爱经历',  0);
INSERT INTO choice(title_id, content, checked) VALUES(288, '工作单位',  1);
INSERT INTO choice(title_id, content, checked) VALUES(288, '日记',  0);
INSERT INTO choice(title_id, content, checked) VALUES(288, '身体健康状况',  0);
INSERT INTO choice(title_id, content, checked) VALUES(289, '6',  0);
INSERT INTO choice(title_id, content, checked) VALUES(289, '7',  0);
INSERT INTO choice(title_id, content, checked) VALUES(289, '8',  1);
INSERT INTO choice(title_id, content, checked) VALUES(289, '9',  0);
INSERT INTO choice(title_id, content, checked) VALUES(290, '不影响张某在出版社出版该小说,因此合法',  0);
INSERT INTO choice(title_id, content, checked) VALUES(290, '侵犯了张某的著作权',  1);
INSERT INTO choice(title_id, content, checked) VALUES(290, '并未给张某造成直接财产损失,因此合法',  0);
INSERT INTO choice(title_id, content, checked) VALUES(290, '扩大了张某的知名度,应该鼓励',  0);
INSERT INTO choice(title_id, content, checked) VALUES(291, '对客户有所保留',  0);
INSERT INTO choice(title_id, content, checked) VALUES(291, '不论购物流程在网站的内部操作多么复杂,其面对用户的界面必须是简单和操作方便的',  1);
INSERT INTO choice(title_id, content, checked) VALUES(291, '使客户购物操作繁复但安全',  0);
INSERT INTO choice(title_id, content, checked) VALUES(291, '让客户感到在网上购物与在现实世界中的购物流程是有区别的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(292, '1968',  0);
INSERT INTO choice(title_id, content, checked) VALUES(292, '1978',  0);
INSERT INTO choice(title_id, content, checked) VALUES(292, '1988',  1);
INSERT INTO choice(title_id, content, checked) VALUES(292, '1998',  0);
INSERT INTO choice(title_id, content, checked) VALUES(293, '50',  1);
INSERT INTO choice(title_id, content, checked) VALUES(293, '60',  0);
INSERT INTO choice(title_id, content, checked) VALUES(293, '30',  0);
INSERT INTO choice(title_id, content, checked) VALUES(293, '没有期限',  0);
INSERT INTO choice(title_id, content, checked) VALUES(294, '青少年网络成瘾预防与干预',  0);
INSERT INTO choice(title_id, content, checked) VALUES(294, '维护你的心远离网络伤害',  0);
INSERT INTO choice(title_id, content, checked) VALUES(294, '夏薇的网络世界',  1);
INSERT INTO choice(title_id, content, checked) VALUES(294, '和平成长从书',  0);
INSERT INTO choice(title_id, content, checked) VALUES(295, '网络时代,隐私权的保护受到较大冲击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(295, '虽然网络世界不同于现实世界,但也需要保护个人隐私',  0);
INSERT INTO choice(title_id, content, checked) VALUES(295, '由于网络是虚拟世界,所以在网上不需要保护个人的隐私',  1);
INSERT INTO choice(title_id, content, checked) VALUES(295, '可以借助法律来保护网络隐私权',  0);
INSERT INTO choice(title_id, content, checked) VALUES(296, '为商业目的将他人驰名商标注册为域名的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(296, '为商业目的注册与原告的域名近似的域名,故意造成与原告网站的混淆,',  0);
INSERT INTO choice(title_id, content, checked) VALUES(296, '曾要约高价出售其域名获取不正当利益的',  0);
INSERT INTO choice(title_id, content, checked) VALUES(296, '注册域名后自己准备使用的',  1);
INSERT INTO choice(title_id, content, checked) VALUES(297, '500',  0);
INSERT INTO choice(title_id, content, checked) VALUES(297, '1000',  1);
INSERT INTO choice(title_id, content, checked) VALUES(297, '3000',  0);
INSERT INTO choice(title_id, content, checked) VALUES(297, '5000',  0);
INSERT INTO choice(title_id, content, checked) VALUES(298, '网络游戏运营企业应当要求网络游戏用户使用有效身份证件进行实名',  0);
INSERT INTO choice(title_id, content, checked) VALUES(298, '网络游戏运营企业终止运营网络游戏应当提前',  0);
INSERT INTO choice(title_id, content, checked) VALUES(298, '我国对国产网络游戏实行备案制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(298, '我国对进口网络游戏实行备案制',  1);
INSERT INTO choice(title_id, content, checked) VALUES(299, '口令攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(299, 'U盘工具',  0);
INSERT INTO choice(title_id, content, checked) VALUES(299, 'IE浏览器的漏洞',  1);
INSERT INTO choice(title_id, content, checked) VALUES(299, '拒绝服务攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(300, '在他人计算机上使用自动登陆和记住密码功能',  1);
INSERT INTO choice(title_id, content, checked) VALUES(300, '禁止使用Active控件和Java脚本',  0);
INSERT INTO choice(title_id, content, checked) VALUES(300, '定期清理浏览器Cookies',  0);
INSERT INTO choice(title_id, content, checked) VALUES(300, '定期清理浏览器缓存和上网记录',  0);
INSERT INTO choice(title_id, content, checked) VALUES(301, '口令验证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(301, '增加访问标记',  0);
INSERT INTO choice(title_id, content, checked) VALUES(301, '身份验证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(301, '加密',  1);
INSERT INTO choice(title_id, content, checked) VALUES(302, '《互联网信息服务管理办法》',  0);
INSERT INTO choice(title_id, content, checked) VALUES(302, '《互联网电子邮件服务管理办法》',  1);
INSERT INTO choice(title_id, content, checked) VALUES(302, '《互联网电子公告服务管理规定》',  0);
INSERT INTO choice(title_id, content, checked) VALUES(302, '《互联网网络安全管理办法》',  0);
INSERT INTO choice(title_id, content, checked) VALUES(303, '使用',  0);
INSERT INTO choice(title_id, content, checked) VALUES(303, '开启',  0);
INSERT INTO choice(title_id, content, checked) VALUES(303, '关闭',  1);
INSERT INTO choice(title_id, content, checked) VALUES(303, '限制',  0);
INSERT INTO choice(title_id, content, checked) VALUES(304, '个人注册信息',  1);
INSERT INTO choice(title_id, content, checked) VALUES(304, '收入信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(304, '所在单位的信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(304, '家庭信息',  0);
INSERT INTO choice(title_id, content, checked) VALUES(305, '采用物理传输(非网络)',  1);
INSERT INTO choice(title_id, content, checked) VALUES(305, '信息加密',  0);
INSERT INTO choice(title_id, content, checked) VALUES(305, '无线网',  0);
INSERT INTO choice(title_id, content, checked) VALUES(305, '使用专线传输',  0);
INSERT INTO choice(title_id, content, checked) VALUES(306, '缓冲区溢出',  1);
INSERT INTO choice(title_id, content, checked) VALUES(306, '网络监听',  0);
INSERT INTO choice(title_id, content, checked) VALUES(306, '拒绝服务',  0);
INSERT INTO choice(title_id, content, checked) VALUES(306, 'IP欺骗',  0);
INSERT INTO choice(title_id, content, checked) VALUES(307, 'HTTP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(307, 'FTP',  0);
INSERT INTO choice(title_id, content, checked) VALUES(307, 'TELNET',  0);
INSERT INTO choice(title_id, content, checked) VALUES(307, 'SSL',  1);
INSERT INTO choice(title_id, content, checked) VALUES(308, '缓存溢出攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(308, '钓鱼攻击',  1);
INSERT INTO choice(title_id, content, checked) VALUES(308, '暗门攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(308, 'DDOS攻击',  0);
INSERT INTO choice(title_id, content, checked) VALUES(309, '基于账户名/口令认证',  1);
INSERT INTO choice(title_id, content, checked) VALUES(309, '基于摘要算法认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(309, '基于PKI认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(309, '基于数据库认证',  0);
INSERT INTO choice(title_id, content, checked) VALUES(310, '跟用户名相同的密码',  0);
INSERT INTO choice(title_id, content, checked) VALUES(310, '使用生日作为密码',  0);
INSERT INTO choice(title_id, content, checked) VALUES(310, '只有4位数的密码',  0);
INSERT INTO choice(title_id, content, checked) VALUES(310, '8位数的综合型密码',  1);
INSERT INTO choice(title_id, content, checked) VALUES(311, ' 网络安全网络安全建设重建设轻测评;',  0);
INSERT INTO choice(title_id, content, checked) VALUES(311, '安全监管责任分散，缺乏有效安全监管手段;',  0);
INSERT INTO choice(title_id, content, checked) VALUES(311, '对大量涉及国计民生、社会公众的基础信息系统监管不足。',  0);
INSERT INTO choice(title_id, content, checked) VALUES(311, ' 网络管理状态良好',  1);
INSERT INTO choice(title_id, content, checked) VALUES(312, '税收优惠政策',  1);
INSERT INTO choice(title_id, content, checked) VALUES(312, '安全限制政策',  0);
INSERT INTO choice(title_id, content, checked) VALUES(312, '提升标准政策',  0);
INSERT INTO choice(title_id, content, checked) VALUES(312, '其他政策',  0);
INSERT INTO choice(title_id, content, checked) VALUES(313, '外产化',  0);
INSERT INTO choice(title_id, content, checked) VALUES(313, '国产化',  1);
INSERT INTO choice(title_id, content, checked) VALUES(313, '结合化',  0);
INSERT INTO choice(title_id, content, checked) VALUES(313, '其他化',  0);
INSERT INTO choice(title_id, content, checked) VALUES(314, '高涉密信息系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(314, '低涉密信息系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(314, '中涉密信息系统',  0);
INSERT INTO choice(title_id, content, checked) VALUES(314, '涉密信息系统',  1);
INSERT INTO choice(title_id, content, checked) VALUES(315, '一',  0);
INSERT INTO choice(title_id, content, checked) VALUES(315, '二',  0);
INSERT INTO choice(title_id, content, checked) VALUES(315, '三',  1);
INSERT INTO choice(title_id, content, checked) VALUES(315, '四',  0);
INSERT INTO choice(title_id, content, checked) VALUES(316, '一',  0);
INSERT INTO choice(title_id, content, checked) VALUES(316, '二',  0);
INSERT INTO choice(title_id, content, checked) VALUES(316, '三',  0);
INSERT INTO choice(title_id, content, checked) VALUES(316, '四',  1);

### additiontitle ###
### 判断题 type=1 ###
INSERT INTO additiontitle(name, type, answer) VALUES("中国既是一个网#络大国，也是一个网络强国。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("近年来，中国在#互联网领域的竞争力和话语权逐渐增强，但与发达国家相比仍有差距", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》#从草案发布到正式出台，共经历了三次审议、两次公开征求意见和修改。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》#一、二、三审稿直至最终出台稿，在基本结构、基本内容方面没有进行根本性的修改。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在我国网络安#全法律体系中，地方性法规及以上文件占多数。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法#》为配套的法规、规章预留了接口。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法#》没有确立重要数据跨境传输的相关规则。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("个人信息是指#通过网络收集、存储、传输、处理和产生的各种电子数据。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("网络空间主权#是国家主权在网络空间的体现和延伸。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法#》只能在我国境内适用。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("日均访问量超#过1000万人次的党政机关网站、企事业单位网站、新闻网站才属于关键信息基础设施。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("我国在个人信#息保护方面最早的立法是2000年的《关于维护互联网安全的决定》。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("个人信息的收#集、使用者采用匿名化技术对个人信息进行处理之后，使其无法识别出特定个人且不能复原的，向他人提供这些匿名化的数据无须经过被收集者的同意。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("对于网络安全#方面的违法行为，《网络安全法》规定仅追究民事责任和行政责任，不会追究刑事责任。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("与中央政府相#对应，地方的网信、电信和公安部门是承担网络安全保护和监管职责的主要部门。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法#》对地方政府有关部门的网络安全职责未作具体规定，应当依照国家有关规定确定并执行。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("要求用户提供#真实身份信息是网络运营者的一项法定义务。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("数据中心是指#一旦遭到破坏、丧失功能或者数据泄露将对国家安全、国计民生、公共利益造成重大影响的重要网络设施和系统。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("个人信息保护#的核心原则是经过被收集者的同意。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("个人发现网络#运营者违反法律、行政法规的规定或者双方的约定收集、使用其个人信息的，有权要求网络运营者删除其个人信息。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("密码字典是密#码破解的关键。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("社会工程学攻#击是利用人性弱点（本能反应、贪婪、易于信任等）进行欺骗获取利益的攻击方法。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("欺骗攻击（Sp#oofing）是指通过伪造源于可信任地址的数据包以使一台机器认证另一台机器的复杂技术 。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("在“十九大”中#提出智慧城市主要存在以下三个风险分别是网络安全建设重建设轻测评、安全监管责任分散，缺乏有效安全监管手段以及对大量涉及国计民生、社会公众的基础信息系统监管不足。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中提#出工业互联网目前面临的三个主要问题，分别是国家及地方的工业互联网信息安全监管责任主体不够明确，工业互联网的信息安全环境复杂多样，风险来源更多、安全隐患发现难度更高，现有的信息安全防护技术不能完全适用以及工业互联网安全产品的认证及准入体系不完善。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("Who is是一个#标准服务，可以用来查询域名是否被注册以及注册的详细资料。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("信息展示要坚#持最小化原则，不必要的信息不要发布。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("端口扫描的原#理是通过端口扫描确定主机开放的端口，不同的端口对应运行着的不同的网络服务。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全是独#立的行业。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("在20世纪90年#代，系统是可被替代的信息工具。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("针对“十九大”#中提出的智慧城市的存在的风险，我们可以有如下应对措施：建立智慧城市网络安全评价体系，大力推进安全测评工作;分散安全监管职能，建设分散式网络安全运营模式;组合法规、管理和技术手段，加强对影响国计民生的基础信息系统的安全监管;加强政策引导，鼓励网络安全技术自主创新。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中提#出工业互联网目前面临四个主要问题，针对这些问题，提按也分别提出四项提意，分别是：明确国家、地方及行业的工业互联网信息安全监督主体和责任;建议制定工业互联网安全新技术研究方向，开展工业互联网信息安全技术创新实验室和示范基地的建设;建议完善工业互联网信息安全产品认证及准入机制，建立相关产品名录;建议完善国家工业互联网整体安全保障能力。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机时代的#安全措施是安全操作系统设计技术。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("2009年，美国#将网络安全问题上升到国家安全的重要程度。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("2003年，《国#家信息化领导小组关于加强信息安全保障工作的意见》出台。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全问题#产生的内部原因是脆弱性。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全保障#是要在信息系统的整个生命周期中，对信息系统的风险分析。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("一般意义上来#说，数据包括信息，信息是有意义的数据。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("习近平总书记#担任中共中央网络安全和信息化领导小组组长以来，我国信息化形势越来越好，国家对于信息化也越来越重视。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("新的IPv6协议#栈软件不存在的安全漏洞。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("已有大量的网#络安全设备可以应用于IPv6环境。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("网上舆论工作#是新时期党的宣传思想工作新的着力点 。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("网络舆论是网#民利用互联网对新闻、言论或某个话题发表自己的意见，并经过充分互动所形成的具有一定影响力和某种倾向性的共同意见或集体情绪 。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("网络舆论的是#是非非，种种表现，一言难尽。但是，有一点是可以肯定的，那就是爱国主义是网络舆论的永恒强音和绝对主流 。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("追求社会的公#平正义是人类矢志不渝的理想，而实现社会的公平正义是治国理政的价值追求 。 ", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("利益格局改变#导致社会矛盾和各种诉求与日俱增 。 ", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("大数据(big d#ata)，或称巨量资料，一般认为，它是需要新处理模式才能具有更强的决策力、洞察发现力和流程优化能力的海量、高增长率和多样化的信息资产 。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("互联网作为当#今社会一个反映民意的窗口和海纳舆情的空间，已成为舆情产生、形成、发展和传播的最重要策源地。 ", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES(" 自己监测，是#指由本系统、本单位开发技术和组织人力实施舆情监测。监测的方式，目前主要有浏览、搜索两种 。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("网络舆情研判#的基本要点，也可以理解为网络舆情研判的主要环节、主要任务、主要内容或重要着力点 。 ", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("舆情报告要发#挥其作用，实现其舆情信息的价值，内容就必须做到准确、及时、全面，表达要高效、凝练，行动要保密 。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("舆情案例的编#写是舆情得以合理呈现的重要环节。总体来说，好的舆情分析报告要有鲜明的主题、新颖的观点、严密的逻辑、精巧的结构和准确的文字 。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("抓住矛盾，运#用矛盾分析法，解决现实问题，是舆论引导最根本和最有效的方式。  ", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在舆情引导与#危机处理中，法制思维十分重要 。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("利用第三方声#音引导舆论主要有两层含义：一是利用那些与事件无利益关联的声音引导舆论;二是以第三方的姿态与网民理性互动 。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("建立和完善舆#情工作机制，有利于驾驭信息网络和掌握舆论主导权 。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("如果经过舆情#研判其信息属于有害信息，那首要的措施就是及时澄清 。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("在管理体系中#,培训管理是确保信息系统安全的前提。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机良性病#毒是不破坏计算机的数据或程序。它是一种只占用计算机资源来执行而不会导致计算机系统瘫痪的计算机病毒。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在域名中,WWW#是指万维网。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("公钥密码比传#统密码更安全。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("某人续写他人#享有著作权的网络小说,并发表在盈利网站,此种行为没有侵犯原作者的权益。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES(".PKI(Public #Key Infrastructure)是利用公钥原理和技术实施和提供安全服务的具有普适性的安全基础设施。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("一但中了IE窗#口炸弹马上按下主机面板上的Reset键,重起计算机。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("李某将同学张#某的小说擅自发表在网络上,该行为如果不影响张某在出版社出版该小说,就是合法的。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("在网络环境下#,未经版权所有人、表演者和录音制品制作者的许可,可以将其作品或录音制品上传到网上和在网上传播。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("对于重要的计#算机系统,更换操作人员时,应令原操作员迅速交出掌握的各种技术资料、磁盘等存储器件,同时改变系统的口令密码。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在一所大学里#,每个学院都有自己的局域网,连接各个学院的校园网也是局域网。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("屏幕保护的密#码是需要分大小写的。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("被侵权人与网#络服务提供者达成的一方支付报酬,另一方提供删除、屏蔽、断开链接等服务的协议,人民法院应认定无效。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("应用IPv6协议#给网络架构带来新变化，可能产生新的安全风险。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中关#于在推进IPv6应用中做好安全保障工作的提案中，提到应加强对部署IPv6应用机构的风险评估工作;鼓励安全企业和个人对IPv6协议栈的漏洞挖掘;加强IPv6安全人才培训教育;推动现有网络安全设备尽快过渡到IPv6环境。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中关#于加快推进军工行业工业控制系统与涉密信息系统安全互联的提案中认为军工行业工业控制系统的信息安全监管责任做得十分明确，值得其他领域学习。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中关#于加快推进军工行业工业控制系统与涉密信息系统安全互联的提案中认为大部分军工单位的工业控制系统安全防护薄弱，工业控制系统信息安全管理机制不完善。       ", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("对于涉密信息#系统实行分级保护，确定涉密信息系统安全等级，主要考虑的因素包括涉密信息的涉密等级、涉密信息系统的重要性、到破坏后对国计民生造成的危害性和涉密信息系统必须达到的安全保护水平。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("我国网络与信#息安全事件预警等级分为I级（特别严重）、Ⅱ级（严重）和Ⅲ级（较重），依次用红色、橙色和黄色表示，分别对应发生或可能发生特别重大、重大和较大的网络与信息安全事件。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("完整性是指保#证信息及信息系统不会被非授权更改或破坏的特性，包括数据完整性和系统完整性。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("英国是继美国#之后提出对该国的网络攻击被其称为是对该国的战争行为。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("日本没有《网#络安全基本法》和《个人信息保护法》。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("涉密信息系统#的风险评估，由国家保密部门按照有关法律、法规规定实施。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("受委托进行信#息安全风险评估的服务机构应当指导被评估单位开展整改，但不对整改措施的有效性进行验证。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("从事信息安全#风险评估服务的机构，不得私自占有、使用或向第三方泄露相关技术数据、业务资料等信息和资源。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("国家保密工作#部门负责等级保护工作中有关保密工作的监督、检查、指导。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("新建第二级以#上信息系统，应当在投入运行后30日内，由其运营、使用单位到所在地市级以上公安机关办理备案手续。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("采用虚拟化技#术、增加新的互联网线路、增加管理终端、增加新的应用都属于信息系统发生重大变更的情况。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全产品#是信息系统的重要组成部分。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("十九大”关于推#动国产安全设备在关键信息基础设施保护中应用的提案中认为国外网络安全设备大多都不存在风险。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("个人计算机密#码设置要符合安全要求，并定期更换。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("系统安全管理#主要包括系统日常维护、用户和权限、操作审计等。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("资产管理员主#要负责信息资产的采购、登记、分发、回收、废弃等管理工作。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全管理#员根据实际需要可兼任病毒管理员的职责。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("通过“计算机管#理-共享文件夹-共享”路径停止默认共享后，在操作系统重启时，默认共享仍会打开。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("软件加密成本#低，使用灵活、更换方便；硬件加密效率高，但安全性较低。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("电子签名的主#要目的是防抵赖、防止否认，一边给仲裁机构提供证据。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("差分备份是将#最近修改的数据进行备份，其备份速度快、易恢复、备份策略较复杂。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("防火墙必须要#提供VPN和NAT等功能。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("通过网络扫描#可以判断目标主机的操作系统类型。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("可以采用内容#过滤技术来过滤垃圾邮件。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在来自可信站#点的电子邮件中输入个人或财务信息是安全的。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("设备设施故障#是指信息系统自身故障而导致的信息安全事件。因市政供电线路意外中断而导致信息系统无法正常工作，鉴于市政供电线路不属于信息系统保护范围，因此该事件分类不属于设备设施故障。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("为避免在插入#U盘等移动存储设备时受到病毒感染，用户应在插入前先对其进行病毒检查，同时在系统中禁用U盘的自动播放功能。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("装有微信、支#付宝等软件的智能手机丢失后，用户仅需补办sim卡即可。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("家用计算机可#直接登录Windows无需设置密码。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("邮件的附件如#果是带有.exe、.com、.pif、.pl、.src和.vbs为后缀的文件，应确定其安全后再打开。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("当盗版软件标#注“绝对不含有病毒”时，才能放心使用该盗版软件。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("只要能搜索到#无需密码的WiFi就可以连接使用。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("在设置网银密#码时不使用生日或电话号码等简单的数字密码。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("删除不必要的#网络共享可以提高防范病毒的能力。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”关于#推动国产安全设备在关键信息基础设施保护中应用的提案中提出信息安全行业在激励引导方面略显不足。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES(" VPN所采取的#两项关键技术是认证与加密。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("不下载使用盗#版软件是一种避免感染木马的有效措施。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("不同的网络应#用服务使用不同的密码。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("IP欺骗的动机#是隐藏自己的IP地址，防止被跟踪，以IP地址作为授权依据，穿越防火墙。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("要保证一个公#司总部与其分支机构的网络通讯安全只有通过VPN来实现。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中关#于加强工业互联网信息安全建设的提案中指出国家及地方的工业互联网信息安全监管责任主体已经足够明确了。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("IP劫持不同于#用网络侦听来窃取密码的被动攻击方式，而是一种主动攻击方式", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”中关#于加强工业互联网信息安全建设的提案中指出工业互联网的信息安全环境单一，风险来源不多、安全隐患发现难度也不很大。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在完成主机存#活性判断之后，就应该去判定主机开放信道的状态，端口就是在主机上面开放的信道。", 1,"T");
INSERT INTO additiontitle(name, type, answer) VALUES("防火墙不能防#止来自网络内部的攻击。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("由于防火墙性#能上的限制，它通常不具备实时监控入侵的能力。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("“十九大”关于#加强智慧城市网络安全测评及监管工作的提案中指出智慧城市的安全监管责任分散，缺乏有效安全监管手段。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("网络的发展促#进了人们的交流，同时带来了相应的安全问题。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("防火墙不能防#止利用服务器系统和网络协议漏洞所进行的攻击。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("防火墙不能防#止内部的泄密行为。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("防火墙的作用#是防止不希望的、未授权的通信进出被保护的网络。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("入侵防护系统# (IPS)倾向于提供主动防护，其设计宗旨是预先对入侵活动和攻击性网络流量进行拦截，避免其造成损失，而不是简单地在恶意流量传送时或传送后才发出警报。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("按计算机病毒#的传染方式来分类，可分为良性病毒和恶性病毒。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("系统安全的责#任在于IT技术人员，最终用户不需要了解安全问题。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("基于主机的漏#洞扫描优点是扫描的漏洞数量多、便于集中化管理、网络流量负载小、通讯过程中采用加密机制。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("安装系统后应#当根据厂商或安全咨询机构的建议对系统进行必要的安全配置。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("一般认为具有#最高安全等级的操作系统是绝对安全的。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("非法访问一旦#突破数据包过滤型防火墙，即可对主机上的漏洞进行攻击。 ", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("安全审计是一#种事后追查的安全机制，其主要目标是检测和判定非法用户对系统的渗透或入侵，识别误操作并记录进程基于特定安全级活动的详细情况。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("一个完备的入#侵检测系统IDS一定是基于主机和基于网络两种方式兼备的分布式系统。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("入侵检测技术#(IDS)通过监视网络或系统资源，寻找违反安全策略的行为或攻击迹象，并发出报警。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("防火墙是实施#访问控制策略的系统，对流经的网络流量进行检查，拦截不符合安全策略的数据包。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("最小特权、纵#深防御是网络安全的原则之一。 ", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("密码保管不善#属于操作失误的安全隐患。 ", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全工程#实施的关键是质量，而质量的关键是服务的长期保障能力。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("使用最新版本#的网页浏览器软件可以防御黑客攻击。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("VPN的主要特点#是通过加密使信息能安全的通过Internet传递。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在设计系统安#全策略时要首先评估可能受到的安全威胁。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机信息系#统的安全威胁同时来自内、外两个方面。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全服务#的开展与网络安全防范是一对矛盾。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("漏洞是指任何#可以造成破坏系统或信息的弱点。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("公共密钥密码#体制在密钥管理上比对称密钥密码体制更为安全。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("安全审计就是#日志的记录。（安全审计是指由专业审计人员根据有关的法律法规、财产所有者的委托和管理当局的授权,对计算机网络环境下的有关活动或行为进行系统的、独立的检查验证,并作出相应评价。）", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒是#计算机系统中自动产生的。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("对于一个计算#机网络来说,依靠防火墙即可以达到对网络内部和外部的安全防护。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("操作系统不安#全是计算机网络不安全的根本原因", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("UTM统一威胁管#理设备可以很好地防御目前流行的混合型数据攻击的威胁。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("网络隔离的目#的是实现不同安全级别的网络之间的通信。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全边界#防范的不完备性仅指防外不防内。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("违反国家法律#、法规的行为，危及计算机信息系统安全的事件，称为计算机案件。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机犯罪是#行为人以计算机为工具或以计算机资产为犯罪对象实施的，依照我国刑法应受处罚的，具有社会危害性的行为。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("格式化过后的#计算机，原来的数据就找不回来了。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒防#治产品实行销售许可证制度。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒防#治产品分为三级，其中三级品为最高级。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全应具#有以下四个方面的特征：保密性、完整性、可用性、可查性。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("在计算机系统#安全中，人的作用相对于软件，硬件和网络而言，不是很重要。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("安全管理从范#畴上讲，涉及物理安全策略、访问控制策略、信息加密策略和网络安全管理策略。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("公安部公共信#息网络安全监察部门主管全国的计算机病毒防治管理工作。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("开放性是UNIX#系统的一大特点。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("防止主机丢失#属于系统管理员的安全管理范畴。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("我们通常使用#SMTP协议用来接收E-MAIL。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("只要选择一种#最安全的操作系统，整个系统就可以保障安全。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("为了防御网络#监听，最常用的方法是采用物理传输。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("具有政治目的#的黑客只对政府的网络与信息资源造成危害。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("通过使用SOCK#S5代理服务器可以隐藏QQ的真实IP。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("病毒攻击是危#害最大、影响最广、发展最快的攻击技术。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("禁止使用活动#脚本可以防范IE执行本地任意程序。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("只要是类型为#TXT的文件都没有危险。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("附件为SHS格式#的文件一般没有什么风险，可以放心打开。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("发现木马，首#先要在计算机的后台关掉其程序的运行。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("VPN只能在电脑#上使用，无法再手机上使用。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("解决共享文件#夹的安全隐患应该卸载Microsoft网络的文件和打印机共享。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("不要将密码写#到纸上。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("蠕虫、特洛伊#木马和病毒其实是一回事。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒的#传播媒介来分类，可分为单机病毒和网络病毒。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("TCSEC是美国的#计算机安全评估机构和安全标准制定机构。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("复合型防火墙#是内部网与外部网的隔离点，起着监视和隔绝应用层通信流的作用，同时也常结合过滤器的功能。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("目前入侵检测#系统可以及时的阻止黑客的攻击。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("ATM 技术领先#于TCP/IP技术，即将取代IP技术，实现语音、视频、数据传输网络的三网合一。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("Internet设计#之初，考虑了核战争的威胁，因此充分考虑到了网络安全问题。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("我的计算机在#网络防火墙之内，所以其他用户不可能对我计算机造成威胁。", 1, "F");
INSERT INTO additiontitle(name, type, answer) VALUES("Internet没有#一个集中的管理权威。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("统计表明，网#络安全威胁主要来自内部网络，而不是Internet。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("只要设置了足#够强壮的口令，黑客不可能侵入到计算机中。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("路由协议如果#没有认证功能，就可以伪造路由信息，导致路由表混乱，从而使网络瘫痪。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("发起大规模的#DDoS攻击通常要控制大量的中间网络或系统。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("路由器在转发#IP分组时，一般不检查IP分组的源地址，因此可以伪造IP分组的源地址进行攻击，使得网络管理员无法追踪。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("在我国，个人#使用VPN上网是违法行为。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("IPv4地址60.2#14.250.17是A类地址。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("OSI参考模型分#为物理层、数据链路层、网络层、传输层、会话层、表示层和应用层共七层。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("TCP/IP参考模#型分为物理层、网络层、表示层和应用层共四层。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("TCP/IP协议是#TCP和IP这两个协议的合称。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("普通台式电脑#因为缺少无线网卡而不能连接WiFi。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("熊猫烧香病毒#案是我国警方破获的首例计算机病毒大案。", 1, "T");
INSERT INTO additiontitle(name, type, answer) VALUES("直接与电脑相#连的网线是光缆。", 1,"F");
INSERT INTO additiontitle(name, type, answer) VALUES("光缆传输数据#速度很快是因为其主要材料是铜。", 1, "F");




### 多选题 type=3 ###
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全工作的目标包括（ ）
#A.信息机密性
#B.信息完整性
#C.服务可用性
#D.可审查性", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("智能卡是内嵌有微芯片的塑料卡的通称，需要通过读写器进行数据交互。可以应用智能卡的地方包括（ ）
#A.进入大楼
#B.使用移动电话
#C.登录特定主机
#D.执行银行和电子商务交易", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机信息系统的运行安全包括( )
#A.系统风险管理
#B.审计跟踪
#C.备份与恢复
#D.电磁信息泄漏", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("实施计算机信息系统安全保护的措施包括( )
#A.安全法规
#B.安全管理
#C.组织建设
#D.制度建设", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全员应具备的条件: ( )具有一定的计算机网络专业技术知识
#A.经过计算机安全员培训，并考试合格
#B.具有大本以上学历
#C.无违法犯罪记录
#D.具有一定的计算机网络专业技术知识", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("Windows NT的“域”控制机制具备哪些安全特性？( )
#A.用户身份验证
#B.访问控制
#C.审计(日志)
#D.数据通讯的加密", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("从系统整体看，安全“漏洞”包括哪些方面( )
#A.技术因素
#B.人的因素
#C.规划，策略和执行过程
#D.外界因素", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("应对操作系统安全漏洞的基本方法是什么？( )
#A.对默认安装进行必要的调整
#B.给所有用户设置严格的口令
#C.及时安装最新的安全补丁
#D.更换到另一种操作系统", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("造成操作系统安全漏洞的原因( )
#A.不安全的编程语言
#B.不安全的编程习惯
#C.考虑不周的架构设计
#D.不安全的编程环境", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("严格的口令策略应当包含哪些要素( )
#A.满足一定的长度，比如8位以上
#B.同时包含数字，字母和特殊字符
#C.系统强制要求定期更改口令
#D.用户可以设置空口令", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机安全事件包括以下几个方面( )
#A.重要安全技术的采用
#B.安全标准的贯彻
#C.安全制度措施的建设与实施
#D.重大安全隐患、违法违规的发现，事故的发生", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机案件包括以下几个内容( )
#A.违反国家法律的行为
#B.违反国家法规的行为
#C.危及、危害计算机信息系统安全的事件
#D.计算机硬件常见机械故障", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("重大计算机安全事故和计算机违法案件可由_____受理( )
#A.案发地市级公安机关公共信息网络安全监察部门
#B.案发地当地县级（区、市）公安机关治安部门
#C.案发地当地县级（区、市）公安机关公共信息网络安全监察部门
#D.案发地当地公安派出所", 3, "AC");
INSERT INTO additiontitle(name, type, answer) VALUES("现场勘查主要包括以下几个环节_____( )
#A.对遭受破坏的计算机信息系统的软硬件的描述及被破坏程度
#B.现场现有电子数据的复制和修复
#C.电子痕迹的发现和提取，证据的固定与保全
#D.现场采集和扣押与事故或案件有关的物品", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机安全事故原因的认定和计算机案件的数据鉴定,____ ( )
#A.是一项专业性较强的技术工作
#B.必要时可进行相关的验证或侦查实验
#C.可聘请有关方面的专家，组成专家鉴定组进行分析鉴定
#D.可以由发生事故或发生计算机案件的单位出具鉴定报告", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("有害数据通过在信息网络中的运行，主要产生的危害有( )
#A.攻击国家政权，危害国家安全
#B.破坏社会治安秩序
#C.破坏计算机信息系统，造成经济的社会的巨大损
#D.使个人信息泄露", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒的特点______( )
#A.传染性
#B.可移植性
#C.破坏性
#D.可触发性", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒按传染方式分为____( )
#A.良性病毒
#B.引导型病毒
#C.文件型病毒
#D.复合型病毒", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒的危害性有以下几种表现( )
#A.删除数据
#B.阻塞网络
#C.信息泄漏
#D.烧毁主板", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒由_____部分组成()
#A.引导部分
#B.传染部分
#C.运行部分
#D.表现部分", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些措施可以有效提高病毒防治能力()
#A.安装、升级杀毒软件
#B.升级系统、打补丁
#C.提高安全防范意识
#D.不要轻易打开来历不明的邮件", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒的主要传播途径有()
#A.电子邮件
#B.网络
#C.存储介质
#D.文件交换", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒的主要来源有____()
#A.黑客组织编写
#B.计算机自动产生
#C.恶意编制
#D.恶作剧", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("发现感染计算机病毒后，应当先采取哪些措施()
#A.断开网络
#B.使用杀毒软件检测、清除
#C.如果不能清除，将样本上报国家计算机病毒应急处理中心
#D.格式化系统", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("我国信息安全事件分类包括（ ）。
#A.一般事件
#B.较大事件
#C.重大事件
#D.特别重大事件", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》的意义包括（ ）。
#A.落实党中央决策部署的重要举措
#B.维护网络安全的客观需要
#C.维护民众切身利益的必然要求
#D.参与互联网国际竞争和国际治理的必然选择", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("在我国的网络安全法律法规体系中，属于专门立法的有（ ）。
#A.《网络安全法》
#B.《杭州市计算机信息网络安全保护管理条例》
#C.《保守国家秘密法》
#D.《计算机信息系统安全保护条例》", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("我国网络安全法律体系的特点包括（ ）。
#A.以《网络安全法》为基本法统领，覆盖各个领域
#B.部门规章及以下文件占多数
#C.涉及多个管理部门
#D.内容涵盖网络安全管理、保障、责任各个方面", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》的特点包括（ ）。
#A.特殊性
#B.全面性
#C.针对性
#D.协调性", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》的突出亮点在于（ ）。
#A.明确网络空间主权的原则
#B.明确网络产品和服务提供者的安全义务
#C.明确了网络运营者的安全义务
#D.进一步完善个人信息保护规则", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》确定了（ ）等相关主体在网络安全保护中的义务和责任。
#A.国家
#B.主管部门
#C.网络运营者
#D.网络使用者", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("我国网络安全工作的轮廓是（ ）。
#A.以关键信息基础设施保护为重心
#B.强调落实网络运营者的责任
#C.注重保护个人权益
#D.以技术、产业、人才为保障", 3,"ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机网络包括（ ）。
#A.互联网
#B.局域网
#C.工业控制系统
#D.电信网络", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("网络运营者包括（ ）。
#A.网络所有者
#B.网络管理者
#C.网络使用者
#D.网络服务提供者", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》规定，网络空间主权的内容包括（ ）。
#A.国内主权
#B.依赖性主权
#C.独立权
#D.自卫权", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》规定，国家维护网络安全的主要任务是（ ）。
#A.检测、防御、处置网络安全风险和威胁
#B.保护关键信息基础设施安全
#C.依法惩治网络违法犯罪活动
#D.维护网络空间安全和秩序", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("在各国加强网络安全国际合作的行动中，在联合国框架下开展的合作有（ ）。
#A.召开信息社会世界峰会
#B.成立信息安全政府间专家组
#C.上海经合组织
#D.七国集团峰会", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("我国参与网络安全国际合作的重点领域包括（ ）。
#A.网络空间治理
#B.网络技术研发
#C.网络技术标准制定
#D.打击网络违法犯罪", 3,"ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《网络安全法》第四十一条规定，网络经营者收集、使用个人信息的规则包括（ ）。
#A.保密原则
#B.合法原则
#C.正当原则
#D.公开透明原则", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("密码破解安全防御措施包括（ ）。
#A.设置“好”的密码
#B.系统及应用安全策略
#C.随机验证码
#D.其他密码管理策略", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("社会工程学利用的人性弱点包括（ ）
#A.信任权威
#B.信任共同爱好
#C.期望守信
#D.期望社会认可", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络社会的社会工程学直接用于攻击的表现有（ ）。
#A.利用同情、内疚和胁迫
#B.利用社会工程学破解口令
#C.正面攻击（直接索取）
#D.利用社会工程学进行网络攻击", 3, "AC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列选项中，属于社会工程学在安全意识培训方面进行防御的措施是（ ）。
#A.构建完善的技术防御体系
#B.知道什么是社会工程学攻击
#C.知道社会工程学攻击利用什么
#D.有效的安全管理体系和操作", 3, "BC");
INSERT INTO additiontitle(name, type, answer) VALUES("拒绝服务攻击方式包括（ ）。
#A.利用大量数据挤占网络带宽
#B.利用大量请求消耗系统性能
#C.利用协议实现缺陷
#D.利用系统处理方式缺陷", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("拒绝服务攻击的防范措施包括（ ）。
#A.安全加固
#B.资源控制
#C.安全设备
#D.运营商、公安部门、专家团队等", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("IP欺骗的技术实现与欺骗攻击的防范措施包括（ ）。
#A.使用抗IP欺骗功能的产品
#B.严密监视网络，对攻击进行报警
#C.使用最新的系统和软件，避免会话序号被猜出
#D.严格设置路由策略：拒绝来自网上，且声明源于本地地址的包", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("关于堆栈，下列表述正确的是（ ）。
#A.一段连续分配的内存空间
#B.特点是后进先出
#C.堆栈生长方向与内存地址方向相反
#D.堆栈生长方向与内存地址方向相同", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("安全设置对抗DNS欺骗的措施包括（ ）。
#A.关闭DNS服务递归功能
#B.限制域名服务器作出响应的地址
#C.限制发出请求的地址
#D.限制域名服务器作出响应的递归请求地址", 3,"ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机后门的作用包括（ ）。
#A.方便下次直接进入
#B.监视用户所有隐私
#C.监视用户所有行为
#D.完全控制用户主机", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机后门木马种类包括（ ）。
#A.特洛伊木马
#B.RootKit
#C.脚本后门
#D.隐藏账号", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("日志分析重点包括（ ）。
#A.源IP
#B.请求方法
#C.请求链接
#D.状态代码", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("目标系统的信息系统相关资料包括（ ）。
#A.域名
#B.网络拓扑
#C.操作系统
#D.应用软件", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("漏洞信息及攻击工具获取的途径包括（ ）。
#A.漏洞扫描
#B.漏洞库
#C.QQ群
#D.论坛等交互应用", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("信息收集与分析工具包括（ ）。
#A.网络设备漏洞扫描器
#B.集成化的漏洞扫描器
#C.专业web扫描软件
#D.数据库漏洞扫描器", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("信息收集与分析的防范措施包括（ ）。
#A.部署网络安全设备
#B.减少攻击面
#C.修改默认配置
#D.设置安全设备应对信息收集", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("信息收集与分析的过程包括（ ）。
#A.信息收集
#B.目标分析
#C.实施攻击
#D.打扫战场", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机时代的安全威胁包括（ ）。
#A.非法访问
#B.恶意代码
#C.脆弱的口令
#D.破解", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("冯诺依曼模式的计算机包括（ ）。
#A.显示器
#B.输入与输出设备
#C.CPU
#D.存储器", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全保障的安全措施包括（ ）。
#A.防火墙
#B.防病毒
#C.漏洞扫描
#D.入侵检测", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全保障包括（ ）。
#A.技术保障
#B.管理保障
#C.人员培训保障
#D.法律法规保障", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("对于信息安全的特征，下列说法正确的有（ ）。
#A.信息安全是一个系统的安全
#B.信息安全是一个动态的安全
#C.信息安全是一个无边界的安全
#D.信息安全是一个非传统的安全", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("信息安全管理的对象包括有（ ）。
#A.目标
#B.规则
#C.组织
#D.人员", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("国家安全组成要素包括（ ）。
#A.信息安全
#B.政治安全
#C.经济安全
#D.文化安全", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列属于资产的有（ ）。
#A.信息
#B.信息载体
#C.人员
#D.公司的形象与名誉", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("威胁的特征包括（ ）。
#A.不确定性
#B.确定性
#C.客观性
#D.主观性", 3, "AC");
INSERT INTO additiontitle(name, type, answer) VALUES("安全风险的基本概念包括（ ）。
#A.资产
#B.脆弱性
#C.威胁
#D.控制措施", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列哪些属于“网络素养标准十条”（）
#A.认识网络——网络基本知识能力
#B.理解网络——网络的特征和功能
#C.安全触网——高度网络安全意识
#D.善用网络——网络信息获取能力", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("某同学的以下行为中属于侵犯知识产权的是()。
#A.把自己从音像店购买的《美妙生活》原版CD转录，然后传给同学试听
#B.将购买的正版游戏上网到网盘中，供网友下载使用
#C.下载了网络上的一个具有试用期限的软件，安装使用
#D.把从微软公司购买的原版Windows", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列有关隐私权的表述,正确的是( ) 
#A.网络时代,隐私权的保护受到较大冲击
#B.虽然网络世界不同于现实世界,但也需要保护个人隐私
#C.由于网络是虚拟世界,所以在网上不需要保护个人的隐私
#D.可以借助法律来保护网络隐私权", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("好友的QQ突然发来一个网站链接要求投票，不是最合理的做法有（ ）
#A.因为是其好友信息，直接打开链接投票
#B.可能是好友QQ被盗，发来的是恶意链接，先通过手机跟朋友确认链接无异常后，再酌情考虑是否投票
#C.不参与任何投票。
#D.把好友加入黑名单", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("微信里收到“微信团队”的安全提示：“您的微信账号在16:46尝试在另一个设备登录。登录设备：XX品牌XX型号”。这时不是正确做法的有（ ）
#A.有可能是误报，不用理睬
#B.确认是否是自己的设备登录，如果不是，则尽快修改密码
#C.自己的密码足够复杂，不可能被破解，坚决不修改密码
#D.拨打110报警，让警察来解决", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("如果我们在上网时，在QQ、微信、邮箱中浏览到不良信息或不良言论时时，错误做法是（ ）
#A.不损害自己利益，不关心
#B.介绍给其他同学浏览和阅读
#C.阅读该信息并参与言论
#D.马上删除、关闭并告知家长或老师", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列不属于文明上网行为的是(  )。
#A.小颜在某网络游戏中盗窃多名游戏玩家的“宝物”卖给他人，获3000余元。
#B.某论坛连续发表对某公司进行的毫无根据的污辱诽谤的文章，给该公司造成了重大经济损失。
#C.肖某经常使用代理服务器登录色情网站。
#D.刘女士非常热爱摄影，经常把自己拍摄的风景照片发布在论坛上，因此结识了很多志同道合的影友。", 3,"ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下面关于即时通讯安全防范的说法，不正确的是（ ）
#A.智能手机具有人工智能，不需要设置开机密码
#B.微信好友都是熟悉的人，可以相信他们发的朋友圈信息
#C.QQ和微信加的好友越多越好
#D.通过设置QQ和微信的“防骚扰”功能可以有效提高安全级别", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("小明非常喜欢玩网络游戏，于是编写一个程序窃取其网友“游戏装备”，对这种行为，认识错误的是（ ）
#A.不道德的
#B.违法的
#C.允许的
#D.自由的", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("同学们在上网过程中，下列行为不恰当的是（ ）
#A.在个人微信朋友圈中发布他人的隐私信息
#B.在QQ群中组织成员谩骂、人肉他人
#C.在论坛中讨论破解网银账户密码的方法
#D.在网络上共享自己制作的旅游风光视频", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("现在信息安全越来越被人们所关注，下列说法不正确的是（ ）
#A.保持个人计算机的清洁，能有效防止计算机病毒的入侵
#B.在计算机和手机只要安装了杀毒软件，就不会感染计算机病毒
#C.手机系统是安全的，手机APP可以随意下载
#D.及时安装系统软件的补丁程序，可以有效防止病毒入侵", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下面关于网络聊天的做法，不正确的是（ ）
#A.利用QQ和同学交流学习心得和生活趣事
#B.接受网友的邀请，单独和网友见面
#C.直接接收网友通过QQ来传送的未知文件
#D.在QQ聊天的时候,", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下面网络行为中，不正确的是（ ）
#A.某同学为了吸引眼球，到论坛上随意发布虚假内容的文章
#B.从网络中下载作文，交给老师参加作文竞赛
#C.将自己邮箱中的垃圾邮件发给别人
#D.通过微信朋友圈或QQ群发布真实的求助信息", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("小明在电脑爱好者论坛上提出有关信息安全的观点，其中正确的是（ ）
#A.安装最新版QQ软件有助于防护密码被盗
#B.在官方网站上下载相关软件
#C.使用360杀毒软件不但免费而且能查杀所有的病毒
#D.在淘宝网上购物使用支付宝比直接汇款安全", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("“三网合一”的“三网”是指( ) 
#A.电信网
#B.有线电视网
#C.计算机网
#D.交换网", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("未经权利人许可,不得将其作品或录音制品上传到网上和在网上传播。这里的权利人包括
#A.版权所有人
#B.表演者
#C.录音制品制作者
#D.网站管理者", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列有关局域网的说法,正确的是( )
#A.局域网是一种通信网
#B.连入局域网的数据通信设备只包括计算机
#C.局域网覆盖有限的地理范围
#D.局域网具有高数据传输率", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("用户可设置的文件的属性有( ) 
#A.只写
#B.隐藏
#C.存档
#D.只读", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列属于网络服务提供者的是( ) 
#A.网络接入服务提供者
#B.网络空间提供者
#C.搜索引擎服务提供者
#D.传输通道服务提供者", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("多媒体计算机可以处理的信息类型有( ) 
#A.文字
#B.图形
#C.数字
#D.音频视频", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("乳业巨头甲公司为了打击竞争对手乙公司,雇佣公关公司在网络上大肆宣传虚假事实,称乙公司生产的牛奶中含有违禁添加剂,造成乙公司巨大损失。对此,以下观点正确的是( )
#A.该行为可能涉嫌犯罪
#B.该行为属于不正当竞争行为
#C.针对这一犯罪只处罚个人
#D.公关公司直接责任人员无需承担刑事责任", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("国家机关及其工作人员在对履行职责中知晓的公民个人电子信息,应当( )
#A.予以封存
#B.予以保密
#C.不得泄露、篡改、毁损
#D.可以提供给第三人", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络服务提供者收集和使用个人信息应当符合的条件有( ) 
#A.告知权利人
#B.明示收集、使用信息的目的、方式和范围
#C.经被收集者同意
#D.经监督管理机构许可或备案", 3, "AC");
INSERT INTO additiontitle(name, type, answer) VALUES("按照刑法学的分类,网络犯罪可以被分为纯正的计算机犯罪和不纯正的计算机犯罪。纯正的计算机犯罪指针对计算机信息系统本身的犯罪;不纯正的计算机犯罪是指将计算机信息系统作为实施传统犯罪的犯罪工具的行为。下列行为中,属于不纯正的计算机犯罪的有( )  
#A.盗卖他人的游戏“武器装备”,致他人损失巨大
#B.侵入高校网站大批量更改学历信息,从而为他人办理假学历获利
#C.在网上大肆散播邪教的教义,发展邪教组织
#D.传播木马软件,致使大量网站瘫痪", 3, "AC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列选项中,构成网络信息违法犯罪行为,公民和其他组织有权向有关主管部门举报、控告的是( ) 
#A.窃取公民个人的电子信息
#B.出售公民的个人电子信息
#C.为配合公安机关办案需要,披露犯罪嫌疑人的电子信息
#D.将公民个人电子信息提供给第三人", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("对于网络用户利用网络服务实施侵权行为的,以下表述正确的是( ) 
#A.被侵权人有权通知网络服务提供者采取删除、屏蔽、断开链接等必要措施
#B.网络服务提供者接到通知后应采取必要措施
#C.网络服务提供者接到通知后未及时采取必要措施的,应承担法律责任
#D.网络服务提供者只是提供平台服务,不承担法律责任", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("网络谣言有可能侵犯他人的( )
#A.知情权
#B.公平竞争权
#C.财产权
#D.人身自由权", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("以下对电子邮件的表述,正确的是( ) 
#A.通讯双方必须都在场
#B.邮件比人工邮件传送迅速、可靠且范围更广
#C.邮件可以同时发送给多个用户
#D.电子邮件中可以发送文字、图像、语音等信息", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("在电子商务条件下,卖方应当承担的义务有( ) 
#A.按照合同的规定提交标的物及单据
#B.对标的物的权利承担担保义务
#C.对标的物的质量承担担保义务
#D.对标的物验收的义务", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("威胁网络安全的主观因素有( )
#A.自然灾害
#B.意外事故
#C.计算机犯罪
#D.“黑客”行为", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("互联网接入服务提供者能够记录上网用户的信息有( ) 
#A.上网时间
#B.用户帐号
#C.用户密码
#D.互联网地址", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列有关即时通讯工具服务提供者的说法,正确的是( ) 
#A.即时通信工具服务提供者无需取得相关资质
#B.即时通信工具服务提供者应当遵循“后台实名、前台自愿”的原则
#C.即时通信工具服务提供者应当对可以发布或转载时政类新闻的公众账号加注标识
#D.即时通信工具服务使用者为从事公众信息服务活动开设公众账号,应当经即时通信工具服务提供者审核", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("第二届世界互联网大会于2015年12月16日在浙江乌镇开幕，习近平总书记出席大会开幕式并发表讲话，介绍我国互联网发展情况，并就推进全球互联网治理体系变革提出应坚持哪几项原则（  ）。
#A.尊重网络主权
#B.维护和平安全
#C.促进开放合作
#D.构建良好秩序", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些属于防范假冒网站的措施（）
#A.直接输入所要登录网站的网址，不通过其他链接进入
#B.登录网站后留意核对所登录的网址与官方公布的网址是否相符
#C.登录官方发布的相关网站辨识真伪
#D.安装防范ARP攻击的软件", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("关于网络舆情最新发展的表述，正确的有（）
#A.社会化媒体成为网络舆论的源头
#B.互动成为网络舆情最主要的特色
#C.互联网与手机结合，网络舆论更具杀伤力
#D.互联网和传统媒体相互借力，放大舆论", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("不要打开来历不明的网页、电子邮件链接或附件是因为（  ）。
#A.互联网上充斥着各种钓鱼网站、病毒、木马程序
#B.不明来历的网页、电子邮件链接、附件中，很可能隐藏着大量的病毒、木马
#C.可能含有的病毒、木马会自动进入电脑并隐藏在电脑中，会造成文件丢失损坏
#D.可能含有的病毒、木马会自动进入电脑并隐藏在电脑中，会导致系统瘫痪", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("按照中央网信办统一部署，2016年8月19日，河北省召开关键信息基础设施网络安全检查动员部署暨专题培训会，关键信息基础设施包括（  ）。
#A.网站类，如党政机关网站、企事业单位网站、新闻网站等
#B.平台类，如即时通信、网上购物、网上支付、搜索引擎、电子邮件、论坛、地图、音视频等网络服务平台
#C.生产业务类，如办公和业务系统、工业控制系统、大型数据中心、云计算平台、电视转播系统等
#D.设备类，如电信基础设施，机房、交换机", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("以下选项属于《文明上网自律公约》内容的是：（ ）
#A.自觉遵纪守法，倡导社会公德，促进绿色网络建设
#B.提倡自主创新，摒弃盗版剽窃，促进网络应用繁荣
#C.提倡诚实守信，摒弃弄虚作假，促进网络安全可信
#D.提倡人人受益，消除数字鸿沟，促进信息资源共享", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列有关局域网的说法，正确的是（ ）
#A.局域网是一种通信网
#B.连入局域网的数据通信设备只包括计算机
#C.局域网覆盖有限的地理范围
#D.局域网具有高数据传输率", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒能够（ ）
#A.破坏计算机功能或者毁坏数据
#B.影响计算机使用
#C.能够自我复制
#D.破坏显示屏", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机信息系统安全保护的目标是要保护计算机信息系统的（ ） 
#A.实体安全
#B.运行安全
#C.信息安全
#D.人员安全", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("从系统整体看，下述哪些问题属于系统安全漏洞（ ）
#A.产品缺少安全功能
#B.产品有Bugs
#C.管理上缺少足够的安全知识
#D.人为错误", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("单位和个人自行建立或使用其他信道进行国际联网的，公安机关可（ ）。
#A.责令停止联网
#B.处15000元以下罚款
#C.有违法所得的，没收违法所得
#D.给予警告处分", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("常用的保护计算机系统的方法有：（ ）
#A.禁用不必要的服务
#B.安装补丁程序
#C.安装安全防护产品
#D.及时备份数据", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("现在的智能设备能直接收集到身体相应信息，比如我们佩戴的手环收集个人健康数据。以下哪些行为可能造成个人信息泄露（  ）
#A.将手环外借他人
#B.接入陌生网络
#C.手环电量低
#D.分享跑步时的路径信息", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("现在网络购物越来越多，以下哪些措施可以防范网络购物的风险（  ）。
#A.核实网站资质及网站联系方式的真伪
#B.尽量到知名、权威的网上商城购物
#C.注意保护个人隐私
#D.不要轻信网上低价推销广", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列不属于侵犯网络隐私权的情形有（  ）
#A.用户在注册邮箱的时候，要求填写其个人联系方式和真实姓名
#B.根据相关法律，在网络游戏进行注册的时候需要填写个人身份证号码以验证用户是否为成年人
#C.张某想要开一家淘宝商店，淘宝要求商户注册的时候实名认证
#D.商家收集消费者的购物倾向，制定针对个别消费者的营销策略追求商业利益", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列属于网络服务提供者的是（  ）。
#A.网络接入服务提供者
#B.网络空间提供者
#C.搜索引擎服务提供者
#D.传输通道服务提供者", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("越来越多的人习惯于用手机里的支付宝、微信等付账，因为很方便，但这也对个人财产的安全产生了威胁。以下哪些选项可以有效保护我们的个人财产（ ）
#A.使用手机里的支付宝、微信付款输入密码时避免别人看到
#B.支付宝、微信支付密码不设置常用密码
#C.支付宝、微信不设置自动登录
#D.不在陌生网络中使用", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("关于电子邮件的使用，以下正确的是（ ）
#A.发送电子邮件时，一次发送操作只能发送给一个接收者。
#B.可以将任何文件作为邮件附件发送给收件人。
#C.既能发送新邮件、回复邮件，也能转发邮件。
#D.接收方必须开机，发送方才能发送邮件。", 3, "BC");
INSERT INTO additiontitle(name, type, answer) VALUES("在Internet使用的协议中，（ ）是最核心的两个协议。
#A.Internet协议IP
#B.传输控制协议TCP
#C.SMTP协议
#D.Arpanet协议", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("下面哪些属于应用层协议 ( )
#A.TCP
#B.FTP
#C.HTTP
#D.SNMP", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("电子商务的支付方式有 (  )  
#A.网络银行线上支付
#B.银行汇款
#C.信用卡转账
#D.第三方网上支付平台", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列各项中，属于网络银行的功能的有：(  ) 
#A.信息发布功能
#B.客户的咨询和投诉功能
#C.账户的查询
#D.申请和挂失", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("与传统保险行为相比，网络保险的不同表现在(  ) 
#A.交易虚拟化
#B.一对一
#C.电子化
#D.时效性", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("狭义的网络金融包括 (      )  
#A. 网上银行
#B.网上证券
#C.网上支付
#D.金融信息服务业", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("网络金融具有( )的特征。 
#A.高效性和经济性
#B.科技性与共享性
#C.信息化与虚拟化
#D.一体化", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("当前网络经济的特征包括(    ) 
#A.虚拟化、成本低
#B.竞争激烈，合作很难
#C.全天候、全球化
#D.强大的创新性", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机网络的资源共享功能包括（ ）
#A.安全共享
#B.硬件资源共享
#C.软件资源共享
#D.数据资源共享", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("有关电子商务的参与者，下列选项正确的是( )
#A.政府是市场经济活动的宏观调控者
#B.企业是是电子商务的主力军
#C.消费者是电子商务最终的服务对象
#D.电子商务的发展是政府、企业和消费者等各类主体协同努力的结果", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络侵权和传统侵权的区别有（ ）
#A.网络侵权中的证据比传统侵权具有不稳定性
#B.网络侵权的主体比传统侵权具有隐蔽性
#C.网络侵权造成的后果比传统侵权更易传播、扩散
#D.网络侵权比传统侵权的司法管辖更不好定位", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络大段抄袭与剽窃著作权人的作品（文字、图片、影音等），在网络上以自己的名义发表、传播。这种行为侵犯了著作权人的（ ）
#A.署名权
#B.信息网络传播权
#C.获得报酬权
#D.肖像权", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("网络服务提供者在业务活动中收集、使用公民个人电子信息，应当遵循的原则有（ ）
#A.合法原则
#B.正当原则
#C.必要原则
#D.公开原则", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列密码安全的描述，正确的是（ ）
#A.容易被他人记住的密码不安全
#B.密码越长就越安全
#C.密码要定期更换
#D.密码中用的字符种类越多越不容易被破解", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("抵御电子邮箱入侵措施中，恰当的是（）
#A.不用生日做密码
#B.不使用少于5位的密码
#C.不使用纯数字的密码
#D.自己做服务器", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("属于常见的危险密码是（ ）
#A.跟用户名相同的密码
#B.使用生日作为密码
#C.只有4位数的密码
#D.10位的综合型密码", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("属于计算机病毒防治的策略的是（）
#A.手头常备一张真正“干净”的引导盘
#B. 及时升级可靠的反病毒产品
#C. 新购置的计算机软件也要进行病毒检测
#D.整理磁盘碎片", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下面哪些功能不属于操作系统中的安全功能 ( )
#A.控制用户的作业排序和运行
#B.实现主机和外设的并行处理以及异常情况的处理
#C.保护系统程序和作业，禁止不合要求的对程序和数据的访问
#D.对计算机用户访问系统和资源的情况进行记录", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全，是指通过采取必要措施，防范对网络的攻击、侵入、干扰、破坏和非法使用以及意外事故，使网络处于稳定可靠运行的状态，以及保障网络数据的（ ）的能力。
#A.真实性
#B.完整性
#C.保密性
#D.可用性", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("国家保护公民、法人和其他组织依法使用网络的权利，（）。
#A.促进网络接入普及
#B.为社会提供安全、便利的网络服务
#C.提升网络服务水平
#D.保障网络信息依法有序自由流动", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("根据《网络安全法》的规定，国家采取措施，（）来源于中华人民共和国境内外的网络安全风险和威胁，保护关键信息基础设施免受攻击、侵入、干扰和破坏，依法惩治网络违法犯罪活动，维护网络空间安全和秩序。 
#A.攻击
#B.监测
#C.处置
#D.防御", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("根据《网络安全法》的规定，任何个人和组织（）。
#A.不得提供专门用于从事侵入网络、干扰网络正常功能等危害网络安全活动的程序
#B.明知他人从事危害网络安全的活动的，不得为其提供技术支持
#C.不得从事非法侵入他人网络、干扰他人网络正常功能等危害网络安全的活动
#D.明知他人从事危害网络安全的活动的，可以为其进行广告推广", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("根据《网络安全法》的规定，（ ）和其他有关机关依照本法和有关法律、行政法规的规定，在各自职责范围内负责网络安全保护和监督管理工作。 
#A.中国移动
#B.中国联通
#C.国务院电信主管部门
#D.公安部门", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络运营者应当制定网络安全事件应急预案，及时处置（ ）安全风险，在发生危害网络安全的事件时，立即启动应急预案，采取相应的补救措施，并按照规定向有关主管部门报告。
#A.网络攻击
#B.系统漏洞
#C.网络侵入
#D.计算机病毒", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("国家坚持网络安全与信息化发展并重，遵循（）的方针，推进网络基础设施建设和互联互通，鼓励网络技术创新和应用，支持培养网络安全人才，建立健全网络安全保障体系，提高网络安全保护能力。
#A.积极利用
#B.确保安全
#C.科学发展
#D.依法管理", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("国家对公共通信和信息服务、能源、交通、水利、金融、公共服务、电子政务等重要行业和领域，以及其他一旦遭到破坏、丧失功能或者数据泄露，可能严重危害（ ）
#A.公共利益
#B.网速
#C.国计民生
#D.国家安全", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("国家积极开展（）等方面的国际交流与合作，推动构建和平、安全、开放、合作的网络空间，建立多边、民主、透明的网络治理体系。
#A.标准制定
#B.网络空间治理
#C.打击网络违法犯罪
#D.网络技术研发", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络运营者开展经营和服务活动，必须（），承担社会责任。
#A.遵守法律、行政法规、尊重社会公德
#B.接受政府和社会的监督
#C.遵守商业道德、诚实信用
#D.履行网络安全保护义务", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("任何个人和组织有权对危害网络安全的行为向（）等部门举报。收到举报的部门应当及时依法作出处理，不属于本部门职责的，应当及时移送有权处理的部门。
#A.安监
#B.公安
#C.网信
#D.电信", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下对网络空间的看法，不正确的是（）
#A.网络空间是虚拟空间，不需要法律
#B.网络空间是一个无国界的空间，不受一国法律约束
#C.网络空间与现实空间分离，现实中的法律不适用于网络空间
#D.网络空间虽然与现实空间不同，但同样需要法律", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列哪些是《全国青少年网络文明公约》的内容（）
#A.要善于网上学习,不浏览不良信息
#B.要增强自护意识,不随意约会网友
#C.要有益身心健康,不沉溺虚拟时空
#D.要远离网络", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("以下表述不正确的是（ ）
#A.网民享受了网站的免费服务，所以网站当然可以收集网民的任何信息
#B.网民同意网站收集个人信息，所以网站可以随便使用这些信息了
#C.网站收集网民个人信息后，可以转让他人
#D.网站经网民同意，可以收集网民提供的个人信息，并用于特定／约定用途的服务", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列情形，构成侵权的是（ ）
#A.未经他人同意擅自在网络上公布他人隐私
#B.在网上浏览某人的博客
#C.伪造、篡改个人信息
#D.侵入他人电脑窃取资料", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("个人微信公众号须遵守“七条底线”，底线内容包括（ ）
#A.法律法规底线、社会主义制度底线
#B.国家利益底线、信息真实性底线
#C.社会公共秩序底线、道德风尚底线
#D.公民合法权益底线、时政新闻真实性底线", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("在使用电脑过程中，哪些是网络安全防范措施（ ）。
#A.安装防火墙和防病毒软件，并经常升级
#B.经常给系统打补丁，堵塞软件漏洞
#C.不上一些不太了解的网站，不打开QQ上传送过来的不明文件
#D.经常清理电脑中不常用软件和文件", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("微信用户下列言论属于合法的是（）。
#A.批评国家工作人员
#B.质疑国家政策
#C.歧视少数民族
#D.批评法院判决", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("习近平在中央网络安全和信息化领导小组第一次会议上旗帜鲜明的提出了______。
#A.没有网络安全就没有现代化
#B.没有信息化就没有国家安全
#C.没有网络安全就没有国家安全
#D.没有信息化就没有现代化", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("2016年4月19日，习主席在网络安全和信息化工作座谈会上的讲话提到核心技术从3个方面把握。以下哪些是习主席提到的核心技术。( )
#A.基础技术、通用技术
#B.非对称技术、“杀手锏”技术
#C.前沿技术、颠覆性技术
#D.云计算、大数据技术", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("下列哪些选项可以有效保护我们上传到云平台的数据安全？（ ）
#A.上传到云平台中的数据设置密码
#B.定期整理清除上传到云平台的数据
#C.在网吧等不确定网络连接安全性的地点使用云平台
#D.使用免费或者公共场合WIFI上传数据到云平台", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("2014年7月，国内安全团队研究了特斯拉 Model S型汽车，发现利用汽车软件里的某个漏洞，可以远程控制车辆，实现开锁、鸣笛、闪灯，可以在汽车行进的过程中远程开启天窗。这个事例告诉我们接入到网络中的设备都存在被黑客攻击的可能性，以下哪些措施可以有效避免接入网络的硬件设备免受网络攻击？（）
#A.硬件设备不接入到陌生的网络
#B.对自身网络设置密码验证
#C.硬件设备中安装安全防护软件
#D.及时清洁网络设备", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("在日常生活中，以下哪些选项容易造成我们的敏感信息被非法窃取？
#A.随意丢弃快递单或包裹
#B.在网上注册网站会员后详细填写真实姓名、电话、身份证号、住址等信息
#C.电脑不设置锁屏密码
#D.定期更新各类平台的密码，密码中涵盖数字、大小写字母和特殊符号", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些选项是关于浏览网页时存在的安全风险：（）
#A.网络钓鱼
#B.隐私跟踪
#C.数据劫持
#D.网页挂马", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网购已经在我们的生活中无处不在，下列哪些行为有诈骗嫌疑？（）
#A.拍下商品，付款成功后，告诉其在20天后才能到货
#B.买家拍货之后不付款要求卖家发货，卖家不发货就以投诉差评威胁新手卖家
#C.有自称为“淘宝客服”的人索要账户密码
#D.卖家推荐买家使用支付宝担保交易，保证交易中的安全性。", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("我们在日常生活中网上支付时，应该采取哪些安全防范措施？（）
#A.保护好自身信息、财产安全，不要相信任何套取账号、USBkey和密码的行为
#B.网购时到正规、知名的网上商店进行网上支付，交易时确认地址栏内网址是否正确
#C.从银行官方网站下载安装网上银行、手机银行、安全控件和客户端软件；开通短信口令时，务必确认接收短信手机号为本人手机号
#D.避免在公共场所或者他人计算机上登录和使用网上银行，退出网上银行时一定要将USBkey拔出", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("某网站的用户数据库泄露，影响数据总共数亿条，泄露信息包括用户名、MD5密码、密码提示问题/答案（hash）、注册IP、生日等。该网站邮箱绑定的其他账户也受到波及，如iPhone用户的Apple ID等。发生此类问题我们应该进行下列哪种措施，避免受到更大损失（）？
#A.立即登录该网站更改密码
#B.投诉该网站
#C.更改与该网站相关的一系列账号密码
#D.不再使用该网站的邮箱", 3, "AC");
INSERT INTO additiontitle(name, type, answer) VALUES("以下防范智能手机信息泄露的措施有哪几个( )
#A.禁用
#B.下载软件或游戏时，仔细审核该软件，防止将木马带到手机中
#C.经常为手机做数据同步备份
#D.勿见二维码就扫。", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些属于数据线连接到电脑上的安全风险？（  ）
#A.不法分子可能在电脑上看到手机当中的短信内容；
#B.木马或病毒可在手机与电脑中相互感染；
#C.不法分子可通过远控电脑来操作、读取手机敏感信息；
#D.损坏手机使用寿命。", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("请分析哪些是病毒、木马，在电子邮件的传播方式？（  ）
#A.邮件主题及内容伪造成各式各样（好友的回复邮件、管理员的提醒、热点事件等）
#B.病毒副本存在邮件附件中，伪装成各种格式的文件引诱用户点击执行，如jpg、doc  zip、rar等，但有些时候实际上是exe文件
#C.将木马代码通过邮件的正文发送过去
#D.将病毒源文件直接发送给用户。", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("为了防治垃圾邮件，常用的方法有：（       ）。
#A.避免随意泄露邮件地址。
#B.定期对邮件进行备份。
#C.借助反垃圾邮件的专门软件。
#D.使用邮件管理、过滤功能。", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("网页挂马指的是，不法分子把一个木马程序上传到一个网站里面，然后用木马生成器生成一个网页木马，再加代码使得木马在打开网页时运行！完整过程如下：上传木马--生成网页木马--修改代码使用能自动运行--加载到网站程序中。请分析一下受害者被网页挂马攻击的几个要素？（  ）
#A.用户访问了存在挂马链接的网页（主动或被动）；
#B.用户系统上存在漏洞、并且被攻击程序攻击成功；
#C.用户系统上的安全软件没有起作用；
#D.用户清理了电脑中的缓存网页文件", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("关于网络安全技术学习相关方式，以下说法正确的是？（  ）
#A.出于学习的角度，可以未经许可对某网站进行渗透测试
#B.可搭建虚拟仿真环境来学习一些入侵与防御的技术
#C.可以参加一些技术学习类比赛来锻炼自己的能力
#D.可以学习基础知识的同时，关注一些安全事件，分析问题原因", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些关于网络安全的认识是错误的？（  ）
#A.电脑病毒防治主要靠软件查杀
#B.文件删除后信息就不会恢复
#C.网络共享文件是安全的
#D.防病毒软件要定期升级", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("如何防范钓鱼网站？
#A.通过查询网站备案信息等方式核实网站资质的真伪
#B.安装安全防护软件
#C.警惕中奖、修改网银密码的通知邮件、短信，不轻意点击未经核实的陌生链接
#D.不在多人共用的电脑上进行金融业务操作，如网吧等。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("青少年安全使用网络的一些说法，哪些是正确的（  ）?
#A.不要随意下载“破解版”、“绿色版”等软件，下载软件从正规的官方网站下载
#B.养成不打开陌生链接的习惯
#C.尽量不使用聊天工具
#D.玩游戏不使用外挂", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("U盘病毒通过（  ），（  ），（  ）三个途径来实现对计算机及其系统和网络的攻击的。
#A.隐藏
#B.复制
#C.传播
#D.破解", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("web安全是一个系统问题,包括服务器安全、web应用服务器安全、web应用程序安全、数据传输安全和应用客户端安全。然而,网络的规模和复杂性使web安全问题比通常意义上的Internet安全问题更为复杂。目前的web安全主要分为以下几个方面？（  ）
#A.保护服务器及其数据的安全；
#B.保护服务器和用户之间传递的信息的安全；
#C.保护web应用客户端及其环境安全；
#D.保证有足够的空间和内存，来确保用户的正常使用。", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("拥有安全软件和安全的配置是安全网站必要的条件。web服务器负责提供内容,调用产生内容的应用程序应用服务器为应用程序提供多种服务,包括数据存储、目录服务、邮件、消息等。而网站的服务器配置中往往存在很多安全问题,攻击者可以使用扫描工具检测到这些问题并加以利用,导致后端系统的攻陷,包括数据库和企业内部网络。常见的安全问题有？（  ）
#A.服务器软件未做安全补丁，有缺省密码的缺省的账号；
#B.服务器软件漏洞和错误配置允许列出目录和目录遍历攻击；
#C.不必要的缺省、备份或例子文件，包括
#D.不正确的文件和目录权限，不必要的服务被运行，包括内容管理和远程系统管理。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("如何防范操作系统安全风险？（  ）
#A.给所有用户设置严格的口令
#B.使用默认账户设置
#C.及时安装最新的安全补丁
#D.删除多余的系统组件", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全攻击的主要表现方式有（   ）。
#A.中断
#B.截获
#C.篡改
#D.伪造", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("当短暂离开电脑时，为了确保个人信息安全，良好的使用习惯是对计算机进行锁屏，以下哪些是正确的计算机锁屏方法（  ）
#A.同时按住
#B.同时按住windows
#C.单击windows左下的【开始】按钮，单击【注销】按钮，单击【切换用户】或【锁定】按钮。
#D.同时按住Ctrl键、Alt键和Del键，再点击【锁定计算机】按钮。", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些关于网络安全的认识是错误的？（  ）
#A.电脑病毒的防治只能靠软件查杀；
#B.文件删除后信息就不会恢复；
#C.网络极度危险，应当远离
#D.防病毒软件要定期升级。", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("以下行为中，哪些存在网络安全风险？（   ）
#A.家用的无线路由器使用默认的用户名和密码
#B.在多个网站注册的帐号和密码都一样
#C.在网吧电脑上进行网银转账
#D.使用可以自动连接其它WIFI的手机APP软件", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("黑客常用的获取关键账户口令的方法有：（        ）。
#A.通过网络监听非法得到用户口令
#B.暴力破解
#C.社工撞库
#D.SSL协议数据包分析", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("在网络安全领域，社会工程学常被黑客用于
#A.踩点阶段的信息收集
#B.获得目标webshell
#C.组合密码的爆破
#D.定位目标真实信息", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些行为可能导致操作系统产生安全漏洞(  )
#A.使用破解版的编程工具
#B.不安全的编程习惯
#C.考虑不周的架构设计
#D.编程计算机未安装杀毒软件", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("针对暴力破解攻击，网站后台常用的安全防护措施有哪些？
#A.拒绝多次错误登录请求
#B.修改默认的后台用户名
#C.检测cookie
#D.过滤特殊字符串", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("网络钓鱼是指攻击者利用伪造的网站或欺骗性的电子邮件进行的网络诈骗活动。以下属于网络钓鱼常见攻击手段的是：
#A.伪造相似域名的网站
#B.显示虚假IP地址而非域名
#C.超链接欺骗
#D.弹出窗口欺骗", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("虚拟专用网络（Virtual Private Network，VPN）是在公用网络上建立专用网络的技术，整个VPN网络的任意两个节点之间的连接并没有传统专网所需的端到端的物理链路，而是架构在公用网络服务商所提供的网络平台。VPN的特点有：
#A.安全性高
#B.服务质量保证
#C.成本高
#D.可扩展性", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("现行重要的信息安全法律法规包括以下：
#A.《计算机信息系统安全保护等级划分准则》
#B.《中华人民共和国电子签名法》
#C.《商用密码管理条例》
#D.《中华人民共和国保守国家秘密法》", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("拒绝服务攻击是黑客常用的攻击手段之一，以下属于拒绝服务攻击防范措施的是：
#A.安装防火墙，禁止访问不该访问的服务端口，过滤不正常的畸形数据包
#B.安装先进杀毒软件，抵御攻击行为
#C.安装入侵检测系统，检测拒绝服务攻击行为
#D.安装安全评估系统，先于入侵者进行模拟攻击，以便及早发现问题并解决", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("计算机病毒（Computer Virus，CV）是编制者在计算机程序中插入的，破坏计算机系统功能或者数据的代码，能影响计算机系统的使用，并且能够自我复制的一组指令或程序代码，计算机病毒对操作系统的危害主要表现在：
#A.破坏操作系统的处理器管理功能
#B.破坏操作系统的文件管理功能
#C.破坏操作系统的存储管理功能
#D.直接破坏计算机系统的硬件资源", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("访问控制矩阵（Access Control Matrix）是最初实现访问控制机制的概念模型，以二维矩阵规定主体和客体的访问权限。那么明确访问权限是相当重要的工作，在Windows系统对文件的访问权限一般包括：
#A.修改
#B.执行
#C.读取
#D.写入", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("1994年以来,我国颁布了一系列互联网管理法律法规,其中包括(  )。
#A.《全国人民代表大会常务委员会关于维护互联网安全的决定》
#B.《互联网新闻信息服务管理规定》
#C.《互联网信息服务管理办法》
#D.《中华人民共和国电信条例》", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下选项属于《文明上网自律公约》内容的是(       )。
#A.自觉遵纪守法,倡导社会公德,促进绿色网络建设;
#B.提倡自主创新,摒弃盗版剽窃,促进网络应用繁荣;
#C.提倡诚实守信,摒弃弄虚作假,促进网络安全可信;
#D.提倡人人受益,消除数字鸿沟,促进信息资源共享。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("中国互联网协会先后制定并发布了(      )等自律规范。
#A.《中国互联网行业自律公约》
#B.《文明上网自律公约》
#C.《中国网民自律公约》
#D.《博客服务自律公约》", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("为加强公众对互联网服务的监督,2004年以来,我国先后成立了(       )等公众举报受理机构。
#A.互联网违法和不良信息举报中心
#B.网络违法犯罪举报网站
#C.12321网络不良与垃圾信息举报受理中心
#D.12390扫黄打非新闻出版版权联合举报中心", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("《侵权责任法》第三十六条第二款规定,网络用户利用网络服务实施侵权行为的,被侵权人有权通知网络提供者采取的必要措施有(     )。
#A.删除
#B.屏蔽
#C.关闭网站
#D.断开链接", 3, "BD");
INSERT INTO additiontitle(name, type, answer) VALUES("以下属于网上低俗内容的是(     )。
#A.恶意传播侵害他人隐私的内容;
#B.带有侵犯个人隐私性质的走光、偷拍、露点等内容;
#C.宣扬暴力、恶意谩骂、侮辱他人等的内容;
#D.推介淫秽色情网站和网上低俗信息的链接、图片、文字等内容。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("为了维护社会主义市场经济秩序和社会管理秩序,对下列(  )行为,构成犯罪的,依照刑法有关规定追究刑事责任。
#A.利用互联网销售伪劣产品或者对商品、服务作虚假宣传;
#B.利用互联网损害他人商业信誉和商品声誉;
#C.利用互联网侵犯他人知识产权;
#D.利用互联网编造并传播影响证券、期货交易或者其他扰乱金融秩序的虚假信息。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("下列哪些行为符合文明上网的基本礼仪?(      )
#A.确保用语的规范和文明,不故意挑衅和使用脏话;
#B.尊重他人隐私,未经别人同意,不翻阅别人的电子邮件或聊天记录;
#C.学会包容,对不同观点不冷嘲热讽;
#D.以人身攻击式的语言参与网上争辩。", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("以下哪些属于不文明的上网行为?(   )
#A.举报黄色网站;
#B.聊天时脏话连篇;
#C.发布低俗的图片;
#D.故意传播病毒文件。", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络游戏经营单位应当在(    )等显著位置标示《网络文化经营许可证》等信息。
#A.企业网站
#B.用户服务中心
#C.产品客户端
#D.产品操作界面", 3, "AD");
INSERT INTO additiontitle(name, type, answer) VALUES("网络实名制有哪些益处?(  )
#A.可以防止匿名散布谣言,减少人身攻击;
#B.对网络上的言行进行自我约束;
#C.保护青少年免受网络不良因素影响;
#D.有效遏制网络犯罪。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("帮助青少年戒除“网瘾”需要(    )。
#A.提升青少年自身的自制力;
#B.家长切实负起教育责任;
#C.信息提供者需建设青少年喜闻乐看、健康向上的网络内容;
#D.学校、家庭、网络信息提供者、青少年自身和全社会共同努力。", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("未婚的张某旅游时抱着当地一小女孩拍照,并上传到博客。后来照片被某杂志用作封面,标题为“母女情深”,张某深受困扰。下列哪些说法是正确的?(    )
#A.杂志社侵害了张某的肖像权
#B.杂志社侵害了张某的名誉权
#C.杂志社侵害了张某的隐私权
#D.张某有权向杂志社要求精神损害赔偿", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("陌生号码来电，当你怀疑时，对方严肃得说：“我的声音你都听不出来啊”。你感觉他的声音像老师，对方随即承认。第二天，该号码再次来电，说要给领导送红包，让你帮忙转账6000元，这时，你的正确做法是 （）  。
#A.What？老师让我先垫6000元？！哪有这样的老师，肯定不会有的。
#B.我这小学渣，期末全靠老师给过呢，现在能帮老师的忙那真是太好了，赶紧去转账。
#C.我一说就承认了，那好吧，真好有几道高数题不会，现在请教一下，顺便验证他的身份。
#D.感觉不像老师的风格啊，赶紧按原来存的号码打过去确认一下", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("有人上门做批发销售，以低价让你收购大量的产品，先付款，后发货，这种推销模式往往会出现什么情况？ （ ） 
#A.钱给了，没有收到货物
#B.收到货了，但质量和试用的产品质量差距太大
#C.只收到一半的货物
#D.联系人失踪", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("接到银行电话称你涉嫌洗钱，电话随即转到公安机关和检察院，并表示要证明你的清白，需将你的所有资金转入“安全账户”接受调查。这一事件中，有哪些破绽可以发现这是诈骗电话？  ( ) 
#A.警方调查案件不可能通过电话进行
#B.公安机关和检察机关是两个不同的部门，在调查案件时不会直接通过电话转接
#C.不管公安机关还是检察机关，都不存在所谓的“安全账户”
#D.信用卡欠款是银行客服通知的，他们没有转接到公安机关电话这项服务", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("你接到自称是检察院的电话，说你涉嫌贩毒、洗钱等，这时你的想法正确的有 ( )    。
#A.前一分钟我还吃着火锅唱着歌，high到不行，就因为你的一个电话我就涉嫌违法犯罪了？忽悠，接着忽悠
#B.我要是涉嫌贩毒、洗钱，你会打电话告诉我？你早就蹑手蹑脚踹开门把我按在地上了
#C.完蛋了，这下碰到事了，怎么办，赶紧问问检察官我该怎嘛办
#D.坏事了，赶紧去自首吧", 3, "AB");
INSERT INTO additiontitle(name, type, answer) VALUES("李某接到短信，称其参与《爸爸去哪儿》栏目活动中了大奖，缴纳税金后即可领奖，正确的做法是 ( )  。
#A.与对方联系，并按提示汇入款项，等通知去领奖
#B.查询短信电话，确认中奖再付款
#C.对该短信置之不理，同时提醒同伴防范
#D.向公安机关反映", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("杨某通过QQ与一女子相恋被骗8000元，报案应准备哪些材料？( )  
#A.对方与自己的QQ号码
#B.对方与自己的银行卡号
#C.对方的联系电话
#D.与对方的QQ聊天记录，通话、短信记录", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("王某收到陌生人电话，称有一款理财产品回报率高，便去银行汇款，银行工作人员怕其上当阻止，王某应该怎么办？ ( )   
#A.投诉该工作人员
#B.换一家银行汇入
#C.听取银行工作人员建议，谨慎考虑
#D.与公安机关联系，确认是否有诈骗嫌疑", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("小可同学在QQ上收到导师张某发来的信息，要求她将一笔款项转到**银行账户上，小可的正确做法是   ( )      。
#A.当面或打电话向张老师核实
#B.按照导师的要求立即把钱转过去，以免耽误学习
#C.现在QQ盗号诈骗案件很多，应当真核实对方身份
#D.不轻信，不能把钱款轻易汇入陌生账户", 3, "ACD");
INSERT INTO additiontitle(name, type, answer) VALUES("您或您的朋友遭受损失后的反应是( )         。
#A.自认倒霉，花钱买教训
#B.立即报告公安部门寻求帮助
#C.利用自身的教训，向亲友宣传揭露这种诈骗行为
#D.在网络上公开，以免他人上当受骗", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("小李同学接到诈骗分子打来的电话，对方编造说小李有一个未接收的邮件里藏有毒品、身份信息泄露被他人开设银行卡用于洗钱的理由迷惑小李，让小李把钱款转入对方提供的“安全账户”。发现被骗后，小李该如何处置？ ( )      
#A.立即拨打110报警
#B.保存好受骗时的通讯、短信记录
#C.立即通过网上银行登录诈骗分子使用的银行卡，通过输错密码将该卡暂时冻结
#D.自认倒霉，放弃报警", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("某天你接到一个电话，对方自称是**公安局的警官，并直接报出你的名字和身份证号。警官称你的银行卡涉嫌洗钱犯罪，正在被警方通缉，如果要洗清嫌疑，需要把卡内的钱转到一个指定账户，核实排除嫌疑后，再把钱打回原账户，你应该怎么做？( )     
#A.不相信，因为公安机关办案有严格程序，绝对不会在电话里办案
#B.对方知道我的名字和身份证号，应该是真的
#C.按对方要求到银行柜员机去转账，尽快洗清自己的嫌疑
#D.挂掉电话并拨打110报警", 3, "AD");
INSERT INTO additiontitle(name, type, answer) VALUES("群里出现不明来路的文件，但文件名称具有吸引性，你应该  ( )       。
#A.打开
#B.转发
#C.不打开
#D.举报", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("某日，你正要去银行办理汇款业务时，收到一条手机短信“请把钱直接汇到****银行账号就可以了户名***”，正确的做法是 
#A.对方更改了收款的账号，应该直接把钱汇过去
#B.这是诈骗短信，骗子群发短信内容企图误导准备转账汇款的人将资金转入骗子的账号
#C.不予理睬
#D.向你准备汇款的收款人进行核实", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("“恭喜您获得**公司十周年庆典抽奖活动二等奖，奖品为价值16万元轿车一辆，公司电话****”。假设你接到上述手机短信，不应该采取的做法是 （）  。
#A.拨打该公司电话联系兑奖
#B.电话接通后工作人员说需要缴纳手续费、保证金和税费，反正奖品价值16万，交完这些费也还是赚的，快把钱汇过去。
#C.把短信发给其他朋友
#D.忽略此信息或者删除", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("近期，冒充公安局、检察院、法院等工作人员，以被害人身份信息泄露，被人利用涉嫌贩毒、走私、洗钱，或者信用卡透支消费等违法犯罪，需要将银行卡内现金转入“安全账户”的电信诈骗案件多发。说法正确的是  ( )       。
#A.所有司法机关绝对不会电话办案
#B.所有司法机关绝对不会设立“安全账户”
#C.所有司法机关绝对不会打电话要求群众转账
#D.应按照对方要求到柜员机把钱存入安全账户保障资金安全", 3, "ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("网络安全问题带来哪些损失？ ( )    
#A.文件资料丢失
#B.个人信息泄密
#C.网银账户被盗
#D.现金的损失", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("你收到一条尾号是“95588”的陌生号码发来的短信，说你的电子银行密码器已过期，需登录提示网站进行操作，下列做法正确的是 ( )       。
#A.点击短信里的网站链接，按照提示在手机上操作“升级”
#B.置之不理、删除短信
#C.报警或向银行部门官方电话咨询求证，发现诈骗网站，向国家网络不良与垃圾信息举报受理中心（www、12321、cn）举报
#D.向家人或朋友咨询短信真伪", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("上个月，在家中看电视的薛大爷，突然接到一个电话，一接通，对方就喊道：“爸，我在外吃饭捡到了１０万元，今天已经寄过去你您了，但是被我的工友看到，他要求瓜分３万元，不给就要叫人打我，你能不能给我汇３万元，爸，你一定要救我。”
#A.不予理会
#B.试试给儿子原来号码打个电话
#C.故意用一个陌生人的名字假扮亲戚来试探
#D.汇款时核对对方账户名字是否是儿子的名，如果不是应立即停止汇款", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("王某按照某短信提示网银升级，发现卡内6万元被转走，她该怎么办？（）
#A.打电话给网站负责人争吵理论、求其还钱
#B.立刻报警，并将自己卡号、对方卡号、交易流水提供给公安
#C.拨打银行客服，将对方卡密码输错3次，锁定对方银行卡
#D.与公安和银行部门联系，第一时间冻结对方卡号", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("你在网购过程中，如接到电话或短信称“您网购的物品因系统升级导致订单失效，需要联系淘宝网客服办理激活或解冻，电话****，网址****。”不正确的做法是  （）     。
#A.登录官方购物网站查询订单详情
#B.拨打对方提供的“客服号码”进行咨询
#C.按照客服要求前往银行ATM机办理“激活”或“解冻”业务
#D.登录对方提供的网址链接查验订单", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("某日，小张QQ聊天时，同学小刘发来视屏通话请求，两人聊了会天后，小刘称近期手头紧想借2000元，身上没有银行卡，让其把钱转到朋友账号上，账号***，因两人关系不错，小张赶紧把钱转到指定账户后，小张发现小刘QQ号被盗，对方是骗子，自己受骗了。对于此种“冒充QQ好友”的诈骗手段，以下识别方法正确的是  （）      。     
#A.QQ视频可以复制，与QQ好友视频聊天中涉及借款、汇钱问题时，如果视频内容是重复的画面，很可能就是诈骗
#B.让对方做个表情变化或动作以求证
#C.聊一些无网聊记录的私密话题以核实对方身份
#D.直接打电话联系对方求证", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("你在银行ATM机上取钱时发现出钞口堵塞了，上面贴有一张告示，称“柜员机有问题，请联系维修人员，电话号码****”，正确的做法是 （）        。     
#A.拨打110报警，现场等警察处理
#B.拨打银行官方电话求助
#C.拨打ATM机旁张贴的维修人员的手机电话
#D.提醒其他亲朋好友注意", 3, "ABD");
INSERT INTO additiontitle(name, type, answer) VALUES("警方根据多年打击防范电信诈骗的工作经验，总结提炼了“三个凡是”防诈骗口诀。“三个凡是”的内容是 （）        。    
#A.凡是自称行政、司法部门来电要求转账、汇款的都是诈骗
#B.凡是未经认证的网站发布购物、购票信息的都是诈骗
#C.凡是通过电话、网络等方式要求转账、汇款至陌生人账户的都是诈骗
#D.凡是陌生人的来电都是诈骗", 3,"ABC");
INSERT INTO additiontitle(name, type, answer) VALUES("发现自己被骗子蛊惑而进行银行转账操作后，首先要做的是 （）     
#A.吸取教训，自认倒霉
#B.和骗子联系，不惜一切手段直至找到他为止
#C.第一时间联系银行、支付机构，采取相应应急措施
#D.向当地警方报警", 3, "CD");
INSERT INTO additiontitle(name, type, answer) VALUES("某同学接到信息，对方能正确报出他的姓名、身份证号码以及银行卡号等信息，告知他银行卡密码出现漏洞，请重新设置密码，这时正确的做法是 （）    。
#A.立即重设密码
#B.向银行确认
#C.不予理会
#D.报警", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("你的银行账户信息哪些不能向他人透露？  （）    
#A.信用卡背面三位数的验证码（cvv，又称“后三码”）
#B.银行卡、第三方支付工具绑定、预留手机能收到的各类验证码
#C.银行卡取款密码
#D.银行卡网银登陆密码", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("某位学生搭乘飞机回学校，突然收到一条短信，提示飞机因为某些原因无法正常起飞，需要退票、退款，请你及时与短信上的电话联系。这种现象你认为这是。（）
#A.航空公司主动服务。
#B.骗子设置的诱饵。
#C.这是人家好心，应该相信。
#D.不管是不是真的，还是以航空公司的咨询来核实。", 3, "BD");
INSERT INTO additiontitle(name, type, answer) VALUES("某位同学通过电商平台购买了物品。下单成功后突然收到短信，表示购买没有成功需要退款，要求提供退款的账号和密码。碰到这样的情况应该（）
#A.接到这样的信息，应该按照对方的要求做。
#B.直接打电话询问卖家，或者在网站询问。
#C.应该是真的，赶紧操作。
#D.好像有疑惑，还是询问其他人看看。", 3, "BD");
INSERT INTO additiontitle(name, type, answer) VALUES("一位学生收到老师短信，“××同学你这次考试不理想，问题不大，我来想想办法，帮你解决。”接着老师来了电话，“今天来了个人，要应酬，你借点钱给我。”第三个电话，间隔两分钟，“你不要来了，你来不方便，我马上把账号给你，你把钱打到账号里面。”你遇到这种情况怎么处置？（）
#A.相信老师，赶快筹集资金。
#B.老师不会做这样的事，是骗子。
#C.老师为什么考完不久就知道我的成绩，按照相关规定他不会这样通报成绩，应该是假的。
#D.直接与老师取得联系，找他商谈。询问相关内容。", 3, "BCD");
INSERT INTO additiontitle(name, type, answer) VALUES("某校一个女生，军训完毕后，妈妈收到女儿的QQ信息，“我在学校被选中国外交流生，交2万元保证金，请妈妈速把2万元发给学校招生办的相关账号。”请问这种情况你怎么处理？（）
#A.按QQ相求将钱发送到账号。
#B.赶快与女儿通话，核实情况，视情况而定。
#C.发短信询问，确认后再做打算。
#D.女儿已经把实际情况告诉妈妈，立即汇款。", 3, "BC");
INSERT INTO additiontitle(name, type, answer) VALUES("居民张师傅早上接到一个电话，对方自称是中纪委宁波办事处王主任，称其涉嫌帮官洗钱，随后电话被转接到“北京市公安局”。对方要求其涉嫌洗钱的１０万元钱存入对方提供的“安全账户”洗刷清白。信以为真的张师傅一一照做。
#A.政府机关调查案件不可能通过电话进行
#B.公安机关和检察机关是两个不同的部门，在调查案件时不会直接通过电话转接
#C.不管是公安机关还是检察机关办案，都不会要求被调查者将资金转入任何账户
#D.明明是宁波办事处，为何让给你转接北京公安局的电话", 3, "ABCD");
INSERT INTO additiontitle(name, type, answer) VALUES("想找兼职的小刘，在ＱＱ漂流瓶里面看到有一则招聘网络兼职人员的信息，并主动和对方联系，表明工作意向后，对方立即发来了工作流程。她了解到，这份在淘宝网上给商家“刷信誉”的工作，非常轻闲，无需押金，更不用坐班，而且对方承诺，小刘每刷一笔商品，至少有１５元钱的收入。还承诺，每天至少可赚百元以上。小刘动了心，立刻刷一笔５００元的订单，结果可想而知。
#A.主动忽略
#B.这种赚钱方式真轻松，赶快去应聘
#C.向招聘者提出疑问，万一拍下货品后卖家不退钱怎么办
#D.向周边的朋友咨询，这种方式赚钱方法靠谱吗", 3, "AD");
INSERT INTO additiontitle(name, type, answer) VALUES("海曙区的赵女士接到一男子打来的电话。一番问候后，对方马上就问：“我的声音都听不出吗？”赵女士觉得对方的声音很像自己大学时的一个同学，于是就问：“你是某某人吧？”对方连连答应，还说他换号码了，称其父亲在医院做开颅手术，想让赵女士借１万元救急。赵女士一想都是老同学，不好拒绝，便答应了。
#A.直接挂断
#B.听声音有点像我的朋友某某某，不能让他听出来我忘了他的声音
#C.听声音有点像我的朋友某某某，挂断电话，打电话给某某某问个明白
#D.“实在是对不起，我耳拙的很，还不知道你是谁，如果你实在不愿意说你是谁，我只能挂电话了”", 3, "ACD");


#案例分析题 type=4
INSERT INTO additiontitle(name, type, answer) VALUES("考生吴某参加高等数学A（一）期末考试，考试开始后20分钟才到达考场，慌乱之中该生直接坐在考场后排参考，考试过程中未向监考老师请示2次上厕所，在考试结束监考老师发出停止答题指令后，仍继续作答，并将考卷和草稿纸带回寝室。请根据《国家教育考试违规处理办法》、《韩山师范学院学生考试规则》分析吴某哪些行为应当认定为考试违纪？",4,"答：（1）考试开始15分钟后不准进入考场，该生考试开始后20分钟才到达考场”。
    （2）考生应按规定的座位参加考试，该生直接坐在考场后排参考。
    （3）考生在考试过程中未经考试工作人员同意不得擅自离开考场，该生未向监考老师请示2次上厕所 。
    （4）考试结束信号应立即停止作答，该生在老师发出停止答题指令后仍继续作答。
    （5）考生不得将试卷、草稿纸等考试用纸带出考场吗，该生将考卷和草稿纸带回寝室。
");
INSERT INTO additiontitle(name, type, answer) VALUES("毕业生张某平时学习懒散拖沓，未能按照学校规定的进度完成毕业论文的写作，为了能按时毕业，他找到成绩优异的同学李某帮助代写了一篇论文，后在论文抽检过程中被发现。根据《学位论文作假行为处理办法》和《韩山师范学院本科毕业论文（设计）作假行为处理办法》分析张某和李某将分别面临怎样的处分？",4,"答：（1）本科学生毕业论文（设计）经查实确认为购买、由他人代写（做）、剽窃或者伪造数据等作假情形的，学校取消其学士学位申请资格，并视情节给予留校察看、开除学籍处分。张某毕业论文由他人代写，其学士学位申请资格将被取消，并面临留校察看或开除学籍处分。
   （2）为他人联系代写（做）、出售毕业论文（设计）或者组织毕业论文（设计）买卖、代写（做）的人员，属于在校本科学生的，学校视情节给予留校察看、开除学籍处分。李某为他人代写论文，面临留校察看或开除学籍处分。
");
INSERT INTO additiontitle(name, type, answer) VALUES("王某为非外语专业学生，在校期间所有教学环节（含全校性选修课）加权平均裸分（不含各类政策性加分）成绩专业排名在年级第60名（年级共200人），在CSCD期刊发表论文1篇，曾获校级优秀学生、优秀学生干部等荣誉，参加全国“挑战杯”大赛获得二等奖，参加全国大学生英语竞赛获得一等奖。请根据《韩山师范学院推荐优秀应届本科毕业生免试攻读硕士学位研究生管理办法》分析该生是否符合推荐免试条件，并说明为什么？",4,"答：该生符合推荐条件：虽然该生 成绩专业排名在年级第60名（年级共200人），没有达到成绩专业排名前20%，但根据规定：
    （1）“SCD期刊发表论文1篇” 成绩排名可放宽至前50%。
    （2）“参加全国大学生英语竞赛获得一等奖” 大学生英语竞赛国家级一等奖者专业年级成绩排名可放宽至前50%。
    （3）“参加全国“挑战杯”大赛获得二等奖” 获国家级二等奖前三名者专业年级成绩排名可放宽至前50%。
");
INSERT INTO additiontitle(name, type, answer) VALUES("学生杨某和李某同住一寝室，李某则酷爱网游，经常开着外音在寝室玩游戏到深夜，还饲养了一条小狗。期末考试临近，杨某为在寝室专心复习功课，想李某提出了交涉。李某对此置若罔闻，仍然我行我素。请根据《韩山师范学院学生违纪处分条例》分析李某有哪些违纪行为，应当给予怎样的处分？",4,"答：（1）“经常开着外音在寝室玩游戏到深夜” 在规定的学习和休息时间内，进行各种有碍他人学习、休息活动不听劝阻的，给予警告、严重警告或者记过处分。（2）“饲养了一条小狗” 在教室、寝室、图书馆等场所饲养和携带宠物的，给予记过或者留校察看处分。
");
INSERT INTO additiontitle(name, type, answer) VALUES("十一国庆假期临近，学生赵某决定赴张家界游玩，该生9月30日跟同寝室同学说了一声，就从学校出发，直到10月9日才返回学校。请根据《韩山师范学院学生请假规定》分析该生哪些违规行为，按规定他应该怎么做？",4,"答：根据《韩山师范学院学生请假规定》：寒假、暑假和法定节假日离校，学生应如实向班级负责人、班导师或研究生导师、辅导员报告明确去向，并按学校规定时间离校和返校，不得提前离校或推迟返校。本案例中，赵某违规行为有：（1）9月30日提前离校；（2）10月9日推迟返校；（3）未向班级负责人、班导师或研究生导师、辅导员报告明确去向。
");
INSERT INTO additiontitle(name, type, answer) VALUES("大学生林某在入校时缴纳了城镇居民医疗保险费，在寒假期间，因突发急性胃炎，在家庭居住地（户口所在地）住院就医，个人支付医疗费用3000多元。请问根据《韩山师范学院大学生参加城镇居民基本医疗保险办法（试行）》的规定，林某能否回校后通过医保报销相应费用？如果不行简要阐明原因，如果可以请说明如何办理报销手续？",4,"答：可以报销。林某寒暑假期间在居住地（户口所在地）住院，满足异地住院条件。大学生在寒暑假期间，因疾病在户口所在地定点医疗机构住院就医，发生的医疗费用先由个人垫付，回校后填报《大学生假期、实习住院申报表》（加盖学院学工办/研工办公章），将所有住院相关材料（身份证复印件、本人在长沙办理的仅限“长沙银行”（为银行名称）的银行卡/存折复印件、原始发票、医疗费用汇总清单（非一日清单）、诊断证明书及出院记录、就诊医院等级证明）交学校医保办公室，由医保办公室统一报送长沙市医疗保险经办机构，按规定办理审核报销手续。
");
INSERT INTO additiontitle(name, type, answer) VALUES("学生孙某通过老乡、朋友参与网络信贷，用于购物等消费，利滚利之后需还金额越来越多，累计金额达10余万余元，背上沉重的心理压力，严重影响了学业，面临退学的危险。结合此案例分析不良网络借贷具有哪些危害性以及如何防范？",4,"答: （1）不良网络借贷危害性：一是高利贷、诱导贷款、提高授信额度易导致学生陷入“连环贷”陷阱；二是部分校园借贷平台利用少数学生金融知识匮乏，钻金融监管空子，诱导学生过度消费；三是校园不良网贷平台存在信息盗用风险，被冒用身份者可能会面对信用记录被抹黑及追债等问题；四是校园网贷平台“校园代理，层层分包提成”等发展模式破坏正常校园秩序，暴力追债现象威胁学生人身安全。
   （2）充分认识网络不良借贷存在的隐患和风险，增强金融风险防范意识；要树立理性科学的消费观，养成艰苦朴素、勤俭节约的优秀品质；要积极学习金融和网络安全知识，远离不良网贷行为。
");
INSERT INTO additiontitle(name, type, answer) VALUES("学生吴某在赶集网上看到家教信息，在与发布信息的家长取得联系后，对方称请吴某去一家高档饭店吃饭，边吃边聊家教问题。涉世未深的吴某没有多想，中午赴约。对方点了一桌酒菜之后，中途借口去卫生间不辞而别，临走还捎了几条名贵香烟，留下一直等待的吴某和“天价”未付的账单。结合此案例，假设你是吴某遇到这种情况该如何处置，并谈谈大学生如何提高防骗能力。",4,"答：如何处置：（1）平静心情，及时拨打110报案；（2）提供线索，配合调查；（3）勇于向有关部门投诉，或者寻求法律援助。
    如何防骗：（1）提高防范意识；（2）不轻信他人花言巧语；（3）上当受骗后及时报案、大胆揭发。
");
INSERT INTO additiontitle(name, type, answer) VALUES("由于求职屡屡受挫，毕业班学生张某感到沉重的就业压力，而且由于张某家在农村，经济条件较差，靠国家助学贷款完成学业，因此该生急于寻找理想的工作，在即将毕业前被其高中同学以介绍高薪工作为名拉入传销组织，骗至某地一传销窝点洗脑，在被传销组织灌输一夜暴富的思想后，开始深陷其中不可自拔。结合该案例，谈一谈你对非法传销的认识，以及如何避开传销陷阱？",4,"答：对非法传销认识：（1）传销是一种非法牟取利益，扰乱经济秩序，影响社会稳定的行为。（2）传销的表现形式包括“拉人头”，“强调高报酬及坐享其成”。
    如何避开传销陷阱：（1）学会辨别传销和直销；（2）不做一夜暴富、坐享其成的“美梦”。 （3）亲兄弟，明算账。生意是生意，情谊是情谊。对突然冒出来的“亲情”多分戒备心，真是“亲人”就不会拖延、忽悠，该签合同一定及时签。（4）审查资质。接受一家公司的推销，首先要了解该公司的资质，仔细核实招聘公司的真实性。
");
INSERT INTO additiontitle(name, type, answer) VALUES("廖某进入大学后，由于缺乏自制力，他渐渐迷恋上了网络，迷恋上了CS、传奇等网络游戏，陶醉在虚拟世界中，他也从刚开始的偶尔迟到旷课发展到夜不归宿，整日整夜地泡在网吧里，电脑屏幕中那些虚拟的打打杀杀的画面已然成为他生活的全部意义……在大一上学期的期末考试中，他的功课全部亮起了红灯，六门功课全不及格，但他依然无动于衷，继续日以继夜地泡在网吧中……，直到快要被学校开除的刹那间才“悬崖勒马”。结合本案例，谈谈大学生该如何防范网络成瘾？",4,"答：一是充实个人大学生活，尽量少让自己上网。比如去图书馆看看自己喜欢的书，去体育馆多锻炼锻炼，上课不带手机等等，防范依赖网络来消遣时间。二是多与他人参加良好的社会活动，多与人交际，形成自己的交际网。三是明确自己的学习目标，在实践中找到自己的特长并有规划的进行培养。四是在网络上发挥自己的创造性和主体性，学习掌握相关网络道德规范及法律法规，深刻认识网瘾的危害性，积极传递网络的正能量。
");
#论述题 type=5
INSERT INTO additiontitle(name, type, answer) VALUES("请结合以下三段材料，就如何树立良好的当代大学生形象谈谈你的看法。
材料一：《韩山师范学院学生违纪处分条例》（校长令第12号）第二十七条规定，对从事或者参与有损大学生形象、有损社会公德活动的，视情节轻重给予相应处分，构成违法或犯罪的，承担相应行政责任或刑事责任。特别对在学生宿舍留宿异性和在异性宿舍留宿的、多名男女混居的，制作和传播淫秽或者非法文章、书刊、图片、音响、网站的，违反计划生育政策的，与有配偶的人同居、通奸或者有配偶与人同居、通奸的，调戏、侮辱或者以其他方式严重骚扰他人的，参与三陪、卖淫、嫖娼的，吸食、注射毒品的都明确了具体的处分种类。
材料二：学校的大集体里一直在不断涌现学习、科研、公益、社会实践等方面的典型，如数学天才刘路、韩山师范学院十大杰出学子石坚以及各类优秀标兵等，他们在同学当中起到了很好的榜样示范作用，塑造了大学生良好形象。学校每年也会评选表彰一批优秀学生、优秀学生干部、优秀学生标兵、优秀学生干部标兵、优秀团员、优秀团干、道德模范标兵、自强之星等先进典型，树立了一批先进模范典型和榜样。
材料三：学校的部分学院通过试行早自习、早锻炼、晚自习、晚上自主熄灯、班规、寝室文明公约等学生自律自治的方式，让学生养成良好的学习和生活习惯，塑造出大学生健康向上的精神风貌。
",5,null);
INSERT INTO additiontitle(name, type, answer) VALUES("一日，A 学院甲某与同宿舍B学院乙某发生口角并殴打对方。被打者乙某声称要进行报复，并将情况告诉其同班同学。当晚，乙某所在班级的 5 名学生到宿舍找甲某理论，帮助本班同学“解决问题”。双方情绪都比较激动，言语争执最后演变为集体斗殴。其中，甲某用水果刀将乙某的一名同学扎伤，甲某在斗殴中也被打伤。经过批评教育，几位同学深刻地反思了自己的错误，并对自己的行为悔之不已。为严肃校规校纪，维护学校正常的教学教育秩序，学校对所有当事学生都进行了严肃处理。
    （1）本案例中的甲某、乙某、乙某的 5 名同学的行为有何不妥？事件为何会由两人之间的冲突发展为集体斗殴？我校的校规校纪中对打架、集体斗殴行为的处理有何规定？
    （2）在大学生活中，同宿舍的同学们应该通过什么方式来构建和谐的同学关系？当发生矛盾冲突时，应该采取什么方式妥善解决？
",5,null);
INSERT INTO additiontitle(name, type, answer) VALUES("在优秀班集体创建中，学校涌现出许多典型，例如湘雅医学院临床1205班全体同学牢固树立“五班一家”的理念，组织“名词解释背诵大赛”，促进专业学习，组织班级夜跑，锻炼良好身体素质，组织多种的文艺活动，丰富人文化素养，班级建设取得显著成效，班级实现了4个100%，英语六级通过率100%，近半数同学达到优秀水平，科研项目覆盖率100%，学生干部任职率100%，奖学金覆盖率100%，累计获各类奖项上百项，班级均以第一名的成绩获得“五四红旗团支部”、“先进班集体标兵”，成为学校班级建设的典范。请结合湘雅医学院临床1205班的优秀事迹，谈谈你对班级建设重要性的认识以及如何建设优秀班集体。
",5,null);
INSERT INTO additiontitle(name, type, answer) VALUES("2014年5月4日，习近平总书记到北京大学考察，他指出青年的价值取向决定了未来整个社会的价值取向，而青年又处在价值观形成和确立的时期，抓好这一时期的价值观养成十分重要。这就像穿衣服扣扣子一样，如果第一粒扣子扣错了，剩余的扣子都会扣错。人生的扣子从一开始就要扣好。核心价值观的养成绝非一日之功，要坚持由易到难、由近及远，努力把核心价值观的要求变成日常的行为准则，进而形成自觉奉行的信念理念。结合习总书记的讲话，谈谈作为一名大学生如何培育和践行社会主义核心价值观。
",5,null);
INSERT INTO additiontitle(name, type, answer) VALUES("“无人监考”是我校软件学院从2013级同学们入校时就开始在倡导和积极准备的一项工作，通过一学期的学风考风教育和习惯养成教育，软件学院13级8个班194名同学以班级为单位主动向学院申请期末考试“无人监考”，同学们纷纷表示“不仅大学四年要坚持“无人监考”，以后进入社会，也要做到广义上的“无人监考”，坚持道德上的自律，做一个有道德的人”。诚信乃做人立身之本，请结合我校部分学院试行的“无人监考”，谈谈你的认识。
",5,null);


### 其他SQL语句
#更新题目分数，填空题每空2分，问答题每题10分
/*Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column To disable safe mode, 
toggle the option in Preferences -> SQL Queries and reconnect.*/
SET SQL_SAFE_UPDATES = 0;
UPDATE additiontitle SET score=2 WHERE type=1;
UPDATE additiontitle SET score=4 WHERE type=3;