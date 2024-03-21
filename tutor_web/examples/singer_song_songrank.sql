-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Apr 15, 2014, 02:47 AM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `wpta_coursetest`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `singer`
-- 

DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(16) NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6;

-- 
-- 列出以下資料庫的數據： `singer`
-- 

INSERT INTO `singer` VALUES (1, '梁靜茹', '女歌手');
INSERT INTO `singer` VALUES (2, '伍佰', '男歌手');
INSERT INTO `singer` VALUES (3, '五月天', '團體');
INSERT INTO `singer` VALUES (4, '初音未來', '軟體');
INSERT INTO `singer` VALUES (5, '鏡音鈴', '軟體');

-- --------------------------------------------------------

-- 
-- 資料表格式： `song`
-- 

DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `singer_id` int(11) NOT NULL,
  `language` varchar(16) NOT NULL,
  `youtube` varchar(256) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=10;

-- 
-- 列出以下資料庫的數據： `song`
-- 

INSERT INTO `song` VALUES (1, '會呼吸的痛', 1, '華語', 'http://www.youtube.com/watch?v=SZnmpF9K_VQ');
INSERT INTO `song` VALUES (2, '乾杯', 3, '華語', 'http://www.youtube.com/watch?v=qX2GsMj7154');
INSERT INTO `song` VALUES (3, '溫柔', 3, '華語', 'http://www.youtube.com/watch?v=nWb_X3ZJQjw');
INSERT INTO `song` VALUES (4, 'OK啦', 3, '台語', 'http://www.youtube.com/watch?v=_FV1NDdHHEo');
INSERT INTO `song` VALUES (5, '愛情限時批', 2, '台語', 'http://www.youtube.com/watch?v=b5Qrin1tRDk');
INSERT INTO `song` VALUES (6, '夢醒時分', 2, '華語', 'http://www.youtube.com/watch?v=m9Y5z5sYm3s');
INSERT INTO `song` VALUES (7, '夢醒時分', 1, '華語', 'http://www.youtube.com/watch?v=JbvnzMZnEfc');
INSERT INTO `song` VALUES (8, '甩蔥歌', 4, '日語', 'http://www.youtube.com/watch?v=QwZ_VKBTjWo');
INSERT INTO `song` VALUES (9, '千本櫻', 4, '日語', 'http://www.youtube.com/watch?v=2LUgH_X7sFM');

-- --------------------------------------------------------

-- 
-- 資料表格式： `songrank`
-- 

DROP TABLE IF EXISTS `songrank`;
CREATE TABLE `songrank` (
  `id` int(11) NOT NULL auto_increment,
  `this_rank` int(11) NOT NULL,
  `prev_rank` int(11) NOT NULL,
  `song_name` varchar(32) NOT NULL,
  `singer_name` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- 列出以下資料庫的數據： `songrank`
-- 

INSERT INTO `songrank` VALUES (1, 1, 1, '修煉愛情', '林俊傑');
INSERT INTO `songrank` VALUES (2, 11, 12, '存在的力量', '朱俐靜');
INSERT INTO `songrank` VALUES (3, 17, 17, 'Marry me', '蕭敬騰');
INSERT INTO `songrank` VALUES (4, 46, 42, '好難得', '丁噹');
INSERT INTO `songrank` VALUES (5, 60, 57, '我會在你身邊', '朱俐靜');
INSERT INTO `songrank` VALUES (6, 63, 64, '飛機', '林俊傑');
INSERT INTO `songrank` VALUES (7, 98, 99, '只能想念你', '蕭敬騰');
