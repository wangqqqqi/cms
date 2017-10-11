-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-10-11 01:01:32
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `aname` varchar(50) DEFAULT NULL,
  `apass` varchar(50) DEFAULT NULL,
  `anicheng` varchar(50) DEFAULT NULL,
  `aphoto` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `apass`, `anicheng`, `aphoto`) VALUES
(1, '张三', 'e10adc3949ba59abbe56e057f20f883e', '三三', 'abc/17-10-09/15075136354965500114113_banner.jpg'),
(6, '李四', 'e10adc3949ba59abbe56e057f20f883e', '四四', 'abc/17-10-09/15075137912862500593233_banner.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `cid` int(10) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `state` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cid`, `cname`, `pid`, `state`) VALUES
(1, '公司简介', 0, '1'),
(2, '公司历史', 1, '0'),
(3, '产品介绍', 0, '1'),
(4, '产品详情', 3, '1'),
(5, '产品简介', 4, '0'),
(6, '公司详情', 1, '0'),
(7, '产品销量', 4, '0'),
(8, '联系我们', 0, '0');

-- --------------------------------------------------------

--
-- 表的结构 `shows`
--

CREATE TABLE `shows` (
  `sid` int(10) NOT NULL,
  `stitle` varchar(255) DEFAULT NULL,
  `scon` varchar(255) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shows`
--

INSERT INTO `shows` (`sid`, `stitle`, `scon`, `cid`) VALUES
(1, '优逸客', '\r\n    这是 喜欢就喜欢你开心进出口甲壳虫， 美女离线空间 即可捞出库存紧张了 ', 1),
(2, '优逸客', '\r\n    实打实大苏打是顶顶顶对方的方式v', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`sid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `shows`
--
ALTER TABLE `shows`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
