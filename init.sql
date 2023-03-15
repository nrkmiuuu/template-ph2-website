CREATE DATABASE IF NOT EXISTS webapp;
-- db posseのところをwebappへ
USE webapp;

CREATE TABLE languages (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    language VARCHAR COMMENT '学習言語',
    color VARCHAR COMMENT '色',
);

CREATE TABLE hours (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    hour INT COMMENT '時間',
    date DATETIME COMMENT '日にち'
);

CREATE TABLE contents (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    content INT COMMENT '内容',
    color VARCHAR COMMENT '色'
);

-- hoursとcontentsの中間
CREATE TABLE webappContents (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    content_id VARCHAR COMMENT '内容のid',
    hour_id VARCHAR COMMENT '色'
);

-- hoursとlanguagesの中間
CREATE TABLE webappLanguage (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    hour_id INT COMMENT '時間のid',
    language_id INT COMMENT '学習言語'
);

INSERT INTO `languages` VALUES 
(1, 'HTML', '2022-06-23', now(), now()),
(2, 'CSS', '2022-07-12',now(), now()),
(3, 'JavaScript', '2022-07-12',now(), now()),
(4, 'PHP', '2022-07-12',now(), now()),
(5, 'Laravel', '2022-07-12',now(), now()),
(6, 'SQL', '2022-07-12',now(), now()),
(7, 'SHELL', '2022-07-12',now(), now()),
(8, '情報システム基礎知識（その他）', '2022-03-01', now(), now());

INSERT INTO `hours` VALUES 
(1, 1, '本', 3, 1000, now(), now()),
(2, 1, 'ペン', 10, 150, now(), now()),
(3, 1, 'ポストイット', 1, 500, now(), now()),
(4, 2, '本', 10, 300, now(), now()),
(5, 2, 'モニター', 1, 30000, now(), now()),
(6, 3, 'ピザ', 1, 3000, now(), now()),
(7, 3, '寿司', 2, 4000, now(), now()),
(8, 3, 'ビール', 10, 400, now(), now());

INSERT INTO `contents` VALUES 
(1, 'しのけんさん', '2022-06-23', now(), now()),
(2, 'おざっちさん', '2022-07-12',now(), now()),
(3, 'こたにさん', '2022-03-01', now(), now());

INSERT INTO `webappContents` VALUES 
(1, 'しのけんさん', '2022-06-23', now(), now()),
(2, 'おざっちさん', '2022-07-12',now(), now()),
(3, 'こたにさん', '2022-03-01', now(), now());

INSERT INTO `webappLanguage` VALUES 
(1, 'しのけんさん', '2022-06-23', now(), now()),
(2, 'おざっちさん', '2022-07webappLanguage-12',now(), now()),
(3, 'こたにさん', '2022-03-01', now(), now());