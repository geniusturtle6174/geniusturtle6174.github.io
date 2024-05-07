-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-07 13:56:51
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
-- 資料表結構 `dz_board`
--

DROP TABLE IF EXISTS `dz_board`;
CREATE TABLE `dz_board` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `dz_board`
--

INSERT INTO `dz_board` (`id`, `name`) VALUES
(1, '八卦板'),
(2, '就可板'),
(3, '黑特板');

-- --------------------------------------------------------

--
-- 資料表結構 `dz_thread`
--

DROP TABLE IF EXISTS `dz_thread`;
CREATE TABLE `dz_thread` (
  `id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `nickname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `root_thread_id` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `dz_thread`
--

INSERT INTO `dz_thread` (`id`, `board_id`, `time`, `nickname`, `title`, `content`, `root_thread_id`, `ip`) VALUES
(16, 3, '2020-04-19 10:25:02', 'ddd', 'ddd', 'ddd', 0, '::1'),
(17, 0, '2020-04-19 10:25:41', '龜', '', 'ddddd', 16, '::1'),
(18, 0, '2020-04-19 10:27:30', 'ddd', '', 'aaa', 16, '::1'),
(19, 3, '2020-04-21 11:27:30', '龜', '喵嗚嗚', '!!!!!!!!', 0, '::1'),
(20, 0, '2020-04-21 11:27:49', '龜', '', 'zzzzzzz', 19, '::1'),
(21, 2, '2021-03-28 06:34:42', 'www', '喵嗚嗚', '喵', 0, '::1'),
(22, 3, '2021-04-06 10:32:37', 'www', '喵嗚嗚', 'aydgjkhgjfhjkfhdh', 0, '::1'),
(23, 0, '2021-04-06 10:35:18', '龜', '', 'wertyugfghjhg', 22, '::1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `dz_board`
--
ALTER TABLE `dz_board`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `dz_thread`
--
ALTER TABLE `dz_thread`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dz_board`
--
ALTER TABLE `dz_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dz_thread`
--
ALTER TABLE `dz_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
