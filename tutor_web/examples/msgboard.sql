-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-07 13:08:51
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `wpta_coursetest`
--

-- --------------------------------------------------------

--
-- 資料表結構 `msgboard`
--

CREATE TABLE IF NOT EXISTS `msgboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `content` varchar(1024) NOT NULL,
  `pwd` varchar(16) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- 資料表新增資料前，先清除舊資料 `msgboard`
--

TRUNCATE TABLE `msgboard`;
--
-- 傾印資料表的資料 `msgboard`
--

INSERT INTO `msgboard` (`id`, `nickname`, `time`, `content`, `pwd`, `ip`) VALUES
(67, 'aaa', '2022-12-12 05:45:56', 'aaaaaaaa', '123', ''),
(68, 'ssss', '2022-12-12 05:46:00', 'ssss', 'sssss', ''),
(69, 'sqw', '2022-12-12 05:46:05', 'www', 'effdfdgh', ''),
(70, 'aaa', '2022-12-12 06:03:21', 'aaa', '', '::1'),
(71, 'aaa', '2022-12-12 06:03:27', 'ddd', '', '::1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
