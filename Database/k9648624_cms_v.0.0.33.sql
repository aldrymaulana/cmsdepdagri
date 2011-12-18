-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2011 at 07:17 AM
-- Server version: 5.0.92
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `k9648624_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_htmlblob_users`
--

DROP TABLE IF EXISTS `cms_additional_htmlblob_users`;
CREATE TABLE IF NOT EXISTS `cms_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `htmlblob_id` int(11) default NULL,
  PRIMARY KEY  (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_htmlblob_users_seq`
--

DROP TABLE IF EXISTS `cms_additional_htmlblob_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_additional_htmlblob_users_seq`
--

INSERT INTO `cms_additional_htmlblob_users_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_users`
--

DROP TABLE IF EXISTS `cms_additional_users`;
CREATE TABLE IF NOT EXISTS `cms_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `page_id` int(11) default NULL,
  `content_id` int(11) default NULL,
  PRIMARY KEY  (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_additional_users`
--

INSERT INTO `cms_additional_users` (`additional_users_id`, `user_id`, `page_id`, `content_id`) VALUES
(43, -3, NULL, 62);

-- --------------------------------------------------------

--
-- Table structure for table `cms_additional_users_seq`
--

DROP TABLE IF EXISTS `cms_additional_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_additional_users_seq`
--

INSERT INTO `cms_additional_users_seq` (`id`) VALUES
(43);

-- --------------------------------------------------------

--
-- Table structure for table `cms_adminlog`
--

DROP TABLE IF EXISTS `cms_adminlog`;
CREATE TABLE IF NOT EXISTS `cms_adminlog` (
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `username` varchar(25) default NULL,
  `item_id` int(11) default NULL,
  `item_name` varchar(50) default NULL,
  `action` varchar(255) default NULL,
  `ip_addr` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_adminlog`
--

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
(1323670388, 1, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '203.77.233.26'),
(1323670511, 1, 'admin', 1, 'Admin Username: admin', 'Edited', '203.77.233.26'),
(1323670931, 1, 'admin', -1, 'Frontend User Management', 'Frontend User Login: ronald.a.96@gmail.com', '203.77.233.26'),
(1323670990, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323671403, 1, 'admin', 81, 'Content Item: Submit News', 'Edited', '203.77.233.26'),
(1323671472, 1, 'admin', 81, 'Content Item: Submit News', 'Edited', '203.77.233.26'),
(1323671780, 1, 'admin', 81, 'Content Item: Submit News', 'Edited', '203.77.233.26'),
(1323671834, 1, 'admin', 81, 'Content Item: Submit News', 'Edited', '203.77.233.26'),
(1323671865, 1, 'admin', 81, 'Content Item: Submit News', 'Edited', '203.77.233.26'),
(1323672134, 1, 'admin', 81, 'Content Item: Submit News', 'Edited', '203.77.233.26'),
(1323672434, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323672691, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323675199, 1, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '203.77.233.26'),
(1323675262, 1, 'admin', -1, 'Frontend User Management', 'Frontend User Login: ronald.a.96@gmail.com', '203.77.233.26'),
(1323675276, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323675335, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323675946, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Added', '203.77.233.26'),
(1323676142, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323676182, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323676499, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323676509, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323676661, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323677279, 1, 'admin', 10, 'User Defined Tag: save_new_article_id', 'Added', '203.77.233.26'),
(1323677430, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323677464, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323679654, 1, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '203.77.233.26'),
(1323679780, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323679799, 1, 'admin', -1, 'Frontend User Management', 'Frontend User Login: ronald.a.96@gmail.com', '203.77.233.26'),
(1323679815, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323680006, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323680172, 1, 'admin', 11, 'User Defined Tag: current_article_id', 'Added', '203.77.233.26'),
(1323680562, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323680864, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323680923, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323680968, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323681120, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323681185, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323681253, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323681254, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323681262, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323681292, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323681435, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323682510, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323682583, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323682694, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323682833, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323682994, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323683155, 1, 'admin', 9, 'User Defined Tag: news_article_added', 'Edited', '203.77.233.26'),
(1323683165, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323683185, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323683223, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323683255, 1, 'admin', -1, 'Automated Task Succeeded', 'GatherNotificationsTask', '203.77.233.26'),
(1323683265, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323683290, 1, 'admin', -1, 'News Frontend Submit', 'Article added', '203.77.233.26'),
(1323702085, 0, '', -1, 'Automated Task Succeeded', 'ClearCacheTask', ''),
(1323702085, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1323790426, 0, '', -1, 'Automated Task Succeeded', 'ClearCacheTask', ''),
(1323790426, 0, '', -1, 'Automated Task Succeeded', 'PruneAdminlogTask', ''),
(1323834446, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '192.168.61.251'),
(1323836469, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323836596, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323836606, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323836606, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837031, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837085, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837182, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837235, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837334, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837359, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837408, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837498, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837557, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837616, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837662, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837701, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837731, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837758, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323837784, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838024, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838089, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838118, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838149, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838172, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838196, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323838232, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251'),
(1323845555, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '203.77.233.26'),
(1323845695, 1, 'admin', 64, 'Content Item: Mr. Indra Catri', 'Edited', '192.168.61.251');

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_bookmarks`
--

DROP TABLE IF EXISTS `cms_admin_bookmarks`;
CREATE TABLE IF NOT EXISTS `cms_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`bookmark_id`),
  KEY `cms_index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_bookmarks_seq`
--

DROP TABLE IF EXISTS `cms_admin_bookmarks_seq`;
CREATE TABLE IF NOT EXISTS `cms_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_admin_bookmarks_seq`
--

INSERT INTO `cms_admin_bookmarks_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_recent_pages`
--

DROP TABLE IF EXISTS `cms_admin_recent_pages`;
CREATE TABLE IF NOT EXISTS `cms_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `access_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin_recent_pages_seq`
--

DROP TABLE IF EXISTS `cms_admin_recent_pages_seq`;
CREATE TABLE IF NOT EXISTS `cms_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_admin_recent_pages_seq`
--

INSERT INTO `cms_admin_recent_pages_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_content`
--

DROP TABLE IF EXISTS `cms_content`;
CREATE TABLE IF NOT EXISTS `cms_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) default NULL,
  `type` varchar(25) default NULL,
  `owner_id` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `template_id` int(11) default NULL,
  `item_order` int(11) default NULL,
  `hierarchy` varchar(255) default NULL,
  `default_content` tinyint(4) default NULL,
  `menu_text` varchar(255) default NULL,
  `content_alias` varchar(255) default NULL,
  `show_in_menu` tinyint(4) default NULL,
  `collapsed` tinyint(4) default NULL,
  `markup` varchar(25) default NULL,
  `active` tinyint(4) default NULL,
  `cachable` tinyint(4) default NULL,
  `id_hierarchy` varchar(255) default NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) default NULL,
  `tabindex` varchar(10) default NULL,
  `accesskey` varchar(5) default NULL,
  `last_modified_by` int(11) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `secure` tinyint(4) default NULL,
  `page_url` varchar(255) default NULL,
  PRIMARY KEY  (`content_id`),
  KEY `cms_index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `cms_index_content_by_default_content` (`default_content`),
  KEY `cms_index_content_by_parent_id` (`parent_id`),
  KEY `cms_index_content_by_hierarchy` (`hierarchy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content`
--

INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES
(15, 'Home', 'content', 1, -1, 24, 2, '00002', 0, 'Home', 'home', 1, 1, 'html', 1, 1, '15', 'home', 'target,pagedata,extra1,extra2,extra3,image,searchable,disable_wysiwyg,image1,Sidebar,content_en,thumbnail', '', 'Home Page, shortcut key=1', '', '1', 1, '2006-07-25 21:22:31', '2011-11-30 04:49:10', 0, ''),
(56, 'Photo', 'content', 1, -1, 16, 10, '00010', 0, 'PHOTO', 'photo', 1, NULL, 'html', 1, 1, '56', 'photo', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-10-29 03:06:17', '2011-11-30 03:39:18', 0, ''),
(58, 'NEWS', 'content', 1, -1, 16, 4, '00004', 0, 'NEWS', 'news', 1, NULL, 'html', 1, 0, '58', 'news', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en,__feu_date__', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-03 12:28:55', '2011-11-30 03:39:02', 0, ''),
(59, 'SEJARAH SINGKAT PEMBENTUKAN FTI', 'content', 1, -1, 16, 6, '00006', 0, 'HISTORY', 'history', 1, NULL, 'html', 1, 1, '59', 'history', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}\r\n{literal}\r\n<script language="javascript" type="text/javascript" src="/modules/TinyMCE/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>\r\n<script language="javascript" type="text/javascript">\r\ntinyMCE.init({\r\n        theme : "advanced",\r\n        mode : "textareas",\r\n        plugins : "spellchecker, paste",\r\n        theme_advanced_toolbar_location : "top",\r\n        theme_advanced_toolbar_align : "left",\r\n        theme_advanced_buttons1 : "bold,italic,underline,separator,cut,copy,paste,pastetext,pasteword,selectall,separator,link,unlink,\r\nseparator,bullist,numlist,separator,undo,redo,separator,hr,charmap,sub,sup,separator,spellchecker",\r\n        theme_advanced_buttons2 : "",\r\n        theme_advanced_buttons3 : ""\r\n});\r\n</script>\r\n{/literal}', '', '', '', 1, '2011-11-03 12:30:43', '2011-11-30 03:39:10', 0, ''),
(60, 'PENGURUS FTI PERIODE PERTAMA', 'content', 1, -1, 16, 12, '00012', 0, 'PENGURUS', 'pengurus', 1, NULL, 'html', 1, 1, '60', 'pengurus', 'content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-03 12:31:01', '2011-12-09 02:20:11', 0, ''),
(61, 'Angkatan I (Tahun 2011)', 'content', 1, -1, 16, 8, '00008', 0, 'PROFIL PESERTA', 'profil-peserta', 1, NULL, 'html', 1, 1, '61', 'profil-peserta', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-03 12:31:18', '2011-12-11 14:46:27', 0, ''),
(62, 'Comment', 'content', 1, -1, 16, 14, '00014', 0, 'COMMENT', 'comment', 1, NULL, 'html', 1, 0, '62', 'comment', 'Sidebar,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,__feu_date__,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-03 12:31:34', '2011-12-12 03:10:40', 0, ''),
(64, 'Mr. Indra Catri', 'content', 1, 67, 23, 1, '00015.00001', 0, 'indracatri', 'indracatri', 0, NULL, 'html', 1, 1, '67.64', 'memberscontainer/indracatri', 'content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar', '', '', '', '', 1, '2011-11-12 02:38:40', '2011-12-14 06:54:55', 0, ''),
(65, 'Mr. Isman Imran', 'content', 1, 67, 23, 2, '00015.00002', 0, 'ismanimran', 'ismanimran', 0, NULL, 'html', 1, 1, '67.65', 'memberscontainer/ismanimran', 'extra2,extra3,disable_wysiwyg,Sidebar,content_en,searchable,pagedata,target,image,thumbnail,extra1', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-12 07:12:22', '2011-11-25 04:27:40', 0, ''),
(66, 'Mr. Ruzaidin Noor', 'content', 1, 67, 23, 3, '00015.00003', 0, 'ruzaidin', 'ruzaidin', 0, NULL, 'html', 1, 1, '67.66', 'memberscontainer/ruzaidin', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-13 07:34:06', '2011-11-25 04:27:48', 0, ''),
(67, 'MembersContainer', 'content', 1, -1, 16, 15, '00015', 0, 'MembersContainer', 'memberscontainer', 0, NULL, 'html', 1, 1, '67', 'memberscontainer', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-13 07:42:57', '2011-11-13 07:42:57', 0, ''),
(68, 'Mr.Mohammad Aswan', 'content', 1, 67, 23, 4, '00015.00004', 0, 'aswan', 'aswan', 0, NULL, 'html', 1, 1, '67.68', 'memberscontainer/aswan', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-13 07:44:50', '2011-11-25 04:28:00', 0, ''),
(70, 'PengurusContainer', 'content', 1, -1, 16, 17, '00017', 0, 'PengurusContainer', 'penguruscontainer', 0, NULL, 'html', 1, 1, '70', 'penguruscontainer', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:06:51', '2011-11-16 07:06:51', 0, ''),
(71, 'zulkifli', 'content', 1, 70, 23, 1, '00017.00001', 0, 'zulkifli', 'zulkifli', 1, NULL, 'html', 1, 1, '70.71', 'penguruscontainer/zulkifli', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:09:23', '2011-11-19 04:19:37', 0, ''),
(72, 'herliyansaleh', 'content', 1, 70, 23, 2, '00017.00002', 0, 'herliyansaleh', 'herliyansaleh', 1, NULL, 'html', 1, 1, '70.72', 'penguruscontainer/herliyansaleh', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:14:20', '2011-11-19 04:20:01', 0, ''),
(73, 'suhardiduka', 'content', 1, 70, 23, 3, '00017.00003', 0, 'suhardiduka', 'suhardiduka', 1, NULL, 'html', 1, 1, '70.73', 'penguruscontainer/suhardiduka', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:14:49', '2011-11-19 03:51:08', 0, ''),
(74, 'idabagus', 'content', 1, 70, 23, 4, '00017.00004', 0, 'idabagus', 'idabagus', 1, NULL, 'html', 1, 1, '70.74', 'penguruscontainer/idabagus', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:15:04', '2011-11-19 03:51:31', 0, ''),
(75, 'abdullah', 'content', 1, 70, 23, 5, '00017.00005', 0, 'abdullah', 'abdullah', 1, NULL, 'html', 1, 1, '70.75', 'penguruscontainer/abdullah', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:15:20', '2011-11-19 04:18:04', 0, ''),
(76, 'samsulashar', 'content', 1, 70, 23, 6, '00017.00006', 0, 'samsulashar', 'samsulashar', 1, NULL, 'html', 1, 1, '70.76', 'penguruscontainer/samsulashar', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:15:33', '2011-11-19 04:19:06', 0, ''),
(77, 'ritawidya', 'content', 1, 70, 23, 7, '00017.00007', 0, 'ritawidya', 'ritawidya', 1, NULL, 'html', 1, 1, '70.77', 'penguruscontainer/ritawidya', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:15:45', '2011-11-19 03:52:10', 0, ''),
(78, 'rycko', 'content', 1, 70, 23, 8, '00017.00008', 0, 'rycko', 'rycko', 1, NULL, 'html', 1, 1, '70.78', 'penguruscontainer/rycko', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-16 07:15:55', '2011-11-19 03:52:38', 0, ''),
(80, 'Login', 'content', 1, -1, 16, 18, '00018', 0, 'LOGIN', 'login', 1, NULL, 'html', 1, 1, '80', 'login', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-21 04:06:20', '2011-11-30 03:40:06', 0, ''),
(81, 'Submit News', 'content', 1, -1, 16, 20, '00020', 0, 'submitnews', 'submitnews', 0, NULL, 'html', 1, 0, '81', 'submitnews', '__feu_date__,content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar', '{cms_init_editor} ', '', '', '', 1, '2011-11-21 08:27:16', '2011-12-12 06:42:14', 0, ''),
(82, 'Register', 'content2', 1, -1, 16, 21, '00021', 0, 'Register', 'register', 0, NULL, 'html', 1, 1, '82', 'register', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-23 02:48:04', '2011-11-23 07:38:15', 0, ''),
(83, 'New Comment', 'content', 1, -1, 23, 22, '00022', 0, 'newcomment', 'newcomment', 0, NULL, 'html', 1, 1, '83', 'newcomment', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-23 09:01:53', '2011-12-11 18:05:47', 0, ''),
(84, 'Mr. Muzni Zakaria', 'content', 1, 67, 23, 5, '00015.00005', 0, 'muzni', 'muzni', 0, NULL, 'html', 1, 1, '67.84', 'memberscontainer/muzni', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 04:10:09', '2011-11-25 04:55:16', 0, ''),
(85, 'Mr. Said Alkhudri', 'content', 1, 67, 23, 6, '00015.00006', 0, 'said', 'said', 0, NULL, 'html', 1, 1, '67.85', 'memberscontainer/said', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 04:18:33', '2011-11-25 04:55:31', 0, ''),
(86, 'Ms. Rita Widyasari', 'content', 1, 67, 23, 7, '00015.00007', 0, 'rita', 'rita', 0, NULL, 'html', 1, 1, '67.86', 'memberscontainer/rita', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 04:22:52', '2011-11-25 04:56:07', 0, ''),
(87, 'Mr. Machmudan', 'content', 1, 67, 23, 8, '00015.00008', 0, 'machmudan', 'machmudan', 0, NULL, 'html', 1, 1, '67.87', 'memberscontainer/machmudan', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 04:23:07', '2011-11-25 04:56:29', 0, ''),
(88, 'Mr. Erry Nuradi', 'content', 1, 67, 23, 9, '00015.00009', 0, 'errynuradi', 'errynuradi', 0, NULL, 'html', 1, 1, '67.88', 'memberscontainer/errynuradi', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 04:29:52', '2011-11-25 04:56:41', 0, ''),
(89, 'Mr. Taufik Batubara', 'content', 1, 67, 23, 10, '00015.00010', 0, 'taufik', 'taufik', 0, NULL, 'html', 1, 1, '67.89', 'memberscontainer/taufik', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 04:30:12', '2011-11-25 04:56:59', 0, ''),
(91, 'Mr. Suhardi Duka', 'content', 1, 67, 23, 11, '00015.00011', 0, 'suhardi', 'suhardi', 0, NULL, 'html', 1, 1, '67.91', 'memberscontainer/suhardi', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:31:43', '2011-11-25 07:32:29', 0, ''),
(92, 'Mr. Junda Maulana', 'content', 1, 67, 23, 12, '00015.00012', 0, 'junda', 'junda', 0, NULL, 'html', 1, 1, '67.92', 'memberscontainer/junda', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:32:03', '2011-11-25 07:32:51', 0, ''),
(93, 'Mr. Abdullah Azwar Anas', 'content', 1, 67, 23, 13, '00015.00013', 0, 'abdullahaswar', 'abdullahaswar', 0, NULL, 'html', 1, 1, '67.93', 'memberscontainer/abdullahaswar', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:46:42', '2011-11-25 07:47:20', 0, ''),
(94, 'Mr. Agus Siswanto', 'content', 1, 67, 23, 14, '00015.00014', 0, 'agus', 'agus', 0, NULL, 'html', 1, 1, '67.94', 'memberscontainer/agus', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:47:34', '2011-11-25 07:47:52', 0, ''),
(95, 'Mr. Mangindar Simbolon', 'content', 1, 67, 23, 15, '00015.00015', 0, 'mangindar', 'mangindar', 0, NULL, 'html', 1, 1, '67.95', 'memberscontainer/mangindar', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:52:11', '2011-11-25 07:53:41', 0, ''),
(96, 'Mr. Hotraja Sitanggang', 'content', 1, 67, 23, 16, '00015.00016', 0, 'hotraja', 'hotraja', 0, NULL, 'html', 1, 1, '67.96', 'memberscontainer/hotraja', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:52:42', '2011-11-25 07:54:45', 0, ''),
(97, 'Mr. Herliyan Saleh', 'content', 1, 67, 23, 17, '00015.00017', 0, 'herliyan', 'herliyan', 0, NULL, 'html', 1, 1, '67.97', 'memberscontainer/herliyan', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:54:35', '2011-11-25 07:55:16', 0, ''),
(98, 'Mr. Jondi Indra Bustian', 'content', 1, 67, 23, 18, '00015.00018', 0, 'jondi', 'jondi', 0, NULL, 'html', 1, 1, '67.98', 'memberscontainer/jondi', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 07:55:32', '2011-11-25 07:55:54', 0, ''),
(99, 'Mr. Arifin Junaidi', 'content', 1, 67, 23, 19, '00015.00019', 0, 'arifin', 'arifin', 0, NULL, 'html', 1, 1, '67.99', 'memberscontainer/arifin', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:08:31', '2011-11-25 08:16:10', 0, ''),
(100, 'Mr. Syamsul Syair', 'content', 1, 67, 23, 20, '00015.00020', 0, 'syamsul', 'syamsul', 0, NULL, 'html', 1, 1, '67.100', 'memberscontainer/syamsul', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:09:09', '2011-11-25 08:15:58', 0, ''),
(101, 'Mr. Sukmawijaya', 'content', 1, 67, 23, 21, '00015.00021', 0, 'sukmawijaya', 'sukmawijaya', 0, NULL, 'html', 1, 1, '67.101', 'memberscontainer/sukmawijaya', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:09:56', '2011-11-25 08:35:29', 0, ''),
(102, 'Mr. Dody Achdiyat Somantri', 'content', 1, 67, 23, 22, '00015.00022', 0, 'dody', 'dody', 0, NULL, 'html', 1, 1, '67.102', 'memberscontainer/dody', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:10:42', '2011-11-25 08:15:24', 0, ''),
(103, 'Mr. Ida Bagus Rai Dharmawijaya Mantra', 'content', 1, 67, 23, 23, '00015.00023', 0, 'idabagusrai', 'idabagusrai', 0, NULL, 'html', 1, 1, '67.103', 'memberscontainer/idabagusrai', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:13:18', '2011-11-25 08:14:59', 0, ''),
(104, 'Mr. I Gusti Putu Anindya Putra', 'content', 1, 67, 23, 24, '00015.00024', 0, 'igusti', 'igusti', 0, NULL, 'html', 1, 1, '67.104', 'memberscontainer/igusti', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:14:03', '2011-11-25 08:14:52', 0, ''),
(105, 'Mr. Zulkifli Muhadli', 'content', 1, 67, 23, 25, '00015.00025', 0, 'zulkiflimuhadli', 'zulkiflimuhadli', 0, NULL, 'html', 1, 1, '67.105', 'memberscontainer/zulkiflimuhadli', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:32:18', '2011-11-25 08:34:50', 0, ''),
(106, 'Mr. Amry Rakhman', 'content', 1, 67, 23, 26, '00015.00026', 0, 'amry', 'amry', 0, NULL, 'html', 1, 1, '67.106', 'memberscontainer/amry', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:34:21', '2011-11-25 08:34:41', 0, ''),
(107, 'Mr. Rendra Kresna', 'content', 1, 67, 23, 27, '00015.00027', 0, 'rendra', 'rendra', 0, NULL, 'html', 1, 1, '67.107', 'memberscontainer/rendra', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:45:26', '2011-11-25 09:57:17', 0, ''),
(108, 'Mr. Nehruddin', 'content', 1, 67, 23, 28, '00015.00028', 0, 'nehruddin', 'nehruddin', 0, NULL, 'html', 1, 1, '67.108', 'memberscontainer/nehruddin', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:46:53', '2011-11-25 08:47:20', 0, ''),
(109, 'Mr. Burhan Abdurrahman', 'content', 1, 67, 23, 29, '00015.00029', 0, 'burhan', 'burhan', 0, NULL, 'html', 1, 1, '67.109', 'memberscontainer/burhan', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:49:53', '2011-11-25 08:50:08', 0, ''),
(110, 'Mr. Said Assegaf', 'content', 1, 67, 23, 30, '00015.00030', 0, 'assegaf', 'assegaf', 0, NULL, 'html', 1, 1, '67.110', 'memberscontainer/assegaf', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 08:50:20', '2011-11-25 08:50:43', 0, ''),
(111, 'Mr. Sambari Halim Radianto', 'content', 1, 67, 23, 31, '00015.00031', 0, 'sambari', 'sambari', 0, NULL, 'html', 1, 1, '67.111', 'memberscontainer/sambari', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 09:09:48', '2011-11-25 09:10:24', 0, ''),
(112, 'Mr. Bambang Isdianto', 'content', 1, 67, 23, 32, '00015.00032', 0, 'bambang', 'bambang', 0, NULL, 'html', 1, 1, '67.112', 'memberscontainer/bambang', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 09:12:50', '2011-11-25 09:13:40', 0, ''),
(113, 'Mr. Samsul Ashar', 'content', 1, 67, 23, 33, '00015.00033', 0, 'samsul', 'samsul', 0, NULL, 'html', 1, 1, '67.113', 'memberscontainer/samsul', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 09:55:41', '2011-11-25 09:55:57', 0, ''),
(114, 'Mr. Rahmad Hari Basuki', 'content', 1, 67, 23, 34, '00015.00034', 0, 'rahmad', 'rahmad', 0, NULL, 'html', 1, 1, '67.114', 'memberscontainer/rahmad', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-25 09:56:10', '2011-11-25 09:56:28', 0, ''),
(116, 'PopupCommentPage', 'content', 1, -1, 23, 23, '00023', 0, 'popupcommentpage', 'popupcommentpage', 0, NULL, 'html', 1, 0, '116', 'popupcommentpage', 'target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en', '{* Add code here that should appear in the metadata section of all new pages *}', '', '', '', 1, '2011-11-29 04:26:57', '2011-11-30 04:17:27', 0, ''),
(118, '--------', 'separator', 1, -1, 16, 1, '00001', 0, '--------', '', 1, NULL, 'html', 1, 1, '118', '', 'extra1,extra2,extra3,thumbnail,image,target', '', '', '', '', 1, '2011-11-30 04:17:23', '2011-11-30 04:49:10', 0, ''),
(119, '--------', 'separator', 1, -1, 16, 11, '00011', 0, '--------', '', 1, NULL, 'html', 1, 1, '119', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:49:44', '2011-11-30 04:49:44', 0, ''),
(120, '--------', 'separator', 1, -1, 16, 16, '00016', 0, '--------', '', 1, NULL, 'html', 1, 1, '120', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:49:52', '2011-11-30 04:49:52', 0, ''),
(121, '--------', 'separator', 1, -1, 16, 13, '00013', 0, '--------', '', 1, NULL, 'html', 1, 1, '121', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:49:58', '2011-11-30 04:49:58', 0, ''),
(122, '--------', 'separator', 1, -1, 16, 3, '00003', 0, '--------', '', 1, NULL, 'html', 1, 1, '122', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:50:06', '2011-11-30 04:50:06', 0, ''),
(123, '--------', 'separator', 1, -1, 16, 7, '00007', 0, '--------', '', 1, NULL, 'html', 1, 1, '123', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:51:54', '2011-11-30 04:51:54', 0, ''),
(124, '--------', 'separator', 1, -1, 16, 9, '00009', 0, '--------', '', 1, NULL, 'html', 1, 1, '124', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:52:01', '2011-11-30 04:52:01', 0, ''),
(125, '--------', 'separator', 1, -1, 16, 5, '00005', 0, '--------', '', 1, NULL, 'html', 1, 1, '125', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:52:07', '2011-11-30 04:52:07', 0, ''),
(126, '--------', 'separator', 1, -1, 16, 19, '00019', 0, '--------', '', 1, NULL, 'html', 1, 1, '126', '', 'target,image,thumbnail,extra1,extra2,extra3', '', '', '', '', 1, '2011-11-30 04:53:26', '2011-11-30 04:53:26', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_props`
--

DROP TABLE IF EXISTS `cms_content_props`;
CREATE TABLE IF NOT EXISTS `cms_content_props` (
  `content_id` int(11) default NULL,
  `type` varchar(25) default NULL,
  `prop_name` varchar(255) default NULL,
  `param1` varchar(255) default NULL,
  `param2` varchar(255) default NULL,
  `param3` varchar(255) default NULL,
  `content` text,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  KEY `cms_index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content_props`
--

INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(31, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(32, 'string', 'content_en', NULL, NULL, NULL, 'asdf', '2006-07-25 21:22:31', '2006-07-25 21:22:31'),
(15, 'string', 'target', '', '', '', '', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 03:41:16'),
(65, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:27:40'),
(15, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-30 03:41:16'),
(15, 'string', 'image1', '', '', '', 'uploads/images/logo1.gif', NULL, '2011-11-30 03:41:16'),
(65, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/ismanimran.jpg" alt="" width="100" /><strong>Mr. Isman Imran </strong>was born in Kemang on August 16, 1961. He joined civil service right after he graduated from college in 1989. He was named the Head Organizational Section of Agam District in 1996. During his tenure at Pasaman District he was assigned to conduct feasibility study of the proliferation (<em>pemekaran</em>) plan of Pasaman District, as a result in 2003, Pasaman District was subdivided into two districts: Pasaman and West Pasaman. He was transferred from Pasaman to Agam District in 2006, and got promoted to the position of Head of <em>Bappeda </em>of Agam District.</p>', NULL, '2011-11-25 04:27:40'),
(15, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-30 03:41:16'),
(66, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:27:48'),
(66, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/ruzaidin.jpg" alt="" width="100" /><strong>Mr. Ruzaidin Noor </strong>was born in Martapura on December 22, 1951. He graduated from APDN (<em>Akademi Pemerintahan Dalam Negeri </em>or Academy for Local Government), a college to train local government official candidates in 1975. He joined the South Kalimantan Provincial government right after he graduate from APDN. He was transferred to Banjarmansin Municipality in 1978. He was promoted to the position of Assistant for Developmental Administration in 1998. During the New Order era, he was active as Golkar functionary in Banjarmansin chapter.</p>\r\n<p>Following the formation of Banjarbaru, he was transferred to the new municipality, where he served as the acting municipality secretary from 1999 to 2001. Beginning in 2001, he became the municipality secretary. As a career bureaucrat, he successfully got elected as vice-mayor in 2005, and he was elected as Mayor of Banjarbaru in the 2010 direct local elections.</p>', NULL, '2011-11-25 04:27:48'),
(67, 'string', 'target', '', '', '', '', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'image', '', '', '', '-1', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'extra1', '', '', '', '', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'extra2', '', '', '', '', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'extra3', '', '', '', '', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'searchable', '', '', '', '0', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-13 07:42:57'),
(67, 'string', 'content_en', '', '', '', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2011-11-13 07:42:57'),
(56, 'string', 'target', '', '', '', '', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-30 03:39:18'),
(56, 'string', 'content_en', '', '', '', '<div>\r\n<p>{Gallery template="Fancybox"}</p>\r\n</div>', NULL, '2011-11-30 03:39:18'),
(60, 'string', 'content_en', '', '', '', '    {literal}\r\n    <script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n    <script type="text/javascript" src="uploads/popup/js/thickbox.js"></script>\r\n    {/literal}\r\n    <table width="100%" border="0" cellspacing="5" cellpadding="0">\r\n        <tr>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''herliyansaleh''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/herliyan_saleh.jpg" alt="" width="100px" /><strong>Herliyan Saleh</strong><br /> <br /> District Head of Bengkalis District, Riau\r\n                    </div>\r\n                </a>\r\n            </td>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''idabagus''}" class="thickbox">\r\n                    <div id="borderbox"><img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/ida_bagus.jpg" alt="" width="100px" /><strong>Mr. Ida Bagus Rai Dharmawijaya</strong><br /> <br /> District Head of Bengkalis District, Riau\r\n                    </div>\r\n                </a>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''suhardiduka''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/suhardi_duka.jpg" alt="" width="100px" /><strong>Suhardi Duka</strong><br /> <br /> District Head of Mamuju, West Sulawesi\r\n                    </div>\r\n                </a>\r\n            </td>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''zulkifli''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/zulkifli.jpg" alt="" width="100px" /><strong>Mr. Zulkifli Muhadli</strong><br /> <br /> District Head of Mamuju, West Sulawesi\r\n                    </div>\r\n                </a>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''abdullah''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/abdullah.jpg" alt="" width="100px" /><strong>Mr. Abdullah Azwar Anas</strong><br /> <br /> District Head of Banyuwangi, East Java\r\n                    </div>\r\n                </a>\r\n            </td>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''samsulashar''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/samsul_ashar.jpg" alt="" width="100px" /><strong>Mr. Samsul Ashar</strong><br /> <br /> Mayor of Kediri\r\n                    </div>\r\n                </a>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''ritawidya''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/rita_widyasari.jpg" alt="" width="100px" /><strong>Mrs. Rita Widyasari</strong><br /> <br /> District Head of Kutai Kertanegara District, East Kalimantan\r\n                    </div>\r\n                </a>\r\n            </td>\r\n            <td width="50%">\r\n                <a href="{cms_selflink href=''rycko''}" class="thickbox">\r\n                    <div id="borderbox">\r\n                        <img style="float: left; margin-right: 10px; margin-bottom: 10px;" src="uploads/images/pengurus/rycko.jpg" alt="" width="100px" /><strong>Mr. Rycko Menoza</strong><br /> <br /> District Head of South Lampung, Lampung\r\n                    </div>\r\n                </a>\r\n            </td>\r\n        </tr>\r\n    </table>', NULL, '2011-12-09 02:20:11'),
(118, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:17:23'),
(118, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:17:23'),
(118, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:17:23'),
(119, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:49:44'),
(119, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:49:44'),
(119, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:49:44'),
(119, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:49:44'),
(119, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:49:44'),
(119, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:49:44'),
(120, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:49:52'),
(120, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:49:52'),
(120, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:49:52'),
(120, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:49:52'),
(120, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:49:52'),
(120, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:49:52'),
(121, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:49:58'),
(121, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:49:58'),
(121, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:49:58'),
(121, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:49:58'),
(121, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:49:58'),
(121, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:49:58'),
(122, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:50:06'),
(122, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:50:06'),
(122, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:50:06'),
(122, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:50:06'),
(122, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:50:06'),
(122, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:50:06'),
(123, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:51:54'),
(123, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:51:54'),
(123, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:51:54'),
(123, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:51:54'),
(123, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:51:54'),
(123, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:51:54'),
(124, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:52:01'),
(124, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:52:01'),
(124, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:52:01'),
(124, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:52:01'),
(124, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:52:01'),
(124, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:52:01'),
(125, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:52:07'),
(125, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:52:07'),
(125, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:52:07'),
(125, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:52:07'),
(125, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:52:07'),
(125, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:52:07'),
(126, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:53:26'),
(126, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:53:26'),
(126, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:53:26'),
(126, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 04:53:26'),
(126, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 04:53:26'),
(126, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 04:53:26'),
(62, 'string', 'Sidebar', '', '', '', '', NULL, '2011-12-12 03:10:40'),
(58, 'string', 'target', '', '', '', '', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-30 03:39:02'),
(58, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-30 03:39:02'),
(59, 'string', 'target', '', '', '', '', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-30 03:39:10'),
(59, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-30 03:39:10'),
(70, 'string', 'target', '', '', '', '', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'image', '', '', '', '-1', NULL, '2011-11-16 07:06:51'),
(60, 'string', 'target', '', '', '', '', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'image', '', '', '', '-1', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'extra1', '', '', '', '', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'extra2', '', '', '', '', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'extra3', '', '', '', '', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'searchable', '', '', '', '1', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'pagedata', '', '', '', '', NULL, '2011-12-09 02:20:11'),
(60, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-12-09 02:20:11'),
(71, 'string', 'target', '', '', '', '', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 04:19:37'),
(61, 'string', 'target', '', '', '', '', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'image', '', '', '', '-1', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'extra1', '', '', '', '', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'extra2', '', '', '', '', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'extra3', '', '', '', '', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'searchable', '', '', '', '1', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'pagedata', '', '', '', '', NULL, '2011-12-11 14:46:27'),
(61, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-12-11 14:46:27'),
(62, 'string', 'target', '', '', '', '', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'image', '', '', '', '-1', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'extra1', '', '', '', '', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'extra2', '', '', '', '', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'extra3', '', '', '', '', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'searchable', '', '', '', '1', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'pagedata', '', '', '', '', NULL, '2011-12-12 03:10:40'),
(62, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-12-12 03:10:40'),
(59, 'string', 'content_en', '', '', '', '<p>Pada tanggal 6 Oktober 2011, bertempat di Gedung Research Triangle Institute (RTI) atas prakarsa peserta dan difasilitasi Badan Diklat Kemendagri telah dibentuk Forum Transformasi Indonesia (FTI) sebagai salah satu jaringan bagi seluruh Alumni Transforming Leader in Indonesia untuk terus berkomunikasi membina dan mengembangkan kapasitas guna percepatan transformasi pemerintahan daerah di Indonesia. Secara umum, FTI bertujuan untuk memberikan fasilitasi kajian penelitian untuk mendukung pengambilan kebijakan dengan kegiatan utama pelaksanaan kajian kebijakan, penerbitan, pembentukan network secara global dan pemberian penghargaan kepada pelaku. Pada saat yang bersamaan telah dibentuk Presidium Kepengurusan yang terdiri dari 4 Ketua, Sekretaris Jenderal, Wakil Sekretaris Jenderal, Bendahara dan Wakil Bendahara.</p>\r\n<p>Beberapa kebijakan yang telah ditetapkan untuk mendukung pencapaian tujuan FTI diantaranya:</p>\r\n<p>a)      Sekretariat beralamat di Badan Pendidikan dan Pelatihan Kemendagri, Jl. Pahlawan Nomor 8 Kalibata Jakarta Selatan dan Jl. Cimahi Nomor 10, Menteng, Jakarta Pusat</p>\r\n<p>b)      Organisasi bersifat independen</p>\r\n<p>c)       Menjadi organisasi yang akan memberikan masukan kajian kebijakan</p>\r\n<p>d)      Melaksanakan kerjasama dengan Perguruan Tinggi di Indonesia</p>\r\n<p>e)      Memberikan penugasan kepada 3 (tiga) narasumber utama yaitu Bapak Dr. Wahyudi Kumorotomo, Dr. Achmadi Ringoringo dan Prof. Dr. Eko Prasojo untuk mendesain garis besar organisasi;</p>\r\n<p>f)       Akan menunjuk dan menetapkan Sekretaris Executive untuk melaksanakan administrasi organisasi sehari-hari dan untuk membantu Pengurus Organisasi.</p>\r\n<p> </p>\r\n<p>(<strong>Yusharto, Kabid Otda dan PUM, Badan Diklat Kemendagri</strong>)</p>', NULL, '2011-11-30 03:39:10'),
(64, 'string', 'content_en', '', '', '', '<div><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/indracatri.jpg" alt="" width="100" /></div>\r\n<div><span style="font-size: 20px; font-weight: bold; text-decoration: underline;"><strong><strong>Mr. Indra Catri </strong></strong></span></div>\r\n<div><strong><strong></strong>District Head of Agam, West Sumatera </strong></div>\r\n<div>Jalan Piliang No.1, Lubuk Basung</div>\r\n<div>West Sumatera, Indonesia</div>\r\n<div>Phone:</div>\r\n<div>+62752 76300-2</div>\r\n<div>+62816 358333</div>\r\n<p> </p>\r\n<div style="text-align: justify;">Born in Bukittingi on April 4, 1961. After obtainin his bachelor degree from the Department of Regional Planning of Bandung Institute of Technology (ITB) in 1987, he joined civil service at the Padang Municipality Bappeda (Local Planning Agency) in 1990. He was transferred to various positions at the Padang Municipality office. He was named the Head of Bappeda Padang Municipality in 2008, previously he served as the Assistant for People’s Welfare Affairs at the Padang Municipality.</div>\r\n<div style="text-align: justify;"> </div>\r\n<div style="text-align: justify;">He run for District Head of Agam in 2005, but he lost. He run again in the 2010 Agam local election and elected. As a newly elected district head, Indra Catri’s endeavor is to improve the economic infrastructure, minimize leaks in local public finance and to enhance human resources’ capacity.</div>', NULL, '2011-12-14 06:54:55'),
(68, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:28:00'),
(68, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/aswan.jpg" alt="" width="100" /> <strong>Mr. Mohammad Aswan</strong> was born in Banjarbaru on September 19, 1962. He built his career in local government bureaucracy in Tanah Laut District, South Kalimantan Province, immediately after graduating from Hasanuddin University in 1989. He served as Sub-district Head (<em>camat</em>) of Kurau in Tanah Laut Disrict from 2001 to 2002. After the formation of Banjarbaru Municipality, he moved to the new municipality and served as the Head of Economic Affairs. Meanwhile he pursued his master degree in public administration at Gadjah Mada University in 1995 and doctorate degree in public administration at Brawijaya University in 2008. He was named Head of <em>Bappeda </em>of Banjarbaru municipality in 2010.</p>', NULL, '2011-11-25 04:28:00'),
(58, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-30 03:39:02'),
(59, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-30 03:39:10'),
(61, 'string', 'Sidebar', '', '', '', '', NULL, '2011-12-11 14:46:27'),
(56, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-30 03:39:18'),
(64, 'string', 'target', '', '', '', '', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'image', '', '', '', '-1', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'extra1', '', '', '', '', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'extra2', '', '', '', '', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'extra3', '', '', '', '', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'searchable', '', '', '', '1', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'pagedata', '', '', '', '', NULL, '2011-12-14 06:54:55'),
(64, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-12-14 06:54:55'),
(65, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:27:40'),
(64, 'string', 'Sidebar', '', '', '', '', NULL, '2011-12-14 06:54:55'),
(65, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:27:40'),
(65, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:27:40'),
(58, 'string', 'content_en', '', '', '', '<p>{news number=''5''}</p>\r\n<p><a href="{cms_selflink href=''submitnews''}">Submit News</a></p>', NULL, '2011-11-30 03:39:02'),
(70, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'extra1', '', '', '', '', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'extra2', '', '', '', '', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'extra3', '', '', '', '', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-16 07:06:51'),
(70, 'string', 'content_en', '', '', '', '<p> </p>\r\n<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2011-11-16 07:06:51'),
(71, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 04:19:37'),
(71, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/zulkifli.jpg" alt="" width="120" /><strong>Mr. Zulkifli Muhadli</strong></h3>\r\n<p>District Head of Sumbawa Barat, West of Nusa Tenggara<br /> Jalan Bung Karno No. 3, Taliwang<br /> West of Nusa Tenggara, Indonesia<br /> +62372 81001<br /> +62812 3891799<br /> +62812 31304233<br /> Email: zulkiflimuhadli@gmail.com</p>\r\n\r\n<p>Born in Taliwang, West Sumbawa on May 14, 1958. Before joining politics, Zulkifli was a kiai (Islamic cleric). In 1984 Zulkifli helped to found Pondok Pesantren (Islamic boarding school) Al-Ikhlas in Taliwang. Twenty years later, in 2004, he helped to establish Cordova University, the first university in the district. Zulkifli Muhadli played substantial role in the endeavor of establishing the District of West Sumbawa, which previously was part of Sumbawa District. He was named as the chair of Committee for the Formation of West Sumbawa District (Panitia Pembentukan Kabupaten Sumbawa Barat). Aside from being a popular kiai (Islamic cleric) who serves in various Islamic organizations and propagation (dakwah), he has been known as brilliant intellectual and seasoned businessman. He was democratically elected as the first District Head of West Sumbawa in the pemilukada (local district head elections) in 2005. He was reelected for the second term in 2010. As a district head, Zulkifli Muhadli is known for his pro-people and fulfillment of basic needs policies.</p>', NULL, '2011-11-19 04:19:37'),
(15, 'string', 'content_en', '', '', '', '<p>{getLatestImages} {Showtime show=''1''}</p>', NULL, '2011-11-30 03:41:16'),
(118, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 04:17:23'),
(118, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 04:17:23'),
(118, 'string', 'target', '', '', '', '', NULL, '2011-11-30 04:17:23'),
(81, 'string', '__feu_date__', '', '', '', 'a:1:{s:6:"groups";a:1:{i:0;s:1:"1";}}', NULL, '2011-12-12 06:42:14'),
(82, 'string', 'target', '', '', '', '', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'image', '', '', '', '-1', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'extra1', '', '', '', '', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'extra2', '', '', '', '', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'extra3', '', '', '', '', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-23 07:38:15'),
(82, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-23 07:38:15'),
(83, 'string', 'target', '', '', '', '', NULL, '2011-12-11 18:05:47'),
(82, 'string', 'content_en', '', '', '', '<p>{cms_module module=SelfRegistration group=Member}</p>', NULL, '2011-11-23 07:38:15'),
(81, 'string', 'content_en', '', '', '', '{FrontEndUsers form="silent"} \r\n{if isset($username)} \r\n{* logged in, display news submission form *} \r\n{news action="fesubmit"} \r\n{else} \r\n{* not logged in, display login form *} \r\n{FrontEndUsers returnto="submitnews"} \r\n{/if}', NULL, '2011-12-12 06:42:14'),
(83, 'string', 'image', '', '', '', '-1', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'extra1', '', '', '', '', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'extra2', '', '', '', '', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'extra3', '', '', '', '', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'searchable', '', '', '', '1', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'pagedata', '', '', '', '', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'Sidebar', '', '', '', '', NULL, '2011-12-11 18:05:47'),
(83, 'string', 'content_en', '', '', '', '{current_page_id} {CGFeedback key2=$currpageid  destpage="news"}', NULL, '2011-12-11 18:05:47'),
(15, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 03:41:16'),
(72, 'string', 'target', '', '', '', '', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 04:20:01'),
(72, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 04:20:01'),
(73, 'string', 'target', '', '', '', '', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 03:51:08'),
(73, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 03:51:08'),
(74, 'string', 'target', '', '', '', '', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 03:51:31'),
(74, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 03:51:31'),
(75, 'string', 'target', '', '', '', '', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 04:18:04'),
(75, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/abdullah.jpg" alt="" width="120" /><strong>Mr. Abdullah Azwar Anas</strong></h3>\r\n<p>District Head of Banyuwangi, East Java<br /> Jl. Ahmad Yani No. 100,<br /> Banyuwangi East Java, Indonesia<br /> +62333 42500<br /> +62333 418333<br /> +62815 9667255<br /> Email: abdullahazwaranas@yahoo.com</p>\r\n<p>Born in Banyuwangi on August 6, 1973. He was trained in several Islamic boarding schools in East Java and later on enrolled at the University of Indonesia, Jakarta. He has been active in Nahdathul Ulama (NU)?s affiliated youth organizations such as IPNU (Ikatan Putra Nahdathul Ulama or Association of Nahdathul Ulama?s Sons) and Gerakan Pemuda Anshor (Anshor Youth Movement). In was member of MPR (Majelis Permusyawaratan Rakyat or People?s Consultative Assembly) from 1997 to 1999. Following the downfall of the New Order, he joined PKB (National Awakening Party) which is closely affiliated to Nahdathul Ulama. He was elected as Member of Parliament in 2004 legislative elections. He was elected as the District Head of his home district Banyuwangi in 2010. He was also elected as the Chair of Anshor Youth Movement in 2011.</p>', NULL, '2011-11-19 04:18:04'),
(76, 'string', 'target', '', '', '', '', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 04:19:06'),
(76, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 04:19:06'),
(77, 'string', 'target', '', '', '', '', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 03:52:10'),
(77, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/rita_widyasari.jpg" alt="" width="120" /><strong>Mrs. Rita Widyasari</strong></h3>\r\n<p>District Head of Kutai Kertanegara District, East Kalimantan<br /> Jl. Wolter Monginsidi No.1 , Tenggarong<br /> East Kalimantan, Indonesia<br /> +62541 624018<br /> +62811 5331117</p>', NULL, '2011-11-19 03:52:10'),
(78, 'string', 'target', '', '', '', '', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'image', '', '', '', '-1', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'extra1', '', '', '', '', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'extra2', '', '', '', '', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'extra3', '', '', '', '', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-19 03:52:38'),
(78, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-19 03:52:38'),
(58, 'string', '__feu_date__', '', '', '', 'a:1:{s:6:"groups";a:1:{i:0;s:1:"1";}}', NULL, '2011-11-30 03:39:02'),
(62, 'string', '__feu_date__', '', '', '', 'a:1:{s:6:"groups";a:1:{i:0;s:1:"1";}}', NULL, '2011-12-12 03:10:40'),
(72, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/herliyan_saleh.jpg" alt="" width="120" /> <strong>Mr. Herliyan Saleh</strong></h3>\r\n<p><br /> District Head of Bengkalis District, Riau <br /> Jl. Antara No. 451, <br /> Bengkalis Riau, Indonesia <br /> +62766 22224 <br /> +62852 71016161</p>\r\n\r\n<p>Born in Lubuk Muda on March 25, 1959. Upon graduating from Bogor Institute of Agriculture, he joined civil service in Bengkalis District, he was assigned as the Head of Economic Section of Bengkalis Local Planning Agency (Bappeda) and then promoted to the position of Bappeda Secretary. He pursued his master degree in planning at University of Tennessee, Knoxville in 1992. As a seasoned regional planning, he develops the ideas of village empowerment and palm oil downstream industry cluster that has been the policy of Riau Province government. He was democratically elected as Bengkalis District Head in 2010. He also currently serves as the Chair of National Mandate Party (PAN) Bengkalis Chapter.</p>', NULL, '2011-11-19 04:20:01'),
(74, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/ida_bagus.jpg" alt="" width="120" /> <strong>Mr. Ida Bagus Rai Dharmawijaya </strong></h3>\r\n<p>Mayor of Denpasar, Bali<br /> Jl. Gajah Mada No. 1 Denpasar, Indonesia<br /> +62361 221530<br /> +62361243831<br /> +628123878700</p>\r\n<p>Email: ibraimantra@gmail.com</p>', NULL, '2011-11-19 03:51:31'),
(73, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/suhardi_duka.jpg" alt="" width="120" /> <strong>Mr. Suhardi Duka</strong></h3>\r\n<p>District Head of Mamuju, West Sulawesi<br /> Jl. Soekarno Hatta Mamuju,?Indonesia<br /> +62426 21101<br /> +62815 24001962</p>', NULL, '2011-11-19 03:51:08'),
(76, 'string', 'content_en', '', '', '', '<h3><img style="float: left; left; margin-right: 15px; margin-bottom: 15px;" src="uploads/images/pengurus/samsul_ashar.jpg" alt="" width="120" /><strong>Mr. Samsul Ashar</strong></h3>\r\n<p>Mayor of Kediri<br /> Jl. Basuki Rachmat No. 17<br /> Kediri, Indonesia<br /> +62354 682885<br /> +62821 39138367<br /> Email: samsulashar@gmail.com</p>\r\n\r\n<p>Born in Kediri on September 16, 1961. He is a medical doctor by training and practice. Upon graduating from medical school at Brawijaya University in 1989, he served as a junior medical doctor in Aceh Province. In 2000, he continued his study to become an internist. Beginning in 2006, he served as Deputy Director of Gambiran Public Hospital in Kediri. Samsul Ashar was democratically elected as Mayor of Kediri in 2008 local elections (pemilukada).</p>', NULL, '2011-11-19 04:19:06'),
(78, 'string', 'content_en', '', '', '', '<h3><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/pengurus/rycko.jpg" alt="" width="120" /></h3>\r\n<h3><strong>Mr. Rycko Menoza</strong></h3>\r\n<p>District Head of South Lampung, Lampung<br /> Jl. Indra Bangsawan Kalianda No. 01<br />Lampung Selatan, Lampung<br />Indonesia<br /> +62727 321001<br />+62811 721971<br /> Email: rycko@yahoo.com</p>', NULL, '2011-11-19 03:52:38'),
(60, 'string', 'Sidebar', '', '', '', '', NULL, '2011-12-09 02:20:11'),
(80, 'string', 'target', '', '', '', '', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'image', '', '', '', '-1', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'extra1', '', '', '', '', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'extra2', '', '', '', '', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'extra3', '', '', '', '', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-30 03:40:06'),
(80, 'string', 'content_en', '', '', '', '<p>{FrontEndUsers}</p>\r\n<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2011-11-30 03:40:06'),
(81, 'string', 'target', '', '', '', '', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'image', '', '', '', '-1', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'extra1', '', '', '', '', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'extra2', '', '', '', '', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'extra3', '', '', '', '', NULL, '2011-12-12 06:42:14'),
(81, 'int', 'searchable', '', '', '', '0', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'pagedata', '', '', '', '', NULL, '2011-12-12 06:42:14'),
(81, 'int', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-12-12 06:42:14'),
(81, 'string', 'Sidebar', '', '', '', '', NULL, '2011-12-12 06:42:14'),
(84, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:55:16'),
(84, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/muzni.jpg" alt="" width="100" />\r\n<strong>Mr. Muzni Zakaria </strong>was born in Muaralabuh on October 10, 1954. He was trained as an engineer at the Public Works Technological Academy in Bandung.  Upon graduating from the Public Works Technological Academy, he automatically joined the Ministry Public Works in Jakarta. Later, he pursued his master degree in engineering at Roorkee University in India in 1988. Having served for several in years at the Ministry of Public Works in Jakarta, he returned to his home province to serve at the Public Works Agency of West Sumatra. He was then transferred Sawahlunto Sijunjung District to serve as Second Assistant for Economic and Development Affairs. He was promoted to the position of Head Public Works Agency of Sawahlunto Sijunjung District in 2002. He was transferred again to Padang to serve as the Head of Public Works Agency in 2007.</p>\r\n<p>He run for district head elections in Sawahlunto Sijunjung District in 2005, but he lost in the election. He run again in local elections (<em>pemilukada</em>) in the newly created South Solok District and got elected in 2010</p>', NULL, '2011-11-25 04:55:16'),
(85, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:55:31'),
(85, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/said.jpg" alt="" width="100" /><strong>Mr. Said Alkhudri </strong>was born in Padang Sibubuk on March 22, 1965. He graduated from Andalas University majoring in animal husbandry in 1988. He joined civil service in Sijunjung District in 1989. He was promoted to the position of Head of Animal Husbandry and Fishery Agency of Sinjunjung District in 2004. Four years later, he was transferred to the position of Head of Education Agency of Sinjunjung. He was named the Head of <em>Bappeda</em> (Local Planning Agency) of the newly created South Solok District.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 04:55:31'),
(86, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:56:07'),
(86, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/rita.jpg" alt="" width="100" /><strong> <strong>Ms. Rita Widyasari </strong></strong>was born </p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 04:56:07'),
(88, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:56:41'),
(87, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:56:29'),
(87, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/machmudan.jpg" alt="" width="100" /><strong>Mr. Machmudan</strong>was born in Lamongan on March 5, 1971. He started his career in East Kalimantan Provincial Government’s Agency for Rural Development in 1994 upon he graduated from STPDN (<em>Sekolah Tinggi Pemerintahan Dalam Negeri </em>or School of Local Government Sciences) in Jatinangor in 1999. He was then transferred to Kutai District’s Agency for Rural Development. He served as the Head of Development Section at Kutai Kartanegara District from 2005 to 2009. He was then promoted to the position of the Head of Social and Cultural Department at Kutai Kartanegara District’s <em>Bapppeda. </em>Beginning in April 2011, he was promoted to the position of <em>Bappeda’s </em>Secretary in Kutai Kartanegara. He is currently pursuing his doctorate degree at Brawijaya University.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 04:56:29'),
(88, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:56:41'),
(88, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:56:41'),
(89, 'string', 'target', '', '', '', '', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/taufik.jpg" alt="" width="100" /><strong>Taufik Batubara </strong>was born in Medan on May 1, 1963. He is trained as agricultural engineer at Islamic North Sumatra University. He commenced his career as a bureaucrat at the Agricultural Agency, North Sumatra Province in 1989. Beginning in 2006 he was transferred to the newly created Serdang Bedagai District, where he served as the Head of Land Rehabilitation Section at the Forestry and Plantation Agency at Serdang Bedagai District. One year later he was promoted to the position of Economic Department Head of Serdang Bedagai Local Planning Agency (<em>Bappeda</em>). He was promoted to the Head of <em>Bappeda </em>of Serdang Bedagai in April 2008.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 04:56:59'),
(89, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 04:56:59');
INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(88, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/errynuradi.jpg" alt="" width="100" /><strong>Mr. Erry Nuradi </strong>was born in Medan on June 30, 1964. Upon graduating from electrical engineering department at University of Sumatra Utara in 1990, he built his build his career in business and at the same active in various youth organizations and business associations. He was named Deputy Chair of Golkar Party of North Sumatra Chapter in 1999 when anti-Golkar sentiments was very much prevailing following the downfall of New Order. He run for North Sumatra Local Legislature in 2004 elections, but he did not get elected.</p>\r\n<p>In the historic first direct local elections (<em>pemilukada</em>) in 2005, he was democratically elected District Head of Serdang Bedagai. Mr. Erry Nuradi believes that regional autonomy should accelerate community welfare and augment district competitiveness. As a policy maker at district level, he implements Minimum Service Standard in the field of education, health, and integrated permit system to attract investments. He was reelected as Serdang Bedagai District Head in 2010. In the same year he assumed the chairmanship of Golkar Party Chapter in Serdang Bedagai<strong><strong> <br /></strong></strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 04:56:41'),
(91, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/suhardiduka.jpg" alt="" width="100" /> <strong>Mr. Suhardi Duka </strong>was born May 10, 1962 in Mamuju. Initially he started his career in bureaucracy as a staff at the Information Agency from 1986 to 1999. He left bureaucracy and became active in political party following the end of the New Order. He was also active in various youth organizations such as in AMPI (Indonesian Young Generation for Renewal), KNPI (Indonesian Youth National Committee) and Golkar Party. He was as elected member of local legislature (DPRD) in 1997, 1999 and 2004. He became Deputy Speaker of Mamuju District Legislature in 1999 and 2004. He run for district headship in 2005, the first direct local elections, and got elected as District Head of Mamuju. He was reelected in 2010 local elections. Beginning in 2010 he served as the Head of Golkar Party Chapter of West Sulawesi Province.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:32:29'),
(91, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:32:29'),
(92, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/junda.jpg" alt="" width="100" /> <strong>Mr. Junda Maulana </strong>was born on June 8, 1971 in Makassar. He started his career in bureaucracy from the lowest ladder. Having graduated from STPDN (Local Government Institute) in Jatinangor in 1993, he was stationed at the South Sulawesi Provincial government office. He was assigned to continue his study at IIP (Institute for Government Science) in Jakarta in, and then transferred to Mamuju District government. He was named the Head of Public Order Section at Mamuju District in 2003. He was then promoted to the Assistant for Development Affairs in 2009 and to the Head of Personnel and Training and Education Agency at Mamuju District. Beginning in July 2011 he was named Acting Head of <em>Bappeda. </em>He obtained his master and doctorate degrees from Hasanuddin and Padjajaran University.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:32:51'),
(92, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:32:51'),
(93, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/abdullah.jpg" alt="" width="100" /> <strong>Mr. Abdullah Azwar Anas </strong>was born in Banyuwangi on August 6, 1973. He was trained in several Islamic boarding schools in East Java and later on enrolled at the University of Indonesia, Jakarta. He has been active in <em>Nahdathul Ulama </em>(NU)’s affiliated youth organizations such as IPNU (<em>Ikatan Putra Nahdathul Ulama </em>or Association of Nahdathul Ulama’s Sons) and <em>Gerakan Pemuda Anshor</em> (Anshor Youth Movement). In was member of MPR (<em>Majelis Permusyawaratan Rakyat</em> or People’s Consultative Assembly) from 1997 to 1999. Following the downfall of the New Order, he joined PKB (National Awakening Party), which is closely affiliated to Nahdathul Ulama. He was elected as Member of Parliament in 2004 legislative elections. He was elected as the District Head of his home district Banyuwangi in 2010. He was also elected as the Chair of Anshor Youth Movement in 2011.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:47:20'),
(93, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:47:20'),
(94, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/agus.jpg" alt="" width="100" /> <strong>Mr. Agus Siswanto </strong>was born in Banyuwangi on August 13, 1961. He built his career in local government bureaucracy. He joined the lowest ladder of bureaucracy when he was 21. Having graduated from IIP (<em>Institute Ilmu Pemerintahan </em>or Institute for Government Science) 1991, he was promoted to the position of sub-district head (<em>camat</em>) in various regions in Banyuwangi such as Pesanggrahan, Srono, Genteng, and Glagah. He was named <em>Bappeda </em>Secretary in 2010. One year later he was transferred to the position of the Head of Transportation Agency. He is projected to serve as the Head of <em>Bappeda </em>in late 2011.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:47:52'),
(94, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:47:52'),
(95, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:53:41'),
(95, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/mangindar.jpg" alt="" width="100" /><strong>Mangindar Simbolon </strong>was born in Rianate on June 21, 1957.  He got admitted without entrance test to Bogor Agricultural Institute (IPB) in 1977 because of his academic achievement. Upon graduating from Bogor Agricultural Institute majoring in forestry in 1981, he joined civil service at the North Sumatra Forestry Agency in Medan. He was assigned to oversee the Bukit Barisan Community Forest Park (<em>Taman Hutan Rakyat</em>) from 1986 to 1989. He got promoted to the Head of Forestry Agency for the regions of North Tapanuli and Tarutung in 1990, and from 1993 he served concurrently as the Head of Forestry Agency for the regions Toba Samosir. Beginning in 2002, he was appointed as the Head of Forestry and Plantation Agency of Toba Samosir District.</p>\r\n<p>Mangindar Simbolon run for district headship of the newly created Samosir District in the first ever-direct local elections (<em>pemilukada</em>) in 2005. As the district head, he developed Lake Toba Regional Management as an effort to optimize the potency and enhance the competitiveness of regions around Lake Toba. He was reelected as District Head in 2010 local elections.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:53:41'),
(96, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:54:45'),
(96, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/hotraja.jpg" alt="" width="100" /><strong> <strong>Hotraja Sitanggang</strong></strong> is an engineer by training, he joined civil service upon graduated from college in 2000. Initially he worked as a staff at the Industry and Mining Agency in Toba Samosir District. Following the formation of Samosir District, he was transferred to the newly created district to serve as the Head of Natural Resources and Public Infrastructure Section at the <em>Bappeda </em>in 2004 He was transferred to he Head of Communication and Infrastructure Section in 2006. He was promoted to the position as the Secretary of <em>Bappeda </em>(Local Planning Agency) of Samosir. Having served in <em>Bappeda </em>of Samosir District, Hotraja Sitanggang been involved in the establishment of important documents, such as the various types planning documents.</p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:54:45'),
(97, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:55:16'),
(96, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:54:45'),
(97, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/herliyan.jpg" alt="" width="100" /> <strong>Mr. Herliyan Saleh </strong>was born in Lubuk Muda on March 25, 1959. Upon graduating from Bogor Institute of Agriculture, he joined civil service in Bengkalis District, he was assigned as the Head of Economic Section of Bengkalis Local Planning Agency (<em>Bappeda</em>) and then promoted to the position of <em>Bappeda </em>Secretary. He pursued his master degree in planning at University of Tennessee, Knoxville in 1992. As a seasoned regional planning, he develops the ideas of village empowerment and palm oil downstream industry cluster that has been the policy of Riau Province government. He was democratically elected as Bengkalis District Head in 2010. He also currently serves as the Chair of National Mandate Party (PAN) Bengkalis Chapter. <strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:55:16'),
(97, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:55:16'),
(98, 'string', 'target', '', '', '', '', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/jondi.jpg" alt="" width="100" /> <strong>Mr. Jondi Indra Bustian </strong>was born in Rengat on November 23, 1963. Upon graduating from Bogor Institute of Agriculture in 1987, he joined the civil service in his home Riau province. He spent two years (1999 – 2001) in Iowa to pursue his master degree at Iowa State University. Having finishing his graduate study, he returned to Riau and became the Head of Industry and Mining Section at the provincial <em>Bappeda. </em>After two years he was name the Head of Promotional Section at Riau Investment and Promotion Agency. From 2005 to 2010 he was transferred to Riau Investment Coordinating Board (BKMD). He was named the Head of Research and Cooperation Department of Riau Province <em>Bappeda</em>, and became the Head of Bengkalis in <em>Bappeda </em>2011.  <strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 07:55:54'),
(98, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 07:55:54'),
(99, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:16:10'),
(99, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/arifin.jpg" alt="" width="100" /><strong>Mr. Arifin Junaidi </strong>was born in Palopo on August 17, 1952. He built his career in local government bureaucracy at Luwu District upon he graduated from Hasanuddin University in 1980. He served as Sub-district Head (<em>Camat</em>) in North Wara, Malangke and Masamba from 1989 to 1999. He served as the Secretary of the newly created Luwu District Local Legislature (DPRD) from 1999 to 2001. He was promoted to the Head of General Affairs and People’s Welfare Bureau at North Luwu District in 2001 and became the Head of <em>Bappeda</em> in 2003. He run for the district headship elections in 2005 and elected as the first directly elected District Head of North Luwu. He was reelected in 2010 elections.</p>\r\n<p>In addition to his service in local bureaucracy, he was active in various youth organizations and political parties such as HMI (Islamic Student Association), AMPI (Indonesian Young Generation for Renewal), KNPI (Indonesian Youth National Committee). While serving as local bureaucrat, he was active in Golkar in the 1980s and 1990s. He is currently the Head of North Luwu Golkar Party Chapter. <strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:16:10'),
(100, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:15:58'),
(100, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/syamsul.jpg" alt="" width="100" /><strong>Syamsul Syair </strong>was born in Palopo on September 18, 1962. He joined civil service right after graduating from college in 1991. He initially worked as a staff at the <em>Bappeda</em> (Local Planning Agency) in Tanah Laut District in South Kalimantan Province. He was transferred to the newly created North Luwu District as the Head of Irrigation Section. He was promoted to the position of Head of Developmental Administration Department from 2006 to 2011. He became the Head of <em>Bappeda</em> of North Luwu District in 2011.</p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:15:58'),
(101, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:35:29'),
(100, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:15:58'),
(101, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:35:29'),
(101, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/sukmawijaya.jpg" alt="" width="100" /><strong>Mr. Sukmawijaya </strong>was born in Sukabumi on October 3, 1956. He was trained to become local government official at APDN (<em>Akademi Pemerintahan Dalam Negeri </em>or Academy for Local Government). After serving for few years in local government in his home district, Sukabumi, he continued his study to IIP (<em>Institut Ilmu Pemerintahan </em>or Institute of Government Science). From 1989 to 1994 he served as sub-district head of Surade and Cibadak in Sukabumi District. In 1999, he was promoted to the position Irrigation Agency of Sukabumi District. He got promoted to serve as the Head of <em>Bappeda</em> (Local Planning Agency) of Sukabumi District in 2002. Mr. Sukmawijaya was elected as the District Head of Sukabumi 2005, and reelected for the second term in 2010.</p>\r\n<p>During his tenure as the District Head of Sukabumi, he received various awards, among others from the USAID’s LGSP for best commitment toward good governance in 2007 and from the Investment Coordinating Board (BKPM or <em>Badan Koordinasi Penanaman Modal</em>).<strong> <br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:35:29'),
(102, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:15:24'),
(102, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/sukmawijaya.jpg" alt="" width="100" /><strong>Mr. Dody Achdiyat Somantri</strong> was born in Bandung on November 1, 1959. He started his career from the lowest ladder at the Sukabumi District local government right after he graduated from Parahyangan University’s law school in 1986. He was promoted to the position of Gegerbitung Sub-district Head (<em>camat</em>) in 1993. After several years in service, he was transferred to Sukabumi <em>Bappeda </em>as the Head of Economic Section and got promoted to the position of Sukabumi <em>Bappeda </em>Head in 2007. <strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:15:24'),
(103, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:14:59'),
(103, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:14:59'),
(102, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:15:24'),
(103, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/idabagus.jpg" alt="" width="100" /><strong>Mr. Ida Bagus Rai Dharmawijaya Mantra </strong>was born in Denpasar on April 30, 1967. Before entering politics in 2005, he was a businessman and active in various business associations such as the Bali Chapter of HIPMI (<em>Himpunan Pengusaha Muda Indonesia </em>or Indonesian Young Businessmen Associaton) and KADIN (<em>Kamar Dagang dan Industri </em>or Indonesian Chamber of Commerce and Industry). He was elected as Vice-Mayor of Denpasar in the 2005 local elections and as Mayor Denpasar in 2010. <strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:14:59'),
(104, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:14:52'),
(103, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:14:59'),
(104, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:14:52'),
(104, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/igusti.jpg" alt="" width="100" /> <strong>Mr. I Gusti Putu Anindya Putra </strong>was born in Blitar on April 13, 1955. He is an architect by training, who started his career as an official at the Department of Public Works in Bali Province right after he graduated from college. After obtaining his master degree from Bandung Institute of Technology (ITB) in regional and urban planning, in 1992 he was transferred to Denpasar Municipality, where he served as the Head of Urban Planning. He was transferred to the <em>Bappeda </em>(Local Planning Agency) of Denpasar Municipality in 2006 and got promoted to the Head of <em>Bappeda </em>in 2009.  <strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:14:52'),
(105, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:34:50'),
(105, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/zulkifli.jpg" alt="" width="100" /><strong>Mr. Zulkifli Muhadli </strong>was born in Taliwang, West Sumbawa on May 14, 1958. Before joining politics, Zulkifli was a <em>kiai </em>(Islamic cleric). In 1984 Zulkifli helped to found <em>Pondok Pesantren </em>(Islamic boarding school) Al-Ikhlas in Taliwang. Twenty years later, in 2004, he helped to establish Cordova University, the first university in the district. Zulkifli Muhadli played substantial role in the endeavor of establishing the District of West Sumbawa, which previously was part of Sumbawa District. He was named as the chair of Committee for the Formation of West Sumbawa District (<em>Panitia Pembentukan Kabupaten Sumbawa Barat</em>).</p>\r\n<p>Aside from being a popular <em>kiai </em>(Islamic cleric) who serves in various Islamic organizations and propagation (<em>dakwah</em>), he has been known as brilliant intellectual and seasoned businessman. He was democratically elected as the first District Head of West Sumbawa in the <em>pemilukada </em>(local district head elections) in 2005. He was reelected for the second term in 2010. As a district head, Zulkifli Muhadli is known for his pro-people and fulfillment of basic needs policies. <strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:34:50'),
(106, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:34:41'),
(106, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/amry.jpg" alt="" width="100" /> <strong>Mr. Amry Rakhman </strong>was born in Sumbawa on September 1, 1966. He started his career as a faculty member at the Department of Agriculture, Mataram University. He was involved in the preparation for founding Cordova University in Taliwang, West Sumbawa and became the Deputy Rector for Academic Affairs beginning in 2005. At the same time he served concurrently as the Advisor to the District Head of West Sumbawa. He was promoted to the position <em>Bappeda </em>Head in 2009. He obtained his doctorate degree in <em>sharia </em>economics from Airlangga University in 2011.  <strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:34:41'),
(107, 'string', 'target', '', '', '', '', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 09:57:17'),
(107, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/rendra.jpg" alt="" width="100" /><strong>Mr. Rendra Kresna </strong>was born in Pamekasan on March 22, 1962. He has been active in various social, political and sport organizations since the 1980s when he was still in his early twenties. He has been the Chair of SOKSI Malang Chapter, a rightist labor union, since 1985. He was also the Chair of East Java Chapter of KSPSI (<em>Konfederasi Serikat Buruh Seluruh Indonesia</em> or Confederation of All Indonesian Labor Unions) from 2005 to 2010. In addition, he has been the Chair Malang Chapter of PSSI (<em>Persatuan Sepakbola Seluruh Indonesia </em>or All Indonesia Soccer Association) since 2006 as well as the President of Arema, a local soccer club.</p>\r\n<p>As a Golkar Party politician, he was elected as member Malang local legislature (DPRD) in 1997 – 1999. He elected as the Vice-District Head of Malang in the 2005 local elections (<em>pemilukada</em>) and as the District Head of Malang in 2010. <strong><br /></strong></p>', NULL, '2011-11-25 09:57:17'),
(108, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:47:20'),
(108, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/nehrudin.jpg" alt="" width="100" /> <strong>Mr. Nehruddin </strong>was born in Baturaja on November 10, 1953. He started his career in bureaucracy from lowest ladder in 1980 as he joined the Agency of Trade in Kotabumi in Lampung Province. Having served in various positions in Lampung local government, he was transferred to Malang in 1999. He was named the Head of Malang Industry and Trade Agency. Following the implementation of decentralization and regional autonomy in 2001, he was promoted to the position of Assistant of Financial Administration and Development at Malang District in 2001. Three years later, he was promoted again to the position of the Head of Revenue Agency at Malang District. Beginning in June 2005, Nehruddin has been the Head of Malang <em>Bappeda.</em>  <strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:47:20'),
(109, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:50:08'),
(109, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/nehrudin.jpg" alt="" width="100" /><strong>Mr. Burhan Abdurrahman </strong>was born on December 1, 1956 in Ternate. He joined the Ternate local government bureaucracy from the lowest ladder in 1980. Initially he was stationed at the Maluku Provincial Revenue Agency in 1991. He was transferred to Ternate as the Head of Office of Municipal Revenue Agency in 2001. He got promoted to the position of Head of Ternate’s BKPD (<em>Badan Pengelola Keuangan Daearah </em>or Financial Management Board). He was then named the Secretary of Ternate Municipality in 2006. He was directly elected as the Mayor of Ternate in the 2010 local elections. While serving as bureaucrat, he pursued his law degree and master degree in management.</p>\r\n<p><strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:50:08'),
(110, 'string', 'target', '', '', '', '', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 08:50:43'),
(110, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/assegaf.jpg" alt="" width="100" /><strong>Mr. Said Assegaf </strong>was born on April 13, 1961 in Banda Neira. He started his career at the BP-7 (Agency for the Implementation, Comprehension and Training of Pancasila) in North Maluku District in 1991. He was then transferred to the <em>Bappeda </em>(Local Planning Agency) in Ternate Municipality in 2000. Initially he served as <em>Bappeda </em>Secretary. He was promoted to the Head of <em>Bappeda </em>in January 2006.  </p>\r\n<p><strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 08:50:43'),
(111, 'string', 'target', '', '', '', '', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 09:10:24'),
(111, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/sambari.jpg" alt="" width="100" /> <strong>Mr. Sambari Halim Radianto, </strong>was born in Gresik on August 7, 1959. He has been active in various social and youth organizations, such as boy scouts and Indonesian Muslim Intellectuals Association (ICMI). In addition, he has been active in business since the early 1980s. He is also known as Golkar Party’s stalwart for quite a long time and became the Gresik District Chapter Head from 2005 to the present. As a businessman-cum-politician, he served as member of Gresik Local Legislature (DPRD) from 1997 – 2000. In 2000, he was elected as Vice-District Head. He run for district headship in the first direct local elections in 2005, but he lost. He run again in 2010 for Gresik district headship and got elected. Sambari Halim Radianto earned his doctorate degree in economics from Airlangga University in 2008. He is a recipient <em>Lencana Melati </em>Award (highest award for national scouting organization) presented personally by the President.</p>\r\n<p><strong><br /></strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong><br /></strong></p>', NULL, '2011-11-25 09:10:24'),
(112, 'string', 'target', '', '', '', '', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 09:13:40'),
(112, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/bambang.jpg" alt="" width="100" /> <strong>Mr. Bambang Isdianto </strong>was born in Bangka on January 26, 1958. After earning his bachelor degree in engineering from Surabaya Institute of Technology (ITS) he joined civil service at the Agency of Housing, Planning and Urban Development (<em>Dinas Cipta Karya</em>) in Lamongan District in 1990. Having served for seven years, he was transferred to the same agency in Tuban District and East Java Province. He was promoted to the position of Physical and Infrastructure Head of Gresik District’s <em>Bappeda </em>in 2001. Eventually he was promoted as <em>Bappeda </em>Head of Gresik in 2011.</p>', NULL, '2011-11-25 09:13:40'),
(61, 'string', 'content_en', '', '', '', '<p>{literal}</p>\r\n<script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n<script type="text/javascript" src="uploads/popup/js/thickbox.js"></script>\r\n<p>{/literal}</p>\r\n<div>\r\n<table width="100%" border="0" cellspacing="5" cellpadding="0">\r\n<tbody>\r\n<tr style="vertical-align: top; color: #a91617;">\r\n<td width="50%">\r\nBupati &amp; Walikota Lubuk Basung, Sumatera Barat\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''indracatri''}">Mr. Indra Catri</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''ismanimran''}">Mr. Isman Imran</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Banjarbaru, Kalimantan Selatan\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''ruzaidin''}">Mr. Muhammad Ruzaidin Noor</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''aswan''}">Mr. Mohammad Aswan</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Solok Selatan, Sumatera Barat\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''muzni''}">Mr. Muzni Zakaria</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''said''}">Mr. Said Alkhudi</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Kutai Kertanegara, Kalimantan Timur\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''rita''}">Mrs. Rita Widyasari</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''machmudan''}">Mr. Machmudan</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Serdang Bedagai, Sumatera Utara\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''errynuradi''}">Mr. Erry Nuradi</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''taufik''}">Mr. Taufik Batubara</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Mamuju, Sulawesi Barat\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''suhardi''}">Mr. Suhardi Duka</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''junda''}">Mr. Junda Maulana</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Samosir, Sumatera Utara\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''mangindar''}">Mr. Mangindar Simbolon</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''hotraja''}">Mr. Hotraja Sitanggang</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Poso, Sulawesi Tengah\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''suhardi''}">Mr. Pet Inkiriwang</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''junda''}">Mr. Sinsigus Songo</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Bengkalis, Riau\r\n<br />\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''herliyan''}">Mr. Herliyan Saleh</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''jondi''}">Mr. Jondi Indra Bustian</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Luwu Utara, Sulawesi Selatan\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''arifin''}">Mr. Arifin Junaidi</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''syamsul''}">Mr. Syamsul Syair</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Sukabumi, Jawa Barat\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''sukmawijaya''}">Mr. Sukmawijaya</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''dody''}">Mr. Dody Achadiyat Somantri</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Denpasar, Bali\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''idabagusrai''}">Mr. Ida Bagus Rai Dharmawijaya</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''igusti''}">Mr. I Gusti Putu Anindya Putra</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Banyuwangi, Jawa Timur\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''abdullahaswar''}">Mr. Abdullah Aswar Anas</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''agus''}">Mr. Agus Siswanto</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Sumbawa Barat, Nusa Tenggara Barat\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''zulkiflimuhadli''}">Mr. Zulkifili Muhadli</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''amry''}">Mr. Amry Rachman</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Malang, Jawa Timur\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''rendra''}">Mr. Rendra Kresna</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''nehruddin''}">Mr. Nehruddin</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Ternate, Maluku Utara\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''burhan''}">Mr. Burhan Abdurrahman</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''assegaf''}">Mr. Said Assegaf</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Gresik, Jawa Timur\r\n<br />\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''sambari''}">Mr. Sambari Halim Radianto</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''bambang''}">Mr. Bambang Isdianto</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\nBupati &amp; Walikota Lampung Selatan, Lampung\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''''}">Mr. Rycko Menoza</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''''}">Mr. Edarwan</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="vertical-align: top;color: #a91617;">\r\n<td>\r\nBupati &amp; Walikota Kediri, Jawa Timur\r\n<ul>\r\n<li><a class="thickbox" href="{cms_selflink href=''samsul''}">Mr. Samsul Ashar</a></li>\r\n<li><a class="thickbox" href="{cms_selflink href=''rahmad''}">Mr. Rahmad Hari Basuki</a></li>\r\n</ul>\r\n</td>\r\n<td> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', NULL, '2011-12-11 14:46:27'),
(113, 'string', 'target', '', '', '', '', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 09:55:57'),
(113, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/samsul.jpg" alt="" width="100" /> <strong>Mr. Samsul Ashar </strong>was born in Kediri on September 16, 1961. He is a medical doctor by training and practice. Upon graduating from medical school at Brawijaya University in 1989, he served as a junior medical doctor in Aceh Province. In 2000, he continued his study to become an internist. Beginning in 2006, he served as Deputy Director of Gambiran Public Hospital in Kediri. Samsul Ashar was democratically elected as Mayor of Kediri in 2008 local elections (<em>pemilukada</em>).</p>', NULL, '2011-11-25 09:55:57'),
(114, 'string', 'target', '', '', '', '', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'image', '', '', '', '-1', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'extra1', '', '', '', '', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'extra2', '', '', '', '', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'extra3', '', '', '', '', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'searchable', '', '', '', '1', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-25 09:56:28'),
(114, 'string', 'content_en', '', '', '', '<p><img style="float: left; margin-right: 10px; margin-bottom: 5px;" src="uploads/images/members/rahmad.jpg" alt="" width="100" /> <strong>Mr. Rahmad Hari Basuki </strong>was born in Kediri on June 1, 1966. He built his career in local government bureaucracy. He graduated from the APDN (<em>Akademi Pemerintahan Dalam Negeri </em>or Academy for Local Government) in 1989. He continued his study at IIP (<em>Institute Ilmu Pemerintahan </em>or Institute for Government Science) 1994, he joined local government in his home district Kediri in 1986. He was named sub-district head in 1999. He was promoted to the position of Head of Government Affairs in 2008 and Head of Social and Labor Agency in 2009. He became the Head Kediri Municipality <em>Bappeda </em>(Local Planning Agency) in 2010.</p>', NULL, '2011-11-25 09:56:28'),
(116, 'string', 'target', '', '', '', '', NULL, '2011-11-29 04:26:57');
INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(116, 'string', 'image', '', '', '', '-1', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'thumbnail', '', '', '', '-1', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'extra1', '', '', '', '', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'extra2', '', '', '', '', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'extra3', '', '', '', '', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'searchable', '', '', '', '0', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'pagedata', '', '', '', '', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'disable_wysiwyg', '', '', '', '0', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'Sidebar', '', '', '', '', NULL, '2011-11-29 04:26:57'),
(116, 'string', 'content_en', '', '', '', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, '2011-11-29 04:26:57'),
(62, 'string', 'content_en', '', '', '', '<p>{literal}</p>\r\n<script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n\r\n<p>{/literal} {save_current_page_id} {CGFeedback action=''summary'' summarytemplate="SimpleSummaryComment" detailpage="PopupCommentPage" pagelimit="4"} <a class="thickbox" href="{cms_selflink href=''newcomment''}">Submit New Comment</a></p>\r\n\r\n{CGFeedback action=''summary''   key2=$entry->id}', NULL, '2011-12-12 03:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_props_seq`
--

DROP TABLE IF EXISTS `cms_content_props_seq`;
CREATE TABLE IF NOT EXISTS `cms_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content_props_seq`
--

INSERT INTO `cms_content_props_seq` (`id`) VALUES
(55);

-- --------------------------------------------------------

--
-- Table structure for table `cms_content_seq`
--

DROP TABLE IF EXISTS `cms_content_seq`;
CREATE TABLE IF NOT EXISTS `cms_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_content_seq`
--

INSERT INTO `cms_content_seq` (`id`) VALUES
(129);

-- --------------------------------------------------------

--
-- Table structure for table `cms_crossref`
--

DROP TABLE IF EXISTS `cms_crossref`;
CREATE TABLE IF NOT EXISTS `cms_crossref` (
  `child_type` varchar(100) default NULL,
  `child_id` int(11) default NULL,
  `parent_type` varchar(100) default NULL,
  `parent_id` int(11) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  KEY `cms_index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `cms_index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_crossref`
--

INSERT INTO `cms_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES
('global_content', 1, 'template', 15, '2011-11-12 02:39:26', '2011-11-12 02:39:26'),
('global_content', 1, 'template', 16, '2011-12-09 04:03:25', '2011-12-09 04:03:25'),
('global_content', 1, 'template', 20, '2011-11-12 02:39:26', '2011-11-12 02:39:26'),
('global_content', 1, 'template', 18, '2011-11-12 02:39:26', '2011-11-12 02:39:26'),
('global_content', 1, 'template', 17, '2011-11-12 02:39:26', '2011-11-12 02:39:26'),
('global_content', 1, 'template', 21, '2011-11-12 02:39:26', '2011-11-12 02:39:26'),
('global_content', 1, 'template', 22, '2011-11-12 02:39:26', '2011-11-12 02:39:26'),
('global_content', 1, 'template', 24, '2011-12-01 08:59:13', '2011-12-01 08:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `cms_css`
--

DROP TABLE IF EXISTS `cms_css`;
CREATE TABLE IF NOT EXISTS `cms_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) default NULL,
  `css_text` text,
  `media_type` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`css_id`),
  KEY `cms_index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_css`
--

INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `create_date`, `modified_date`) VALUES
(30, 'Print', '/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class="noprint"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}', 'print', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(31, 'Accessibility and cross-browser tools', '/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n	text-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n	position: absolute;\r\n/* takes it out top side */\r\n	top: -999em;\r\n/* takes it out left side */\r\n	left: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n	position: absolute;\r\n	left: -1000px;\r\n	top: -1000px;\r\n	width: 0;\r\n	height: 0;\r\n	overflow: hidden;\r\n	display: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n	content: ".";\r\n	display: block;\r\n	height: 0;\r\n	clear: both;\r\n	visibility: hidden;\r\n}\r\n.clear {\r\n	height: 0;\r\n	clear: both;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n#main .clear {\r\n	height: 0;\r\n	clear: right;\r\n	width: 90%;\r\n	visibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n	display: inline-block;\r\n	width: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n	height: 1%;\r\n	clear: right;\r\n	width: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */', 'screen', '2006-07-25 21:22:32', '2009-05-13 10:42:54'),
(32, 'Layout: Left sidebar + 1 column', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n	color: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n/* a different color is used for visited links */\r\n	color: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 99em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	background-color: #fefefe;\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 100px;\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 100px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* and some air on the right */\r\n	margin-right: 2%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n	margin-left: 29%;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n	padding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n	padding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '2006-07-25 21:22:32', '2009-05-10 14:06:00'),
(33, 'Navigation: CSSMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it''s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it''s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level "a" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level "a" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '2006-07-25 21:22:32', '2009-05-10 20:20:30'),
(34, 'Navigation: CSSMenu - Horizontal', '/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n/*	background-color: #243135;      */\r\nbackground:  url([[root_url]]/uploads/menu_bg.png) repeat;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n\r\nclear: both;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 0px;\r\n\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the "a" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n/*\r\n	border-left: 1px solid #000;\r\n	border-right: 1px solid #000;\r\n*/\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the "a" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n/* hover background color */\r\n/*	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px; */\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can''t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it''s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '2006-07-25 21:22:32', '2011-11-30 04:45:17'),
(35, 'Module: News', 'div#news {\r\n/* margin for the entire div surrounding the news items */\r\n	margin: 2em 0 1em 0em;\r\n/* border set here */\r\n	border: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n	background: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n	line-height: 2em;\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center; */\r\n	color: #990000;\r\n	border: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n	padding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n	margin: 0 0.5em 1em 0.5em;\r\n	border-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n	font-size: 90%;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n/* little more room at top */\r\n	padding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	margin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	padding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n	line-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n	padding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n	font-size: 90%;\r\n	margin-bottom: 5px;\r\n/* bold to set it off from text */\r\n	font-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n	border-top: 1px solid #ccc;\r\n	margin-top: 0.5em;\r\n	padding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n	margin-bottom: 15px;\r\n/* larger than default text */\r\n	line-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n	padding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n	font-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\r\ndiv#news ul li {\r\n	padding: 2px 2px 2px 5px;\r\n	margin-left: 20px;\r\n}', 'screen', '2006-07-25 21:22:32', '2011-11-03 16:14:51'),
(38, 'Navigation: Simple - Horizontal', '/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n	height: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n	background-color: #243135;\r\n/* insure full width */\r\n	width: 100%;\r\n/* set height */\r\n	height: 49px;\r\n	margin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n	float: left;\r\n/* remove any default bullets */\r\n	list-style: none;\r\n/* still no margin */\r\n	margin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n	margin: 0;\r\n/* removes default underline */\r\n	text-decoration: none;\r\n/* default link color */\r\n	color: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n	display: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the "a" */\r\n	padding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the "a" we can set it here, it lets us use the span for an image */\r\n	padding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n	padding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n	padding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n	padding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n	background: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the "sectionheader" */\r\n	padding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n	color: #000;\r\n}', 'screen', '2006-07-25 21:22:32', '2010-05-29 13:06:18');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `create_date`, `modified_date`) VALUES
(39, 'Layout: Top menu + 2 columns', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: none;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 69em;\r\n	min-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	/*background-color: #F4F4F4;*/\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 135px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	/* background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top; */\r\nbackground: url([[root_url]]/uploads/headerbanner.png) center no-repeat;\r\n\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 135px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n/*	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom; */\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;*/\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 26px;\r\n	width: 60px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 10px auto 10px 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 27%;\r\n/* and some air on the right */\r\n	margin-right: 0%;\r\n/* you can set your own image here */\r\n/*	background: #FFFFFF url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top; */\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 90%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 10px;\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;*/\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\nmin-height: 421px;\r\nmax-height: 421px;\r\n	padding: 10px 15px ;\r\n-moz-border-radius: 10px;\r\n  border-radius: 10px;\r\nbackground: #F0F0F0;\r\n\r\n\r\n/* you can set your own image here */\r\n	/*background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;*/\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 90%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top; */\r\nmin-height: 400px;\r\nmax-height: 400px;\r\n/* overflow: auto; */\r\n}\r\ndiv#sidebarb {\r\n	padding: 0 0 0 0;\r\n/* this one is for sidebar with content and no menu */\r\n	\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 0em 0 0em 0em;\r\nmin-height: 440px;\r\nmax-height: 440px;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #990000;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.1em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '2006-07-25 21:22:32', '2011-12-09 04:05:35'),
(41, 'Handheld', '/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}', 'handheld', '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(42, 'Navigation: Simple - Vertical', '/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of "a.parent" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn''t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}', 'screen', '2009-04-30 01:09:15', '2009-07-23 00:17:42'),
(43, 'Navigation: ShadowMenu - Horizontal', '/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n	list-style-type: none;\r\n	margin: 0px;\r\n	padding-top: 10px;\r\n	padding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 210px;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* room at top for li so image top shows correct */\r\n	padding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n	padding-top: 13px;\r\n	background: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n	margin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n	top: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n	margin-top: 0px;\r\n	padding-left: 5px;\r\n	left: 100%;\r\n	top: -7px;\r\n/* IE6 gets gif as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n	margin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n	margin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n	margin-left: 6px;\r\n/* helps hold it inside the ul */\r\n	width: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n	padding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* remove default "a" underline */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal "a" padding minus some for right image */\r\n	padding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n	display: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n	background:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n	background:  none;\r\n/* set text color here also to insure color */\r\n	color: #fff;\r\n/* just to be sure */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an "h" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n	background:  none;\r\n	color: #000;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n	background:  none;\r\n	color: #FFF;\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n	padding: 5px 10px;\r\n/* to keep it within li */\r\n	width: 165px;\r\n/* space between them */\r\n	margin: 5px;\r\n	background: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n	padding: 5px 10px;\r\n	width: 165px;\r\n	margin: 0px;\r\n	color: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n	background: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n	color: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n/* just to insure normal */\r\n	font-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n	color: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n	color: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n	color: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n	color: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n	color: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n	color: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n	background:  none;\r\n	font-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n	color: #0587A9;\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n	padding: 0px;\r\n	background:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 210px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -8px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n	height: 9px;\r\n	margin: 0px 0px -8px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n	margin: 0px 0px -8px;\r\n	height: 2px;\r\n	background: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'screen', '2009-05-01 04:32:33', '2009-07-20 18:18:21'),
(45, 'Navigation: ShadowMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it''s container */\r\n	position: relative;\r\n/* bottom padding pushes "a" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 190px;\r\n/* changes padding inherited from first level */\r\n	padding: 0px 10px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic appearance of the menu "a" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level "a" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it''s container */\r\n	position: relative;\r\n/* even padding all 4 sides */\r\n	padding: 6px;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors from here on */\r\n	color: #000;\r\n/* remove any background that may have been set in level above */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n/* sets width of second level ul to background image */\r\n	width: 209px;\r\n	height: auto;\r\n/* negative margin pulls it over the parent ul */\r\n	margin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n	padding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n	position: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n	left: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n	top: -2px;\r\n	display: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n	list-style-type: none;\r\n/* bit more negative left margin */\r\n	margin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:''value'', this flat lines it */\r\n	padding: 0px;\r\n/* now we just change one with ''property''-top:value */\r\n	padding-top: 10px;\r\n	position: absolute;\r\n	width: 209px;\r\n	height: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n	top: -5px;\r\n	left: 100%;\r\n	display: none;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n	width: 209px;\r\n	padding: 0px;\r\n/* height of image */\r\n	height: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n	margin: 0px 0px -9px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 ''star html'' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n	height: 2px;\r\n/* set your image here */\r\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	padding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'screen', '2009-05-02 00:20:03', '2009-05-11 00:43:17'),
(46, 'Navigation: FatFootMenu', '#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the "a" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like "a", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}', 'screen', '2009-05-02 15:05:04', '2009-05-09 23:47:45'),
(47, 'ncleanbluecore', '/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n	width: 100%;\r\n}\r\n.core-wrap-960 {\r\n	width: 960px;\r\n}\r\n.core-wrap-780 {\r\n	width: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n	float: left;\r\n	display: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n	float: right;\r\n	display: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n}', 'screen', '2009-05-06 14:28:28', '2009-05-11 02:35:43'),
(48, 'ncleanblueutils', '/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	outline: 0;\r\n	font-size: 100%;\r\n	vertical-align: baseline;\r\n	background: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n	line-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n	list-style: none;\r\n}\r\nblockquote, q {\r\n	quotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n	content: '''';\r\n	content: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n	outline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n	text-decoration: none;\r\n}\r\ndel {\r\n	text-decoration: line-through;\r\n}\r\n/* tables still need ''cellspacing="0"'' in the markup */\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-family: inherit;\r\n}\r\ndfn {\r\n	display: none;\r\n	overflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	position: static;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n	clear: both;\r\n	content: ''.'';\r\n	display: block;\r\n	visibility: hidden;\r\n	height: 0;\r\n}\r\n.util-clearfix {\r\n	display: inline-block;\r\n}\r\n* html .util-clearfix {\r\n	height: 1%;\r\n}\r\n.util-clearfix {\r\n	display: block;\r\n}', 'screen', '2009-05-06 14:29:17', '2009-05-11 02:38:10');
INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `create_date`, `modified_date`) VALUES
(49, 'Layout: NCleanBlue', '/*  \r\n@Nuno Costa [criacaoweb.net]\r\n@Since [cmsms 1.6]\r\n@Contributors: Mark and Dev-Team\r\n*/\r\nbody {\r\n/* default text for entire site */\r\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\r\n/* default text color for entire site */\r\n	color: #3A3A36;\r\n/* you can set your own image and background color here */\r\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\r\n#ncleanblue {\r\n/* set to width of viewport */\r\n	width: auto;\r\n/* you can set your own image and background color here */\r\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* wiki style external links */\r\n/* external links will have "(external link)" text added, lets hide it */\r\na.external span {\r\n	position: absolute;\r\n	left: -5000px;\r\n	width: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n	padding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n	color: #679EBC;\r\n/* background image for the link to show wiki style arrow */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n	color: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n	color: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n	background-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\r\n.accessibility, hr {\r\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\r\n	position: absolute;\r\n	top: -9999em;\r\n	left: -9999em;\r\n	background: none;\r\n	border: 0;\r\n	clear: both;\r\n	display: block;\r\n	float: none;\r\n	font-size: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	overflow: hidden;\r\n	visibility: hidden;\r\n	width: 0;\r\n	height: 0;\r\n	border: none;\r\n}\r\n/* ------------ Standard  HTML elements and their default settings ------------ */\r\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\r\np {\r\n	padding: 0;\r\n	margin-top: 0.5em;\r\n    margin-bottom: 1em;\r\n   text-align:left;\r\n}\r\nh1, h2, h3, h4, h5 {\r\n	line-height: 1.6em;\r\n	font-weight: normal;\r\n	width: auto;\r\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\r\n}\r\n/*default link styles*/\r\na {\r\n	color: #679EBC;\r\n	text-decoration: none;\r\n	text-align: left;\r\n}\r\na:hover {\r\n	color: #3A6B85;\r\n}\r\na:active {\r\n	color: #3A6B85;\r\n}\r\na:visited {\r\n	color: #679EBC;\r\n}\r\ninput, textarea, select {\r\n	font-size: 0.95em;\r\n}\r\n/* ------------ Wrapper ------------ */\r\ndiv#pagewrapper {\r\n	font-size: 95%;\r\n	position: relative;\r\n	z-index: 1;\r\n}\r\n/* ------------ Header ------------ */\r\n#header {\r\n	height: 111px;\r\n	width: 960px;\r\n}\r\n#logo a {\r\n/* adjust according your image size */\r\n	height: 75px;\r\n	width: 215px;\r\n/* forces full link size */\r\n	display: block;\r\n/* this hides the text */\r\n	text-indent: -9999em;\r\n	margin-top: 0;\r\n	margin-left: 0;\r\n/* you can set your own image here, note size adjustments */\r\n	background: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\r\n}\r\n/* ------------ Header - Search ------------ */\r\ndiv#search {\r\n	width: 190px;\r\n	height: 28px;\r\n	margin-top: 31px;\r\n	margin-right: 20px;\r\n}\r\ndiv#search label {\r\n	text-indent: -9999em;\r\n	height: 0pt;\r\n	width: 0pt;\r\n	display: none;\r\n}\r\ndiv#search input.search-input {\r\n/* specific size for image, your image may need these adjusted */\r\n	width: 143px;\r\n	height: 17px;\r\n/* removes default borders, allows use of image */\r\n	border-style: none;\r\n/* text color */\r\n	color: #999;\r\n/* padding of text */\r\n	padding: 7px 0px 4px 10px;\r\n	float: left;\r\n/* set all font properties at once, weight, size, family */\r\n	font: bold 0.9em Arial, Helvetica, sans-serif;\r\n/* left input image, set your own here */\r\n	background: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\r\n}\r\ndiv#search input.search-button {\r\n/* specific size for image, your image may need these adjusted */\r\n	width: 37px;\r\n	height: 28px;\r\n/* removes default borders, allows use of image */\r\n	border-style: none;\r\n/* hides text, image has text */\r\n	text-indent: -9999em;\r\n	float: left;\r\n	margin: 0;\r\n/* provides positive hover effect */\r\n	cursor: pointer;\r\n/* removes default size/height */\r\n	font-size: 0px;\r\n	line-height: 0px;\r\n/* submit button image, set your own here */\r\n	background: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\r\n}\r\n/* ------------ Content ------------ */\r\n#content {\r\n	width: auto;\r\n/* all text in #content will default align left, changed in other calls */\r\n	text-align: left;\r\n}\r\n#bar {\r\n	width: auto;\r\n	height: 40px;\r\n	padding-right: 1em;\r\n	padding-left: 1em;\r\n}\r\n.print {\r\n	margin-right: 75px;\r\n	margin-top: 10px;\r\n}\r\n#version {\r\n	//width: 50px;\r\n	//height: 31px;\r\n	//position: absolute;\r\n	//z-index: 5;\r\n	//top: 130px;\r\n	//right: -16px;\r\n	//font-size: 1.6em;\r\n	//font-weight: bold;\r\n	//padding: 28px 15px;\r\n	//color: #FFF;\r\n	//text-align: center;\r\n	//vertical-align: middle;\r\n	//background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\r\n}\r\n/* IE6 fixes */\r\n* html div#version {\r\n	top: 150px;\r\n}\r\n/* End IE6 fixes */\r\n/* Site Title */\r\nh1.title {\r\n	font-size: 1.8em;\r\n	color: #666666;\r\n	margin-bottom: 0.5em;\r\n}\r\n/* Breadcrumbs */\r\ndiv.breadcrumbs {\r\n	padding: 0.5em 0;\r\n	font-size: 80%;\r\n	margin: 0 1em;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\n/* ------------ Side Bar (Left) ------------ */\r\n#left {\r\n	width: 250px;\r\n}\r\n/* Image that Represents the new CMS design */\r\n#left .screen {\r\n	margin: 10px 50px;\r\n}\r\n/* End  */\r\n.sbar-title {\r\n	font: bold 1.2em Arial, Helvetica, sans-serif;\r\n	color: #252523;\r\n}\r\n.sbar-top {\r\n	height: 20px;\r\n	width: auto;\r\n	padding: 10px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\r\n}\r\n.sbar-main {\r\n	width: auto;\r\n	border-right: 1px solid #E2E2E2;\r\n	border-left: 1px solid #E2E2E2;\r\n	background: #F0F0F0;\r\n}\r\nspan.sbar-bottom {\r\n	width: auto;\r\n	display: block;\r\n	height: 10px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\r\n}\r\n/* ------------ Main (Right) ------------ */\r\n#main {\r\n	width: 690px;\r\n}\r\n.main-top {\r\n	height: 15px;\r\n	width: auto;\r\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\r\n}\r\n.main-main {\r\n	width: auto;\r\n	border-right: 1px solid #E2E2E2;\r\n	border-left: 1px solid #E2E2E2;\r\n	background: #F0F0F0;\r\n	padding: 20px;\r\n	padding-top: 0px;\r\n}\r\n.main-bottom {\r\n	width: auto;\r\n	height: 41px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\r\n}\r\n.right49, .left49 {\r\n	font-size: 0.85em;\r\n	margin: 7px 5px 5px 10px;\r\n	font-weight: bold;\r\n}\r\n.left49 span {\r\n	display: block;\r\n	padding-top: 1px;\r\n}\r\n.left49 a {\r\n	font-weight: normal;\r\n}\r\n.right49 {\r\n	height: 28px;\r\n	width: 50px;\r\n	padding-right: 10px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\r\n}\r\n.right49 a, .right49 a:visited {\r\n	padding: 7px 4px;\r\n	display: block;\r\n	color: #000;\r\n	height: 15px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\r\n}\r\n#main h2,\r\n#main h3,\r\n#main h4,\r\n#main h5,\r\n#main h6 {\r\n	font-size: 1.4em;\r\n	color: #301E12;\r\n}\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl,\r\n#footer ul,\r\n#footer ol {\r\n	line-height: 1em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul,\r\n#footer ul {\r\n	list-style: circle;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li,\r\n#footer ul li,\r\n#footer ol li {\r\n	padding: 2px 2px 2px 5px;\r\n	margin-left: 20px;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\n/* ------------ Footer ------------ */\r\n#footer-wrapper {\r\n	min-height: 235px;\r\n	height: auto!important;\r\n	height: 235px;\r\n	width: auto;\r\n	margin-top: 5px;\r\n	text-align: center;\r\n	margin-right: 00px;\r\n	margin-left: 0px;\r\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer {\r\n	color: #FFF;\r\n	font-size: 0.8em;\r\n	min-height: 235px;\r\n	height: auto!important;\r\n	height: 235px;\r\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer .block {\r\n	width: 300px;\r\n	margin: 20px 10px 10px;\r\n}\r\n#footer .cms {\r\n	text-align: right;\r\n}\r\n/* ------------ Footer Links ------------ */\r\n#footer ul {\r\n	width: auto;\r\n	text-align: left;\r\n	margin-left: 50px;\r\n}\r\n#footer ul ul {\r\n	margin-left: 0px;\r\n}\r\n#footer ul li a {\r\n	color: #FFF;\r\n	display: block;\r\n	font-weight: normal;\r\n	margin-bottom: 0.5em;\r\n	text-decoration: none;\r\n}\r\n#footer a {\r\n	color: #DCEDF1;\r\n	text-decoration: underline;\r\n	font-weight: bold;\r\n}\r\n/* ------------ END LAYOUT ---------------*/\r\n/* ------------  Menu  ROOT  ------------ */\r\n.page-menu {\r\n	width: auto;\r\n	height: 35px;\r\n	margin: 3px 0 0 20px;\r\n}\r\n.menuwrapper {}\r\n\r\nul#primary-nav li hr.menu_separator{\r\n        position: relative;\r\n        visibility: hidden;\r\n        display:block;\r\n        width:5px;\r\n       	height: 32px;\r\n       	margin: 0px 5px 0px;\r\n}\r\n.page-menu ul#primary-nav {\r\n	height: 1%;\r\n	float: left;\r\n	list-style: none;\r\n	padding: 0;\r\n	margin: 0;\r\n}\r\n.page-menu ul#primary-nav li {\r\n	float: left;\r\n}\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a span {\r\n	display: block;\r\n	padding: 0 10px;\r\n	background-repeat: no-repeat;\r\n	background-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\r\n}\r\n.page-menu ul#primary-nav li a {\r\n	padding-left: 0;\r\n	color: #000;\r\n	font-weight: bold;\r\n	line-height: 2.15em;\r\n	text-decoration: none;\r\n	margin-left: 1px;\r\n	font-size: 0.85em;\r\n}\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:active {\r\n	color: #000;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover span {\r\n	color: #000;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n	padding-top: 6px;\r\n	padding-right: 0;\r\n	padding-bottom: 5px;\r\n}\r\n.page-menu ul#primary-nav li a.menuparenth,\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n	background-position: 100% -120px;\r\n}\r\n.page-menu ul#primary-nav li a {\r\n	background-position: 100% -80px;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive span,\r\n.page-menu ul#primary-nav li a:hover span,\r\n.page-menu ul#primary-nav li a:focus span,\r\n.page-menu ul#primary-nav li a:active span {\r\n	background-position: 0 -40px;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n	background-position: 0 0;\r\n}\r\n.page-menu ul#primary-nav .sectionheader,\r\n.page-menu ul#primary-nav li a:link.menuactive,\r\n.page-menu ul#primary-nav li a:visited.menuactive {\r\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\r\n	cursor: text;\r\n}\r\n.page-menu ul#primary-nav li span,\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n/* @ Opera, we need to be explicit again here now... */\r\n	cursor: pointer;\r\n}\r\n/* Additional IE specific bug fixes... */\r\n* html .page-menu ul#primary-nav {\r\n	display: inline-block;\r\n}\r\n*:first-child+html .page-menu ul#primary-nav {\r\n	display: inline-block;\r\n}\r\n/* --------------------  menu dropdow  -------------------------\r\n/* Unless you know what you do, do not touch this */\r\n/* Reset all ROOT menu styles. */\r\nul#primary-nav ul.unli li li a span,\r\nul#primary-nav ul.unli li a span,\r\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\r\n	font-weight: normal;\r\n	background-image: none;\r\n	display: block;\r\n	padding-top: 0px;\r\n	padding-left: 0px;\r\n	padding-right: 0px;\r\n	padding-bottom: 0px;\r\n}\r\n#primary-nav {\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav ul {\r\n	list-style: none;\r\n	margin: -6px 0px 0px;\r\n	padding: 0px;\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 209px;\r\n}\r\n#primary-nav ul {\r\n	position: absolute;\r\n	z-index: 1001;\r\n	top: auto;\r\n	display: none;\r\n	padding-top: 9px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\r\n}\r\n* html #primary-nav ul.unli {\r\n	padding-top: 12px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\r\n}\r\n#primary-nav ul.unli ul {\r\n	margin-left: -7px;\r\n	left: 100%;\r\n	top: 3px;\r\n}\r\n* html #primary-nav ul.unli ul {\r\n	margin-left: -0px;\r\n}\r\n#primary-nav li {\r\n	margin: 0px;\r\n	float: left;\r\n}\r\n#primary-nav li li {\r\n	margin-left: 7px;\r\n	margin-top: -1px;\r\n	float: none;\r\n	position: relative;\r\n}\r\n/* Styling the basic appearance of the menu elements */\r\nul#primary-nav ul hr.menu_separator{\r\n        position: relative;\r\n        visibility: visible;\r\n        display:block;\r\n        width:130px;\r\n       	height: 1px;\r\n       	margin: 2px 30px 2px;\r\n	padding: 0em;\r\n	border-bottom: 1px solid #ccc;\r\n	border-top-width: 0px;\r\n	border-right-width: 0px;\r\n	border-left-width: 0px;\r\n	border-top-style: none;\r\n	border-right-style: none;\r\n	border-left-style: none;\r\n}\r\n#primary-nav .separator,\r\n#primary-nav .separatorh {\r\n	height: 9px;\r\n	width: 209px;\r\n	margin: 0px 0px -8px;\r\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\r\n}\r\n* html #primary-nav .separator {\r\n       z-index:-1;\r\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\r\n}\r\n*:first-child+html #primary-nav .separator {\r\n       z-index:-1;\r\n}\r\n#primary-nav ul.unli li a {\r\n	padding: 0px 10px;\r\n	width: 165px;\r\n	margin: 5px;\r\n	background-image: none;\r\n}\r\n* html #primary-nav ul.unli li a {\r\n	padding: 0px 10px 0px 5px;\r\n	width: 165px;\r\n	margin: 5px 0px;\r\n}\r\n#primary-nav li li a:hover {\r\n	background-color: #DBE7F2;\r\n}\r\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li.menuactive li a {\r\n	text-decoration: none;\r\n	background: none;\r\n}\r\n#primary-nav ul.unli li.menuparenth,\r\n#primary-nav ul.unli a:hover,\r\n#primary-nav ul.unli a.menuactive {\r\n	background-color: #DBE7F2;\r\n}\r\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav ul.unli li .menuparent:hover,\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\r\n	background-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\r\n	background-position: center right;\r\n	background-repeat: no-repeat;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul,\r\n#primary-nav li.menuparenth ul ul ul {\r\n	display: none;\r\n}\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul,\r\n#primary-nav ul ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}\r\n/*************** End Menu *****************/\r\n/* ------------ News Module ------------ */\r\n#news {\r\n	padding: 10px;\r\n}\r\n.NewsSummary {\r\n}\r\n.NewsSummaryPostdate,\r\n.NewsSummaryCategory,\r\n.NewsSummaryAuthor {\r\n	font-style: italic;\r\n	font-size: 0.8em;\r\n}\r\n.NewsSummaryLink {\r\n	margin: 2px 0;\r\n}\r\n.NewsSummaryContent {\r\n	margin: 10px 0;\r\n}\r\n.NewsSummaryMorelink {\r\n	margin: 5px 0 15px;\r\n}\r\n/* ------------ End News Module ------------ */', 'screen', '2009-05-06 14:30:25', '2011-10-29 05:32:42'),
(50, 'PopupContent', '/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n	text-align: left;\r\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n	font-size: 75.01%;\r\n	line-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n	font-size: 1em;\r\n}\r\n/*if img is inside "a" it would have borders, we don''t want that*/\r\nimg {\r\n	border: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n	text-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n	background-color: inherit;\r\n	color: #18507C;\r\n}\r\na:visited {\r\n	text-decoration: underline;\r\n	background-color: inherit;\r\n	color: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n	text-decoration: none;\r\n	background-color: inherit;\r\n	color: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n	margin: 0;\r\n	padding: 0;\r\n/* default text color for entire site*/\r\n	color: #333;\r\n/* you can set your own image and background color here */\r\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n	max-width: 50em;\r\n	min-width: 40em;\r\n/* now that width is set this centers wrapper */\r\n	margin: 0 auto;\r\n	/*background-color: #F4F4F4;*/\r\n	color: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n	height: 135px;\r\n	margin: 0;\r\n	padding: 0;\r\n	/* you can set your own image here, will go behind h1 a image */\r\n	/* background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top; */\r\nbackground: url([[root_url]]/uploads/headerbanner.png) center no-repeat;\r\n\r\n/* border just the bottom */\r\n	border-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n/*	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n/* this will make the "a" link a solid shape */\r\n	display: block;\r\n/* adjust according your image size */\r\n	height: 135px;\r\n/* this hides the text */\r\n	text-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n	text-decoration: none;\r\n}\r\ndiv#header h1 {\r\n	margin: 0;\r\n	padding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n	line-height: 0;\r\n	font-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n/*	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n	float: right;\r\n	line-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n	font-size: 1.5em;\r\n/* keeps the size uniform */\r\n	margin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n	color: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n	margin: 0;\r\n	padding: 0;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n	padding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n	font-size: 90%;\r\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\r\n	margin: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n	font-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n	float: right;\r\n/* enough width for the search input box */\r\n	width: 27em;\r\n	text-align: right;\r\n	padding: 0.5em 0 0.2em 0;\r\n	margin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n	border: none;\r\n	height: 22px;\r\n	width: 53px;\r\n	margin-left: 5px;\r\n	padding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n	cursor: pointer;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n	margin: 1.5em auto 2em 0;\r\n	padding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 0%;\r\n/* you can set your own image here */\r\n	background: #FFFFFF url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n	float: right;\r\n	width: 90%;\r\n/* and we take this out or it will stop at the bottom  */\r\n	margin-left: 0%;\r\n/* and some air on the right */\r\n	margin-right: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n	padding: 10px 15px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n	float: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n	width: 26%;\r\n/* FIX IE double margin bug */\r\n	display: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n	margin: 0px 0px 20px;\r\n	padding: 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n	padding: 0 0 0 0;\r\n/* this one is for sidebar with content and no menu */\r\n	\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n	margin: 0em 0 0em 0em;\r\n}\r\ndiv#sidebara {\r\n	padding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n	clear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n	padding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n	padding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n	color: #595959;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n	float: left;\r\n	width: 30%;\r\n	margin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n	font-size: 0.8em;\r\n/* some air for footer */\r\n	padding: 1.5em;\r\n/* centered text */\r\n	text-align: center;\r\n	margin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n	color: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\r\ndiv.hr {\r\n	height: 1px;\r\n	padding: 1em;\r\n	border-bottom: 1px dotted black;\r\n	margin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n	width: 70%;\r\n}\r\ndiv.right49 {\r\n	float: right;\r\n	width: 29%;\r\n/* set right to keep text on right */\r\n	text-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n	font-size: 2em;\r\n	line-height: 1em;\r\n	margin: 0;\r\n}\r\ndiv#content h2 {\r\n	color: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n	font-size: 1.5em;\r\n	text-align: left;\r\n/* some air around the text */\r\n	padding-left: 0.5em;\r\n	padding-bottom: 1px;\r\n/* set borders around header */\r\n	border-bottom: 1px solid #899092;\r\n	border-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n	line-height: 1.5em;\r\n/* and some air under the border */\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n	color: #294B5F;\r\n	font-size: 1.3em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n	color: #294B5F;\r\n	font-size: 1.2em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n	color: #294B5F;\r\n	font-size: 1.1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n	color: #294B5F;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	margin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n	font-size: 1em;\r\n/* some air around p elements */\r\n	margin: 0 0 1.5em 0;\r\n	line-height: 1.4em;\r\n	padding: 0;\r\n}\r\nblockquote {\r\n	border-left: 10px solid #ddd;\r\n	margin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n	font-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n	font-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n	white-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n	white-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n	white-space: -pre-wrap;\r\n/* Opera 7 */\r\n	white-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n	word-wrap: break-word;\r\n	font-family: "Courier New", Courier, monospace;\r\n	font-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n	border: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n	background-color: #ddd;\r\n	margin: 0 1em 1em 1em;\r\n	padding: 0.5em;\r\n	line-height: 1.5em;\r\n	font-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n	margin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n	font-size: 1.0em;\r\n	line-height: 1.4em;\r\n	margin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n	margin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n	margin-bottom: 2em;\r\n	padding-bottom: 1em;\r\n	border-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n	font-weight: bold;\r\n	margin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n	margin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */', 'screen', '2011-11-12 03:34:54', '2011-12-09 02:51:51'),
(52, 'PopupContentCss', '.memberheader\r\n{\r\nfont-color: #ff0000;\r\n}', '', '2011-11-12 04:02:37', '2011-11-12 04:04:00'),
(53, 'thickbox-css', '/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> global settings needed for thickbox <<<-----------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n*{padding: 0; margin: 0;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox specific link and font settings <<<------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n\r\n#TB_window {\r\n    font: 12px Arial, Helvetica, sans-serif;\r\n    color: #333333;\r\n}\r\n\r\n#TB_secondLine {\r\n    font: 10px Arial, Helvetica, sans-serif;\r\n    color:#666666;\r\n}\r\n\r\n#TB_window a:link {color: #666666;}\r\n#TB_window a:visited {color: #666666;}\r\n#TB_window a:hover {color: #000;}\r\n#TB_window a:active {color: #666666;}\r\n#TB_window a:focus{color: #666666;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox settings <<<-----------------------------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_overlay {\r\n    position: fixed;\r\n    z-index:100;\r\n    top: 0px;\r\n    left: 0px;\r\n    height:100%;\r\n    width:100%;\r\n}\r\n\r\n.TB_overlayMacFFBGHack {background: url(macFFBgHack.png) repeat;}\r\n.TB_overlayBG {\r\n    background-color:#000;\r\n    filter:alpha(opacity=75);\r\n    -moz-opacity: 0.75;\r\n    opacity: 0.75;\r\n}\r\n\r\n* html #TB_overlay { /* ie6 hack */\r\n                     position: absolute;\r\n                     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_window {\r\n    position: fixed;\r\n    background: #ffffff;\r\n    z-index: 102;\r\n    color:#000000;\r\n    display:none;\r\n    border: 4px solid #525252;\r\n    text-align:left;\r\n    top:50%;\r\n    left:50%;\r\n}\r\n\r\n* html #TB_window { /* ie6 hack */\r\n                    position: absolute;\r\n                    margin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_window img#TB_Image {\r\n    display:block;\r\n    margin: 15px 0 0 15px;\r\n    border-right: 1px solid #ccc;\r\n    border-bottom: 1px solid #ccc;\r\n    border-top: 1px solid #666;\r\n    border-left: 1px solid #666;\r\n}\r\n\r\n#TB_caption{\r\n    height:25px;\r\n    padding:7px 30px 10px 25px;\r\n    float:left;\r\n}\r\n\r\n#TB_closeWindow{\r\n    height:25px;\r\n    padding:11px 25px 10px 0;\r\n    float:right;\r\n}\r\n\r\n#TB_closeAjaxWindow{\r\n    padding:7px 10px 5px 0;\r\n    margin-bottom:1px;\r\n    text-align:right;\r\n    float:right;\r\n}\r\n\r\n#TB_ajaxWindowTitle{\r\n    float:left;\r\n    padding:7px 0 5px 10px;\r\n    margin-bottom:1px;\r\n}\r\n\r\n#TB_title{\r\n    background-color:#e8e8e8;\r\n    height:27px;\r\n}\r\n\r\n#TB_ajaxContent{\r\n    clear:both;\r\n    padding:2px 15px 15px 15px;\r\n    overflow:auto;\r\n    text-align:left;\r\n    line-height:1.4em;\r\n}\r\n\r\n#TB_ajaxContent.TB_modal{\r\n    padding:15px;\r\n    overflow: hidden;\r\n}\r\n\r\n#TB_ajaxContent p{\r\n    padding:5px 0px 5px 0px;\r\n}\r\n\r\n#TB_load{\r\n    position: fixed;\r\n    display:none;\r\n    height:13px;\r\n    width:208px;\r\n    z-index:103;\r\n    top: 50%;\r\n    left: 50%;\r\n    margin: -6px 0 0 -104px; /* -height/2 0 0 -width/2 */\r\n}\r\n\r\n* html #TB_load { /* ie6 hack */\r\n                  position: absolute;\r\n                  margin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_HideSelect{\r\n    z-index:99;\r\n    position:fixed;\r\n    top: 0;\r\n    left: 0;\r\n    background-color:#fff;\r\n    border:none;\r\n    filter:alpha("opacity=0");\r\n    -moz-opacity: 0;\r\n    opacity: 0%;\r\n    height:100%;\r\n    width:100%;\r\n}\r\n\r\n* html #TB_HideSelect { /* ie6 hack */\r\n                        position: absolute;\r\n                        height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_iframeContent{\r\n    clear:both;\r\n    border:none;\r\n    margin-bottom:-1px;\r\n    margin-top:1px;\r\n    _margin-bottom:1px;\r\n}', 'screen', '2011-11-12 08:40:49', '2011-11-14 02:38:57'),
(54, 'roundbox', '\r\n#roundbox\r\n	{\r\n	position: relative;\r\n	margin-left: 5px;\r\n	margin-right: 5px;\r\n	margin-top: 10px;\r\n	padding: 10px;\r\n	text-align: left;\r\n	/*width:40%;*/				/* <-- use this to tie width to viewport size */\r\n	/*width: 35em;*/				/* <-- use this for a set width */\r\n	min-width:200px;\r\n        width: 240px;\r\n	background-color:transparent;\r\n        height: 110px;\r\n        float: left;\r\n	}\r\n 	\r\n#roundcontent\r\n	{\r\n	padding: 8px;\r\nmin-height: 150px;\r\n\r\n	}\r\n\r\n#roundcontent h1\r\n	{\r\n	color:#0354c2;\r\n	font-weight: bold;\r\n	font-size: 1.2em;\r\n	font-family: helvetica, geneva, arial, sans-serif;\r\n	}\r\n		\r\n#roundcontent p\r\n	{\r\n	color:#3b3b3b;\r\n	font-size: 1em;\r\n	line-height: 1.3em;\r\n	font-family: arial, helvetica, sans-serif;\r\n	}\r\n		\r\n/* ---=== border code follows ===--- */\r\n/*\r\n	tlc = top left corner\r\n	trc = top right corner\r\n	blc = bottom left corner\r\n	brc = bottom right corner\r\n	lb = left border\r\n	rb = right border\r\n	tb = top border\r\n	bb = bottom border \r\n*/\r\n\r\n#tlc, #trc, #blc, #brc\r\n	{\r\n	background-color: transparent;\r\n	background-repeat: no-repeat;\r\n	}\r\n\r\n#tlc\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/tlc.gif);\r\n	background-position: 0% 0%;\r\n	}\r\n\r\n#trc\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/trc.gif);\r\n	background-position: 100% 0%;\r\n	}\r\n	\r\n#blc\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/blc.gif);\r\n	background-position: 0% 100%;\r\n	}\r\n\r\n#brc\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/brc.gif);\r\n	background-position: 100% 100%;\r\n	}\r\n\r\n#tb, #bb\r\n	{\r\n	background-color: transparent;\r\n	background-repeat: repeat-x;\r\n	}\r\n			\r\n#tb\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/tb.gif);\r\n	background-position: 0% 0%;\r\n	}\r\n\r\n#bb\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/bb.gif);\r\n	background-position: 50% 100%;\r\n	}\r\n	\r\n#rb\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/r.gif);\r\n	background-position: 100% 0%;\r\n	background-repeat: repeat-y;\r\n	}\r\n\r\n#lb\r\n	{\r\n	background-image:url([[root_url]]/uploads/rounded/l.gif);\r\n	background-position: 0% 100%;\r\n	background-repeat: repeat-y;\r\n	}\r\n			', 'screen', '2011-11-17 08:46:58', '2011-12-01 04:42:01'),
(55, 'RoundContentBox', '.box { \r\n  background: #FFFFFF; \r\n}\r\n.boxtop { \r\n  background: url(''[[root_url]]/uploads/rounded/ne.png'') no-repeat top right; \r\n}\r\n.boxtop div { \r\n  font-size: 0;\r\n  height: 10px; \r\n  background: url(''[[root_url]]/uploads/rounded/nw.png'') no-repeat top left; \r\n}\r\n.boxbottom { \r\n  background: url(''[[root_url]]/uploads/rounded/se.png'') no-repeat bottom right; \r\n}\r\n.boxbottom div { \r\n  font-size: 0;\r\n  height: 10px; \r\n  background: url(''[[root_url]]/uploads/rounded/sw.png'') no-repeat bottom left; \r\n}\r\n.boxcontent {\r\n  padding: 0px 10px 0px 10px;\r\n}\r\n\r\n.box2 { \r\n  background: #c3c3c3; \r\nwidth: 260px;\r\n}\r\n.boxtop2 { \r\n  background: url(''[[root_url]]/uploads/rounded/ne2.png'') no-repeat top right; \r\n}\r\n.boxtop2 div { \r\n  font-size: 0;\r\n  height: 10px; \r\n  background: url(''[[root_url]]/uploads/rounded/nw2.png'') no-repeat top left; \r\n}\r\n.boxbottom2 { \r\n  background: url(''[[root_url]]/uploads/rounded/se2.png'') no-repeat bottom right; \r\n}\r\n.boxbottom2 div { \r\n  font-size: 0;\r\n  height: 10px; \r\n  background: url(''[[root_url]]/uploads/rounded/sw2.png'') no-repeat bottom left; \r\n}\r\n.boxcontent2 {\r\n  padding: 0px 10px 0px 10px;\r\n  min-height: 110px;\r\n}\r\n\r\n\r\n\r\n.box_news { \r\n  background: #F4F4F4; \r\n  min-height: 440px;\r\n  max-height: 440px;\r\n  width: 26%;\r\n  float: left;\r\n\r\n-moz-border-radius: 15px;\r\n  border-radius: 15px;\r\n  margin: 1px;\r\n}\r\n.boxtop_news { \r\n  background: url(''[[root_url]]/uploads/rounded/ne_news.png'') no-repeat top right; \r\n}\r\n.boxtop_news div { \r\n  font-size: 0;\r\n  height: 10px; \r\n  background: url(''[[root_url]]/uploads/rounded/nw_news.png'') no-repeat top left; \r\n}\r\n.boxbottom_news { \r\n  background: url(''[[root_url]]/uploads/rounded/se_news.png'') no-repeat bottom right; \r\n}\r\n.boxbottom_news div { \r\n  font-size: 0;\r\n  height: 10px; \r\n  background: url(''[[root_url]]/uploads/rounded/sw_news.png'') no-repeat bottom left; \r\n}\r\n.boxcontent_news {\r\n  padding: 0px 10px 0px 10px;\r\n  min-height: 420px;\r\n}\r\n\r\n\r\n\r\n#example1 {\r\n  -moz-border-radius: 15px;\r\n  border-radius: 15px;\r\n  background-color: red;\r\n  height: 100px;\r\n  width: 100px;\r\n  padding: 5px;\r\n}\r\n\r\n\r\n#borderbox{\r\n  -moz-border-radius: 10px;\r\n  border-radius: 10px;\r\n  background-color: #D7D7D7;\r\n  padding: 12px;\r\n  min-height: 110px;\r\n  margin: 1px;\r\n}\r\n\r\n#pengurusbox{\r\n  -moz-border-radius: 15px;\r\n  border-radius: 15px;\r\n  background: #F0F0F0;\r\n  padding: 20px;\r\n  min-height: 300px;\r\n  margin: 1px;\r\n}\r\n\r\n#contentbox { \r\n  background: #FFFFFF;\r\n  -moz-border-radius: 10px;\r\n  border-radius: 10px;\r\n  padding-top: 1px;\r\n  padding-left: 10px;\r\n  padding-bottom: 1px;\r\n  padding-right: 10px;\r\n\r\n  min-height: 110px;\r\n  margin: 1px;\r\n}\r\n\r\n#sidebarbox{\r\n  padding: 10px;\r\n  margin: 1px;\r\nheight: inherit;\r\n}', 'screen', '2011-11-30 04:59:51', '2011-12-12 02:25:39'),
(56, 'jsscroll', '.Scroller-Container {\r\n  position: relative;\r\n  top: 0px; left: 0px;\r\n}\r\n.Scrollbar-Up {\r\n  position: absolute;\r\n  width: 10px; height: 10px;\r\n  background-color: #CCC;\r\n  font-size: 0px;\r\n}\r\n.Scrollbar-Track {\r\n  width: 10px; height: 330px;\r\n  position: absolute;\r\n  top: 20px;\r\n  background-color: #EEE;\r\n}\r\n.Scrollbar-Handle {\r\n  position: absolute;\r\n  width: 10px; height: 30px;\r\n  background-color: #CCC;\r\n}\r\n.Scrollbar-Down {\r\n  position: relative;\r\n  top: 360px;\r\n  width: 10px; height: 10px;\r\n  background-color: #CCC;\r\n  font-size: 0px;\r\n}\r\n#Scrollbar-Container {\r\n  position: absolute;\r\n/*  float: left;*/\r\n   top: 270px; left: 1060px;\r\n}\r\n\r\n#Container {\r\n  position: relative;\r\n  top: 50px; left: 50px;\r\n  width: 400px;\r\n  height: 200px;\r\n  background-color: #EEE;\r\n}\r\n#scrollcontent { \r\n  position: relative;\r\n  top: 10px; \r\n  overflow: hidden;\r\n  width: 520px;\r\n  height: 430px;\r\n  display: none;\r\n}\r\n#scrollcontent{display: block;}\r\np {\r\n  margin: 0; padding: 0px 20px 10px;\r\n  font-family: Verdana, Arial, Helvetica, sans-serif;\r\n  font-size: 11px;\r\n  text-indent: 20px;\r\n  color: #777;\r\n}\r\n#Navigation {\r\n  position: relative; \r\n  top: 30px;\r\n  left: 75px;\r\n}\r\n#Navigation a {\r\n  margin: 5px 2px 0 0;\r\n  padding: 0 5px;\r\n  height: 20px;\r\n  background-color: #E4E4E4;\r\n  font-family: Verdana, Arial, Helvetica, sans-serif;\r\n  font-size: 10px;\r\n  color: #AAA;\r\n  text-decoration: none;\r\n  display: block;\r\n  float: left;\r\n  letter-spacing: 1px;\r\n}\r\n#Navigation a:hover {\r\n  margin-top: 0px;\r\n  height: 25px;\r\n}\r\n#Navigation a.current {\r\n  margin-top: 0px;\r\n  height: 25px;\r\n  background-color: #EEE;\r\n  color: #777;\r\n}', '', '2011-12-02 06:46:51', '2011-12-09 02:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `cms_css_assoc`
--

DROP TABLE IF EXISTS `cms_css_assoc`;
CREATE TABLE IF NOT EXISTS `cms_css_assoc` (
  `assoc_to_id` int(11) default NULL,
  `assoc_css_id` int(11) default NULL,
  `assoc_type` varchar(80) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `assoc_order` int(11) default NULL,
  KEY `cms_index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `cms_index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_css_assoc`
--

INSERT INTO `cms_css_assoc` (`assoc_to_id`, `assoc_css_id`, `assoc_type`, `create_date`, `modified_date`, `assoc_order`) VALUES
(17, 41, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(16, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(18, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(18, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(18, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
(18, 38, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
(18, 42, 'template', '2009-04-30 17:44:09', '2009-04-30 17:44:09', 3),
(18, 39, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(16, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(16, 34, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
(16, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
(16, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(15, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
(15, 33, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 2),
(15, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(15, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 4),
(15, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(17, 32, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 1),
(17, 35, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 3),
(17, 30, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 5),
(17, 42, 'template', '2009-04-30 01:10:05', '2009-04-30 01:10:05', 2),
(17, 31, 'template', '2006-07-25 21:22:32', '2006-07-25 21:22:32', 6),
(20, 39, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 1),
(20, 31, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 4),
(20, 43, 'template', '2009-05-01 04:33:01', '2009-05-01 04:33:01', 2),
(20, 35, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 3),
(20, 30, 'template', '2009-05-01 04:30:42', '2009-05-01 04:30:42', 5),
(21, 31, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 3),
(21, 45, 'template', '2009-05-02 00:20:26', '2009-05-02 00:20:26', 2),
(21, 32, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 1),
(21, 30, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 4),
(21, 35, 'template', '2009-05-01 23:17:51', '2009-05-01 23:17:51', 5),
(15, 46, 'template', '2009-05-02 15:05:19', '2009-05-02 15:05:19', 6),
(21, 46, 'template', '2009-05-02 15:05:22', '2009-05-02 15:05:22', 6),
(16, 46, 'template', '2009-05-02 15:05:24', '2009-05-02 15:05:24', 6),
(20, 46, 'template', '2009-05-02 15:05:27', '2009-05-02 15:05:27', 6),
(17, 46, 'template', '2009-05-02 15:05:29', '2009-05-02 15:05:29', 7),
(22, 48, 'template', '2009-05-06 14:31:08', '2009-05-06 14:31:08', 1),
(18, 46, 'template', '2009-05-02 15:05:34', '2009-05-02 15:05:34', 7),
(22, 47, 'template', '2009-05-06 14:31:14', '2009-05-06 14:31:14', 2),
(22, 49, 'template', '2009-05-06 14:31:20', '2009-05-06 14:31:20', 3),
(23, 52, 'template', '2011-11-12 04:02:48', '2011-11-12 04:02:48', 4),
(23, 31, 'template', '2011-11-12 02:57:03', '2011-11-12 02:57:03', 2),
(23, 30, 'template', '2011-11-12 02:57:03', '2011-11-12 02:57:03', 3),
(23, 50, 'template', '2011-11-12 03:35:10', '2011-11-12 03:35:10', 1),
(23, 53, 'template', '2011-11-12 08:41:00', '2011-11-12 08:41:00', 5),
(16, 53, 'template', '2011-11-14 02:38:49', '2011-11-14 02:38:49', 7),
(16, 54, 'template', '2011-11-17 08:49:23', '2011-11-17 08:49:23', 8),
(24, 39, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 1),
(24, 31, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 4),
(24, 34, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 2),
(24, 35, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 3),
(24, 30, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 5),
(24, 46, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 6),
(24, 53, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 7),
(24, 54, 'template', '2011-11-30 03:22:36', '2011-11-30 03:22:36', 8),
(16, 55, 'template', '2011-11-30 05:00:57', '2011-11-30 05:00:57', 9),
(24, 55, 'template', '2011-11-30 06:40:43', '2011-11-30 06:40:43', 9),
(16, 56, 'template', '2011-12-02 06:47:10', '2011-12-02 06:47:10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cms_css_seq`
--

DROP TABLE IF EXISTS `cms_css_seq`;
CREATE TABLE IF NOT EXISTS `cms_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_css_seq`
--

INSERT INTO `cms_css_seq` (`id`) VALUES
(56);

-- --------------------------------------------------------

--
-- Table structure for table `cms_events`
--

DROP TABLE IF EXISTS `cms_events`;
CREATE TABLE IF NOT EXISTS `cms_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY  (`event_id`),
  KEY `cms_originator` (`originator`),
  KEY `cms_event_name` (`event_name`),
  KEY `cms_event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_events`
--

INSERT INTO `cms_events` (`originator`, `event_name`, `event_id`) VALUES
('Core', 'LoginPost', 1),
('Core', 'LogoutPost', 2),
('Core', 'AddUserPre', 3),
('Core', 'AddUserPost', 4),
('Core', 'EditUserPre', 5),
('Core', 'EditUserPost', 6),
('Core', 'DeleteUserPre', 7),
('Core', 'DeleteUserPost', 8),
('Core', 'AddGroupPre', 9),
('Core', 'AddGroupPost', 10),
('Core', 'EditGroupPre', 11),
('Core', 'EditGroupPost', 12),
('Core', 'DeleteGroupPre', 13),
('Core', 'DeleteGroupPost', 14),
('Core', 'AddStylesheetPre', 15),
('Core', 'AddStylesheetPost', 16),
('Core', 'EditStylesheetPre', 17),
('Core', 'EditStylesheetPost', 18),
('Core', 'DeleteStylesheetPre', 19),
('Core', 'DeleteStylesheetPost', 20),
('Core', 'AddTemplatePre', 21),
('Core', 'AddTemplatePost', 22),
('Core', 'EditTemplatePre', 23),
('Core', 'EditTemplatePost', 24),
('Core', 'DeleteTemplatePre', 25),
('Core', 'DeleteTemplatePost', 26),
('Core', 'TemplatePreCompile', 27),
('Core', 'TemplatePostCompile', 28),
('Core', 'AddGlobalContentPre', 29),
('Core', 'AddGlobalContentPost', 30),
('Core', 'EditGlobalContentPre', 31),
('Core', 'EditGlobalContentPost', 32),
('Core', 'DeleteGlobalContentPre', 33),
('Core', 'DeleteGlobalContentPost', 34),
('Core', 'GlobalContentPreCompile', 35),
('Core', 'GlobalContentPostCompile', 36),
('Core', 'ContentEditPre', 37),
('Core', 'ContentEditPost', 38),
('Core', 'ContentDeletePre', 39),
('Core', 'ContentDeletePost', 40),
('Core', 'AddUserDefinedTagPre', 41),
('Core', 'AddUserDefinedTagPost', 42),
('Core', 'EditUserDefinedTagPre', 43),
('Core', 'EditUserDefinedTagPost', 44),
('Core', 'DeleteUserDefinedTagPre', 45),
('Core', 'DeleteUserDefinedTagPost', 46),
('Core', 'ModuleInstalled', 47),
('Core', 'ModuleUninstalled', 48),
('Core', 'ModuleUpgraded', 49),
('Core', 'ContentStylesheet', 50),
('Core', 'ContentPreCompile', 51),
('Core', 'ContentPostCompile', 52),
('Core', 'ContentPostRender', 53),
('Core', 'SmartyPreCompile', 54),
('Core', 'SmartyPostCompile', 55),
('Core', 'ChangeGroupAssignPre', 56),
('Core', 'ChangeGroupAssignPost', 57),
('Core', 'StylesheetPreCompile', 58),
('Core', 'StylesheetPostCompile', 59),
('Core', 'LoginFailed', 60),
('News', 'NewsArticleAdded', 61),
('News', 'NewsArticleEdited', 62),
('News', 'NewsArticleDeleted', 63),
('News', 'NewsCategoryAdded', 64),
('News', 'NewsCategoryEdited', 65),
('News', 'NewsCategoryDeleted', 66),
('Search', 'SearchInitiated', 67),
('Search', 'SearchCompleted', 68),
('Search', 'SearchItemAdded', 69),
('Search', 'SearchItemDeleted', 70),
('Search', 'SearchAllItemsDeleted', 71),
('Uploads', 'OnUpload', 72),
('Uploads', 'OnRemove', 73),
('Uploads', 'OnDownload', 74),
('Uploads', 'OnCreateCategory', 75),
('Uploads', 'OnDeleteCategory', 76),
('FrontEndUsers', 'OnLogin', 77),
('FrontEndUsers', 'OnLogout', 78),
('FrontEndUsers', 'OnExpireUser', 79),
('FrontEndUsers', 'OnCreateUser', 80),
('FrontEndUsers', 'OnDeleteUser', 81),
('FrontEndUsers', 'OnUpdateUser', 82),
('FrontEndUsers', 'OnCreateGroup', 83),
('FrontEndUsers', 'OnUpdateGroup', 84),
('FrontEndUsers', 'OnDeleteGroup', 85),
('FrontEndUsers', ' OnRefreshUser', 86),
('Showtime', 'OnShowtimePreferenceChange', 87),
('Cron', 'CronHourly', 88),
('Cron', 'CronDaily', 89),
('Cron', 'CronWeekly', 90),
('Cron', 'CronMonthly', 91),
('Cron', 'CronYearly', 92),
('SelfRegistration', 'onNewUser', 93),
('SelfRegistration', 'onUserRegistered', 94);

-- --------------------------------------------------------

--
-- Table structure for table `cms_events_seq`
--

DROP TABLE IF EXISTS `cms_events_seq`;
CREATE TABLE IF NOT EXISTS `cms_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_events_seq`
--

INSERT INTO `cms_events_seq` (`id`) VALUES
(94);

-- --------------------------------------------------------

--
-- Table structure for table `cms_event_handlers`
--

DROP TABLE IF EXISTS `cms_event_handlers`;
CREATE TABLE IF NOT EXISTS `cms_event_handlers` (
  `event_id` int(11) default NULL,
  `tag_name` varchar(255) default NULL,
  `module_name` varchar(160) default NULL,
  `removable` int(11) default NULL,
  `handler_order` int(11) default NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY  (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_event_handlers`
--

INSERT INTO `cms_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES
(38, NULL, 'MenuManager', 0, 1, 1),
(40, NULL, 'MenuManager', 0, 1, 2),
(38, NULL, 'Search', 0, 2, 3),
(40, NULL, 'Search', 0, 2, 4),
(22, NULL, 'Search', 0, 1, 5),
(24, NULL, 'Search', 0, 1, 6),
(26, NULL, 'Search', 0, 1, 7),
(30, NULL, 'Search', 0, 1, 8),
(32, NULL, 'Search', 0, 1, 9),
(34, NULL, 'Search', 0, 1, 10),
(48, NULL, 'Search', 0, 1, 11),
(53, NULL, 'Gallery', 0, 1, 12),
(53, NULL, 'AdvancedContent', 0, 3, 14),
(38, NULL, 'AdvancedContent', 0, 3, 15),
(53, NULL, 'CGExtensions', 0, 4, 16),
(53, NULL, 'Uploads', 1, 5, 17),
(53, NULL, 'FrontEndUsers', 0, 6, 18),
(53, NULL, 'Showtime', 0, 7, 19),
(47, NULL, 'SelfRegistration', 0, 1, 20),
(48, NULL, 'SelfRegistration', 0, 2, 21),
(61, 'news_article_added', NULL, 1, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `cms_event_handler_seq`
--

DROP TABLE IF EXISTS `cms_event_handler_seq`;
CREATE TABLE IF NOT EXISTS `cms_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_event_handler_seq`
--

INSERT INTO `cms_event_handler_seq` (`id`) VALUES
(22);

-- --------------------------------------------------------

--
-- Table structure for table `cms_groups`
--

DROP TABLE IF EXISTS `cms_groups`;
CREATE TABLE IF NOT EXISTS `cms_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) default NULL,
  `active` tinyint(4) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_groups`
--

INSERT INTO `cms_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES
(1, 'Admin', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(2, 'Editor', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32'),
(3, 'Designer', 1, '2006-07-25 21:22:32', '2006-07-25 21:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `cms_groups_seq`
--

DROP TABLE IF EXISTS `cms_groups_seq`;
CREATE TABLE IF NOT EXISTS `cms_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_groups_seq`
--

INSERT INTO `cms_groups_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_group_perms`
--

DROP TABLE IF EXISTS `cms_group_perms`;
CREATE TABLE IF NOT EXISTS `cms_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) default NULL,
  `permission_id` int(11) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`group_perm_id`),
  KEY `cms_index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_group_perms`
--

INSERT INTO `cms_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES
(176, 3, 30, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(177, 3, 25, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(178, 3, 4, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(179, 3, 31, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(180, 3, 26, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(181, 3, 22, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(182, 3, 11, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(183, 3, 32, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(184, 3, 27, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(185, 3, 24, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(186, 3, 16, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(187, 2, 44, '2009-05-12 08:05:26', '2009-05-12 08:05:26'),
(188, 1, 50, '2011-10-29 02:15:15', '2011-10-29 02:15:15'),
(189, 2, 50, '2011-10-29 02:15:15', '2011-10-29 02:15:15'),
(190, 1, 59, '2011-11-14 02:04:03', '2011-11-14 02:04:03'),
(191, 2, 59, '2011-11-14 02:04:03', '2011-11-14 02:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `cms_group_perms_seq`
--

DROP TABLE IF EXISTS `cms_group_perms_seq`;
CREATE TABLE IF NOT EXISTS `cms_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_group_perms_seq`
--

INSERT INTO `cms_group_perms_seq` (`id`) VALUES
(191);

-- --------------------------------------------------------

--
-- Table structure for table `cms_htmlblobs`
--

DROP TABLE IF EXISTS `cms_htmlblobs`;
CREATE TABLE IF NOT EXISTS `cms_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) default NULL,
  `html` text,
  `description` text,
  `use_wysiwyg` tinyint(4) default NULL,
  `owner` int(11) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`htmlblob_id`),
  KEY `cms_index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_htmlblobs`
--

INSERT INTO `cms_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `description`, `use_wysiwyg`, `owner`, `create_date`, `modified_date`) VALUES
(1, 'footer', '<p>Powered by: dOOKIe cORP@2011</p>', '', 0, 1, '2006-07-25 21:22:32', '2011-10-29 02:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `cms_htmlblobs_seq`
--

DROP TABLE IF EXISTS `cms_htmlblobs_seq`;
CREATE TABLE IF NOT EXISTS `cms_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_htmlblobs_seq`
--

INSERT INTO `cms_htmlblobs_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_modules`
--

DROP TABLE IF EXISTS `cms_modules`;
CREATE TABLE IF NOT EXISTS `cms_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) default NULL,
  `version` varchar(255) default NULL,
  `admin_only` tinyint(4) default '0',
  `active` tinyint(4) default NULL,
  `allow_fe_lazyload` tinyint(4) default NULL,
  `allow_admin_lazyload` tinyint(4) default NULL,
  PRIMARY KEY  (`module_name`),
  KEY `cms_index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_modules`
--

INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES
('AComments', 'installed', '1.1', 0, 1, 0, 0),
('AdvancedContent', 'installed', '0.9.1', 0, 1, 0, 1),
('Album', 'installed', '0.9.3', 0, 1, 0, 0),
('Attach', 'installed', '0.7.2.1', 0, 1, 0, 0),
('CGExtensions', 'installed', '1.27.1', 0, 1, 0, 0),
('CGFeedback', 'installed', '1.5.4', 0, 1, 0, 0),
('CGSimpleSmarty', 'installed', '1.4.10', 0, 1, 0, 0),
('CMSForms', 'installed', '0.1.2', 0, 1, 0, 0),
('CMSMailer', 'installed', '2.0.2', 0, 1, 1, 0),
('CMSPrinting', 'installed', '1.0', 0, 1, 1, 0),
('CMSUsers', 'installed', '1.0.0', 0, 1, 0, 0),
('Cron', 'installed', '0.0.2', 0, 1, 0, 0),
('FileManager', 'installed', '1.2.0', 0, 1, 1, 0),
('FrontEndEditor', 'installed', '1.2.0', 0, 1, 0, 0),
('FrontEndUsers', 'installed', '1.16.2', 0, 1, 0, 0),
('Gallery', 'installed', '1.4.4', 0, 1, 0, 0),
('JavaScript', 'installed', '1.0.2', 0, 1, 0, 0),
('MenuManager', 'installed', '1.7.6', 0, 1, 1, 0),
('MicroTiny', 'installed', '1.1', 0, 1, 1, 0),
('ModuleManager', 'installed', '1.5', 1, 1, 0, 0),
('News', 'installed', '2.12.2', 0, 1, 0, 0),
('Search', 'installed', '1.7', 0, 1, 1, 0),
('SelfRegistration', 'installed', '1.6.13', 0, 1, 0, 0),
('Showtime', 'installed', '2.0.5', 0, 1, 0, 0),
('ThemeManager', 'installed', '1.1.4', 1, 1, 0, 0),
('Uploads', 'installed', '1.14.1', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_acomments`
--

DROP TABLE IF EXISTS `cms_module_acomments`;
CREATE TABLE IF NOT EXISTS `cms_module_acomments` (
  `comment_id` int(11) NOT NULL,
  `comment_data` text,
  `comment_date` datetime default NULL,
  `comment_author` varchar(255) default NULL,
  `author_email` varchar(255) default NULL,
  `author_website` varchar(255) default NULL,
  `page_id` varchar(255) default NULL,
  `module_name` varchar(50) default NULL,
  `active` tinyint(4) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `comment_title` varchar(255) default NULL,
  `trackback` tinyint(4) default NULL,
  `editor` tinyint(4) default NULL,
  `author_notify` tinyint(4) default NULL,
  `notified` tinyint(4) default NULL,
  `ip` varchar(25) default NULL,
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_acomments_seq`
--

DROP TABLE IF EXISTS `cms_module_acomments_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_acomments_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_acomments_seq`
--

INSERT INTO `cms_module_acomments_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_advancedcontent_blockdisplay`
--

DROP TABLE IF EXISTS `cms_module_advancedcontent_blockdisplay`;
CREATE TABLE IF NOT EXISTS `cms_module_advancedcontent_blockdisplay` (
  `user_id` int(11) default NULL,
  `content_id` int(11) default NULL,
  `template_id` int(11) default NULL,
  `item_id` text,
  `item_display` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_advancedcontent_blockdisplay`
--

INSERT INTO `cms_module_advancedcontent_blockdisplay` (`user_id`, `content_id`, `template_id`, `item_id`, `item_display`) VALUES
(1, -1, 16, 'content_en', 1),
(1, -1, 16, 'Sidebar', 0),
(1, 79, 16, 'content_en', 1),
(1, 81, 16, 'content_en', 1),
(1, 82, 16, 'content_en', 1),
(1, 82, 16, 'Sidebar', 1),
(1, 90, 16, 'content_en', 1),
(1, 15, 24, 'content_en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_advancedcontent_groupdisplay`
--

DROP TABLE IF EXISTS `cms_module_advancedcontent_groupdisplay`;
CREATE TABLE IF NOT EXISTS `cms_module_advancedcontent_groupdisplay` (
  `user_id` int(11) default NULL,
  `content_id` int(11) default NULL,
  `template_id` int(11) default NULL,
  `item_id` text,
  `item_display` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_advancedcontent_messagedisplay`
--

DROP TABLE IF EXISTS `cms_module_advancedcontent_messagedisplay`;
CREATE TABLE IF NOT EXISTS `cms_module_advancedcontent_messagedisplay` (
  `user_id` int(11) default NULL,
  `content_id` int(11) default NULL,
  `template_id` int(11) default NULL,
  `item_id` text,
  `item_display` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_advancedcontent_multi_inputs`
--

DROP TABLE IF EXISTS `cms_module_advancedcontent_multi_inputs`;
CREATE TABLE IF NOT EXISTS `cms_module_advancedcontent_multi_inputs` (
  `input_id` varchar(64) NOT NULL,
  `input_fields` text,
  PRIMARY KEY  (`input_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_advancedcontent_multi_inputs`
--

INSERT INTO `cms_module_advancedcontent_multi_inputs` (`input_id`, `input_fields`) VALUES
('SampleInput', '\n{content block="module_select" label="Select a module" block_type="dropdown" items="|News|Menu" values="|News|MenuManager"}\n{content block="module_params" label="Enter module parameters here" block_type="text" oneline=true size="56"}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_advancedcontent_multi_input_tpl_assocs`
--

DROP TABLE IF EXISTS `cms_module_advancedcontent_multi_input_tpl_assocs`;
CREATE TABLE IF NOT EXISTS `cms_module_advancedcontent_multi_input_tpl_assocs` (
  `input_id` varchar(64) default NULL,
  `tpl_name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_advancedcontent_multi_input_tpl_assocs`
--

INSERT INTO `cms_module_advancedcontent_multi_input_tpl_assocs` (`input_id`, `tpl_name`) VALUES
('SampleInput', 'multi_input_SampleTemplate'),
('SampleInput', 'multi_input_SampleTemplate');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_albums`
--

DROP TABLE IF EXISTS `cms_module_album_albums`;
CREATE TABLE IF NOT EXISTS `cms_module_album_albums` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(80) default NULL,
  `album_number` int(11) default NULL,
  `thumbnail_path` varchar(255) default NULL,
  `comment` text,
  `column_number` int(11) default NULL,
  `row_number` int(11) default NULL,
  `template` varchar(50) default NULL,
  PRIMARY KEY  (`album_id`),
  KEY `cms_module_album_albums_index` (`album_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_albums`
--

INSERT INTO `cms_module_album_albums` (`album_id`, `album_name`, `album_number`, `thumbnail_path`, `comment`, `column_number`, `row_number`, `template`) VALUES
(1, 'test', 1, '/Gallery/anime/thumb_1024_FF_542.jpg', NULL, 5, 0, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_albums_seq`
--

DROP TABLE IF EXISTS `cms_module_album_albums_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_album_albums_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_albums_seq`
--

INSERT INTO `cms_module_album_albums_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_categories`
--

DROP TABLE IF EXISTS `cms_module_album_categories`;
CREATE TABLE IF NOT EXISTS `cms_module_album_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(80) default NULL,
  `category_number` int(11) default NULL,
  `category_comment` text,
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_categories_seq`
--

DROP TABLE IF EXISTS `cms_module_album_categories_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_album_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_categories_seq`
--

INSERT INTO `cms_module_album_categories_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_category_listings`
--

DROP TABLE IF EXISTS `cms_module_album_category_listings`;
CREATE TABLE IF NOT EXISTS `cms_module_album_category_listings` (
  `listing_id` int(11) NOT NULL,
  `listing_album_id` int(11) default NULL,
  `listing_category_id` int(11) default NULL,
  `listing_number` int(11) default NULL,
  PRIMARY KEY  (`listing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_category_listings_seq`
--

DROP TABLE IF EXISTS `cms_module_album_category_listings_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_album_category_listings_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_category_listings_seq`
--

INSERT INTO `cms_module_album_category_listings_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_pictures`
--

DROP TABLE IF EXISTS `cms_module_album_pictures`;
CREATE TABLE IF NOT EXISTS `cms_module_album_pictures` (
  `picture_id` int(11) NOT NULL,
  `picture_name` varchar(80) default NULL,
  `picture_album_id` int(11) default NULL,
  `picture_number` int(11) default NULL,
  `thumbnail_path` varchar(255) default NULL,
  `picture_path` varchar(255) default NULL,
  `comment` text,
  `comment2` text,
  `comment3` text,
  `thumbnail_width` varchar(20) default NULL,
  `thumbnail_height` varchar(20) default NULL,
  PRIMARY KEY  (`picture_id`),
  KEY `cms_module_album_pictures_index` (`picture_album_id`,`picture_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_pictures`
--

INSERT INTO `cms_module_album_pictures` (`picture_id`, `picture_name`, `picture_album_id`, `picture_number`, `thumbnail_path`, `picture_path`, `comment`, `comment2`, `comment3`, `thumbnail_width`, `thumbnail_height`) VALUES
(1, '1024_FF_542.jpg', 1, 1, '/Gallery/anime/thumb_1024_FF_542.jpg', '/Gallery/anime/1024_FF_542.jpg', NULL, NULL, NULL, '96', '72'),
(2, '1024_t_variant.jpg', 1, 2, '/Gallery/anime/thumb_1024_t_variant.jpg', '/Gallery/anime/1024_t_variant.jpg', NULL, NULL, NULL, '96', '72'),
(3, 'AMSM520_1280.jpg', 1, 3, '/Gallery/anime/thumb_AMSM520_1280.jpg', '/Gallery/anime/AMSM520_1280.jpg', NULL, NULL, NULL, '96', '72'),
(4, 'amz_sm_528_1280.jpg', 1, 4, '/Gallery/anime/thumb_amz_sm_528_1280.jpg', '/Gallery/anime/amz_sm_528_1280.jpg', NULL, NULL, NULL, '96', '72');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_album_pictures_seq`
--

DROP TABLE IF EXISTS `cms_module_album_pictures_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_album_pictures_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_album_pictures_seq`
--

INSERT INTO `cms_module_album_pictures_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_attach_attachments`
--

DROP TABLE IF EXISTS `cms_module_attach_attachments`;
CREATE TABLE IF NOT EXISTS `cms_module_attach_attachments` (
  `attachid` int(11) NOT NULL,
  `name` varchar(64) default NULL,
  `sourcetype` int(11) default NULL,
  `sourceid` int(11) default NULL,
  `desttype` int(11) default NULL,
  `destid` varchar(128) default NULL,
  PRIMARY KEY  (`attachid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_attach_attachments`
--

INSERT INTO `cms_module_attach_attachments` (`attachid`, `name`, `sourcetype`, `sourceid`, `desttype`, `destid`) VALUES
(1, 'xxxx', 1, 58, 3, '/CGFeedback-1.5.4.tar.gz');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_attach_attachments_seq`
--

DROP TABLE IF EXISTS `cms_module_attach_attachments_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_attach_attachments_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_attach_attachments_seq`
--

INSERT INTO `cms_module_attach_attachments_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_attach_restypes`
--

DROP TABLE IF EXISTS `cms_module_attach_restypes`;
CREATE TABLE IF NOT EXISTS `cms_module_attach_restypes` (
  `typeid` int(11) NOT NULL,
  `typename` varchar(32) default NULL,
  `destonly` tinyint(4) default NULL,
  `active` tinyint(4) default NULL,
  `iscore` tinyint(4) default NULL,
  `type_retrievecombo` text,
  `type_retrieveitem` text,
  `type_activecheck` text,
  PRIMARY KEY  (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_attach_restypes`
--

INSERT INTO `cms_module_attach_restypes` (`typeid`, `typename`, `destonly`, `active`, `iscore`, `type_retrievecombo`, `type_retrieveitem`, `type_activecheck`) VALUES
(1, 'Content Page', 0, 1, 1, '', '$manager =& $gCms->GetHierarchyManager();\n$node =& $manager->sureGetNodeById($item->destid);\nif(!isset($node))	return false;\n$content =& $node->GetContent();\n$item->ressource_name = $content->Name();\n$item->ressource_url = $content->getURL();', '$result=true;'),
(2, 'URL', 1, 1, 1, '', '$item->ressource_name = $item->name;\n$item->ressource_url = $item->destid;', '$result=true;'),
(3, 'File', 1, 1, 1, '', '$item->ressource_name = $item->name;\n$item->ressource_url = $gCms->config["uploads_url"].str_replace("//","/","/attachments/".$item->destid);\n$info = $this->plGetFileInfo($gCms->config["uploads_path"]."/attachments/".$item->destid);\nif($info){\n	foreach($info as $key=>$value)	$item->$key = $value;\n}', '$result=true;'),
(4, 'News-article', 0, 0, 0, '$query = "SELECT news_id, news_title FROM ".cms_db_prefix()."module_news";\n$dbresult =& $db->Execute($query);\nwhile ($dbresult && $row = $dbresult->FetchRow()){\n	$options[$row["news_id"]] = $row["news_title"];\n}', '$newsmodule = $this->GetModuleInstance("News");\nif(!$newsmodule) return false;\n\n$query = "SELECT news_title FROM ".cms_db_prefix()."module_news WHERE news_id=?";\n$dbresult = $db->Execute($query,array($item->destid));\nif($dbresult && $row = $dbresult->FetchRow()){\n	$item->ressource_name = $row["news_title"];\n}else{\n	return false;\n}\n\n$prettyurl = "news/" . $item->destid."/".$returnid."/".munge_string_to_url($item->ressource_name);\n$item->ressource_url = $newsmodule->CreateLink($id,"detail",$returnid,"",array("articleid"=>$item->destid),"",true, false, "", true, $prettyurl);', 'if(!isset($gCms->modules["News"]) || !$gCms->modules["News"]["active"]){\n	$result = false;\n}else{\n	$result = true;\n}'),
(5, 'ShopMadeSimple-Product', 0, 0, 0, '$dbresult = $db->Execute("SELECT product_id, name FROM ".cms_db_prefix()."module_sms_products");\nwhile ($dbresult && $row = $dbresult->FetchRow()){\n	$options[$row["product_id"]] = $row["name"];\n}', '$smsmodule = $this->GetModuleInstance("ShopMadeSimple");\n\nif(!$smsmodule) return false;\n$dbresult = $db->Execute("SELECT name FROM ".cms_db_prefix()."module_sms_products WHERE product_id=?",array($item->destid));\nif($dbresult && $row = $dbresult->FetchRow()){\n	$item->ressource_name = $row["name"];\n	$item->ressource_url = $smsmodule->CreateLink($id, "fe_product_detail", $returnid, $row["name"], array("product_id"=>$item->destid), "", true);\n}', 'return (isset($gCms->modules["ShopMadeSimple"]) && $gCms->modules["ShopMadeSimple"]["active"]);'),
(6, 'Album', 0, 0, 0, '$dbresult = $db->Execute("SELECT album_id, album_name FROM ".cms_db_prefix()."module_album_albums");\nwhile ($dbresult && $row = $dbresult->FetchRow()){\n	$options[$row["album_id"]] = $row["album_name"];\n}', '$module = $this->GetModuleInstance("Album");\nif(!$module) return false;\n$dbresult = $db->Execute("SELECT album_name FROM ".cms_db_prefix()."module_album_albums WHERE album_id=?",array($item->destid));\nif($dbresult && $row = $dbresult->FetchRow()){\n	$item->ressource_name = $row["album_name"];\n	$pretty_url = false;\n	if(FALSE){	// SET THIS TO TRUE TO ENABLE PRETTY URLS\n		$q = "SELECT hierarchy_path FROM ".cms_db_prefix()."content WHERE content_id=''".$returnid."''";\n		$dbresult = $db->Execute( $q );\n		if($dbresult && $call_page = $dbresult->FetchRow()){\n			$pretty_url = $call_page["hierarchy_path"]."/album-".$this->albums[$i]->id."/".$returnid;\n		}\n	}\n	$item->ressource_url = $module->CreateLink($id, "default", $returnid, $row["album_name"], array("albumid"=>$item->destid), "", true, false, "", false, $pretty_url);\n}', 'return (isset($gCms->modules["Album"]) && $gCms->modules["Album"]["active"]);');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_attach_restypes_seq`
--

DROP TABLE IF EXISTS `cms_module_attach_restypes_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_attach_restypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_attach_restypes_seq`
--

INSERT INTO `cms_module_attach_restypes_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cge_assocdata`
--

DROP TABLE IF EXISTS `cms_module_cge_assocdata`;
CREATE TABLE IF NOT EXISTS `cms_module_cge_assocdata` (
  `id` int(11) NOT NULL auto_increment,
  `key1` varchar(255) default NULL,
  `key2` varchar(255) default NULL,
  `key3` varchar(255) default NULL,
  `key4` varchar(255) default NULL,
  `data` text,
  `type` varchar(20) default NULL,
  `expiry` varchar(20) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cge_countries`
--

DROP TABLE IF EXISTS `cms_module_cge_countries`;
CREATE TABLE IF NOT EXISTS `cms_module_cge_countries` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(2) NOT NULL,
  `name` varchar(50) default NULL,
  `sorting` int(11) default '0',
  PRIMARY KEY  (`id`,`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `cms_module_cge_countries`
--

INSERT INTO `cms_module_cge_countries` (`id`, `code`, `name`, `sorting`) VALUES
(1, 'AF', 'Afghanistan', 0),
(2, 'AL', 'Albania', 0),
(3, 'DZ', 'Algeria', 0),
(4, 'AS', 'American Samoa', 0),
(5, 'AD', 'Andorra', 0),
(6, 'AO', 'Angola', 0),
(7, 'AI', 'Anguilla', 0),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 0),
(10, 'AR', 'Argentina', 0),
(11, 'AM', 'Armenia', 0),
(12, 'AW', 'Aruba', 0),
(13, 'AU', 'Australia', 0),
(14, 'AT', 'Austria', 0),
(15, 'AZ', 'Azerbaijan', 0),
(16, 'BS', 'Bahamas', 0),
(17, 'BH', 'Bahrain', 0),
(18, 'BD', 'Bangladesh', 0),
(19, 'BB', 'Barbados', 0),
(20, 'BY', 'Belarus', 0),
(21, 'BE', 'Belgium', 0),
(22, 'BZ', 'Belize', 0),
(23, 'BJ', 'Benin', 0),
(24, 'BM', 'Bermuda', 0),
(25, 'BT', 'Bhutan', 0),
(26, 'BO', 'Bolivia', 0),
(27, 'BA', 'Bosnia And Herzegowina', 0),
(28, 'BW', 'Botswana', 0),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 0),
(31, 'IO', 'British Indian Ocean Territory', 0),
(32, 'BN', 'Brunei Darussalam', 0),
(33, 'BG', 'Bulgaria', 0),
(34, 'BF', 'Burkina Faso', 0),
(35, 'BI', 'Burundi', 0),
(36, 'KH', 'Cambodia', 0),
(37, 'CM', 'Cameroon', 0),
(38, 'CA', 'Canada', 0),
(39, 'CV', 'Cape Verde', 0),
(40, 'KY', 'Cayman Islands', 0),
(41, 'CF', 'Central African Republic', 0),
(42, 'TD', 'Chad', 0),
(43, 'CL', 'Chile', 0),
(44, 'CN', 'China', 0),
(45, 'CX', 'Christmas Island', 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0),
(47, 'CO', 'Colombia', 0),
(48, 'KM', 'Comoros', 0),
(49, 'CG', 'Congo', 0),
(50, 'CK', 'Cook Islands', 0),
(51, 'CR', 'Costa Rica', 0),
(52, 'CI', 'Cote D''Ivoire', 0),
(53, 'HR', 'Croatia (Local Name: Hrvatska)', 0),
(54, 'CU', 'Cuba', 0),
(55, 'CY', 'Cyprus', 0),
(56, 'CZ', 'Czech Republic', 0),
(57, 'DK', 'Denmark', 0),
(58, 'DJ', 'Djibouti', 0),
(59, 'DM', 'Dominica', 0),
(60, 'DO', 'Dominican Republic', 0),
(61, 'TP', 'East Timor', 0),
(62, 'EC', 'Ecuador', 0),
(63, 'EG', 'Egypt', 0),
(64, 'SV', 'El Salvador', 0),
(65, 'GQ', 'Equatorial Guinea', 0),
(66, 'ER', 'Eritrea', 0),
(67, 'EE', 'Estonia', 0),
(68, 'ET', 'Ethiopia', 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0),
(70, 'FO', 'Faroe Islands', 0),
(71, 'FJ', 'Fiji', 0),
(72, 'FI', 'Finland', 0),
(73, 'FR', 'France', 0),
(74, 'GF', 'French Guiana', 0),
(75, 'PF', 'French Polynesia', 0),
(76, 'TF', 'French Southern Territories', 0),
(77, 'GA', 'Gabon', 0),
(78, 'GM', 'Gambia', 0),
(79, 'GE', 'Georgia', 0),
(80, 'DE', 'Germany', 0),
(81, 'GH', 'Ghana', 0),
(82, 'GI', 'Gibraltar', 0),
(83, 'GR', 'Greece', 0),
(84, 'GL', 'Greenland', 0),
(85, 'GD', 'Grenada', 0),
(86, 'GP', 'Guadeloupe', 0),
(87, 'GU', 'Guam', 0),
(88, 'GT', 'Guatemala', 0),
(89, 'GN', 'Guinea', 0),
(90, 'GW', 'Guinea-Bissau', 0),
(91, 'GY', 'Guyana', 0),
(92, 'HT', 'Haiti', 0),
(93, 'HM', 'Heard And Mc Donald Islands', 0),
(94, 'VA', 'Holy See (Vatican City State)', 0),
(95, 'HN', 'Honduras', 0),
(96, 'HK', 'Hong Kong', 0),
(97, 'HU', 'Hungary', 0),
(98, 'IS', 'Icel And', 0),
(99, 'IN', 'India', 0),
(100, 'ID', 'Indonesia', 0),
(101, 'IR', 'Iran (Islamic Republic Of)', 0),
(102, 'IQ', 'Iraq', 0),
(103, 'IE', 'Ireland', 0),
(104, 'IL', 'Israel', 0),
(105, 'IT', 'Italy', 0),
(106, 'JM', 'Jamaica', 0),
(107, 'JP', 'Japan', 0),
(108, 'JO', 'Jordan', 0),
(109, 'KZ', 'Kazakhstan', 0),
(110, 'KE', 'Kenya', 0),
(111, 'KI', 'Kiribati', 0),
(112, 'KP', 'Korea', 0),
(113, 'KR', 'Korea', 0),
(114, 'KW', 'Kuwait', 0),
(115, 'KG', 'Kyrgyzstan', 0),
(116, 'LA', 'Lao People''S Dem Republic', 0),
(117, 'LV', 'Latvia', 0),
(118, 'LB', 'Lebanon', 0),
(119, 'LS', 'Lesotho', 0),
(120, 'LR', 'Liberia', 0),
(121, 'LY', 'Libyan Arab Jamahiriya', 0),
(122, 'LI', 'Liechtenstein', 0),
(123, 'LT', 'Lithuania', 0),
(124, 'LU', 'Luxembourg', 0),
(125, 'MO', 'Macau', 0),
(126, 'MK', 'Macedonia', 0),
(127, 'MG', 'Madagascar', 0),
(128, 'MW', 'Malawi', 0),
(129, 'MY', 'Malaysia', 0),
(130, 'MV', 'Maldives', 0),
(131, 'ML', 'Mali', 0),
(132, 'MT', 'Malta', 0),
(133, 'MH', 'Marshall Islands', 0),
(134, 'MQ', 'Martinique', 0),
(135, 'MR', 'Mauritania', 0),
(136, 'MU', 'Mauritius', 0),
(137, 'YT', 'Mayotte', 0),
(138, 'MX', 'Mexico', 0),
(139, 'FM', 'Micronesia', 0),
(140, 'MD', 'Moldova', 0),
(141, 'MC', 'Monaco', 0),
(142, 'MN', 'Mongolia', 0),
(143, 'MS', 'Montserrat', 0),
(144, 'MA', 'Morocco', 0),
(145, 'MZ', 'Mozambique', 0),
(146, 'MM', 'Myanmar', 0),
(147, 'NA', 'Namibia', 0),
(148, 'NR', 'Nauru', 0),
(149, 'NP', 'Nepal', 0),
(150, 'NL', 'Netherlands', 0),
(151, 'AN', 'Netherlands Ant Illes', 0),
(152, 'NC', 'New Caledonia', 0),
(153, 'NZ', 'New Zealand', 0),
(154, 'NI', 'Nicaragua', 0),
(155, 'NE', 'Niger', 0),
(156, 'NG', 'Nigeria', 0),
(157, 'NU', 'Niue', 0),
(158, 'NF', 'Norfolk Island', 0),
(159, 'MP', 'Northern Mariana Islands', 0),
(160, 'NO', 'Norway', 0),
(161, 'OM', 'Oman', 0),
(162, 'PK', 'Pakistan', 0),
(163, 'PW', 'Palau', 0),
(164, 'PA', 'Panama', 0),
(165, 'PG', 'Papua New Guinea', 0),
(166, 'PY', 'Paraguay', 0),
(167, 'PE', 'Peru', 0),
(168, 'PH', 'Philippines', 0),
(169, 'PN', 'Pitcairn', 0),
(170, 'PL', 'Poland', 0),
(171, 'PT', 'Portugal', 0),
(172, 'PR', 'Puerto Rico', 0),
(173, 'QA', 'Qatar', 0),
(174, 'RE', 'Reunion', 0),
(175, 'RO', 'Romania', 0),
(176, 'RU', 'Russian Federation', 0),
(177, 'RW', 'Rwanda', 0),
(178, 'KN', 'Saint K Itts And Nevis', 0),
(179, 'LC', 'Saint Lucia', 0),
(180, 'VC', 'Saint Vincent', 0),
(181, 'WS', 'Samoa', 0),
(182, 'SM', 'San Marino', 0),
(183, 'ST', 'Sao Tome And Principe', 0),
(184, 'SA', 'Saudi Arabia', 0),
(185, 'SN', 'Senegal', 0),
(186, 'SC', 'Seychelles', 0),
(187, 'SL', 'Sierra Leone', 0),
(188, 'SG', 'Singapore', 0),
(189, 'SK', 'Slovakia (Slovak Republic)', 0),
(190, 'SI', 'Slovenia', 0),
(191, 'SB', 'Solomon Islands', 0),
(192, 'SO', 'Somalia', 0),
(193, 'ZA', 'South Africa', 0),
(194, 'GS', 'South Georgia', 0),
(195, 'ES', 'Spain', 0),
(196, 'LK', 'Sri Lanka', 0),
(197, 'SH', 'St. Helena', 0),
(198, 'PM', 'St. Pierre And Miquelon', 0),
(199, 'SD', 'Sudan', 0),
(200, 'SR', 'Suriname', 0),
(201, 'SJ', 'Svalbard', 0),
(202, 'SZ', 'Sw Aziland', 0),
(203, 'SE', 'Sweden', 0),
(204, 'CH', 'Switzerland', 0),
(205, 'SY', 'Syrian Arab Republic', 0),
(206, 'TW', 'Taiwan', 0),
(207, 'TJ', 'Tajikistan', 0),
(208, 'TZ', 'Tanzania', 0),
(209, 'TH', 'Thailand', 0),
(210, 'TG', 'Togo', 0),
(211, 'TK', 'Tokelau', 0),
(212, 'TO', 'Tonga', 0),
(213, 'TT', 'Trinidad And Tobago', 0),
(214, 'TN', 'Tunisia', 0),
(215, 'TR', 'Turkey', 0),
(216, 'TM', 'Turkmenistan', 0),
(217, 'TC', 'Turks And Caicos Islands', 0),
(218, 'TV', 'Tuvalu', 0),
(219, 'UG', 'Uganda', 0),
(220, 'UA', 'Ukraine', 0),
(221, 'AE', 'United Arab Emirates', 0),
(222, 'GB', 'United Kingdom', 0),
(223, 'US', 'United States', 0),
(224, 'UM', 'United States Minor Is.', 0),
(225, 'UY', 'Uruguay', 0),
(226, 'UZ', 'Uzbekistan', 0),
(227, 'VU', 'Vanuatu', 0),
(228, 'VE', 'Venezuela', 0),
(229, 'VN', 'Viet Nam', 0),
(230, 'VG', 'Virgin Islands (British)', 0),
(231, 'VI', 'Virgin Islands (U.S.)', 0),
(232, 'WF', 'Wallis And Futuna Islands', 0),
(233, 'EH', 'Western Sahara', 0),
(234, 'YE', 'Yemen', 0),
(235, 'YU', 'Yugoslavia', 0),
(236, 'ZR', 'Zaire', 0),
(237, 'ZM', 'Zambia', 0),
(238, 'ZW', 'Zimbabwe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cge_states`
--

DROP TABLE IF EXISTS `cms_module_cge_states`;
CREATE TABLE IF NOT EXISTS `cms_module_cge_states` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(2) NOT NULL,
  `name` varchar(50) default NULL,
  `sorting` int(11) default '0',
  PRIMARY KEY  (`id`,`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `cms_module_cge_states`
--

INSERT INTO `cms_module_cge_states` (`id`, `code`, `name`, `sorting`) VALUES
(1, 'AL', 'Alabama', 0),
(2, 'AK', 'Alaska', 0),
(3, 'AS', 'American Samoa', 0),
(4, 'AZ', 'Arizona', 0),
(5, 'AR', 'Arkansas', 0),
(6, 'CA', 'California', 0),
(7, 'CO', 'Colorado', 0),
(8, 'CT', 'Connecticut', 0),
(9, 'DE', 'Delaware', 0),
(10, 'DC', 'District of Columbia', 0),
(11, 'FM', 'Fed. States of Micronesia', 0),
(12, 'FL', 'Florida', 0),
(13, 'GA', 'Georgia', 0),
(14, 'GU', 'Guam', 0),
(15, 'HI', 'Hawaii', 0),
(16, 'ID', 'Idaho', 0),
(17, 'IL', 'Illinois', 0),
(18, 'IN', 'Indiana', 0),
(19, 'IA', 'Iowa', 0),
(20, 'KS', 'Kansas', 0),
(21, 'KY', 'Kentucky', 0),
(22, 'LA', 'Louisiana', 0),
(23, 'ME', 'Maine', 0),
(24, 'MH', 'Marshall Islands', 0),
(25, 'MD', 'Maryland', 0),
(26, 'MA', 'Massachusetts', 0),
(27, 'MI', 'Michigan', 0),
(28, 'MN', 'Minnesota', 0),
(29, 'MS', 'Mississippi', 0),
(30, 'MO', 'Missouri', 0),
(31, 'MT', 'Montana', 0),
(32, 'NE', 'Nebraska', 0),
(33, 'NV', 'Nevada', 0),
(34, 'NH', 'New Hampshire', 0),
(35, 'NJ', 'New Jersey', 0),
(36, 'NM', 'New Mexico', 0),
(37, 'NY', 'New York', 0),
(38, 'NC', 'North Carolina', 0),
(39, 'ND', 'North Dakota', 0),
(40, 'MP', 'Northern Mariana Is.', 0),
(41, 'OH', 'Ohio', 0),
(42, 'OK', 'Oklahoma', 0),
(43, 'OR', 'Oregon', 0),
(44, 'PW', 'Palau', 0),
(45, 'PA', 'Pennsylvania', 0),
(46, 'PR', 'Puerto Rico', 0),
(47, 'RI', 'Rhode Island', 0),
(48, 'SC', 'South Carolina', 0),
(49, 'SD', 'South Dakota', 0),
(50, 'TN', 'Tennessee', 0),
(51, 'TX', 'Texas', 0),
(52, 'UT', 'Utah', 0),
(53, 'VT', 'Vermont', 0),
(54, 'VA', 'Virginia', 0),
(55, 'VI', 'Virgin Islands', 0),
(56, 'WA', 'Washington', 0),
(57, 'WV', 'West Virginia', 0),
(58, 'WI', 'Wisconsin', 0),
(59, 'WY', 'Wyoming', 0),
(60, 'AB', 'Alberta', 0),
(61, 'BC', 'British Columbia', 0),
(62, 'MB', 'Manitoba', 0),
(63, 'NB', 'New Brunswick', 0),
(64, 'NF', 'Newfoundland', 0),
(65, 'NT', 'Northwest Territories', 0),
(66, 'NS', 'Nova Scotia', 0),
(67, 'ON', 'Ontario', 0),
(68, 'PE', 'Prince Edward Island', 0),
(69, 'QC', 'Quebec', 0),
(70, 'SK', 'Saskatchewan', 0),
(71, 'YT', 'Yukon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cgfeedback_comments`
--

DROP TABLE IF EXISTS `cms_module_cgfeedback_comments`;
CREATE TABLE IF NOT EXISTS `cms_module_cgfeedback_comments` (
  `id` int(11) NOT NULL auto_increment,
  `key1` varchar(255) default NULL,
  `key2` varchar(255) default NULL,
  `key3` varchar(255) default NULL,
  `rating` int(11) default NULL,
  `title` varchar(255) default NULL,
  `data` text,
  `status` varchar(20) default NULL,
  `author_name` varchar(255) default NULL,
  `author_email` varchar(255) default NULL,
  `author_ip` varchar(25) default NULL,
  `author_notify` tinyint(4) default NULL,
  `admin_notes` text,
  `notified` tinyint(4) default NULL,
  `origurl` varchar(255) default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `cms_module_cgfeedback_comments`
--

INSERT INTO `cms_module_cgfeedback_comments` (`id`, `key1`, `key2`, `key3`, `rating`, `title`, `data`, `status`, `author_name`, `author_email`, `author_ip`, `author_notify`, `admin_notes`, `notified`, `origurl`, `created`, `modified`) VALUES
(17, '__page__', '62', '', 1, 'qwe', 'qe', 'published', 'qwe', 'qwe', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment&amp;random=1322060866105', '2011-11-23 15:07:51', '2011-11-23 15:07:51'),
(25, '__page__', '22', '', 4, 'news comment', 'this news is suck', 'published', 'ronald', 'asd@asd.com', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?mact=News,cntnt01,detail,0&amp;cntnt01articleid=22&amp;cntnt01origid=58&amp;cntnt01returnid=58', '2011-11-28 06:24:05', '2011-11-28 06:24:05'),
(26, '__page__', '21', '', 5, 'comment for qqqq', 'asdasdas', 'published', 'qqqq', 'qqq@qqq.qqq', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?mact=News,cntnt01,detail,0&amp;cntnt01articleid=21&amp;cntnt01origid=58&amp;cntnt01returnid=58', '2011-11-28 06:25:54', '2011-11-28 06:25:54'),
(27, '__page__', '21', '', 4, 'zzz', 'zzzzz', 'published', 'zzz', 'zzz', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?mact=News,cntnt01,detail,0&amp;cntnt01articleid=21&amp;cntnt01origid=58&amp;cntnt01returnid=58', '2011-11-29 04:08:20', '2011-11-29 04:08:20'),
(28, '__page__', '21', '', 2, 'asdasd', 'asdasd', 'published', 'asdasda', 'asdasd', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?mact=News,cntnt01,detail,0&amp;cntnt01articleid=21&amp;cntnt01origid=62&amp;cntnt01returnid=58', '2011-11-29 04:08:44', '2011-11-29 04:08:44'),
(41, '__page__', '62', '', 1, 'asd', 'asd', 'published', 'asd', 'asd', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment&amp;random=1323626215231', '2011-12-11 17:57:01', '2011-12-11 17:57:01'),
(42, '__page__', '22', '', 1, 'vvv', 'vvv', 'published', 'vvv', 'vvv', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment&amp;random=1323626240441', '2011-12-11 17:57:26', '2011-12-11 17:57:26'),
(43, '__page__', '20', '', 1, 'zxc', 'zxc', 'published', 'zxc', 'zxc', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 17:57:55', '2011-12-11 17:57:55'),
(46, '__page__', '62', '', 1, 'zz', 'zz', 'published', 'zz', 'zz', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:08:38', '2011-12-11 18:08:38'),
(47, '__page__', '62', '', 1, 'qq', 'qq', 'published', 'qq', 'qq', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:10:17', '2011-12-11 18:10:17'),
(48, '__page__', '22', '', 1, 'asd', 'asd', 'published', 'asd', 'asd', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:10:29', '2011-12-11 18:10:29'),
(49, '__page__', '62', '', 1, 'f', 'f', 'published', 'f', 'f', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:12:29', '2011-12-11 18:12:29'),
(50, '__page__', '22', '', 1, 'h', 'h', 'published', 'h', 'h', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:12:39', '2011-12-11 18:12:39'),
(51, '__page__', '22', '', 1, 'r', 'r', 'published', 'r', 'r', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:13:07', '2011-12-11 18:13:07'),
(52, '__page__', '22', '', 1, 'qwe', 'qwe', 'published', 'qwe', 'qwe', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:14:50', '2011-12-11 18:14:50'),
(53, '__page__', '22', '', 1, 'yy', 'yy', 'published', 'yy', 'yy', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-11 18:15:56', '2011-12-11 18:15:56'),
(54, '__page__', '62', '', 1, 'ccc', 'ccc', 'published', 'ccc', 'ccc', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-12 02:20:58', '2011-12-12 02:20:58'),
(55, '__page__', '22', '', 1, 'rt', 'rt', 'published', 'rt', 'rt', '127.0.0.1', NULL, NULL, 1, 'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment', '2011-12-12 02:21:10', '2011-12-12 02:21:10'),
(56, '__page__', '62', '', 3, 'test mailer', 'want to try if the mailer is going fine.\r\nit should be mailed to admin for notification', 'published', 'someone', 'ronald.a.96@gmail.com', '203.77.233.26', NULL, NULL, 1, 'http://fti-harvard.org/index.php?page=newcomment', '2011-12-12 06:16:25', '2011-12-12 06:16:26'),
(57, '__page__', '24', '', 5, 'great&#33;&#33;', 'Great&#33;&#33;\r\nthe file attached is downloaded nicely.\r\nLayout is going well, 5 rated&#33;&#33;', 'published', 'guest', 'NA', '203.77.233.26', NULL, NULL, 1, 'http://fti-harvard.org/index.php?page=newcomment', '2011-12-12 06:59:49', '2011-12-12 06:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cgfeedback_fielddefs`
--

DROP TABLE IF EXISTS `cms_module_cgfeedback_fielddefs`;
CREATE TABLE IF NOT EXISTS `cms_module_cgfeedback_fielddefs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `type` int(11) default NULL,
  `attribs` text,
  `iorder` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cgfeedback_fieldvals`
--

DROP TABLE IF EXISTS `cms_module_cgfeedback_fieldvals`;
CREATE TABLE IF NOT EXISTS `cms_module_cgfeedback_fieldvals` (
  `comment_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY  (`comment_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_grouppermissions`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_grouppermissions`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_grouppermissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) default NULL,
  `permission_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `grouppermissions_index` (`id`,`group_id`,`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_cmsusers_grouppermissions`
--

INSERT INTO `cms_module_cmsusers_grouppermissions` (`id`, `group_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2011-11-12 13:54:18', '2011-11-12 13:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_groups`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_groups`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `is_active` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `comments` longtext,
  PRIMARY KEY  (`id`),
  KEY `groups_index` (`id`,`is_active`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_cmsusers_groups`
--

INSERT INTO `cms_module_cmsusers_groups` (`id`, `name`, `type`, `is_active`, `created_at`, `updated_at`, `comments`) VALUES
(1, 'CMSUsers', 'private', 1, '2011-11-12 13:54:05', '2011-11-12 13:54:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_group_profile_fields`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_group_profile_fields`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_group_profile_fields` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) default NULL,
  `profile_field_id` int(11) default NULL,
  `is_mandatory` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `comments` longtext,
  PRIMARY KEY  (`id`),
  KEY `group_profile_fields_index` (`id`,`group_id`,`profile_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_permissions`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_permissions`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `is_active` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `comments` longtext,
  PRIMARY KEY  (`id`),
  KEY `permissions_index` (`id`,`name`,`is_active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_cmsusers_permissions`
--

INSERT INTO `cms_module_cmsusers_permissions` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `comments`) VALUES
(1, 'Comment', 1, '2011-11-12 13:54:18', '2011-11-12 13:54:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_profiles`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_profiles`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_profiles` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `profile_index` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_profile_fields`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_profile_fields`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_profile_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `fname` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `tips` varchar(255) default NULL,
  `options` longtext,
  `is_active` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `comments` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_sessions`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_sessions`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_sessions` (
  `id` int(11) NOT NULL auto_increment,
  `issued_date` int(11) default NULL,
  `user_id` int(11) default NULL,
  `cookie_value` longtext,
  `remote_information` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_usergroups`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_usergroups`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_usergroups` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `usergroups_index` (`id`,`group_id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_cmsusers_usergroups`
--

INSERT INTO `cms_module_cmsusers_usergroups` (`id`, `group_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2011-11-12 13:54:05', '2011-11-12 13:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_cmsusers_users`
--

DROP TABLE IF EXISTS `cms_module_cmsusers_users`;
CREATE TABLE IF NOT EXISTS `cms_module_cmsusers_users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `algorithm` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `is_active` int(11) default NULL,
  `is_disabled` int(11) default NULL,
  `token` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `last_login` datetime default NULL,
  `comments` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_cmsusers_users`
--

INSERT INTO `cms_module_cmsusers_users` (`id`, `username`, `algorithm`, `salt`, `password`, `email`, `is_active`, `is_disabled`, `token`, `created_at`, `updated_at`, `last_login`, `comments`) VALUES
(1, 'dookie', 'sha1', '96b4a2de1bce8529033abf95de2af83a', '8cedabaa70c6af30c242b448cf7ec555a5123563', 'dookie@gmail.com', 1, 0, NULL, '2011-11-12 13:53:27', '2011-11-12 13:53:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_deps`
--

DROP TABLE IF EXISTS `cms_module_deps`;
CREATE TABLE IF NOT EXISTS `cms_module_deps` (
  `parent_module` varchar(25) default NULL,
  `child_module` varchar(25) default NULL,
  `minimum_version` varchar(25) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_deps`
--

INSERT INTO `cms_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES
('CMSForms', 'CMSUsers', '0.0.24', '2011-11-12 13:52:57', '2011-11-12 13:52:57'),
('CGExtensions', 'CGFeedback', '1.24', '2011-11-15 16:23:42', '2011-11-15 16:23:42'),
('CGSimpleSmarty', 'CGFeedback', '1.4', '2011-11-15 16:23:42', '2011-11-15 16:23:42'),
('CGExtensions', 'Uploads', '1.26', '2011-11-16 11:12:46', '2011-11-16 11:12:46'),
('CMSMailer', 'FrontEndUsers', '1.73.9', '2011-11-16 11:32:12', '2011-11-16 11:32:12'),
('CGExtensions', 'FrontEndUsers', '1.25.2', '2011-11-16 11:32:12', '2011-11-16 11:32:12'),
('CGExtensions', 'SelfRegistration', '1.25.2', '2011-11-23 09:42:43', '2011-11-23 09:42:43'),
('CMSMailer', 'SelfRegistration', '1.73.9', '2011-11-23 09:42:43', '2011-11-23 09:42:43'),
('FrontEndUsers', 'SelfRegistration', '1.14', '2011-11-23 09:42:43', '2011-11-23 09:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_belongs`
--

DROP TABLE IF EXISTS `cms_module_feusers_belongs`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_belongs` (
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  PRIMARY KEY  (`userid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_belongs`
--

INSERT INTO `cms_module_feusers_belongs` (`userid`, `groupid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_comments`
--

DROP TABLE IF EXISTS `cms_module_feusers_comments`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_comments` (
  `comment_id` int(11) NOT NULL,
  `comment_data` text,
  `comment_date` datetime default NULL,
  `comment_author_id` int(11) default NULL,
  `comment_author_name` varchar(255) default NULL,
  `page_id` varchar(255) default NULL,
  `module_name` varchar(50) default NULL,
  `active` tinyint(4) default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_comments_seq`
--

DROP TABLE IF EXISTS `cms_module_feusers_comments_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_comments_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_comments_seq`
--

INSERT INTO `cms_module_feusers_comments_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_dropdowns`
--

DROP TABLE IF EXISTS `cms_module_feusers_dropdowns`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_dropdowns` (
  `order_id` int(11) default NULL,
  `option_name` varchar(40) default NULL,
  `option_text` varchar(255) default NULL,
  `control_name` varchar(40) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_grouppropmap`
--

DROP TABLE IF EXISTS `cms_module_feusers_grouppropmap`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_grouppropmap` (
  `name` varchar(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_key` int(11) default NULL,
  `required` int(11) default NULL,
  `lostunflag` int(11) default NULL,
  PRIMARY KEY  (`name`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_grouppropmap`
--

INSERT INTO `cms_module_feusers_grouppropmap` (`name`, `group_id`, `sort_key`, `required`, `lostunflag`) VALUES
('firstname', 1, 0, 2, -1),
('lastname', 1, 1, 1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_groups`
--

DROP TABLE IF EXISTS `cms_module_feusers_groups`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_groups` (
  `id` int(11) NOT NULL,
  `groupname` varchar(32) default NULL,
  `groupdesc` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_groups`
--

INSERT INTO `cms_module_feusers_groups` (`id`, `groupname`, `groupdesc`) VALUES
(1, 'Member', 'Members group');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_groups_seq`
--

DROP TABLE IF EXISTS `cms_module_feusers_groups_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_groups_seq`
--

INSERT INTO `cms_module_feusers_groups_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_history`
--

DROP TABLE IF EXISTS `cms_module_feusers_history`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_history` (
  `userid` int(11) default NULL,
  `sessionid` varchar(32) default NULL,
  `action` varchar(32) default NULL,
  `refdate` datetime default NULL,
  `ipaddress` varchar(20) default NULL,
  KEY `idx_refdate` (`userid`,`refdate`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_history`
--

INSERT INTO `cms_module_feusers_history` (`userid`, `sessionid`, `action`, `refdate`, `ipaddress`) VALUES
(1, '2lr93cnrb9nc5t603fq4a04757', 'login', '2011-11-16 04:49:05', '127.0.0.1'),
(1, '2lr93cnrb9nc5t603fq4a04757', 'logout', '2011-11-16 04:49:26', '127.0.0.1'),
(1, '2lr93cnrb9nc5t603fq4a04757', 'login', '2011-11-16 06:53:45', '127.0.0.1'),
(1, 'l145gm7s7mhtag5m6ons6mscf4', 'fail', '2011-11-16 06:55:06', '127.0.0.1'),
(1, 'l145gm7s7mhtag5m6ons6mscf4', 'fail', '2011-11-16 06:55:14', '127.0.0.1'),
(1, '2lr93cnrb9nc5t603fq4a04757', 'logout', '2011-11-16 06:55:35', '127.0.0.1'),
(1, 'l145gm7s7mhtag5m6ons6mscf4', 'login', '2011-11-16 06:55:41', '127.0.0.1'),
(1, '2lr93cnrb9nc5t603fq4a04757', 'login', '2011-11-16 07:34:01', '127.0.0.1'),
(1, 'ua8q2p0kfko8fd90mej62fmen0', 'login', '2011-11-17 06:26:47', '127.0.0.1'),
(1, 'ua8q2p0kfko8fd90mej62fmen0', 'logout', '2011-11-17 06:30:47', '127.0.0.1'),
(1, 'linj7nesk3jq6afs9jmrlk0886', 'login', '2011-11-21 04:09:19', '127.0.0.1'),
(1, 'linj7nesk3jq6afs9jmrlk0886', 'login', '2011-11-21 06:11:29', '127.0.0.1'),
(1, 'linj7nesk3jq6afs9jmrlk0886', 'login', '2011-11-21 09:44:46', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'fail', '2011-11-23 02:01:38', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 02:01:42', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 02:11:25', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 02:17:42', '127.0.0.1'),
(1, 'ea62engfua6m9ssfmi8j0me0r2', 'login', '2011-11-23 02:21:33', '127.0.0.1'),
(2, '1i4ob8110tjk9p0bjjjnb02np3', 'fail', '2011-11-23 02:50:44', '127.0.0.1'),
(2, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 02:51:01', '127.0.0.1'),
(2, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 02:51:30', '127.0.0.1'),
(2, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 02:51:40', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 03:59:29', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 05:49:01', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 06:26:47', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 07:09:27', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 07:32:37', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 07:33:25', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 07:34:36', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 07:35:38', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 07:36:07', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'login', '2011-11-23 07:38:28', '127.0.0.1'),
(1, '1i4ob8110tjk9p0bjjjnb02np3', 'logout', '2011-11-23 07:55:07', '127.0.0.1'),
(1, '41668d8448f74bd4f63748c4d723c61b', 'login', '2011-12-12 06:22:11', '203.77.233.26'),
(1, '41668d8448f74bd4f63748c4d723c61b', 'login', '2011-12-12 07:34:22', '203.77.233.26'),
(1, '41668d8448f74bd4f63748c4d723c61b', 'login', '2011-12-12 08:49:59', '203.77.233.26');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_loggedin`
--

DROP TABLE IF EXISTS `cms_module_feusers_loggedin`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_loggedin` (
  `sessionid` varchar(255) default NULL,
  `lastused` int(11) default NULL,
  `userid` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_propdefn`
--

DROP TABLE IF EXISTS `cms_module_feusers_propdefn`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_propdefn` (
  `name` varchar(40) NOT NULL,
  `prompt` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  `length` int(11) default NULL,
  `maxlength` int(11) default NULL,
  `attribs` varchar(255) default NULL,
  `force_unique` tinyint(4) default NULL,
  `encrypt` tinyint(4) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_propdefn`
--

INSERT INTO `cms_module_feusers_propdefn` (`name`, `prompt`, `type`, `length`, `maxlength`, `attribs`, `force_unique`, `encrypt`) VALUES
('firstname', 'First name', '0', 80, 255, 'a:0:{}', 0, 0),
('lastname', 'Last name', '0', 80, 255, 'a:0:{}', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_properties`
--

DROP TABLE IF EXISTS `cms_module_feusers_properties`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_properties` (
  `id` int(11) NOT NULL,
  `userid` int(11) default NULL,
  `title` varchar(100) default NULL,
  `data` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_properties`
--

INSERT INTO `cms_module_feusers_properties` (`id`, `userid`, `title`, `data`) VALUES
(6, 1, 'lastname', 'andriyan'),
(5, 1, 'firstname', 'ronald');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_properties_seq`
--

DROP TABLE IF EXISTS `cms_module_feusers_properties_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_properties_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_properties_seq`
--

INSERT INTO `cms_module_feusers_properties_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_tempcode`
--

DROP TABLE IF EXISTS `cms_module_feusers_tempcode`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_tempcode` (
  `userid` int(11) NOT NULL,
  `code` varchar(25) default NULL,
  `created` datetime default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_users`
--

DROP TABLE IF EXISTS `cms_module_feusers_users`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) default NULL,
  `password` varchar(32) default NULL,
  `createdate` datetime default NULL,
  `expires` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_username` (`username`),
  KEY `idx_expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_users`
--

INSERT INTO `cms_module_feusers_users` (`id`, `username`, `password`, `createdate`, `expires`) VALUES
(1, 'ronald.a.96@gmail.com', 'aafc4484901c6ec60051f53e203e937a', '2011-11-16 04:46:03', '2016-11-16 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_feusers_users_seq`
--

DROP TABLE IF EXISTS `cms_module_feusers_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_feusers_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_feusers_users_seq`
--

INSERT INTO `cms_module_feusers_users_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_gallery`
--

DROP TABLE IF EXISTS `cms_module_gallery`;
CREATE TABLE IF NOT EXISTS `cms_module_gallery` (
  `fileid` int(11) NOT NULL auto_increment,
  `filename` varchar(255) default NULL,
  `filepath` varchar(255) default NULL,
  `filedate` datetime default NULL,
  `fileorder` int(11) default NULL,
  `active` int(11) default NULL,
  `defaultfile` int(11) default NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  `comment` text,
  PRIMARY KEY  (`fileid`,`galleryid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `cms_module_gallery`
--

INSERT INTO `cms_module_gallery` (`fileid`, `filename`, `filepath`, `filedate`, `fileorder`, `active`, `defaultfile`, `galleryid`, `title`, `comment`) VALUES
(1, 'Gallery/', '', '2011-10-29 03:03:35', -1, 1, 0, 0, 'Main Gallery Index', NULL),
(41, 'Classroom/', '', '2011-11-19 04:32:51', 0, 1, 0, 1, '', ''),
(42, 'Reception/', '', '2011-11-19 04:34:33', 0, 1, 0, 1, '', ''),
(43, '9.26.11Indonesia010.jpg', 'Classroom', '2011-11-19 04:31:19', 0, 1, 0, 41, '', ''),
(44, '9.26.11Indonesia016.jpg', 'Classroom', '2011-11-19 04:32:08', 0, 1, 0, 41, '', ''),
(45, '9.26.11Indonesia020.jpg', 'Classroom', '2011-11-19 04:32:39', 0, 1, 0, 41, '', ''),
(46, '9.26.11Indonesia024.jpg', 'Classroom', '2011-11-19 04:31:28', 0, 1, 0, 41, '', ''),
(47, '9.26.11Indonesia025.jpg', 'Classroom', '2011-11-19 04:30:32', 0, 1, 0, 41, '', ''),
(48, '9.26.11Indonesia034.jpg', 'Classroom', '2011-11-19 04:32:11', 0, 1, 0, 41, '', ''),
(49, '9.26.11Indonesia035.jpg', 'Classroom', '2011-11-19 04:32:54', 0, 1, 0, 41, '', ''),
(50, '9.26.11Indonesia062.jpg', 'Classroom', '2011-11-19 04:31:40', 0, 1, 0, 41, '', ''),
(51, '9.26.11Indonesia066.jpg', 'Classroom', '2011-11-19 04:32:42', 0, 1, 0, 41, '', ''),
(52, '9.26.11Indonesia071.jpg', 'Classroom', '2011-11-19 04:32:47', 0, 1, 0, 41, '', ''),
(53, '9.26.11Indonesia075.jpg', 'Classroom', '2011-11-19 04:30:41', 0, 1, 0, 41, '', ''),
(54, '9.26.11Indonesia104.jpg', 'Classroom', '2011-11-19 04:31:53', 0, 1, 0, 41, '', ''),
(55, '9.26.11Indonesia110.jpg', 'Classroom', '2011-11-19 04:31:33', 0, 1, 0, 41, '', ''),
(56, '9.26.11Indonesia113.jpg', 'Classroom', '2011-11-19 04:32:05', 0, 1, 0, 41, '', ''),
(57, '9.26.11Indonesia123.jpg', 'Classroom', '2011-11-19 04:30:38', 0, 1, 0, 41, '', ''),
(58, '9.26.11Indonesia138.jpg', 'Classroom', '2011-11-19 04:32:51', 0, 1, 0, 41, '', ''),
(59, '9.26.11Indonesia144.jpg', 'Classroom', '2011-11-19 04:31:58', 0, 1, 0, 41, '', ''),
(60, '9.26.11Indonesia155.jpg', 'Classroom', '2011-11-19 04:32:44', 0, 1, 0, 41, '', ''),
(61, '9.26.11Indonesia170.jpg', 'Classroom', '2011-11-19 04:30:25', 0, 1, 0, 41, '', ''),
(62, '9.26.11Indonesia176.jpg', 'Classroom', '2011-11-19 04:32:02', 0, 1, 0, 41, '', ''),
(63, '9.26.11Indonesia198.jpg', 'Classroom', '2011-11-19 04:30:34', 0, 1, 0, 41, '', ''),
(64, '9.26.11Indonesia202.jpg', 'Classroom', '2011-11-19 04:31:24', 0, 1, 0, 41, '', ''),
(65, '9.26.11Indonesia208.jpg', 'Classroom', '2011-11-19 04:30:44', 0, 1, 0, 41, '', ''),
(66, '9.26.11Indonesia233.jpg', 'Classroom', '2011-11-19 04:30:51', 0, 1, 0, 41, '', ''),
(67, '9.26.11Indonesia256.jpg', 'Classroom', '2011-11-19 04:31:43', 0, 1, 0, 41, '', ''),
(68, '9.26.11Indonesia258.jpg', 'Classroom', '2011-11-19 04:32:36', 0, 1, 0, 41, '', ''),
(69, '9.26.11Indonesia263.jpg', 'Classroom', '2011-11-19 04:31:46', 0, 1, 0, 41, '', ''),
(70, '9.26.11Indonesia276.jpg', 'Classroom', '2011-11-19 04:30:29', 0, 1, 0, 41, '', ''),
(71, '9.26.11Indonesia317.jpg', 'Classroom', '2011-11-19 04:31:50', 0, 1, 0, 41, '', ''),
(72, '9.26.11Indonesia322.jpg', 'Classroom', '2011-11-19 04:31:37', 0, 1, 0, 41, '', ''),
(73, '9.26.11Indonesia334.jpg', 'Classroom', '2011-11-19 04:30:47', 0, 1, 0, 41, '', ''),
(74, '9.29.11Loeb007.jpg', 'Reception', '2011-11-19 04:34:13', 0, 1, 0, 42, '', ''),
(75, '9.29.11Loeb008.jpg', 'Reception', '2011-11-19 04:34:17', 0, 1, 0, 42, '', ''),
(76, '9.29.11Loeb010.jpg', 'Reception', '2011-11-19 04:34:33', 0, 1, 0, 42, '', ''),
(77, '9.29.11Loeb013.jpg', 'Reception', '2011-11-19 04:34:06', 0, 1, 0, 42, '', ''),
(78, '9.29.11Loeb016.jpg', 'Reception', '2011-11-19 04:33:40', 0, 1, 0, 42, '', ''),
(79, '9.29.11Loeb017.jpg', 'Reception', '2011-11-19 04:33:26', 0, 1, 0, 42, '', ''),
(80, '9.29.11Loeb019.jpg', 'Reception', '2011-11-19 04:34:10', 0, 1, 0, 42, '', ''),
(81, '9.29.11Loeb020.jpg', 'Reception', '2011-11-19 04:32:59', 0, 1, 0, 42, '', ''),
(82, '9.29.11Loeb036.jpg', 'Reception', '2011-11-19 04:34:02', 0, 1, 0, 42, '', ''),
(83, '9.29.11Loeb038.jpg', 'Reception', '2011-11-19 04:33:57', 0, 1, 0, 42, '', ''),
(84, '9.29.11Loeb047.jpg', 'Reception', '2011-11-19 04:34:37', 0, 1, 0, 42, '', ''),
(85, '9.29.11Loeb139.jpg', 'Reception', '2011-11-19 04:33:34', 0, 1, 0, 42, '', ''),
(86, '9.29.11Loeb159.jpg', 'Reception', '2011-11-19 04:33:29', 0, 1, 0, 42, '', ''),
(87, '9.29.11Loeb161.jpg', 'Reception', '2011-11-19 04:33:43', 0, 1, 0, 42, '', ''),
(88, '9.29.11Loeb167.jpg', 'Reception', '2011-11-19 04:33:51', 0, 1, 0, 42, '', ''),
(89, '9.29.11Loeb177.jpg', 'Reception', '2011-11-19 04:34:24', 0, 1, 0, 42, '', ''),
(90, '9.29.11Loeb179.jpg', 'Reception', '2011-11-19 04:33:47', 0, 1, 0, 42, '', ''),
(91, '9.29.11Loeb184.jpg', 'Reception', '2011-11-19 04:34:20', 0, 1, 0, 42, '', ''),
(92, '9.29.11Loeb188.jpg', 'Reception', '2011-11-19 04:34:29', 0, 1, 0, 42, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_gallery_fielddefs`
--

DROP TABLE IF EXISTS `cms_module_gallery_fielddefs`;
CREATE TABLE IF NOT EXISTS `cms_module_gallery_fielddefs` (
  `fieldid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  `maxlength` int(11) default NULL,
  `dirfield` tinyint(4) default NULL,
  `sortorder` int(11) default NULL,
  `public` tinyint(4) default NULL,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_gallery_fieldvals`
--

DROP TABLE IF EXISTS `cms_module_gallery_fieldvals`;
CREATE TABLE IF NOT EXISTS `cms_module_gallery_fieldvals` (
  `fileid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY  (`fileid`,`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_gallery_props`
--

DROP TABLE IF EXISTS `cms_module_gallery_props`;
CREATE TABLE IF NOT EXISTS `cms_module_gallery_props` (
  `fileid` int(11) NOT NULL,
  `templateid` int(11) default NULL,
  `hideparentlink` int(11) default NULL,
  PRIMARY KEY  (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_gallery_props`
--

INSERT INTO `cms_module_gallery_props` (`fileid`, `templateid`, `hideparentlink`) VALUES
(1, 0, 1),
(17, 0, 0),
(27, 0, 0),
(32, 0, 0),
(41, 0, 0),
(42, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_gallery_templateprops`
--

DROP TABLE IF EXISTS `cms_module_gallery_templateprops`;
CREATE TABLE IF NOT EXISTS `cms_module_gallery_templateprops` (
  `templateid` int(11) NOT NULL auto_increment,
  `template` varchar(255) default NULL,
  `version` varchar(20) default NULL,
  `about` text,
  `thumbwidth` int(11) default NULL,
  `thumbheight` int(11) default NULL,
  `resizemethod` varchar(10) default NULL,
  `maxnumber` int(11) default NULL,
  `sortitems` varchar(255) default NULL,
  `visible` int(11) default NULL,
  PRIMARY KEY  (`templateid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cms_module_gallery_templateprops`
--

INSERT INTO `cms_module_gallery_templateprops` (`templateid`, `template`, `version`, `about`, `thumbwidth`, `thumbheight`, `resizemethod`, `maxnumber`, `sortitems`, `visible`) VALUES
(1, 'Fancybox', '1.3.4-2', '<p>This Gallerytemplate uses the Fancybox system version 1.3.4</p>\r\n<p>Documentation for extra options can be found at <a href="http://www.fancybox.net/" target="_blank">www.fancybox.net</a></p>\r\n<p>Files that come with Fancybox are stored in <em>modules/Gallery/templates/fancybox/</em></p>\r\n<p>Fancybox was built using the <a href="http://jquery.com/">jQuery library</a>. Licensed under both <a href="http://docs.jquery.com/Licensing">MIT and GPL licenses</a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1),
(2, 'Lightbox', '2.04-3', '<p>This Gallerytemplate uses the Lightbox2 system version 2.04 by Lokesh Dhakar</p>\r\n<p>Documentation can be found at <a href="http://www.huddletogether.com/projects/lightbox2/" target="_blank">www.huddletogether.com/projects/lightbox2</a></p>\r\n<p>Files that come with Lightbox are stored in <em>modules/Gallery/templates/lightbox/</em></p>\r\n<p>Licensed under the <a href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attribution 2.5 License</a></p>\r\n<a href="http://docs.jquery.com/Licensing"></a>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1),
(3, 'Lytebox', '3.22-4', '<p>This Gallerytemplate uses the Lytebox system version 3.22 by Markus F. Hay, with a <a href="http://nederveld.wordpress.com/2009/07/02/lytebox-and-internet-explorer-8/" target="_blank">ie8 fix</a>.</p>\r\n<p>Documentation can be found at <a href="http://www.dolem.com/lytebox/" target="_blank">www.dolem.com/lytebox</a></p>\r\n<p>Files that come with Lytebox are stored in <em>modules/Gallery/templates/lytebox/</em></p>\r\n<p>Licensed under <a href="http://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 License</a><a href="http://docs.jquery.com/Licensing"></a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1),
(4, 'Slimbox', '2.04-2', '<p>This Gallerytemplate uses the Slimbox system version 2.04, a lightweight Lightbox clone using the jQuery javascript library, by Christophe Beyls.</p>\r\n<p>Documentation can be found at <a href="http://code.google.com/p/slimbox/" target="_blank">code.google.com/p/slimbox</a></p>\r\n<p>Files that come with Slimbox are stored in <em>modules/Gallery/templates/slimbox/</em></p>\r\nLicensed under <a href="http://www.opensource.org/licenses/mit-license.php">MIT License</a>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1),
(5, 'Thickbox', '3.1-3', '<p>This Gallerytemplate uses the Thickbox system version 3.1 by Cody Lindley (<a href="http://www.codylindley.com/" target="_blank">www.codylindley.com</a>).</p>\r\n<p>Patched Version by Jamie Thompson - Fixes IE7 Positioning Issues (<a href="http://jamazon.co.uk/web/2008/03/17/thickbox-31-ie7-positioning-bug/" target="_blank">jamazon.co.uk/web/2008/03/17/thickbox-31-ie7-positioning-bug</a>).</p>\r\n<p>Files that come with Thickbox are stored in <em>modules/Gallery/templates/thickbox/</em></p>\r\n<p>Licensed under <a href="http://www.opensource.org/licenses/mit-license.php">MIT License</a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1),
(6, 'gallerytree', '1.0', '<p>This template is ment for the {Gallery action=''gallerytree'' template=''gallerytree''} call.</p>\r\n<p>The generated tree respects the sortorder settings for each (sub)gallery. Setting a sortorder for this template won''t make any difference.</p>', NULL, NULL, NULL, NULL, '0', 0),
(7, 'Cycle', '1.3-1', '<p>This Gallerytemplate uses the jQuery Cycle Lite plugin version 1.3</p>\r\n<p>Documentation for extra options can be found at <a href="http://jquery.malsup.com/cycle/lite/" target="_blank">jquery.malsup.com/cycle/lite</a></p>\r\n<p>Files that come with Cycle are stored in <em>modules/Gallery/templates/cycle/</em></p>\r\n<p>Cycle was built using the <a href="http://jquery.com/">jQuery library</a>. Licensed under both <a href="http://docs.jquery.com/Licensing">MIT and GPL licenses</a></p>', 300, 120, 'cr', NULL, '0', NULL),
(8, 'AE-Gallery', '1.2.4-1', '<p>This Gallerytemplate uses the AD-Gallery jQuery plugin version 1.2.4 by Anders Ekdahl (<a href="http://coffeescripter.com/" target="_blank">http://coffeescripter.com/</a>)</p>\r\n<p>For the CMSms Gallery Module, the name is changed to AE-Gallery, to prevent the script being blocked by Ad-block browser plugins. All occurences of ''ad'' have been replaced by ''ae'' (the initials of the author).</p>\r\n<p>A demo and documentation for extra options can be found at <a href="http://coffeescripter.com/code/ad-gallery" target="_blank">coffeescripter.com/code/ad-gallery</a></p>\r\n<p>Files that come with AE-Gallery are stored in modules/Gallery/templates/ae-gallery/</p>\r\n<p>The AD-Gallery plugin is dual licensed under the MIT (<a href="http://www.opensource.org/licenses/mit-license.php" target="_blank">www.opensource.org/licenses/mit-license.php</a>) and GPL (<a href="http://www.opensource.org/licenses/gpl-license.php" target="_blank">www.opensource.org/licenses/gpl-license.php</a>) licenses.</p>', NULL, NULL, NULL, NULL, 's+file', 1),
(9, 'Colorbox', '1.3.17-1', '<p>This Gallerytemplate uses the Colorbox system version 1.3.17 by Jack Moore.</p>\r\n<p>Documentation for extra options can be found at <a href="http://colorpowered.com/colorbox/" target="_blank">colorpowered.com/colorbox</a></p>\r\n<p>Files that come with Colorbox are stored in <em>modules/Gallery/templates/colorbox/</em></p>\r\nColorbox was built using the <a href="http://jquery.com/" target="_blank">jQuery library</a>. Licensed under <a href="http://www.opensource.org/licenses/mit-license.php" target="_blank">MIT  License</a><a href="http://docs.jquery.com/Licensing"></a>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1),
(10, 'Lytebox_slideshow', '3.22-1', '<p>This Gallerytemplate uses the Lytebox system version 3.22 by Markus F. Hay, with a <a href="http://nederveld.wordpress.com/2009/07/02/lytebox-and-internet-explorer-8/" target="_blank">ie8 fix</a>.</p>\r\n<p>Documentation can be found at <a href="http://www.dolem.com/lytebox/" target="_blank">www.dolem.com/lytebox</a></p>\r\n<p>Files that come with Lytebox are stored in <em>modules/Gallery/templates/lytebox/</em></p>\r\n<p>Licensed under <a href="http://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 License</a><a href="http://docs.jquery.com/Licensing"></a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_javascript`
--

DROP TABLE IF EXISTS `cms_module_javascript`;
CREATE TABLE IF NOT EXISTS `cms_module_javascript` (
  `javascript_id` int(11) NOT NULL,
  `javascript_name` varchar(255) default NULL,
  `javascript_alias` varchar(255) default NULL,
  `javascript_content` text,
  `javascript_sort_order` int(11) default NULL,
  `javascript_compress` tinyint(4) default NULL,
  `javascript_external_include` tinyint(4) default NULL,
  `javascript_global` tinyint(4) default NULL,
  `javascript_pack` tinyint(4) default NULL,
  `javascript_created` datetime default NULL,
  `javascript_modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`javascript_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_javascript_seq`
--

DROP TABLE IF EXISTS `cms_module_javascript_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_javascript_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_javascript_seq`
--

INSERT INTO `cms_module_javascript_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_jquery_scripts`
--

DROP TABLE IF EXISTS `cms_module_jquery_scripts`;
CREATE TABLE IF NOT EXISTS `cms_module_jquery_scripts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `position` int(11) default NULL,
  `code` longtext,
  `load_default` int(11) default NULL,
  `in_header` int(11) default NULL,
  `required_plugins` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news`
--

DROP TABLE IF EXISTS `cms_module_news`;
CREATE TABLE IF NOT EXISTS `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) default NULL,
  `news_title` varchar(255) default NULL,
  `news_data` text,
  `news_date` datetime default NULL,
  `summary` text,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `status` varchar(25) default NULL,
  `icon` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `author_id` int(11) default NULL,
  `news_extra` varchar(255) default NULL,
  `news_url` varchar(255) default NULL,
  PRIMARY KEY  (`news_id`),
  KEY `cms_news_postdate` (`news_date`),
  KEY `cms_news_daterange` (`start_time`,`end_time`),
  KEY `cms_news_author` (`author_id`),
  KEY `cms_news_hier` (`news_category_id`),
  KEY `cms_news_url` (`news_url`),
  KEY `cms_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news`
--

INSERT INTO `cms_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`) VALUES
(2, 1, 'ERROR TYPE III DAN GAYA KEPEMIMPINAN DI INDONESIA', '<div>\r\n<div>\r\n<div>\r\n<p align="center"><strong>Oleh : Ir. Said Alkhudri</strong></p>\r\n<p align="center"><strong>(Peserta Diklat Transforming Leader In Indonesia, Angkatan I)</strong></p>\r\n<p>Pada Sessi pertama hari terakhir dalam pembelajaran di Havard Kennedy Scholl, tanggal ........2011, Prof. Amy C. Edmonson membahas meledaknya pesawat ulang-alik CHALENGER? diatas samudera Atlantik setelah 2 menit diluncurkan pada tahun 1980.</p>\r\n<p>NASA sebagai Badan Ruang Angkasa Amerika telah mengontrak Perusahaan MORON THIOKOL untuk rancangan SRB, yaitu salah Komponen dari Pesawat Ulang-alik Chalenger. Rancangan SRB tersebut Mengandalkan O-Ring untuk mengankat komponen berukuran besar.</p>\r\n<p>MissI Chalengger telah di tunda beberapa kali, sehingga Pemimpin? NASA merasa perusahaan MORON THIOKOL sebagai penyebab pengunduran-pengunduran ini.</p>\r\n<p>Pada tanggal 27 Januari 1986 terjadilah Proses pengambilan Keputusan Peluncur Chalenger yang penuh emosional.</p>\r\n<p>Intinya BOISJOLY dari THIOKAL telah mengingatkan bahan O-Ring akan meleleh pada suhu 29<sup>o</sup>?F.Jika prediksii cuaca Peluncuran oleh Angkatan Udara Amerika Benar.</p>\r\n<p>LARRY MULLOY pemimpin NASA dan Stafnya menclaim Boisjoly terlalu Vokal dan ini bisa mengancam jadwal ?peluncuran Chalenger yang telah ditetapkan oleh beberapa atasan MULLOY dengan mendiskusikan pendapat Boisjoly antara lain:</p>\r\n<ol>\r\n<li>Dengan kondisi O-Ring saat ini ,beberapa peluncuran? sebelumnya ternyata aman.</li>\r\n<li>Rusia meluncurkan pesawat ulang-alik juga dengan kondisi pengikisan O-Ring yang lebih panas.</li>\r\n<li>Jangan-jangan Boisjoly ditumpangi kepentingan pihak lain yang menginginkan peluncuran Chalengger ditunda.</li>\r\n</ol>\r\n<p>Rapat tanggal 27 Januari 1986 tersebut memutuskan peluncuran Challanger tetap dilaksanakan sesuai dengan jadwal yang ditetapkan.</p>\r\n<p>Kenyataan pahit yang diterima NASA. Atas Arogansi sendiri terjadi, pesawat ulang-alik Challenger meledak di angkasa setelah 2 menit peluncuran, dan kepingan-kepingan pesawat ditemukan jatuh tersebar di laut atlantikk dengan 9 astronot di dalamnya.</p>\r\n<p>Dunia Antariksa terpukul.</p>\r\n<p>Sebuah Error Type III terjadi dalam proses pengambilan keputusan di NASA.</p>\r\n<p>Prof. Amy menyajikan kasus ini dengan bantuan Video rekaman secara apik sekali, telah membuat para peserta pembelajaran terbangun dari praktek arogansi selama ini mungkin sering terjadi dalam Pemerintahan Daerah.</p>\r\n<p>Error Type III adalah istilah kalimat yang maksudnya ?melaksanakan keputusan yang salah? yang dimulai dengan? ?Identifikasi masalah yang salah?</p>\r\n<p>Disadari atau tidak, para pemimpin Pemerintah di Daerah berpeluang bisa terjebak menangani masalah yang salah, seperti dilakukan LARRY MULLOY dalam peluncuran Shuttle Space Chalenger tahun 1986.</p>\r\n<p>Bermula dalam proses pengambilan keputusan, intervensi pimpinan sering mematahkan dan mementahkan seluruh proses pengambilan keputusan yang sudah berjalan sesuai dengan mekanisme dari bawah.</p>\r\n<p>Sebuah kasus di sebuah Pemerintah Kota; ketika Sekretaris Kota memimpin rencana kegiatan Hari Ulang Tahun Kota yang dihadiri dari SKPD dan Kepala Uniit, mekanisme rapat berjalan bagus. Saran, usul dan ide muncul dengan cerdasnya. Kesimpulannya sudah mengena kepada kegiatan-kegiatan ya ng melibatkan banyak rakyat, seperti lomba olahraga ditingkat kelurahan dan sebagainya.</p>\r\n<p>Tetapi ketika dipenghujung rapat Pak Wali Kota masuk, beliau langsung memberikan arahan kepada peserta, termasuk menentukan kegiatan-kegiatan Hari Ulang Tahun Kota yang harus dilaksanakan SKPD tanpa Resume. Tetapi arahan Walikota lebih kepada pertandingan Golf antara Eksekutif-Legislatif, upacara dan malam resepsi. Semua keputusan Rapat sejak pagi yang dipimpi Sekretaris Kota menjadi mentah.</p>\r\n<p>Error Type III terjadi dimana-mana dalam penetapan Kebijakan Pembangunan di Daerah.</p>\r\n<p>Error Type III sering lahir dari arogansi para pemeimpin. Prof. Amy. C. Edmon telah membangunkan 19 Bupati/ Walikota peserta Angkatan I. Transforming Leader Indonesia dalam sessi ini dengan mengangkat kasus peluncuran Shuttle Space Challenger oleh NASA.</p>\r\n<p>Pemerintah Daerah Kabupaten/Kota adalah ujung tombak dan referensi di Indonesia. Sehingga Transparansi kepemimpinan ditingkat Kabupaten/Kota dapat merubah wajah Republik Indonesia tercinta ini.</p>\r\n</div>\r\n</div>\r\n</div>', '2011-10-29 02:35:20', '<div>\r\n<p>Pada Sessi pertama hari terakhir dalam pembelajaran di Havard Kennedy Scholl, tanggal ........2011, Prof. Amy C. Edmonson membahas meledaknya pesawat ulang-alik CHALENGER? diatas samudera Atlantik setelah 2 menit diluncurkan pada tahun 1980</p>\r\n</div>', NULL, NULL, 'published', NULL, '2011-10-29 02:36:03', '2011-11-19 04:24:03', 1, '', ''),
(3, 1, 'PELAKSANAAN ORIENTASI KEPEMIMPINAN DAN PENYELENGGARAAN PEMERINTAHAN DAERAH (OKPPD) DAN MENGIKUTI EXECUTIVE EDUCATION COURSE ON TRANSFORMING LEADERS IN INDONESIA PROGRAM', '<div>\r\n<p>Badan Diklat Kementerian Dalam Negeri telah melaksanakan Orientasi Kepemimpinan dan Penyelenggaraan Pemerintahan Daerah (OKPPD) telah dilaksanakan dari tahun 2010 sampai dengan tahun 2011 dilanjutkan dengan Executive Training Education Program Transforming Leaders in Indonesia Tahun 2011. OKPPD merupakan kegiatan utama Badan Pendidikan dan Pelatihan Kementerian Dalam Negeri yang disertai dengan pelaksanaan Orientasi Pengembangan Kepribadian dan Kepemimpinan Bagi Isteri Bupati/Walikota dan Wakil Bupati/Wakil Walikota (ladies program).</p>\r\n<p>Secara keseluruhan OKPPD Tahun 2010 sebanyak 48 orang peserta dan ladies program sebanyak 40 orang peserta yang dilaksanakan masing-masing 2 angkatan. Selanjutnya pada tahun 2011 OKPPD menghasilkan alumni sebanyak 222 orang dan aldies program sebanyak 185 orang yang dilaksanakan dalam 5 angkatan penyelenggaraan.</p>\r\n<p>Dari jumlah alumni OKPPD sebanyak 270 orang selanjutnya dipilih sebanyak 19 Bupati/Walikota untuk mengikuti <em>Executive Education Course on Transforming Leaders in Indonesia Program</em>yang dilaksanakan dalam 2 (dua) tahap, yaitu:</p>\r\n<ol>\r\n<li>Program Pengantar yang akan memberikan perspektif dasar yang akan mempelajari <em>Strategic Leadership</em>, <em>New Public Management</em>dan perancangan dan penyusunan Peraturan Daerah. Kegiatan ini telah dilaksanakan di Jakarta dari tanggal 12 sd 16 September 2011 dan diikuti oleh 39 peserta dengan perincian sebagai berikut:</li>\r\n</ol>\r\n<p>1) Bupati : 15 orang</p>\r\n<p>2) Walikota : 4 orang</p>\r\n<p>3) Pejabat Bappeda : 19 orang</p>\r\n<p>4) Pejabat Kementerian Dalam Negeri : 1 orang</p>\r\n<ol>\r\n<li><em>Executive Education Training Program </em>yang merupakan kegiatan inti yang akan dilaksanakan di Kampus Harvard University, Boston, USA dari tanggal 19 sampai dengan 30 September 2011 dan dilanjutkan Studi Lapangan ke beberapa Pemerintah Daerah diantaranya North Carolina dan Washington DC.</li>\r\n</ol>\r\n<p>Berbagai pengalaman belajar yang telah dilewati oleh para alumni OKPPD maupun <em>Executive Education Training Program</em>selanjutnya akan dijadikan bahan pertimbangan para Kepala Daerah dalam memimpin penyelenggaraan pemerintahan daerah masing-masing. Bila membutuhkan penyegaran terhadap materi pembelajaran atau penyebarluasan hasil-hasil pembelajaran yang telah diikuti kepada Kepala Daerah lainnya maupun kepada pejabat pemerintah daerah, akan dilakukan dalam bentuk Orientasi atau seminar yang terfokus untuk membahas isu tertentu yang menjadi pusar perhatian pemerintah daerah. Berbagai kegiatan ini dapat difasilitasi oleh Badan Diklat Kementerian Dalam Negeri, sebagai salah satu contoh, pada tanggal 17 sampai dengan 19 November 2011 akan dilaksanakan Diklat/Orientasi Penyusunan Laporan Penyelenggaraan pemerintahan daerah yang dirangkaikan dengan pertemuan alumni pertama yang bertujuan untuk mensosialisasikan program dan hasil-hasil OKPPD dan <em>Executive Education Training Program</em>kepada para Kepala Daerah atau pejabat pemerintah daerah lainnya.</p>\r\n<p>(<strong>Yusharto, Kabid Otda dan PUM, Badan Diklat Kemendagri</strong>)</p>\r\n</div>', '2011-11-15 08:57:44', '<div>\r\n<p>Badan Diklat Kementerian Dalam Negeri telah melaksanakan Orientasi Kepemimpinan dan Penyelenggaraan Pemerintahan Daerah (OKPPD) telah dilaksanakan dari tahun 2010 sampai dengan tahun 2011</p>\r\n</div>', NULL, NULL, 'published', NULL, '2011-11-15 08:58:07', '2011-11-21 04:05:26', 1, '', ''),
(4, 1, 'news with attachment', '<p>this is news with attachment sample</p>', '2011-11-21 08:29:38', '', NULL, NULL, 'published', NULL, '2011-11-21 08:30:39', '2011-11-21 08:30:39', 1, '', ''),
(44, 1, 'aaa', '<p>aaaa</p>', '2011-12-12 09:43:14', '', '2011-12-12 09:43:14', '2012-06-09 09:43:14', 'published', NULL, '2011-12-12 09:43:14', '2011-12-12 09:43:14', 1, '', NULL),
(9, 1, 'pdf', '<p>pdf</p>', '2011-11-21 19:04:11', '', NULL, NULL, 'published', NULL, '2011-11-21 19:04:27', '2011-11-21 19:05:35', 1, '', ''),
(45, 1, 'bbb', '<p>bbbb</p>', '2011-12-12 09:46:05', '', '2011-12-12 09:46:05', '2012-06-09 09:46:05', 'published', NULL, '2011-12-12 09:46:05', '2011-12-12 09:46:05', 1, '', NULL),
(46, 1, 'ccc', '<p>cccc</p>', '2011-12-12 09:46:25', '', '2011-12-12 09:46:25', '2012-06-09 09:46:25', 'published', NULL, '2011-12-12 09:46:25', '2011-12-12 09:46:25', 1, '', NULL),
(47, 1, 'ddd', '<p>dddd</p>', '2011-12-12 09:47:03', '', '2011-12-12 09:47:03', '2012-06-09 09:47:03', 'published', NULL, '2011-12-12 09:47:03', '2011-12-12 09:47:03', 1, '', NULL),
(48, 1, 'eeee', '<p>eeeeee</p>', '2011-12-12 09:47:45', '', '2011-12-12 09:47:45', '2012-06-09 09:47:45', 'published', NULL, '2011-12-12 09:47:45', '2011-12-12 09:47:45', 1, '', NULL),
(49, 1, 'fff', '<p>ffff</p>', '2011-12-12 09:48:10', '', '2011-12-12 09:48:10', '2012-06-09 09:48:10', 'published', NULL, '2011-12-12 09:48:10', '2011-12-12 09:48:10', 1, '', NULL),
(24, 1, 'news mailer+attach test', '<p>this is another test for news mailer notification.</p>\r\n<p>attachment would be a word document.</p>', '2011-12-12 06:47:14', '', '2011-12-12 06:47:14', '2012-06-09 06:47:14', 'published', NULL, '2011-12-12 06:47:14', '2011-12-12 06:47:14', 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_categories`
--

DROP TABLE IF EXISTS `cms_module_news_categories`;
CREATE TABLE IF NOT EXISTS `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  `hierarchy` varchar(255) default NULL,
  `long_name` text,
  `create_date` time default NULL,
  `modified_date` time default NULL,
  PRIMARY KEY  (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_categories`
--

INSERT INTO `cms_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES
(1, 'General', -1, '00001', 'General', '02:15:15', '02:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_categories_seq`
--

DROP TABLE IF EXISTS `cms_module_news_categories_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_categories_seq`
--

INSERT INTO `cms_module_news_categories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_fielddefs`
--

DROP TABLE IF EXISTS `cms_module_news_fielddefs`;
CREATE TABLE IF NOT EXISTS `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `type` varchar(50) default NULL,
  `max_length` int(11) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  `item_order` int(11) default NULL,
  `public` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_news_fielddefs`
--

INSERT INTO `cms_module_news_fielddefs` (`id`, `name`, `type`, `max_length`, `create_date`, `modified_date`, `item_order`, `public`) VALUES
(1, 'Attachment', 'file', 255, '2011-11-21 04:20:03', '2011-11-21 04:20:03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_fieldvals`
--

DROP TABLE IF EXISTS `cms_module_news_fieldvals`;
CREATE TABLE IF NOT EXISTS `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_fieldvals`
--

INSERT INTO `cms_module_news_fieldvals` (`news_id`, `fielddef_id`, `value`, `create_date`, `modified_date`) VALUES
(9, 1, 'kamusti.pdf', '2011-11-21 19:05:35', '2011-11-21 19:05:35'),
(24, 1, 'training_merge.docx', '2011-12-12 06:47:14', '2011-12-12 06:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_news_seq`
--

DROP TABLE IF EXISTS `cms_module_news_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_news_seq`
--

INSERT INTO `cms_module_news_seq` (`id`) VALUES
(49);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_index`
--

DROP TABLE IF EXISTS `cms_module_search_index`;
CREATE TABLE IF NOT EXISTS `cms_module_search_index` (
  `item_id` int(11) default NULL,
  `word` varchar(255) default NULL,
  `count` int(11) default NULL,
  KEY `cms_index_search_count` (`count`),
  KEY `cms_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_search_index`
--

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES
(1, 'navigation', 1),
(1, 'news', 1),
(649, 'career', 1),
(649, 'became', 1),
(649, 'beginning', 1),
(649, '2001', 2),
(649, '1999', 1),
(649, 'secretary', 2),
(649, 'acting', 1),
(649, 'served', 1),
(648, 'bappeda', 1),
(648, 'position', 1),
(648, 'promoted', 1),
(648, 'got', 1),
(648, '2006', 1),
(649, 'banjarbaru', 2),
(649, 'formation', 1),
(649, 'following', 1),
(649, 'chapter', 1),
(649, 'functionary', 1),
(649, 'golkar', 1),
(649, 'active', 1),
(649, 'era', 1),
(649, 'order', 1),
(649, 'new', 2),
(649, '1998', 1),
(649, 'administration', 1),
(649, 'developmental', 1),
(649, 'assistant', 1),
(649, 'position', 1),
(5, 'navigation', 1),
(5, 'news', 1),
(649, 'promoted', 1),
(649, '1978', 1),
(551, 'fulfillment', 1),
(551, 'people', 1),
(552, 'national', 1),
(552, 'chair', 1),
(552, 'serves', 1),
(552, 'currently', 1),
(552, 'also', 1),
(551, 'pro', 1),
(551, '2010', 1),
(551, 'term', 1),
(551, 'second', 1),
(551, 'reelected', 1),
(551, '2005', 1),
(798, 'tiga', 1),
(798, 'penugasan', 1),
(798, 'tinggi', 1),
(798, 'perguruan', 1),
(798, 'kerjasama', 1),
(798, 'melaksanakan', 2),
(798, 'masukan', 1),
(798, 'akan', 2),
(649, 'municipality', 4),
(649, 'banjarmansin', 2),
(649, 'transferred', 2),
(649, 'graduate', 1),
(649, 'right', 1),
(649, 'provincial', 1),
(649, 'kalimantan', 1),
(649, 'south', 1),
(649, 'joined', 1),
(649, '1975', 1),
(649, 'candidates', 1),
(649, 'official', 1),
(649, 'train', 1),
(648, 'transferred', 1),
(648, 'west', 1),
(648, 'districts', 1),
(648, 'two', 1),
(648, 'subdivided', 1),
(648, '2003', 1),
(648, 'result', 1),
(648, 'plan', 1),
(648, 'pemekaran', 1),
(648, 'proliferation', 1),
(648, 'study', 1),
(648, 'feasibility', 1),
(648, 'conduct', 1),
(648, 'assigned', 1),
(648, 'pasaman', 6),
(648, 'tenure', 1),
(648, '1996', 1),
(648, 'district', 6),
(648, 'agam', 3),
(648, 'section', 1),
(648, 'organizational', 1),
(648, 'head', 2),
(648, 'named', 1),
(648, '1989', 1),
(648, 'college', 1),
(648, 'graduated', 1),
(648, 'right', 1),
(648, 'service', 1),
(648, 'civil', 1),
(648, 'joined', 1),
(648, '1961', 1),
(648, 'august', 1),
(648, 'kemang', 1),
(648, 'born', 1),
(648, 'ismanimran', 2),
(648, 'imran', 3),
(648, 'isman', 3),
(649, 'college', 1),
(1100, 'capacity', 1),
(1100, 'resources’', 1),
(1100, 'human', 1),
(1100, 'enhance', 1),
(1100, 'finance', 1),
(1100, 'public', 1),
(1100, 'leaks', 1),
(1100, 'minimize', 1),
(1100, 'infrastructure', 1),
(1100, 'economic', 1),
(1100, 'improve', 1),
(1100, 'endeavor', 1),
(1100, 'catri’s', 1),
(1100, 'newly', 1),
(1100, 'elected', 2),
(1100, 'election', 1),
(1100, '2010', 1),
(1100, 'lost', 1),
(1100, '2005', 1),
(649, 'government', 3),
(745, 'member', 1),
(1010, 'ashar', 1),
(1010, 'samsul', 1),
(650, '2010', 1),
(650, 'bappeda', 1),
(650, 'named', 1),
(650, '2008', 1),
(650, 'brawijaya', 1),
(650, 'doctorate', 1),
(650, '1995', 1),
(650, 'mada', 1),
(650, 'gadjah', 1),
(650, 'administration', 2),
(650, 'public', 2),
(650, 'degree', 2),
(650, 'master', 1),
(650, 'pursued', 1),
(650, 'meanwhile', 1),
(650, 'affairs', 1),
(650, 'economic', 1),
(650, 'new', 1),
(650, 'moved', 1),
(650, 'municipality', 3),
(650, 'formation', 1),
(650, '2002', 1),
(650, '2001', 1),
(650, 'disrict', 1),
(650, 'kurau', 1),
(650, 'camat', 1),
(650, 'head', 3),
(650, 'sub', 1),
(650, 'served', 2),
(650, '1989', 1),
(650, 'university', 3),
(650, 'hasanuddin', 1),
(650, 'graduating', 1),
(650, 'immediately', 1),
(650, 'province', 1),
(650, 'kalimantan', 1),
(650, 'south', 1),
(650, 'district', 2),
(650, 'laut', 2),
(650, 'tanah', 2),
(650, 'bureaucracy', 1),
(650, 'government', 1),
(650, 'local', 1),
(650, 'career', 1),
(650, 'built', 1),
(650, '1962', 1),
(650, 'september', 1),
(798, 'menjadi', 1),
(798, 'independen', 1),
(798, 'bersifat', 1),
(798, 'organisasi', 5),
(798, 'pusat', 1),
(798, 'menteng', 1),
(798, 'cimahi', 1),
(798, 'selatan', 1),
(798, 'jakarta', 2),
(798, 'kalibata', 1),
(798, 'nomor', 2),
(798, 'pahlawan', 1),
(798, 'pelatihan', 1),
(1010, 'kediri', 1),
(798, 'pendidikan', 1),
(798, 'beralamat', 1),
(798, 'sekretariat', 1),
(798, 'diantaranya', 1),
(798, 'tujuan', 1),
(798, 'pencapaian', 1),
(798, 'ditetapkan', 1),
(798, 'beberapa', 1),
(798, 'bendahara', 2),
(798, 'wakil', 2),
(798, 'jenderal', 2),
(798, 'sekretaris', 3),
(798, 'ketua', 1),
(798, 'dari', 1),
(798, 'terdiri', 1),
(798, 'kepengurusan', 1),
(798, 'presidium', 1),
(650, 'banjarbaru', 3),
(650, 'born', 1),
(650, 'aswan', 5),
(83, '="version', 1),
(83, 'navigation', 1),
(83, '&nbsp', 6),
(650, 'mohammad', 3),
(1073, 'ffff', 1),
(1010, 'edarwan', 1),
(1100, 'run', 2),
(1100, 'affairs', 1),
(1100, 'welfare', 1),
(35, 'navigation', 1),
(35, 'news', 1),
(37, 'navigation', 1),
(37, 'news', 1),
(39, 'horizontal', 1),
(39, 'ruler', 1),
(39, 'hidden', 1),
(39, 'visual', 1),
(39, 'browsers', 1),
(39, 'css', 1),
(39, 'navigation', 2),
(39, 'sub', 1),
(39, 'news', 1),
(555, 'diklat', 1),
(555, 'peserta', 4),
(44, 'corp@2011', 1),
(44, 'dookie', 1),
(44, 'powered', 1),
(565, 'pertemuan', 1),
(1046, 'submit', 1),
(555, 'alkhudri', 1),
(555, 'said', 1),
(555, 'oleh', 4),
(798, 'bersamaan', 1),
(798, 'yang', 4),
(798, 'saat', 1),
(798, 'pelaku', 1),
(798, 'kepada', 2),
(797, 'news', 4),
(83, 'news', 1),
(799, 'photo', 4),
(798, 'penghargaan', 1),
(798, 'pemberian', 1),
(798, 'global', 1),
(798, 'network', 1),
(798, 'penerbitan', 1),
(798, 'pelaksanaan', 1),
(798, 'utama', 2),
(798, 'kegiatan', 1),
(798, 'dengan', 2),
(1010, 'menoza', 1),
(1010, 'rycko', 1),
(1010, 'lampung', 2),
(649, 'local', 3),
(649, 'academy', 1),
(649, 'negeri', 1),
(649, 'dalam', 1),
(649, 'pemerintahan', 1),
(649, 'akademi', 1),
(565, 'dirangkaikan', 1),
(798, 'kebijakan', 4),
(798, 'pengambilan', 1),
(798, 'mendukung', 2),
(798, 'penelitian', 1),
(798, 'kajian', 3),
(798, 'fasilitasi', 1),
(798, 'memberikan', 3),
(798, 'bertujuan', 1),
(798, 'umum', 1),
(798, 'secara', 2),
(798, 'daerah', 1),
(798, 'pemerintahan', 1),
(798, 'percepatan', 1),
(798, 'guna', 1),
(798, 'kapasitas', 1),
(798, 'mengembangkan', 1),
(798, 'membina', 1),
(798, 'berkomunikasi', 1),
(798, 'terus', 1),
(798, 'untuk', 7),
(798, 'leader', 1),
(798, 'transforming', 1),
(798, 'alumni', 1),
(798, 'seluruh', 1),
(798, 'bagi', 1),
(798, 'jaringan', 1),
(798, 'satu', 1),
(798, 'salah', 1),
(798, 'sebagai', 1),
(798, 'indonesia', 4),
(798, 'transformasi', 2),
(798, 'forum', 1),
(798, 'dibentuk', 2),
(798, 'telah', 3),
(798, 'kemendagri', 3),
(798, 'diklat', 2),
(798, 'badan', 3),
(798, 'difasilitasi', 1),
(798, 'dan', 10),
(798, 'peserta', 1),
(798, 'prakarsa', 1),
(798, 'atas', 1),
(798, 'rti', 1),
(798, 'institute', 1),
(798, 'triangle', 1),
(798, 'research', 1),
(798, 'gedung', 1),
(798, 'bertempat', 1),
(798, '2011', 1),
(798, 'oktober', 1),
(798, 'tanggal', 1),
(798, 'pada', 2),
(798, 'history', 2),
(798, 'fti', 5),
(798, 'pembentukan', 3),
(798, 'singkat', 2),
(798, 'sejarah', 2),
(361, 'penguruscontainer', 4),
(552, '2010', 1),
(532, '24001962', 1),
(533, 'email', 1),
(549, 'parliament', 1),
(550, 'pemilukada', 1),
(536, '624018', 1),
(536, 'indonesia', 1),
(537, '62811', 1),
(537, '321001', 1),
(565, 'laporan', 1),
(565, 'november', 1),
(565, 'contoh', 1),
(565, 'satu', 1),
(565, 'salah', 1),
(565, 'difasilitasi', 1),
(565, 'dapat', 1),
(565, 'perhatian', 1),
(565, 'pusar', 1),
(565, 'menjadi', 1),
(565, 'tertentu', 1),
(565, 'isu', 1),
(565, 'membahas', 1),
(565, 'terfokus', 1),
(565, 'seminar', 1),
(565, 'bentuk', 1),
(565, 'dilakukan', 1),
(565, 'maupun', 1),
(565, 'lainnya', 2),
(565, 'kepada', 3),
(565, 'hasil', 4),
(565, 'penyebarluasan', 1),
(565, 'atau', 3),
(565, 'pembelajaran', 2),
(565, 'materi', 1),
(565, 'terhadap', 1),
(565, 'penyegaran', 1),
(565, 'membutuhkan', 1),
(565, 'bila', 1),
(565, 'memimpin', 1),
(565, 'kepala', 3),
(565, 'pertimbangan', 1),
(565, 'bahan', 1),
(565, 'dijadikan', 1),
(565, 'maupun', 1),
(565, 'para', 3),
(565, 'dilewati', 1),
(565, 'belajar', 1),
(565, 'pengalaman', 1),
(565, 'berbagai', 2),
(565, 'washington', 1),
(565, 'carolina', 1),
(565, 'north', 1),
(565, 'diantaranya', 1),
(565, 'pemerintah', 4),
(565, 'beberapa', 1),
(565, 'lapangan', 1),
(565, 'usa', 1),
(565, 'studi', 1),
(565, 'boston', 1),
(565, 'harvard', 1),
(565, 'university', 1),
(551, 'elections', 1),
(552, 'elected', 1),
(552, 'democratically', 1),
(552, 'government', 1),
(552, 'province', 1),
(552, 'policy', 1),
(552, 'cluster', 1),
(552, 'industry', 1),
(552, 'downstream', 1),
(552, 'oil', 1),
(552, 'palm', 1),
(552, 'empowerment', 1),
(552, 'village', 1),
(552, 'ideas', 1),
(552, 'develops', 1),
(552, 'regional', 1),
(552, 'seasoned', 1),
(552, '1992', 1),
(552, 'knoxville', 1),
(552, 'tennessee', 1),
(552, 'university', 1),
(552, 'degree', 1),
(552, 'master', 1),
(552, 'pursued', 1),
(552, 'secretary', 1),
(552, 'position', 1),
(552, 'promoted', 1),
(552, 'bappeda', 2),
(552, 'agency', 1),
(552, 'planning', 3),
(552, 'local', 1),
(552, 'section', 1),
(552, 'economic', 1),
(552, 'assigned', 1),
(552, 'service', 1),
(552, 'civil', 1),
(552, 'joined', 1),
(552, 'agriculture', 1),
(552, 'institute', 1),
(552, 'bogor', 1),
(552, 'graduating', 1),
(552, 'upon', 1),
(552, '1959', 1),
(552, 'march', 1),
(552, 'muda', 1),
(552, 'lubuk', 1),
(552, 'born', 1),
(552, '71016161', 1),
(552, '62852', 1),
(552, '22224', 1),
(552, '62766', 1),
(552, 'indonesia', 1),
(552, '451', 1),
(1072, 'eeee', 2),
(1072, 'eeeeee', 1),
(1071, 'ddd', 2),
(1071, 'dddd', 1),
(1070, 'ccc', 2),
(615, 'register', 4),
(582, 'frontslideshow', 1),
(804, 'gif', 1),
(804, 'logo1', 1),
(804, 'images', 1),
(804, 'uploads', 1),
(804, 'home', 4),
(552, 'antara', 1),
(552, 'riau', 3),
(552, 'bengkalis', 6),
(552, 'head', 3),
(533, 'ibraimantra@gmail', 1),
(533, '628123878700', 1),
(533, '62361243831', 1),
(533, '221530', 1),
(533, '62361', 1),
(533, 'indonesia', 1),
(533, 'mada', 1),
(533, 'gajah', 1),
(533, 'bali', 1),
(533, 'denpasar', 2),
(533, 'mayor', 1),
(532, '62815', 1),
(532, '21101', 1),
(532, '62426', 1),
(532, 'indonesia', 1),
(532, 'hatta', 1),
(532, 'soekarno', 1),
(532, 'sulawesi', 1),
(532, 'west', 1),
(532, 'mamuju', 2),
(532, 'head', 1),
(532, 'district', 1),
(532, 'duka', 1),
(532, 'suhardi', 1),
(551, 'local', 1),
(551, 'pemilukada', 1),
(551, 'elected', 1),
(551, 'democratically', 1),
(551, 'businessman', 1),
(551, 'seasoned', 1),
(551, 'intellectual', 1),
(551, 'brilliant', 1),
(551, 'known', 2),
(551, 'dakwah', 1),
(551, 'propagation', 1),
(551, 'organizations', 1),
(551, 'various', 1),
(551, 'serves', 1),
(551, 'popular', 1),
(551, 'aside', 1),
(551, 'kabupaten', 1),
(551, 'pembentukan', 1),
(551, 'panitia', 1),
(551, 'formation', 1),
(551, 'committee', 1),
(551, 'chair', 1),
(551, 'named', 1),
(551, 'part', 1),
(551, 'previously', 1),
(551, 'establishing', 1),
(551, 'endeavor', 1),
(551, 'role', 1),
(551, 'substantial', 1),
(551, 'played', 1),
(551, 'first', 2),
(551, 'university', 2),
(551, 'cordova', 1),
(551, 'establish', 1),
(551, '2004', 1),
(551, 'later', 1),
(551, 'years', 1),
(551, 'twenty', 1),
(551, 'ikhlas', 1),
(551, 'school', 1),
(551, 'boarding', 1),
(551, 'pesantren', 1),
(551, 'pondok', 1),
(551, 'found', 1),
(551, 'helped', 2),
(551, '1984', 1),
(551, 'cleric', 2),
(551, 'islamic', 4),
(551, 'kiai', 2),
(551, 'politics', 1),
(551, 'joining', 1),
(549, 'closely', 1),
(549, 'party', 1),
(549, 'awakening', 1),
(549, 'national', 1),
(549, 'pkb', 1),
(549, 'joined', 1),
(549, 'order', 1),
(549, 'new', 1),
(549, 'downfall', 1),
(549, 'following', 1),
(549, '1999', 1),
(549, '1997', 1),
(549, 'assembly', 1),
(549, 'consultative', 1),
(549, 'people?s', 1),
(549, 'rakyat', 1),
(549, 'permusyawaratan', 1),
(549, 'majelis', 1),
(549, 'mpr', 1),
(549, 'member', 2),
(549, 'movement', 2),
(549, 'anshor', 3),
(549, 'pemuda', 1),
(549, 'gerakan', 1),
(549, 'sons', 1),
(549, 'ulama?s', 1),
(549, 'association', 1),
(549, 'putra', 1),
(549, 'ikatan', 1),
(549, 'ipnu', 1),
(549, 'organizations', 1),
(549, 'youth', 3),
(549, 'affiliated', 2),
(549, '?s', 1),
(549, 'ulama', 3),
(549, 'nahdathul', 4),
(549, 'active', 1),
(549, 'jakarta', 1),
(549, 'university', 1),
(549, 'later', 1),
(550, 'elections', 1),
(550, 'local', 1),
(550, '2008', 1),
(550, 'elected', 1),
(550, 'democratically', 1),
(550, 'hospital', 1),
(550, 'public', 1),
(550, 'gambiran', 1),
(550, 'director', 1),
(550, 'deputy', 1),
(550, '2006', 1),
(550, 'beginning', 1),
(550, 'internist', 1),
(550, 'become', 1),
(550, 'study', 1),
(550, '2000', 1),
(550, 'continued', 1),
(550, 'province', 1),
(550, 'aceh', 1),
(550, 'junior', 1),
(550, 'served', 2),
(550, '1989', 1),
(550, 'university', 1),
(550, 'brawijaya', 1),
(550, 'school', 1),
(550, 'graduating', 1),
(550, 'upon', 1),
(550, 'practice', 1),
(550, 'training', 1),
(550, 'doctor', 2),
(550, 'medical', 3),
(550, '1961', 1),
(550, 'september', 1),
(550, 'born', 1),
(550, 'com', 1),
(550, 'samsulashar@gmail', 1),
(536, '62541', 1),
(536, 'tenggarong', 1),
(536, 'monginsidi', 1),
(536, 'wolter', 1),
(536, 'kalimantan', 2),
(536, 'east', 2),
(536, 'kertanegara', 1),
(536, 'kutai', 1),
(536, 'head', 1),
(536, 'district', 2),
(552, 'district', 4),
(552, 'saleh', 1),
(552, 'herliyan', 1),
(532, 'suhardiduka', 4),
(533, 'dharmawijaya', 1),
(533, 'rai', 1),
(533, 'bagus', 1),
(533, 'ida', 1),
(533, 'idabagus', 4),
(549, 'enrolled', 1),
(549, 'schools', 1),
(549, 'boarding', 1),
(549, 'islamic', 1),
(549, 'several', 1),
(549, 'trained', 1),
(549, '1973', 1),
(549, 'august', 1),
(549, 'born', 1),
(549, 'com', 1),
(549, 'abdullahazwaranas@yahoo', 1),
(549, 'email', 1),
(549, '9667255', 1),
(550, 'email', 1),
(550, '39138367', 1),
(550, '62821', 1),
(550, '682885', 1),
(550, '62354', 1),
(536, 'widyasari', 1),
(536, 'rita', 1),
(536, 'mrs', 1),
(536, 'ritawidya', 4),
(537, '62727', 1),
(537, 'indonesia', 1),
(537, 'selatan', 1),
(537, 'kalianda', 1),
(537, 'bangsawan', 1),
(537, 'indra', 1),
(537, 'lampung', 4),
(537, 'south', 1),
(537, 'head', 1),
(537, 'district', 1),
(537, 'menoza', 1),
(537, 'rycko', 5),
(551, '1958', 1),
(551, 'may', 1),
(551, 'com', 1),
(551, 'born', 1),
(551, 'zulkiflimuhadli@gmail', 1),
(551, 'email', 1),
(551, '31304233', 1),
(551, '3891799', 1),
(551, '62812', 2),
(551, '81001', 1),
(551, '62372', 1),
(551, 'indonesia', 1),
(551, 'taliwang', 3),
(551, 'karno', 1),
(551, 'bung', 1),
(551, 'jalan', 1),
(551, 'tenggara', 2),
(551, 'nusa', 2),
(551, 'west', 6),
(551, 'barat', 2),
(551, 'sumbawa', 7),
(551, 'head', 4),
(551, 'district', 8),
(549, '62815', 1),
(549, '418333', 1),
(549, '42500', 1),
(549, '62333', 2),
(549, 'indonesia', 2),
(549, '100', 1),
(549, 'yani', 1),
(549, 'ahmad', 1),
(549, 'java', 3),
(549, 'east', 3),
(550, 'indonesia', 1),
(550, 'rachmat', 1),
(550, 'basuki', 1),
(550, 'kediri', 5),
(550, 'mayor', 2),
(552, 'herliyansaleh', 4),
(551, 'muhadli', 3),
(551, 'zulkifli', 9),
(533, 'com', 1),
(549, 'elected', 3),
(549, 'banyuwangi', 4),
(549, 'head', 2),
(549, 'district', 3),
(549, 'anas', 1),
(549, 'azwar', 1),
(549, 'abdullah', 5),
(550, 'ashar', 2),
(550, 'samsul', 2),
(550, 'samsulashar', 4),
(536, '62811', 1),
(536, '5331117', 1),
(537, '721971', 1),
(537, 'email', 1),
(537, 'rycko@yahoo', 1),
(537, 'com', 1),
(954, 'lampung', 2),
(954, 'south', 1),
(954, 'menoza', 1),
(954, 'rycko', 1),
(549, '2004', 1),
(549, 'legislative', 1),
(549, 'elections', 1),
(549, 'home', 1),
(549, '2010', 1),
(549, 'also', 1),
(549, 'chair', 1),
(549, '2011', 1),
(551, 'basic', 1),
(551, 'needs', 1),
(551, 'policies', 1),
(552, 'mandate', 1),
(552, 'party', 1),
(552, 'pan', 1),
(552, 'chapter', 1),
(565, 'kampus', 1),
(565, 'inti', 1),
(565, 'program', 1),
(565, 'bappeda', 1),
(565, 'pejabat', 4),
(565, 'berikut', 1),
(565, 'sebagai', 2),
(565, 'perincian', 1),
(565, 'oleh', 3),
(565, 'diikuti', 2),
(565, 'september', 2),
(565, 'tanggal', 3),
(565, 'jakarta', 1),
(565, 'ini', 2),
(565, 'peraturan', 1),
(565, 'penyusunan', 2),
(565, 'perancangan', 1),
(565, 'management', 1),
(565, 'public', 1),
(565, 'new', 1),
(565, 'leadership', 1),
(565, 'strategic', 1),
(565, 'mempelajari', 1),
(565, 'dasar', 1),
(565, 'perspektif', 1),
(565, 'memberikan', 1),
(565, 'akan', 6),
(565, 'pengantar', 1),
(565, 'yaitu', 1),
(565, 'tahap', 1),
(565, 'course', 3),
(565, 'dua', 1),
(565, 'mengikuti', 1),
(565, 'untuk', 3),
(565, 'dipilih', 1),
(565, '270', 1),
(565, 'jumlah', 1),
(565, '185', 1),
(565, 'aldies', 1),
(565, '222', 1),
(565, 'alumni', 4),
(565, 'menghasilkan', 1),
(565, 'pada', 2),
(565, 'selanjutnya', 3),
(565, 'angkatan', 2),
(565, 'masing', 4),
(565, 'orang', 9),
(555, 'transforming', 2),
(555, 'leader', 2),
(555, 'indonesia', 6),
(555, 'angkatan', 3),
(555, 'pada', 6),
(555, 'sessi', 3),
(555, 'pertama', 2),
(555, 'hari', 4),
(555, 'terakhir', 2),
(555, 'dalam', 8),
(555, 'pembelajaran', 3),
(555, 'havard', 2),
(555, 'kennedy', 2),
(555, 'scholl', 2),
(555, 'tanggal', 4),
(555, '2011', 2),
(555, 'prof', 4),
(555, 'amy', 4),
(555, 'edmonson', 2),
(555, 'membahas', 2),
(555, 'meledaknya', 2),
(555, 'pesawat', 6),
(555, 'ulang', 7),
(555, 'alik', 5),
(555, 'chalenger', 2),
(555, 'diatas', 2),
(555, 'samudera', 2),
(555, 'atlantik', 2),
(555, 'setelah', 3),
(555, 'menit', 3),
(555, 'diluncurkan', 2),
(555, 'tahun', 5),
(555, '1980', 2),
(555, 'nasa', 6),
(555, 'sebagai', 2),
(555, 'badan', 1),
(555, 'ruang', 1),
(555, 'angkasa', 2),
(555, 'amerika', 2),
(555, 'telah', 6),
(555, 'mengontrak', 1),
(555, 'perusahaan', 2),
(555, 'moron', 2),
(555, 'thiokol', 2),
(555, 'untuk', 2),
(555, 'rancangan', 2),
(555, 'srb', 2),
(555, 'yaitu', 1),
(555, 'salah', 2),
(555, 'komponen', 2),
(555, 'dari', 6),
(555, 'chalenger', 4),
(555, 'tersebut', 2),
(555, 'mengandalkan', 1),
(555, 'ring', 4),
(555, 'mengankat', 1),
(555, 'berukuran', 1),
(555, 'besar', 1),
(555, 'missi', 1),
(555, 'chalengger', 2),
(555, 'tunda', 1),
(555, 'beberapa', 3),
(555, 'kali', 1),
(555, 'sehingga', 2),
(555, 'pemimpin', 1),
(555, 'merasa', 1),
(555, 'penyebab', 1),
(555, 'pengunduran', 2),
(555, 'ini', 7),
(555, 'januari', 2),
(555, '1986', 3),
(555, 'terjadilah', 1),
(555, 'proses', 4),
(555, 'pengambilan', 4),
(555, 'keputusan', 6),
(555, 'peluncur', 1),
(555, 'yang', 15),
(555, 'penuh', 1),
(555, 'emosional', 1),
(555, 'intinya', 1),
(555, 'boisjoly', 4),
(555, 'thiokal', 1),
(555, 'mengingatkan', 1),
(555, 'bahan', 1),
(555, 'akan', 1),
(555, 'meleleh', 1),
(555, 'suhu', 1),
(555, 'jika', 1),
(555, 'prediksii', 1),
(555, 'cuaca', 1),
(555, 'peluncuran', 7),
(555, 'udara', 1),
(555, 'benar', 1),
(555, 'larry', 2),
(555, 'mulloy', 3),
(555, 'pemimpin', 2),
(555, 'dan', 11),
(555, 'stafnya', 1),
(555, 'menclaim', 1),
(555, 'terlalu', 1),
(555, 'vokal', 1),
(555, 'bisa', 2),
(555, 'mengancam', 1),
(555, 'jadwal', 2),
(555, 'ditetapkan', 2),
(555, 'atasan', 1),
(555, 'dengan', 9),
(555, 'mendiskusikan', 1),
(555, 'pendapat', 1),
(555, 'antara', 2),
(555, 'lain', 2),
(555, 'kondisi', 2),
(555, 'saat', 1),
(555, 'peluncuran', 1),
(555, 'sebelumnya', 1),
(555, 'ternyata', 1),
(555, 'aman', 1),
(555, 'rusia', 1),
(555, 'meluncurkan', 1),
(555, 'juga', 1),
(555, 'pengikisan', 1),
(555, 'lebih', 2),
(555, 'panas', 1),
(555, 'jangan', 2),
(555, 'ditumpangi', 1),
(555, 'kepentingan', 1),
(555, 'pihak', 1),
(555, 'menginginkan', 1),
(555, 'ditunda', 1),
(555, 'rapat', 4),
(555, 'memutuskan', 1),
(555, 'challanger', 1),
(555, 'tetap', 1),
(555, 'dilaksanakan', 2),
(555, 'sesuai', 2),
(555, 'kenyataan', 1),
(555, 'pahit', 1),
(555, 'diterima', 1),
(555, 'atas', 1),
(555, 'arogansi', 3),
(555, 'sendiri', 1),
(555, 'terjadi', 4),
(555, 'challenger', 2),
(555, 'meledak', 1),
(555, 'kepingan', 2),
(555, 'ditemukan', 1),
(555, 'jatuh', 1),
(555, 'tersebar', 1),
(555, 'laut', 1),
(555, 'atlantikk', 1),
(555, 'astronot', 1),
(555, 'dalamnya', 1),
(555, 'dunia', 1),
(555, 'antariksa', 1),
(555, 'terpukul', 1),
(555, 'sebuah', 3),
(555, 'error', 6),
(555, 'type', 6),
(555, 'iii', 6),
(555, 'menyajikan', 1),
(555, 'kasus', 3),
(555, 'bantuan', 1),
(555, 'video', 1),
(555, 'rekaman', 1),
(555, 'secara', 1),
(555, 'apik', 1),
(555, 'sekali', 1),
(555, 'membuat', 1),
(555, 'para', 3),
(555, 'terbangun', 1),
(555, 'praktek', 1),
(555, 'selama', 1),
(555, 'mungkin', 1),
(555, 'sering', 3),
(555, 'pemerintahan', 1),
(555, 'daerah', 4),
(555, 'adalah', 2),
(555, 'istilah', 1),
(555, 'kalimat', 1),
(555, 'maksudnya', 1),
(555, '?melaksanakan', 1),
(555, 'salah?', 2),
(555, 'dimulai', 1),
(555, 'dengan', 1),
(555, '?identifikasi', 1),
(555, 'masalah', 2),
(555, 'disadari', 1),
(555, 'atau', 1),
(555, 'tidak', 1),
(555, 'pemerintah', 3),
(555, 'berpeluang', 1),
(555, 'terjebak', 1),
(555, 'menangani', 1),
(555, 'seperti', 2),
(555, 'dilakukan', 1),
(555, 'shuttle', 2),
(555, 'space', 2),
(555, 'bermula', 1),
(555, 'intervensi', 1),
(555, 'pimpinan', 1),
(555, 'mematahkan', 1),
(555, 'mementahkan', 1),
(555, 'seluruh', 1),
(555, 'sudah', 2),
(555, 'berjalan', 2),
(555, 'mekanisme', 2),
(555, 'bawah', 1),
(555, 'kota', 8),
(555, 'ketika', 2),
(555, 'sekretaris', 2),
(555, 'memimpin', 1),
(555, 'rencana', 1),
(555, 'kegiatan', 5),
(555, 'dihadiri', 1),
(555, 'skpd', 2),
(555, 'kepala', 1),
(555, 'uniit', 1),
(555, 'bagus', 1),
(555, 'saran', 1),
(555, 'usul', 1),
(555, 'ide', 1),
(555, 'muncul', 1),
(555, 'cerdasnya', 1),
(555, 'kesimpulannya', 1),
(555, 'mengena', 1),
(555, 'kepada', 3),
(555, 'melibatkan', 1),
(555, 'banyak', 1),
(555, 'rakyat', 1),
(555, 'lomba', 1),
(555, 'olahraga', 1),
(555, 'ditingkat', 2),
(555, 'kelurahan', 1),
(555, 'sebagainya', 1),
(555, 'tetapi', 2),
(555, 'dipenghujung', 1),
(555, 'pak', 1),
(555, 'wali', 1),
(555, 'masuk', 1),
(555, 'beliau', 1),
(555, 'langsung', 1),
(555, 'memberikan', 1),
(555, 'arahan', 2),
(555, 'termasuk', 1),
(555, 'menentukan', 1),
(555, 'harus', 1),
(555, 'tanpa', 1),
(555, 'resume', 1),
(555, 'walikota', 2),
(555, 'pertandingan', 1),
(555, 'golf', 1),
(555, 'eksekutif', 1),
(555, 'legislatif', 1),
(555, 'upacara', 1),
(555, 'malam', 1),
(555, 'resepsi', 1),
(555, 'semua', 1),
(555, 'sejak', 1),
(555, 'pagi', 1),
(555, 'dipimpi', 1),
(555, 'menjadi', 1),
(555, 'mentah', 1),
(555, 'dimana', 1),
(555, 'mana', 1),
(555, 'penetapan', 1),
(555, 'kebijakan', 1),
(555, 'pembangunan', 1),
(555, 'lahir', 1),
(555, 'pemeimpin', 1),
(555, 'edmon', 1),
(555, 'membangunkan', 1),
(555, 'bupati', 1),
(555, 'mengangkat', 1),
(555, 'kabupaten', 2),
(555, 'ujung', 1),
(555, 'tombak', 1),
(555, 'referensi', 1),
(555, 'transparansi', 1),
(555, 'kepemimpinan', 3),
(555, 'dapat', 1),
(555, 'merubah', 1),
(555, 'wajah', 1),
(555, 'republik', 1),
(555, 'tercinta', 1),
(555, 'gaya', 2),
(565, 'peserta', 3),
(565, 'sebanyak', 6),
(565, 'keseluruhan', 1),
(565, 'secara', 1),
(565, 'ladies', 2),
(565, 'wakil', 2),
(565, 'walikota', 4),
(565, 'isteri', 1),
(565, 'bupati', 4),
(565, 'bagi', 1),
(565, 'kepribadian', 1),
(565, 'pengembangan', 1),
(565, 'pelaksanaan', 3),
(565, 'disertai', 1),
(565, 'yang', 14),
(565, 'pelatihan', 1),
(565, 'pendidikan', 1),
(565, 'utama', 1),
(565, 'kegiatan', 4),
(565, 'merupakan', 2),
(565, 'indonesia', 4),
(565, 'leaders', 4),
(565, 'transforming', 4),
(565, 'program', 11),
(565, 'education', 7),
(565, 'training', 4),
(565, 'executive', 7),
(565, 'dilanjutkan', 2),
(565, '2011', 7),
(565, 'dengan', 8),
(565, 'sampai', 4),
(565, '2010', 3),
(565, 'tahun', 7),
(565, 'dari', 5),
(565, 'dilaksanakan', 8),
(565, 'okppd', 10),
(565, 'daerah', 14),
(565, 'pemerintahan', 6),
(565, 'penyelenggaraan', 7),
(565, 'dan', 18),
(565, 'kepemimpinan', 5),
(565, 'orientasi', 7),
(565, 'melaksanakan', 2),
(565, 'telah', 7),
(565, 'negeri', 5),
(565, 'dalam', 9),
(565, 'kementerian', 5),
(565, 'diklat', 5),
(565, 'badan', 5),
(565, 'pertama', 1),
(565, 'bertujuan', 1),
(565, 'mensosialisasikan', 1),
(565, 'dan', 1),
(565, 'yusharto', 1),
(565, 'kabid', 1),
(565, 'otda', 1),
(565, 'pum', 1),
(565, 'kemendagri', 1),
(565, 'mengikuti', 2),
(802, 'login', 4),
(1070, 'cccc', 1),
(1069, 'bbb', 2),
(1069, 'bbbb', 1),
(1068, 'aaa', 2),
(1068, 'aaaa', 1),
(577, 'kamusti', 1),
(577, 'pdf', 4),
(1100, 'people’s', 1),
(1100, 'assistant', 1),
(1100, 'served', 1),
(1100, 'previously', 1),
(1100, '2008', 1),
(1100, 'named', 1),
(649, 'apdn', 2),
(649, 'graduated', 1),
(649, '1951', 1),
(649, 'december', 1),
(649, 'martapura', 1),
(649, 'born', 1),
(649, 'noor', 3),
(649, 'ruzaidin', 5),
(661, 'elected', 1),
(661, 'solok', 1),
(661, 'south', 1),
(661, 'created', 1),
(661, 'newly', 1),
(661, 'pemilukada', 1),
(661, 'local', 1),
(661, 'election', 1),
(661, 'lost', 1),
(661, '2005', 1),
(661, 'elections', 2),
(661, 'run', 2),
(661, '2007', 1),
(661, 'padang', 1),
(661, '2002', 1),
(661, 'head', 3),
(661, 'position', 1),
(661, 'promoted', 1),
(661, 'affairs', 1),
(661, 'development', 1),
(661, 'economic', 1),
(661, 'assistant', 1),
(661, 'second', 1),
(661, 'district', 5),
(661, 'sijunjung', 3),
(661, 'sawahlunto', 3),
(661, 'transferred', 2),
(661, 'sumatra', 1),
(661, 'west', 1),
(661, 'agency', 3),
(661, 'serve', 3),
(661, 'province', 1),
(661, 'home', 1),
(661, 'returned', 1),
(661, 'years', 1),
(661, 'several', 1),
(661, 'served', 1),
(661, '1988', 1),
(661, 'india', 1),
(661, 'university', 1),
(661, 'engineering', 1),
(661, 'roorkee', 1),
(661, 'degree', 1),
(661, 'master', 1),
(661, 'pursued', 1),
(661, 'later', 1),
(661, 'jakarta', 2),
(661, 'ministry', 2),
(661, 'joined', 1),
(661, 'automatically', 1),
(661, 'graduating', 1),
(661, 'upon', 1),
(661, 'bandung', 1),
(661, 'academy', 2),
(661, 'technological', 2),
(661, 'works', 7),
(661, 'public', 7),
(661, 'engineer', 1),
(661, 'trained', 1),
(661, '1954', 1),
(1100, 'office', 1),
(1100, 'positions', 1),
(1100, 'various', 1),
(665, 'minimum', 1),
(664, 'university', 1),
(664, 'brawijaya', 1),
(664, 'degree', 1),
(664, 'doctorate', 1),
(664, 'pursuing', 1),
(664, 'currently', 1),
(664, 'secretary', 1),
(664, 'bappeda’s', 1),
(662, 'solok', 1),
(662, 'south', 1),
(662, 'created', 1),
(662, 'newly', 1),
(662, 'planning', 1),
(662, 'local', 1),
(662, 'bappeda', 1),
(662, 'named', 1),
(662, 'education', 1),
(662, 'transferred', 1),
(662, 'later', 1),
(662, 'years', 1),
(662, 'four', 1),
(662, '2004', 1),
(662, 'sinjunjung', 2),
(662, 'agency', 3),
(662, 'fishery', 1),
(662, 'head', 3),
(662, 'position', 2),
(662, 'promoted', 1),
(662, '1989', 1),
(662, 'district', 3),
(662, 'sijunjung', 1),
(662, 'service', 1),
(662, 'civil', 1),
(662, 'joined', 1),
(662, '1988', 1),
(662, 'husbandry', 2),
(662, 'animal', 2),
(662, 'majoring', 1),
(662, 'university', 1),
(662, 'andalas', 1),
(662, 'graduated', 1),
(662, '1965', 1),
(662, 'march', 1),
(662, 'sibubuk', 1),
(662, 'padang', 1),
(662, 'born', 1),
(662, 'alkhudri', 3),
(662, 'said', 5),
(664, '2011', 1),
(664, 'april', 1),
(664, 'beginning', 1),
(664, 'bapppeda', 1),
(664, 'department', 1),
(664, 'cultural', 1),
(664, 'social', 1),
(664, 'position', 2),
(664, 'promoted', 2),
(664, '2009', 1),
(664, '2005', 1),
(664, 'district', 1),
(664, 'kartanegara', 3),
(664, 'section', 1),
(664, 'head', 2),
(664, 'served', 1),
(664, 'district’s', 2),
(664, 'kutai', 4),
(663, 'born', 1),
(663, 'widyasari', 3),
(663, 'rita', 5),
(664, 'transferred', 1),
(664, '1999', 1),
(664, 'jatinangor', 1),
(664, 'sciences', 1),
(664, 'government', 1),
(664, 'local', 1),
(664, 'school', 1),
(664, 'negeri', 1),
(664, 'dalam', 1),
(664, 'pemerintahan', 1),
(664, 'tinggi', 1),
(664, 'sekolah', 1),
(664, 'stpdn', 1),
(664, 'graduated', 1),
(664, 'upon', 1),
(664, '1994', 1),
(664, 'development', 3),
(664, 'rural', 2),
(664, 'agency', 2),
(664, 'government’s', 1),
(664, 'provincial', 1),
(664, 'kalimantan', 1),
(664, 'east', 1),
(664, 'career', 1),
(664, 'started', 1),
(664, '1971', 1),
(664, 'march', 1),
(664, 'lamongan', 1),
(664, 'born', 1),
(664, 'machmudan', 5),
(1100, 'transferred', 1),
(1100, '1990', 1),
(1100, 'agency', 1),
(1100, 'local', 3),
(1100, 'municipality', 4),
(1100, 'bappeda', 2),
(649, 'bureaucrat', 1),
(649, 'successfully', 1),
(649, 'got', 1),
(649, 'elected', 2),
(649, 'vice', 1),
(649, 'mayor', 2),
(649, '2005', 1),
(649, '2010', 1),
(649, 'direct', 1),
(649, 'elections', 1),
(661, 'october', 1),
(661, 'muaralabuh', 1),
(661, 'born', 1),
(661, 'zakaria', 3),
(665, 'service', 1),
(665, 'implements', 1),
(665, 'level', 1),
(665, 'maker', 1),
(665, 'policy', 1),
(665, 'competitiveness', 1),
(665, 'augment', 1),
(665, 'welfare', 1),
(665, 'community', 1),
(665, 'accelerate', 1),
(665, 'should', 1),
(665, 'autonomy', 1),
(665, 'regional', 1),
(665, 'believes', 1),
(665, 'bedagai', 3),
(665, 'serdang', 3),
(665, 'head', 2),
(665, 'district', 4),
(665, 'democratically', 1),
(665, '2005', 1),
(665, 'pemilukada', 1),
(665, 'direct', 1),
(665, 'first', 1),
(665, 'historic', 1),
(665, 'elected', 2),
(665, 'get', 1),
(665, 'elections', 2),
(665, '2004', 1),
(665, 'legislature', 1),
(665, 'local', 2),
(665, 'run', 1),
(665, 'order', 1),
(665, 'new', 1),
(665, 'downfall', 1),
(665, 'following', 1),
(665, 'prevailing', 1),
(665, 'much', 1),
(665, 'sentiments', 1),
(665, 'anti', 1),
(666, '2008', 1),
(666, 'april', 1),
(666, 'bappeda', 2),
(666, 'planning', 1),
(666, 'local', 1),
(666, 'department', 1),
(666, 'economic', 1),
(666, 'position', 1),
(666, 'promoted', 2),
(666, 'later', 1),
(666, 'year', 1),
(666, 'one', 1),
(666, 'plantation', 1),
(666, 'forestry', 1),
(666, 'section', 1),
(666, 'rehabilitation', 1),
(666, 'land', 1),
(666, 'head', 3),
(666, 'served', 1),
(666, 'district', 2),
(666, 'bedagai', 4),
(666, 'serdang', 4),
(666, 'created', 1),
(666, 'newly', 1),
(666, 'transferred', 1),
(666, '2006', 1),
(666, 'beginning', 1),
(666, '1989', 1),
(666, 'province', 1),
(666, 'agency', 3),
(666, 'bureaucrat', 1),
(666, 'career', 1),
(666, 'commenced', 1),
(666, 'university', 1),
(666, 'sumatra', 2),
(666, 'north', 2),
(666, 'islamic', 1),
(666, 'engineer', 1),
(666, 'agricultural', 2),
(666, 'trained', 1),
(666, '1963', 1),
(666, 'may', 1),
(666, 'medan', 1),
(666, 'born', 1),
(666, 'batubara', 3),
(666, 'taufik', 5),
(665, '1999', 1),
(665, 'chapter', 2),
(665, 'north', 2),
(665, 'party', 2),
(665, 'golkar', 3),
(665, 'chair', 1),
(665, 'deputy', 1),
(665, 'named', 1),
(665, 'associations', 1),
(665, 'organizations', 1),
(665, 'youth', 1),
(665, 'various', 1),
(665, 'active', 1),
(665, 'business', 2),
(665, 'career', 1),
(665, 'build', 1),
(665, 'built', 1),
(665, '1990', 1),
(665, 'utara', 1),
(665, 'sumatra', 3),
(665, 'university', 1),
(665, 'department', 1),
(665, 'engineering', 1),
(665, 'electrical', 1),
(665, 'graduating', 1),
(665, 'upon', 1),
(665, '1964', 1),
(665, 'june', 1),
(665, 'medan', 1),
(665, 'born', 1),
(665, 'errynuradi', 2),
(665, 'nuradi', 4),
(665, 'erry', 4),
(1010, 'isdianto', 1),
(1010, 'radianto', 1),
(661, 'got', 1),
(661, 'muzni', 5),
(661, '2010', 1),
(665, 'standard', 1),
(665, 'field', 1),
(665, 'education', 1),
(665, 'health', 1),
(665, 'integrated', 1),
(665, 'permit', 1),
(665, 'system', 1),
(665, 'attract', 1),
(665, 'investments', 1),
(665, 'reelected', 1),
(665, '2010', 1),
(665, 'year', 1),
(665, 'assumed', 1),
(665, 'chairmanship', 1),
(1010, 'bambang', 1),
(1010, 'halim', 1),
(1010, 'sambari', 1),
(1010, 'gresik', 1),
(1010, 'assegaf', 1),
(1010, 'abdurrahman', 1),
(1010, 'burhan', 1),
(1010, 'maluku', 1),
(1010, 'ternate', 1),
(674, 'elected', 2),
(674, 'golkar', 2),
(674, 'committee', 1),
(674, 'national', 1),
(674, 'knpi', 1),
(674, 'renewal', 1),
(674, 'generation', 1),
(674, 'young', 1),
(674, 'indonesian', 2),
(674, 'ampi', 1),
(674, 'organizations', 1),
(674, 'youth', 2),
(674, 'various', 1),
(674, 'also', 1),
(674, 'order', 1),
(674, 'new', 1),
(674, 'end', 1),
(674, 'following', 1),
(674, 'party', 3),
(674, 'political', 1),
(674, 'active', 2),
(674, 'became', 2),
(674, 'left', 1),
(674, '1999', 3),
(674, '1986', 1),
(674, 'agency', 1),
(674, 'information', 1),
(674, 'staff', 1),
(674, 'bureaucracy', 2),
(674, 'career', 1),
(674, 'started', 1),
(674, 'initially', 1),
(674, 'mamuju', 3),
(674, '1962', 1),
(674, 'may', 1),
(674, 'born', 1),
(674, 'duka', 3),
(674, 'suhardi', 5),
(675, 'assistant', 1),
(675, 'promoted', 1),
(675, '2003', 1),
(675, 'section', 1),
(675, 'order', 1),
(675, 'public', 1),
(675, 'head', 3),
(675, 'named', 2),
(675, 'district', 3),
(675, 'mamuju', 3),
(675, 'transferred', 1),
(675, 'jakarta', 1),
(675, 'science', 1),
(675, 'iip', 1),
(675, 'study', 1),
(675, 'continue', 1),
(675, 'assigned', 1),
(675, 'office', 1),
(675, 'provincial', 1),
(675, 'sulawesi', 1),
(675, 'south', 1),
(675, 'stationed', 1),
(675, '1993', 1),
(675, 'jatinangor', 1),
(675, 'institute', 2),
(675, 'government', 4),
(675, 'local', 1),
(675, 'stpdn', 1),
(675, 'graduated', 1),
(675, 'ladder', 1),
(675, 'lowest', 1),
(675, 'bureaucracy', 1),
(675, 'career', 1),
(675, 'started', 1),
(675, 'makassar', 1),
(675, '1971', 1),
(675, 'june', 1),
(675, 'born', 1),
(675, 'maulana', 3),
(675, 'junda', 5),
(674, 'member', 1),
(674, 'local', 3),
(674, 'legislature', 2),
(674, 'dprd', 1),
(674, '1997', 1),
(674, '2004', 2),
(674, 'deputy', 1),
(674, 'speaker', 1),
(674, 'district', 3),
(674, 'run', 1),
(674, 'headship', 1),
(674, '2005', 1),
(674, 'first', 1),
(674, 'direct', 1),
(674, 'elections', 2),
(674, 'got', 1),
(674, 'head', 2),
(674, 'reelected', 1),
(674, '2010', 2),
(674, 'beginning', 1),
(674, 'served', 1),
(674, 'chapter', 1),
(674, 'west', 1),
(674, 'sulawesi', 1),
(674, 'province', 1),
(675, 'development', 1),
(675, 'affairs', 1),
(675, '2009', 1),
(675, 'personnel', 1),
(675, 'training', 1),
(675, 'education', 1),
(675, 'agency', 1),
(675, 'beginning', 1),
(675, 'july', 1),
(675, '2011', 1),
(675, 'acting', 1),
(675, 'bappeda', 1),
(675, 'obtained', 1),
(675, 'master', 1),
(675, 'doctorate', 1),
(675, 'degrees', 1),
(675, 'hasanuddin', 1),
(675, 'padjajaran', 1),
(675, 'university', 1),
(1010, 'nehruddin', 1),
(1010, 'kresna', 1),
(1010, 'rendra', 1),
(1010, 'malang', 1),
(1010, 'rachman', 1),
(1010, 'amry', 1),
(1010, 'muhadli', 1),
(679, 'pkb', 1),
(679, 'joined', 1),
(679, 'order', 1),
(679, 'new', 1),
(679, 'downfall', 1),
(679, 'following', 1),
(679, '1999', 1),
(679, '1997', 1),
(679, 'assembly', 1),
(679, 'consultative', 1),
(679, 'people’s', 1),
(679, 'rakyat', 1),
(679, 'permusyawaratan', 1),
(679, 'majelis', 1),
(679, 'mpr', 1),
(679, 'member', 2),
(679, 'movement', 2),
(679, 'anshor', 3),
(679, 'pemuda', 1),
(679, 'gerakan', 1),
(679, 'sons', 1),
(679, 'ulama’s', 1),
(679, 'association', 1),
(679, 'putra', 1),
(679, 'ikatan', 1),
(679, 'ipnu', 1),
(679, 'organizations', 1),
(679, 'youth', 3),
(679, 'affiliated', 2),
(679, '’s', 1),
(679, 'ulama', 3),
(679, 'nahdathul', 4),
(679, 'active', 1),
(679, 'jakarta', 1),
(679, 'indonesia', 1),
(679, 'university', 1),
(679, 'enrolled', 1),
(679, 'later', 1),
(679, 'java', 1),
(679, 'east', 1),
(679, 'schools', 1),
(679, 'boarding', 1),
(679, 'islamic', 1),
(679, 'several', 1),
(679, 'trained', 1),
(679, '1973', 1),
(679, 'august', 1),
(679, 'banyuwangi', 2),
(679, 'born', 1),
(679, 'abdullahaswar', 2),
(679, 'anas', 3),
(679, 'azwar', 3),
(679, 'abdullah', 3),
(679, 'national', 1),
(679, 'awakening', 1),
(679, 'party', 1),
(679, 'closely', 1),
(679, 'elected', 3),
(679, 'parliament', 1),
(679, '2004', 1),
(679, 'legislative', 1),
(679, 'elections', 1),
(679, 'district', 2),
(679, 'head', 1),
(679, 'home', 1),
(679, '2010', 1),
(679, 'also', 1),
(679, 'chair', 1),
(679, '2011', 1),
(1010, 'zulkifili', 1),
(681, '2011', 1),
(681, 'late', 1),
(681, 'serve', 1),
(681, 'projected', 1),
(681, 'agency', 1),
(681, 'transportation', 1),
(681, 'transferred', 1),
(681, 'later', 1),
(681, 'year', 1),
(681, 'one', 1),
(681, '2010', 1),
(681, 'secretary', 1),
(681, 'bappeda', 2),
(681, 'named', 1),
(681, 'glagah', 1),
(681, 'genteng', 1),
(681, 'srono', 1),
(681, 'pesanggrahan', 1),
(681, 'regions', 1),
(681, 'various', 1),
(681, 'camat', 1),
(681, 'head', 3),
(681, 'district', 1),
(681, 'sub', 1),
(681, 'position', 2),
(681, 'promoted', 1),
(681, '1991', 1),
(681, 'science', 1),
(681, 'pemerintahan', 1),
(681, 'ilmu', 1),
(681, 'institute', 2),
(681, 'iip', 1),
(681, 'graduated', 1),
(681, 'ladder', 1),
(681, 'lowest', 1),
(681, 'joined', 1),
(681, 'bureaucracy', 2),
(681, 'government', 2),
(681, 'local', 1),
(681, 'career', 1),
(681, 'built', 1),
(681, '1961', 1),
(681, 'august', 1),
(681, 'banyuwangi', 2),
(681, 'born', 1),
(681, 'siswanto', 3),
(681, 'agus', 5),
(1010, 'tenggara', 1),
(1010, 'nusa', 1),
(1010, 'sumbawa', 1),
(1010, 'siswanto', 1),
(1010, 'agus', 1),
(1010, 'anas', 1),
(1010, 'aswar', 1),
(1010, 'abdullah', 1),
(687, 'local', 2),
(687, 'direct', 1),
(687, 'ever', 1),
(687, 'first', 1),
(687, 'created', 1),
(687, 'newly', 1),
(687, 'headship', 1),
(687, 'run', 1),
(687, 'district', 5),
(687, 'plantation', 1),
(687, 'appointed', 1),
(687, '2002', 1),
(687, 'beginning', 1),
(687, 'samosir', 3),
(687, 'toba', 4),
(687, 'concurrently', 1),
(687, 'served', 1),
(687, '1993', 1),
(687, '1990', 1),
(687, 'tarutung', 1),
(687, 'tapanuli', 1),
(687, 'regions', 3),
(687, 'head', 5),
(687, 'promoted', 1),
(687, '1989', 1),
(687, '1986', 1),
(687, 'rakyat', 1),
(687, 'hutan', 1),
(687, 'taman', 1),
(687, 'park', 1),
(687, 'forest', 1),
(687, 'community', 1),
(687, 'barisan', 1),
(687, 'bukit', 1),
(687, 'oversee', 1),
(687, 'assigned', 1),
(687, 'medan', 1),
(687, 'agency', 4),
(687, 'sumatra', 1),
(687, 'north', 2),
(687, 'service', 1),
(687, 'civil', 1),
(687, 'joined', 1),
(687, '1981', 1),
(687, 'forestry', 5),
(687, 'majoring', 1),
(687, 'graduating', 1),
(687, 'upon', 1),
(687, 'achievement', 1),
(687, 'academic', 1),
(687, '1977', 1),
(687, 'ipb', 1),
(687, 'institute', 2),
(687, 'agricultural', 2),
(687, 'bogor', 2),
(687, 'test', 1),
(687, 'entrance', 1),
(687, 'without', 1),
(687, 'admitted', 1),
(687, 'got', 2),
(687, '1957', 1),
(687, 'june', 1),
(687, 'rianate', 1),
(687, 'born', 1),
(687, 'simbolon', 4),
(687, 'mangindar', 6),
(687, 'competitiveness', 1),
(687, 'enhance', 1),
(687, 'potency', 1),
(687, 'optimize', 1),
(687, 'effort', 1),
(687, 'management', 1),
(687, 'regional', 1),
(687, 'lake', 2),
(687, 'developed', 1),
(687, '2005', 1),
(687, 'pemilukada', 1),
(687, 'elections', 2),
(690, 'types', 1),
(690, 'various', 1),
(690, 'documents', 2),
(690, 'important', 1),
(690, 'establishment', 1),
(690, 'involved', 1),
(690, 'served', 1),
(690, 'planning', 2),
(690, 'local', 1),
(690, 'secretary', 1),
(690, 'position', 1),
(690, 'promoted', 1),
(690, '2006', 1),
(690, 'communication', 1),
(690, '2004', 1),
(690, 'bappeda', 3),
(690, 'section', 2),
(690, 'infrastructure', 2),
(690, 'public', 1),
(690, 'resources', 1),
(690, 'natural', 1),
(690, 'head', 2),
(690, 'serve', 1),
(690, 'created', 1),
(690, 'newly', 1),
(690, 'transferred', 2),
(690, 'formation', 1),
(690, 'following', 1),
(690, 'district', 4),
(690, 'samosir', 4),
(690, 'toba', 1),
(690, 'agency', 2),
(690, 'mining', 1),
(690, 'industry', 1),
(690, 'staff', 1),
(690, 'worked', 1),
(690, 'initially', 1),
(690, '2000', 1),
(690, 'college', 1),
(690, 'graduated', 1),
(690, 'upon', 1),
(690, 'service', 1),
(690, 'civil', 1),
(690, 'joined', 1),
(690, 'training', 1),
(690, 'engineer', 1),
(690, 'sitanggang', 4),
(690, 'hotraja', 6),
(687, 'around', 1),
(687, 'reelected', 1),
(687, '2010', 1),
(691, 'village', 1),
(691, 'ideas', 1),
(691, 'develops', 1),
(691, 'regional', 1),
(691, 'seasoned', 1),
(691, '1992', 1),
(691, 'knoxville', 1),
(691, 'tennessee', 1),
(691, 'university', 1),
(691, 'degree', 1),
(691, 'master', 1),
(691, 'pursued', 1),
(691, 'secretary', 1),
(691, 'position', 1),
(691, 'promoted', 1),
(691, 'bappeda', 2),
(691, 'agency', 1),
(691, 'planning', 3),
(691, 'local', 1),
(691, 'section', 1),
(691, 'economic', 1),
(691, 'head', 2),
(691, 'assigned', 1),
(691, 'district', 2),
(691, 'bengkalis', 4),
(691, 'service', 1),
(691, 'civil', 1),
(691, 'joined', 1),
(691, 'agriculture', 1),
(691, 'institute', 1),
(691, 'bogor', 1),
(691, 'graduating', 1),
(691, 'upon', 1),
(691, '1959', 1),
(691, 'march', 1),
(691, 'muda', 1),
(691, 'lubuk', 1),
(691, 'born', 1),
(691, 'saleh', 3),
(691, 'herliyan', 5),
(691, 'empowerment', 1),
(691, 'palm', 1),
(691, 'oil', 1),
(691, 'downstream', 1),
(691, 'industry', 1),
(691, 'cluster', 1),
(691, 'policy', 1),
(691, 'riau', 1),
(691, 'province', 1),
(691, 'government', 1),
(691, 'democratically', 1),
(691, 'elected', 1),
(691, '2010', 1),
(691, 'also', 1),
(691, 'currently', 1),
(691, 'serves', 1),
(691, 'chair', 1),
(691, 'national', 1),
(691, 'mandate', 1),
(691, 'party', 1),
(691, 'pan', 1),
(691, 'chapter', 1),
(693, 'cooperation', 1),
(693, 'research', 1),
(693, 'named', 1),
(693, 'bkmd', 1),
(693, 'board', 1),
(693, 'coordinating', 1),
(693, 'transferred', 1),
(693, '2010', 1),
(693, '2005', 1),
(693, 'agency', 1),
(693, 'promotion', 1),
(693, 'investment', 2),
(693, 'promotional', 1),
(693, 'name', 1),
(693, 'bappeda', 3),
(693, 'provincial', 1),
(693, 'section', 2),
(693, 'mining', 1),
(693, 'industry', 1),
(693, 'head', 4),
(693, 'became', 2),
(693, 'returned', 1),
(693, 'study', 1),
(693, 'graduate', 1),
(693, 'finishing', 1),
(693, 'university', 1),
(693, 'state', 1),
(693, 'degree', 1),
(693, 'master', 1),
(693, 'pursue', 1),
(693, 'iowa', 2),
(693, '2001', 1),
(693, '–', 1),
(693, '1999', 1),
(693, 'years', 2),
(693, 'two', 2),
(693, 'spent', 1),
(693, 'province', 2),
(693, 'riau', 5),
(693, 'home', 1),
(693, 'service', 1),
(693, 'civil', 1),
(693, 'joined', 1),
(693, '1987', 1),
(693, 'agriculture', 1),
(693, 'institute', 1),
(693, 'bogor', 1),
(693, 'graduating', 1),
(693, 'upon', 1),
(693, '1963', 1),
(693, 'november', 1),
(693, 'rengat', 1),
(693, 'born', 1),
(693, 'bustian', 3),
(693, 'indra', 3),
(693, 'jondi', 5),
(693, 'department', 1),
(693, 'bengkalis', 1),
(693, '2011', 1),
(711, 'indonesian', 2),
(711, 'ampi', 1),
(711, 'association', 1),
(711, 'student', 1),
(711, 'islamic', 1),
(711, 'hmi', 1),
(711, 'parties', 1),
(711, 'political', 1),
(711, 'organizations', 1),
(711, 'youth', 2),
(711, 'various', 1),
(711, 'active', 2),
(711, 'service', 1),
(711, 'addition', 1),
(711, '2010', 1),
(711, 'reelected', 1),
(711, 'directly', 1),
(711, 'first', 1),
(711, 'elected', 2),
(711, '2005', 1),
(711, 'elections', 2),
(711, 'headship', 1),
(711, 'run', 1),
(711, '2003', 1),
(711, 'bappeda', 1),
(711, 'became', 1),
(711, 'bureau', 1),
(711, 'welfare', 1),
(711, 'people’s', 1),
(711, 'affairs', 1),
(711, 'general', 1),
(711, 'promoted', 1),
(711, '2001', 2),
(711, 'dprd', 1),
(711, 'legislature', 1),
(711, 'created', 1),
(711, 'newly', 1),
(711, 'secretary', 1),
(711, '1999', 2),
(711, '1989', 1),
(711, 'masamba', 1),
(711, 'malangke', 1),
(711, 'wara', 1),
(711, 'north', 4),
(711, 'camat', 1),
(711, 'head', 5),
(711, 'sub', 1),
(711, 'served', 2),
(711, '1980', 1),
(711, 'university', 1),
(711, 'hasanuddin', 1),
(711, 'graduated', 1),
(711, 'upon', 1),
(711, 'district', 6),
(711, 'luwu', 5),
(711, 'bureaucracy', 2),
(711, 'government', 1),
(711, 'local', 4),
(711, 'career', 1),
(711, 'built', 1),
(711, '1952', 1),
(711, 'august', 1),
(711, 'palopo', 1),
(711, 'born', 1),
(711, 'junaidi', 3),
(711, 'arifin', 5),
(721, 'best', 1),
(721, 'lgsp', 1),
(721, 'usaid’s', 1),
(721, 'others', 1),
(721, 'among', 1),
(721, 'awards', 1),
(721, 'various', 1),
(721, 'received', 1),
(721, 'tenure', 1),
(721, '2010', 1),
(721, 'term', 1),
(721, 'second', 1),
(721, 'reelected', 1),
(721, '2005', 1),
(721, 'elected', 1),
(721, '2002', 1),
(721, 'planning', 1),
(721, 'bappeda', 1),
(721, 'got', 1),
(710, 'became', 1),
(710, '2011', 2),
(710, '2006', 1),
(710, 'department', 1),
(710, 'administration', 1),
(710, 'developmental', 1),
(710, 'position', 1),
(710, 'promoted', 1),
(710, 'section', 1),
(710, 'irrigation', 1),
(710, 'head', 3),
(710, 'luwu', 2),
(710, 'north', 2),
(710, 'created', 1),
(710, 'newly', 1),
(710, 'transferred', 1),
(710, 'province', 1),
(710, 'kalimantan', 1),
(710, 'south', 1),
(710, 'district', 3),
(710, 'laut', 1),
(710, 'tanah', 1),
(710, 'agency', 1),
(710, 'planning', 1),
(710, 'local', 1),
(710, 'bappeda', 2),
(710, 'staff', 1),
(710, 'worked', 1),
(710, 'initially', 1),
(710, '1991', 1),
(710, 'college', 1),
(710, 'graduating', 1),
(710, 'right', 1),
(710, 'service', 1),
(710, 'civil', 1),
(710, 'joined', 1),
(710, '1962', 1),
(710, 'september', 1),
(710, 'palopo', 1),
(710, 'born', 1),
(710, 'syair', 3),
(710, 'syamsul', 5),
(721, 'serve', 1),
(721, 'agency', 2),
(721, 'irrigation', 1),
(721, 'position', 1),
(721, 'promoted', 2),
(721, '1999', 1),
(721, 'cibadak', 1),
(721, 'surade', 1),
(721, 'head', 4),
(721, 'sub', 1),
(721, 'served', 1),
(721, '1994', 1),
(721, '1989', 1),
(721, 'science', 1),
(721, 'institute', 1),
(721, 'ilmu', 1),
(721, 'institut', 1),
(721, 'iip', 1),
(721, 'study', 1),
(721, 'continued', 1),
(721, 'district', 7),
(721, 'home', 1),
(721, 'years', 1),
(721, 'serving', 1),
(721, 'academy', 1),
(721, 'negeri', 1),
(721, 'dalam', 1),
(721, 'pemerintahan', 2),
(721, 'akademi', 1),
(721, 'apdn', 1),
(721, 'official', 1),
(721, 'government', 4),
(721, 'local', 4),
(721, 'become', 1),
(721, 'trained', 1),
(721, '1956', 1),
(721, 'october', 1),
(721, 'sukabumi', 7),
(721, 'born', 1),
(721, 'sukmawijaya', 6),
(707, 'vice', 1),
(707, 'elected', 1),
(707, 'industry', 1),
(707, 'commerce', 1),
(707, 'chamber', 1),
(707, 'industri', 1),
(707, 'dan', 1),
(707, 'dagang', 1),
(707, 'kamar', 1),
(707, 'kadin', 1),
(707, 'associaton', 1),
(707, 'businessmen', 1),
(707, 'young', 1),
(707, 'indonesian', 2),
(707, 'indonesia', 1),
(707, 'muda', 1),
(709, '2007', 1),
(709, 'got', 1),
(709, 'section', 1),
(709, 'economic', 1),
(709, 'bappeda', 2),
(709, 'transferred', 1),
(709, 'service', 1),
(709, 'years', 1),
(709, 'several', 1),
(709, '1993', 1),
(709, 'camat', 1),
(709, 'head', 3),
(709, 'sub', 1),
(709, 'gegerbitung', 1),
(709, 'position', 2),
(709, 'promoted', 2),
(709, '1986', 1),
(709, 'school', 1),
(709, 'law', 1),
(709, 'university’s', 1),
(709, 'parahyangan', 1),
(709, 'graduated', 1),
(709, 'right', 1),
(709, 'government', 1),
(709, 'local', 1),
(709, 'district', 2),
(709, 'sukabumi', 3),
(709, 'ladder', 1),
(709, 'lowest', 1),
(709, 'career', 1),
(709, 'started', 1),
(709, '1959', 1),
(709, 'november', 1),
(709, 'bandung', 1),
(709, 'born', 1),
(709, 'somantri', 3),
(709, 'achdiyat', 3),
(709, 'dody', 5),
(707, 'pengusaha', 1),
(707, 'himpunan', 1),
(707, 'hipmi', 1),
(707, 'chapter', 1),
(707, 'bali', 1),
(707, 'associations', 1),
(707, 'business', 1),
(707, 'various', 1),
(707, 'active', 1),
(707, 'businessman', 1),
(707, '2005', 2),
(707, 'politics', 1),
(707, 'entering', 1),
(707, '1967', 1),
(707, 'april', 1),
(707, 'denpasar', 3),
(707, 'born', 1),
(707, 'idabagusrai', 2),
(707, 'mantra', 3),
(707, 'dharmawijaya', 3),
(707, 'rai', 3),
(707, 'bagus', 3),
(707, 'ida', 3),
(706, 'local', 1),
(706, 'bappeda', 2),
(706, 'head', 2),
(706, 'served', 1),
(706, 'municipality', 2),
(706, 'denpasar', 2),
(706, 'transferred', 2),
(706, '1992', 1),
(706, 'planning', 3),
(706, 'urban', 2),
(706, 'regional', 1),
(706, 'itb', 1),
(706, 'technology', 1),
(706, 'institute', 1),
(706, 'bandung', 1),
(706, 'degree', 1),
(706, 'master', 1),
(706, 'obtaining', 1),
(706, 'college', 1),
(706, 'graduated', 1),
(706, 'right', 1),
(706, 'province', 1),
(706, 'bali', 1),
(706, 'works', 1),
(706, 'public', 1),
(706, 'department', 1),
(706, 'official', 1),
(706, 'career', 1),
(706, 'started', 1),
(706, 'training', 1),
(706, 'architect', 1),
(706, '1955', 1),
(706, 'april', 1),
(706, 'blitar', 1),
(706, 'born', 1),
(706, 'igusti', 2),
(706, 'putra', 3),
(706, 'anindya', 3),
(706, 'putu', 3),
(706, 'gusti', 3),
(706, 'agency', 1),
(706, '2006', 1),
(706, 'got', 1),
(706, 'promoted', 1),
(706, '2009', 1),
(707, 'mayor', 2),
(707, 'local', 1),
(707, 'elections', 1),
(707, '2010', 1),
(711, 'young', 1),
(711, 'generation', 1),
(711, 'renewal', 1),
(711, 'knpi', 1),
(711, 'national', 1),
(711, 'committee', 1),
(711, 'serving', 1),
(711, 'bureaucrat', 1),
(711, 'golkar', 2),
(711, '1980s', 1),
(711, '1990s', 1),
(711, 'currently', 1),
(711, 'party', 1),
(711, 'chapter', 1),
(1010, 'banyuwangi', 1),
(1010, 'putra', 1),
(1010, 'anindya', 1),
(1010, 'putu', 1),
(1010, 'gusti', 1),
(1010, 'dharmawijaya', 1),
(719, '2005', 1),
(719, 'elections', 1),
(719, 'local', 1),
(719, 'pemilukada', 1),
(719, 'head', 3),
(719, 'elected', 1),
(719, 'democratically', 1),
(719, 'businessman', 1),
(719, 'seasoned', 1),
(719, 'intellectual', 1),
(719, 'brilliant', 1),
(719, 'known', 2),
(719, 'dakwah', 1),
(719, 'propagation', 1),
(719, 'organizations', 1),
(719, 'various', 1),
(719, 'serves', 1),
(719, 'popular', 1),
(719, 'aside', 1),
(719, 'barat', 1),
(719, 'kabupaten', 1),
(719, 'pembentukan', 1),
(719, 'panitia', 1),
(719, 'formation', 1),
(719, 'committee', 1),
(719, 'chair', 1),
(719, 'named', 1),
(719, 'part', 1),
(719, 'previously', 1),
(719, 'establishing', 1),
(719, 'role', 1),
(719, 'endeavor', 1),
(719, 'substantial', 1),
(719, 'played', 1),
(719, 'district', 7),
(719, 'first', 2),
(719, 'university', 2),
(719, 'cordova', 1),
(719, 'establish', 1),
(719, '2004', 1),
(719, 'later', 1),
(719, 'years', 1),
(719, 'twenty', 1),
(719, 'ikhlas', 1),
(719, 'school', 1),
(719, 'boarding', 1),
(719, 'pesantren', 1),
(719, 'pondok', 1),
(719, 'found', 1),
(719, 'helped', 2),
(719, '1984', 1),
(719, 'cleric', 2),
(719, 'islamic', 4),
(719, 'kiai', 2),
(719, 'politics', 1),
(719, 'joining', 1),
(719, '1958', 1),
(719, 'may', 1),
(719, 'sumbawa', 6),
(719, 'west', 4),
(719, 'taliwang', 2),
(719, 'born', 1),
(719, 'zulkiflimuhadli', 2),
(719, 'muhadli', 5),
(719, 'zulkifli', 7),
(1010, 'rai', 1),
(1010, 'bagus', 1),
(719, 'policies', 1),
(719, 'needs', 1),
(719, 'basic', 1),
(719, 'fulfillment', 1),
(719, 'people', 1),
(719, 'pro', 1),
(719, '2010', 1),
(719, 'term', 1),
(719, 'second', 1),
(719, 'reelected', 1),
(718, '2011', 1),
(718, 'airlangga', 1),
(718, 'economics', 1),
(718, 'sharia', 1),
(718, 'degree', 1),
(718, 'doctorate', 1),
(718, 'obtained', 1),
(718, '2009', 1),
(718, 'bappeda', 1),
(718, 'position', 1),
(718, 'promoted', 1),
(718, 'head', 2),
(718, 'district', 1),
(718, 'advisor', 1),
(718, 'concurrently', 1),
(718, 'served', 1),
(718, 'time', 1),
(718, '2005', 1),
(718, 'beginning', 1),
(718, 'affairs', 1),
(718, 'academic', 1),
(718, 'rector', 1),
(718, 'deputy', 1),
(718, 'became', 1),
(718, 'west', 2),
(718, 'taliwang', 1),
(718, 'cordova', 1),
(718, 'founding', 1),
(718, 'preparation', 1),
(718, 'involved', 1),
(718, 'university', 3),
(718, 'mataram', 1),
(718, 'agriculture', 1),
(718, 'department', 1),
(718, 'member', 1),
(718, 'faculty', 1),
(718, 'career', 1),
(718, 'started', 1),
(718, '1966', 1),
(718, 'september', 1),
(718, 'sumbawa', 3),
(718, 'born', 1),
(718, 'rakhman', 3),
(718, 'amry', 5),
(1010, 'ida', 1),
(721, 'commitment', 1),
(721, 'toward', 1),
(721, 'good', 1),
(721, 'governance', 1),
(721, '2007', 1),
(721, 'investment', 1),
(721, 'coordinating', 1),
(721, 'board', 1),
(721, 'bkpm', 1),
(721, 'badan', 1),
(721, 'koordinasi', 1),
(721, 'penanaman', 1),
(721, 'modal', 1),
(1010, 'bali', 1),
(1010, 'denpasar', 1),
(745, 'elected', 2),
(745, 'politician', 1),
(745, 'party', 1),
(745, 'golkar', 1),
(745, 'club', 1),
(745, 'local', 3),
(745, 'arema', 1),
(745, 'president', 1),
(745, 'well', 1),
(745, '2006', 1),
(745, 'association', 1),
(745, 'soccer', 2),
(745, 'sepakbola', 1),
(745, 'persatuan', 1),
(745, 'pssi', 1),
(745, 'addition', 1),
(745, '2010', 2),
(745, '2005', 2),
(745, 'unions', 1),
(745, 'indonesian', 1),
(745, 'confederation', 1),
(745, 'indonesia', 3),
(745, 'seluruh', 2),
(745, 'buruh', 1),
(745, 'serikat', 1),
(745, 'konfederasi', 1),
(745, 'kspsi', 1),
(745, 'java', 1),
(745, 'east', 1),
(745, 'also', 1),
(745, '1985', 1),
(745, 'union', 1),
(745, 'labor', 2),
(745, 'rightist', 1),
(745, 'chapter', 3),
(745, 'malang', 5),
(745, 'soksi', 1),
(745, 'chair', 3),
(745, 'twenties', 1),
(745, 'early', 1),
(745, 'still', 1),
(745, '1980s', 1),
(745, 'since', 3),
(745, 'organizations', 1),
(745, 'sport', 1),
(745, 'political', 1),
(745, 'social', 1),
(745, 'various', 1),
(745, 'active', 1),
(745, '1962', 1),
(745, 'march', 1),
(745, 'pamekasan', 1),
(745, 'born', 1),
(745, 'kresna', 3),
(745, 'rendra', 5),
(728, '2005', 1),
(728, 'june', 1),
(728, 'beginning', 1),
(728, 'revenue', 1),
(728, 'later', 1),
(728, 'years', 1),
(728, 'three', 1),
(728, 'district', 2),
(728, 'development', 1),
(728, 'administration', 1),
(728, 'financial', 1),
(728, 'assistant', 1),
(728, 'position', 2),
(728, 'promoted', 2),
(728, '2001', 2),
(728, 'autonomy', 1),
(728, 'regional', 1),
(728, 'decentralization', 1),
(728, 'implementation', 1),
(728, 'following', 1),
(728, 'industry', 1),
(728, 'head', 3),
(728, 'named', 1),
(728, '1999', 1),
(728, 'malang', 5),
(728, 'transferred', 1),
(728, 'government', 1),
(728, 'local', 1),
(728, 'positions', 1),
(728, 'various', 1),
(728, 'served', 1),
(728, 'province', 1),
(728, 'lampung', 2),
(728, 'kotabumi', 1),
(728, 'trade', 2),
(728, 'agency', 3),
(728, 'joined', 1),
(728, '1980', 1),
(728, 'ladder', 1),
(728, 'lowest', 1),
(728, 'bureaucracy', 1),
(728, 'career', 1),
(728, 'started', 1),
(728, '1953', 1),
(728, 'november', 1),
(728, 'baturaja', 1),
(728, 'born', 1),
(728, 'nehruddin', 6),
(728, 'bappeda', 1),
(1010, 'somantri', 1),
(1010, 'achadiyat', 1),
(1010, 'dody', 1),
(731, '2006', 1),
(731, 'municipality', 1),
(731, 'secretary', 1),
(731, 'named', 1),
(731, 'board', 1),
(731, 'management', 2),
(731, 'financial', 1),
(731, 'daearah', 1),
(731, 'keuangan', 1),
(731, 'pengelola', 1),
(731, 'badan', 1),
(731, 'bkpd', 1),
(731, 'ternate’s', 1),
(731, 'position', 1),
(731, 'promoted', 1),
(731, 'got', 1),
(731, '2001', 1),
(731, 'municipal', 1),
(731, 'office', 1),
(731, 'head', 2),
(731, 'transferred', 1),
(731, '1991', 1),
(731, 'agency', 2),
(731, 'revenue', 2),
(731, 'provincial', 1),
(731, 'maluku', 1),
(731, 'stationed', 1),
(731, 'initially', 1),
(731, '1980', 1),
(731, 'ladder', 1),
(731, 'lowest', 1),
(731, 'bureaucracy', 1),
(731, 'government', 1),
(731, 'local', 2),
(731, 'joined', 1),
(731, 'ternate', 5),
(731, '1956', 1),
(731, 'december', 1),
(731, 'born', 1),
(731, 'abdurrahman', 3),
(731, 'burhan', 5),
(731, 'directly', 1),
(731, 'elected', 1),
(731, 'mayor', 1),
(731, '2010', 1),
(731, 'elections', 1),
(731, 'serving', 1),
(731, 'bureaucrat', 1),
(731, 'pursued', 1),
(731, 'law', 1),
(731, 'degree', 2),
(731, 'master', 1),
(735, 'stalwart', 1),
(735, 'party’s', 1),
(735, 'golkar', 1),
(735, 'known', 1),
(735, 'also', 1),
(735, '1980s', 1),
(735, 'early', 1),
(735, 'since', 1),
(735, 'business', 1),
(733, '2006', 1),
(733, 'january', 1),
(733, 'head', 1),
(733, 'promoted', 1),
(733, 'secretary', 1),
(733, 'served', 1),
(733, 'initially', 1),
(733, '2000', 1),
(733, 'municipality', 1),
(733, 'ternate', 1),
(733, 'planning', 1),
(733, 'local', 1),
(733, 'bappeda', 3),
(733, 'transferred', 1),
(733, '1991', 1),
(733, 'district', 1),
(733, 'maluku', 1),
(733, 'north', 1),
(733, 'pancasila', 1),
(733, 'training', 1),
(733, 'comprehension', 1),
(733, 'implementation', 1),
(733, 'agency', 2),
(733, 'career', 1),
(733, 'started', 1),
(733, 'neira', 1),
(733, 'banda', 1),
(733, '1961', 1),
(733, 'april', 1),
(733, 'born', 1),
(733, 'assegaf', 5),
(733, 'said', 3),
(735, 'addition', 1),
(735, 'icmi', 1),
(735, 'association', 1),
(735, 'intellectuals', 1),
(735, 'muslim', 1),
(735, 'indonesian', 1),
(735, 'scouts', 1),
(735, 'boy', 1);
INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES
(735, 'organizations', 1),
(735, 'youth', 1),
(735, 'social', 1),
(735, 'various', 1),
(735, 'active', 2),
(735, '1959', 1),
(735, 'august', 1),
(735, 'gresik', 4),
(735, 'born', 1),
(735, 'radianto', 4),
(735, 'halim', 4),
(735, 'sambari', 6),
(735, 'quite', 1),
(735, 'long', 1),
(735, 'time', 1),
(735, 'became', 1),
(735, 'district', 4),
(735, 'chapter', 1),
(735, 'head', 2),
(735, '2005', 2),
(735, 'present', 1),
(735, 'businessman', 1),
(735, 'cum', 1),
(735, 'politician', 1),
(735, 'served', 1),
(735, 'member', 1),
(735, 'local', 2),
(735, 'legislature', 1),
(735, 'dprd', 1),
(735, '1997', 1),
(735, '–', 1),
(735, '2000', 2),
(735, 'elected', 2),
(735, 'vice', 1),
(735, 'run', 2),
(735, 'headship', 2),
(735, 'first', 1),
(735, 'direct', 1),
(735, 'elections', 1),
(735, 'lost', 1),
(735, '2010', 1),
(735, 'got', 1),
(735, 'earned', 1),
(735, 'doctorate', 1),
(735, 'degree', 1),
(735, 'economics', 1),
(735, 'airlangga', 1),
(735, 'university', 1),
(735, '2008', 1),
(735, 'recipient', 1),
(735, 'lencana', 1),
(735, 'melati', 1),
(735, 'award', 2),
(735, 'highest', 1),
(735, 'national', 1),
(735, 'scouting', 1),
(735, 'organization', 1),
(735, 'presented', 1),
(735, 'personally', 1),
(735, 'president', 1),
(1010, 'sukmawijaya', 1),
(1010, 'jawa', 5),
(1010, 'sukabumi', 1),
(1010, 'syair', 1),
(1010, 'syamsul', 1),
(1010, 'junaidi', 1),
(737, '2011', 1),
(737, 'eventually', 1),
(737, '2001', 1),
(737, 'bappeda', 2),
(737, 'district’s', 1),
(737, 'gresik', 2),
(737, 'head', 2),
(737, 'infrastructure', 1),
(737, 'physical', 1),
(737, 'position', 1),
(737, 'promoted', 2),
(737, 'province', 1),
(737, 'java', 1),
(737, 'east', 1),
(737, 'tuban', 1),
(737, 'transferred', 1),
(737, 'years', 1),
(737, 'seven', 1),
(737, 'served', 1),
(737, '1990', 1),
(737, 'district', 2),
(737, 'lamongan', 1),
(737, 'karya', 1),
(737, 'cipta', 1),
(737, 'dinas', 1),
(737, 'development', 1),
(737, 'urban', 1),
(737, 'planning', 1),
(737, 'housing', 1),
(737, 'agency', 2),
(737, 'service', 1),
(737, 'civil', 1),
(737, 'joined', 1),
(737, 'technology', 1),
(737, 'institute', 1),
(737, 'surabaya', 1),
(737, 'engineering', 1),
(737, 'degree', 1),
(737, 'bachelor', 1),
(737, 'earning', 1),
(737, '1958', 1),
(737, 'january', 1),
(737, 'bangka', 1),
(737, 'born', 1),
(737, 'isdianto', 3),
(737, 'bambang', 5),
(1010, 'arifin', 1),
(1010, 'luwu', 1),
(1010, 'bustian', 1),
(1010, 'saleh', 1),
(743, 'promoted', 1),
(741, 'pemilukada', 1),
(741, 'elections', 1),
(741, 'local', 1),
(741, '2008', 1),
(741, 'mayor', 1),
(741, 'elected', 1),
(741, 'democratically', 1),
(741, 'hospital', 1),
(741, 'public', 1),
(741, 'gambiran', 1),
(741, 'director', 1),
(741, 'deputy', 1),
(741, '2006', 1),
(741, 'beginning', 1),
(741, 'internist', 1),
(741, 'become', 1),
(741, 'study', 1),
(741, 'continued', 1),
(741, '2000', 1),
(741, 'province', 1),
(741, 'aceh', 1),
(741, 'junior', 1),
(741, 'served', 2),
(741, '1989', 1),
(741, 'university', 1),
(741, 'brawijaya', 1),
(741, 'school', 1),
(741, 'graduating', 1),
(741, 'upon', 1),
(741, 'practice', 1),
(741, 'training', 1),
(741, 'doctor', 2),
(741, 'medical', 3),
(741, '1961', 1),
(741, 'september', 1),
(741, 'kediri', 3),
(741, 'born', 1),
(741, 'ashar', 4),
(741, 'samsul', 6),
(743, '1999', 1),
(743, 'head', 4),
(743, 'sub', 1),
(743, 'named', 1),
(743, '1986', 1),
(743, 'district', 2),
(743, 'home', 1),
(743, 'joined', 1),
(743, '1994', 1),
(743, 'science', 1),
(743, 'ilmu', 1),
(743, 'institute', 2),
(743, 'iip', 1),
(743, 'study', 1),
(743, 'continued', 1),
(743, '1989', 1),
(743, 'academy', 1),
(743, 'negeri', 1),
(743, 'dalam', 1),
(743, 'pemerintahan', 2),
(743, 'akademi', 1),
(743, 'apdn', 1),
(743, 'graduated', 1),
(743, 'bureaucracy', 1),
(743, 'government', 5),
(743, 'local', 4),
(743, 'career', 1),
(743, 'built', 1),
(743, '1966', 1),
(743, 'june', 1),
(743, 'kediri', 3),
(743, 'born', 1),
(743, 'basuki', 3),
(743, 'hari', 3),
(743, 'rahmad', 5),
(743, 'position', 1),
(743, 'affairs', 1),
(743, '2008', 1),
(743, 'social', 1),
(743, 'labor', 1),
(743, 'agency', 2),
(743, '2009', 1),
(743, 'became', 1),
(743, 'municipality', 1),
(743, 'bappeda', 1),
(743, 'planning', 1),
(743, '2010', 1),
(1010, 'jondi', 1),
(745, 'legislature', 1),
(745, 'dprd', 1),
(745, '1997', 1),
(745, '–', 1),
(745, '1999', 1),
(745, 'vice', 1),
(745, 'district', 2),
(745, 'head', 2),
(745, 'elections', 1),
(745, 'pemilukada', 1),
(1010, 'herliyan', 1),
(1010, 'riau', 1),
(1010, 'bengkalis', 1),
(872, 'submit', 1),
(872, 'news', 2),
(872, 'navigation', 1),
(798, 'narasumber', 1),
(798, 'yaitu', 1),
(798, 'bapak', 1),
(798, 'wahyudi', 1),
(798, 'kumorotomo', 1),
(798, 'achmadi', 1),
(798, 'ringoringo', 1),
(798, 'prof', 1),
(798, 'eko', 1),
(798, 'prasojo', 1),
(798, 'mendesain', 1),
(798, 'garis', 1),
(798, 'besar', 1),
(798, 'menunjuk', 1),
(798, 'menetapkan', 1),
(798, 'executive', 1),
(798, 'administrasi', 1),
(798, 'sehari', 1),
(798, 'hari', 1),
(798, 'membantu', 1),
(798, 'pengurus', 1),
(798, 'yusharto', 1),
(798, 'kabid', 1),
(798, 'otda', 1),
(798, 'pum', 1),
(1010, 'songo', 1),
(1010, 'sinsigus', 1),
(1010, 'inkiriwang', 1),
(1010, 'pet', 1),
(1010, 'tengah', 1),
(1010, 'poso', 1),
(1010, 'sitanggang', 1),
(1010, 'hotraja', 1),
(1010, 'simbolon', 1),
(1010, 'mangindar', 1),
(1010, 'samosir', 1),
(1010, 'maulana', 1),
(1010, 'junda', 1),
(1010, 'duka', 1),
(954, 'kalimantan', 1),
(954, 'kertanegara', 1),
(954, 'kutai', 1),
(954, 'widyasari', 1),
(954, 'rita', 1),
(954, 'mrs', 1),
(954, 'kediri', 1),
(954, 'mayor', 1),
(954, 'ashar', 1),
(954, 'samsul', 1),
(954, 'java', 1),
(954, 'east', 2),
(954, 'banyuwangi', 1),
(954, 'anas', 1),
(954, 'azwar', 1),
(954, 'abdullah', 1),
(954, 'muhadli', 1),
(954, 'zulkifli', 1),
(954, 'sulawesi', 2),
(954, 'west', 2),
(954, 'mamuju', 2),
(954, 'duka', 1),
(954, 'suhardi', 1),
(954, 'dharmawijaya', 1),
(954, 'rai', 1),
(954, 'bagus', 1),
(954, 'ida', 1),
(954, 'riau', 2),
(954, 'bengkalis', 2),
(954, 'head', 7),
(954, 'district', 10),
(954, 'saleh', 1),
(954, 'herliyan', 1),
(954, 'pertama', 2),
(954, 'periode', 2),
(954, 'fti', 2),
(954, 'pengurus', 4),
(981, '#ccc', 1),
(1010, 'suhardi', 1),
(1044, 'newcomment', 2),
(1044, 'comment', 2),
(981, '#eee', 1),
(981, '#bbb', 1),
(981, 'else', 3),
(981, '#e3e3e3', 1),
(981, 'backgroundcolor', 4),
(981, 'style', 4),
(981, 'track', 2),
(981, 'classname', 2),
(981, 'mousedown', 1),
(981, 'type', 2),
(981, 'scrollbarevent', 2),
(981, 'true', 1),
(981, 'container', 1),
(981, 'jsscrollbar', 1),
(981, '180', 1),
(981, '400', 1),
(981, 'scrollcontent', 1),
(981, 'getelementbyid', 2),
(981, 'document', 2),
(981, 'jsscroller', 1),
(981, 'new', 2),
(981, 'function', 2),
(981, 'onload', 1),
(981, 'window', 1),
(981, 'scrollbar', 5),
(981, 'null', 2),
(981, 'scroller', 3),
(981, 'var', 2),
(981, 'news', 1),
(981, 'navigation', 1),
(1010, 'sulawesi', 3),
(1010, 'mamuju', 1),
(1010, 'batubara', 1),
(1010, 'taufik', 1),
(1010, 'nuradi', 1),
(1010, 'erry', 1),
(1010, 'utara', 4),
(1010, 'bedagai', 1),
(1010, 'serdang', 1),
(1010, 'machmudan', 1),
(1010, 'widyasari', 1),
(1010, 'rita', 1),
(1010, 'mrs', 1),
(1010, 'timur', 5),
(1010, 'kertanegara', 1),
(1010, 'kutai', 1),
(1010, 'alkhudi', 1),
(1010, 'said', 2),
(1010, 'zakaria', 1),
(1010, 'muzni', 1),
(1010, 'solok', 1),
(1010, 'aswan', 1),
(1010, 'mohammad', 1),
(1010, 'noor', 1),
(1010, 'ruzaidin', 1),
(1010, 'muhammad', 1),
(1010, 'selatan', 4),
(1010, 'kalimantan', 2),
(1010, 'banjarbaru', 1),
(1010, 'imran', 1),
(1010, 'isman', 1),
(1010, 'catri', 1),
(1010, 'indra', 2),
(1010, 'barat', 6),
(1010, 'sumatera', 4),
(1010, 'basung', 1),
(1010, 'lubuk', 1),
(1010, 'walikota', 18),
(1010, '&amp', 19),
(1010, 'bupati', 19),
(1010, 'peserta', 2),
(1010, 'profil', 2),
(1010, '2011', 2),
(1010, 'tahun', 2),
(1010, 'angkatan', 2),
(1010, 'rahmad', 1),
(1010, 'hari', 1),
(1010, 'basuki', 1),
(1044, 'new', 2),
(1046, 'comment', 5),
(1046, 'new', 1),
(1100, 'padang', 4),
(1100, 'service', 1),
(1100, 'civil', 1),
(1100, 'joined', 1),
(1100, '1987', 1),
(1073, 'fff', 2),
(1048, 'another', 1),
(1048, 'test', 3),
(1048, 'news', 3),
(1048, 'mailer', 3),
(1048, 'notification', 1),
(1048, 'attachment', 1),
(1048, 'would', 1),
(1048, 'word', 1),
(1048, 'document', 1),
(1048, 'attach', 2),
(1100, 'itb', 1),
(1100, 'technology', 1),
(1100, 'institute', 1),
(1100, 'bandung', 1),
(1100, 'planning', 2),
(1100, 'regional', 1),
(1100, 'department', 1),
(1100, 'degree', 1),
(1100, 'bachelor', 1),
(1100, 'obtainin', 1),
(1100, '1961', 1),
(1100, 'april', 1),
(1100, 'bukittingi', 1),
(1100, 'born', 1),
(1100, '358333', 1),
(1100, '62816', 1),
(1100, '76300', 1),
(1100, '62752', 1),
(1100, 'phone', 1),
(1100, 'indonesia', 1),
(1100, 'basung', 1),
(1100, 'lubuk', 1),
(1100, 'piliang', 1),
(1100, 'jalan', 1),
(1100, 'sumatera', 2),
(1100, 'west', 2),
(1100, 'agam', 3),
(1100, 'head', 4),
(1100, 'district', 3),
(1100, 'catri ', 1),
(1100, 'indracatri', 2),
(1100, 'catri', 2),
(1100, 'indra', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_items`
--

DROP TABLE IF EXISTS `cms_module_search_items`;
CREATE TABLE IF NOT EXISTS `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) default NULL,
  `content_id` int(11) default NULL,
  `extra_attr` varchar(100) default NULL,
  `expires` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_search_items`
--

INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES
(1, 'Search', 15, 'template', NULL),
(5, 'Search', 17, 'template', NULL),
(30, 'Search', 19, 'template', NULL),
(35, 'Search', 21, 'template', NULL),
(37, 'Search', 20, 'template', NULL),
(39, 'Search', 18, 'template', NULL),
(44, 'Search', 1, 'global_content', NULL),
(83, 'Search', 22, 'template', NULL),
(361, 'Search', 70, 'content', NULL),
(532, 'Search', 73, 'content', NULL),
(533, 'Search', 74, 'content', NULL),
(536, 'Search', 77, 'content', NULL),
(537, 'Search', 78, 'content', NULL),
(549, 'Search', 75, 'content', NULL),
(550, 'Search', 76, 'content', NULL),
(551, 'Search', 71, 'content', NULL),
(552, 'Search', 72, 'content', NULL),
(555, 'News', 2, 'article', NULL),
(565, 'News', 3, 'article', NULL),
(1072, 'News', 48, 'article', '2012-06-09 09:47:45'),
(577, 'News', 9, 'article', NULL),
(582, 'Showtime', 1, 'show', NULL),
(1068, 'News', 44, 'article', '2012-06-09 09:43:14'),
(1069, 'News', 45, 'article', '2012-06-09 09:46:05'),
(1070, 'News', 46, 'article', '2012-06-09 09:46:25'),
(615, 'Search', 82, 'content', NULL),
(1100, 'Search', 64, 'content', NULL),
(648, 'Search', 65, 'content', NULL),
(649, 'Search', 66, 'content', NULL),
(650, 'Search', 68, 'content', NULL),
(661, 'Search', 84, 'content', NULL),
(662, 'Search', 85, 'content', NULL),
(663, 'Search', 86, 'content', NULL),
(664, 'Search', 87, 'content', NULL),
(665, 'Search', 88, 'content', NULL),
(666, 'Search', 89, 'content', NULL),
(674, 'Search', 91, 'content', NULL),
(675, 'Search', 92, 'content', NULL),
(679, 'Search', 93, 'content', NULL),
(681, 'Search', 94, 'content', NULL),
(687, 'Search', 95, 'content', NULL),
(690, 'Search', 96, 'content', NULL),
(691, 'Search', 97, 'content', NULL),
(693, 'Search', 98, 'content', NULL),
(706, 'Search', 104, 'content', NULL),
(707, 'Search', 103, 'content', NULL),
(709, 'Search', 102, 'content', NULL),
(710, 'Search', 100, 'content', NULL),
(711, 'Search', 99, 'content', NULL),
(718, 'Search', 106, 'content', NULL),
(719, 'Search', 105, 'content', NULL),
(721, 'Search', 101, 'content', NULL),
(728, 'Search', 108, 'content', NULL),
(731, 'Search', 109, 'content', NULL),
(733, 'Search', 110, 'content', NULL),
(735, 'Search', 111, 'content', NULL),
(737, 'Search', 112, 'content', NULL),
(741, 'Search', 113, 'content', NULL),
(743, 'Search', 114, 'content', NULL),
(745, 'Search', 107, 'content', NULL),
(797, 'Search', 58, 'content', NULL),
(798, 'Search', 59, 'content', NULL),
(799, 'Search', 56, 'content', NULL),
(802, 'Search', 80, 'content', NULL),
(804, 'Search', 15, 'content', NULL),
(807, 'Search', 118, 'content', NULL),
(808, 'Search', 119, 'content', NULL),
(809, 'Search', 120, 'content', NULL),
(810, 'Search', 121, 'content', NULL),
(811, 'Search', 122, 'content', NULL),
(812, 'Search', 123, 'content', NULL),
(813, 'Search', 124, 'content', NULL),
(814, 'Search', 125, 'content', NULL),
(815, 'Search', 126, 'content', NULL),
(872, 'Search', 24, 'template', NULL),
(954, 'Search', 60, 'content', NULL),
(963, 'Search', 23, 'template', NULL),
(981, 'Search', 16, 'template', NULL),
(1010, 'Search', 61, 'content', NULL),
(1044, 'Search', 83, 'content', NULL),
(1046, 'Search', 62, 'content', NULL),
(1071, 'News', 47, 'article', '2012-06-09 09:47:03'),
(1048, 'News', 24, 'article', '2012-06-09 06:47:14'),
(1073, 'News', 49, 'article', '2012-06-09 09:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_items_seq`
--

DROP TABLE IF EXISTS `cms_module_search_items_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_search_items_seq`
--

INSERT INTO `cms_module_search_items_seq` (`id`) VALUES
(1100);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_search_words`
--

DROP TABLE IF EXISTS `cms_module_search_words`;
CREATE TABLE IF NOT EXISTS `cms_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_selfreg_paidpkgs`
--

DROP TABLE IF EXISTS `cms_module_selfreg_paidpkgs`;
CREATE TABLE IF NOT EXISTS `cms_module_selfreg_paidpkgs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `prompt` varchar(255) default NULL,
  `description` text,
  `gid` int(11) default NULL,
  `subscr_num` int(11) default NULL,
  `subscr_type` varchar(10) default NULL,
  `cost` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_selfreg_properties`
--

DROP TABLE IF EXISTS `cms_module_selfreg_properties`;
CREATE TABLE IF NOT EXISTS `cms_module_selfreg_properties` (
  `id` int(11) NOT NULL,
  `user` int(11) default NULL,
  `title` varchar(100) default NULL,
  `data` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_selfreg_properties_seq`
--

DROP TABLE IF EXISTS `cms_module_selfreg_properties_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_selfreg_properties_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_selfreg_properties_seq`
--

INSERT INTO `cms_module_selfreg_properties_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_selfreg_users`
--

DROP TABLE IF EXISTS `cms_module_selfreg_users`;
CREATE TABLE IF NOT EXISTS `cms_module_selfreg_users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) default NULL,
  `username` varchar(80) default NULL,
  `passsword` varchar(32) default NULL,
  `code` varchar(20) default NULL,
  `createdate` datetime default NULL,
  `overwrite_uid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_selfreg_users_seq`
--

DROP TABLE IF EXISTS `cms_module_selfreg_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_selfreg_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_selfreg_users_seq`
--

INSERT INTO `cms_module_selfreg_users_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime`
--

DROP TABLE IF EXISTS `cms_module_showtime`;
CREATE TABLE IF NOT EXISTS `cms_module_showtime` (
  `picture_id` int(11) NOT NULL,
  `active` tinyint(4) default '1',
  `show_id` int(11) default NULL,
  `picture_name` varchar(80) default NULL,
  `picture_number` int(11) default NULL,
  `picture_url` varchar(255) default NULL,
  `thumbnail_path` varchar(255) default NULL,
  `picture_path` varchar(255) default NULL,
  `comment` text,
  PRIMARY KEY  (`picture_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime`
--

INSERT INTO `cms_module_showtime` (`picture_id`, `active`, `show_id`, `picture_name`, `picture_number`, `picture_url`, `thumbnail_path`, `picture_path`, `comment`) VALUES
(2186, 1, 1, '9.26.11Indonesia010.jpg', 7, NULL, '/Gallery/Classroom/thumb_9.26.11Indonesia010.jpg', '/Gallery/Classroom/9.26.11Indonesia010.jpg', NULL),
(2187, 1, 1, '9.26.11Indonesia016.jpg', 8, NULL, '/Gallery/Classroom/thumb_9.26.11Indonesia016.jpg', '/Gallery/Classroom/9.26.11Indonesia016.jpg', NULL),
(2188, 1, 1, '9.26.11Indonesia020.jpg', 9, NULL, '/Gallery/Classroom/thumb_9.26.11Indonesia020.jpg', '/Gallery/Classroom/9.26.11Indonesia020.jpg', NULL),
(2189, 1, 1, '9.26.11Indonesia024.jpg', 10, NULL, '/Gallery/Classroom/thumb_9.26.11Indonesia024.jpg', '/Gallery/Classroom/9.26.11Indonesia024.jpg', NULL),
(2190, 1, 1, '9.26.11Indonesia025.jpg', 11, NULL, '/Gallery/Classroom/thumb_9.26.11Indonesia025.jpg', '/Gallery/Classroom/9.26.11Indonesia025.jpg', NULL),
(2191, 1, 1, '9.26.11Indonesia034.jpg', 12, NULL, '/Gallery/Classroom/thumb_9.26.11Indonesia034.jpg', '/Gallery/Classroom/9.26.11Indonesia034.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime_name`
--

DROP TABLE IF EXISTS `cms_module_showtime_name`;
CREATE TABLE IF NOT EXISTS `cms_module_showtime_name` (
  `show_id` int(11) NOT NULL,
  `show_name` varchar(80) default NULL,
  `st_animationtype` varchar(15) default NULL,
  `st_height` int(11) default NULL,
  `st_width` int(11) default NULL,
  `st_rotatetime` double default NULL,
  `st_transitiontime` double default NULL,
  `st_transition` varchar(30) default NULL,
  `st_easeFunc` varchar(30) default NULL,
  `st_ease` varchar(30) default NULL,
  `st_autoplay` tinyint(4) default NULL,
  `st_showcontrols` tinyint(4) default NULL,
  `st_showcontrolssub` int(11) default NULL,
  `st_textbgcolor` varchar(10) default NULL,
  `st_showtext` tinyint(4) default NULL,
  `st_showcomment` tinyint(4) default NULL,
  `st_showalt` tinyint(4) default NULL,
  `st_textcolor` varchar(10) default NULL,
  `st_textsize` int(11) default NULL,
  `st_titlesize` int(11) default NULL,
  `st_fonttype` varchar(50) default NULL,
  `st_bgcolor` varchar(10) default NULL,
  `st_scale` varchar(30) default NULL,
  `st_shuffle` tinyint(4) default NULL,
  `st_wmode` varchar(20) default NULL,
  `st_commentpos` varchar(10) default NULL,
  `st_navbut` tinyint(4) default NULL,
  `st_nav_bordercolor` varchar(10) default NULL,
  `st_nav_bordersize` int(11) default NULL,
  `st_nav_radius` int(11) default NULL,
  `st_nav_bgcolor` varchar(10) default NULL,
  `st_nav_bgactivecolor` varchar(10) default NULL,
  `st_nav_textcolor` varchar(10) default NULL,
  `st_nav_showtext` tinyint(4) default NULL,
  `st_nav_size` int(11) default NULL,
  `st_nav_pos` varchar(20) default NULL,
  `st_nav_padding` int(11) default NULL,
  `st_target` varchar(15) default NULL,
  `st_link` varchar(20) default NULL,
  PRIMARY KEY  (`show_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime_name`
--

INSERT INTO `cms_module_showtime_name` (`show_id`, `show_name`, `st_animationtype`, `st_height`, `st_width`, `st_rotatetime`, `st_transitiontime`, `st_transition`, `st_easeFunc`, `st_ease`, `st_autoplay`, `st_showcontrols`, `st_showcontrolssub`, `st_textbgcolor`, `st_showtext`, `st_showcomment`, `st_showalt`, `st_textcolor`, `st_textsize`, `st_titlesize`, `st_fonttype`, `st_bgcolor`, `st_scale`, `st_shuffle`, `st_wmode`, `st_commentpos`, `st_navbut`, `st_nav_bordercolor`, `st_nav_bordersize`, `st_nav_radius`, `st_nav_bgcolor`, `st_nav_bgactivecolor`, `st_nav_textcolor`, `st_nav_showtext`, `st_nav_size`, `st_nav_pos`, `st_nav_padding`, `st_target`, `st_link`) VALUES
(1, 'FrontSlideShow', 'jQuery', 320, 560, 5, 1, 'fade', 'Linear', 'EaseNone', 1, 0, 1004, '#000000', 0, 0, 0, '#eeeeee', 12, 16, 'sans', 'none', 'showall', 0, 'window', 'top', 1, '#CCCCCC', 1, 0, '#EEEEEE', '#FFFFFF', '#333333', 1, 20, 'bottom_right', 5, '_self', 'internal page');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime_name_seq`
--

DROP TABLE IF EXISTS `cms_module_showtime_name_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_showtime_name_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime_name_seq`
--

INSERT INTO `cms_module_showtime_name_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_showtime_seq`
--

DROP TABLE IF EXISTS `cms_module_showtime_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_showtime_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_showtime_seq`
--

INSERT INTO `cms_module_showtime_seq` (`id`) VALUES
(2191);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_templates`
--

DROP TABLE IF EXISTS `cms_module_templates`;
CREATE TABLE IF NOT EXISTS `cms_module_templates` (
  `module_name` varchar(160) default NULL,
  `template_name` varchar(160) default NULL,
  `content` text,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  KEY `cms_index_module_templates_by_module_name_template_name` (`module_name`,`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_templates`
--

INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('CMSPrinting', 'linktemplate', '{if isset($imgsrc)}\n{capture assign=''image''}\n  <img src="{$imgsrc}" title="{$linktext}" alt="{$linktext}" {if isset($imgclass) && $imgclass!=''''}class="{$imgclass}"{/if} />\n{/capture}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$image}</a>\n{else}\n<a href="{$href}" class="{$class}" {$target} {if isset($more)}{$more}{/if} rel="nofollow">{$linktext}</a>\n{/if}\n', '2011-10-29 02:15:14', '2011-10-29 02:15:14'),
('CMSPrinting', 'printtemplate', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n  <head>\n    <title>Printing {title}</title>\n    <meta name="robots" content="noindex"></meta>\n    <base href="{$rooturl}" />\n    <meta name="Generator" content="CMS Made Simple - Copyright (C) 2004-11 Ted Kulp. All rights reserved." />\n    <meta http-equiv="Content-Type" content="text/html; charset={$encoding}" />\n\n    {cms_stylesheet media=''print'' templateid=$templateid}\n\n    {if $overridestylesheet!=''''}\n    <style type="text/css">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style="background-color: white; color: black; background-image: none; text-align: left;">	\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n', '2011-10-29 02:15:14', '2011-10-29 02:15:14'),
('News', 'summarySample', '{foreach from=$items item=entry}\r\n<div class="NewsSummary">\r\n\r\n<div class="NewsSummaryLink">\r\n{assign var=''titleshowed'' value=$entry->title|cms_escape}\r\n\r\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">\r\n{if $titleshowed|count_characters < 40}\r\n{$titleshowed}\r\n{else}\r\n{$titleshowed|truncate:40}\r\n{/if}\r\n</a>\r\n\r\n</div>\r\n\r\n{*\r\n{if $entry->postdate}\r\n	<div class="NewsSummaryPostdate">\r\n		Posted On {$entry->postdate|cms_date_format} by "{$entry->author}"\r\n	</div>\r\n{/if}\r\n\r\n{if $entry->summary}\r\n	<div class="NewsSummarySummary">\r\n		{eval var=$entry->summary}\r\n	</div>\r\n{else if $entry->content}\r\n	<div class="NewsSummaryContent">\r\n		{eval var=$entry->content}\r\n	</div>\r\n{/if}\r\n\r\n<div class="NewsSummaryMorelink">\r\n                 <a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}" style="color: #FFFFFF; background-color: #A71517; padding: 4px 4px 4px 4px; font-size: 10px"><em>SELENGKAPNYA</em></a>\r\n	</div>\r\n*}\r\n\r\n\r\n{if isset($entry->extra)}\r\n    <div class="NewsSummaryExtra">\r\n        {eval var=$entry->extra}\r\n{*\r\n	 {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} \r\n*}\r\n    </div>\r\n{/if}\r\n\r\n\r\n\r\n\r\n</div>\r\n{/foreach}\r\n\r\n{if $pagecount > 1}\r\n	<table border="0" cellspacing="1" cellpadding="1" width="100%">\r\n		<tr>\r\n			{if $pagenumber > 1}\r\n				<td width="10%" align="center">\r\n					{$firstpage}\r\n				</td>\r\n				<td width="10%" align="center">\r\n					{$prevpage}					\r\n				</td>\r\n			{else}\r\n				<td width="10%" align="center">&nbsp;</td>\r\n				<td width="10%" align="center">&nbsp;</td>\r\n			{/if}\r\n\r\n			<td width="40%" align="center">\r\n				{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\r\n			</td>\r\n\r\n			{if $pagenumber < $pagecount}\r\n				<td width="10%" align="center">\r\n					{$nextpage}\r\n				</td>\r\n				<td width="10%" align="center">\r\n					{$lastpage}				\r\n				</td>\r\n			{else}\r\n				<td width="10%" align="center">&nbsp;</td>\r\n				<td width="10%" align="center">&nbsp;</td>\r\n			{/if}\r\n		</tr>\r\n	</table>\r\n{/if}\r\n<!-- End News Display Template -->\r\n', '2011-10-29 02:15:15', '2011-12-01 08:55:24'),
('SelfRegistration', 'selpkgtemplate', '{* select subscription package *}\n<div id="selfreg_selpkg">\n{$formstart}\n\n<table>\n{foreach from=$pkgs item=pkg}\n  <tr>\n   <td align="left" width="5%">\n     <input type="radio" name="{$actionid}selfreg_pkg" value="{$pkg.id}"/>\n   </td>\n   <td align="left">{$pkg.prompt}</td>\n   <td align="right" width="15%">{$currency_symbol}{$pkg.cost|number_format:2}{$currency_code}</td>\n  </tr>\n  <tr>\n   <td></td>\n   <td colspan="3">{$pkg.description}</td>\n  </tr>\n{/foreach}\n</table>\n\n<div class="row">\n  <p class="prompt"></p>\n  <p class="input">\n    <input type="submit" name="{$actionid}selfreg_submit" value="{$SelfRegistration->Lang(''submit'')}"/>\n  </p>\n</div>\n\n{$formend}\n</div>', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_reg1template', '<!-- Registration 1 template -->\r\n\r\n{* {$title} *}\r\n{if isset($message) && $message != ''''}\r\n  {if isset($error) && $error != ''''}\r\n    <p><font color="red">{$message}</font></p>\r\n  {else}\r\n    <p>{$message}</p>\r\n  {/if}\r\n{/if}\r\n{$startform}\r\n{if $controlcount > 0}\r\n  <center>\r\n  <table width="75%">\r\n{foreach from=$controls item=control}\r\n  <tr>\r\n    <td>{$control->hidden}\r\n    {if $control->color != ''''}\r\n      <font color="{$control->color}">{$control->prompt}{$control->marker}</font>\r\n    {else}\r\n      {$control->prompt}{$control->marker}\r\n    {/if}\r\n    </td>\r\n    <td>{$control->control}</td>\r\n  </tr>\r\n{/foreach}\r\n  </table>\r\n  </center>\r\n<br/>\r\n{/if}\r\n{if isset($captcha)}\r\n{$captcha_title}: {$input_captcha}<br />\r\n  {$captcha}<br />\r\n{/if}\r\n {$hidden}{if isset($hidden2)}{$hidden2}{/if}{$submit}<br/>\r\n{$msg_sendanotheremail}&nbsp;{$link_sendanotheremail}\r\n{$endform}\r\n<!-- Registration 1 template -->\r\n ', '2011-11-23 02:42:42', '2011-11-23 03:42:57'),
('News', 'detailSample', '{literal}\r\n<script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n{/literal}\r\n\r\n{* News module entry object reference:\r\n   ------------------------------\r\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\r\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\r\n   you will find a referennce to the available data.\r\n\r\n   ====\r\n   news_article Object Reference\r\n   ====\r\n\r\n     Members:\r\n     --\r\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\r\n\r\n     The following members are available in the entry array:\r\n   \r\n     id (integer)           = The unique article id.\r\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\r\n     title (string)         = The title of the article.\r\n     summary (text)         = The summary text (may be empty or unset).\r\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\r\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\r\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\r\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\r\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\r\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\r\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\r\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\r\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\r\n     category (string)      = The name of the category that this article is associated with.\r\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\r\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\r\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\r\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\r\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\r\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\r\n     \r\n\r\n   ====\r\n   news_field Object Reference\r\n   ====\r\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\r\n\r\n     Members:\r\n     --------\r\n     id (integer)  = The id of the field definition\r\n     name (string) = The name of the field\r\n     type (string) = The type of field\r\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\r\n     item_order (integer) = The order of the field\r\n     public (integer) = A flag indicating wether the field is public or not\r\n     value (mixed)    = The value of the field.\r\n\r\n\r\n   ====\r\n   Below, you will find the normal detail template information.  Modify this template as desired.\r\n*}\r\n\r\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=''canonical'' value=$entry->canonical}\r\n{/if}\r\n\r\n{if $entry->postdate}\r\n	<div id="NewsPostDetailDate">\r\n		{$entry->postdate|cms_date_format}\r\n	</div>\r\n{/if}\r\n\r\n\r\n<h4 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h4>\r\n\r\n\r\n<hr id="NewsPostDetailHorizRule" />\r\n\r\n{*\r\n{if $entry->summary}\r\n	<div id="NewsPostDetailSummary">\r\n		<strong>\r\n			{eval var=$entry->summary}\r\n		</strong>\r\n	</div>\r\n{/if}\r\n*}\r\n\r\n<div id="NewsPostDetailContent">\r\n	{eval var=$entry->content}\r\n</div>\r\n\r\n{if $entry->extra}\r\n	<div id="NewsPostDetailExtra">\r\n		{$extra_label} {$entry->extra}\r\n	</div>\r\n{/if}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<TABLE border="0" width="100%" cellpadding="0" cellspacing="0">\r\n	<TR>\r\n		<TD width="50%" align="left">\r\n			{* display custom field as file *}\r\n			{if isset($entry->fields)}\r\n				{foreach from=$entry->fields item=''field''}\r\n					<div class="NewsSummaryField">\r\n						{if $field->type == ''file''}\r\n\r\n							{* select file type to display download icon *}\r\n							{if substr_count($field->value,"xls")}\r\n								<TABLE border="0" width="100%">\r\n									<TR>						\r\n										<TD width="12">\r\n											<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n												<img src="uploads/images/excel.png" width="20" />\r\n											</a>\r\n										</TD>\r\n										<TD width="5">&nbsp;</TD>\r\n										<TD><a href="{$entry->file_location}/{$field->value}" target="_blank">{$field->value}</a></TD>\r\n									</TR>\r\n								</TABLE>\r\n							{elseif substr_count($field->value,"doc")}\r\n								<TABLE border="0" width="100%">\r\n									<TR>						\r\n										<TD width="12">\r\n											<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n												<img src="uploads/images/word.png" width="20" />\r\n											</a>\r\n										</TD>\r\n										<TD width="5">&nbsp;</TD>\r\n										<TD><a href="{$entry->file_location}/{$field->value}" target="_blank">{$field->value}</a></TD>\r\n									</TR>\r\n								</TABLE>\r\n\r\n							{elseif substr_count($field->value,"pdf")}\r\n								<TABLE border="0" width="100%">\r\n									<TR>						\r\n										<TD width="12">\r\n											<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n												<img src="uploads/images/pdf.png" width="20" />\r\n											</a>\r\n										</TD>\r\n										<TD width="5">&nbsp;</TD>\r\n										<TD><a href="{$entry->file_location}/{$field->value}" target="_blank">{$field->value}</a></TD>\r\n									</TR>\r\n								</TABLE>\r\n\r\n							{else}\r\n								<TABLE border="0" width="100%">\r\n									<TR>						\r\n										<TD width="12">\r\n											<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n												<img src="uploads/images/file.png" width="20" />\r\n											</a>\r\n										</TD>\r\n										<TD width="5">&nbsp;</TD>\r\n										<TD><a href="{$entry->file_location}/{$field->value}" target="_blank">{$field->value}</a></TD>\r\n									</TR>\r\n								</TABLE>\r\n							{/if}\r\n							{else}\r\n							{$field->name}:&nbsp;{eval var=$field->value}\r\n						{/if}\r\n					</div>\r\n				{/foreach}\r\n			{/if}\r\n		</TD>	\r\n		<TD width="50%" align="right">\r\n			{if $return_url != ""}\r\n				<div id="NewsPostDetailReturnLink">\r\n					{$return_url}{if $category_name != ''''} - {$category_link}{/if}\r\n				</div>\r\n			{/if}\r\n		</TD>\r\n	</TR>\r\n</TABLE>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div id="NewsPostDetailCategory">\r\n<TABLE border="0" width="100%" cellpadding="0" cellspacing="0">\r\n	<TR>\r\n		<TD width="50%" align="left">\r\n			{if $entry->category}\r\n				{$category_label} {$entry->category}\r\n			{/if}\r\n		</TD>	\r\n		<TD width="50%" align="right">\r\n			{if $entry->author}\r\n				{$author_label} {$entry->author}\r\n			{/if}\r\n		</TD>\r\n	</TR>\r\n</TABLE>\r\n</div>\r\n\r\n<br />\r\n<br />\r\n\r\n<div id="NewsPostDetailContent">\r\n<h2>Comments</h2>\r\n{CGFeedback action=''summary'' pagelimit="4" key2=$entry->id}\r\n</div>\r\n\r\n<br />\r\n<br />\r\n{CGFeedback key2=$entry->id}', '2011-10-29 02:15:15', '2011-11-28 07:47:58'),
('News', 'formSample', '{* original form template *}\r\n\r\n{if isset($error)}\r\n  <h3><font color="red">{$error}</font></h3>\r\n{else}\r\n  {if isset($message)}\r\n    <h3>{$message}</h3>\r\n  {/if}\r\n{/if}\r\n{$startform}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">*{$titletext}:</p>\r\n		<p class="pageinput">{$inputtitle}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$categorytext}:</p>\r\n		<p class="pageinput">{$inputcategory}</p>\r\n	</div>\r\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$summarytext}:</p>\r\n		<p class="pageinput">{$inputsummary}</p>\r\n	</div>\r\n{/if}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">*{$contenttext}:</p>\r\n		<p class="pageinput">{$inputcontent}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$extratext}:</p>\r\n		<p class="pageinput">{$inputextra}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$startdatetext}:</p>\r\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$enddatetext}:</p>\r\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\r\n	</div>\r\n	{if isset($customfields)}\r\n	   {foreach from=$customfields item=''onefield''}\r\n	      <div class="pageoverflow">\r\n		<p class="pagetext">{$onefield->name}:</p>\r\n		<p class="pageinput">{$onefield->field}</p>\r\n	      </div>\r\n	   {/foreach}\r\n	{/if}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">&nbsp;</p>\r\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\r\n	</div>\r\n{$endform}\r\n', '2011-10-29 02:15:15', '2011-11-16 04:06:05'),
('News', 'browsecatSample', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', '2011-10-29 02:15:15', '2011-10-29 02:15:15'),
('News', 'email_template', 'A new news article has been posted to your website.  The details are as follows:\r\nId: {$id}\r\nTitle:      {$title}\r\nIP Address: {$ipaddress}\r\nSummary:    {$summary|strip_tags}\r\nPost Date:  {$postdate|date_format}\r\nContent:\r\n{$content|strip_tags}\r\n\r\n{save_new_article_id articleid=$articleid}', '2011-10-29 02:15:15', '2011-12-12 09:47:35'),
('Search', 'displaysearch', '\n{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" value="{$searchtext}" {$hogan}/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', '2011-10-29 02:15:17', '2011-10-29 02:15:17'),
('Search', 'displayresult', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == ''News''}{News action=''detail'' article_id=$entry->modulerecord detailpage=''News''} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', '2011-10-29 02:15:17', '2011-10-29 02:15:17'),
('AComments', 'default_display', '<div id="comments">\n\n{if $items}\n<ul>\n{/if}\n{foreach from=$items item=entry}\n	<li class="{$entry->cssclass}">{if $entry->comment_title}<strong>{$entry->comment_title}</strong><br />{/if}\n	{if $entry->comment_author}\n		{if $entry->author_website}<a href="{$entry->author_website}" target="_blank">{$entry->comment_author}</a> - \n		{else}{$entry->comment_author} - \n		{/if}\n	{else if $entry->author_website}<a href="{$entry->author_website}" target="_blank">{$entry->author_website}</a> - \n	{/if}\n	{$entry->date}<br />\n	{$entry->comment_data}\n	</li>\n{/foreach}\n{if $items}\n</ul>\n{/if}\n\n{if FALSE == $errormessage}\n{startExpandCollapse id="name" title="$addacomment"}\n{else}\n{$errormessage}\n{/if}\n<h3>{$addacomment}</h3>\n\n{$startform}\n{*<form id="{$id}moduleform_1" method="post" action="{$returnurl}" class="cms_form">*}\n{$image}\n\n<table>\n	<tr>\n		<td>{$titletxt}:</td>\n		<td>{$inputtitle}</td>\n	</tr>\n	<tr>\n		<td>{$yournametxt}(*):</td>\n		<td>{$inputyourname}</td>\n	</tr>\n	<tr>\n		<td>{$emailtxt}:</td>\n		<td>{$inputemail}</td>\n	</tr>\n	<tr>\n		<td>{$notifytxt}:</td>\n		<td>{$inputnotify}</td>\n	</tr>\n	<tr>\n		<td>{$websitetxt}:</td>\n		<td>{$inputwebsite}</td>\n	</tr>\n	<tr>\n		<td>{$commenttxt}(*):</td>\n		<td>{$inputcomment}</td>\n	</tr>\n{if $spamprotect}\n	<tr>\n		<td>{$entercodetxt}:</td>\n		<td>{$spamprotectimage}<br />{$inputentercode}</td>\n	</tr>\n{/if}\n	<tr>\n		<td>&nbsp;</td>\n		<td>{$submit} {$cancel}</td>\n	</tr>\n</table>\n\n{*</form>*}\n{$endform}\n{if FALSE == $errormessage}\n{stopExpandCollapse} \n{/if}\n\n{if $trackback == 1}\n<span class="trackback"><a href="{$trackbackurl}" rel="nofollow">Trackback-URL</a></span>\n<!--\n<rdf:RDF\n	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\n	xmlns:dc="http://purl.org/dc/elements/1.1/"\n	xmlns:trackback="{$trackbackurl}">\n<rdf:Description\n	rdf:about="{$redirecturl}"\n	dc:title="{$pagetitle}"\n	dc:identifier="{$redirecturl}"\n	trackback:ping="{$trackbackurl}" />\n</rdf:RDF>\n-->\n{/if}\n\n</div>', '2011-10-29 02:52:40', '2011-10-29 02:52:40'),
('Gallery', 'Fancybox', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{* eject icon *}\r\n{* {if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if} *}\r\n\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a class="group" href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="" rel="gallery-{$galleryid}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n	position: fixed;\r\n	top: 50%;\r\n	left: 50%;\r\n	width: 40px;\r\n	height: 40px;\r\n	margin-top: -20px;\r\n	margin-left: -20px;\r\n	cursor: pointer;\r\n	overflow: hidden;\r\n	z-index: 1104;\r\n	display: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 40px;\r\n	height: 480px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n}\r\n\r\n#fancybox-overlay {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 100%;\r\n	z-index: 1100;\r\n	display: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n	padding: 0;\r\n	margin: 0;\r\n	border: 0;\r\n	overflow: auto;\r\n	display: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	padding: 20px;\r\n	z-index: 1101;\r\n	outline: none;\r\n	display: none;\r\n}\r\n\r\n#fancybox-outer {\r\n	position: relative;\r\n	width: 100%;\r\n	height: 100%;\r\n	background: #000;\r\n}\r\n\r\n#fancybox-content {\r\n	width: 0;\r\n	height: 0;\r\n	padding: 0;\r\n	outline: none;\r\n	position: relative;\r\n	overflow: hidden;\r\n	z-index: 1102;\r\n	border: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 100%;\r\n	height: 100%;\r\n	background: transparent;\r\n	z-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n	position: absolute;\r\n	top: -15px;\r\n	right: -15px;\r\n	width: 30px;\r\n	height: 30px;\r\n	background: transparent url(''../fancybox/fancybox.png'') -40px 0px;\r\n	cursor: pointer;\r\n	z-index: 1103;\r\n	display: none;\r\n}\r\n\r\n#fancybox-error {\r\n	color: #444;\r\n	font: normal 12px/20px Arial;\r\n	padding: 14px;\r\n	margin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n	width: 100%;\r\n	height: 100%;\r\n	padding: 0;\r\n	margin: 0;\r\n	border: none;\r\n	outline: none;\r\n	line-height: 0;\r\n	vertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n	width: 100%;\r\n	height: 100%;\r\n	border: none;\r\n	display: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n	position: absolute;\r\n	bottom: 0px;\r\n	height: 100%;\r\n	width: 35%;\r\n	cursor: pointer;\r\n	outline: none;\r\n	background: transparent url(''../fancybox/blank.gif'');\r\n	z-index: 1102;\r\n	display: none;\r\n}\r\n\r\n#fancybox-left {\r\n	left: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n	right: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n	position: absolute;\r\n	top: 50%;\r\n	left: -9999px;\r\n	width: 30px;\r\n	height: 30px;\r\n	margin-top: -15px;\r\n	cursor: pointer;\r\n	z-index: 1102;\r\n	display: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n	visibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n	left: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n	left: auto;\r\n	right: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n	position: absolute;\r\n	padding: 0;\r\n	margin: 0;\r\n	border: 0;\r\n	width: 20px;\r\n	height: 20px;\r\n	z-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n	top: -20px;\r\n	left: 0;\r\n	width: 100%;\r\n	background-image: url(''../fancybox/fancybox-x.png'');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n	top: -20px;\r\n	right: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n	top: 0;\r\n	right: -20px;\r\n	height: 100%;\r\n	background-image: url(''../fancybox/fancybox-y.png'');\r\n	background-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n	bottom: -20px;\r\n	right: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n	bottom: -20px;\r\n	left: 0;\r\n	width: 100%;\r\n	background-image: url(''../fancybox/fancybox-x.png'');\r\n	background-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n	bottom: -20px;\r\n	left: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n	top: 0;\r\n	left: -20px;\r\n	height: 100%;\r\n	background-image: url(''../fancybox/fancybox-y.png'');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n	top: -20px;\r\n	left: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n	font-family: Helvetica;\r\n	font-size: 12px;\r\n	z-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n	padding-bottom: 10px;\r\n	text-align: center;\r\n	color: #333;\r\n	background: #fff;\r\n	position: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n	padding-top: 10px;\r\n	color: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n	position: absolute;\r\n	bottom: 0;\r\n	left: 0;\r\n	color: #FFF;\r\n	text-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n	padding: 10px;\r\n	background-image: url(''../fancybox/fancy_title_over.png'');\r\n	display: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n	position: absolute;\r\n	left: 0;\r\n	bottom: -20px;\r\n	height: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n	border: none;\r\n	border-collapse: collapse;\r\n	width: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n	border: none;\r\n	white-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n	padding: 0 0 0 15px;\r\n	background: url(''../fancybox/fancybox.png'') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n	color: #FFF;\r\n	line-height: 29px;\r\n	font-weight: bold;\r\n	padding: 0 0 3px 0;\r\n	background: url(''../fancybox/fancybox-x.png'') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n	padding: 0 0 0 15px;\r\n	background: url(''../fancybox/fancybox.png'') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }\r\n{*----------<script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/fancybox/jquery.fancybox.pack.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/jquery/jquery.mousewheel.pack.js"></script>\r\n\r\n<script type="text/javascript">\r\n$(document).ready(function() {\r\n	$("a.group").fancybox({\r\n		''speedIn'':		300,\r\n		''speedOut'':	300,\r\n		''overlayColor'':	''#000'',\r\n		''overlayOpacity'':	0.7\r\n	});\r\n});\r\n</script>\r\n*}', '2011-10-29 03:03:36', '2011-12-05 02:11:52'),
('Gallery', 'Lightbox', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="{$image->titlename}" rel="lightbox[gallery]"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;*/\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* LIGHTBOX */\r\n\r\n#lightbox{	position: absolute;	left: 0; width: 100%; z-index: 100; text-align: center; line-height: 0;}\r\n#lightbox img{ width: auto; height: auto;}\r\n#lightbox a img{ border: none; }\r\n\r\n#outerImageContainer{ position: relative; background-color: #fff; width: 250px; height: 250px; margin: 0 auto; }\r\n#imageContainer{ padding: 10px; }\r\n\r\n#loading{ position: absolute; top: 40%; left: 0%; height: 25%; width: 100%; text-align: center; line-height: 0; }\r\n#hoverNav{ position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#imageContainer>#hoverNav{ left: 0;}\r\n#hoverNav a{ outline: none;}\r\n\r\n#prevLink, #nextLink{ width: 49%; height: 100%; background-image: url(data:image/gif;base64,AAAA); /* Trick IE into showing hover */ display: block; }\r\n#prevLink { left: 0; float: left;}\r\n#nextLink { right: 0; float: right;}\r\n#prevLink:hover, #prevLink:visited:hover { background: url(../lightbox/images/prevlabel.gif) left 15% no-repeat; }\r\n#nextLink:hover, #nextLink:visited:hover { background: url(../lightbox/images/nextlabel.gif) right 15% no-repeat; }\r\n\r\n#imageDataContainer{ font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; margin: 0 auto; line-height: 1.4em; overflow: auto; width: 100%	; }\r\n\r\n#imageData{	padding:0 10px; color: #666; }\r\n#imageData #imageDetails{ width: 70%; float: left; text-align: left; }	\r\n#imageData #caption{ font-weight: bold;	}\r\n#imageData #numberDisplay{ display: block; clear: left; padding-bottom: 1.0em;	}			\r\n#imageData #bottomNavClose{ width: 66px; float: right;  padding-bottom: 0.7em; outline: none;}	 	\r\n\r\n#overlay{ position: absolute; top: 0; left: 0; z-index: 90; width: 100%; height: 500px; background-color: #000; }\r\n\r\n{*----------<script type="text/javascript" src="modules/Gallery/templates/lightbox/js/prototype.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/lightbox/js/scriptaculous.js?load=effects,builder"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/lightbox/js/lightbox.js"></script>\r\n*}', '2011-10-29 03:03:36', '2011-10-29 03:03:36'),
('Gallery', 'Lytebox', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="{$image->titlename}" rel="lyteshow[gallery]"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;*/\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* LYTEBOX */\r\n\r\n#lbOverlay { position: fixed; top: 0; left: 0; z-index: 99998; width: 100%; height: 500px; }\r\n	#lbOverlay.grey { background-color: #000000; }\r\n	#lbOverlay.red { background-color: #330000; }\r\n	#lbOverlay.green { background-color: #003300; }\r\n	#lbOverlay.blue { background-color: #011D50; }\r\n	#lbOverlay.gold { background-color: #666600; }\r\n\r\n#lbMain { position: absolute; left: 0; width: 100%; z-index: 99999; text-align: center; line-height: 0; }\r\n#lbMain a img { border: none; }\r\n\r\n#lbOuterContainer { position: relative; background-color: #fff; width: 200px; height: 200px; margin: 0 auto; }\r\n	#lbOuterContainer.grey { border: 3px solid #888888; }\r\n	#lbOuterContainer.red { border: 3px solid #DD0000; }\r\n	#lbOuterContainer.green { border: 3px solid #00B000; }\r\n	#lbOuterContainer.blue { border: 3px solid #5F89D8; }\r\n	#lbOuterContainer.gold { border: 3px solid #B0B000; }\r\n\r\n#lbDetailsContainer {	font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; width: 100%; line-height: 1.4em;	overflow: auto; margin: 0 auto; }\r\n	#lbDetailsContainer.grey { border: 3px solid #888888; border-top: none; }\r\n	#lbDetailsContainer.red { border: 3px solid #DD0000; border-top: none; }\r\n	#lbDetailsContainer.green { border: 3px solid #00B000; border-top: none; }\r\n	#lbDetailsContainer.blue { border: 3px solid #5F89D8; border-top: none; }\r\n	#lbDetailsContainer.gold { border: 3px solid #B0B000; border-top: none; }\r\n\r\n#lbImageContainer, #lbIframeContainer { padding: 10px; }\r\n#lbLoading {\r\n	position: absolute; top: 45%; left: 0%; height: 32px; width: 100%; text-align: center; line-height: 0; background: url(../lytebox/images/loading.gif) center no-repeat;\r\n}\r\n\r\n#lbHoverNav { position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#lbImageContainer>#lbHoverNav { left: 0; }\r\n#lbHoverNav a { outline: none; }\r\n\r\n#lbPrev { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; left: 0; float: left; }\r\n	#lbPrev.grey:hover, #lbPrev.grey:visited:hover { background: url(../lytebox/images/prev_grey.gif) left 15% no-repeat; }\r\n	#lbPrev.red:hover, #lbPrev.red:visited:hover { background: url(../lytebox/images/prev_red.gif) left 15% no-repeat; }\r\n	#lbPrev.green:hover, #lbPrev.green:visited:hover { background: url(../lytebox/images/prev_green.gif) left 15% no-repeat; }\r\n	#lbPrev.blue:hover, #lbPrev.blue:visited:hover { background: url(../lytebox/images/prev_blue.gif) left 15% no-repeat; }\r\n	#lbPrev.gold:hover, #lbPrev.gold:visited:hover { background: url(../lytebox/images/prev_gold.gif) left 15% no-repeat; }\r\n\r\n#lbNext { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; right: 0; float: right; }\r\n	#lbNext.grey:hover, #lbNext.grey:visited:hover { background: url(../lytebox/images/next_grey.gif) right 15% no-repeat; }\r\n	#lbNext.red:hover, #lbNext.red:visited:hover { background: url(../lytebox/images/next_red.gif) right 15% no-repeat; }\r\n	#lbNext.green:hover, #lbNext.green:visited:hover { background: url(../lytebox/images/next_green.gif) right 15% no-repeat; }\r\n	#lbNext.blue:hover, #lbNext.blue:visited:hover { background: url(../lytebox/images/next_blue.gif) right 15% no-repeat; }\r\n	#lbNext.gold:hover, #lbNext.gold:visited:hover { background: url(../lytebox/images/next_gold.gif) right 15% no-repeat; }\r\n\r\n#lbPrev2, #lbNext2 { text-decoration: none; font-weight: bold; }\r\n	#lbPrev2.grey, #lbNext2.grey, #lbSpacer.grey { color: #333333; }\r\n	#lbPrev2.red, #lbNext2.red, #lbSpacer.red { color: #620000; }\r\n	#lbPrev2.green, #lbNext2.green, #lbSpacer.green { color: #003300; }\r\n	#lbPrev2.blue, #lbNext2.blue, #lbSpacer.blue { color: #01379E; }\r\n	#lbPrev2.gold, #lbNext2.gold, #lbSpacer.gold { color: #666600; }\r\n\r\n#lbPrev2_Off, #lbNext2_Off { font-weight: bold; }\r\n	#lbPrev2_Off.grey, #lbNext2_Off.grey { color: #CCCCCC; }\r\n	#lbPrev2_Off.red, #lbNext2_Off.red { color: #FFCCCC; }\r\n	#lbPrev2_Off.green, #lbNext2_Off.green { color: #82FF82; }\r\n	#lbPrev2_Off.blue, #lbNext2_Off.blue { color: #B7CAEE; }\r\n	#lbPrev2_Off.gold, #lbNext2_Off.gold { color: #E1E100; }\r\n\r\n#lbDetailsData { padding: 0 10px; }\r\n	#lbDetailsData.grey { color: #333333; }\r\n	#lbDetailsData.red { color: #620000; }\r\n	#lbDetailsData.green { color: #003300; }\r\n	#lbDetailsData.blue { color: #01379E; }\r\n	#lbDetailsData.gold { color: #666600; }\r\n\r\n#lbDetails { width: 60%; float: left; text-align: left; }\r\n#lbCaption { display: block; font-weight: bold; }\r\n#lbNumberDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n#lbNavDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n\r\n#lbClose { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n	#lbClose.grey { background: url(../lytebox/images/close_grey.png) no-repeat; }\r\n	#lbClose.red { background: url(../lytebox/images/close_red.png) no-repeat; }\r\n	#lbClose.green { background: url(../lytebox/images/close_green.png) no-repeat; }\r\n	#lbClose.blue { background: url(../lytebox/images/close_blue.png) no-repeat; }\r\n	#lbClose.gold { background: url(../lytebox/images/close_gold.png) no-repeat; }\r\n\r\n#lbPlay { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n	#lbPlay.grey { background: url(../lytebox/images/play_grey.png) no-repeat; }\r\n	#lbPlay.red { background: url(../lytebox/images/play_red.png) no-repeat; }\r\n	#lbPlay.green { background: url(../lytebox/images/play_green.png) no-repeat; }\r\n	#lbPlay.blue { background: url(../lytebox/images/play_blue.png) no-repeat; }\r\n	#lbPlay.gold { background: url(../lytebox/images/play_gold.png) no-repeat; }\r\n\r\n#lbPause { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n	#lbPause.grey { background: url(../lytebox/images/pause_grey.png) no-repeat; }\r\n	#lbPause.red { background: url(../lytebox/images/pause_red.png) no-repeat; }\r\n	#lbPause.green { background: url(../lytebox/images/pause_green.png) no-repeat; }\r\n	#lbPause.blue { background: url(../lytebox/images/pause_blue.png) no-repeat; }\r\n	#lbPause.gold { background: url(../lytebox/images/pause_gold.png) no-repeat; }\r\n\r\n{*----------<script type="text/javascript" src="modules/Gallery/templates/lytebox/lytebox.js"></script>\r\n*}', '2011-10-29 03:03:36', '2011-10-29 03:03:36'),
('Gallery', 'Slimbox', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="{$image->titlename}" rel="lightbox[gallery]"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* SLIMBOX */\r\n\r\n#lbOverlay {\r\n	position: fixed;\r\n	z-index: 9999;\r\n	left: 0;\r\n	top: 0;\r\n	width: 100%;\r\n	height: 100%;\r\n	background-color: #000;\r\n	cursor: pointer;\r\n}\r\n\r\n#lbCenter, #lbBottomContainer {\r\n	position: absolute;\r\n	z-index: 9999;\r\n	overflow: hidden;\r\n	background-color: #fff;\r\n}\r\n\r\n.lbLoading {\r\n	background: #fff url(../slimbox/css/loading.gif) no-repeat center;\r\n}\r\n\r\n#lbImage {\r\n	position: absolute;\r\n	left: 0;\r\n	top: 0;\r\n	border: 10px solid #fff;\r\n	background-repeat: no-repeat;\r\n}\r\n\r\n#lbPrevLink, #lbNextLink {\r\n	display: block;\r\n	position: absolute;\r\n	top: 0;\r\n	width: 50%;\r\n	outline: none;\r\n}\r\n\r\n#lbPrevLink {\r\n	left: 0;\r\n}\r\n\r\n#lbPrevLink:hover {\r\n	background: transparent url(../slimbox/css/prevlabel.gif) no-repeat 0 15%;\r\n}\r\n\r\n#lbNextLink {\r\n	right: 0;\r\n}\r\n\r\n#lbNextLink:hover {\r\n	background: transparent url(../slimbox/css/nextlabel.gif) no-repeat 100% 15%;\r\n}\r\n\r\n#lbBottom {\r\n	font-family: Verdana, Arial, Geneva, Helvetica, sans-serif;\r\n	font-size: 10px;\r\n	color: #666;\r\n	line-height: 1.4em;\r\n	text-align: left;\r\n	border: 10px solid #fff;\r\n	border-top-style: none;\r\n}\r\n\r\n#lbCloseLink {\r\n	display: block;\r\n	float: right;\r\n	width: 66px;\r\n	height: 22px;\r\n	background: transparent url(../slimbox/css/closelabel.gif) no-repeat center;\r\n	margin: 5px 0;\r\n	outline: none;\r\n}\r\n\r\n#lbCaption, #lbNumber {\r\n	margin-right: 71px;\r\n}\r\n\r\n#lbCaption {\r\n	font-weight: bold;\r\n}\r\n\r\n{*----------<script type="text/javascript" src="modules/Gallery/templates/jquery/jquery.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/slimbox/js/slimbox2.js"></script>\r\n*}', '2011-10-29 03:03:36', '2011-10-29 03:03:36');
INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('Gallery', 'Thickbox', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="{$image->titlename}" class="thickbox" rel="gallery"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* THICKBOX */\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> global settings needed for thickbox <<<-----------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n*{padding: 0; margin: 0;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox specific link and font settings <<<------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_window {\r\n	font: 12px Arial, Helvetica, sans-serif;\r\n	color: #333333;\r\n}\r\n\r\n#TB_secondLine {\r\n	font: 10px Arial, Helvetica, sans-serif;\r\n	color:#666666;\r\n}\r\n\r\n#TB_window a:link {color: #666666;}\r\n#TB_window a:visited {color: #666666;}\r\n#TB_window a:hover {color: #000;}\r\n#TB_window a:active {color: #666666;}\r\n#TB_window a:focus{color: #666666;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox settings <<<-----------------------------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_overlay {\r\n	position: fixed;\r\n	z-index:100;\r\n	top: 0px;\r\n	left: 0px;\r\n	height:100%;\r\n	width:100%;\r\n}\r\n\r\n.TB_overlayMacFFBGHack {background: url(modules/Gallery/templates/thickbox/macFFBgHack.png) repeat;}\r\n.TB_overlayBG {\r\n	background-color:#000;\r\n	filter:alpha(opacity=75);\r\n	-moz-opacity: 0.75;\r\n	opacity: 0.75;\r\n}\r\n\r\n* html #TB_overlay { /* ie6 hack */\r\n     position: absolute;\r\n     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_window {\r\n	position: fixed;\r\n	background: #ffffff;\r\n	z-index: 102;\r\n	color:#000000;\r\n	display:none;\r\n	border: 4px solid #525252;\r\n	text-align:left;\r\n	top:50%;\r\n	left:50%;\r\n}\r\n\r\n* html #TB_window { /* ie6 hack */\r\nposition: absolute;\r\nmargin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_window img#TB_Image {\r\n	display:block;\r\n	margin: 15px 0 0 15px;\r\n	border-right: 1px solid #ccc;\r\n	border-bottom: 1px solid #ccc;\r\n	border-top: 1px solid #666;\r\n	border-left: 1px solid #666;\r\n}\r\n\r\n#TB_caption{\r\n	height:25px;\r\n	padding:7px 30px 10px 25px;\r\n	float:left;\r\n}\r\n\r\n#TB_closeWindow{\r\n	height:25px;\r\n	padding:11px 25px 10px 0;\r\n	float:right;\r\n}\r\n\r\n#TB_closeAjaxWindow{\r\n	padding:7px 10px 5px 0;\r\n	margin-bottom:1px;\r\n	text-align:right;\r\n	float:right;\r\n}\r\n\r\n#TB_ajaxWindowTitle{\r\n	float:left;\r\n	padding:7px 0 5px 10px;\r\n	margin-bottom:1px;\r\n}\r\n\r\n#TB_title{\r\n	background-color:#e8e8e8;\r\n	height:27px;\r\n}\r\n\r\n#TB_ajaxContent{\r\n	clear:both;\r\n	padding:2px 15px 15px 15px;\r\n	overflow:auto;\r\n	text-align:left;\r\n	line-height:1.4em;\r\n}\r\n\r\n#TB_ajaxContent.TB_modal{\r\n	padding:15px;\r\n}\r\n\r\n#TB_ajaxContent p{\r\n	padding:5px 0px 5px 0px;\r\n}\r\n\r\n#TB_load{\r\n	position: fixed;\r\n	display:none;\r\n	height:13px;\r\n	width:208px;\r\n	z-index:103;\r\n	top: 50%;\r\n	left: 50%;\r\n	margin: -6px 0 0 -104px; /* -height/2 0 0 -width/2 */\r\n}\r\n\r\n* html #TB_load { /* ie6 hack */\r\nposition: absolute;\r\nmargin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_HideSelect{\r\n	z-index:99;\r\n	position:fixed;\r\n	top: 0;\r\n	left: 0;\r\n	background-color:#fff;\r\n	border:none;\r\n	filter:alpha(opacity=0);\r\n	-moz-opacity: 0;\r\n	opacity: 0;\r\n	height:100%;\r\n	width:100%;\r\n}\r\n\r\n* html #TB_HideSelect { /* ie6 hack */\r\n     position: absolute;\r\n     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_iframeContent{\r\n	clear:both;\r\n	border:none;\r\n	margin-bottom:-1px;\r\n	margin-top:1px;\r\n	_margin-bottom:1px;\r\n}\r\n\r\n{*----------<script type="text/javascript" src="modules/Gallery/templates/jquery/jquery.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/thickbox/thickbox.js"></script>\r\n*}', '2011-10-29 03:03:37', '2011-10-29 03:03:37'),
('Gallery', 'gallerytree', '	<ul>\r\n{assign var=''g_prevdepth'' value=1}\r\n{foreach from=$images item=image name=img}\r\n\r\n{if $image->depth > $g_prevdepth}\r\n{repeat string="<ul>" times=$image->depth-$g_prevdepth}\r\n{elseif $image->depth < $g_prevdepth}\r\n{repeat string="</li></ul>" times=$g_prevdepth-$image->depth}\r\n</li>\r\n{elseif $smarty.foreach.img.index > 0}</li>\r\n{/if}\r\n		<li><a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a> {$image->titlename}\r\n\r\n{assign var=''g_prevdepth'' value=$image->depth}\r\n{/foreach}\r\n{repeat string="</li></ul>" times=$image->depth-1}</li>\r\n	</ul>\r\n{*----------{*----------*}', '2011-10-29 03:03:37', '2011-10-29 03:03:37'),
('Album', 'default', '{* Include JS files. You can move this to the head of your page template if you want *}\n<!--Thickbox ThickBoxWithPrev-Next stuff-->\n<script type="text/javascript" src="modules/Album/templates/db/js/jquery.js"></script>\n<script type="text/javascript" src="modules/Album/templates/db/js/thickbox.js"></script>\n\n\n{if $pictureid !=0}\n\n{* Big Picture *}\n<div style="text-align:center">\n<p class="bigpicturecaption"><strong>{$picture->name}</strong><br />\n{$picture->comment}<br />\n<span class="bigpicturenav">\n{if $link.picture.previous}<a href="{$link.picture.previous}" title="Previous picture">&lt; Previous</a>{/if}\n <span class= "albumpicturecount">( Picture {$picturenumber}/{$picturecount} )</span> \n{if $link.picture.next}<a href="{$link.picture.next}" title="Next picture">Next &gt;</a></span>{/if}\n</p>\n<img src="{$picture->picture}" alt="{$picture->name|escape:''html''} - {$picture->comment|escape:''html''}"  title="{$picture->name|escape:''html''}  - {$picture->comment|escape:''html''}" />\n</div>\n{/if}\n\n{* Album List *}\n{if !$album}\n<ul class="albumlist">\n	{foreach from=$albums item=album}\n	<li class="thumb">\n 	<a href="{$album->link}">\n<img src="{$album->thumbnail}" alt="{$album->name|escape:''html''}" title="{$album->name|escape:''html''} - {$album->comment|escape:''html''}"{$album->autothumbnailsize} /></a>\n\n<p class="albumname">{$album->name}<br />\n<span class="albumpicturecount">({$album->picturecount} images)</span><br />\n<span class="albumcomment">{$album->comment}</span></p>\n</li>\n	{/foreach}\n</ul>\n\n{else}\n\n{* Photo List *}\n<p><span class="noprint">Click on a thumbnail to view a larger image. Click anywhere on the larger image or use the ''Esc'' (escape) key to close it. Use the ''next'' and ''previous'' links or the ''&lt;'' or ''&gt;'' (more than/less than keys) to navigate the larger images. <br/>{if $returnlink}<a href="{$returnlink}">Return to the album index page</a>{/if}</span></p>\n	{if $pagecount>1}\n	<p class="albumnav">\n		<a href="{$link.page.first}" title="first page">&lt;&lt;&nbsp;</a>\n		{if $link.page.previous}<a href="{$link.page.previous}" title="previous page">&lt;&nbsp;</a>{/if}\n		page {$pagenumber}/{$pagecount}\n		{if $link.page.next}<a href="{$link.page.next}" title="next page">&nbsp;&gt;</a>{/if}\n		<a href="{$link.page.last}" title="last page">&nbsp;&gt;&gt;</a>\n	</p>\n	{/if}\n<h3>{$album->name}</h3>\n{$album->comment}\n<ul class="picturelist">\n	{foreach from=$pictures item=picturesrow}\n	    {foreach from=$picturesrow item=onepicture}\n	    <li class="thumb"><a href="{$onepicture->picture}" rel="{$album->name|escape:''html''}" class="thickbox" title="{$onepicture->name|escape:''html''} - {$onepicture->comment|escape:''html''}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''} - {$onepicture->comment|escape:''html''}" title="{$onepicture->name|escape:''html''} - {$onepicture->comment|escape:''html''}"{$onepicture->autothumbnailsize} /></a>\n   	   </li>\n\n      {if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}\n	    {/foreach}\n	{/foreach}\n</ul>\n\n{if $picturecount==0}No image{/if}\n{/if}\n\n{if $picture->id>0}\n{/if}\n<div style="clear:both"></div> ', '2011-11-14 02:04:03', '2011-11-14 02:04:03'),
('Album', 'recently_updated', '<ul class="picturelist">\n	{foreach from=$pictures item=onepicture}\n   		<li class="thumb"><a href="{$onepicture->link}" title="{$onepicture->name|escape:''html''}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''}" title="{$onepicture->name|escape:''html''}"{$onepicture->autothumbnailsize} /></a>\n		</li>\n	{/foreach}\n</ul>\n<div style="clear:both"></div>', '2011-11-14 02:04:03', '2011-11-14 02:04:03'),
('Album', 'random_image', '{* Include JS files. You can move this to the head of your page template if you want *}\n<!--Greybox-->\n<script type="text/javascript">\n    var GB_ROOT_DIR = "modules/Album/templates/db/greybox/";\n</script>\n\n<script type="text/javascript" src="modules/Album/templates/db/greybox/AJS.js"></script>\n<script type="text/javascript" src="modules/Album/templates/db/greybox/AJS_fx.js"></script>\n<script type="text/javascript" src="modules/Album/templates/db/greybox/gb_scripts.js"></script>\n\n\n\n\n<ul class="picturelist">\n	{foreach from=$pictures item=onepicture}\n	    <li class="thumb"><a href="{$onepicture->picture}" rel="gb_imageset[random]" title="{$onepicture->name|escape:''html''} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:''html''}{/if}"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:''html''}{/if}" title="{$onepicture->name|escape:''html''} {if ($onepicture->comment != "")}- {$onepicture->comment|escape:''html''}{/if}"{$onepicture->autothumbnailsize} /></a>\n   	   </li>\n	{/foreach}\n</ul>\n\n<div style="clear:both"></div>', '2011-11-14 02:04:03', '2011-11-14 02:04:03'),
('Album', 'categories', '{section name=album loop=$categories}\n<div class="album_content">\n	<h3>{$categories[album].category->name}</h3>\n	{if !empty($categories[album].category->comment)}<p>{$categories[album].category->comment}</p>{/if}\n	{$categories[album].albums_content}\n</div>\n{/section}\n<div class="clear"></div>', '2011-11-14 02:04:03', '2011-11-14 02:04:03'),
('AdvancedContent', 'multi_input_SampleTemplate', '<div class="pageoverflow">\n<p>\n{foreach from=$inputs item=elm}\n	{$elm->GetBlockProperty(''label'')}:&nbsp;{$elm->GetBlockInput()}&nbsp;\n{/foreach}\n</p>\n</div>', '2011-11-14 02:04:12', '2011-11-14 02:04:12'),
('CGExtensions', 'cg_errormsg', '{* original template for displaying frontend errors *}\n<div class="{$cg_errorclass}">{$cg_errormsg}</div>', '2011-11-15 09:21:12', '2011-11-15 09:21:12'),
('CGExtensions', 'sortablelists_Sample', '{* sortable list template *}\n\n{*\n This template provides one example of using javascript in a CMS module template.  The javascript is left here as an example of how one can interact with smarty in javascript.  You may infact want to put most of these functions into a seperate .js file and include it somewhere in your head section.\n\n You are free to modify this javascript and this template.  However, the php driver scripts look for a field named in the smarty variable {$selectarea_prefix}, and expect that to be a comma seperated list of values.\n *}\n\n{literal}\n<script type=''text/javascript''>\nvar allowduplicates = {/literal}{$allowduplicates};{literal}\nvar selectlist = {/literal}"{$selectarea_prefix}_selectlist";{literal}\nvar masterlist = {/literal}"{$selectarea_prefix}_masterlist";{literal}\nvar addbtn = {/literal}"{$selectarea_prefix}_add";{literal}\nvar rembtn = {/literal}"{$selectarea_prefix}_remove";{literal}\nvar upbtn = {/literal}"{$selectarea_prefix}_up";{literal}\nvar downbtn = {/literal}"{$selectarea_prefix}_down";{literal}\nvar valuefld = {/literal}"{$selectarea_prefix}";{literal}\nvar max_selected = {/literal}{$max_selected};{literal}\n\nfunction selectarea_update_value()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var val_elem = document.getElementById(valuefld);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  var tmp = new Array();\n  for( i = 0; i < opts.length; i++ )\n    {\n      tmp[tmp.length] = opts[i].value;\n    }\n  var str = tmp.join('','');\n  val_elem.value = str;  \n}\n\nfunction selectarea_handle_down()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  for( var i = opts.length - 2; i >= 0; i-- )\n    {\n      var opt = opts[i];\n      if( opt.selected )\n        {\n           var nextopt = opts[i+1];\n           opt = sel_elem.removeChild(opt);\n           nextopt = sel_elem.replaceChild(opt,nextopt);\n           sel_elem.insertBefore(nextopt,opt);\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_up()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( sel_idx > 0 )\n    {\n      for( var i = 1; i < opts.length; i++ )\n        {\n          var opt = opts[i];\n          if( opt.selected )\n            {\n              sel_elem.removeChild(opt);\n               sel_elem.insertBefore(opt, opts[i-1]);\n            }\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_remove()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  if( sel_idx >= 0 )\n    {\n      var val = sel_elem.options[sel_idx].value;\n      sel_elem.remove(sel_idx);\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_add()\n{\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  var sel_elem = document.getElementById(selectlist);\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( opts.length >= max_selected && max_selected > 0) return;\n  if( mas_idx >= 0 )\n    {\n      var newOpt = document.createElement(''option'');\n      newOpt.text = mas_elem.options[mas_idx].text;\n      newOpt.value = mas_elem.options[mas_idx].value;\n      if( allowduplicates == 0 )\n        {\n          for( var i = 0; i < opts.length; i++ )\n          {\n            if( opts[i].value == newOpt.value ) return;\n          }\n        }\n      sel_elem.add(newOpt,null);\n    }\n  selectarea_update_value();\n}\n\n\nfunction selectarea_handle_select()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  addbtn.disabled = (mas_idx >= 0);\n  rembtn.disabled = (sel_idx >= 0);\n  addbtn.disabled = (sel_idx >= 0);\n  downbtn.disabled = (sel_idx >= 0);\n}\n\n</script>\n{/literal}\n\n <table>\n   <tr>\n     <td>\n      {* left column - for the selected items *}\n      {$label_left}<br/>\n      <select id="{$selectarea_prefix}_selectlist" size="10" onchange="selectarea_handle_select();">\n        {html_options options=$selectarea_selected}\n      </select><br/>\n     </td>\n     <td>\n      {* center column - for the add/delete buttons *}\n      <input type="submit" id="{$selectarea_prefix}_add" value="&lt;&lt;" onclick="selectarea_handle_add(); return false;"/><br/>\n      <input type="submit" id="{$selectarea_prefix}_remove" value="&gt;&gt;" onclick="selectarea_handle_remove(); return false;"/><br/>\n      <input type="submit" id="{$selectarea_prefix}_up" value="{$upstr}" onclick="selectarea_handle_up(); return false;"/><br/>\n      <input type="submit" id="{$selectarea_prefix}_down" value="{$downstr}" onclick="selectarea_handle_down(); return false;"/><br/>\n     </td>\n     <td>\n      {* right column - for the master list *}\n      {$label_right}<br/>\n      <select id="{$selectarea_prefix}_masterlist" size="10" onchange="selectarea_handle_select();">\n        {html_options options=$selectarea_masterlist}\n      </select>\n     </td>\n   </tr>\n </table>\n <div><input type="hidden" id="{$selectarea_prefix}" name="{$selectarea_prefix}" value="{$selectarea_selected_str}" /></div>\n', '2011-11-15 09:21:12', '2011-11-15 09:21:12'),
('CGFeedback', 'commentform_Sample', '{* comment form template *}\r\n{if isset($message)}\r\n  <div class="pagemessage">{$message}</div>\r\n{else}\r\n{* no message... display the form *}\r\n<div class="cgfeedback_addcoment">\r\n{if isset($error)}\r\n  <div class="error">{$error}</div>\r\n{/if}\r\n{$formstart}\r\n<fieldset style="margin: 1em;">\r\n  <legend> {$mod->Lang(''prompt_add_comment'')} </legend>\r\n\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$mod->Lang(''prompt_title'')}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 40%;">\r\n      <input type="text" name="{$actionid}title" size="40" maxlength="255" value="{$title}"/>\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$mod->Lang(''prompt_your_name'')}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 70%;">\r\n      <input type="text" name="{$actionid}author_name" size="40" maxlength="255" value="{$author_name}"/>\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$mod->Lang(''prompt_your_email'')}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 70%;">\r\n      <input type="text" name="{$actionid}author_email" size="40" maxlength="255" value="{$author_email}"/>\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n\r\n{*\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$mod->Lang(''prompt_notify'')}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 70%;">\r\n      <input type="checkbox" name="{$actionid}author_notify" value="1" {if $author_notify == 1}checked="checked"{/if}/>\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n*}\r\n\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$mod->Lang(''prompt_your_rating'')}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 70%;">\r\n      <select name="{$actionid}rating">\r\n        {html_options options=$rating_options selected=$rating}\r\n      </select>\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n\r\n\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$mod->Lang(''prompt_comment'')}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 40%;">\r\n      {$input_comment}\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n\r\n\r\n  {* custom fields *}\r\n  {if isset($fields)}\r\n  {foreach from=$fields key=''fieldid'' item=''field''}\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n      {$field.name}:\r\n    </div>\r\n    <div class="col70" style="float: left; width: 70%;">\r\n    {if isset($field.input)}\r\n      {$field.input}\r\n    {elseif $field.type == 0 or $field.type == 1 }\r\n      <input type="text" name="{$actionid}field_{$fieldid}" value="{$field.value}" size="{$field.attrib.length}" maxlength="{$field.attrib.maxlength}"/>\r\n    {elseif $field.type == 2}\r\n      {* text area fields should have an input... so this should never get caled... but just in case *}\r\n      <textarea name="{$actionid}field_{$fieldid}">{$field.value}</textarea>\r\n    {elseif $field.type == 3}\r\n      <select name="{$actionid}field_{$fieldid}">\r\n        {html_options options=$field.attrib.options selected="{$field.value}"}\r\n      </select>\r\n    {elseif $field.type == 4}\r\n      <select multiple="multiple" size="4" name="{$actionid}field_{$fieldid}[]">\r\n        {html_options options=$field.attrib.options selected="{$field.value}"}\r\n      </select>\r\n    {/if}\r\n    </div>\r\n  </div>\r\n  {/foreach}\r\n  {/if}\r\n\r\n  {if isset($captcha_img)}\r\n     {* handle captcha image *}\r\n     <div class="row" style="margin: 1em;">\r\n       <div class="col30" style="float: left; width: 29%;"> </div>\r\n     <div class="col70" style="float: left; width: 70%;">\r\n      {$captcha_img}<br/>\r\n      <input type="text" name="{$actionid}feedback_captcha" value="" size="20"/>\r\n    </div>\r\n  </div>\r\n  {/if}\r\n\r\n  <div class="row" style="margin: 1em;">\r\n    <div class="col30" style="float: left; width: 29%;">\r\n        \r\n    </div>\r\n    <div class="col70" style="float: left; width: 70%;">\r\n      <input type="submit" name="{$actionid}submit" value="{$mod->Lang(''submit'')}"/>\r\n    </div>\r\n  </div>\r\n  <div class="clearfix"></div>\r\n\r\n</fieldset>\r\n{$formend}\r\n</div>\r\n{/if}', '2011-11-15 09:23:42', '2011-11-15 09:51:58'),
('CGFeedback', 'commentform_Radio', '{* comment form template *}\n{if isset($message)}\n  <div class="pagemessage">{$message}</div>\n{else}\n{* no message... display the form *}\n<div class="cgfeedback_addcoment">\n{if isset($error)}\n  <div class="error">{$error}</div>\n{/if}\n{$formstart}\n<fieldset style="margin: 1em;">\n  <legend>&nbsp;{$mod->Lang(''prompt_add_comment'')}&nbsp;</legend>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_title'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="text" name="{$actionid}title" size="80" maxlength="255" value="{$title}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_your_name'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="text" name="{$actionid}author_name" size="40" maxlength="255" value="{$author_name}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_your_email'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="text" name="{$actionid}author_email" size="40" maxlength="255" value="{$author_email}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_notify'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="checkbox" name="{$actionid}author_notify" value="1" {if $author_notify == 1}checked="checked"{/if}/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_your_rating'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      {section name=''outer'' start=1 loop=6}\n        <input name="{$actionid}rating" type="radio" value="{$smarty.section.outer.index}" {if $rating == $smarty.section.outer.index} checked="checked"{/if} />\n        {section  name=''inner'' start=1 loop=$smarty.section.outer.index+1}\n           <img src="{$rating_imgs.img_on}" alt=""/>\n        {/section}\n        <br/>\n      {/section}\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_comment'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      {$input_comment}\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  {* custom fields *}\n  {if isset($fields)}\n  {foreach from=$fields key=''fieldid'' item=''field''}\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$field.name}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n    {if isset($field.input)}\n      {$field.input}\n    {elseif $field.type == 0 or $field.type == 1 }\n      <input type="text" name="{$actionid}field_{$fieldid}" value="{$field.value}" size="{$field.attrib.length}" maxlength="{$field.atrrib.maxlength}"/>\n    {elseif $field.type == 2}\n      {* text area fields should have an input... so this should never get caled... but just in case *}\n      <textarea name="{$actionid}field_{$fieldid}">{$field.value}</textarea>\n    {elseif $field.type == 3}\n      <select name="{$actionid}field_{$fieldid}">\n        {html_options options=$field.attrib.options selected="{$field.value}"}\n      </select>\n    {elseif $field.type == 4}\n      <select multiple="multiple" size="4" name="{$actionid}field_{$fieldid}[]">\n        {html_options options=$field.attrib.options selected="{$field.value}"}\n      </select>\n    {/if}\n    </div>\n  </div>\n  {/foreach}\n  {/if}\n\n  {if isset($captcha_img)}\n     {* handle captcha image *}\n     <div class="row" style="margin: 1em;">\n       <div class="col30" style="float: left; width: 29%;">&nbsp;</div>\n     <div class="col70" style="float: left; width: 70%;">\n      {$captcha_img}<br/>\n      <input type="text" name="{$actionid}feedback_captcha" value="" size="20"/>\n    </div>\n  </div>\n  {/if}\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n       &nbsp;\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="submit" name="{$actionid}submit" value="{$mod->Lang(''submit'')}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n</fieldset>\n{$formend}\n</div>\n{/if}', '2011-11-15 09:23:42', '2011-11-15 09:23:42'),
('CGFeedback', 'ratings_Sample', '{* cgfeedback ratings template *}\n{strip}\n<div id="{$actionid}_feedback_ratings_report">\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_count_comments'')}:&nbsp;{$stats.count}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_min_rating'')}:&nbsp;{$stats.min}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_max_rating'')}:&nbsp;{$stats.max}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_avg_rating'')}:&nbsp;{$stats.avg}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {section name=''rating'' start=1 loop=6}\n    {if $smarty.section.rating.index <= $stats.int_avg}\n       <img src="{$rating_imgs.img_on}" alt=""/>\n    {/if}\n    {/section}\n    {if isset($stats.fraction)}\n       <img src="{$rating_imgs.img_half}" alt=""/>\n    {/if}\n  </div>\n \n{* feedback_ratings_report *}</div>\n{/strip}', '2011-11-15 09:23:42', '2011-11-15 09:23:42'),
('CGFeedback', 'summary_Sample', '{* summary template *}\r\n<div id="{$actionid}_feedback_summary_report">\r\n{strip}\r\n{if $pagecount > 1}\r\n<p>\r\n  \r\n\r\n<table border="0" cellspacing="1" cellpadding="1" width="30%">\r\n	<tr>\r\n		{if $pagenum > 1}\r\n			<td width="10%">			\r\n				<a href="{$firstpage_url}" title="{$mod->Lang(''lbl_goto_firstpage'')}">\r\n					<img src="uploads/images/top.png" height="15"></a>\r\n			</td>\r\n			<td width="5%">\r\n			 \r\n			</td>\r\n			<td width="10%">\r\n				<a href="{$prevpage_url}" title="{$mod->Lang(''lbl_goto_prevpage'')}">\r\n					<img src="uploads/images/prev.png" height="15"> </a>		\r\n			</td>\r\n		{else}\r\n			<td width="10%">			\r\n				 \r\n			</td>\r\n			<td width="5%">\r\n				 \r\n			</td>\r\n			<td width="10%">\r\n				 \r\n			</td>\r\n		{/if}\r\n\r\n		<td align="center">\r\n			{$mod->Lang(''lbl_page'')}{$pagenum} {$mod->Lang(''lbl_of'')} {$pagecount}\r\n		</td>\r\n\r\n		{if $pagenum < $pagecount}\r\n			<td width="10%">			\r\n				<a href="{$nextpage_url}" title="{$mod->Lang(''lbl_goto_nextpage'')}">\r\n					<img src="uploads/images/next.png" height="15"></a>\r\n			</td>\r\n			<td width="5%">\r\n				 \r\n			</td>\r\n			<td width="10%">\r\n				<a href="{$lastpage_url}" title="{$mod->Lang(''lbl_goto_lastpage'')}">\r\n					<img src="uploads/images/bottom.png" height="15"></a>			\r\n			</td>\r\n		{else}\r\n			<td width="10%">			\r\n				 \r\n			</td>\r\n			<td width="5%">\r\n				 \r\n			</td>\r\n			<td width="10%">\r\n				 \r\n			</td>\r\n		{/if}\r\n	</tr>\r\n</table>\r\n\r\n\r\n</p>\r\n{* pagecount *}{/if}\r\n\r\n{* disini *}\r\n\r\n{if isset($comments)}\r\n{foreach from=$comments item=''one''}\r\n  <div class="feedback_summary_item">\r\n    <div class="feedback_item_title">\r\n      <a href="{$one.detail_url}" title="{$one.title}">{$one.title}</a>\r\n    </div>\r\n\r\n    <div class="feedback_item_authodatee">\r\n      {* {$mod->Lang(''lbl_created'')}:*}\r\n\r\n<table border="0" width="100%" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td>\r\n{$one.created|cms_date_format}\r\n</td>\r\n<td align="right">\r\n{section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n    </div>\r\n{*\r\n    <div class="feedback_item_rating">\r\n       {$mod->Lang(''lbl_rating'')}:{$one.rating}\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n*}\r\n\r\n\r\n    {if $one.author_name}\r\n    <div class="feedback_item_authorname">\r\n      {* {$mod->Lang(''lbl_author_name'')}:{$one.author_name} ({$one.author_email}) *}\r\nAuthor:{$one.author_name} ({$one.author_email})\r\n    </div>\r\n    {/if}\r\n{*\r\n    {if $one.author_email}\r\n    <div class="feedback_item_authoremail">\r\n      {$mod->Lang(''lbl_author_email'')}:{$one.author_email}\r\n    </div>\r\n    {/if}\r\n*}\r\n    {if $one.author_ip}\r\n    <div class="feedback_item_authorip">\r\n      {$mod->Lang(''lbl_author_ip'')}:{$one.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class="feedback_item_data">\r\n      {$one.data|htmlspecialchars}\r\n    </div>\r\n\r\n    {if isset($one.fields)}    \r\n      {foreach from=$one.fields key=''name'' item=''field''}\r\n      <div class="feedback_item_field">\r\n        {$name}:{$field.value|htmlspecialchars}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n{/foreach}\r\n{* comments *}{/if}\r\n{* feedback_summary_report *}</div>\r\n\r\n\r\n\r\n{/strip}\r\n\r\n', '2011-11-15 09:23:42', '2011-11-21 07:24:02'),
('CGFeedback', 'detail_Sample', '{* detail template *}\r\n  <div class="feedback_summary_item">\r\n    <div class="feedback_item_title">\r\n      {$mod->Lang(''lbl_title'')}:{$onecomment.title}\r\n    </div>\r\n\r\n    <div class="feedback_item_authorname">\r\n      Posted:{$onecomment.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class="feedback_item_rating">\r\n      {$mod->Lang(''lbl_rating'')}:{$onecomment.rating}\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $onecomment.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $onecomment.author_name}\r\n    <div class="feedback_item_authorname">\r\n      {$mod->Lang(''lbl_author_name'')}:{$onecomment.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_email}\r\n    <div class="feedback_item_authoremail">\r\n      {$mod->Lang(''lbl_author_email'')}:{$onecomment.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_ip}\r\n    <div class="feedback_item_authorip">\r\n      {$mod->Lang(''lbl_author_ip'')}:{$onecomment.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class="feedback_item_data">\r\n      {$onecomment.data}\r\n    </div>\r\n\r\n    {if isset($onecomment.fields)}    \r\n      {foreach from=$onecomment.fields key=''name'' item=''field''}\r\n      <div class="feedback_item_field">\r\n        {$name}:{$field.value}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n\r\n\r\n{*\r\n{if $returnid != ""}\r\n	<div id="NewsPostDetailReturnLink">\r\n	<a href="{cms_selflink href=''comment''}">Return</a>\r\n	</div>\r\n{/if}\r\n*}\r\n</div>\r\n', '2011-11-15 09:23:42', '2011-12-12 03:11:36'),
('CGFeedback', 'notification_template', '{* admin notification template *}\r\n<html>\r\n<body>\r\n<h1>{$subject}</h1>\r\n\r\n<table>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_url'')}:</td>\r\n  <td>{$orig_url}</td>\r\n</tr>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_key1'')}:</td>\r\n  <td>{$key1}</td>\r\n</tr>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_key2'')}:</td>\r\n  <td>{$key2}</td>\r\n</tr>\r\n{if !empty($key3) }\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_key3'')}:</td>\r\n  <td>{$key3}</td>\r\n</tr>\r\n{/if}\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_author'')}:</td>\r\n  <td>{$author_name} {if !empty($author_email)}({$author_email}){/if}</td>\r\n</tr>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_author_ip'')}:</td>\r\n  <td>{$author_ip}</td>\r\n</tr>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_title'')}:</td>\r\n  <td>{$title}</td>\r\n</tr>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_rating'')}:</td>\r\n  <td>{$rating}</td>\r\n</tr>\r\n<tr>\r\n  <td>{$mod->Lang(''lbl_comment'')}:</td>\r\n  <td>{$comment}</td>\r\n</tr>\r\n{foreach from=$fields item=''onefield''}\r\n<tr>\r\n  <td>{$onefield.name}:</td>\r\n  <td>{$onefield.value}</td>\r\n</tr>\r\n{/foreach}\r\n</body>\r\n</html>', '2011-11-15 09:23:42', '2011-12-12 06:15:21'),
('CGFeedback', 'usernotification_template', '{* user notification template *}\n{* admin notification template *}\n<html>\n<body>\n<h1>{$subject}</h1>\n\n<table>\n<tr>\n  <td>{$mod->Lang(''lbl_url'')}:</td>\n  <td>{$orig_url}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_key1'')}:</td>\n  <td>{$key1}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_key2'')}:</td>\n  <td>{$key2}</td>\n</tr>\n{if !empty($key3) }\n<tr>\n  <td>{$mod->Lang(''lbl_key3'')}:</td>\n  <td>{$key3}</td>\n</tr>\n{/if}\n<tr>\n  <td>{$mod->Lang(''lbl_author'')}:</td>\n  <td>{$author_name} {if !empty($author_email)}({$author_email}){/if}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_title'')}:</td>\n  <td>{$title}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_rating'')}:</td>\n  <td>{$rating}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_comment'')}:</td>\n  <td>{$comment}</td>\n</tr>\n{foreach from=$fields item=''onefield''}\n<tr>\n  <td>{$onefield.name}:</td>\n  <td>{$onefield.value}</td>\n</tr>\n{/foreach}\n</body>\n</html>', '2011-11-15 09:23:42', '2011-11-15 09:23:42'),
('CGFeedback', 'success_msg', '<p>{* comment successfull template *}</p>\r\n<p>Thank you {$author_name} <em>{$author_ip}</em> for your comment entitled "{$title}". {if $author_notify}You will be notified of any further replies to this thread.{/if}</p>\r\n<p>{current_page_id}</p>\r\n<p>{if $currpageid==62} </p>\r\n<p>{redirect to=''comment''}</p>\r\n<p>comment </p>\r\n<p>{else}</p>\r\n<p>{redirect to=''news''}</p>\r\n<p>{*news articleid=$currpageid*} </p>\r\n<p>news </p>\r\n<p>{/if} </p>', '2011-11-15 09:23:42', '2011-12-11 18:16:10'),
('CGFeedback', 'success_message', 'Comment successfully added.  Thank you', '2011-11-15 09:23:42', '2011-11-15 09:23:42'),
('CGFeedback', 'sysdflt_commentform_template', '{* comment form template *}\n{if isset($message)}\n  <div class="pagemessage">{$message}</div>\n{else}\n{* no message... display the form *}\n<div class="cgfeedback_addcoment">\n{if isset($error)}\n  <div class="error">{$error}</div>\n{/if}\n{$formstart}\n<fieldset style="margin: 1em;">\n  <legend>&nbsp;{$mod->Lang(''prompt_add_comment'')}&nbsp;</legend>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_title'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="text" name="{$actionid}title" size="80" maxlength="255" value="{$title}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_your_name'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="text" name="{$actionid}author_name" size="40" maxlength="255" value="{$author_name}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_your_email'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="text" name="{$actionid}author_email" size="40" maxlength="255" value="{$author_email}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_notify'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="checkbox" name="{$actionid}author_notify" value="1" {if $author_notify == 1}checked="checked"{/if}/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_your_rating'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <select name="{$actionid}rating">\n        {html_options options=$rating_options selected=$rating}\n      </select>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$mod->Lang(''prompt_comment'')}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      {$input_comment}\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n  {* custom fields *}\n  {if isset($fields)}\n  {foreach from=$fields key=''fieldid'' item=''field''}\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n      {$field.name}:\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n    {if isset($field.input)}\n      {$field.input}\n    {elseif $field.type == 0 or $field.type == 1 }\n      <input type="text" name="{$actionid}field_{$fieldid}" value="{$field.value}" size="{$field.attrib.length}" maxlength="{$field.attrib.maxlength}"/>\n    {elseif $field.type == 2}\n      {* text area fields should have an input... so this should never get caled... but just in case *}\n      <textarea name="{$actionid}field_{$fieldid}">{$field.value}</textarea>\n    {elseif $field.type == 3}\n      <select name="{$actionid}field_{$fieldid}">\n        {html_options options=$field.attrib.options selected="{$field.value}"}\n      </select>\n    {elseif $field.type == 4}\n      <select multiple="multiple" size="4" name="{$actionid}field_{$fieldid}[]">\n        {html_options options=$field.attrib.options selected="{$field.value}"}\n      </select>\n    {/if}\n    </div>\n  </div>\n  {/foreach}\n  {/if}\n\n  {if isset($captcha_img)}\n     {* handle captcha image *}\n     <div class="row" style="margin: 1em;">\n       <div class="col30" style="float: left; width: 29%;">&nbsp;</div>\n     <div class="col70" style="float: left; width: 70%;">\n      {$captcha_img}<br/>\n      <input type="text" name="{$actionid}feedback_captcha" value="" size="20"/>\n    </div>\n  </div>\n  {/if}\n\n  <div class="row" style="margin: 1em;">\n    <div class="col30" style="float: left; width: 29%;">\n       &nbsp;\n    </div>\n    <div class="col70" style="float: left; width: 70%;">\n      <input type="submit" name="{$actionid}submit" value="{$mod->Lang(''submit'')}"/>\n    </div>\n  </div>\n  <div class="clearfix"></div>\n\n</fieldset>\n{$formend}\n</div>\n{/if}', '2011-11-16 03:11:03', '2011-11-16 03:13:25'),
('CGFeedback', 'sysdflt_summary_template', '{* summary template *}\r\n<div id="{$actionid}_feedback_summary_report">\r\n{strip}\r\n{if $pagecount > 1}\r\n<p>\r\n  {if $pagenum > 1}\r\n    <a href="{$firstpage_url}" title="{$mod->Lang(''lbl_goto_firstpage'')}">&lt;&lt;</a>&nbsp;\r\n    <a href="{$prevpage_url}" title="{$mod->Lang(''lbl_goto_prevpage'')}">&lt;</a>&nbsp;\r\n  {/if}\r\n  {$mod->Lang(''lbl_page'')}&nbsp;{$pagenum}&nbsp;{$mod->Lang(''lbl_of'')}&nbsp;{$pagecount}\r\n  {if $pagenum < $pagecount}\r\n    &nbsp;<a href="{$nextpage_url}" title="{$mod->Lang(''lbl_goto_nextpage'')}">&gt;</a>&nbsp;\r\n    <a href="{$lastpage_url}" title="{$mod->Lang(''lbl_goto_lastpage'')}">&gt;&gt;</a>\r\n  {/if}\r\n</p>\r\n{* pagecount *}{/if}\r\n\r\n{if isset($stats)}\r\n<div class="feedback_summary_stats">\r\n<h4>{$mod->Lang(''statistics'')}</h4>\r\n{* disini *}\r\n</div>\r\n{/if}\r\n\r\n{if isset($comments)}\r\n{foreach from=$comments item=''one''}\r\n  <div class="feedback_summary_item">\r\n    <div class="feedback_item_title">\r\n      <a href="{$one.detail_url}" title="{$one.title}">{$one.title}</a>\r\n    </div>\r\n\r\n    <div class="feedback_item_authodatee">\r\n      {$mod->Lang(''lbl_created'')}:&nbsp;{$one.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class="feedback_item_rating">\r\n      {$mod->Lang(''lbl_rating'')}:&nbsp;{$one.rating}&nbsp;&nbsp;\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $one.author_name}\r\n    <div class="feedback_item_authorname">\r\n      {$mod->Lang(''lbl_author_name'')}:&nbsp;{$one.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $one.author_email}\r\n    <div class="feedback_item_authoremail">\r\n      {$mod->Lang(''lbl_author_email'')}:&nbsp;{$one.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $one.author_ip}\r\n    <div class="feedback_item_authorip">\r\n      {$mod->Lang(''lbl_author_ip'')}:&nbsp;{$one.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class="feedback_item_data">\r\n      {$one.data|htmlspecialchars}\r\n    </div>\r\n\r\n    {if isset($one.fields)}    \r\n      {foreach from=$one.fields key=''name'' item=''field''}\r\n      <div class="feedback_item_field">\r\n        {$name}:&nbsp;{$field.value|htmlspecialchars}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n{/foreach}\r\n{* comments *}{/if}\r\n{* feedback_summary_report *}</div>\r\n{/strip}\r\n', '2011-11-16 03:12:13', '2011-11-16 03:16:08'),
('Attach', 'default', '<fieldset><legend><b>{$restitle}</b></legend>\r\n<ul id="ressources_list">\r\n{foreach from=$itemlist item="item"}\r\n	<li><a href="{$item->ressource_url}">{$item->ressource_name}</a>{if $item->ressource_type->typename == "File"} ({$item->ext}, {$item->size_wformat}){/if}</li>\r\n{/foreach}\r\n</ul>\r\n\r\n</fieldset>', '2011-11-16 03:57:11', '2011-11-16 03:57:11'),
('CGFeedback', 'sysdflt_detail_template', 'detail template\r\n{* detail template *}\r\n  <div class="feedback_summary_item">\r\n    <div class="feedback_item_title">\r\n      {$mod->Lang(''lbl_title'')}:&nbsp;{$onecomment.title}\r\n    </div>\r\n\r\n    <div class="feedback_item_authorname">\r\n      {$mod->Lang(''lbl_author_name'')}:&nbsp;{$onecomment.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class="feedback_item_rating">\r\n      {$mod->Lang(''lbl_rating'')}:&nbsp;{$onecomment.rating}&nbsp;&nbsp;\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $onecomment.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $onecomment.author_name}\r\n    <div class="feedback_item_authorname">\r\n      {$mod->Lang(''lbl_author_name'')}:&nbsp;{$onecomment.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_email}\r\n    <div class="feedback_item_authoremail">\r\n      {$mod->Lang(''lbl_author_email'')}:&nbsp;{$onecomment.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_ip}\r\n    <div class="feedback_item_authorip">\r\n      {$mod->Lang(''lbl_author_ip'')}:&nbsp;{$onecomment.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class="feedback_item_data">\r\n      {$onecomment.data}\r\n    </div>\r\n\r\n    {if isset($onecomment.fields)}    \r\n      {foreach from=$onecomment.fields key=''name'' item=''field''}\r\n      <div class="feedback_item_field">\r\n        {$name}:&nbsp;{$field.value}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n', '2011-11-16 03:13:21', '2011-11-16 03:14:38'),
('CGFeedback', 'sysdflt_ratings_template', '{* cgfeedback ratings template *}\n{strip}\n<div id="{$actionid}_feedback_ratings_report">\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_count_comments'')}:&nbsp;{$stats.count}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_min_rating'')}:&nbsp;{$stats.min}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_max_rating'')}:&nbsp;{$stats.max}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {$mod->Lang(''lbl_avg_rating'')}:&nbsp;{$stats.avg}\n  </div>\n\n  <div class="feedback_ratings_item">\n    {section name=''rating'' start=1 loop=6}\n    {if $smarty.section.rating.index <= $stats.int_avg}\n       <img src="{$rating_imgs.img_on}" alt=""/>\n    {/if}\n    {/section}\n    {if isset($stats.fraction)}\n       <img src="{$rating_imgs.img_half}" alt=""/>\n    {/if}\n  </div>\n \n{* feedback_ratings_report *}</div>\n{/strip}', '2011-11-16 03:13:28', '2011-11-16 03:13:28');
INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('Uploads', 'uploadform_default', '<!-- Upload form template -->\n{$startform}\n{if isset($max_uploadsize)}\n<input type=''hidden'' name="MAX_UPLOAD_SIZE" value="{$max_uploadsize}"/>\n{/if}\n{if isset($noauthor) } \n{$input_author}\n{else}\n<p>{$prompt_author}:&nbsp;<input type="text" name="{$actionid}input_author" value="{$author}" size="20" maxlength="255"/></p>\n{/if}\n<p>{$prompt_upload}:&nbsp;<input type="file" name="{$actionid}input_browse" value="" size="50" maxlength="255"/></p>\n<p>{$prompt_summary}&nbsp;<input type="text" name="{$actionid}input_summary" value="" size="40" maxlength="255"/></p>\n</p>\n<p>{$prompt_description}&nbsp;<textarea name="{$actionid}input_description"></textarea></p>\n<p>{$prompt_destname}&nbsp;<input type="text" name="{$actionid}input_destname" value="" size="40" maxlength="255"/>&nbsp;{$info_destname}</p>\n<p>{$prompt_thumbnail}&nbsp;<input type="file" name="{$actionid}input_thumbnail" value="" size="40" maxlength="255"/>&nbsp;{$info_thumbnail}</p>\n\n{if isset($fields)}\n  {foreach from=$fields item=''one'' key=''name''}\n  {strip}<p>{$one.name}:&nbsp;\n  {if isset($one.input)}\n    {$one.input}\n  {elseif $one.type == ''textinput''}\n    <input type="text" name="{$actionid}field_{$one.id}" value="{$one.value}" size="{$one.attrib.length}" maxlength="{$one.attrib.maxlength}"/>\n  {elseif $one.type == ''checkbox''}\n    <input type="checkbox" name="{$actionid}field_{$one.id}" value="1"{if $one.value == 1} checked="checked"{/if}/>\n  {elseif $one.type == ''dropdown''}\n    <select name="{$actionid}field_{$one.id}">\n      {html_options options=$one.attrib.options}\n    </select>\n  {elseif $one.type == ''multiselect''}\n    <select multiple="multiple" size="4" name="{$actionid}field_{$one.id}[]">\n      {html_options options=$one.attrib.options}\n    </select>\n  {/if}{/strip}\n  {/foreach}\n{/if}\n{if isset($captcha)}\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p><input type="text" name="{$actionid}input_captcha" size="10" maxlength="10"/></p>\n{/if}\n<p><input type="submit" name="{$actionid}input_submit" value="{$mod->Lang(''submit'')}"/></p>\n{$endform}\n<!-- Upload form template -->\n', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('Uploads', 'summaryrpt_default', '<!-- Start Upload Summary Template -->\n{if isset($input_filter) }\n{$startform}\n{$prompt_filter}{$input_filter}{$hidden_params}{$input_submit}\n{$endform}\n<br/>\n{if isset($matches)}\n{$matches}&nbsp;{$matchestext}\n{/if}\n{/if}\n\n<div>\n{if isset($prevpage_url)}\n  <a href="{$firstpage_url}" title="{$firstpage}">{$firstpage_arrow}</a>\n  <a href="{$prevpage_url}" title="{$prevpage}">{$prevpage_arrow}</a>\n{/if}\n{if $numpages > 1}\n  &nbsp;&nbsp;{$pagetext} {$pagenum} {$oftext} {$numpages}&nbsp;&nbsp;\n{/if}\n{if isset($nextpage_url)}\n  <a href="{$nextpage_url}" title="{$nextpage}">{$nextpage_arrow}</a>\n  <a href="{$lastpage_url}" title="{$lastpage}">{$lastpage_arrow}</a>\n{/if}\n</div>\n\n{foreach from=$items item=''entry'' name=''uploads''}\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    <div class="row" style="width: 100%; padding-bottom: 10px;">\n  {/if}\n \n  <div class="upload" style="float: left; width: 33%;">\n    <a href="{$entry->detailurl}">{$entry->upload_name}</a>&nbsp;({$entry->size})<br/>\n    <a href="{$entry->download_url}" title="{$entry->upload_name}">\n      {if isset($entry->thumbnail_url)}\n        <img src="{$entry->thumbnail_url}" alt="">\n      {else}\n        <img src="{$entry->iconurl}" alt="">\n      {/if}\n    </a>\n    <br/>\n    <a href="{$entry->sendfile_url}" title="">Send this file</a><br/>\n    {$author}: {$entry->author}<br/>\n    {$date}: {$entry->date}<br/>\n    {$entry->summary}\n  </div>\n\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    </div>\n  {/if}\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n    {$field.name}: {$field.value}<br/>\n  {/foreach}\n{/foreach}\n<!-- End Upload Summary Template -->\n', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('Uploads', 'detailrpt_default', '<!-- Start Upload Detail template -->\n<table>\n  <tr>\n    {if isset($entry->thumbnail_url)}\n    <td>{$thumbnail}</td>\n    <td><img src="{$entry->thumbnail_url}" border="0" /></td>\n    {else}\n    <td>{$icon}</td>\n    <td><img src="{$entry->iconurl}" border="0" /></td>\n    {/if}\n  </tr>\n  <tr>\n    <td>{$category}</td>\n    <td>{$entry->category}</td>\n  </tr>\n  <tr>\n    <td>{$id}</td>\n    <td>{$entry->id}</td>\n  </tr>\n  <tr>\n    <td>{$name}</td>\n    <td><a href="{$entry->download_url}" title="{$entry->name}">{$entry->name}</a>&nbsp;&nbsp;\n        <a href="{$entry->sendfile_url}" title="">Send this file</a><br/>\n    </td>\n  </tr>\n  {if isset($entry->delete_url)}\n  <tr>\n    <td>{$delete}</td>\n    <td><a href="{$entry->delete_url}" title="{$delete}" onclick="return confirm(''{$areyousure}'');">{$entry->name}</a></td>\n  </tr>\n  {/if}\n  <tr>\n    <td>{$date}</td>\n    <td>{$entry->date}</td>\n  </tr>\n  <tr>\n    <td>{$author}</td>\n    <td>{$entry->author}</td>\n  </tr>\n  <tr>\n    <td>{$size}</td>\n    <td>{$entry->size}</td>\n  </tr>\n  <tr>\n    <td>{$summary}</td>\n    <td>{$entry->summary}</td>\n  </tr>\n  <tr>\n    <td>{$description}</td>\n    <td>{$entry->description}</td>\n  </tr>\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n  <tr>\n    <td>{$field.name}</td>\n    <td>{$field.value}</td>\n  </tr>\n  {/foreach}\n</table>\n<!-- End Upload Detail template -->\n', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('Uploads', 'sendfileform_default', '{* form to send a file *}\n{if isset($message)}\n<div style="border: 1px solid #99FD99; color: #000; background: #DAFEDA;">\n{$message}\n</div>\n{/if}\n\n{if isset($error)}\n<div style="border: 1px dashed #FD9999; color: #000; background: #FEDADA;">\n{$error}\n</div>\n{/if}\n\n{$formstart}\n<fieldset>\n<legend>{$mod->Lang(''file_info'')}:&nbsp;</legend>\n<p>{$mod->Lang(''name'')}:&nbsp;{$upload_info.upload_name} ({$upload_info.upload_id})</p>\n<p>{$upload_info.upload_summary}</p>\n</fieldset>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">\n    {$mod->Lang(''addressees'')}\n  </p>\n  <p style="margin-left: 4em; margin-top: 0;">\n   <textarea name="{$actionid}input_sendto" rows="2" cols="50">{$sendto}</textarea>\n  </p>\n</div>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">\n    {$mod->Lang(''subject'')}\n  </p>\n  <p style="margin-left: 4em; margin-top: 0;">\n    <input type="text" name="{$actionid}input_subject" size="50" maxlength="50" value="{$subject}"/>\n  </p>\n</div>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">\n    {$mod->Lang(''notes'')}\n  </p>\n  <p style="margin-left: 4em; margin-top: 0;">\n   <textarea name="{$actionid}input_notes" rows="5" cols="50">{$notes}</textarea>\n  </p>\n</div>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">&nbsp;</p>\n  <p style="margin-left: 4em; margin-top: 0;">\n    <input type="submit" name="{$actionid}input_submit" value="{$mod->Lang(''send'')}"/>\n    <input type="submit" name="{$actionid}input_cancel" value="{$mod->Lang(''cancel'')}"/>\n  </p>\n</div>\n{$formend}', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('Uploads', 'yousenditform_default', '{* yousendit interface *}\n{if isset($message)}\n<div style="border: 1px solid #99FD99; color: #000; background: #DAFEDA; margin-bottom: 0.5em;">\n<ul>\n  {foreach from=$messages item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{if isset($errors)}\n<div style="border: 1px dashed #FD9999; color: #000; background: #FEDADA; ; margin-bottom: 0.5em;">\n<ul>\n  {foreach from=$errors item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{$startform}\n<p>{$mod->Lang(''author'')}:&nbsp;\n  <input type="text" name="author" size="20" maxlength="255" value="{$author}"/>\n</p>\n\n<p>{$mod->Lang(''summary'')}:\n  <input type="text" name="{$actionid}input_summary" size="40" maxlength="255" value="{$summary}"/>\n</p>\n\n<p>{$mod->Lang(''description'')}:&nbsp;\n  <textarea name="{$actionid}input_description">{$description}</textarea>\n</p>\n\n<p>{$mod->Lang(''destname'')}:&nbsp;\n  <input type="text" name="{$actionid}input_destname" size="40" maexlength="255" value="{$destname}"/><br/>\n  {$mod->Lang(''info_destname'')}\n</p>\n\n<p>{$mod->Lang(''thumbnail'')}:&nbsp;\n  <input type="file" name="{$actionid}input_thumbnail" size="50"/>\n</p>\n\n<p>{$mod->Lang(''prompt_replace'')}:&nbsp;\n  <input type="hidden" name="{$actionid}input_replace" value="0"/>\n  <input type="checkbox" name="{$actionid}input_replace" value="1"/><br/>\n  {$mod->Lang(''info_replace'')}\n</p>\n\n<p>*{$mod->Lang(''upload'')}:&nbsp;\n  <input type="file" name="{$actionid}input_browse" size="50"/>\n</p>\n\n<br/>\n<hr/>\n<br/>\n\n<p>*{$mod->Lang(''to'')}:&nbsp;\n  <textarea name="{$actionid}input_sendto" rows="2" cols="50">{$sendto}</textarea>\n</p>\n\n<p>*{$mod->Lang(''subject'')}:&nbsp;\n  <input type="text" name="{$actionid}input_subject" value="{$subject}" size="50"/>\n</p>\n\n<p>{$mod->Lang(''notes'')}:&nbsp;\n  <textarea name="{$actionid}input_notes" rows="5" cols="50">{$notes}</textarea>\n</p>\n\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p>{$input_captcha}</p>\n<p>\n  <input type="submit" name="{$actionid}input_submit" value="{$mod->Lang(''send'')}"/>\n  <input type="submit" name="{$actionid}input_cancel" value="{$mod->Lang(''cancel'')}"/>\n</p>\n\n{$endform}\n<!-- Upload form template -->\n', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('Uploads', 'upload_sendfilerpt', '{* send file form template *}\n<html>\n  <body>\n    <h3>Greetings</h3>\n    <p>You are receiving this email because somebody has sent you information about how to access a specific file on &quot;{sitename}&quot;.</p>\n    <p>This file is located on a remote server, and has not been attached to this email.  To retrieve the file you must click on <a href="{$entry->download_url}">this link</a>.  If you are unable to click on this link, then copy the following URL into the address bar on your web browser:<br/>{$entry->download_url}</p>\n    {if isset($hours)}\n      <p>Access to this file is time limited.  You have {$hours} hours from now to access this file.</p>\n    {/if}\n    {if isset($downloads)}\n      <p>You may download this file, or attempt to download it a maximum of {$downloads} times.</P\n    {/if}\n\n    If you experience difficulty with the link provided in this email please contact the administratrors at {sitename}\n\n    {if isset($entry->thumbnail_url)}\n      <img src="{$entry->thumbnail_url}" border="0"><br/>\n    {/if}\n\n    {if $notes != ''''}\n    <h4>Notes:</h4>\n    <p>{$notes}</p>\n    {/if}\n\n    <h4>File Details:</h4>\n    <table border="0">\n      <tr><td>{$mod->Lang(''name'')}:</td><td>{$entry->name}</td></tr>\n      <tr><td>{$mod->Lang(''size'')}:</td><td>{$entry->size}</td></tr>\n      <tr><td>{$mod->Lang(''summary'')}:</td><td>{$entry->summary}</td></tr>\n      <tr><td>{$mod->Lang(''author'')}:</td><td>{$entry->author}</td></tr>\n      <tr><td>{$mod->Lang(''description'')}:</td><td>{$entry->description}</td></tr>\n    </table>\n  </body>\n</html>', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('Uploads', 'upload_emailtemplate', '<!-- Email notify template -->\n<p>This message is to notify you that a file has been uploaded to your website.  The details of this upload are as follows:</p>\n<p>Name: {$name}</p>\n<p>Size: {$size}</p>\n<p>Summary: {$summary}</p>\n<p>Description: {$description}</p>\n<p>Author: {$author}</p>\n<p>IP Address: {$ip_address}</p>\n<!-- Email notify template -->\n', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
('FrontEndUsers', 'feusers_loginform', '{* login form template *}\r\n{* this is a sample template, feel free to customize it *}\r\n{$startform}\r\n{if $error}\r\n  {$error}<br>\r\n{/if}\r\n\r\n<TABLE width="100%" border="0" cellspacing="5" cellpadding="5">\r\n<TR>\r\n	<TD>Email</TD>\r\n	<TD>{$input_username}</TD>\r\n</TR>\r\n<TR>\r\n	<TD>Password</TD>\r\n	<TD>{$input_password}</TD>\r\n</TR>\r\n\r\n<tr>\r\n<td colspan="2">\r\n\r\n {if isset($captcha)}\r\n   <br/>\r\n   {$captcha_title}: {$input_captcha}<br/>\r\n   {$captcha}\r\n {/if}\r\n {if isset($input_rememberme)}\r\n   <br/>\r\n   {$input_rememberme}&nbsp;{$prompt_rememberme}<br/>\r\n {/if}\r\n\r\n <br/>\r\n\r\n <input type="submit" class="search-button" name="{$feuactionid}submit" value="{$mod->Lang(''login'')}"/><br/>\r\n<br/>\r\n{*\r\n<a href="{cms_selflink href=''register''}">Register new user</a>\r\n*}\r\n<br />\r\n  <a href="{$url_forgot}" title="{$mod->Lang(''info_forgotpw'')}">{$mod->Lang(''forgotpw'')}</a>\r\n{*\r\n<br/>\r\n  <a href="{$url_lostun}" title="{$mod->Lang(''info_lostun'')}">{$mod->Lang(''lostusername'')}</a>\r\n*}\r\n</td>\r\n</tr>\r\n\r\n</TABLE>\r\n{$endform}\r\n', '2011-11-16 04:32:11', '2011-12-05 03:18:35'),
('FrontEndUsers', 'feusers_logoutform', '\n<!-- Logout form template -->\n{if isset($message)}<div class="message">{$message}</div>{/if}\n  <p>{$prompt_loggedin}&nbsp;{$username}</p> \n  <p><a href="{$url_logout}" title="{$mod->Lang(''info_logout'')}">{$mod->Lang(''logout'')}</a></p>\n<!-- Logout form template -->\n ', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_changesettingsform', '<!-- change settings template -->\n{$title}\n{if $message != ''''}\n  {if $error != ''''}\n    <p><font color="red">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n{$startform}\n {if $controlcount > 0}\n  <center>\n  <table width="75%">\n     {foreach from=$controls item=control}\n  <tr>\n     <td>{$control->hidden}<font color="{$control->color}">{$control->prompt}{$control->marker}</font></td>\n     <td>\n       {if isset($control->image)}{$control->image}<br/>{/if}\n       {$control->control}{$control->addtext}\n       {if isset($control->control2)}{$control->prompt2}&nbsp;{$control->control2}<br/>{/if}\n     </td>\n  </tr>\n {/foreach}\n  </table>\n  </center>\n {/if}\n {$hidden}{$hidden2}{$submit}\n{$endform}\n<!-- change settings template -->\n', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_forgotpasswordform', '<!-- forgot password template -->\n{$startform}\n{$title}\n{if !empty($message) }\n  {if !empty($error) }\n    <p><font color="red">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>{$lostpw_message}</p>\n<p>{$prompt_username}&nbsp;{$input_username}</p>\n<p>{$hidden}{$submit}&nbsp{$cancel}</p>\n{$endform}\n<!-- forgot password template --> \n', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_forgotpasswordemailform', '\n<!-- forgot password email template -->\n<p>{$message_forgotpwemail}</p>\n<p>{$prompt_code}&nbsp;{$data_code}</p>\n<p>{$prompt_link}&nbsp;{$data_link}<p>\n<!-- forgot password email template -->\n  ', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_forgotpasswordverifyform', '<!-- forgot password verification template -->\n{$startform}\n{$title}\n{if !empty($message)}\n  {if !empty($error) }\n    <p><font color="red">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>{$prompt_username}&nbsp;{$input_username}</p>\n<p>{$prompt_code}&nbsp;{$input_code}</p>\n<p>{$prompt_password}&nbsp;{$input_password}</p>\n<p>{$prompt_repeatpassword}&nbsp;{$input_repeatpassword}</p>\n<p>{$hidden}{$submit}</p>\n{$endform}\n<!-- forgot password verification template -->\n', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_lostunform', '{* lost username confirm template form *}\n<h4>{$title}</h4>\n{if isset($message)}<h5 class="error">{$message}</h5>{/if}\n{if $controlcount > 0}\n  {$startform}{$hidden}\n    <div class="pagerow">\n      <div class="page_prompt">{$prompt_password}</div>\n      <div class="page_input">{$input_password}</div>\n    </div>\n    {foreach from=$controls item=''entry''}\n       <div class="pagerow">\n          <div class="page_prompt">{$entry->hidden}{$entry->prompt}</div\n          <div class="page_input">{$entry->control}{$entry->addtext}</div>\n       </div>\n    {/foreach}\n    <div class="pagerow">{$submit}{$cancel}</div>\n    <div class="pagerow">\n       {$captcha_title}{$input_captcha}{$captcha}\n    </div>\n  {$endform}\n{/if}', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_lostunform_confirm', '{* lost username confirm template form *}\n<p>{$premsg}</p>\n<p>{$prompt_yourusernameis}: <strong>{$username}</strong>.</p>\n<p>{$postmsg}</p>', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'notification_template', '{* this template defines how notification emails will be sent *}\r\n{* the same template is used for all notification events so you may need \r\n   to throw in some logic here to display all of the information you want\r\n   in each email. *}\r\n{* all smarty variables can be used in this template, including functions\r\n   from customcontent for frontend generated events *}\r\n{* I encourage you to use the {get_template_vars} smarty plugin and the\r\n   print_r smarty modifier to see what variables are available *}\r\n\r\n{get_template_vars}', '2011-11-16 04:32:11', '2011-11-23 02:10:45'),
('FrontEndUsers', 'feusers_viewuser', '{* view user template *}\n<p>{$feu->Lang(''id'')}:&nbsp;{$userinfo.id}</p>\n<p>{$feu->Lang(''username'')}:&nbsp;{$userinfo.username}</p>\n<p>{$feu->Lang(''email'')}:&nbsp;<a href="mailto:{$email_address}">{$email_address}</p>\n<p>{$feu->Lang(''expires'')}:&nbsp;{$userinfo.expires}</p>\n{foreach from=$user_properties item=''entry''}\n{if $entry.type != 0}\n<p>{$entry.prompt}:&nbsp;{$entry.data}</p>\n{/if}\n{/foreach}\n', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('FrontEndUsers', 'feusers_resetsession', '{* reset session template *}\n{* NOTE: this template requires jquery be available in any page that it is used on *}\n\n<p><a href="javascript:;" name="feu_manual_reset">Click Here To Confirm Login Status</a></p>{* safe to remove this *}\n\n{* style information for the modal window and the mask... these can be removed and placed in a CMSMS stylesheet *}\n{literal}\n<style type="text/css">\n#feu_modal {\n  background-color: #fff;\n  border: 1px solid #00f;\n  padding: 2px;\n  margin:  2px;\n}\n#feu_mask {\n  background-color: #000;\n}\n#feu_modal .title {\n  background-color: #00f;\n  color:  #fff;\n  padding: 0px;\n}\n</style>\n{/literal}\n\n{capture assign=''feu_theform''}{strip}\n{* the reset-session form, a simple form to display a message with a title to the user with two options... okay, and cancel... the name of these buttons is important, as well the strip tag is important *}\n<form action="javascript:;">\n<p class="title">{$mod->Lang(''title_reset_session'')}</p>\n<p class="row">{$mod->Lang(''msg_reset_session'')}</p>\n<p class="row">\n  <input type="submit" name="feu_ok" value="{$mod->Lang(''ok'')}"/>\n  <input type="submit" name="feu_cancel" value="{$mod->Lang(''cancel'')}"/>\n</p>\n</form>\n{/strip}{/capture}\n\n{literal}\n<script type="text/javascript">\n//<![CDATA[\n// the timer interval (how often you want to display the dialog to your users\nvar timer_interval = {/literal}{$session_timeout}{literal} - 30;\n\n// a function to hide the modal dialog -- you can modify this function\nfunction feu_close_modal()\n{\n   jQuery(''#feu_modal'').fadeOut(2000);\n   jQuery(''#feu_mask'').fadeOut(1000);\n}\n\n// a function to display the modal dialog... you can modify this function\nfunction feu_open_modal()\n{\n  var maskHeight = jQuery(document).height();\n  var maskWidth = jQuery(document).width();\n\n  // set the mask size to fill up the whole screen\n  jQuery(''#feu_mask'').css({''width'':maskWidth,''height'':maskHeight});\n\n  // transition effect\n  jQuery(''#feu_mask'').fadeIn(1000);\n  jQuery(''#feu_mask'').fadeTo("slow",0.8);\n\n  // get the top left corner of the popup\n  var winHeight = jQuery(window).height();\n  var winWidth = jQuery(window).width();\n\n  var popupHeight = jQuery(''#feu_modal'').height();\n  var popupWidth  = jQuery(''#feu_modal'').width();\n\n  var top = winHeight/2 - popupHeight/2;\n  var left = winWidth/2 - popupWidth/2;\n  // set the popup window to center\n  jQuery(''#feu_modal'').css({''top'':top,''left'':left});\n\n  // transition effect\n  jQuery(''#feu_modal'').fadeIn(2000);\n}\n\nfunction feu_user_cancelled()\n{\n  // a callback function that may be customized to allow displaying a message to the user\n  // to indicate that they may be logged out at any time.\n  alert(''You have chosen to disregard the session warning, you may continue to browse this site however some functionality may be unavailable to you until you login again'');\n}\n\n// *\n// * do not modify below here unless you are an experienced jquery programmer *\n// *\n\nif( timer_interval <= 0 )\n  {\n     timer_interval = 0;\n  }\nvar dialogcontents = ''{/literal}{$feu_theform}{literal}'';\n\n\n// we have jQuery\njQuery(document).ready(function(){\n  // create a new id for our stuff\n  jQuery(''body'').append(''<div id="feu_body"></div>'');\n  \n  // create the mask and append it to the dom\n  jQuery(''#feu_body'').append(''<div id="feu_mask"></div>'');\n\n  // create the modal dialog and append it to the DOM\n  jQuery(''#feu_body'').append(''<div id="feu_modal">''+dialogcontents+''</div>'');\n  \n  // and a junk div\n  jQuery(''#feu_body'').append(''<div id="feu_junk" style="display: none;"></div>'');\n\n  // handle click events\n  jQuery(''#feu_modal input[name=feu_ok]'').click(function(e){\n    e.preventDefault();\n\n    // do the ajax request\n    var url = ''{/literal}{$reset_url}{literal}'';\n    var url = url.replace(/amp;/g,'''');\n    jQuery(''#feu_junk'').load(url);\n\n    // and done.\n    feu_close_modal();\n   });\n  jQuery(''#feu_modal input[name=feu_cancel]'').click(function(e){\n    e.preventDefault();\n    feu_close_modal();\n    feu_user_cancelled();\n  });\n  jQuery(''a[name=feu_manual_reset]'').click(function(e){\n    e.preventDefault();\n    feu_open_modal();\n  });\n\n  // create our timer\n  if( timer_interval > 0 )\n     {\n        setTimeout(feu_open_modal,timer_interval * 1000);\n     }\n\n});\n//]]>\n</script>\n{/literal}\n\n{* required css *}\n{literal}\n<style type="text/css">\n#feu_modal {\n  position: absolute;\n  z-index: 9999;\n  display: none;\n}\n#feu_mask {\n  top: 0;\n  left: 0;\n  position: absolute;\n  z-index: 9000;\n  display: none;\n}\n</style>\n{/literal}', '2011-11-16 04:32:11', '2011-11-16 04:32:11'),
('Album', 'cmotion-image-gallery', '{* CMotion gallery template *}\n\n{* Include JS files. You can move this to the head of your page template if you want *}\n{literal}\n<script type="text/javascript" src="modules/Album/templates/db/js/motiongallery.js">\n\n/***********************************************\n* CMotion Image Gallery- Â© Dynamic Drive DHTML code library (www.dynamicdrive.com)\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\n* This notice must stay intact for legal use\n* Modified by Jscheuer1 for autowidth and optional starting positions\n***********************************************/\n\n</script>\n\n<script type="text/javascript">\n\n/***********************************************\n* Dynamic Ajax Content- Â© Dynamic Drive DHTML code library (www.dynamicdrive.com)\n* This notice MUST stay intact for legal use\n* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code\n***********************************************/\n\nvar bustcachevar=1 //bust potential caching of external pages after initial request? (1=yes, 0=no)\nvar loadedobjects=""\nvar rootdomain="http://"+window.location.hostname\nvar bustcacheparameter=""\n\nfunction ajaxpage(url, containerid){\nvar page_request = false\nif (window.XMLHttpRequest) // if Mozilla, Safari etc\npage_request = new XMLHttpRequest()\nelse if (window.ActiveXObject){ // if IE\ntry {\npage_request = new ActiveXObject("Msxml2.XMLHTTP")\n} \ncatch (e){\ntry{\npage_request = new ActiveXObject("Microsoft.XMLHTTP")\n}\ncatch (e){}\n}\n}\nelse\nreturn false\npage_request.onreadystatechange=function(){\nloadpage(page_request, containerid)\n}\nif (bustcachevar) //if bust caching of external page\nbustcacheparameter=(url.indexOf("?")!=-1)? "&"+new Date().getTime() : "?"+new Date().getTime()\npage_request.open(''GET'', url+bustcacheparameter, true)\npage_request.send(null)\n}\n\nfunction loadpage(page_request, containerid){\nif (page_request.readyState == 4 && (page_request.status==200 || window.location.href.indexOf("http")==-1))\ndocument.getElementById(containerid).innerHTML=page_request.responseText\n}\n\nfunction loadobjs(){\nif (!document.getElementById)\nreturn\nfor (i=0; i<arguments.length; i++){\nvar file=arguments[i]\nvar fileref=""\nif (loadedobjects.indexOf(file)==-1){ //Check to see if this object has not already been added to page before proceeding\nif (file.indexOf(".js")!=-1){ //If object is a js file\nfileref=document.createElement(''script'')\nfileref.setAttribute("type","text/javascript");\nfileref.setAttribute("src", file);\n}\nelse if (file.indexOf(".css")!=-1){ //If object is a css file\nfileref=document.createElement("link")\nfileref.setAttribute("rel", "stylesheet");\nfileref.setAttribute("type", "text/css");\nfileref.setAttribute("href", file);\n}\n}\nif (fileref!=""){\ndocument.getElementsByTagName("head").item(0).appendChild(fileref)\nloadedobjects+=file+" " //Remember this object as being already added to page\n}\n}\n}\n\n</script>\n\n<!-- End gallery script -->\n{/literal}\n\n\n{* Album List *}\n{if !$album}\n<ul class="albumlist">\n	{foreach from=$albums item=album}\n	<li class="thumb">\n 	<a href="{$album->link}">\n<img src="{$album->thumbnail}" alt="{$album->name|escape:''html''}" title="{$album->name|escape:''html''}"{$album->autothumbnailsize} /></a>\n\n<p class="albumname">{$album->name|escape:''html''}<br />\n<span class="albumpicturecount">({$album->picturecount} images)</span><br />\n<span class="albumcomment">{$album->comment}</span></p>\n</li>\n	{/foreach}\n</ul>\n\n{else}\n\n\n\n{* Big Picture *}\n\n\n\n<div class="largeview">\n\n{* The image alt/title-attribute uses the sitename-tag with a copyright-symbol. You can also use other tags from this album template. *}\n\n<img id="maincmotionpic" src="{$picture->picture}" alt="&copy; {sitename}" title="&copy; {sitename}"/>\n\n</div>\n\n\n\n{* End Big Picture *}\n\n\n\n\n\n{*CMotion gallery with thumbnail list*}\n\n\n\n<div id="motioncontainer" style="position:relative;overflow:hidden;">\n\n <div id="motiongallery" style="position:absolute;left:0;top:0;white-space: nowrap;">\n\n   <div id="trueContainer">\n\n	{foreach from=$pictures item=picturesrow}\n\n	    {foreach from=$picturesrow item=onepicture}\n\n{* Change alt/title-tag to what you need. *}\n\n	    <a href="{$onepicture->link}"  title="{$onepicture->name|escape:''html''} | {$picture->comment|escape:''html''}" onclick="document.getElementById(''maincmotionpic'').setAttribute(''src'', ''{$onepicture->picture}'');return false;"> <img src="{$onepicture->thumbnail}" alt="{$onepicture->name|escape:''html''}"/></a>\n\n\n\n      {if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}\n\n\n\n	    {/foreach}\n\n	{/foreach}\n\n   </div>\n\n </div>\n\n</div>\n\n\n\n{/if}\n\n\n<div style="clear:both"></div>', '2011-11-17 02:49:02', '2011-11-17 02:49:02'),
('SelfRegistration', 'selfreg_reg2template', '\n<!-- Registration 1 template -->\n{$title}\n{if isset($messsage) && $message != ''''}\n  {if isset($error) && $error != ''''}\n    <p><font color="red">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n{$startform}\n  <center>\n  <table width="75%">\n  <tr>\n    <td>{$prompt_username}</font>\n    </td>\n    <td>{$input_username}</td>\n  </tr>\n  <tr>\n    <td>{$prompt_password}</font>\n    </td>\n    <td>{$input_password}</td>\n  </tr>\n  <tr>\n    <td>{$prompt_code}</font>\n    </td>\n    <td>{$input_code}</td>\n  </tr>\n  </table>\n  </center>\n<br/>\n {$hidden}{$hidden2}{$submit}\n{$endform}\n<!-- Registration 2 template -->\n ', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('News', 'formFrontEndNewsForm', '{* original form template *}\r\n\r\n{if isset($error)}\r\n<h3><font color="red">{$error}</font></h3>\r\n{else}\r\n{if isset($message)}\r\n<h3>{$message}</h3>\r\n{/if}\r\n{/if}\r\n{$startform}\r\n<div class="pageoverflow">\r\n    <p class="pagetext">*{$titletext}:</p>\r\n    <p class="pageinput">{$inputtitle}</p>\r\n</div>\r\n<div class="pageoverflow">\r\n    <p class="pagetext">{$categorytext}:</p>\r\n    <p class="pageinput">{$inputcategory}</p>\r\n</div>\r\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\r\n<div class="pageoverflow">\r\n    <p class="pagetext">{$summarytext}:</p>\r\n    <p class="pageinput">{$inputsummary}</p>\r\n</div>\r\n{/if}\r\n<div class="pageoverflow">\r\n    <p class="pagetext">*{$contenttext}:</p>\r\n    <p class="pageinput">{$inputcontent}</p>\r\n</div>\r\n<!--\r\n<div class="pageoverflow">\r\n    <p class="pagetext">{$extratext}:</p>\r\n    <p class="pageinput">{$inputextra}</p>\r\n</div>\r\n\r\n<div class="pageoverflow">\r\n    <p class="pagetext">{$startdatetext}:</p>\r\n    <p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\r\n</div>\r\n<div class="pageoverflow">\r\n    <p class="pagetext">{$enddatetext}:</p>\r\n    <p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\r\n</div>\r\n-->\r\n{if isset($customfields)}\r\n{foreach from=$customfields item=''onefield''}\r\n<div class="pageoverflow">\r\n    <p class="pagetext">{$onefield->name}:</p>\r\n    <p class="pageinput">{$onefield->field}</p>\r\n</div>\r\n{/foreach}\r\n{/if}\r\n<div class="pageoverflow">\r\n    <p class="pagetext">&nbsp;</p>\r\n    <p class="pageinput">{$hidden}{$submit}{$cancel}</p>\r\n</div>\r\n{$endform}\r\n', '2011-11-21 09:40:36', '2011-12-12 06:43:02'),
('SelfRegistration', 'selfreg_postreg1_template', '<!-- Post Registration 1 template -->\r\n{$title}\r\n{if isset($messasge) && $message != ''''}\r\n  {if isset($error) && $error != ''''}\r\n    <p><font color="red">{$message}</font></p>\r\n  {else}\r\n    <p>{$message}</p>\r\n  {/if}\r\n{/if}\r\n<p>Thank you {$username} for registering with {$sitename}.  An email has been sent to {$email} with instructions on how to continue the registration process</p>\r\n<!-- Post Registration 1 template -->\r\n', '2011-11-23 02:42:42', '2011-11-23 03:42:57'),
('SelfRegistration', 'selfreg_emailconfirm_template', '\n<!-- EmailConfirm template -->\n<html>\n<body>\n<p>Greetings {$name} welcome to the site.  This email is being sent because somebody registered for access to {$sitename} using this email address. If this was you, please click on the following link and enter your username, password, and the unique code below</p>\n   <p>Follow this link: {$link}</p>\n   <p>or this link: {$smalllink}</p>\n   <p>Code: {$code}</p>\n</body>\n</html>\n<!-- EmailConfirm template -->\n', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_emailconfirm_texttemplate', '\nGreetings {$name} welcome to the site.  This email is being sent because somebody registered for access to {$sitename} using this email address. If this was you, please click on the following link and enter your username, password, and the unique code below.\n\nFollow this link: {$url}\nor this link: {$smallurl}</p>\nCode: {$code}\n', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_emailuseredited_template', '\n<!-- EmailUserEdited template -->\n<html>\n<body>\n<p>Greetings {$name} welcome to the site.  This email is being sent because, although you have already registered with {$sitename}, there was an error in your input.  The administrator has done his best to correct this data, and you are now being sent an updated registration form. Please click on the following link and enter your username, password, and the unique code below</p>\n   <p>Follow this link: {$link}</p>\n   <p>or this link: {$smalllink}</p>\n   <p>Password: {$password}</p>\n   <p>Code: {$code}</p>\n</body>\n</html>\n<!-- EmailUserEdited template -->\n', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_emailuseredited_texttemplate', '\nGreetings {$name} welcome to the site.  This email is being sent because, although you have already registered with {$sitename}, there was an error in your input.  The administrator has done his best to correct this data, and you are now being sent an updated registration form. Please click on the following link and enter your username, password, and the unique code below\n   Follow this link: {$url}\n     or this link: {$smallurl}</p>\n   Password: {$password}\n   Code: {$code}\n', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_finalmessage_template', '\n<!-- FinalMessage Template -->\n<p>Welcome {$username} to {$sitename}.  Your registration is complete.  Please login to continue</p>\n<!-- FinalMessage Template -->\n  ', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_sendanotheremail_template', '\n<!-- SendAnotherEmail Template -->\n{$title}\n{if isset($message) && $message != ''''}\n  {if isset($message) && $error != ''''}\n    <p><font color="red">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>I didn''t receive my confirmation email, please send another one.</p>\n<p>My Username is: {$startform}{$input_username}&nbsp;{$submit}{$endform}</p>\n<!-- SendAnotherEmail Template -->\n  ', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('SelfRegistration', 'selfreg_post_sendanotheremail_template', '\n<!-- Post SendAnotherEmail template -->\n{$title}\n{if isset($message) && $message != ''''}\n  {if isset($error) && $error != ''''}\n    <p><font color="red">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>Thank you {$username} for registering with {$sitename}.  We are sorry you had difficulty receiving your email.  A second email has been sent to {$email} with instructions on how to continue the registration process</p>\n<!-- Post SendAnotherEmail template -->\n', '2011-11-23 02:42:42', '2011-11-23 02:42:42'),
('CGFeedback', 'summary_SimpleSummaryComment', '{literal}\r\n<script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n<script type="text/javascript" src="uploads/popup/js/thickbox.js"></script>\r\n{/literal}\r\n\r\n\r\n{* summary template *}\r\n<div id="{$actionid}_feedback_summary_report">\r\n{strip}\r\n{if $pagecount > 1}\r\n<p>\r\n  \r\n\r\n<table border="0" cellspacing="1" cellpadding="1" width="30%">\r\n	<tr>\r\n		{if $pagenum > 1}\r\n			<td width="10%">			\r\n				<a href="{$firstpage_url}" title="{$mod->Lang(''lbl_goto_firstpage'')}">\r\n					<img src="uploads/images/top.png" height="15"></a>\r\n			</td>\r\n			<td width="5%">\r\n			 \r\n			</td>\r\n			<td width="10%">\r\n				<a href="{$prevpage_url}" title="{$mod->Lang(''lbl_goto_prevpage'')}">\r\n					<img src="uploads/images/prev.png" height="15"> </a>		\r\n			</td>\r\n		{else}\r\n			<td width="10%">			\r\n				 \r\n			</td>\r\n			<td width="5%">\r\n				 \r\n			</td>\r\n			<td width="10%">\r\n				 \r\n			</td>\r\n		{/if}\r\n\r\n		<td align="center">\r\n			{$mod->Lang(''lbl_page'')}{$pagenum} {$mod->Lang(''lbl_of'')} {$pagecount}\r\n		</td>\r\n\r\n		{if $pagenum < $pagecount}\r\n			<td width="10%">			\r\n				<a href="{$nextpage_url}" title="{$mod->Lang(''lbl_goto_nextpage'')}">\r\n					<img src="uploads/images/next.png" height="15"></a>\r\n			</td>\r\n			<td width="5%">\r\n				 \r\n			</td>\r\n			<td width="10%">\r\n				<a href="{$lastpage_url}" title="{$mod->Lang(''lbl_goto_lastpage'')}">\r\n					<img src="uploads/images/bottom.png" height="15"></a>			\r\n			</td>\r\n		{else}\r\n			<td width="10%">			\r\n				 \r\n			</td>\r\n			<td width="5%">\r\n				 \r\n			</td>\r\n			<td width="10%">\r\n				 \r\n			</td>\r\n		{/if}\r\n	</tr>\r\n</table>\r\n\r\n\r\n</p>\r\n{* pagecount *}{/if}\r\n\r\n{* disini *}\r\n\r\n{if isset($comments)}\r\n{foreach from=$comments item=''one''}\r\n  <div class="feedback_summary_item">\r\n    <div class="feedback_item_title">\r\n      <a class="thickbox" href="{$one.detail_url}" title="{$one.title}">{$one.title}</a>\r\n    </div>\r\n\r\n    <div class="feedback_item_authodatee">\r\n      {* {$mod->Lang(''lbl_created'')}:*}\r\n\r\n<table border="0" width="100%" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td width="70%">\r\n{$one.created|cms_date_format} by {$one.author_name} ({$one.author_email})\r\n</td>\r\n<td align="right">\r\n{section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n    </div>\r\n{*\r\n    <div class="feedback_item_rating">\r\n       {$mod->Lang(''lbl_rating'')}:{$one.rating}\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n*}\r\n\r\n\r\n{*    {if $one.author_name} \r\n    <div class="feedback_item_authorname"> *}\r\n      {* {$mod->Lang(''lbl_author_name'')}:{$one.author_name} ({$one.author_email}) *}\r\n{* Author:{$one.author_name} ({$one.author_email}) *}\r\n{*    </div>\r\n    {/if} *}\r\n{*\r\n    {if $one.author_email}\r\n    <div class="feedback_item_authoremail">\r\n      {$mod->Lang(''lbl_author_email'')}:{$one.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $one.author_ip}\r\n    <div class="feedback_item_authorip">\r\n      {$mod->Lang(''lbl_author_ip'')}:{$one.author_ip}\r\n    </div>\r\n    {/if}\r\n*}\r\n    <div class="feedback_item_data">\r\n      {$one.data|htmlspecialchars}\r\n    </div>\r\n\r\n    {if isset($one.fields)}    \r\n      {foreach from=$one.fields key=''name'' item=''field''}\r\n      <div class="feedback_item_field">\r\n        {$name}:{$field.value|htmlspecialchars}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n{/foreach}\r\n{* comments *}{/if}\r\n{* feedback_summary_report *}</div>\r\n\r\n\r\n\r\n{/strip}\r\n', '2011-11-28 07:28:42', '2011-11-29 04:18:38'),
('News', 'detailDetailNewsTemplate', '{literal}\r\n<script type="text/javascript" src="uploads/popup/js/jquery-1.4.4.js"></script>\r\n<script type="text/javascript" src="uploads/popup/js/thickbox.js"></script>\r\n{/literal}\r\n\r\n{save_current_page_id articleid=$entry->id}\r\n\r\n{* News module entry object reference:\r\n   ------------------------------\r\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\r\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\r\n   you will find a referennce to the available data.\r\n\r\n   ====\r\n   news_article Object Reference\r\n   ====\r\n\r\n     Members:\r\n     --\r\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\r\n\r\n     The following members are available in the entry array:\r\n   \r\n     id (integer)           = The unique article id.\r\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\r\n     title (string)         = The title of the article.\r\n     summary (text)         = The summary text (may be empty or unset).\r\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\r\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\r\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\r\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\r\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\r\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\r\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\r\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\r\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\r\n     category (string)      = The name of the category that this article is associated with.\r\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\r\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\r\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\r\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\r\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\r\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\r\n     \r\n\r\n   ====\r\n   news_field Object Reference\r\n   ====\r\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\r\n\r\n     Members:\r\n     --------\r\n     id (integer)  = The id of the field definition\r\n     name (string) = The name of the field\r\n     type (string) = The type of field\r\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\r\n     item_order (integer) = The order of the field\r\n     public (integer) = A flag indicating wether the field is public or not\r\n     value (mixed)    = The value of the field.\r\n\r\n\r\n   ====\r\n   Below, you will find the normal detail template information.  Modify this template as desired.\r\n*}\r\n\r\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=''canonical'' value=$entry->canonical}\r\n{/if}\r\n\r\n\r\n\r\n<table border="0" width="100%">\r\n<tr>\r\n<td width=80%><h4 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h4></td>\r\n<td width=20%>\r\n\r\n{* display custom field as file *}\r\n{if isset($entry->fields)}\r\n	{foreach from=$entry->fields item=''field''}\r\n		<div class="NewsSummaryField">\r\n			{if $field->type == ''file''}\r\n\r\n				{* select file type to display download icon *}\r\n				{if substr_count($field->value,"xls")}\r\n					<TABLE border="0" width="100%">\r\n						<TR>						\r\n							<TD align="right">\r\n								<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n									<img src="uploads/images/excel.png" width="50" />\r\n								</a>\r\n							</TD>\r\n						</tr><tr>\r\n							<TD align="right"><a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n								<div class="NewsSummaryMorelink">\r\n									<a href="{$entry->file_location}/{$field->value}" \r\n										title="{$field->value}" \r\n										style="color: #FFFFFF; background-color: #A71517; padding: 4px 4px 4px 4px; font-size: 10px">\r\n										<em>DOWNLOAD</em>\r\n									</a>\r\n								</div>\r\n								</a>\r\n							</TD>\r\n						</TR>\r\n					</TABLE>\r\n				{elseif substr_count($field->value,"doc")}\r\n					<TABLE border="0" width="100%">\r\n						<TR>						\r\n							<TD align="right">\r\n								<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n									<img src="uploads/images/word.png" width="50" />\r\n								</a>\r\n							</TD>\r\n						</tr><tr>\r\n							<TD align="right"><a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n								<div class="NewsSummaryMorelink">\r\n									<a href="{$entry->file_location}/{$field->value}" \r\n										title="{$field->value}" \r\n										style="color: #FFFFFF; background-color: #A71517; padding: 4px 4px 4px 4px; font-size: 10px">\r\n										<em>DOWNLOAD</em>\r\n									</a>\r\n								</div>\r\n								</a>\r\n							</TD>\r\n						</TR>\r\n					</TABLE>\r\n\r\n				{elseif substr_count($field->value,"pdf")}\r\n					<TABLE border="0" width="100%">\r\n						<TR>						\r\n							<TD align="right">\r\n								<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n									<img src="uploads/images/pdf.png" width="50" />\r\n								</a>\r\n							</TD>\r\n						</tr><tr>\r\n							<TD align="right"><a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n								<div class="NewsSummaryMorelink">\r\n									<a href="{$entry->file_location}/{$field->value}" \r\n										title="{$field->value}" \r\n										style="color: #FFFFFF; background-color: #A71517; padding: 4px 4px 4px 4px; font-size: 10px">\r\n										<em>DOWNLOAD</em>\r\n									</a>\r\n								</div>\r\n								</a>\r\n							</TD>\r\n						</TR>\r\n					</TABLE>\r\n\r\n				{else}\r\n					<TABLE border="0" width="100%">\r\n						<TR>						\r\n							<TD align="right">\r\n								<a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n									<img src="uploads/images/file.png" width="50" />\r\n								</a>\r\n							</TD>\r\n						</tr><tr>\r\n							<TD align="right"><a href="{$entry->file_location}/{$field->value}" target="_blank">\r\n								<div class="NewsSummaryMorelink">\r\n									<a href="{$entry->file_location}/{$field->value}" \r\n										title="{$field->value}" \r\n										style="color: #FFFFFF; background-color: #A71517; padding: 4px 4px 4px 4px; font-size: 10px">\r\n										<em>DOWNLOAD</em>\r\n									</a>\r\n								</div>\r\n								</a>\r\n							</TD>\r\n						</TR>\r\n					</TABLE>\r\n				{/if}\r\n				{else}\r\n				{$field->name}:&nbsp;{eval var=$field->value}\r\n			{/if}\r\n		</div>\r\n	{/foreach}\r\n{/if}\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n{if $entry->postdate}\r\n	<div id="NewsPostDetailDate">\r\n		<em>Posted on: {$entry->postdate|cms_date_format} by {$entry->author}</em>\r\n	</div>\r\n{/if}\r\n\r\n\r\n\r\n{*\r\n<h4 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h4>\r\n*}\r\n\r\n<hr id="NewsPostDetailHorizRule" />\r\n\r\n{*\r\n{if $entry->summary}\r\n	<div id="NewsPostDetailSummary">\r\n		<strong>\r\n			{eval var=$entry->summary}\r\n		</strong>\r\n	</div>\r\n{/if}\r\n*}\r\n\r\n<div id="NewsPostDetailContent">\r\n	{eval var=$entry->content}\r\n</div>\r\n\r\n{if $entry->extra}\r\n	<div id="NewsPostDetailExtra">\r\n		{$extra_label} {$entry->extra}\r\n	</div>\r\n{/if}\r\n\r\n\r\n<br />\r\n<br />\r\n\r\n<div id="NewsPostDetailContent">\r\n<h2>Comments</h2>\r\n<a href="{cms_selflink href=''newcomment''}" class=''thickbox''>Submit New Comment</a>\r\n{CGFeedback action=''summary'' summarytemplate="SimpleSummaryComment" detailpage="PopupCommentPage" key2=$entry->id}\r\n</div>', '2011-11-29 03:20:18', '2011-12-12 06:55:55');
INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('CGFeedback', 'detail_SimpleDetailComment', '{* detail template *}\r\n  <div class="feedback_summary_item">\r\n    <div class="feedback_item_title">\r\n      {$mod->Lang(''lbl_title'')}:{$onecomment.title}\r\n    </div>\r\n\r\n    <div class="feedback_item_authorname">\r\n      Posted:{$onecomment.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class="feedback_item_rating">\r\n      {$mod->Lang(''lbl_rating'')}:{$onecomment.rating}\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $onecomment.rating}\r\n          <img src="{$rating_imgs.img_on}" alt=""/>\r\n        {else}\r\n          <img src="{$rating_imgs.img_off}" alt=""/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $onecomment.author_name}\r\n    <div class="feedback_item_authorname">\r\n      {$mod->Lang(''lbl_author_name'')}:{$onecomment.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_email}\r\n    <div class="feedback_item_authoremail">\r\n      {$mod->Lang(''lbl_author_email'')}:{$onecomment.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_ip}\r\n    <div class="feedback_item_authorip">\r\n      {$mod->Lang(''lbl_author_ip'')}:{$onecomment.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class="feedback_item_data">\r\n      {$onecomment.data}\r\n    </div>\r\n\r\n    {if isset($onecomment.fields)}    \r\n      {foreach from=$onecomment.fields key=''name'' item=''field''}\r\n      <div class="feedback_item_field">\r\n        {$name}:{$field.value}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n\r\n\r\n\r\n{if $returnid != ""}\r\n	<div id="NewsPostDetailReturnLink">\r\n	<a href="{cms_selflink href=''comment''}">Return</a>\r\n	</div>\r\n{/if}\r\n\r\n</div>\r\n', '2011-11-29 04:22:23', '2011-11-29 04:25:50'),
('Gallery', 'AE-Gallery', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{assign var=''dirs'' value=''''}\r\n{assign var=''imgs'' value=''''}\r\n{foreach from=$images item=image}\r\n{if $image->isdir}\r\n{assign var=''dirs'' value="$dirs\r\n	<div class=\\"img\\">\r\n		<a href=\\"`$image->file`\\" title=\\"`$image->title`\\"><img src=\\"`$image->thumb`\\" alt=\\"`$image->titlename`\\" /></a><br />\r\n		`$image->titlename`\r\n	</div>\r\n"}\r\n{else}\r\n{capture name=images assign=imgs}\r\n{$imgs}\r\n        <li>\r\n          <a href="{$image->file}">\r\n            <img src="{$image->thumb}" title="{$image->title}" alt="{if empty($image->comment)}{$image->titlename}{else}{$image->comment}{/if}" longdesc="{* you can put a url here using a custom field. This wil generate a link in the middle of the big image *}" class="image{$image->fileid}">\r\n          </a>\r\n        </li>\r\n{/capture}\r\n{/if}\r\n{/foreach}\r\n\r\n\r\n{if !empty($imgs)}\r\n<div class="ae-gallery">\r\n  <div class="ae-image-wrapper">\r\n  </div>\r\n  <div class="ae-controls">\r\n  </div>\r\n  <div class="ae-nav">\r\n    <div class="ae-thumbs">\r\n      <ul class="ae-thumb-list">\r\n{$imgs}\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n{/if}\r\n\r\n{$dirs}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n/* AE-GALLERY */\r\n\r\n.ae-gallery, .ae-gallery * {\r\n  margin: 0;\r\n  padding: 0;\r\n}\r\n.ae-gallery {\r\n  width: 533px;  /* set the width of the thumbrow */\r\n  margin-bottom: 30px;\r\n}\r\n  .ae-gallery .ae-image-wrapper {\r\n    width: 100%; /* set the maximum width and height of the big image. Bigger images will be scaled down automatically by the script */\r\n    height: 400px;\r\n    margin-bottom: 10px;\r\n    position: relative;\r\n    overflow: hidden;\r\n    border: 2px solid #ddd;\r\n  }\r\n    .ae-gallery .ae-image-wrapper .ae-loader {\r\n      position: absolute;\r\n      z-index: 10;\r\n      top: 48%;\r\n      left: 48%;\r\n      border: 1px solid #CCC;\r\n    }\r\n    .ae-gallery .ae-image-wrapper .ae-next {\r\n      position: absolute;\r\n      right: 0;\r\n      top: 0;\r\n      width: 25%;\r\n      height: 100%;\r\n      cursor: pointer;\r\n      display: block;\r\n      z-index: 100;\r\n    }\r\n    .ae-gallery .ae-image-wrapper .ae-prev {\r\n      position: absolute;\r\n      left: 0;\r\n      top: 0;\r\n      width: 25%;\r\n      height: 100%;\r\n      cursor: pointer;\r\n      display: block;\r\n      z-index: 100;\r\n    }\r\n    .ae-gallery .ae-image-wrapper .ae-prev, .ae-gallery .ae-image-wrapper .ae-next {\r\n      /* Or else IE will hide it */\r\n      background: url(non-existing.jpg)\\9\r\n    }\r\n      .ae-gallery .ae-image-wrapper .ae-prev .ae-prev-image, .ae-gallery .ae-image-wrapper .ae-next .ae-next-image {\r\n        background: url(../ae-gallery/ae_prev.png);\r\n        width: 30px;\r\n        height: 30px;\r\n        display: none;\r\n        position: absolute;\r\n        top: 47%;\r\n        left: 0;\r\n        z-index: 101;\r\n      }\r\n      .ae-gallery .ae-image-wrapper .ae-next .ae-next-image {\r\n        background: url(../ae-gallery/ae_next.png);\r\n        width: 30px;\r\n        height: 30px;\r\n        right: 0;\r\n        left: auto;\r\n      }\r\n    .ae-gallery .ae-image-wrapper .ae-image {\r\n      position: absolute;\r\n      overflow: hidden;\r\n      top: 0;\r\n      left: 0;\r\n      z-index: 9;\r\n    }\r\n       .ad-gallery .ad-image-wrapper .ad-image a img {\r\n        border: 0;\r\n      }\r\n     .ae-gallery .ae-image-wrapper .ae-image .ae-image-description {\r\n        position: absolute;\r\n        bottom: 0px;\r\n        left: 0px;\r\n        padding: 7px;\r\n        text-align: left;\r\n        width: 100%;\r\n        z-index: 2;\r\n        background: url(../ae-gallery/opa75.png);\r\n        color: #000;\r\n      }\r\n      * html .ae-gallery .ae-image-wrapper .ae-image .ae-image-description {\r\n        background: none;\r\n        filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (enabled=true, sizingMethod=scale, src=''modules/Gallery/templates/ae-gallery/opa75.png'');\r\n      }\r\n        .ae-gallery .ae-image-wrapper .ae-image .ae-image-description .ae-description-title {\r\n          display: block;\r\n        }\r\n  .ae-gallery .ae-controls {\r\n    height: 20px;\r\n  }\r\n    .ae-gallery .ae-info {\r\n      float: left;\r\n    }\r\n    .ae-gallery .ae-slideshow-controls {\r\n      float: right;\r\n    }\r\n      .ae-gallery .ae-slideshow-controls .ae-slideshow-start, .ae-gallery .ae-slideshow-controls .ae-slideshow-stop {\r\n        padding-left: 5px;\r\n        cursor: pointer;\r\n        display: inline-block;\r\n        text-indent: -500px;\r\n        overflow:hidden;\r\n        width: 14px;\r\n        background: url(../ae-gallery/ae_scroll_forward.png) 0px -3px no-repeat;\r\n      }\r\n      .ae-gallery .ae-slideshow-controls .ae-slideshow-stop {\r\n        background: url(../ae-gallery/ae_stop.png) 0px -3px no-repeat;\r\n      }\r\n      .ae-gallery .ae-slideshow-controls .ae-slideshow-countdown {\r\n        padding-left: 5px;\r\n        font-size: 0.9em;\r\n      }\r\n    .ae-gallery .ae-slideshow-running .ae-slideshow-start {\r\n      cursor: default;\r\n      font-style: italic;\r\n    }\r\n  .ae-gallery .ae-nav {\r\n    width: 100%;\r\n    position: relative;\r\n  }\r\n    .ae-gallery .ae-forward, .ae-gallery .ae-back {\r\n      position: absolute;\r\n      top: 0;\r\n      height: 100%;\r\n      z-index: 10;\r\n    }\r\n    /* IE 6 doesn''t like height: 100% */\r\n    * html .ae-gallery .ae-forward, .ae-gallery .ae-back {\r\n      height: 100px;\r\n    }\r\n    .ae-gallery .ae-back {\r\n      cursor: pointer;\r\n      left: -20px;\r\n      width: 13px;\r\n      display: block;\r\n      background: url(../ae-gallery/ae_scroll_back.png) 0px 22px no-repeat;\r\n    }\r\n    .ae-gallery .ae-forward {\r\n      cursor: pointer;\r\n      display: block;\r\n      right: -20px;\r\n      width: 13px;\r\n      background: url(../ae-gallery/ae_scroll_forward.png) 0px 22px no-repeat;\r\n    }\r\n    .ae-gallery .ae-nav .ae-thumbs {\r\n      overflow: hidden;\r\n      width: 100%;\r\npadding: 3px 1px;\r\nborder: 1px solid #ddd;\r\nbackground-color: #fff;\r\n   }\r\n        .ae-gallery .ae-thumbs li {\r\n          float: left;\r\n          padding:0 5px 0 0 !important;\r\n          margin:0 0 0 0 !important;\r\n          list-style: none;\r\n        }\r\n          .ae-gallery .ae-thumbs li a {\r\n            display: block;\r\n          }\r\n            .ae-gallery .ae-thumbs li a img {\r\n              border: 3px solid #CCC;\r\n              display: block;\r\n            }\r\n            .ae-gallery .ae-thumbs li a.ae-active img {\r\n              border: 3px solid #616161;\r\n            }\r\n/* Can''t do display none, since Opera won''t load the images then */\r\n.ae-preloads {\r\n  position: absolute;\r\n  left: -90000px;\r\n  top: -90000px;\r\n}{*----------<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/ae-gallery/jquery.ae-gallery.js"></script>\r\n\r\n<script type="text/javascript">\r\n  $(function() {\r\n    var galleries = $(''.ae-gallery'').aeGallery({\r\n      loader_image: ''modules/Gallery/templates/ae-gallery/loader.gif'',\r\n      slideshow: {\r\n        autostart: false,\r\n        speed: 4000,\r\n        start_label: ''Start'',\r\n        stop_label: ''Stop'',\r\n        stop_on_scroll: false\r\n      }\r\n    });\r\n  });\r\n</script>\r\n*}', '2011-12-05 01:37:20', '2011-12-05 01:37:20'),
('Gallery', 'Colorbox', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->title}"><img src="{$image->thumb}" alt="{$image->title}" /></a><br />\r\n		{$image->title}\r\n	{else}\r\n		<a href="{$image->file}" title="{$image->title}" rel="gallery"><img src="{$image->thumb}" alt="{$image->title}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* COLORBOX  -  version 1.3.17 */\r\n\r\n/*\r\n    ColorBox Core Style:\r\n    The following CSS is consistent between example themes and should not be altered.\r\n*/\r\n#colorbox, #cboxOverlay, #cboxWrapper{position:absolute; top:0; left:0; z-index:9999; overflow:hidden;}\r\n#cboxOverlay{position:fixed; width:100%; height:100%;}\r\n#cboxMiddleLeft, #cboxBottomLeft{clear:left;}\r\n#cboxContent{position:relative;}\r\n#cboxLoadedContent{overflow:auto;}\r\n#cboxTitle{margin:0;}\r\n#cboxLoadingOverlay, #cboxLoadingGraphic{position:absolute; top:0; left:0; width:100%;}\r\n#cboxPrevious, #cboxNext, #cboxClose, #cboxSlideshow{cursor:pointer;}\r\n.cboxPhoto{float:left; margin:auto; border:0; display:block;}\r\n.cboxIframe{width:100%; height:100%; display:block; border:0;}\r\n\r\n/* \r\n    User Style:\r\n    Change the following styles to modify the appearance of ColorBox.  They are\r\n    ordered & tabbed in a way that represents the nesting of the generated HTML.\r\n*/\r\n#cboxOverlay{background:url(../colorbox/images/overlay.png) repeat 0 0;}\r\n#colorbox{}\r\n    #cboxTopLeft{width:21px; height:21px; background:url(../colorbox/images/controls.png) no-repeat -100px 0;}\r\n    #cboxTopRight{width:21px; height:21px; background:url(../colorbox/images/controls.png) no-repeat -129px 0;}\r\n    #cboxBottomLeft{width:21px; height:21px; background:url(../colorbox/images/controls.png) no-repeat -100px -29px;}\r\n    #cboxBottomRight{width:21px; height:21px; background:url(../colorbox/images/controls.png) no-repeat -129px -29px;}\r\n    #cboxMiddleLeft{width:21px; background:url(../colorbox/images/controls.png) left top repeat-y;}\r\n    #cboxMiddleRight{width:21px; background:url(../colorbox/images/controls.png) right top repeat-y;}\r\n    #cboxTopCenter{height:21px; background:url(../colorbox/images/border.png) 0 0 repeat-x;}\r\n    #cboxBottomCenter{height:21px; background:url(../colorbox/images/border.png) 0 -29px repeat-x;}\r\n    #cboxContent{background:#fff; overflow:hidden;}\r\n        #cboxError{padding:50px; border:1px solid #ccc;}\r\n        #cboxLoadedContent{margin-bottom:28px;}\r\n        #cboxTitle{position:absolute; bottom:4px; left:0; text-align:center; width:100%; color:#949494;}\r\n        #cboxCurrent{position:absolute; bottom:4px; left:58px; color:#949494;}\r\n        #cboxSlideshow{position:absolute; bottom:4px; right:30px; color:#0092ef;}\r\n        #cboxPrevious{position:absolute; bottom:0; left:0; background:url(../colorbox/images/controls.png) no-repeat -75px 0; width:25px; height:25px; text-indent:-9999px;}\r\n        #cboxPrevious.hover{background-position:-75px -25px;}\r\n        #cboxNext{position:absolute; bottom:0; left:27px; background:url(../colorbox/images/controls.png) no-repeat -50px 0; width:25px; height:25px; text-indent:-9999px;}\r\n        #cboxNext.hover{background-position:-50px -25px;}\r\n        #cboxLoadingOverlay{background:url(../colorbox/images/loading_background.png) no-repeat center center;}\r\n        #cboxLoadingGraphic{background:url(../colorbox/images/loading.gif) no-repeat center center;}\r\n        #cboxClose{position:absolute; bottom:0; right:0; background:url(../colorbox/images/controls.png) no-repeat -25px 0; width:25px; height:25px; text-indent:-9999px;}\r\n        #cboxClose.hover{background-position:-25px -25px;}\r\n\r\n/*\r\n  The following fixes a problem where IE7 and IE8 replace a PNG''s alpha transparency with a black fill\r\n  when an alpha filter (opacity change) is set on the element or ancestor element.  This style is not applied to IE9.\r\n*/\r\n.cboxIE #cboxTopLeft,\r\n.cboxIE #cboxTopCenter,\r\n.cboxIE #cboxTopRight,\r\n.cboxIE #cboxBottomLeft,\r\n.cboxIE #cboxBottomCenter,\r\n.cboxIE #cboxBottomRight,\r\n.cboxIE #cboxMiddleLeft,\r\n.cboxIE #cboxMiddleRight {\r\n    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#00FFFFFF,endColorstr=#00FFFFFF);\r\n}\r\n\r\n/*\r\n  The following provides PNG transparency support for IE6\r\n*/\r\n.cboxIE6 #cboxTopLeft{background:url(../colorbox/images/ie6/borderTopLeft.png);}\r\n.cboxIE6 #cboxTopCenter{background:url(../colorbox/images/ie6/borderTopCenter.png);}\r\n.cboxIE6 #cboxTopRight{background:url(../colorbox/images/ie6/borderTopRight.png);}\r\n.cboxIE6 #cboxBottomLeft{background:url(../colorbox/images/ie6/borderBottomLeft.png);}\r\n.cboxIE6 #cboxBottomCenter{background:url(../colorbox/images/ie6/borderBottomCenter.png);}\r\n.cboxIE6 #cboxBottomRight{background:url(../colorbox/images/ie6/borderBottomRight.png);}\r\n.cboxIE6 #cboxMiddleLeft{background:url(../colorbox/images/ie6/borderMiddleLeft.png);}\r\n.cboxIE6 #cboxMiddleRight{background:url(../colorbox/images/ie6/borderMiddleRight.png);}\r\n\r\n.cboxIE6 #cboxTopLeft,\r\n.cboxIE6 #cboxTopCenter,\r\n.cboxIE6 #cboxTopRight,\r\n.cboxIE6 #cboxBottomLeft,\r\n.cboxIE6 #cboxBottomCenter,\r\n.cboxIE6 #cboxBottomRight,\r\n.cboxIE6 #cboxMiddleLeft,\r\n.cboxIE6 #cboxMiddleRight {\r\n    _behavior: expression(this.src = this.src ? this.src : this.currentStyle.backgroundImage.split(''"'')[1], this.style.background = "none", this.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src=" + this.src + ", sizingMethod=''scale'')");\r\n}\r\n{*----------<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/colorbox/jquery.colorbox-min.js"></script>\r\n<script type="text/javascript">\r\n	$(document).ready(function(){\r\n		$("a[rel=''gallery'']").colorbox({\r\n			slideshow:true, \r\n			transition: ''fade'',\r\n			maxWidth: ''90%'', \r\n			maxHeight:''90%''\r\n		});\r\n	});\r\n</script>\r\n*}', '2011-12-05 01:37:28', '2011-12-05 01:37:28'),
('Gallery', 'Cycle', '{* note that the thumbs are shown in stead of the original images, just to make sure all images are of the same size due to the crop image-resize option *}\r\n<div id="slides">\r\n{foreach from=$images item=image}\r\n	{if !$image->isdir}\r\n		<img src="{$image->thumb}" alt="{$image->titlename}" />\r\n	{/if}\r\n{/foreach}\r\n</div>\r\n<div id="caption">&nbsp;</div>\r\n\r\n\r\n{*----------/* height and width should be the same as the thumbnail sizes */\r\n#slides {\r\n  width: 300px;\r\n  height: 120px;\r\n}{*----------<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/cycle/jquery.cycle.lite.js"></script>\r\n\r\n<script type="text/javascript">\r\n$(document).ready(function() {\r\n	$(''#slides'').cycle({ \r\n		delay:  2000, \r\n		speed: 500,\r\n		before: onBefore\r\n	});\r\n\r\n	function onBefore() {\r\n		$(''#caption'').html(this.alt);\r\n	};\r\n});\r\n</script>\r\n*}', '2011-12-05 01:37:34', '2011-12-05 01:37:34'),
('Gallery', 'Lytebox_slideshow', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->title}"><img src="{$image->thumb}" alt="{$image->title}" /></a><br />\r\n		{$image->title}\r\n	{else}\r\n   <a href="{$image->file}" title="{$image->title}" rel="lyteshow[gallery]"><img src="{$image->thumb}" alt="{$image->title}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;*/\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* LYTEBOX */\r\n\r\n#lbOverlay { position: fixed; top: 0; left: 0; z-index: 99998; width: 100%; height: 500px; }\r\n	#lbOverlay.grey { background-color: #000000; }\r\n	#lbOverlay.red { background-color: #330000; }\r\n	#lbOverlay.green { background-color: #003300; }\r\n	#lbOverlay.blue { background-color: #011D50; }\r\n	#lbOverlay.gold { background-color: #666600; }\r\n\r\n#lbMain { position: absolute; left: 0; width: 100%; z-index: 99999; text-align: center; line-height: 0; }\r\n#lbMain a img { border: none; }\r\n\r\n#lbOuterContainer { position: relative; background-color: #fff; width: 200px; height: 200px; margin: 0 auto; }\r\n	#lbOuterContainer.grey { border: 3px solid #888888; }\r\n	#lbOuterContainer.red { border: 3px solid #DD0000; }\r\n	#lbOuterContainer.green { border: 3px solid #00B000; }\r\n	#lbOuterContainer.blue { border: 3px solid #5F89D8; }\r\n	#lbOuterContainer.gold { border: 3px solid #B0B000; }\r\n\r\n#lbDetailsContainer {	font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; width: 100%; line-height: 1.4em;	overflow: auto; margin: 0 auto; }\r\n	#lbDetailsContainer.grey { border: 3px solid #888888; border-top: none; }\r\n	#lbDetailsContainer.red { border: 3px solid #DD0000; border-top: none; }\r\n	#lbDetailsContainer.green { border: 3px solid #00B000; border-top: none; }\r\n	#lbDetailsContainer.blue { border: 3px solid #5F89D8; border-top: none; }\r\n	#lbDetailsContainer.gold { border: 3px solid #B0B000; border-top: none; }\r\n\r\n#lbImageContainer, #lbIframeContainer { padding: 10px; }\r\n#lbLoading {\r\n	position: absolute; top: 45%; left: 0%; height: 32px; width: 100%; text-align: center; line-height: 0; background: url(../lytebox/images/loading.gif) center no-repeat;\r\n}\r\n\r\n#lbHoverNav { position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#lbImageContainer>#lbHoverNav { left: 0; }\r\n#lbHoverNav a { outline: none; }\r\n\r\n#lbPrev { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; left: 0; float: left; }\r\n	#lbPrev.grey:hover, #lbPrev.grey:visited:hover { background: url(../lytebox/images/prev_grey.gif) left 15% no-repeat; }\r\n	#lbPrev.red:hover, #lbPrev.red:visited:hover { background: url(../lytebox/images/prev_red.gif) left 15% no-repeat; }\r\n	#lbPrev.green:hover, #lbPrev.green:visited:hover { background: url(../lytebox/images/prev_green.gif) left 15% no-repeat; }\r\n	#lbPrev.blue:hover, #lbPrev.blue:visited:hover { background: url(../lytebox/images/prev_blue.gif) left 15% no-repeat; }\r\n	#lbPrev.gold:hover, #lbPrev.gold:visited:hover { background: url(../lytebox/images/prev_gold.gif) left 15% no-repeat; }\r\n\r\n#lbNext { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; right: 0; float: right; }\r\n	#lbNext.grey:hover, #lbNext.grey:visited:hover { background: url(../lytebox/images/next_grey.gif) right 15% no-repeat; }\r\n	#lbNext.red:hover, #lbNext.red:visited:hover { background: url(../lytebox/images/next_red.gif) right 15% no-repeat; }\r\n	#lbNext.green:hover, #lbNext.green:visited:hover { background: url(../lytebox/images/next_green.gif) right 15% no-repeat; }\r\n	#lbNext.blue:hover, #lbNext.blue:visited:hover { background: url(../lytebox/images/next_blue.gif) right 15% no-repeat; }\r\n	#lbNext.gold:hover, #lbNext.gold:visited:hover { background: url(../lytebox/images/next_gold.gif) right 15% no-repeat; }\r\n\r\n#lbPrev2, #lbNext2 { text-decoration: none; font-weight: bold; }\r\n	#lbPrev2.grey, #lbNext2.grey, #lbSpacer.grey { color: #333333; }\r\n	#lbPrev2.red, #lbNext2.red, #lbSpacer.red { color: #620000; }\r\n	#lbPrev2.green, #lbNext2.green, #lbSpacer.green { color: #003300; }\r\n	#lbPrev2.blue, #lbNext2.blue, #lbSpacer.blue { color: #01379E; }\r\n	#lbPrev2.gold, #lbNext2.gold, #lbSpacer.gold { color: #666600; }\r\n\r\n#lbPrev2_Off, #lbNext2_Off { font-weight: bold; }\r\n	#lbPrev2_Off.grey, #lbNext2_Off.grey { color: #CCCCCC; }\r\n	#lbPrev2_Off.red, #lbNext2_Off.red { color: #FFCCCC; }\r\n	#lbPrev2_Off.green, #lbNext2_Off.green { color: #82FF82; }\r\n	#lbPrev2_Off.blue, #lbNext2_Off.blue { color: #B7CAEE; }\r\n	#lbPrev2_Off.gold, #lbNext2_Off.gold { color: #E1E100; }\r\n\r\n#lbDetailsData { padding: 0 10px; }\r\n	#lbDetailsData.grey { color: #333333; }\r\n	#lbDetailsData.red { color: #620000; }\r\n	#lbDetailsData.green { color: #003300; }\r\n	#lbDetailsData.blue { color: #01379E; }\r\n	#lbDetailsData.gold { color: #666600; }\r\n\r\n#lbDetails { width: 60%; float: left; text-align: left; }\r\n#lbCaption { display: block; font-weight: bold; }\r\n#lbNumberDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n#lbNavDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n\r\n#lbClose { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n	#lbClose.grey { background: url(../lytebox/images/close_grey.png) no-repeat; }\r\n	#lbClose.red { background: url(../lytebox/images/close_red.png) no-repeat; }\r\n	#lbClose.green { background: url(../lytebox/images/close_green.png) no-repeat; }\r\n	#lbClose.blue { background: url(../lytebox/images/close_blue.png) no-repeat; }\r\n	#lbClose.gold { background: url(../lytebox/images/close_gold.png) no-repeat; }\r\n\r\n#lbPlay { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n	#lbPlay.grey { background: url(../lytebox/images/play_grey.png) no-repeat; }\r\n	#lbPlay.red { background: url(../lytebox/images/play_red.png) no-repeat; }\r\n	#lbPlay.green { background: url(../lytebox/images/play_green.png) no-repeat; }\r\n	#lbPlay.blue { background: url(../lytebox/images/play_blue.png) no-repeat; }\r\n	#lbPlay.gold { background: url(../lytebox/images/play_gold.png) no-repeat; }\r\n\r\n#lbPause { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n	#lbPause.grey { background: url(../lytebox/images/pause_grey.png) no-repeat; }\r\n	#lbPause.red { background: url(../lytebox/images/pause_red.png) no-repeat; }\r\n	#lbPause.green { background: url(../lytebox/images/pause_green.png) no-repeat; }\r\n	#lbPause.blue { background: url(../lytebox/images/pause_blue.png) no-repeat; }\r\n	#lbPause.gold { background: url(../lytebox/images/pause_gold.png) no-repeat; }\r\n\r\n{*----------<script type="text/javascript" src="modules/Gallery/templates/lytebox/lytebox.js"></script>\r\n*}', '2011-12-05 01:37:46', '2011-12-05 01:37:46'),
('News', 'formsimple_original', '{* original form template *}\r\n{if isset($error)}\r\n  <h3><font color="red">{$error}</font></h3>\r\n{else}\r\n  {if isset($message)}\r\n    <h3>{$message}</h3>\r\n  {/if}\r\n{/if}\r\n{$startform}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">*{$titletext}:</p>\r\n		<p class="pageinput">{$inputtitle}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$categorytext}:</p>\r\n		<p class="pageinput">{$inputcategory}</p>\r\n	</div>\r\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$summarytext}:</p>\r\n		<p class="pageinput">{$inputsummary}</p>\r\n	</div>\r\n{/if}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">*{$contenttext}:</p>\r\n		<p class="pageinput">{$inputcontent}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$extratext}:</p>\r\n		<p class="pageinput">{$inputextra}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$startdatetext}:</p>\r\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\r\n	</div>\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">{$enddatetext}:</p>\r\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\r\n	</div>\r\n	{if isset($customfields)}\r\n	   {foreach from=$customfields item=''onefield''}\r\n	      <div class="pageoverflow">\r\n		<p class="pagetext">{$onefield->name}:</p>\r\n		<p class="pageinput">{$onefield->field}</p>\r\n	      </div>\r\n	   {/foreach}\r\n	{/if}\r\n	<div class="pageoverflow">\r\n		<p class="pagetext">&nbsp;</p>\r\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\r\n	</div>\r\n{$endform}\r\n', '2011-12-12 06:31:46', '2011-12-12 06:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads`
--

DROP TABLE IF EXISTS `cms_module_uploads`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads` (
  `upload_id` int(11) NOT NULL,
  `upload_category_id` int(11) default NULL,
  `upload_name` varchar(255) default NULL,
  `upload_author` varchar(255) default NULL,
  `upload_summary` varchar(255) default NULL,
  `upload_description` text,
  `upload_ip` varchar(255) default NULL,
  `upload_size` int(11) default NULL,
  `upload_date` datetime default NULL,
  `upload_key` varchar(255) default NULL,
  `upload_thumbnail` varchar(255) default NULL,
  PRIMARY KEY  (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_categories`
--

DROP TABLE IF EXISTS `cms_module_uploads_categories`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_categories` (
  `upload_category_id` int(11) NOT NULL,
  `upload_category_name` varchar(255) default NULL,
  `upload_category_description` text,
  `upload_category_path` varchar(255) NOT NULL,
  `upload_category_listable` int(11) default NULL,
  `upload_category_groups` varchar(255) default NULL,
  `upload_category_deletable` int(11) default NULL,
  `upload_category_expires_hrs` int(11) default NULL,
  `upload_category_scannable` tinyint(4) default NULL,
  PRIMARY KEY  (`upload_category_id`,`upload_category_path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_uploads_categories`
--

INSERT INTO `cms_module_uploads_categories` (`upload_category_id`, `upload_category_name`, `upload_category_description`, `upload_category_path`, `upload_category_listable`, `upload_category_groups`, `upload_category_deletable`, `upload_category_expires_hrs`, `upload_category_scannable`) VALUES
(1, 'Attachments', 'Members attachments', 'attachment', 0, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_categories_seq`
--

DROP TABLE IF EXISTS `cms_module_uploads_categories_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_uploads_categories_seq`
--

INSERT INTO `cms_module_uploads_categories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_downloads`
--

DROP TABLE IF EXISTS `cms_module_uploads_downloads`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_downloads` (
  `download_id` int(11) NOT NULL,
  `file_id` int(11) default NULL,
  `download_date` datetime default NULL,
  `download_ip` varchar(255) default NULL,
  `download_user` varchar(255) default NULL,
  `url_key` varchar(40) default NULL,
  PRIMARY KEY  (`download_id`),
  KEY `index_download_fileid` (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_downloads_seq`
--

DROP TABLE IF EXISTS `cms_module_uploads_downloads_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_downloads_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_uploads_downloads_seq`
--

INSERT INTO `cms_module_uploads_downloads_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_fielddefs`
--

DROP TABLE IF EXISTS `cms_module_uploads_fielddefs`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_fielddefs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  `attribs` text,
  `iorder` int(11) default NULL,
  `public` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_module_uploads_fielddefs`
--

INSERT INTO `cms_module_uploads_fielddefs` (`id`, `name`, `type`, `attribs`, `iorder`, `public`) VALUES
(1, 'Filename', 'textinput', 'a:2:{s:6:"length";s:2:"10";s:9:"maxlength";s:3:"255";}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_fieldvals`
--

DROP TABLE IF EXISTS `cms_module_uploads_fieldvals`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_fieldvals` (
  `upload_id` int(11) NOT NULL,
  `fld_id` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY  (`upload_id`,`fld_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_filetypes`
--

DROP TABLE IF EXISTS `cms_module_uploads_filetypes`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_filetypes` (
  `id` int(11) default NULL,
  `sortorder` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` text,
  `extensions` varchar(255) default NULL,
  `image` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_uploads_filetypes`
--

INSERT INTO `cms_module_uploads_filetypes` (`id`, `sortorder`, `name`, `description`, `extensions`, `image`) VALUES
(1, 1, 'Sound', 'Sound files', 'mp3,ogg,wav', 'sound.png'),
(2, 2, 'Image', 'Image files', 'png,gif,jpg,jpeg,bmp', 'image.png'),
(3, 3, 'PDF Document', 'Adobe Acrobat PDF Document', 'pdf', 'pdf.png'),
(4, 4, 'Spreadsheet', 'Spreadsheets', 'xls', 'spreadsheet.png'),
(5, 5, 'Compressed', 'Compressed file', 'zip,tar,gz,rar,arj', 'zip.png'),
(6, 6, 'Text', 'Text File', 'txt,text', 'txt.png'),
(7, 7, 'Video', 'Video Files', 'avi,mpg.wmv', 'video.png'),
(8, 8, 'Word Processing', 'Word Processing Files', 'doc', 'wordprocessing.png');

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_filetypes_seq`
--

DROP TABLE IF EXISTS `cms_module_uploads_filetypes_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_filetypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_uploads_filetypes_seq`
--

INSERT INTO `cms_module_uploads_filetypes_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_seq`
--

DROP TABLE IF EXISTS `cms_module_uploads_seq`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_module_uploads_seq`
--

INSERT INTO `cms_module_uploads_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_module_uploads_timelimit`
--

DROP TABLE IF EXISTS `cms_module_uploads_timelimit`;
CREATE TABLE IF NOT EXISTS `cms_module_uploads_timelimit` (
  `tlkey_id` int(11) NOT NULL auto_increment,
  `upload_id` int(11) default NULL,
  `email` varchar(255) default NULL,
  `url_key` varchar(16) default NULL,
  `created` datetime default NULL,
  `expires` datetime default NULL,
  `max_downloads` int(11) default NULL,
  PRIMARY KEY  (`tlkey_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_permissions`
--

DROP TABLE IF EXISTS `cms_permissions`;
CREATE TABLE IF NOT EXISTS `cms_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) default NULL,
  `permission_text` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_permissions`
--

INSERT INTO `cms_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES
(1, 'Add Pages', 'Add Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 'Add Groups', 'Add Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(4, 'Add Templates', 'Add Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(5, 'Add Users', 'Add Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(6, 'Modify Any Page', 'Modify Any Page', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(7, 'Modify Groups', 'Modify Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(8, 'Modify Group Assignments', 'Modify Group Assignments', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(9, 'Modify Permissions', 'Modify Permissions for Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(11, 'Modify Templates', 'Modify Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(12, 'Modify Users', 'Modify Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(13, 'Remove Pages', 'Remove Pages', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(14, 'Remove Groups', 'Remove Groups', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(16, 'Remove Templates', 'Remove Templates', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(17, 'Remove Users', 'Remove Users', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(18, 'Modify Modules', 'Modify Modules', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(20, 'Modify Files', 'Modify Files', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(21, 'Modify Site Preferences', 'Modify Site Preferences', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(22, 'Modify Stylesheets', 'Modify Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(23, 'Add Stylesheets', 'Add Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(24, 'Remove Stylesheets', 'Remove Stylesheets', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(25, 'Add Stylesheet Assoc', 'Add Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(26, 'Modify Stylesheet Assoc', 'Modify Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(27, 'Remove Stylesheet Assoc', 'Remove Stylesheet Associations', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(28, 'Modify User-defined Tags', 'Modify User defined Tags', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(29, 'Clear Admin Log', 'Clear Admin Log', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(30, 'Add Global Content Blocks', 'Add Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(31, 'Modify Global Content Blocks', 'Modify Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(32, 'Remove Global Content Blocks', 'Remove Global Content Blocks', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(35, 'Modify Events', 'Modify Events', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
(36, 'View Tag Help', 'View Tag Help', '2006-01-27 20:06:58', '2006-01-27 20:06:58'),
(44, 'Manage All Content', 'Manage All Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
(46, 'Reorder Content', 'Reorder Content', '2009-05-06 15:04:11', '2009-05-06 15:04:11'),
(47, 'Use FileManager Advanced', 'Advanced usage of the File Manager module', '2011-10-29 02:15:14', '2011-10-29 02:15:14'),
(48, 'Manage Menu', 'Manage Menu', '2011-10-29 02:15:14', '2011-10-29 02:15:14'),
(49, 'MicroTiny View HTML Source', 'MicroTiny View HTML Source', '2011-10-29 02:15:14', '2011-10-29 02:15:14'),
(50, 'Modify News', 'Modify News', '2011-10-29 02:15:15', '2011-10-29 02:15:15'),
(51, 'Approve News', 'Approve News For Frontend Display', '2011-10-29 02:15:15', '2011-10-29 02:15:15'),
(52, 'Delete News', 'Delete News Articles', '2011-10-29 02:15:15', '2011-10-29 02:15:15'),
(53, 'Manage Themes', 'Manage Themes', '2011-10-29 02:15:25', '2011-10-29 02:15:25'),
(54, 'Manage AComments', 'Manage AComments', '2011-10-29 02:52:40', '2011-10-29 02:52:40'),
(55, 'Use Gallery', 'Use Gallery', '2011-10-29 03:03:36', '2011-10-29 03:03:36'),
(56, 'Set Gallery Prefs', 'Set Gallery Prefs', '2011-10-29 03:03:36', '2011-10-29 03:03:36'),
(58, 'Manage CMSUsers', 'Manage CMSUsers', '2011-11-12 06:52:57', '2011-11-12 06:52:57'),
(59, 'Use Album', 'Use Album', '2011-11-14 02:04:03', '2011-11-14 02:04:03'),
(60, 'Manage AdvancedContent Preferences', 'Manage AdvancedContent Preferences', '2011-11-14 02:04:11', '2011-11-14 02:04:11'),
(61, 'Manage All AdvancedContent Blocks', 'Manage All AdvancedContent Blocks', '2011-11-14 02:04:11', '2011-11-14 02:04:11'),
(62, 'Manage AdvancedContent Options', 'Manage AdvancedContent Options', '2011-11-14 02:04:12', '2011-11-14 02:04:12'),
(63, 'Manage AdvancedContent MultiInputs', 'Manage AdvancedContent MultiInputs', '2011-11-14 02:04:12', '2011-11-14 02:04:12'),
(64, 'Manage AdvancedContent MultiInput Templates', 'Manage AdvancedContent MultiInput Templates', '2011-11-14 02:04:12', '2011-11-14 02:04:12'),
(67, 'Manage Site Feedback', 'Manage Site Feedback', '2011-11-15 09:23:42', '2011-11-15 09:23:42'),
(68, 'attach_use', 'Attach: use module', '2011-11-16 03:57:11', '2011-11-16 03:57:11'),
(69, 'attach_admin', 'Attach: admin', '2011-11-16 03:57:11', '2011-11-16 03:57:11'),
(70, 'Manage Uploads', 'Manage Uploads', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
(71, 'Upload Files to Uploads', 'Upload Files to Uploads', '2011-11-16 04:12:45', '2011-11-16 04:12:45'),
(72, 'Modify FrontEndUserProps', 'Modify FrontEndUser Properties', '2011-11-16 04:32:12', '2011-11-16 04:32:12'),
(75, 'Use Showtime', 'Use Showtime', '2011-11-22 02:45:18', '2011-11-22 02:45:18'),
(76, 'Use Showtime Prefs', 'Use Showtime Prefs', '2011-11-22 02:45:18', '2011-11-22 02:45:18'),
(77, 'FEU Add Users', 'Add Front-End Users', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(78, 'FEU Modify Users', 'Modify Front-End Users', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(79, 'FEU Remove Users', 'Remove Front-End Users', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(80, 'FEU Add Groups', 'Add Front-End User Groups', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(81, 'FEU Modify Groups', 'Modify Front-End User Groups', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(82, 'FEU Modify Group Assignments', 'Modify Front-End User Group Assignments', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(83, 'FEU Remove Groups', 'Remove Front-End User Groups', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(84, 'FEU Modify Site Preferences', 'Modify Front-End Users Site Prefs', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(85, 'FEU Modify FrontEndUserProps', 'Modify Front-End User Properties', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(86, 'FEU Modify Templates', 'Modify Front-End User Templates', '2011-11-23 01:59:20', '2011-11-23 01:59:20'),
(87, 'FrontEndEditor Admin', 'Manage FrontEndEditor', '2011-11-23 02:36:41', '2011-11-23 02:36:41'),
(88, 'Manage Registering Users', 'Manage Registering Users', '2011-11-23 02:42:42', '2011-11-23 02:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `cms_permissions_seq`
--

DROP TABLE IF EXISTS `cms_permissions_seq`;
CREATE TABLE IF NOT EXISTS `cms_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_permissions_seq`
--

INSERT INTO `cms_permissions_seq` (`id`) VALUES
(88);

-- --------------------------------------------------------

--
-- Table structure for table `cms_siteprefs`
--

DROP TABLE IF EXISTS `cms_siteprefs`;
CREATE TABLE IF NOT EXISTS `cms_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_siteprefs`
--

INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
('AComments_mapi_pref_akismet_check', '0', NULL, NULL),
('AComments_mapi_pref_default_template', 'default_display', NULL, NULL),
('AComments_mapi_pref_disable_html', '1', NULL, NULL),
('AComments_mapi_pref_enable_cookie_support', '0', NULL, NULL),
('AComments_mapi_pref_enable_trackbacks', '0', NULL, NULL),
('AComments_mapi_pref_enable_trackback_backlink_check', '0', NULL, NULL),
('AComments_mapi_pref_moderate', '', NULL, NULL),
('AComments_mapi_pref_spamprotect', '', NULL, NULL),
('additional_editors', '', NULL, NULL),
('adminlog_lifetime', '2678400', NULL, NULL),
('AdvancedContent_mapi_pref_default_multi_input_tpl', 'multi_input_SampleTemplate', NULL, NULL),
('Album_mapi_pref_autolinkstylesheet', '1', NULL, NULL),
('Album_mapi_pref_defaultalbumpage', '-1', NULL, NULL),
('Album_mapi_pref_defaultcolumns', '5', NULL, NULL),
('Album_mapi_pref_defaultrows', '0', NULL, NULL),
('Album_mapi_pref_defaulttemplate', 'default', NULL, NULL),
('Album_mapi_pref_max_image_size', '800', NULL, NULL),
('Album_mapi_pref_template', 'cmotion-image-gallery', NULL, NULL),
('Album_mapi_pref_useinlinelinks', '1', NULL, NULL),
('allowparamcheckwarnings', '0', NULL, NULL),
('allow_browser_cache', '0', NULL, NULL),
('Attach_mapi_pref_deftemplate', 'default', NULL, NULL),
('auto_clear_cache_age', '1', NULL, NULL),
('browser_cache_expiry', '60', NULL, NULL),
('CGExtensions_mapi_pref_cache_autoclean_last', '1323845896', NULL, NULL),
('CGExtensions_mapi_pref_dflt_sortablelist_template', 'Sample', NULL, NULL),
('CGExtensions_mapi_pref_dflt_sortablelist_template_content', '{* sortable list template *}\n\n{*\n This template provides one example of using javascript in a CMS module template.  The javascript is left here as an example of how one can interact with smarty in javascript.  You may infact want to put most of these functions into a seperate .js file and include it somewhere in your head section.\n\n You are free to modify this javascript and this template.  However, the php driver scripts look for a field named in the smarty variable {$selectarea_prefix}, and expect that to be a comma seperated list of values.\n *}\n\n{literal}\n<script type=''text/javascript''>\nvar allowduplicates = {/literal}{$allowduplicates};{literal}\nvar selectlist = {/literal}"{$selectarea_prefix}_selectlist";{literal}\nvar masterlist = {/literal}"{$selectarea_prefix}_masterlist";{literal}\nvar addbtn = {/literal}"{$selectarea_prefix}_add";{literal}\nvar rembtn = {/literal}"{$selectarea_prefix}_remove";{literal}\nvar upbtn = {/literal}"{$selectarea_prefix}_up";{literal}\nvar downbtn = {/literal}"{$selectarea_prefix}_down";{literal}\nvar valuefld = {/literal}"{$selectarea_prefix}";{literal}\nvar max_selected = {/literal}{$max_selected};{literal}\n\nfunction selectarea_update_value()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var val_elem = document.getElementById(valuefld);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  var tmp = new Array();\n  for( i = 0; i < opts.length; i++ )\n    {\n      tmp[tmp.length] = opts[i].value;\n    }\n  var str = tmp.join('','');\n  val_elem.value = str;  \n}\n\nfunction selectarea_handle_down()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  for( var i = opts.length - 2; i >= 0; i-- )\n    {\n      var opt = opts[i];\n      if( opt.selected )\n        {\n           var nextopt = opts[i+1];\n           opt = sel_elem.removeChild(opt);\n           nextopt = sel_elem.replaceChild(opt,nextopt);\n           sel_elem.insertBefore(nextopt,opt);\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_up()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( sel_idx > 0 )\n    {\n      for( var i = 1; i < opts.length; i++ )\n        {\n          var opt = opts[i];\n          if( opt.selected )\n            {\n              sel_elem.removeChild(opt);\n               sel_elem.insertBefore(opt, opts[i-1]);\n            }\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_remove()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  if( sel_idx >= 0 )\n    {\n      var val = sel_elem.options[sel_idx].value;\n      sel_elem.remove(sel_idx);\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_add()\n{\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  var sel_elem = document.getElementById(selectlist);\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( opts.length >= max_selected && max_selected > 0) return;\n  if( mas_idx >= 0 )\n    {\n      var newOpt = document.createElement(''option'');\n      newOpt.text = mas_elem.options[mas_idx].text;\n      newOpt.value = mas_elem.options[mas_idx].value;\n      if( allowduplicates == 0 )\n        {\n          for( var i = 0; i < opts.length; i++ )\n          {\n            if( opts[i].value == newOpt.value ) return;\n          }\n        }\n      sel_elem.add(newOpt,null);\n    }\n  selectarea_update_value();\n}\n\n\nfunction selectarea_handle_select()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  addbtn.disabled = (mas_idx >= 0);\n  rembtn.disabled = (sel_idx >= 0);\n  addbtn.disabled = (sel_idx >= 0);\n  downbtn.disabled = (sel_idx >= 0);\n}\n\n</script>\n{/literal}\n\n <table>\n   <tr>\n     <td>\n      {* left column - for the selected items *}\n      {$label_left}<br/>\n      <select id="{$selectarea_prefix}_selectlist" size="10" onchange="selectarea_handle_select();">\n        {html_options options=$selectarea_selected}\n      </select><br/>\n     </td>\n     <td>\n      {* center column - for the add/delete buttons *}\n      <input type="submit" id="{$selectarea_prefix}_add" value="&lt;&lt;" onclick="selectarea_handle_add(); return false;"/><br/>\n      <input type="submit" id="{$selectarea_prefix}_remove" value="&gt;&gt;" onclick="selectarea_handle_remove(); return false;"/><br/>\n      <input type="submit" id="{$selectarea_prefix}_up" value="{$upstr}" onclick="selectarea_handle_up(); return false;"/><br/>\n      <input type="submit" id="{$selectarea_prefix}_down" value="{$downstr}" onclick="selectarea_handle_down(); return false;"/><br/>\n     </td>\n     <td>\n      {* right column - for the master list *}\n      {$label_right}<br/>\n      <select id="{$selectarea_prefix}_masterlist" size="10" onchange="selectarea_handle_select();">\n        {html_options options=$selectarea_masterlist}\n      </select>\n     </td>\n   </tr>\n </table>\n <div><input type="hidden" id="{$selectarea_prefix}" name="{$selectarea_prefix}" value="{$selectarea_selected_str}" /></div>\n', NULL, NULL),
('CGExtensions_mapi_pref_imageextensions', 'jpg,png,gif', NULL, NULL),
('CGExtensions_mapi_pref_thumbnailsize', '75', NULL, NULL),
('CGExtensions_mapi_pref_watermark_angle', '0', NULL, NULL),
('CGExtensions_mapi_pref_watermark_bgcolor', '#FFFFFF', NULL, NULL),
('CGExtensions_mapi_pref_watermark_font', 'ARIAL.TTF', NULL, NULL),
('CGExtensions_mapi_pref_watermark_text', '', NULL, NULL),
('CGExtensions_mapi_pref_watermark_textcolor', '#000000', NULL, NULL),
('CGExtensions_mapi_pref_watermark_textsize', '12', NULL, NULL),
('CGExtensions_mapi_pref_watermark_transparent', '1', NULL, NULL),
('CGFeedback_mapi_pref_allow_comment_html', '0', NULL, NULL),
('CGFeedback_mapi_pref_allow_comment_wysiwyg', '1', NULL, NULL),
('CGFeedback_mapi_pref_captcha_module', '-1', NULL, NULL),
('CGFeedback_mapi_pref_curdflt_commentform_template_name', 'Sample', NULL, NULL),
('CGFeedback_mapi_pref_curdflt_detail_template_name', 'Sample', NULL, NULL),
('CGFeedback_mapi_pref_curdflt_ratings_template_name', 'Sample', NULL, NULL),
('CGFeedback_mapi_pref_curdflt_summary_template_name', 'Sample', NULL, NULL),
('CGFeedback_mapi_pref_moderate_comments', '0', NULL, NULL),
('CGFeedback_mapi_pref_moderation_iplist', '', NULL, NULL),
('CGFeedback_mapi_pref_moderation_patterns', '', NULL, NULL),
('CGFeedback_mapi_pref_notification_group', '1', NULL, NULL),
('CGFeedback_mapi_pref_notification_ishtml', '1', NULL, NULL),
('CGFeedback_mapi_pref_notification_subject', 'A comment has been posted on your website', NULL, NULL),
('CGFeedback_mapi_pref_spamcheck_module', '-1', NULL, NULL),
('CGFeedback_mapi_pref_usernotification_subject', 'A reply has been posted in a thread you are interested in', NULL, NULL),
('CGFeedback_mapi_pref_use_cookies', '0', NULL, NULL),
('CGFeedback_mapi_pref_validate_email', 'none', NULL, NULL),
('CGFeedback_mapi_pref_word_limit', '0', NULL, NULL),
('checkversion', '0', NULL, NULL),
('ClearCache_lastexecute', '1323790426', NULL, NULL),
('clear_vc_cache', '0', NULL, NULL),
('CMSMailer_mapi_pref_from', 'admin@fti-harvard.org', NULL, NULL),
('CMSMailer_mapi_pref_fromuser', 'FTI-Harvard Administrator', NULL, NULL),
('CMSMailer_mapi_pref_host', 'mail.fti-harvard.org', NULL, NULL),
('CMSMailer_mapi_pref_mailer', 'smtp', NULL, NULL),
('CMSMailer_mapi_pref_password', 'p@55w0rd', NULL, NULL),
('CMSMailer_mapi_pref_port', '25', NULL, NULL),
('CMSMailer_mapi_pref_secure', '', NULL, NULL),
('CMSMailer_mapi_pref_sendmail', '/usr/sbin/sendmail', NULL, NULL),
('CMSMailer_mapi_pref_smtpauth', '1', NULL, NULL),
('CMSMailer_mapi_pref_timeout', '1000', NULL, NULL),
('CMSMailer_mapi_pref_username', 'admin@fti-harvard.org', NULL, NULL),
('CMSPrinting_mapi_pref_overridestyle', '/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don''t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/', NULL, NULL),
('CMSUsers_mapi_pref_password_reset_email_subject', 'Reset password request for %s', NULL, NULL),
('CMSUsers_mapi_pref_signup_email_subject', 'Account details for %s', NULL, NULL),
('CMSUsers_mapi_pref_validation_email_subject', 'Please verify your account %s', NULL, NULL),
('Cron_mapi_pref_LastDaily', NULL, NULL, NULL),
('Cron_mapi_pref_LastHourly', NULL, NULL, NULL),
('Cron_mapi_pref_LastMonthly', NULL, NULL, NULL),
('Cron_mapi_pref_LastWeekly', NULL, NULL, NULL),
('Cron_mapi_pref_LastYearly', NULL, NULL, NULL),
('css_max_age', '0', NULL, NULL),
('defaultdateformat', '', NULL, NULL),
('defaultpagecontent', '<!-- Add code here that should appear in the content block of all new pages -->', NULL, NULL),
('default_parent_page', '-1', NULL, NULL),
('disablesafemodewarning', '0', NULL, NULL),
('enablenotifications', '1', NULL, NULL),
('enablesitedownmessage', '0', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('FileManager_mapi_pref_advancedmode', 'false', NULL, NULL),
('FileManager_mapi_pref_iconsize', '32px', NULL, NULL),
('FileManager_mapi_pref_showhiddenfiles', 'false', NULL, NULL),
('FileManager_mapi_pref_uploadboxes', '5', NULL, NULL),
('frontendlang', 'en_US', NULL, NULL),
('FrontEndUsers_mapi_pref_allowed_image_extensions', '.png,.jpg,.doc,.docx,.xls,.xlsx,.pdf', NULL, NULL),
('FrontEndUsers_mapi_pref_allow_duplicate_emails', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_allow_duplicate_reminders', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_allow_repeated_logins', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_auth_module', '__BUILTIN__', NULL, NULL),
('FrontEndUsers_mapi_pref_auto_create_unknown', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_cookiename', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_cookie_keepalive', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_current_group', '-1', NULL, NULL),
('FrontEndUsers_mapi_pref_current_limit', '100', NULL, NULL),
('FrontEndUsers_mapi_pref_current_loggedinonly', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_current_propsel', 'none', NULL, NULL),
('FrontEndUsers_mapi_pref_current_propval', '', NULL, NULL),
('FrontEndUsers_mapi_pref_current_regex', '', NULL, NULL),
('FrontEndUsers_mapi_pref_current_sort', 'username', NULL, NULL),
('FrontEndUsers_mapi_pref_current_viewprops', '', NULL, NULL),
('FrontEndUsers_mapi_pref_default_group', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_expireage_months', '60', NULL, NULL),
('FrontEndUsers_mapi_pref_expireusers_interval', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_expire_lastrun', '1323825836', NULL, NULL),
('FrontEndUsers_mapi_pref_feusers_specific_permissions', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_forcelogout_sessionage', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_forcelogout_times', '', NULL, NULL),
('FrontEndUsers_mapi_pref_hidden_field_color', 'green', NULL, NULL),
('FrontEndUsers_mapi_pref_hidden_field_marker', '!', NULL, NULL),
('FrontEndUsers_mapi_pref_image_destination_path', 'feusers', NULL, NULL),
('FrontEndUsers_mapi_pref_max_passwordlength', '20', NULL, NULL),
('FrontEndUsers_mapi_pref_max_usernamelength', '40', NULL, NULL),
('FrontEndUsers_mapi_pref_min_passwordlength', '6', NULL, NULL),
('FrontEndUsers_mapi_pref_min_usernamelength', '4', NULL, NULL),
('FrontEndUsers_mapi_pref_notification_address', '', NULL, NULL),
('FrontEndUsers_mapi_pref_notification_subject', 'FEU Event Notification', NULL, NULL),
('FrontEndUsers_mapi_pref_pageidforgotpasswd', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pageid_afterchangesettings', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pageid_afterverify', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pageid_changesettings', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pageid_forgotpasswd', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pageid_login', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pageid_logout', '', NULL, NULL),
('FrontEndUsers_mapi_pref_pagetype_action', 'showlogin', NULL, NULL),
('FrontEndUsers_mapi_pref_pagetype_groups', NULL, NULL, NULL),
('FrontEndUsers_mapi_pref_pagetype_redirectto', '-1', NULL, NULL),
('FrontEndUsers_mapi_pref_passwordfldlength', '20', NULL, NULL),
('FrontEndUsers_mapi_pref_pwsalt', 'f9ebc', NULL, NULL),
('FrontEndUsers_mapi_pref_required_field_color', 'blue', NULL, NULL),
('FrontEndUsers_mapi_pref_required_field_marker', '*', NULL, NULL),
('FrontEndUsers_mapi_pref_require_onegroup', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_secure_field_color', 'yellow', NULL, NULL),
('FrontEndUsers_mapi_pref_secure_field_marker', '^^', NULL, NULL),
('FrontEndUsers_mapi_pref_signin_button', NULL, NULL, NULL),
('FrontEndUsers_mapi_pref_support_lostpw', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_support_lostun', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_usecookiestoremember', '0', NULL, NULL),
('FrontEndUsers_mapi_pref_usernamefldlength', '40', NULL, NULL),
('FrontEndUsers_mapi_pref_username_is_email', '1', NULL, NULL),
('FrontEndUsers_mapi_pref_user_session_expires', '1800', NULL, NULL),
('FrontEndUsers_mapi_pref_use_randomusername', '0', NULL, NULL),
('frontendwysiwyg', 'MicroTiny', NULL, NULL),
('Gallery_mapi_pref_allowed_extensions', 'jpg,jpeg,gif,png', NULL, NULL),
('Gallery_mapi_pref_be_folderpath', 'modules/Gallery/images/foldersmall.png', NULL, NULL),
('Gallery_mapi_pref_current_template', 'Fancybox', NULL, NULL),
('Gallery_mapi_pref_default_template_contents', '<div class="gallery">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class="gallerycomment">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class="pagenavigation">\r\n{if $pages > 1}\r\n<div class="prevpage">{$prevpage}</div>\r\n<div class="nextpage">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class="parentlink">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class="pagelinks">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class="img">\r\n	{if $image->isdir}\r\n		<a href="{$image->file}" title="{$image->titlename}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a class="group" href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="{$image->titlename}" rel="gallery-{$galleryid}"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->titlename}" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class="galleryclear">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n	position: fixed;\r\n	top: 50%;\r\n	left: 50%;\r\n	width: 40px;\r\n	height: 40px;\r\n	margin-top: -20px;\r\n	margin-left: -20px;\r\n	cursor: pointer;\r\n	overflow: hidden;\r\n	z-index: 1104;\r\n	display: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 40px;\r\n	height: 480px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n}\r\n\r\n#fancybox-overlay {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 100%;\r\n	z-index: 1100;\r\n	display: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n	padding: 0;\r\n	margin: 0;\r\n	border: 0;\r\n	overflow: auto;\r\n	display: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	padding: 20px;\r\n	z-index: 1101;\r\n	outline: none;\r\n	display: none;\r\n}\r\n\r\n#fancybox-outer {\r\n	position: relative;\r\n	width: 100%;\r\n	height: 100%;\r\n	background: #000;\r\n}\r\n\r\n#fancybox-content {\r\n	width: 0;\r\n	height: 0;\r\n	padding: 0;\r\n	outline: none;\r\n	position: relative;\r\n	overflow: hidden;\r\n	z-index: 1102;\r\n	border: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 100%;\r\n	height: 100%;\r\n	background: transparent;\r\n	z-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n	position: absolute;\r\n	top: -15px;\r\n	right: -15px;\r\n	width: 30px;\r\n	height: 30px;\r\n	background: transparent url(''../fancybox/fancybox.png'') -40px 0px;\r\n	cursor: pointer;\r\n	z-index: 1103;\r\n	display: none;\r\n}\r\n\r\n#fancybox-error {\r\n	color: #444;\r\n	font: normal 12px/20px Arial;\r\n	padding: 14px;\r\n	margin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n	width: 100%;\r\n	height: 100%;\r\n	padding: 0;\r\n	margin: 0;\r\n	border: none;\r\n	outline: none;\r\n	line-height: 0;\r\n	vertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n	width: 100%;\r\n	height: 100%;\r\n	border: none;\r\n	display: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n	position: absolute;\r\n	bottom: 0px;\r\n	height: 100%;\r\n	width: 35%;\r\n	cursor: pointer;\r\n	outline: none;\r\n	background: transparent url(''../fancybox/blank.gif'');\r\n	z-index: 1102;\r\n	display: none;\r\n}\r\n\r\n#fancybox-left {\r\n	left: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n	right: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n	position: absolute;\r\n	top: 50%;\r\n	left: -9999px;\r\n	width: 30px;\r\n	height: 30px;\r\n	margin-top: -15px;\r\n	cursor: pointer;\r\n	z-index: 1102;\r\n	display: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n	visibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n	left: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n	left: auto;\r\n	right: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n	position: absolute;\r\n	padding: 0;\r\n	margin: 0;\r\n	border: 0;\r\n	width: 20px;\r\n	height: 20px;\r\n	z-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n	top: -20px;\r\n	left: 0;\r\n	width: 100%;\r\n	background-image: url(''../fancybox/fancybox-x.png'');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n	top: -20px;\r\n	right: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n	top: 0;\r\n	right: -20px;\r\n	height: 100%;\r\n	background-image: url(''../fancybox/fancybox-y.png'');\r\n	background-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n	bottom: -20px;\r\n	right: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n	bottom: -20px;\r\n	left: 0;\r\n	width: 100%;\r\n	background-image: url(''../fancybox/fancybox-x.png'');\r\n	background-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n	bottom: -20px;\r\n	left: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n	top: 0;\r\n	left: -20px;\r\n	height: 100%;\r\n	background-image: url(''../fancybox/fancybox-y.png'');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n	top: -20px;\r\n	left: -20px;\r\n	background-image: url(''../fancybox/fancybox.png'');\r\n	background-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n	font-family: Helvetica;\r\n	font-size: 12px;\r\n	z-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n	padding-bottom: 10px;\r\n	text-align: center;\r\n	color: #333;\r\n	background: #fff;\r\n	position: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n	padding-top: 10px;\r\n	color: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n	position: absolute;\r\n	bottom: 0;\r\n	left: 0;\r\n	color: #FFF;\r\n	text-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n	padding: 10px;\r\n	background-image: url(''../fancybox/fancy_title_over.png'');\r\n	display: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n	position: absolute;\r\n	left: 0;\r\n	bottom: -20px;\r\n	height: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n	border: none;\r\n	border-collapse: collapse;\r\n	width: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n	border: none;\r\n	white-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n	padding: 0 0 0 15px;\r\n	background: url(''../fancybox/fancybox.png'') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n	color: #FFF;\r\n	line-height: 29px;\r\n	font-weight: bold;\r\n	padding: 0 0 3px 0;\r\n	background: url(''../fancybox/fancybox-x.png'') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n	padding: 0 0 0 15px;\r\n	background: url(''../fancybox/fancybox.png'') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }\r\n{*----------<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/fancybox/jquery.fancybox.pack.js"></script>\r\n<script type="text/javascript" src="modules/Gallery/templates/jquery/jquery.mousewheel.pack.js"></script>\r\n\r\n<script type="text/javascript">\r\n$(document).ready(function() {\r\n	$("a.group").fancybox({\r\n		''speedIn'':		300,\r\n		''speedOut'':	300,\r\n		''overlayColor'':	''#000'',\r\n		''overlayOpacity'':	0.7\r\n	});\r\n});\r\n</script>\r\n*}', NULL, NULL),
('Gallery_mapi_pref_editdirdates', '0', NULL, NULL),
('Gallery_mapi_pref_editfiledates', '0', NULL, NULL),
('Gallery_mapi_pref_fe_folderpath', 'modules/Gallery/images/folder.png', NULL, NULL),
('Gallery_mapi_pref_maximageheight', '768', NULL, NULL),
('Gallery_mapi_pref_maximagewidth', '1024', NULL, NULL),
('Gallery_mapi_pref_singleimg_template', 'Fancybox', NULL, NULL),
('Gallery_mapi_pref_singleimg_template_html', '<a class="group" href="{$image->file|escape:''url''|replace:''%2F'':''/''}" title="{$image->title}" rel="gallery"><img src="{$image->thumb|escape:''url''|replace:''%2F'':''/''}" alt="{$image->title}" /></a>', NULL, NULL),
('Gallery_mapi_pref_urlprefix', 'gallery', NULL, NULL),
('Gallery_mapi_pref_use_comment_wysiwyg', '0', NULL, NULL),
('global_umask', '022', NULL, NULL),
('listcontent_showalias', '1', NULL, NULL),
('listcontent_showtitle', '1', NULL, NULL),
('listcontent_showurl', '1', NULL, NULL),
('logintheme', 'NCleanGrey', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('MenuManager_mapi_pref_cachable_templates', 'YTowOnt9', NULL, NULL),
('MenuManager_mapi_pref_default_template', 'accessible_simple_navigation.tpl', NULL, NULL),
('metadata', '<meta name="Generator" content="SimpleCMS" />\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n ', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('MicroTiny_mapi_pref_allowimages', '1', NULL, NULL),
('MicroTiny_mapi_pref_allow_resize', '1', NULL, NULL),
('MicroTiny_mapi_pref_css_styles', '', NULL, NULL),
('MicroTiny_mapi_pref_show_statusbar', '1', NULL, NULL),
('ModuleManager_mapi_pref_module_repository', 'http://www.cmsmadesimple.org/ModuleRepository/request/v2/', NULL, NULL),
('News_mapi_pref_allowed_upload_types', 'gif,png,jpeg,jpg,xls,xlsx,doc,docx,pdf', NULL, NULL),
('News_mapi_pref_allow_summary_wysiwyg', '1', NULL, NULL),
('News_mapi_pref_auto_create_thumbnails', 'gif,png,jpeg,jpg', NULL, NULL),
('News_mapi_pref_current_browsecat_template', 'Sample', NULL, NULL),
('News_mapi_pref_current_detail_template', 'DetailNewsTemplate', NULL, NULL),
('News_mapi_pref_current_form_template', 'FrontEndNewsForm', NULL, NULL),
('News_mapi_pref_current_summary_template', 'Sample', NULL, NULL),
('News_mapi_pref_default_browsecat_template_contents', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, NULL),
('News_mapi_pref_default_category', '1', NULL, NULL),
('News_mapi_pref_default_detail_template_contents', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{eval var=$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsDetailField">\n        {if $field->type == ''file''}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src="{$entry->file_location}/{$field->value}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, NULL),
('News_mapi_pref_default_form_template_contents', '{* original form template *}\n{if isset($error)}\n  <h3><font color="red">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$titletext}:</p>\n		<p class="pageinput">{$inputtitle}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$categorytext}:</p>\n		<p class="pageinput">{$inputcategory}</p>\n	</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="pageoverflow">\n		<p class="pagetext">{$summarytext}:</p>\n		<p class="pageinput">{$inputsummary}</p>\n	</div>\n{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">*{$contenttext}:</p>\n		<p class="pageinput">{$inputcontent}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$extratext}:</p>\n		<p class="pageinput">{$inputextra}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$startdatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$startdateprefix time=$startdate end_year="+15"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n	</div>\n	<div class="pageoverflow">\n		<p class="pagetext">{$enddatetext}:</p>\n		<p class="pageinput">{html_select_date prefix=$enddateprefix time=$enddate end_year="+15"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=''onefield''}\n	      <div class="pageoverflow">\n		<p class="pagetext">{$onefield->name}:</p>\n		<p class="pageinput">{$onefield->field}</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="pageoverflow">\n		<p class="pagetext">&nbsp;</p>\n		<p class="pageinput">{$hidden}{$submit}{$cancel}</p>\n	</div>\n{$endform}\n', NULL, NULL),
('News_mapi_pref_default_summary_template_contents', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{eval var=$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{eval var=$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {eval var=$entry->extra}\n	{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class="NewsSummaryField">\n        {if $field->type == ''file''}\n          <img src="{$entry->file_location}/{$field->value}"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, NULL),
('News_mapi_pref_detail_returnid', '-1', NULL, NULL),
('News_mapi_pref_email_subject', 'A new News article has been posted', NULL, NULL),
('News_mapi_pref_expired_searchable', '1', NULL, NULL),
('News_mapi_pref_expiry_interval', '180', NULL, NULL),
('News_mapi_pref_fesubmit_redirect', 'news', NULL, NULL),
('News_mapi_pref_fesubmit_status', 'published', NULL, NULL),
('News_mapi_pref_formsubmit_emailaddress', 'admin@fti-harvard.org', NULL, NULL),
('News_mapi_pref_hide_summary_field', '1', NULL, NULL),
('nogcbwysiwyg', '0', NULL, NULL),
('page_active', '1', NULL, NULL),
('page_cachable', '1', NULL, NULL),
('page_extra1', '', NULL, NULL),
('page_extra2', '', NULL, NULL),
('page_extra3', '', NULL, NULL),
('page_metadata', '{* Add code here that should appear in the metadata section of all new pages *}', NULL, NULL),
('page_searchable', '1', NULL, NULL),
('page_showinmenu', '1', NULL, NULL),
('PruneAdminlog_lastexecute', '1323790426', NULL, NULL),
('pseudocron_granularity', '60', NULL, NULL),
('pseudocron_lastrun', '1323843847', NULL, NULL),
('searchmodule', 'Search', NULL, NULL),
('Search_mapi_pref_searchtext', 'Enter Search...', NULL, NULL),
('Search_mapi_pref_stopwords', 'i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very', NULL, NULL),
('Search_mapi_pref_usestemming', 'false', NULL, NULL),
('SelfRegistration_mapi_pref_additionalgroups_matchfields', '*username-password*', NULL, NULL),
('SelfRegistration_mapi_pref_allowselectpkg', '0', NULL, NULL),
('SelfRegistration_mapi_pref_enable_whitelist', '', NULL, NULL),
('SelfRegistration_mapi_pref_inline_forms', '1', NULL, NULL),
('SelfRegistration_mapi_pref_login_afterverify', '0', NULL, NULL),
('SelfRegistration_mapi_pref_noregister_groups', '', NULL, NULL),
('SelfRegistration_mapi_pref_notify_on_registration', '1', NULL, NULL),
('SelfRegistration_mapi_pref_redirect_afterregister', '', NULL, NULL),
('SelfRegistration_mapi_pref_redirect_afterverify', '', NULL, NULL),
('SelfRegistration_mapi_pref_reg_additionalgroups', '0', NULL, NULL),
('SelfRegistration_mapi_pref_require_email_confirmation', '0', NULL, NULL),
('SelfRegistration_mapi_pref_selfreg_emailconfirm_subject', 'Registration Confirmation', NULL, NULL),
('SelfRegistration_mapi_pref_selfreg_emailuseredited_subject', 'Your registration info has been modified', NULL, NULL),
('SelfRegistration_mapi_pref_selfreg_force_email_twice', '0', NULL, NULL),
('SelfRegistration_mapi_pref_selfreg_skip_final_msg', '0', NULL, NULL),
('SelfRegistration_mapi_pref_send_emails_to', 'root@localhost.com', NULL, NULL),
('SelfRegistration_mapi_pref_whitelist', '', NULL, NULL),
('SelfRegistration_mapi_pref_whitelist_trigger_message', '', NULL, NULL),
('Showtime_mapi_pref_load_jQuery_scripts', '1', NULL, NULL),
('Showtime_mapi_pref_uploadmethode', 'swf', NULL, NULL),
('Showtime_mapi_pref_watermark_file', 'watermark.png', NULL, NULL),
('Showtime_mapi_pref_watermark_onoff', '0', NULL, NULL),
('Showtime_mapi_pref_watermark_padding_x', '10', NULL, NULL),
('Showtime_mapi_pref_watermark_padding_y', '10', NULL, NULL),
('Showtime_mapi_pref_watermark_pos', 'bottom_right', NULL, NULL),
('Showtime_mapi_pref_watermark_transparant', '70', NULL, NULL),
('sitedownexcludes', '', NULL, NULL),
('sitedownmessage', '<p>Site is currently down for maintenance.</p>', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('sitedownmessagetemplate', '-1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('sitemask', 'uTsvABNjn#D6*Z5P', NULL, NULL),
('sitename', '', NULL, NULL),
('thumbnail_height', '96', NULL, NULL),
('thumbnail_width', '96', NULL, NULL),
('Uploads_mapi_pref_autothumbnail_extensions', 'gif,jpg,jpeg,bmp,png', NULL, NULL),
('Uploads_mapi_pref_autothumbnail_size', '80', NULL, NULL),
('Uploads_mapi_pref_category_expiry', '0', NULL, NULL),
('Uploads_mapi_pref_create_dummy_index_html', '1', NULL, NULL),
('Uploads_mapi_pref_default_detailrpt', 'default', NULL, NULL),
('Uploads_mapi_pref_default_sendfileform', 'default', NULL, NULL),
('Uploads_mapi_pref_default_summaryrpt', 'default', NULL, NULL),
('Uploads_mapi_pref_default_uploadform', 'default', NULL, NULL),
('Uploads_mapi_pref_default_yousenditform', 'default', NULL, NULL),
('Uploads_mapi_pref_detailrpt_sysdefault', '<!-- Start Upload Detail template -->\n<table>\n  <tr>\n    {if isset($entry->thumbnail_url)}\n    <td>{$thumbnail}</td>\n    <td><img src="{$entry->thumbnail_url}" border="0" /></td>\n    {else}\n    <td>{$icon}</td>\n    <td><img src="{$entry->iconurl}" border="0" /></td>\n    {/if}\n  </tr>\n  <tr>\n    <td>{$category}</td>\n    <td>{$entry->category}</td>\n  </tr>\n  <tr>\n    <td>{$id}</td>\n    <td>{$entry->id}</td>\n  </tr>\n  <tr>\n    <td>{$name}</td>\n    <td><a href="{$entry->download_url}" title="{$entry->name}">{$entry->name}</a>&nbsp;&nbsp;\n        <a href="{$entry->sendfile_url}" title="">Send this file</a><br/>\n    </td>\n  </tr>\n  {if isset($entry->delete_url)}\n  <tr>\n    <td>{$delete}</td>\n    <td><a href="{$entry->delete_url}" title="{$delete}" onclick="return confirm(''{$areyousure}'');">{$entry->name}</a></td>\n  </tr>\n  {/if}\n  <tr>\n    <td>{$date}</td>\n    <td>{$entry->date}</td>\n  </tr>\n  <tr>\n    <td>{$author}</td>\n    <td>{$entry->author}</td>\n  </tr>\n  <tr>\n    <td>{$size}</td>\n    <td>{$entry->size}</td>\n  </tr>\n  <tr>\n    <td>{$summary}</td>\n    <td>{$entry->summary}</td>\n  </tr>\n  <tr>\n    <td>{$description}</td>\n    <td>{$entry->description}</td>\n  </tr>\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n  <tr>\n    <td>{$field.name}</td>\n    <td>{$field.value}</td>\n  </tr>\n  {/foreach}\n</table>\n<!-- End Upload Detail template -->\n', NULL, NULL),
('Uploads_mapi_pref_download_chunksize', '8', NULL, NULL),
('Uploads_mapi_pref_requirefilename_extensions', '1', NULL, NULL),
('Uploads_mapi_pref_sendfileform_sysdefault', '{* form to send a file *}\n{if isset($message)}\n<div style="border: 1px solid #99FD99; color: #000; background: #DAFEDA;">\n{$message}\n</div>\n{/if}\n\n{if isset($error)}\n<div style="border: 1px dashed #FD9999; color: #000; background: #FEDADA;">\n{$error}\n</div>\n{/if}\n\n{$formstart}\n<fieldset>\n<legend>{$mod->Lang(''file_info'')}:&nbsp;</legend>\n<p>{$mod->Lang(''name'')}:&nbsp;{$upload_info.upload_name} ({$upload_info.upload_id})</p>\n<p>{$upload_info.upload_summary}</p>\n</fieldset>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">\n    {$mod->Lang(''addressees'')}\n  </p>\n  <p style="margin-left: 4em; margin-top: 0;">\n   <textarea name="{$actionid}input_sendto" rows="2" cols="50">{$sendto}</textarea>\n  </p>\n</div>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">\n    {$mod->Lang(''subject'')}\n  </p>\n  <p style="margin-left: 4em; margin-top: 0;">\n    <input type="text" name="{$actionid}input_subject" size="50" maxlength="50" value="{$subject}"/>\n  </p>\n</div>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">\n    {$mod->Lang(''notes'')}\n  </p>\n  <p style="margin-left: 4em; margin-top: 0;">\n   <textarea name="{$actionid}input_notes" rows="5" cols="50">{$notes}</textarea>\n  </p>\n</div>\n\n<div class="row" style="width: 80%;">\n  <p style="margin-left: 4em; margin-top: 1em;">&nbsp;</p>\n  <p style="margin-left: 4em; margin-top: 0;">\n    <input type="submit" name="{$actionid}input_submit" value="{$mod->Lang(''send'')}"/>\n    <input type="submit" name="{$actionid}input_cancel" value="{$mod->Lang(''cancel'')}"/>\n  </p>\n</div>\n{$formend}', NULL, NULL),
('Uploads_mapi_pref_send_upload_notifications_to', '', NULL, NULL),
('Uploads_mapi_pref_subnet_exclusions', '', NULL, NULL),
('Uploads_mapi_pref_summaryrpt_sysdefault', '<!-- Start Upload Summary Template -->\n{if isset($input_filter) }\n{$startform}\n{$prompt_filter}{$input_filter}{$hidden_params}{$input_submit}\n{$endform}\n<br/>\n{if isset($matches)}\n{$matches}&nbsp;{$matchestext}\n{/if}\n{/if}\n\n<div>\n{if isset($prevpage_url)}\n  <a href="{$firstpage_url}" title="{$firstpage}">{$firstpage_arrow}</a>\n  <a href="{$prevpage_url}" title="{$prevpage}">{$prevpage_arrow}</a>\n{/if}\n{if $numpages > 1}\n  &nbsp;&nbsp;{$pagetext} {$pagenum} {$oftext} {$numpages}&nbsp;&nbsp;\n{/if}\n{if isset($nextpage_url)}\n  <a href="{$nextpage_url}" title="{$nextpage}">{$nextpage_arrow}</a>\n  <a href="{$lastpage_url}" title="{$lastpage}">{$lastpage_arrow}</a>\n{/if}\n</div>\n\n{foreach from=$items item=''entry'' name=''uploads''}\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    <div class="row" style="width: 100%; padding-bottom: 10px;">\n  {/if}\n \n  <div class="upload" style="float: left; width: 33%;">\n    <a href="{$entry->detailurl}">{$entry->upload_name}</a>&nbsp;({$entry->size})<br/>\n    <a href="{$entry->download_url}" title="{$entry->upload_name}">\n      {if isset($entry->thumbnail_url)}\n        <img src="{$entry->thumbnail_url}" alt="">\n      {else}\n        <img src="{$entry->iconurl}" alt="">\n      {/if}\n    </a>\n    <br/>\n    <a href="{$entry->sendfile_url}" title="">Send this file</a><br/>\n    {$author}: {$entry->author}<br/>\n    {$date}: {$entry->date}<br/>\n    {$entry->summary}\n  </div>\n\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    </div>\n  {/if}\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n    {$field.name}: {$field.value}<br/>\n  {/foreach}\n{/foreach}\n<!-- End Upload Summary Template -->\n', NULL, NULL),
('Uploads_mapi_pref_uploadform_sysdefault', '<!-- Upload form template -->\n{$startform}\n{if isset($max_uploadsize)}\n<input type=''hidden'' name="MAX_UPLOAD_SIZE" value="{$max_uploadsize}"/>\n{/if}\n{if isset($noauthor) } \n{$input_author}\n{else}\n<p>{$prompt_author}:&nbsp;<input type="text" name="{$actionid}input_author" value="{$author}" size="20" maxlength="255"/></p>\n{/if}\n<p>{$prompt_upload}:&nbsp;<input type="file" name="{$actionid}input_browse" value="" size="50" maxlength="255"/></p>\n<p>{$prompt_summary}&nbsp;<input type="text" name="{$actionid}input_summary" value="" size="40" maxlength="255"/></p>\n</p>\n<p>{$prompt_description}&nbsp;<textarea name="{$actionid}input_description"></textarea></p>\n<p>{$prompt_destname}&nbsp;<input type="text" name="{$actionid}input_destname" value="" size="40" maxlength="255"/>&nbsp;{$info_destname}</p>\n<p>{$prompt_thumbnail}&nbsp;<input type="file" name="{$actionid}input_thumbnail" value="" size="40" maxlength="255"/>&nbsp;{$info_thumbnail}</p>\n\n{if isset($fields)}\n  {foreach from=$fields item=''one'' key=''name''}\n  {strip}<p>{$one.name}:&nbsp;\n  {if isset($one.input)}\n    {$one.input}\n  {elseif $one.type == ''textinput''}\n    <input type="text" name="{$actionid}field_{$one.id}" value="{$one.value}" size="{$one.attrib.length}" maxlength="{$one.attrib.maxlength}"/>\n  {elseif $one.type == ''checkbox''}\n    <input type="checkbox" name="{$actionid}field_{$one.id}" value="1"{if $one.value == 1} checked="checked"{/if}/>\n  {elseif $one.type == ''dropdown''}\n    <select name="{$actionid}field_{$one.id}">\n      {html_options options=$one.attrib.options}\n    </select>\n  {elseif $one.type == ''multiselect''}\n    <select multiple="multiple" size="4" name="{$actionid}field_{$one.id}[]">\n      {html_options options=$one.attrib.options}\n    </select>\n  {/if}{/strip}\n  {/foreach}\n{/if}\n{if isset($captcha)}\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p><input type="text" name="{$actionid}input_captcha" size="10" maxlength="10"/></p>\n{/if}\n<p><input type="submit" name="{$actionid}input_submit" value="{$mod->Lang(''submit'')}"/></p>\n{$endform}\n<!-- Upload form template -->\n', NULL, NULL),
('Uploads_mapi_pref_valid_uploadextensions', 'png,gif,jpg,JPEG,bmp,wmf,wma,wmv,mpg,zip,tar,gz,bz2,mp3,wav,au,ogg,xml,pdf', NULL, NULL);
INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
('Uploads_mapi_pref_yousenditform_sysdefault', '{* yousendit interface *}\n{if isset($message)}\n<div style="border: 1px solid #99FD99; color: #000; background: #DAFEDA; margin-bottom: 0.5em;">\n<ul>\n  {foreach from=$messages item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{if isset($errors)}\n<div style="border: 1px dashed #FD9999; color: #000; background: #FEDADA; ; margin-bottom: 0.5em;">\n<ul>\n  {foreach from=$errors item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{$startform}\n<p>{$mod->Lang(''author'')}:&nbsp;\n  <input type="text" name="author" size="20" maxlength="255" value="{$author}"/>\n</p>\n\n<p>{$mod->Lang(''summary'')}:\n  <input type="text" name="{$actionid}input_summary" size="40" maxlength="255" value="{$summary}"/>\n</p>\n\n<p>{$mod->Lang(''description'')}:&nbsp;\n  <textarea name="{$actionid}input_description">{$description}</textarea>\n</p>\n\n<p>{$mod->Lang(''destname'')}:&nbsp;\n  <input type="text" name="{$actionid}input_destname" size="40" maexlength="255" value="{$destname}"/><br/>\n  {$mod->Lang(''info_destname'')}\n</p>\n\n<p>{$mod->Lang(''thumbnail'')}:&nbsp;\n  <input type="file" name="{$actionid}input_thumbnail" size="50"/>\n</p>\n\n<p>{$mod->Lang(''prompt_replace'')}:&nbsp;\n  <input type="hidden" name="{$actionid}input_replace" value="0"/>\n  <input type="checkbox" name="{$actionid}input_replace" value="1"/><br/>\n  {$mod->Lang(''info_replace'')}\n</p>\n\n<p>*{$mod->Lang(''upload'')}:&nbsp;\n  <input type="file" name="{$actionid}input_browse" size="50"/>\n</p>\n\n<br/>\n<hr/>\n<br/>\n\n<p>*{$mod->Lang(''to'')}:&nbsp;\n  <textarea name="{$actionid}input_sendto" rows="2" cols="50">{$sendto}</textarea>\n</p>\n\n<p>*{$mod->Lang(''subject'')}:&nbsp;\n  <input type="text" name="{$actionid}input_subject" value="{$subject}" size="50"/>\n</p>\n\n<p>{$mod->Lang(''notes'')}:&nbsp;\n  <textarea name="{$actionid}input_notes" rows="5" cols="50">{$notes}</textarea>\n</p>\n\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p>{$input_captcha}</p>\n<p>\n  <input type="submit" name="{$actionid}input_submit" value="{$mod->Lang(''send'')}"/>\n  <input type="submit" name="{$actionid}input_cancel" value="{$mod->Lang(''cancel'')}"/>\n</p>\n\n{$endform}\n<!-- Upload form template -->\n', NULL, NULL),
('urlcheckversion', '', NULL, NULL),
('useadvancedcss', '1', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('xmlmodulerepository', '', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
('__listcontent_timelock__', '1322628550', NULL, NULL),
('__NOTIFICATIONS__', '', NULL, NULL),
('mail_is_set', '1', NULL, NULL),
('CMSMailer_mapi_pref_charset', 'utf-8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
CREATE TABLE IF NOT EXISTS `cms_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) default NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) default NULL,
  `active` tinyint(4) default NULL,
  `default_template` tinyint(4) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`template_id`),
  KEY `cms_index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_templates`
--

INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
(15, 'CSSMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: CSSMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu.tpl''}\n            <hr class="accessibility" />\n{* End Navigation *}\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2011-11-12 02:39:26'),
(16, 'CSSMenu top + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n    {* Change lang="en" to the language of your site *}\r\n\r\n    {* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n    <head>\r\n        <title>{sitename} - {title}</title>\r\n        {* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n        {metadata}\r\n        {* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n        {cms_stylesheet}\r\n        {* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n        {cms_selflink dir="start" rellink=1}\r\n        {cms_selflink dir="prev" rellink=1}\r\n        {cms_selflink dir="next" rellink=1}\r\n        {* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n        {* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n        {literal}\r\n        <script type="text/JavaScript">\r\n            <!--\r\n            //pass min and max - measured against window width\r\n            function P7_MinMaxW(a,b){\r\n                var nw="auto",w=document.documentElement.clientWidth;\r\n                if(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n            }\r\n            //-->\r\n        </script>\r\n        <!--[if lte IE 6]>\r\n        <style type="text/css">\r\n        #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n        #container {height: 1%;}\r\n        </style>\r\n        <![endif]-->\r\n        {/literal}\r\n        {* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n        <!--[if lte IE 6]>\r\n        <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n        <![endif]--> \r\n        {* The above JavaScript is required for CSSMenu to work in IE *}\r\n    </head>\r\n    <body>\r\n        <div id="pagewrapper">\r\n\r\n            {* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n            <ul class="accessibility">\r\n                <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n                <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n            </ul>\r\n            {* end accessibility skip links *}\r\n\r\n            <hr class="accessibility" />\r\n            {* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n            {* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n            <div id="header">\r\n\r\n                {* this holds the name of the site on the right side *}\r\n                <h2 class="headright">{sitename}</h2>\r\n\r\n                {* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n                <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n                <hr class="accessibility" />\r\n            </div>\r\n            {* End Header *}\r\n\r\n            {* Start Navigation *}\r\n            <div id="menu_vert">\r\n                {* stylesheet  "Navigation: CSSMenu - Horizontal" *}\r\n                <h2 class="accessibility">Navigation</h2>\r\n                {menu loadprops=0 template=''cssmenu.tpl''}\r\n                <hr class="accessibility" />\r\n            </div>\r\n            {* End Navigation *}\r\n\r\n            {* Start Breadcrumbs *}\r\n            <div class="crbk">\r\n                {* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n                <div class="breadcrumbs">\r\n        <!-- <img src=''uploads/lastevent.png''> -->\r\n                    {breadcrumbs root=''Home'' delimiter=''&raquo;''}\r\n                    <hr class="accessibility" />\r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n            {* End Breadcrumbs *}\r\n\r\n\r\n            <!--\r\n            <div class=''box''>\r\n             <div class=''boxtop''><div></div></div>\r\n              <div class=''boxcontent''>\r\n            -->\r\n\r\n            <div id="contentbox">\r\n                {* Start Content *}\r\n                <div id="content">\r\n\r\n                    <!--\r\n                    <div class=''box_news''>\r\n                        <div class=''boxtop_news''><div></div></div>\r\n                        <div class=''boxcontent_news''>\r\n                    -->\r\n                    <div class=''box_news''>\r\n                        <div id="sidebarbox">\r\n\r\n                            {* Start Sidebar *}                        \r\n                            \r\n\r\n\r\n                                    {content block=''Sidebar''}\r\n\r\n                                    {* Start News, stylesheet  "Module: News" *}\r\n\r\n                                    {*	<div id="news"> *}\r\n                                        <h2>News</h2>\r\n                                        {news number=''5'' detailpage=''news''}\r\n                                        {*	</div> *}\r\n\r\n                                    {* End News *}\r\n                                \r\n                            {* End Sidebar *}\r\n                        </div>\r\n\r\n                    </div>\r\n\r\n\r\n                    <!--\r\n                                            </div>\r\n                                            <div class=''boxbottom_news''><div></div></div>\r\n                                        </div>\r\n                    -->\r\n                    {literal}\r\n\r\n                    <script type="text/javascript" src="uploads/scroll/jsScroller.js"></script>\r\n                    <script type="text/javascript" src="uploads/scroll/jsScrollbar.js"></script>\r\n\r\n                    <script type="text/javascript">\r\n                        var scroller  = null;\r\n                        var scrollbar = null;\r\n\r\n                        window.onload = function () {\r\n                            scroller  = new jsScroller(document.getElementById("scrollcontent"), 400, 180);\r\n                            scrollbar = new jsScrollbar (document.getElementById("Scrollbar-Container"), scroller, true, scrollbarEvent);\r\n                        }\r\n\r\n                        function scrollbarEvent (o, type) {\r\n                            if (type == "mousedown") {\r\n                                if (o.className == "Scrollbar-Track") o.style.backgroundColor = "#E3E3E3";\r\n                                else o.style.backgroundColor = "#BBB";\r\n                            } else {\r\n                                if (o.className == "Scrollbar-Track") o.style.backgroundColor = "#EEE";\r\n                                else o.style.backgroundColor = "#CCC";\r\n                            }\r\n                        }\r\n                    </script>\r\n\r\n                    {/literal}\r\n\r\n                    {* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n<!--                    <div class="back1">\r\n                        <div class="back2">\r\n                            <div class="back3">\r\n-->\r\n<div class="back1">\r\n                                <div id="main" style="overflow: hidden; height: 425px;">\r\n\r\n\r\n                                    <div>\r\n                                        <div id="scrollcontent">\r\n                                            <div class="Scroller-Container">\r\n\r\n                                                <div style="float: right;" >{print showbutton=true script=true}</div>\r\n                                                <h2>{title}</h2>\r\n                                                {content}\r\n                                                <br />{* to insure space below content *}\r\n\r\n                                                {* Start relational links *}\r\n                                                {* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n                                                {*            <div class="right49">\r\n                                                    <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n                                                </div>\r\n                                                *}\r\n                                                {*\r\n                                                <div class="left49">\r\n                                                    <p> {cms_selflink dir="previous" label="Previous page: "}\r\n                                                        *}\r\n\r\n                                                        {* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n                                                        {*\r\n                                                        <br />\r\n                                                        {cms_selflink dir="next"}\r\n                                                    </p>\r\n                                                </div>\r\n                                                *}\r\n                                                {* End relational links *}\r\n\r\n                                                <hr class="accessibility" />\r\n                                                <div class="clear"></div>\r\n<!--                                            </div>\r\n                                        </div>\r\n                                    </div>-->\r\n                                    <!--        </div> -->\r\n                                    {* End Content Area *}\r\n\r\n</div>\r\n\r\n                                </div>\r\n                            </div>\r\n\r\n\r\n                            <div id="Scrollbar-Container">\r\n                                <div class="Scrollbar-Up"></div>\r\n                                <div class="Scrollbar-Down"></div>\r\n                                <div class="Scrollbar-Track">\r\n                                    <div class="Scrollbar-Handle"></div>\r\n                                </div>\r\n                            </div>\r\n\r\n\r\n\r\n\r\n\r\n                        </div>\r\n                        {* End Content *}\r\n\r\n\r\n                    </div>\r\n                    <!-- <div class=''boxbottom''><div></div></div> -->\r\n                </div>\r\n\r\n                {* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n                {*      <div class="footback">\r\n                    <div id="footer"> *}\r\n                        {* stylesheet  "Navigation: FatFootMenu" *}\r\n                        {*          <div id="fooleft">\r\n                            {menu loadprops=0}\r\n                        </div>\r\n                        <div id="footrt">\r\n                            {global_content name=''footer''}\r\n                        </div>\r\n                        <div class="clear"></div>\r\n                    </div>\r\n                </div> *}\r\n                {* End Footer *}\r\n            </div>\r\n            {* end pagewrapper *}\r\n        </div>\r\n    </body>\r\n</html>', '', '', 1, 1, '2006-07-25 21:22:33', '2011-12-12 02:25:39'),
(17, 'Left simple navigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Left sidebar + 1 column" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything with class="accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1> \n       \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' collapse=''1''}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class="back">        \n          <div id="main">\n            <div style="float: right;">{print showbutton=true script=true}</div>\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class="accessibility" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class="clear"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2011-11-12 02:39:26'),
(18, 'Top simple navigation + left subnavigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>\n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id="menu_horiz">\n{* stylesheet  "Navigation: Simple - Horizontal" *}\n        <h2 class="accessibility">Navigation</h2>\n        {menu loadprops=0 template=''simple_navigation.tpl'' number_of_levels=''1''}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Sub Navigation, stylesheet  "Navigation: Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Sub Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' start_level=''2'' collapse=''1''}\n                <hr class="accessibility" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2006-07-25 21:22:33', '2011-12-09 04:05:35'),
(19, 'Minimal template', '{process_pagedata}\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style="float: left; width: 25%;">\r\n         {menu loadprops=0 template=''minimal_menu.tpl''}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>', NULL, NULL, 1, 0, '2006-07-25 21:22:33', '2011-11-12 02:39:26'),
(20, 'ShadowMenu Tab + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation, stylesheet "Navigation: ShadowMenu - Horizontal" *}\r\n      <div id="menu_vert">\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\r\n      <div id="search">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n          {content block=''Sidebar''}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n            <div id="news">\r\n              <h2>News</h2>\r\n              {news number=''3'' detailpage=''news''}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main">\r\n                <div style="float: right;">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class="right49">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n      <div class="footback">\r\n        <div id="footer">\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-01 04:30:42', '2011-12-09 04:05:35'),
(21, 'ShadowMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation: ShadowMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\n            <hr class="accessibility" />\n\n{* Start News, stylesheet  "Module: News" *}\n            <div id="news">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <div style="float: right;">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class="left49">\n              <p> {cms_selflink dir="previous" label="Previous page: "}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation: FatFootMenu" *}\n          <div id="fooleft">\n          {menu loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=''footer''}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', '', '', 1, 0, '2009-05-01 23:17:51', '2011-11-12 02:39:26');
INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES
(22, 'NCleanBlue', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\r\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel="canonical" href="{$canonical}" />{elseif isset($content_obj)}<link rel="canonical" href="{$content_obj->GetURL()}" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir="start" rellink=1}\r\n{cms_selflink dir="prev" rellink=1}\r\n{cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type="text/javascript"  src="uploads/NCleanBlue/js/ie6fix.js"></script>\r\n<script type="text/javascript">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(''.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version'');\r\n</script>\r\n<style type="text/css">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand("BackgroundImageCache", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id="ncleanblue">\r\n      <div id="pagewrapper" class="core-wrap-960 core-center">\r\n{* start accessibility skip links *}\r\n        <ul class="accessibility">\r\n          <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n          <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id="header" class="util-clearfix">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  "Layout: NCleanBlue" *}\r\n          <div id="logo" class="core-float-left">\r\n            {cms_selflink dir="start" text="$sitename"}\r\n          </div>\r\n          \r\n{* Start Search, the input "Submit" is using an image, CSS: div#search input.search-button *}\r\n          <div id="search" class="core-float-right">\r\n            {search search_method="post"}\r\n          </div>\r\n{* End Search *}\r\n          <span class="util-clearb">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  "Layout: NCleanBlue", starting at Menu  ROOT *}\r\n          <h2 class="accessibility util-clearb">Navigation</h2>\r\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\r\n          <div class="page-menu util-clearfix">\r\n          {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n          </div>\r\n          <hr class="accessibility util-clearb" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id="content" class="util-clearfix"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          {*<div title="CMS - {cms_version} - {cms_versionname}" id="version">\r\n          {capture assign=''cms_version''}{cms_version|lower}{/capture}{"/-([a-z]).*/"|preg_replace:"":$cms_version}\r\n          </div>*}\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id="bar" class="util-clearfix">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class="breadcrumbs core-float-right">\r\n              {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class="accessibility util-clearb" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id="left" class="core-float-left">\r\n            <div class="sbar-top">\r\n              <h2 class="sbar-title">News</h2>\r\n            </div>\r\n            <div class="sbar-main">\r\n{* Start News *}\r\n              <div id="news">\r\n              {news number=''3'' detailpage=''news''}\r\n              </div>\r\n              <img class="screen" src="uploads/NCleanBlue/screen-1.6.jpg" width="139" height="142" title="CMS - {cms_version} - {cms_versionname}" alt="CMS - {cms_version} - {cms_versionname}" />\r\n{* End News *} \r\n            </div>\r\n            <span class="sbar-bottom">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id="main"  class="core-float-right">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class="main-top">\r\n              <div class="print core-float-right">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class="main-main util-clearfix">\r\n              <h1 class="title">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class="main-bottom">\r\n              <div class="right49 core-float-right">\r\n              {anchor anchor=''main'' text=''^&nbsp;&nbsp;Top''}\r\n              </div>\r\n              <div class="left49 core-float-left">\r\n                <span>\r\n                  {cms_selflink dir="previous" label="Previous page: "}&nbsp;\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir="next"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class="accessibility" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class="util-clearb">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id="footer-wrapper">\r\n        <div id="footer" class="core-wrap-960">\r\n{* first foot menu *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  number_of_levels=''1''}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class="block core-float-left">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  start_level="2"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called "footer" *}\r\n          <div class="block cms core-float-left">\r\n            {global_content name=''footer''}\r\n          </div>\r\n          \r\n          <span class="util-clearb">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>', '', '', 1, 0, '2009-05-06 14:20:10', '2011-11-12 02:39:26'),
(23, 'PopupPage', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n<div id="pengurusbox">\r\n{content}\r\n</div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2011-11-12 02:57:03', '2011-12-09 02:58:41'),
(24, 'CSSMenu_slideshow_mod', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\r\n{* Change lang="en" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir="start" rellink=1}\r\n {cms_selflink dir="prev" rellink=1}\r\n {cms_selflink dir="next" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type="text/JavaScript">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw="auto",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type="text/css">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet "Layout: Top menu + 2 columns" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n  </head>\r\n  <body>\r\n    <div id="pagewrapper">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class="accessibility">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class="accessibility" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout: Top menu + 2 columns" *}\r\n      <div id="header">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class="headright">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation *}\r\n      <div id="menu_vert">\r\n{* stylesheet  "Navigation: CSSMenu - Horizontal" *}\r\n        <h2 class="accessibility">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu.tpl''}\r\n        <hr class="accessibility" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class="crbk">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class="breadcrumbs">\r\n<!-- <img src=''uploads/lastevent.png''> -->\r\n        {breadcrumbs root=''Home'' delimiter=''&raquo;''}\r\n          <hr class="accessibility" />\r\n        </div>\r\n      </div>\r\n\r\n\r\n\r\n{* End Breadcrumbs *}\r\n\r\n\r\n<div class=''box''>\r\n <div class=''boxtop''><div></div></div>\r\n  <div class=''boxcontent''>\r\n\r\n\r\n{* Start Content *}\r\n      <div id="content">\r\n\r\n\r\n<div class=''box_news''>\r\n <div class=''boxtop_news''><div></div></div>\r\n  <div class=''boxcontent_news''>\r\n\r\n{* Start Sidebar *}\r\n        <div id="sidebar">\r\n          <div id="sidebarb">\r\n\r\n\r\n          {content block=''Sidebar''}\r\n\r\n{* start login *}\r\n{* <div id="news" style="padding: 7px 7px 7px 7px"> *}\r\n{* {FrontEndUsers} *}\r\n{* </div> *}\r\n\r\n{* end login *}\r\n\r\n{* Start News, stylesheet  "Module: News" *}\r\n\r\n{*	<div id="news">  *}\r\n		<h2>News</h2>\r\n		{news number=''5'' detailpage=''news''}\r\n{*\r\n		<div style="padding: 7px 7px 7px 7px">\r\n			<a href="{cms_selflink href=''submitnews''}">Submit News</a>\r\n		</div>\r\n*}\r\n{*	</div>  *}\r\n\r\n{* End News *}\r\n\r\n</div>\r\n <div class=''boxbottom_news''><div></div></div>\r\n</div>\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class="back1">\r\n          <div class="back2">\r\n            <div class="back3">\r\n              <div id="main" style="overflow: hidden; height: 425px;">\r\n{*                <div style="float: right;" >{print showbutton=true script=true}</div> *}\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n{*            <div class="right49">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n*}\r\n{*\r\n            <div class="left49">\r\n              <p> {cms_selflink dir="previous" label="Previous page: "}\r\n*}\r\n\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text "Previous page" *}\r\n{*\r\n              <br />\r\n              {cms_selflink dir="next"}\r\n              </p>\r\n            </div>\r\n*}\r\n{* End relational links *}\r\n\r\n                <hr class="accessibility" />\r\n                <div class="clear"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n\r\n</div>\r\n <div class=''boxbottom''><div></div></div>\r\n</div>\r\n\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\r\n{*      <div class="footback">\r\n        <div id="footer"> *}\r\n{* stylesheet  "Navigation: FatFootMenu" *}\r\n{*          <div id="fooleft">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id="footrt">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div> *}\r\n{* End Footer *}\r\n\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>', '', '', 1, 0, '2011-11-30 03:22:36', '2011-12-12 02:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates_seq`
--

DROP TABLE IF EXISTS `cms_templates_seq`;
CREATE TABLE IF NOT EXISTS `cms_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_templates_seq`
--

INSERT INTO `cms_templates_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `cms_userplugins`
--

DROP TABLE IF EXISTS `cms_userplugins`;
CREATE TABLE IF NOT EXISTS `cms_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) default NULL,
  `code` text,
  `description` text,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_userplugins`
--

INSERT INTO `cms_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES
(1, 'user_agent', '//Code to show the user''s user agent information.\r\necho $_SERVER["HTTP_USER_AGENT"];', 'Code to show the users user agent information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(2, 'custom_copyright', '//set start to date your site was published\r\n$startCopyRight=''2004'';\r\n\r\n// check if start year is this year\r\nif(date(''Y'') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.''-''. date(''Y'');\r\n}', 'Code to output copyright information', '2006-07-25 21:22:33', '2006-07-25 21:22:33'),
(3, 'getLatestImages', '//Showtime::imagecreatefromfile("uploads/headerbanner.png");\r\nShowtime::manualAddPic("uploads/headerbanner.png");', '', '2011-11-22 03:18:53', '2011-11-22 04:33:52'),
(4, 'redirect', 'if( isset( $params[''to''] ) )\r\n  {\r\n    global $gCms;\r\n    $manager =& $gCms->GetHierarchyManager();\r\n    $node =& $manager->sureGetNodeByAlias($params[''to'']);\r\n    $content =& $node->GetContent();\r\n    if (isset($content) && is_object($content))\r\n       {\r\n         if ($content->GetURL() != '''')\r\n         {\r\n            redirect($content->GetURL());\r\n         }\r\n       }\r\n    else return ''<!-- redirect udt - page not found: ''.$params[''to''].'' -->'';\r\n  }', '', '2011-11-23 09:22:48', '2011-11-23 09:22:48'),
(6, 'current_page_id', '//$gCms = cmsms();\r\n//$gCms->smarty->assign(''xcurrpageid'', $_COOKIE[''currentpageid'']);\r\n$smarty->assign(''currpageid'', $_COOKIE[''currentpageid'']);\r\n//return $_COOKIE[''currentpageid''];', '', '2011-12-10 01:16:33', '2011-12-11 18:00:55'),
(7, 'save_current_page_id', '//print_r($params);\r\n\r\nif (isset($params[''articleid''])) {\r\nsetcookie(''currentpageid'',$params[''articleid''], time()+3600, ''/'');\r\n}\r\nelse\r\n{\r\nsetcookie(''currentpageid'',62, time()+3600, ''/'');\r\n}\r\n\r\n\r\n\r\n', '', '2011-12-10 08:30:40', '2011-12-11 17:40:29'),
(8, 'get_page_id', '//$gCms = cmsms();\r\n$gCms->variables[''content_id''];', '', '2011-12-11 17:29:45', '2011-12-11 17:50:32'),
(9, 'news_article_added', '//send mail to all members\r\n//print_r($entry);\r\n\r\n$to  = ''ronald.a.96@gmail.com'';// . '', ''; // note the comma\r\n//$to .= ''wez@example.com'';\r\n\r\n// subject\r\n$subject = ''News Article Added'';\r\n\r\n// message\r\n$message = ''\r\n<html>\r\n<head>\r\n  <title>News article added</title>\r\n</head>\r\n<body>\r\n  <p>There is a new article added</p>\r\n<p>new id: ''.$_COOKIE[''newarticleid''].''</p>\r\n</body>\r\n</html>\r\n'';\r\n\r\n// To send HTML mail, the Content-type header must be set\r\n$headers  = ''MIME-Version: 1.0'' . "\\r\\n";\r\n$headers .= ''Content-type: text/html; charset=iso-8859-1'' . "\\r\\n";\r\n\r\n// Additional headers\r\n$headers .= ''To: Ronald <ronald.a.96@gmail.com>'' . "\\r\\n";\r\n$headers .= ''From: FTI-Harvard Administrator <admin@fti-harvard.org>'' . "\\r\\n";\r\n//$headers .= ''Cc: birthdayarchive@example.com'' . "\\r\\n";\r\n//$headers .= ''Bcc: birthdaycheck@example.com'' . "\\r\\n";\r\n\r\n// Mail it\r\nmail($to, $subject, $message, $headers);', '', '2011-12-12 07:45:46', '2011-12-12 09:45:55'),
(10, 'save_new_article_id', 'if (isset($params[''articleid''])) {\r\nsetcookie(''newarticleid'',$params[''articleid''], time()+3600, ''/'');\r\n}', '', '2011-12-12 08:07:59', '2011-12-12 08:07:59'),
(11, 'current_article_id', '$smarty->assign(''newarticleid'', $_COOKIE[''newarticleid'']);', '', '2011-12-12 08:56:12', '2011-12-12 08:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `cms_userplugins_seq`
--

DROP TABLE IF EXISTS `cms_userplugins_seq`;
CREATE TABLE IF NOT EXISTS `cms_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_userplugins_seq`
--

INSERT INTO `cms_userplugins_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `cms_userprefs`
--

DROP TABLE IF EXISTS `cms_userprefs`;
CREATE TABLE IF NOT EXISTS `cms_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(25) default NULL,
  PRIMARY KEY  (`user_id`,`preference`),
  KEY `cms_index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_userprefs`
--

INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES
(1, 'admintheme', 'NCleanGrey', NULL),
(1, 'ajax', '0', NULL),
(1, 'bookmarks', 'on', NULL),
(1, 'collapse', '0=1.67=1.', NULL),
(1, 'date_format_string', '%x %X', NULL),
(1, 'default_cms_language', 'en_US', NULL),
(1, 'hide_help_links', '0', NULL),
(1, 'indent', 'on', NULL),
(1, 'paging', '0', NULL),
(1, 'recent', 'on', NULL),
(1, 'use_wysiwyg', '1', NULL),
(1, 'wysiwyg', 'MicroTiny', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE IF NOT EXISTS `cms_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) default NULL,
  `password` varchar(40) default NULL,
  `admin_access` tinyint(4) default NULL,
  `first_name` varchar(50) default NULL,
  `last_name` varchar(50) default NULL,
  `email` varchar(255) default NULL,
  `active` tinyint(4) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES
(1, 'admin', '7a14d46fcf07e6873d98fd45fb54f0e7', 1, '', '', 'admin@fti-harvard.org', 1, '2006-07-25 21:22:33', '2011-12-12 06:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users_seq`
--

DROP TABLE IF EXISTS `cms_users_seq`;
CREATE TABLE IF NOT EXISTS `cms_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users_seq`
--

INSERT INTO `cms_users_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_groups`
--

DROP TABLE IF EXISTS `cms_user_groups`;
CREATE TABLE IF NOT EXISTS `cms_user_groups` (
  `group_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `create_date` datetime default NULL,
  `modified_date` datetime default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_user_groups`
--

INSERT INTO `cms_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES
(1, 1, '2006-07-25 21:22:33', '2006-07-25 21:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `cms_version`
--

DROP TABLE IF EXISTS `cms_version`;
CREATE TABLE IF NOT EXISTS `cms_version` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_version`
--

INSERT INTO `cms_version` (`version`) VALUES
(35);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;