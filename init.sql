CREATE DATABASE IF NOT EXISTS webapp;
-- db posseのところをwebappへ
USE webapp;

CREATE TABLE languages (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    language VARCHAR COMMENT '学習言語',
    color VARCHAR COMMENT '色'
);

CREATE TABLE hours (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    hour INT COMMENT '時間',
    date DATE COMMENT '日にち'
);

CREATE TABLE contents (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    content VARCHAR COMMENT '内容',
    color VARCHAR COMMENT '色'
);

-- hoursとcontentsの中間
CREATE TABLE webappContents (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    content_id INT COMMENT '内容のid',
    hour_id VARCHAR COMMENT '色'
);

-- hoursとlanguagesの中間
CREATE TABLE webappLanguage (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    hour_id INT COMMENT '時間のid,hoursテーぶるのidをもってくる、いつ何時間',
    language_id INT COMMENT '学習言語のid,languageテーブルのid'
);

INSERT INTO `languages` VALUES 
(1, 'HTML', '青'),
(2, 'CSS', '赤'),
(3, 'JavaScript', '緑'),
(4, 'PHP', '黄色'),
(5, 'Laravel', '水色'),
(6, 'SQL', '紫'),
(7, 'SHELL', 'オレンジ'),
(8, '情報システム基礎知識（その他）', '黄緑');

INSERT INTO `hours` VALUES 
(1, 1,'2022-06-23' ),
(2, 1,'2022-06-23'),
(3, 1,'2022-06-23'),
(4, 2,'2022-06-23'),
(5, 2,'2022-06-23' ),
(6, 3,'2022-06-23'),
(7, 3,'2022-06-23'),
(8, 3,'2022-06-23');

INSERT INTO `contents` VALUES 
(1, 'N予備校', '赤',),
(2, 'N予備校', '赤'),
(3, 'POSSE課題', '赤',);

INSERT INTO `webappContents` VALUES 
(1, 1, '赤'),
(2, 1, '赤'),
(3, 2, '青');

INSERT INTO `webappLanguage` VALUES 
(1, 2, 2),
(2, 2, 2),
(3, 3, 2);