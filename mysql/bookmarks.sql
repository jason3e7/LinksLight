-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Oct 24, 2011, 02:11 PM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `bookmarks`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `bookmark`
-- 

CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL auto_increment,
  `user` text collate utf8_unicode_ci NOT NULL,
  `parentId` text collate utf8_unicode_ci NOT NULL,
  `title` text collate utf8_unicode_ci NOT NULL,
  `url` text collate utf8_unicode_ci NOT NULL,
  `point` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

-- 
-- 列出以下資料庫的數據： `bookmark`
-- 

INSERT INTO `bookmark` VALUES (1, 'root', ' bookmarkBar.id', 'google', 'http://www.google.com/', 6);
INSERT INTO `bookmark` VALUES (2, 'root', '1', 'plurk', 'http://www.plurk.com/', 1);
INSERT INTO `bookmark` VALUES (3, 'root', '1', 'GOOD', 'http://www.yahoo.com/', 0);
INSERT INTO `bookmark` VALUES (5, 'root', '1', 'Wikipedia, the free encyclopedia', 'http://en.wikipedia.org/', 0);
INSERT INTO `bookmark` VALUES (6, 'root', '1', 'webmeetup', 'http://webmeetup.org/what', 4);
INSERT INTO `bookmark` VALUES (7, 'root', '1', 'T客邦 - 我只推薦好東西', 'http://www.techbang.com.tw/', 0);

-- --------------------------------------------------------

-- 
-- 資料表格式： `user`
-- 

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `user` text collate utf8_unicode_ci NOT NULL,
  `password` text collate utf8_unicode_ci NOT NULL,
  `text` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES (1, 'root', 'root', 'true');
