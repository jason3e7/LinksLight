-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: Oct 25, 2011, 08:44 PM
-- 伺服器版本: 5.1.49
-- PHP 版本: 5.3.3-1ubuntu9.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `bookmarks`
--

-- --------------------------------------------------------

--
-- 資料表格式： `bookmark`
--

CREATE TABLE IF NOT EXISTS `bookmark` (
  `SQLid` int(11) NOT NULL AUTO_INCREMENT,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `id` text COLLATE utf8_unicode_ci NOT NULL,
  `parentId` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `point` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SQLid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- 列出以下資料庫的數據： `bookmark`
--

INSERT INTO `bookmark` (`SQLid`, `user`, `id`, `parentId`, `title`, `url`, `point`) VALUES
(1, 'root', '0', '1', 'google', 'http://www.google.com/', 8),
(2, 'root', '0', '1', 'plurk', 'http://www.plurk.com/', 1),
(3, 'root', '0', '1', 'GOOD', 'http://www.yahoo.com/', 0),
(4, 'root', '0', '1', 'youtube', 'http://www.youtube.com/', 0),
(5, 'root', '0', '1', 'Wikipedia, the free encyclopedia', 'http://en.wikipedia.org/', 0),
(6, 'root', '0', '1', 'webmeetup', 'http://webmeetup.org/what', 8),
(7, 'root', '0', '6', 'T客邦 - 我只推薦好東西', 'http://www.techbang.com.tw/', 1),
(8, 'root', '5', '1', 'new', '', 0),
(9, 'root', '6', '5', 'test', '', 0);

-- --------------------------------------------------------

--
-- 資料表格式： `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 列出以下資料庫的數據： `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `text`) VALUES
(1, 'root', 'root', 'true'),
(2, 'test', 'test', 'true');
