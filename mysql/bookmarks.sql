-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: Nov 01, 2011, 11:52 PM
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
  `point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SQLid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=140 ;

--
-- 列出以下資料庫的數據： `bookmark`
--

INSERT INTO `bookmark` (`SQLid`, `user`, `id`, `parentId`, `title`, `url`, `point`) VALUES
(1, 'root', '1', '0', '書籤列', '', 0),
(2, 'root', '11333', '1', 'webmeetup', 'http://webmeetup.org/what', 0),
(3, 'root', '11334', '1', 'google', 'http://www.google.com/', 1),
(4, 'root', '11335', '1', 'plurk', 'http://www.plurk.com/', 0),
(5, 'root', '11336', '1', 'GOOD', 'http://www.yahoo.com/', 0),
(6, 'root', '11337', '1', 'youtube', 'http://www.youtube.com/', 0),
(7, 'root', '11338', '1', 'Wikipedia, the free encyclopedia', 'http://en.wikipedia.org/', 0),
(8, 'root', '2206', '1', 'new', '', 0),
(9, 'root', '2207', '2206', 'test', '', 0),
(10, 'root', '11341', '11340', 'T客邦 - 我只推薦好東西', 'http://www.techbang.com.tw/', 0),
(27, 'test', '17473', '17472', '行動後學習機制 - MBA智库百科', 'http://wiki.mbalib.com/zh-tw/%E8%A1%8C%E5%8A%A8%E5%90%8E%E5%AD%A6%E4%B9%A0%E6%9C%BA%E5%88%B6', 0),
(26, 'test', '18853', '1', 'AI', '', 0),
(25, 'test', '16343', '1', 'Samples - Google Chrome Extensions - Google Code', 'http://code.google.com/chrome/extensions/samples.html', 0),
(23, 'test', '1', '0', '書籤列', '', 0),
(24, 'test', '16342', '1', 'UVa', 'http://uva.onlinejudge.org/index.php?option=com_onlinejudge&Itemid=25', 0),
(21, 'test', '16340', '1', '書籤管理員', 'chrome-extension://eemcgdkfndhakfknompkggombfjjjeno/main.html#1', 0),
(22, 'test', '16341', '1', 'GreenWiki', 'http://jason3e7.no-ip.org/greenwiki/index.php/%E9%A6%96%E9%A0%81', 0),
(28, 'test', '17474', '17472', 'KNN演算法 « Mr./Ms. Days – 網路, 資訊, 觀察, 生活', 'http://mmdays.wordpress.com/2007/05/16/knn/', 0),
(29, 'test', '17475', '17472', '演算法 | 宅學習 - Social Learning Space', 'http://sls.weco.net/course/alg', 0),
(30, 'test', '17476', '17472', 'FUNcLogs: 感知學習演算法(Perceptron Learning Algorithm)白話說明', 'http://function1122.blogspot.com/2010/10/perceptron-learning-algorithm.html', 0),
(31, 'test', '18858', '1', 'Kuso', '', 0),
(32, 'test', '17631', '17630', 'YouTube - The best penalty kick ever', 'http://www.youtube.com/watch?v=7hQAjyWhC7s&feature=player_embedded', 0),
(33, 'test', '17632', '17630', 'YouTube - Videos Posted by Sarsi Super  KAP BOOM !!!!!!!!!!!!!!!!!!!!!! HD', 'http://www.youtube.com/watch?v=685bGK212Mw', 0),
(34, 'test', '17633', '17630', 'Pirates Love Daisies: An HTML5 Tower Defence Strategy Game', 'http://www.pirateslovedaisies.com/', 0),
(35, 'test', '17634', '17630', '粉專欄：史上最無用的東西？其實是療癒系之物吧', 'http://chinese.engadget.com/2011/06/22/the-most-useless-thing-is-healing-system/', 0),
(36, 'test', '17635', '17630', 'YouTube - 一分鐘做一顆核彈 how to make an atomic bomb in a min.', 'http://www.youtube.com/watch?v=W9ds52QqpCU&feature=share', 0),
(37, 'test', '17636', '17630', 'YouTube - ‪【中文字幕】所有動畫片頭會用到的梗‬‏', 'https://www.youtube.com/watch?v=g2ZjDi5erWk', 0),
(38, 'test', '17637', '17630', '邪教檢查表', 'http://www.richyli.com/column/sect/sekt_checklist.htm', 0),
(39, 'test', '17638', '17630', '我的組員都不做報告 - YouTube', 'http://www.youtube.com/watch?v=RKjQ9gfW8Eo&feature=share', 0),
(40, 'test', '17639', '17630', 'D-trix: 去你的網絡縮寫【中文字幕】 - YouTube', 'http://www.youtube.com/watch?feature=player_embedded&v=NMUKUB2lF2g', 0),
(41, 'test', '17640', '17630', '[影片]現場搞笑表演團體【魚蹦興業】 - PttFB板 - Disp BBS', 'http://disp.cc/b/337-2qQZ', 0),
(42, 'test', '17641', '17630', '92a6823192d948cc4ec72895dea4f828.jpg (800×600)', 'http://images.plurk.com/92a6823192d948cc4ec72895dea4f828.jpg', 0),
(43, 'test', '17642', '17630', '2011 COSCUP Lightning Talk 嵌入世開發的故事 by BenLau(HK) - YouTube', 'http://www.youtube.com/watch?v=Aod7UDL0qTI&feature=player_embedded', 0),
(44, 'test', '17643', '17630', '雞大牙短片- 姜國隊長：復仇者先鋒 @ 隨意窩 Xuite 影音', 'http://vlog.xuite.net/play/ZGJEWXNRLTM3ODcxMDMuZmx2', 0),
(45, 'test', '18859', '1', '海龜湯', '', 0),
(46, 'test', '18798', '18797', '美國FBI招工題目 (答對3題的人不超過4個)想知答案請按ctrl+a - 推理題專區 - IQ題終極匯集 - 香港討論區 Uwants.com', 'http://www.uwants.com/viewthread.php?tid=5356264', 0),
(47, 'test', '18860', '1', 'PICTURE', '', 0),
(48, 'test', '18786', '18785', '科技間的模仿', 'http://images.plurk.com/7ed71631e4c440843f363089a4314545.gif', 1),
(49, 'test', '18787', '18785', '地球太危險了', 'http://images.plurk.com/770c6b42da40431039eef96949331065.jpg', 0),
(50, 'test', '18788', '18785', '科技間的電池', 'http://images.plurk.com/8622bab1d8581a97f911ec0287c23f6b.jpg', 0),
(51, 'test', '18789', '18785', '魔法少女小圓', 'http://i.imgur.com/OQysu.jpg', 0),
(52, 'test', '18790', '18785', '你發現錯誤在哪裡了嗎？', 'http://images.plurk.com/c516ec73c538723f6f518f433b1481f6.jpg', 0),
(53, 'test', '18791', '18785', '惡搞中華電信.jpg (413×217)', 'http://i.minus.com/ibulDG.jpg', 0),
(54, 'test', '18792', '18785', 'Opera_QB', 'http://i.imgur.com/kBCSI.jpg', 0),
(55, 'test', '18793', '18785', '三角函數', 'http://images.plurk.com/f499097f5bdacff4b82d300c83b28297.jpg', 0),
(56, 'test', '18794', '18785', '時鐘', 'http://a.imageshack.us/img828/5/snap0879.jpg', 0),
(57, 'test', '18795', '18785', '資訊人員的關係', 'http://i.imgur.com/3YFTG.jpg', 0),
(58, 'test', '18796', '18785', '別人的書', 'http://images.plurk.com/6903107_8b26ef8bd027eae7947f66dd85a814a6.jpg', 0),
(59, 'test', '16342', '1', 'UVa', 'http://uva.onlinejudge.org/index.php?option=com_onlinejudge&amp;Itemid=25', 0),
(60, 'test', '17631', '17630', 'YouTube - The best penalty kick ever', 'http://www.youtube.com/watch?v=7hQAjyWhC7s&amp;feature=player_embedded', 0),
(61, 'test', '17635', '17630', 'YouTube - 一分鐘做一顆核彈 how to make an atomic bomb in a min.', 'http://www.youtube.com/watch?v=W9ds52QqpCU&amp;feature=share', 0),
(62, 'test', '17638', '17630', '我的組員都不做報告 - YouTube', 'http://www.youtube.com/watch?v=RKjQ9gfW8Eo&amp;feature=share', 0),
(63, 'test', '17639', '17630', 'D-trix: 去你的網絡縮寫【中文字幕】 - YouTube', 'http://www.youtube.com/watch?feature=player_embedded&amp;v=NMUKUB2lF2g', 0),
(64, 'test', '17642', '17630', '2011 COSCUP Lightning Talk 嵌入世開發的故事 by BenLau(HK) - YouTube', 'http://www.youtube.com/watch?v=Aod7UDL0qTI&amp;feature=player_embedded', 0),
(134, 'test', '2202', '1', 'webmeetup', 'http://webmeetup.org/what', 0),
(129, 'new', '2188', '1', 'plurk', 'http://www.plurk.com/', 0),
(130, 'new', '2189', '1', 'google', 'http://www.google.com/', 0),
(131, 'new', '2190', '1', 'webmeetup', 'http://webmeetup.org/what', 0),
(132, 'test', '2200', '1', 'plurk', 'http://www.plurk.com/', 0),
(133, 'test', '2201', '1', 'google', 'http://www.google.com/', 0),
(127, 'new', '2186', '1', 'youtube', 'http://www.youtube.com/', 0),
(128, 'new', '2187', '1', 'GOOD', 'http://www.yahoo.com/', 0),
(123, 'new', '1', '0', '書籤列', '', 0),
(126, 'new', '2185', '1', 'Wikipedia, the free encyclopedia', 'http://en.wikipedia.org/', 0),
(125, 'new', '2207', '2206', 'test', '', 0),
(124, 'new', '2206', '1', 'new', '', 0),
(135, 'test', '2203', '1', 'youtube', 'http://www.youtube.com/', 0),
(136, 'test', '2204', '1', 'GOOD', 'http://www.yahoo.com/', 0),
(137, 'test', '2205', '1', 'Wikipedia, the free encyclopedia', 'http://en.wikipedia.org/', 0),
(138, 'test', '2206', '1', 'new', '', 0),
(139, 'test', '2207', '2206', 'test', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 列出以下資料庫的數據： `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `text`) VALUES
(1, 'root', 'root', '<?xml version="1.0"?><bookmarks version="1"><bookmark id="1" parentId="0" title="書籤列" ></bookmark><bookmark id="2388" parentId="1" url="http://www.google.com/" title="google"></bookmark><bookmark id="2389" parentId="1" url="http://webmeetup.org/what" title="webmeetup"></bookmark><bookmark id="2390" parentId="1" url="http://www.plurk.com/" title="plurk"></bookmark><bookmark id="2391" parentId="1" url="http://www.yahoo.com/" title="GOOD"></bookmark><bookmark id="2392" parentId="1" url="http://www.youtube.com/" title="youtube"></bookmark><bookmark id="2393" parentId="1" url="http://en.wikipedia.org/" title="Wikipedia, the free encyclopedia"></bookmark><bookmark id="2394" parentId="1" title="new" ></bookmark><bookmark id="2395" parentId="2394" title="test" ></bookmark><bookmark id="2396" parentId="2395" url="http://www.techbang.com.tw/" title="T客邦 - 我只推薦好東西"></bookmark></bookmarks>'),
(2, 'test', 'test', 'true'),
(3, 'hello', 'world', '<?xml version="1.0"?>\n<bookmarks version="1">\n<bookmark id="1" parentId="0" title="書籤列" ></bookmark>\n<bookmark id="7652" parentId="1" url="http://jason3e7.no-ip.org/greenwiki/index.php/%E9%A6%96%E9%A0%81" title="GreenWiki"></bookmark>\n<bookmark id="7654" parentId="1" url="http://code.google.com/chrome/extensions/samples.html" title="Samples - Google Chrome Extensions - Google Code"></bookmark>\n<bookmark id="9995" parentId="1" title="自己的事業" ></bookmark>\n<bookmark id="9360" parentId="1" url="http://www.facebook.com/profile.php?id=1329379944&amp;ref=nf_fr" title="潘金聰"></bookmark>\n<bookmark id="9361" parentId="1" url="http://www.facebook.com/weixiul?ref=pb" title="利瑋修"></bookmark>\n<bookmark id="9362" parentId="1" url="http://www.facebook.com/abc3060623" title="才人"></bookmark>\n<bookmark id="9363" parentId="1" url="http://www.facebook.com/profile.php?id=100000195945648&amp;sk=photos" title="洪芳茹"></bookmark>\n<bookmark id="9364" parentId="1" url="http://www.facebook.com/garnett207" title="魏嘉男"></bookmark>\n<bookmark id="9365" parentId="1" url="http://www.facebook.com/panda0722" title="張家豪"></bookmark>\n</bookmarks>'),
(4, 'new', 'new', '<?xml version="1.0"?>\n<bookmarks version="1">\n<bookmark id="1" parentId="0" title="書籤列" ></bookmark>\n<bookmark id="2784" parentId="1" url="http://en.wikipedia.org/" title="Wikipedia, the free encyclopedia"></bookmark>\n<bookmark id="2785" parentId="1" url="http://www.google.com/" title="google"></bookmark>\n<bookmark id="2786" parentId="1" url="http://webmeetup.org/what" title="webmeetup"></bookmark>\n<bookmark id="2787" parentId="1" url="http://www.yahoo.com/" title="GOOD"></bookmark>\n<bookmark id="2788" parentId="1" url="http://www.plurk.com/" title="plurk"></bookmark>\n<bookmark id="2789" parentId="1" url="http://www.youtube.com/" title="youtube"></bookmark>\n<bookmark id="2790" parentId="1" title="new" ></bookmark>\n<bookmark id="2791" parentId="2790" title="test" ></bookmark>\n<bookmark id="2792" parentId="2791" url="http://www.techbang.com.tw/" title="T客邦 - 我只推薦好東西"></bookmark>\n</bookmarks>');
