# SQL Manager 2010 Lite for MySQL 4.6.0.5
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : cms


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

USE `cms`;

#
# Structure for the `cms_additional_htmlblob_users` table : 
#

DROP TABLE IF EXISTS `cms_additional_htmlblob_users`;

CREATE TABLE `cms_additional_htmlblob_users` (
  `additional_htmlblob_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htmlblob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_htmlblob_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_additional_htmlblob_users_seq` table : 
#

DROP TABLE IF EXISTS `cms_additional_htmlblob_users_seq`;

CREATE TABLE `cms_additional_htmlblob_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_additional_users` table : 
#

DROP TABLE IF EXISTS `cms_additional_users`;

CREATE TABLE `cms_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`additional_users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_additional_users_seq` table : 
#

DROP TABLE IF EXISTS `cms_additional_users_seq`;

CREATE TABLE `cms_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_admin_bookmarks` table : 
#

DROP TABLE IF EXISTS `cms_admin_bookmarks`;

CREATE TABLE `cms_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `cms_index_admin_bookmarks_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_admin_bookmarks_seq` table : 
#

DROP TABLE IF EXISTS `cms_admin_bookmarks_seq`;

CREATE TABLE `cms_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_admin_recent_pages` table : 
#

DROP TABLE IF EXISTS `cms_admin_recent_pages`;

CREATE TABLE `cms_admin_recent_pages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_admin_recent_pages_seq` table : 
#

DROP TABLE IF EXISTS `cms_admin_recent_pages_seq`;

CREATE TABLE `cms_admin_recent_pages_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_adminlog` table : 
#

DROP TABLE IF EXISTS `cms_adminlog`;

CREATE TABLE `cms_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_content` table : 
#

DROP TABLE IF EXISTS `cms_content`;

CREATE TABLE `cms_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `markup` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text,
  `prop_names` text,
  `metadata` text,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `cms_index_content_by_content_alias_active` (`content_alias`,`active`),
  KEY `cms_index_content_by_default_content` (`default_content`),
  KEY `cms_index_content_by_parent_id` (`parent_id`),
  KEY `cms_index_content_by_hierarchy` (`hierarchy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_content_props` table : 
#

DROP TABLE IF EXISTS `cms_content_props`;

CREATE TABLE `cms_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_content_props_by_content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_content_props_seq` table : 
#

DROP TABLE IF EXISTS `cms_content_props_seq`;

CREATE TABLE `cms_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_content_seq` table : 
#

DROP TABLE IF EXISTS `cms_content_seq`;

CREATE TABLE `cms_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_crossref` table : 
#

DROP TABLE IF EXISTS `cms_crossref`;

CREATE TABLE `cms_crossref` (
  `child_type` varchar(100) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_crossref_by_child_type_child_id` (`child_type`,`child_id`),
  KEY `cms_index_crossref_by_parent_type_parent_id` (`parent_type`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_css` table : 
#

DROP TABLE IF EXISTS `cms_css`;

CREATE TABLE `cms_css` (
  `css_id` int(11) NOT NULL,
  `css_name` varchar(255) DEFAULT NULL,
  `css_text` text,
  `media_type` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`css_id`),
  KEY `cms_index_css_by_css_name` (`css_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_css_assoc` table : 
#

DROP TABLE IF EXISTS `cms_css_assoc`;

CREATE TABLE `cms_css_assoc` (
  `assoc_to_id` int(11) DEFAULT NULL,
  `assoc_css_id` int(11) DEFAULT NULL,
  `assoc_type` varchar(80) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `assoc_order` int(11) DEFAULT NULL,
  KEY `cms_index_css_assoc_by_assoc_to_id` (`assoc_to_id`),
  KEY `cms_index_css_assoc_by_assoc_css_id` (`assoc_css_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_css_seq` table : 
#

DROP TABLE IF EXISTS `cms_css_seq`;

CREATE TABLE `cms_css_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_event_handler_seq` table : 
#

DROP TABLE IF EXISTS `cms_event_handler_seq`;

CREATE TABLE `cms_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_event_handlers` table : 
#

DROP TABLE IF EXISTS `cms_event_handlers`;

CREATE TABLE `cms_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`handler_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_events` table : 
#

DROP TABLE IF EXISTS `cms_events`;

CREATE TABLE `cms_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `cms_originator` (`originator`),
  KEY `cms_event_name` (`event_name`),
  KEY `cms_event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_events_seq` table : 
#

DROP TABLE IF EXISTS `cms_events_seq`;

CREATE TABLE `cms_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_group_perms` table : 
#

DROP TABLE IF EXISTS `cms_group_perms`;

CREATE TABLE `cms_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_perm_id`),
  KEY `cms_index_group_perms_by_group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_group_perms_seq` table : 
#

DROP TABLE IF EXISTS `cms_group_perms_seq`;

CREATE TABLE `cms_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_groups` table : 
#

DROP TABLE IF EXISTS `cms_groups`;

CREATE TABLE `cms_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_groups_seq` table : 
#

DROP TABLE IF EXISTS `cms_groups_seq`;

CREATE TABLE `cms_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_htmlblobs` table : 
#

DROP TABLE IF EXISTS `cms_htmlblobs`;

CREATE TABLE `cms_htmlblobs` (
  `htmlblob_id` int(11) NOT NULL,
  `htmlblob_name` varchar(255) DEFAULT NULL,
  `html` text,
  `description` text,
  `use_wysiwyg` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`htmlblob_id`),
  KEY `cms_index_htmlblobs_by_htmlblob_name` (`htmlblob_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_htmlblobs_seq` table : 
#

DROP TABLE IF EXISTS `cms_htmlblobs_seq`;

CREATE TABLE `cms_htmlblobs_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_acomments` table : 
#

DROP TABLE IF EXISTS `cms_module_acomments`;

CREATE TABLE `cms_module_acomments` (
  `comment_id` int(11) NOT NULL,
  `comment_data` text,
  `comment_date` datetime DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_website` varchar(255) DEFAULT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `comment_title` varchar(255) DEFAULT NULL,
  `trackback` tinyint(4) DEFAULT NULL,
  `editor` tinyint(4) DEFAULT NULL,
  `author_notify` tinyint(4) DEFAULT NULL,
  `notified` tinyint(4) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_acomments_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_acomments_seq`;

CREATE TABLE `cms_module_acomments_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_advancedcontent_blockdisplay` table : 
#

DROP TABLE IF EXISTS `cms_module_advancedcontent_blockdisplay`;

CREATE TABLE `cms_module_advancedcontent_blockdisplay` (
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_id` text,
  `item_display` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_advancedcontent_groupdisplay` table : 
#

DROP TABLE IF EXISTS `cms_module_advancedcontent_groupdisplay`;

CREATE TABLE `cms_module_advancedcontent_groupdisplay` (
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_id` text,
  `item_display` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_advancedcontent_messagedisplay` table : 
#

DROP TABLE IF EXISTS `cms_module_advancedcontent_messagedisplay`;

CREATE TABLE `cms_module_advancedcontent_messagedisplay` (
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_id` text,
  `item_display` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_advancedcontent_multi_input_tpl_assocs` table : 
#

DROP TABLE IF EXISTS `cms_module_advancedcontent_multi_input_tpl_assocs`;

CREATE TABLE `cms_module_advancedcontent_multi_input_tpl_assocs` (
  `input_id` varchar(64) DEFAULT NULL,
  `tpl_name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_advancedcontent_multi_inputs` table : 
#

DROP TABLE IF EXISTS `cms_module_advancedcontent_multi_inputs`;

CREATE TABLE `cms_module_advancedcontent_multi_inputs` (
  `input_id` varchar(64) NOT NULL,
  `input_fields` text,
  PRIMARY KEY (`input_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_albums` table : 
#

DROP TABLE IF EXISTS `cms_module_album_albums`;

CREATE TABLE `cms_module_album_albums` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(80) DEFAULT NULL,
  `album_number` int(11) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `comment` text,
  `column_number` int(11) DEFAULT NULL,
  `row_number` int(11) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `cms_module_album_albums_index` (`album_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_albums_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_album_albums_seq`;

CREATE TABLE `cms_module_album_albums_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_categories` table : 
#

DROP TABLE IF EXISTS `cms_module_album_categories`;

CREATE TABLE `cms_module_album_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(80) DEFAULT NULL,
  `category_number` int(11) DEFAULT NULL,
  `category_comment` text,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_categories_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_album_categories_seq`;

CREATE TABLE `cms_module_album_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_category_listings` table : 
#

DROP TABLE IF EXISTS `cms_module_album_category_listings`;

CREATE TABLE `cms_module_album_category_listings` (
  `listing_id` int(11) NOT NULL,
  `listing_album_id` int(11) DEFAULT NULL,
  `listing_category_id` int(11) DEFAULT NULL,
  `listing_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`listing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_category_listings_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_album_category_listings_seq`;

CREATE TABLE `cms_module_album_category_listings_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_pictures` table : 
#

DROP TABLE IF EXISTS `cms_module_album_pictures`;

CREATE TABLE `cms_module_album_pictures` (
  `picture_id` int(11) NOT NULL,
  `picture_name` varchar(80) DEFAULT NULL,
  `picture_album_id` int(11) DEFAULT NULL,
  `picture_number` int(11) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL,
  `comment` text,
  `comment2` text,
  `comment3` text,
  `thumbnail_width` varchar(20) DEFAULT NULL,
  `thumbnail_height` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`picture_id`),
  KEY `cms_module_album_pictures_index` (`picture_album_id`,`picture_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_album_pictures_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_album_pictures_seq`;

CREATE TABLE `cms_module_album_pictures_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_attach_attachments` table : 
#

DROP TABLE IF EXISTS `cms_module_attach_attachments`;

CREATE TABLE `cms_module_attach_attachments` (
  `attachid` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `sourcetype` int(11) DEFAULT NULL,
  `sourceid` int(11) DEFAULT NULL,
  `desttype` int(11) DEFAULT NULL,
  `destid` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`attachid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_attach_attachments_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_attach_attachments_seq`;

CREATE TABLE `cms_module_attach_attachments_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_attach_restypes` table : 
#

DROP TABLE IF EXISTS `cms_module_attach_restypes`;

CREATE TABLE `cms_module_attach_restypes` (
  `typeid` int(11) NOT NULL,
  `typename` varchar(32) DEFAULT NULL,
  `destonly` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `iscore` tinyint(4) DEFAULT NULL,
  `type_retrievecombo` text,
  `type_retrieveitem` text,
  `type_activecheck` text,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_attach_restypes_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_attach_restypes_seq`;

CREATE TABLE `cms_module_attach_restypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cge_assocdata` table : 
#

DROP TABLE IF EXISTS `cms_module_cge_assocdata`;

CREATE TABLE `cms_module_cge_assocdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key1` varchar(255) DEFAULT NULL,
  `key2` varchar(255) DEFAULT NULL,
  `key3` varchar(255) DEFAULT NULL,
  `key4` varchar(255) DEFAULT NULL,
  `data` text,
  `type` varchar(20) DEFAULT NULL,
  `expiry` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cge_countries` table : 
#

DROP TABLE IF EXISTS `cms_module_cge_countries`;

CREATE TABLE `cms_module_cge_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sorting` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`code`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cge_states` table : 
#

DROP TABLE IF EXISTS `cms_module_cge_states`;

CREATE TABLE `cms_module_cge_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sorting` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`code`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cgfeedback_comments` table : 
#

DROP TABLE IF EXISTS `cms_module_cgfeedback_comments`;

CREATE TABLE `cms_module_cgfeedback_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key1` varchar(255) DEFAULT NULL,
  `key2` varchar(255) DEFAULT NULL,
  `key3` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `data` text,
  `status` varchar(20) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_ip` varchar(25) DEFAULT NULL,
  `author_notify` tinyint(4) DEFAULT NULL,
  `admin_notes` text,
  `notified` tinyint(4) DEFAULT NULL,
  `origurl` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cgfeedback_fielddefs` table : 
#

DROP TABLE IF EXISTS `cms_module_cgfeedback_fielddefs`;

CREATE TABLE `cms_module_cgfeedback_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `attribs` text,
  `iorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cgfeedback_fieldvals` table : 
#

DROP TABLE IF EXISTS `cms_module_cgfeedback_fieldvals`;

CREATE TABLE `cms_module_cgfeedback_fieldvals` (
  `comment_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`comment_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_group_profile_fields` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_group_profile_fields`;

CREATE TABLE `cms_module_cmsusers_group_profile_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `profile_field_id` int(11) DEFAULT NULL,
  `is_mandatory` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`id`),
  KEY `group_profile_fields_index` (`id`,`group_id`,`profile_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_grouppermissions` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_grouppermissions`;

CREATE TABLE `cms_module_cmsusers_grouppermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grouppermissions_index` (`id`,`group_id`,`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_groups` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_groups`;

CREATE TABLE `cms_module_cmsusers_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`id`),
  KEY `groups_index` (`id`,`is_active`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_permissions` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_permissions`;

CREATE TABLE `cms_module_cmsusers_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`id`),
  KEY `permissions_index` (`id`,`name`,`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_profile_fields` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_profile_fields`;

CREATE TABLE `cms_module_cmsusers_profile_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `options` longtext,
  `is_active` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_profiles` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_profiles`;

CREATE TABLE `cms_module_cmsusers_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_index` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_sessions` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_sessions`;

CREATE TABLE `cms_module_cmsusers_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued_date` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cookie_value` longtext,
  `remote_information` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_usergroups` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_usergroups`;

CREATE TABLE `cms_module_cmsusers_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usergroups_index` (`id`,`group_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_cmsusers_users` table : 
#

DROP TABLE IF EXISTS `cms_module_cmsusers_users`;

CREATE TABLE `cms_module_cmsusers_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_disabled` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_deps` table : 
#

DROP TABLE IF EXISTS `cms_module_deps`;

CREATE TABLE `cms_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_belongs` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_belongs`;

CREATE TABLE `cms_module_feusers_belongs` (
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_dropdowns` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_dropdowns`;

CREATE TABLE `cms_module_feusers_dropdowns` (
  `order_id` int(11) DEFAULT NULL,
  `option_name` varchar(40) DEFAULT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `control_name` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_grouppropmap` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_grouppropmap`;

CREATE TABLE `cms_module_feusers_grouppropmap` (
  `name` varchar(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_key` int(11) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `lostunflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_groups` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_groups`;

CREATE TABLE `cms_module_feusers_groups` (
  `id` int(11) NOT NULL,
  `groupname` varchar(32) DEFAULT NULL,
  `groupdesc` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_groups_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_groups_seq`;

CREATE TABLE `cms_module_feusers_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_history` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_history`;

CREATE TABLE `cms_module_feusers_history` (
  `userid` int(11) DEFAULT NULL,
  `sessionid` varchar(32) DEFAULT NULL,
  `action` varchar(32) DEFAULT NULL,
  `refdate` datetime DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  KEY `idx_refdate` (`userid`,`refdate`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_loggedin` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_loggedin`;

CREATE TABLE `cms_module_feusers_loggedin` (
  `sessionid` varchar(255) DEFAULT NULL,
  `lastused` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_propdefn` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_propdefn`;

CREATE TABLE `cms_module_feusers_propdefn` (
  `name` varchar(40) NOT NULL,
  `prompt` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `maxlength` int(11) DEFAULT NULL,
  `attribs` varchar(255) DEFAULT NULL,
  `force_unique` tinyint(4) DEFAULT NULL,
  `encrypt` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_properties` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_properties`;

CREATE TABLE `cms_module_feusers_properties` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_properties_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_properties_seq`;

CREATE TABLE `cms_module_feusers_properties_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_tempcode` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_tempcode`;

CREATE TABLE `cms_module_feusers_tempcode` (
  `userid` int(11) NOT NULL,
  `code` varchar(25) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_users` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_users`;

CREATE TABLE `cms_module_feusers_users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`),
  KEY `idx_expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_feusers_users_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_feusers_users_seq`;

CREATE TABLE `cms_module_feusers_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_gallery` table : 
#

DROP TABLE IF EXISTS `cms_module_gallery`;

CREATE TABLE `cms_module_gallery` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `filedate` datetime DEFAULT NULL,
  `fileorder` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `defaultfile` int(11) DEFAULT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`fileid`,`galleryid`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_gallery_fielddefs` table : 
#

DROP TABLE IF EXISTS `cms_module_gallery_fielddefs`;

CREATE TABLE `cms_module_gallery_fielddefs` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `maxlength` int(11) DEFAULT NULL,
  `dirfield` tinyint(4) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `public` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_gallery_fieldvals` table : 
#

DROP TABLE IF EXISTS `cms_module_gallery_fieldvals`;

CREATE TABLE `cms_module_gallery_fieldvals` (
  `fileid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`fileid`,`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_gallery_props` table : 
#

DROP TABLE IF EXISTS `cms_module_gallery_props`;

CREATE TABLE `cms_module_gallery_props` (
  `fileid` int(11) NOT NULL,
  `templateid` int(11) DEFAULT NULL,
  `hideparentlink` int(11) DEFAULT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_gallery_templateprops` table : 
#

DROP TABLE IF EXISTS `cms_module_gallery_templateprops`;

CREATE TABLE `cms_module_gallery_templateprops` (
  `templateid` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `about` text,
  `thumbwidth` int(11) DEFAULT NULL,
  `thumbheight` int(11) DEFAULT NULL,
  `resizemethod` varchar(10) DEFAULT NULL,
  `maxnumber` int(11) DEFAULT NULL,
  `sortitems` varchar(255) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`templateid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_javascript` table : 
#

DROP TABLE IF EXISTS `cms_module_javascript`;

CREATE TABLE `cms_module_javascript` (
  `javascript_id` int(11) NOT NULL,
  `javascript_name` varchar(255) DEFAULT NULL,
  `javascript_alias` varchar(255) DEFAULT NULL,
  `javascript_content` text,
  `javascript_sort_order` int(11) DEFAULT NULL,
  `javascript_compress` tinyint(4) DEFAULT NULL,
  `javascript_external_include` tinyint(4) DEFAULT NULL,
  `javascript_global` tinyint(4) DEFAULT NULL,
  `javascript_pack` tinyint(4) DEFAULT NULL,
  `javascript_created` datetime DEFAULT NULL,
  `javascript_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`javascript_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_javascript_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_javascript_seq`;

CREATE TABLE `cms_module_javascript_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_jquery_scripts` table : 
#

DROP TABLE IF EXISTS `cms_module_jquery_scripts`;

CREATE TABLE `cms_module_jquery_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `code` longtext,
  `load_default` int(11) DEFAULT NULL,
  `in_header` int(11) DEFAULT NULL,
  `required_plugins` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_news` table : 
#

DROP TABLE IF EXISTS `cms_module_news`;

CREATE TABLE `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `cms_news_postdate` (`news_date`),
  KEY `cms_news_daterange` (`start_time`,`end_time`),
  KEY `cms_news_author` (`author_id`),
  KEY `cms_news_hier` (`news_category_id`),
  KEY `cms_news_url` (`news_url`),
  KEY `cms_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_news_categories` table : 
#

DROP TABLE IF EXISTS `cms_module_news_categories`;

CREATE TABLE `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `long_name` text,
  `create_date` time DEFAULT NULL,
  `modified_date` time DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_news_categories_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_news_categories_seq`;

CREATE TABLE `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_news_fielddefs` table : 
#

DROP TABLE IF EXISTS `cms_module_news_fielddefs`;

CREATE TABLE `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_news_fieldvals` table : 
#

DROP TABLE IF EXISTS `cms_module_news_fieldvals`;

CREATE TABLE `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_news_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_news_seq`;

CREATE TABLE `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_search_index` table : 
#

DROP TABLE IF EXISTS `cms_module_search_index`;

CREATE TABLE `cms_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `cms_index_search_count` (`count`),
  KEY `cms_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_search_items` table : 
#

DROP TABLE IF EXISTS `cms_module_search_items`;

CREATE TABLE `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_search_items_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_search_items_seq`;

CREATE TABLE `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_search_words` table : 
#

DROP TABLE IF EXISTS `cms_module_search_words`;

CREATE TABLE `cms_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_selfreg_paidpkgs` table : 
#

DROP TABLE IF EXISTS `cms_module_selfreg_paidpkgs`;

CREATE TABLE `cms_module_selfreg_paidpkgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `prompt` varchar(255) DEFAULT NULL,
  `description` text,
  `gid` int(11) DEFAULT NULL,
  `subscr_num` int(11) DEFAULT NULL,
  `subscr_type` varchar(10) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_selfreg_properties` table : 
#

DROP TABLE IF EXISTS `cms_module_selfreg_properties`;

CREATE TABLE `cms_module_selfreg_properties` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_selfreg_properties_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_selfreg_properties_seq`;

CREATE TABLE `cms_module_selfreg_properties_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_selfreg_users` table : 
#

DROP TABLE IF EXISTS `cms_module_selfreg_users`;

CREATE TABLE `cms_module_selfreg_users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `passsword` varchar(32) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `overwrite_uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_selfreg_users_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_selfreg_users_seq`;

CREATE TABLE `cms_module_selfreg_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_showtime` table : 
#

DROP TABLE IF EXISTS `cms_module_showtime`;

CREATE TABLE `cms_module_showtime` (
  `picture_id` int(11) NOT NULL,
  `active` tinyint(4) DEFAULT '1',
  `show_id` int(11) DEFAULT NULL,
  `picture_name` varchar(80) DEFAULT NULL,
  `picture_number` int(11) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`picture_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_showtime_name` table : 
#

DROP TABLE IF EXISTS `cms_module_showtime_name`;

CREATE TABLE `cms_module_showtime_name` (
  `show_id` int(11) NOT NULL,
  `show_name` varchar(80) DEFAULT NULL,
  `st_animationtype` varchar(15) DEFAULT NULL,
  `st_height` int(11) DEFAULT NULL,
  `st_width` int(11) DEFAULT NULL,
  `st_rotatetime` double DEFAULT NULL,
  `st_transitiontime` double DEFAULT NULL,
  `st_transition` varchar(30) DEFAULT NULL,
  `st_easeFunc` varchar(30) DEFAULT NULL,
  `st_ease` varchar(30) DEFAULT NULL,
  `st_autoplay` tinyint(4) DEFAULT NULL,
  `st_showcontrols` tinyint(4) DEFAULT NULL,
  `st_showcontrolssub` int(11) DEFAULT NULL,
  `st_textbgcolor` varchar(10) DEFAULT NULL,
  `st_showtext` tinyint(4) DEFAULT NULL,
  `st_showcomment` tinyint(4) DEFAULT NULL,
  `st_showalt` tinyint(4) DEFAULT NULL,
  `st_textcolor` varchar(10) DEFAULT NULL,
  `st_textsize` int(11) DEFAULT NULL,
  `st_titlesize` int(11) DEFAULT NULL,
  `st_fonttype` varchar(50) DEFAULT NULL,
  `st_bgcolor` varchar(10) DEFAULT NULL,
  `st_scale` varchar(30) DEFAULT NULL,
  `st_shuffle` tinyint(4) DEFAULT NULL,
  `st_wmode` varchar(20) DEFAULT NULL,
  `st_commentpos` varchar(10) DEFAULT NULL,
  `st_navbut` tinyint(4) DEFAULT NULL,
  `st_nav_bordercolor` varchar(10) DEFAULT NULL,
  `st_nav_bordersize` int(11) DEFAULT NULL,
  `st_nav_radius` int(11) DEFAULT NULL,
  `st_nav_bgcolor` varchar(10) DEFAULT NULL,
  `st_nav_bgactivecolor` varchar(10) DEFAULT NULL,
  `st_nav_textcolor` varchar(10) DEFAULT NULL,
  `st_nav_showtext` tinyint(4) DEFAULT NULL,
  `st_nav_size` int(11) DEFAULT NULL,
  `st_nav_pos` varchar(20) DEFAULT NULL,
  `st_nav_padding` int(11) DEFAULT NULL,
  `st_target` varchar(15) DEFAULT NULL,
  `st_link` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_showtime_name_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_showtime_name_seq`;

CREATE TABLE `cms_module_showtime_name_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_showtime_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_showtime_seq`;

CREATE TABLE `cms_module_showtime_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_templates` table : 
#

DROP TABLE IF EXISTS `cms_module_templates`;

CREATE TABLE `cms_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_index_module_templates_by_module_name_template_name` (`module_name`,`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads`;

CREATE TABLE `cms_module_uploads` (
  `upload_id` int(11) NOT NULL,
  `upload_category_id` int(11) DEFAULT NULL,
  `upload_name` varchar(255) DEFAULT NULL,
  `upload_author` varchar(255) DEFAULT NULL,
  `upload_summary` varchar(255) DEFAULT NULL,
  `upload_description` text,
  `upload_ip` varchar(255) DEFAULT NULL,
  `upload_size` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `upload_key` varchar(255) DEFAULT NULL,
  `upload_thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_categories` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_categories`;

CREATE TABLE `cms_module_uploads_categories` (
  `upload_category_id` int(11) NOT NULL,
  `upload_category_name` varchar(255) DEFAULT NULL,
  `upload_category_description` text,
  `upload_category_path` varchar(255) NOT NULL,
  `upload_category_listable` int(11) DEFAULT NULL,
  `upload_category_groups` varchar(255) DEFAULT NULL,
  `upload_category_deletable` int(11) DEFAULT NULL,
  `upload_category_expires_hrs` int(11) DEFAULT NULL,
  `upload_category_scannable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`upload_category_id`,`upload_category_path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_categories_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_categories_seq`;

CREATE TABLE `cms_module_uploads_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_downloads` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_downloads`;

CREATE TABLE `cms_module_uploads_downloads` (
  `download_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `download_date` datetime DEFAULT NULL,
  `download_ip` varchar(255) DEFAULT NULL,
  `download_user` varchar(255) DEFAULT NULL,
  `url_key` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`download_id`),
  KEY `index_download_fileid` (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_downloads_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_downloads_seq`;

CREATE TABLE `cms_module_uploads_downloads_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_fielddefs` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_fielddefs`;

CREATE TABLE `cms_module_uploads_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `attribs` text,
  `iorder` int(11) DEFAULT NULL,
  `public` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_fieldvals` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_fieldvals`;

CREATE TABLE `cms_module_uploads_fieldvals` (
  `upload_id` int(11) NOT NULL,
  `fld_id` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`upload_id`,`fld_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_filetypes` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_filetypes`;

CREATE TABLE `cms_module_uploads_filetypes` (
  `id` int(11) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `extensions` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_filetypes_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_filetypes_seq`;

CREATE TABLE `cms_module_uploads_filetypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_seq` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_seq`;

CREATE TABLE `cms_module_uploads_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_module_uploads_timelimit` table : 
#

DROP TABLE IF EXISTS `cms_module_uploads_timelimit`;

CREATE TABLE `cms_module_uploads_timelimit` (
  `tlkey_id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_key` varchar(16) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `max_downloads` int(11) DEFAULT NULL,
  PRIMARY KEY (`tlkey_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_modules` table : 
#

DROP TABLE IF EXISTS `cms_modules`;

CREATE TABLE `cms_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`module_name`),
  KEY `cms_index_modules_by_module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_permissions` table : 
#

DROP TABLE IF EXISTS `cms_permissions`;

CREATE TABLE `cms_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_permissions_seq` table : 
#

DROP TABLE IF EXISTS `cms_permissions_seq`;

CREATE TABLE `cms_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_siteprefs` table : 
#

DROP TABLE IF EXISTS `cms_siteprefs`;

CREATE TABLE `cms_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sitepref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_templates` table : 
#

DROP TABLE IF EXISTS `cms_templates`;

CREATE TABLE `cms_templates` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `template_content` text,
  `stylesheet` text,
  `encoding` varchar(25) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `default_template` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `cms_index_templates_by_template_name` (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_templates_seq` table : 
#

DROP TABLE IF EXISTS `cms_templates_seq`;

CREATE TABLE `cms_templates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_user_groups` table : 
#

DROP TABLE IF EXISTS `cms_user_groups`;

CREATE TABLE `cms_user_groups` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_userplugins` table : 
#

DROP TABLE IF EXISTS `cms_userplugins`;

CREATE TABLE `cms_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text,
  `description` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userplugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_userplugins_seq` table : 
#

DROP TABLE IF EXISTS `cms_userplugins_seq`;

CREATE TABLE `cms_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_userprefs` table : 
#

DROP TABLE IF EXISTS `cms_userprefs`;

CREATE TABLE `cms_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`preference`),
  KEY `cms_index_userprefs_by_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_users` table : 
#

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `cms_users_seq` table : 
#

DROP TABLE IF EXISTS `cms_users_seq`;

CREATE TABLE `cms_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `cms_version` table : 
#

DROP TABLE IF EXISTS `cms_version`;

CREATE TABLE `cms_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for the `cms_additional_htmlblob_users_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_additional_htmlblob_users_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_additional_users` table  (LIMIT 0,500)
#

INSERT INTO `cms_additional_users` (`additional_users_id`, `user_id`, `page_id`, `content_id`) VALUES 
  (8,-3,NULL,62);
COMMIT;

#
# Data for the `cms_additional_users_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_additional_users_seq` (`id`) VALUES 
  (8);
COMMIT;

#
# Data for the `cms_admin_bookmarks_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_admin_bookmarks_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_admin_recent_pages_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_admin_recent_pages_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_adminlog` table  (LIMIT 0,500)
#

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES 
  (1319854514,0,'',-1,'CMSMailer','Installed version 2.0.2',''),
  (1319854514,0,'',-1,'CMSPrinting','Installed version 1.0',''),
  (1319854514,0,'',-1,'FileManager','Installed version 1.2.0',''),
  (1319854514,0,'',-1,'MenuManager','Installed version 1.7.6',''),
  (1319854514,0,'',-1,'MicroTiny','Installed version 1.1',''),
  (1319854514,0,'',-1,'ModuleManager','Installed version 1.5',''),
  (1319854517,0,'',-1,'News','Installed version 2.12.2',''),
  (1319854525,0,'',-1,'Search','Installed version 1.7',''),
  (1319854525,0,'',-1,'ThemeManager','Installed version 1.1.4',''),
  (1319854535,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1319854542,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1319855414,1,'admin',1,'Global Content Block: footer','Edited','127.0.0.1'),
  (1319855429,1,'admin',1,'Global Content Block: footer','Edited','127.0.0.1'),
  (1319855828,1,'admin',-1,'Global Settings','Edited','127.0.0.1'),
  (1319855848,1,'admin',-1,'Global Settings','Edited','127.0.0.1'),
  (1319855860,1,'admin',-1,'Global Settings','Edited','127.0.0.1'),
  (1319855976,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:985','127.0.0.1'),
  (1319856059,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:985','127.0.0.1'),
  (1319856198,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:1048','127.0.0.1'),
  (1319856681,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:1041','127.0.0.1'),
  (1319856744,1,'admin',-1,'Module','Expanded module: AComments version 1.1','127.0.0.1'),
  (1319856760,1,'admin',-1,'Comments','--Add Me - module:AComments string:installed--','127.0.0.1'),
  (1319856760,1,'admin',-1,'AComments','Installed version 1.1','127.0.0.1'),
  (1319856820,1,'admin',34,'Content Item: How CMSMS Works','Edited','127.0.0.1'),
  (1319856870,1,'admin',34,'Content Item: How CMSMS Works','Edited','127.0.0.1'),
  (1319857410,1,'admin',-1,'Module','Expanded module: Gallery version 1.4.4','127.0.0.1'),
  (1319857417,1,'admin',-1,'Gallery','The Gallery module version 1.4.4 was installed.','127.0.0.1'),
  (1319857417,1,'admin',-1,'Gallery','Installed version 1.4.4','127.0.0.1'),
  (1319857478,1,'admin',28,'Content Item: User Defined Tags (Parent ID: 4.2.2)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',26,'Content Item: Tags in the core (Parent ID: 4.2.1)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',25,'Content Item: Tags (Parent ID: 4.2)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',50,'Content Item: Module Manager (Parent ID: 4.1.6)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',43,'Content Item: Search (Parent ID: 4.1.5)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',42,'Content Item: MicroTiny (Parent ID: 4.1.4)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',41,'Content Item: Theme Manager (Parent ID: 4.1.3)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',40,'Content Item: Menu Manager (Parent ID: 4.1.2)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',39,'Content Item: News (Parent ID: 4.1.1)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',20,'Content Item: Modules (Parent ID: 4.1)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',24,'Content Item: Default Extensions (Parent ID: 4)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',52,'Content Item: ShadowMenu left + 1 column (Parent I','Deleted','127.0.0.1'),
  (1319857478,1,'admin',51,'Content Item: ShadowMenu Tab + 2 columns (Parent I','Deleted','127.0.0.1'),
  (1319857478,1,'admin',54,'Content Item: NCleanBlue (Parent ID: 3.7.1)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',55,'Content Item: Higher End (Parent ID: 3.7)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',44,'Content Item: Minimal template (Parent ID: 3.6)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',18,'Content Item: CSSMenu left + 1 column (Parent ID:','Deleted','127.0.0.1'),
  (1319857478,1,'admin',16,'Content Item: CSSMenu top + 2 columns (Parent ID:','Deleted','127.0.0.1'),
  (1319857478,1,'admin',22,'Content Item: Top simple navigation + left subnavi','Deleted','127.0.0.1'),
  (1319857478,1,'admin',13,'Content Item: Left simple navigation + 1 column (P','Deleted','127.0.0.1'),
  (1319857478,1,'admin',49,'Content Item: CMSMS tags in the templates (Parent','Deleted','127.0.0.1'),
  (1319857478,1,'admin',19,'Content Item: Default Templates Explained (Parent','Deleted','127.0.0.1'),
  (1319857478,1,'admin',47,'Content Item: Where do I get help? (Parent ID: 2.8','Deleted','127.0.0.1'),
  (1319857478,1,'admin',38,'Content Item: Workflow (Parent ID: 2.7)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',45,'Content Item: Event Manager (Parent ID: 2.6)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',46,'Content Item: Extensions (Parent ID: 2.5)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',30,'Content Item: Menu Manager (Parent ID: 2.4)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',29,'Content Item: Content (Parent ID: 2.3)','Deleted','127.0.0.1'),
  (1319857478,1,'admin',37,'Content Item: Pages and navigation (Parent ID: 2.2','Deleted','127.0.0.1'),
  (1319857478,1,'admin',36,'Content Item: Templates and stylesheets (Parent ID','Deleted','127.0.0.1'),
  (1319857478,1,'admin',34,'Content Item: How CMSMS Works (Parent ID: 2)','Deleted','127.0.0.1'),
  (1319857577,1,'admin',56,'Content Item: Pic Gallery','Added','127.0.0.1'),
  (1319857737,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319857785,1,'admin',57,'Content Item: Susan','Added','127.0.0.1'),
  (1319857912,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319857914,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function _ArraySort() on a non-object at E:\\WEB\\CMS\\simple\\modules\\Gallery\\action.gallerytree.php:158','127.0.0.1'),
  (1319857921,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function _ArraySort() on a non-object at E:\\WEB\\CMS\\simple\\modules\\Gallery\\action.gallerytree.php:158','127.0.0.1'),
  (1319857962,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319857967,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function _ArraySort() on a non-object at E:\\WEB\\CMS\\simple\\modules\\Gallery\\action.gallerytree.php:158','127.0.0.1'),
  (1319857973,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319858140,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1319858426,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858449,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858451,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858475,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858494,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858517,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858550,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858571,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858762,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319858774,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859152,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319859167,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319859274,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859298,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859307,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859315,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859326,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859404,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859487,1,'admin',57,'Content Item: Susan','Edited','127.0.0.1'),
  (1319859496,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1319859581,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319859600,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319859609,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319859623,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1319859652,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1319860585,1,'admin',56,'Content Item: Pic Gallery','Edited','127.0.0.1'),
  (1319864390,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1319865118,1,'admin',-1,'Module','Expanded module: SimpleSlider version 0.3','127.0.0.1'),
  (1319865220,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\CMS\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1319865232,1,'admin',-1,'Module: SimpleSlider','Deleted','127.0.0.1'),
  (1319866078,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1319866109,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1319866137,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1319866341,1,'admin',49,'Stylesheet: Layout: NCleanBlue','Changed','127.0.0.1'),
  (1319866362,1,'admin',49,'Stylesheet: Layout: NCleanBlue','Changed','127.0.0.1'),
  (1319866626,1,'admin',22,'HTML-template: NCleanBlue','Edited','127.0.0.1'),
  (1320322754,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1320322898,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1320323335,1,'admin',58,'Content Item: News','Added','127.0.0.1'),
  (1320323377,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1320323444,1,'admin',59,'Content Item: History','Added','127.0.0.1'),
  (1320323461,1,'admin',60,'Content Item: Pengurus','Added','127.0.0.1'),
  (1320323478,1,'admin',61,'Content Item: Profil Peserta','Added','127.0.0.1'),
  (1320323494,1,'admin',62,'Content Item: Comment','Added','127.0.0.1'),
  (1320323516,1,'admin',57,'Content Item: Anime','Edited','127.0.0.1'),
  (1320323544,1,'admin',57,'Content Item: Anime (Parent ID: 3.1)','Deleted','127.0.0.1'),
  (1320323570,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320325566,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325602,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325616,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325634,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325647,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325661,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325673,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325732,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1320325753,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1320325766,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1320325778,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1320325798,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320325814,1,'admin',60,'Content Item: Pengurus','Edited','127.0.0.1'),
  (1320325825,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1320326084,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320326095,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320326219,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320326287,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320326305,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320326358,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1320326358,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320326368,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320327994,1,'admin',-1,'Global Settings','Edited','127.0.0.1'),
  (1320328116,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320328206,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320328207,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320328217,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320328397,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320328409,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320328439,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328446,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328452,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328460,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328469,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328482,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328499,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320328832,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320328843,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320328868,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320328899,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320329115,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320329132,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320329145,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320329199,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1320329721,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320329763,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320330028,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1320330028,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320330051,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320330073,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320330941,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331026,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331045,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331059,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331071,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331080,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331090,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331178,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331287,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331312,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331346,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331630,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320331665,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320332283,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320332441,1,'admin',63,'Content Item: Sample pake tgl','Added','127.0.0.1'),
  (1320332532,1,'admin',63,'Content Item: Sample pake tgl','Edited','127.0.0.1'),
  (1320332739,1,'admin',63,'Content Item: Sample pake tgl','Deleted','127.0.0.1'),
  (1320332778,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320332951,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1320332983,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1320333761,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320333795,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320334101,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320334143,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320334170,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320334236,1,'admin',56,'Content Item: Photo','Edited','127.0.0.1'),
  (1320334624,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320334665,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320334700,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320334715,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320334726,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320334742,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320334762,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336285,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320336295,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1320336353,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336380,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320336443,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320336460,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320336470,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320336477,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320336619,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336634,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336647,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336664,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336670,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336678,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336696,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336726,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336747,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336775,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1320336817,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320336891,1,'admin',35,'Stylesheet: Module: News','Changed','127.0.0.1'),
  (1320846773,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1321059724,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1321063670,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321063674,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321064109,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064140,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064158,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064168,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064287,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064359,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064380,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064392,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064454,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064498,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064517,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064529,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064538,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064547,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064586,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064603,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064613,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064636,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064654,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064714,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064842,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064861,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321064896,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321065520,1,'admin',64,'Content Item: Mr. Indra Catri','Added','127.0.0.1'),
  (1321065545,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321065554,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321065611,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321065688,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321065753,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321065820,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321065839,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321066035,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321066391,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321066442,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321066465,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321066623,1,'admin',23,'HTML-Template: PopupPage','Copied','127.0.0.1'),
  (1321066702,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321067510,1,'admin',23,'HTML-template: PopupPage','Edited','127.0.0.1'),
  (1321067546,1,'admin',23,'HTML-template: PopupPage','Edited','127.0.0.1'),
  (1321068665,1,'admin',23,'HTML-template: PopupPage','Edited','127.0.0.1'),
  (1321068703,1,'admin',23,'HTML-template: PopupPage','Edited','127.0.0.1'),
  (1321068807,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321068826,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321068894,1,'admin',50,'Stylesheet: PopupContent','Copied','127.0.0.1'),
  (1321068910,1,'admin',23,'Stylesheet Association: PopupPage','Added','127.0.0.1'),
  (1321068920,1,'admin',23,'Stylesheet Association: PopupPage','Deleted','127.0.0.1'),
  (1321068958,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321069019,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321069042,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321069288,1,'admin',23,'HTML-template: PopupPage','Edited','127.0.0.1'),
  (1321069322,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321069469,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069518,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069534,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069556,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069566,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069575,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069583,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069615,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069643,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069696,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321069725,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069744,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069758,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069767,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069840,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069876,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069901,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069924,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321069949,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070014,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070097,1,'admin',51,'Stylesheet: thickbox_css','Added','127.0.0.1'),
  (1321070114,1,'admin',23,'Stylesheet Association: PopupPage','Added','127.0.0.1'),
  (1321070131,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070145,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070190,1,'admin',51,'Stylesheet: thickbox_css','Changed','127.0.0.1'),
  (1321070221,1,'admin',23,'Stylesheet Association: PopupPage','Deleted','127.0.0.1'),
  (1321070246,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070321,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070333,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070359,1,'admin',23,'Stylesheet Association: PopupPage','Added','127.0.0.1'),
  (1321070364,1,'admin',23,'Stylesheet Association: PopupPage','Deleted','127.0.0.1'),
  (1321070376,1,'admin',51,'Stylesheet: thickbox_css','Deleted','127.0.0.1'),
  (1321070557,1,'admin',52,'Stylesheet: PopupContentCss','Added','127.0.0.1'),
  (1321070568,1,'admin',23,'Stylesheet Association: PopupPage','Added','127.0.0.1'),
  (1321070591,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070640,1,'admin',52,'Stylesheet: PopupContentCss','Changed','127.0.0.1'),
  (1321070685,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070697,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070886,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070901,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070911,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070920,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321070962,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321070988,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321071003,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321071072,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321071078,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321071105,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321071119,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071140,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071151,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321071198,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071243,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071299,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321071347,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071377,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071410,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071549,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071582,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071637,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071660,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071691,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321071715,1,'admin',61,'Content Item: Profil Peserta','Edited','127.0.0.1'),
  (1321071727,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321079519,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321079519,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321079519,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321079528,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321079537,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321079745,1,'admin',-1,'Module','Expanded module: TemplateExternalizer version 2.0.2','127.0.0.1'),
  (1321079752,1,'admin',-1,'Template Externalizer','Module version 2.0.2 installed.','127.0.0.1'),
  (1321079752,1,'admin',-1,'TemplateExternalizer','Installed version 2.0.2','127.0.0.1'),
  (1321079860,1,'admin',-1,'Template Externalizer','Module Uninstalled.','127.0.0.1'),
  (1321079860,1,'admin',-1,'Module','Uninstalled module TemplateExternalizer','127.0.0.1'),
  (1321079866,1,'admin',-1,'Module: TemplateExternalizer','Deleted','127.0.0.1'),
  (1321080750,1,'admin',-1,'Module','Expanded module: CMSForms version 0.1.2','127.0.0.1'),
  (1321080756,1,'admin',-1,'CMSForms','Installed version 0.1.2','127.0.0.1'),
  (1321080766,1,'admin',-1,'Module','Expanded module: CMSUsers version 1.0.0','127.0.0.1'),
  (1321080777,1,'admin',-1,'CMSUsers','Installed version 1.0.0','127.0.0.1'),
  (1321081062,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321081072,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321081116,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321081124,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321081242,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081300,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081325,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081343,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081451,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081460,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081469,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081655,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081698,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081726,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081743,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081764,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321081942,1,'admin',65,'Content Item: Mr. Isman Imran','Added','127.0.0.1'),
  (1321081956,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321082000,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321086836,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321086836,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321086951,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321087061,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321087079,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321087087,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321087139,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321087249,1,'admin',53,'Stylesheet: thickbox-css','Added','127.0.0.1'),
  (1321087260,1,'admin',23,'Stylesheet Association: PopupPage','Added','127.0.0.1'),
  (1321087276,1,'admin',23,'Stylesheet Association: PopupPage','Deleted','127.0.0.1'),
  (1321087280,1,'admin',23,'Stylesheet Association: PopupPage','Deleted','127.0.0.1'),
  (1321087286,1,'admin',23,'Stylesheet Association: PopupPage','Deleted','127.0.0.1'),
  (1321087307,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321087323,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321087522,1,'admin',-1,'Module','Expanded module: JavaScript version 1.0.2','127.0.0.1'),
  (1321087528,1,'admin',-1,'JavaScript','Installed version 1.0.2','127.0.0.1'),
  (1321087888,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:985','127.0.0.1'),
  (1321088508,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:985','127.0.0.1'),
  (1321088900,1,'admin',-1,'ERROR','ERROR DETECTED: Maximum execution time of 30 seconds exceeded at E:\\WEB\\CMS\\simple\\lib\\classes\\class.cms_http_request.php:1048','127.0.0.1'),
  (1321089691,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321089710,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321090743,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321091156,1,'admin',-1,'Module','Expanded module: jQuery version 1.1.3','127.0.0.1'),
  (1321091515,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321169171,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1321169179,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321169311,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321169350,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321169530,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321169646,1,'admin',65,'Content Item: ismanimran','Copied to: ruzaidin','127.0.0.1'),
  (1321169825,1,'admin',66,'Content Item: Mr. Ruzaidin Noor','Edited','127.0.0.1'),
  (1321169904,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321169918,1,'admin',66,'Content Item: Mr. Ruzaidin Noor','Edited','127.0.0.1'),
  (1321169967,1,'admin',66,'Content Item: Mr. Ruzaidin Noor','Edited','127.0.0.1'),
  (1321170031,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321170177,1,'admin',67,'Content Item: MembersContainer','Added','127.0.0.1'),
  (1321170187,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321170195,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321170202,1,'admin',66,'Content Item: Mr. Ruzaidin Noor','Edited','127.0.0.1'),
  (1321170246,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321170290,1,'admin',66,'Content Item: ruzaidin','Copied to: aswan','127.0.0.1'),
  (1321170379,1,'admin',68,'Content Item: Mr.Mohammad Aswan','Edited','127.0.0.1'),
  (1321170785,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321170836,1,'admin',68,'Content Item: Mr.Mohammad Aswan','Edited','127.0.0.1'),
  (1321203918,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321203923,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321204270,1,'admin',-1,'jQuery','Installed version 1.1.3','127.0.0.1'),
  (1321204334,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321204346,1,'admin',-1,'jQuery','Module is not properly cleaning input params','127.0.0.1'),
  (1321204352,1,'admin',-1,'jQuery','Module is not properly cleaning input params','127.0.0.1'),
  (1321204371,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321204373,1,'admin',-1,'jQuery','Module is not properly cleaning input params','127.0.0.1'),
  (1321204377,1,'admin',-1,'jQuery','Module is not properly cleaning input params','127.0.0.1'),
  (1321204386,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321204389,1,'admin',-1,'jQuery','Module is not properly cleaning input params','127.0.0.1'),
  (1321204393,1,'admin',-1,'jQuery','Module is not properly cleaning input params','127.0.0.1'),
  (1321204401,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321204455,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321204465,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321204542,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321204544,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321204781,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321204842,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321204857,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321204902,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321205012,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321205041,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321205066,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321205088,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321205105,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321235238,0,'',-1,'Admin Username: admin (IP: 127.0.0.1)','Login Failed',''),
  (1321235240,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321235982,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321236155,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321236188,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321236209,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321236219,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321236226,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321236243,1,'admin',-1,'Photo Albums','Release 0.9.3 is installed','127.0.0.1'),
  (1321236243,1,'admin',-1,'Album','Installed version 0.9.3','127.0.0.1'),
  (1321236252,1,'admin',-1,'Advanced Content','Module AdvancedContent 0.9.1 installed','127.0.0.1'),
  (1321236252,1,'admin',-1,'AdvancedContent','Installed version 0.9.1','127.0.0.1'),
  (1321236264,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321236274,1,'admin',-1,'FrontEndEditor','Installed version 1.2.0','127.0.0.1'),
  (1321236298,1,'admin',-1,'Gallery2 Embedded','Module version 0.0.2 installed.','127.0.0.1'),
  (1321236298,1,'admin',-1,'Gallery2Embedded','Installed version 0.0.2','127.0.0.1'),
  (1321237106,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321237276,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined method jQueryScript::GetDb() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\jQuery\\libraries\\classes\\jQueryScript.class.php:297','127.0.0.1'),
  (1321237821,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238064,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238117,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238243,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238258,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238269,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238329,1,'admin',16,'Stylesheet Association: CSSMenu top + 2 columns','Added','127.0.0.1'),
  (1321238335,1,'admin',53,'Stylesheet: thickbox-css','Changed','127.0.0.1'),
  (1321238337,1,'admin',53,'Stylesheet: thickbox-css','Changed','127.0.0.1'),
  (1321238359,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238366,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238382,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238393,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321238400,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321239927,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321239938,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321239945,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321239951,1,'admin',64,'Content Item: Mr. Indra Catri','Edited','127.0.0.1'),
  (1321239960,1,'admin',65,'Content Item: Mr. Isman Imran','Edited','127.0.0.1'),
  (1321239967,1,'admin',66,'Content Item: Mr. Ruzaidin Noor','Edited','127.0.0.1'),
  (1321239974,1,'admin',68,'Content Item: Mr.Mohammad Aswan','Edited','127.0.0.1'),
  (1321240196,1,'admin',-1,'Module','Expanded module: SendEmail version 1.0.1','127.0.0.1'),
  (1321240206,1,'admin',-1,'Module: SendEmail','Deleted','127.0.0.1'),
  (1321240406,1,'admin',-1,'Module','Expanded module: Thumbnails version 0.1.1','127.0.0.1'),
  (1321246965,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321246965,1,'admin',-1,'Module','Uninstalled module jQuery','127.0.0.1'),
  (1321256848,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321256848,1,'admin',-1,'Automated Task Succeeded','PruneAdminlogTask','127.0.0.1'),
  (1321263055,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321331461,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321339038,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321339362,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321339479,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339502,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339548,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339560,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339591,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339609,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339618,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339627,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1');
COMMIT;

#
# Data for the `cms_adminlog` table  (LIMIT 500,500)
#

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES 
  (1321339640,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339649,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339676,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339698,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339869,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339890,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339913,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339925,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339937,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339948,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321339959,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340008,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340016,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340026,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340054,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340074,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340088,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321340140,1,'admin',34,'Stylesheet: Navigation: CSSMenu - Horizontal','Changed','127.0.0.1'),
  (1321343748,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321343867,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321343908,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321343921,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321347329,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321347329,1,'admin',-1,'Automated Task Succeeded','PruneAdminlogTask','127.0.0.1'),
  (1321348068,1,'admin',-1,'Module','Expanded module: DLSupport version 2.0','127.0.0.1'),
  (1321348428,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''FrontEndUsers'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.moduleoperations.inc.php:578','127.0.0.1'),
  (1321348684,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''FrontEndUsers'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.moduleoperations.inc.php:578','127.0.0.1'),
  (1321348872,1,'admin',-1,'CGExtensions','Installed version 1.27.1','127.0.0.1'),
  (1321348981,1,'admin',-1,'CGSimpleSmarty','Installed version 1.4.10','127.0.0.1'),
  (1321349007,1,'admin',-1,'Module','Expanded module: CGFeedback version 1.5.4','127.0.0.1'),
  (1321349022,1,'admin',-1,'CGFeedback','Installed version 1.5.4','127.0.0.1'),
  (1321349126,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321349138,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321349161,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321349180,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321349188,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321349638,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349653,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349663,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349679,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349692,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349702,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349714,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349727,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349761,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349780,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349804,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349876,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321349898,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321350260,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321350718,1,'admin',-1,'CGFeedback','Edited Tempalte commentform_Sample','127.0.0.1'),
  (1321350934,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321406378,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321409753,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321409845,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321409870,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321409900,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321409983,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321409984,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410002,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410022,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410082,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410159,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410235,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410280,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321410505,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411036,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411111,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411283,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411320,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411341,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411361,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321411422,1,'admin',69,'Content Item: test','Added','127.0.0.1'),
  (1321411462,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411589,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411621,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411634,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411744,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411888,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411968,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411988,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321411998,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412114,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412338,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412359,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412705,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412716,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412723,1,'admin',69,'Content Item: test','Edited','127.0.0.1'),
  (1321412742,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321412766,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321412823,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321412824,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321412847,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321412876,1,'admin',69,'Content Item: test','Deleted','127.0.0.1'),
  (1321412959,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321412974,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321412978,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321413063,1,'admin',-1,'CGFeedback','Template sysdflt_commentform_template was edited','127.0.0.1'),
  (1321413133,1,'admin',-1,'CGFeedback','Template sysdflt_summary_template was edited','127.0.0.1'),
  (1321413191,1,'admin',-1,'CGFeedback','Reset the default template for sysdflt_summary_template','127.0.0.1'),
  (1321413201,1,'admin',-1,'CGFeedback','Reset the default template for sysdflt_detail_template','127.0.0.1'),
  (1321413205,1,'admin',-1,'CGFeedback','Reset the default template for sysdflt_commentform_template','127.0.0.1'),
  (1321413208,1,'admin',-1,'CGFeedback','Reset the default template for sysdflt_ratings_template','127.0.0.1'),
  (1321413211,1,'admin',-1,'CGFeedback','Template sysdflt_detail_template was edited','127.0.0.1'),
  (1321413234,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321413278,1,'admin',-1,'CGFeedback','Template sysdflt_detail_template was edited','127.0.0.1'),
  (1321413368,1,'admin',-1,'CGFeedback','Template sysdflt_summary_template was edited','127.0.0.1'),
  (1321413721,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321413731,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321413785,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321413843,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321413947,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414262,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414282,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414315,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414485,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414537,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414574,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414592,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414614,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414654,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414665,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321414695,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321415301,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321415414,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321415454,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321415491,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321415613,1,'admin',-1,'Module','Uninstalled module FrontEndEditor','127.0.0.1'),
  (1321415677,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321415831,1,'admin',-1,'Attachments','Module Attach version 0.7.2.1 installed.','127.0.0.1'),
  (1321415831,1,'admin',-1,'Attach','Installed version 0.7.2.1','127.0.0.1'),
  (1321416500,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321416541,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321416766,1,'admin',-1,'Front End File Management (Uploads)','Module version 1.14.1 installed.','127.0.0.1'),
  (1321416766,1,'admin',-1,'Uploads','Installed version 1.14.1','127.0.0.1'),
  (1321416911,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417252,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321417264,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417296,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417306,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417402,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417435,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417460,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417473,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417480,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417505,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321417932,1,'admin',-1,'FrontEndUsers','Installed version 1.16.2','127.0.0.1'),
  (1321418763,1,'admin',-1,'Frontend User Management','User Added 1 = ronald@localhost.com','127.0.0.1'),
  (1321418924,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321418945,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321418966,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1321418974,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321419046,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321419277,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321424194,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321424215,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321424235,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321426425,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321426468,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321426535,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1321426541,0,'',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com',''),
  (1321427086,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321427116,1,'admin',59,'Content Item: History','Edited','127.0.0.1'),
  (1321427142,1,'admin',59,'Content Item: SEJARAH SINGKAT PEMBENTUKAN FTI','Edited','127.0.0.1'),
  (1321427179,1,'admin',59,'Content Item: SEJARAH SINGKAT PEMBENTUKAN FTI','Edited','127.0.0.1'),
  (1321427211,1,'admin',70,'Content Item: PengurusContainer','Added','127.0.0.1'),
  (1321427250,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321427328,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321427363,1,'admin',71,'Content Item: bupatisumbawabarat','Added','127.0.0.1'),
  (1321427443,1,'admin',71,'Content Item: bupatisumbawabarat','Edited','127.0.0.1'),
  (1321427547,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321427547,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321427557,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321427660,1,'admin',71,'Content Item: bupatisumbawabarat','Copied to: bupatibengkalis','127.0.0.1'),
  (1321427689,1,'admin',72,'Content Item: bupatibengkalis','Copied to: bupatimamuju','127.0.0.1'),
  (1321427704,1,'admin',73,'Content Item: bupatimamuju','Copied to: walikotadenpasar','127.0.0.1'),
  (1321427720,1,'admin',74,'Content Item: walikotadenpasar','Copied to: bupatibanyuwangi','127.0.0.1'),
  (1321427733,1,'admin',75,'Content Item: bupatibanyuwangi','Copied to: walikotakediri','127.0.0.1'),
  (1321427745,1,'admin',76,'Content Item: walikotakediri','Copied to: bupatikutai','127.0.0.1'),
  (1321427755,1,'admin',77,'Content Item: bupatikutai','Copied to: bupatilampung','127.0.0.1'),
  (1321427857,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321427921,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321427937,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321428284,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321428348,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321428370,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321428769,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321428775,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321428801,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321428810,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321428814,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321428841,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321428899,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321428982,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321429537,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429642,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429817,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429864,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429884,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429896,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429912,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429926,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429955,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429961,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429972,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429981,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321429992,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321430004,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321430012,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321430020,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321430946,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431151,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321431151,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431182,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431227,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431234,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431264,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431280,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431288,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431306,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321431318,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321432020,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432034,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432044,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432061,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432071,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432093,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432128,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432148,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432148,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432160,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432217,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321432233,1,'admin',79,'Content Item: test','Added','127.0.0.1'),
  (1321432290,1,'admin',79,'Content Item: test','Edited','127.0.0.1'),
  (1321432946,1,'admin',79,'Content Item: test','Edited','127.0.0.1'),
  (1321432965,1,'admin',79,'Content Item: test','Edited','127.0.0.1'),
  (1321433080,1,'admin',79,'Content Item: test','Deleted','127.0.0.1'),
  (1321494756,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1321495994,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321497771,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321498605,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321506153,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506170,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506202,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506230,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506249,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506256,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506575,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506585,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506630,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321506749,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321510425,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321510450,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321510549,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321511067,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321511207,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321511307,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321511418,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321511431,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321511443,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321511447,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1321512502,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512552,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512615,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512751,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512774,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512844,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512874,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512883,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512928,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321512995,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321513070,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321513113,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321513169,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321513189,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321513781,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321515512,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321515525,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321515567,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321515930,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321515990,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321516005,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321517642,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321519126,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321519189,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321519205,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321519618,1,'admin',54,'Stylesheet: roundbox','Added','127.0.0.1'),
  (1321519673,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321519738,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321519763,1,'admin',16,'Stylesheet Association: CSSMenu top + 2 columns','Added','127.0.0.1'),
  (1321520850,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321520861,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521096,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521103,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521143,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521159,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521187,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521216,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521242,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321521242,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521263,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521271,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521294,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521320,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521338,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521364,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521385,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521403,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521436,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521487,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521497,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521505,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521544,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521572,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521583,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521592,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521602,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521610,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521631,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321521738,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521751,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521785,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521818,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521865,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521880,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321521958,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321522830,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321522919,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321522976,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523008,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523041,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523090,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523098,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523106,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523106,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523114,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523139,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523154,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523164,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523174,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523181,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523190,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523199,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523217,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523225,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523231,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523242,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523250,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523253,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523264,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523301,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523306,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523317,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523334,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523340,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523350,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523373,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523379,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523390,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523546,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523564,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523578,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523584,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523596,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523617,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523634,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523709,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523741,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523756,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523773,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523778,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523791,1,'admin',54,'Stylesheet: roundbox','Changed','127.0.0.1'),
  (1321523828,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523849,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523917,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321523962,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321524003,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321524032,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321524113,1,'admin',72,'Content Item: bupatibengkalis','Edited','127.0.0.1'),
  (1321524116,1,'admin',72,'Content Item: bupatibengkalis','Edited','127.0.0.1'),
  (1321524117,1,'admin',72,'Content Item: bupatibengkalis','Edited','127.0.0.1'),
  (1321524143,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321524187,1,'admin',61,'Content Item: Angkatan I (Tahun 2011)','Edited','127.0.0.1'),
  (1321524191,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321524234,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321524294,1,'admin',72,'Content Item: bupatibengkalis','Edited','127.0.0.1'),
  (1321524301,1,'admin',72,'Content Item: bupatibengkalis','Edited','127.0.0.1'),
  (1321524358,1,'admin',72,'Content Item: bupatibengkalis','Edited','127.0.0.1'),
  (1321552465,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321553938,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321554015,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321554075,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321554250,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554281,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554314,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554381,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554400,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554416,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554440,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554450,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554460,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554470,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554478,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554489,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554498,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554533,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554585,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554605,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554618,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554626,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554635,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554665,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554711,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554726,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554745,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554784,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554801,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1321554879,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321554897,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321555066,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321555163,1,'admin',72,'Content Item: herliyansaleh','Edited','127.0.0.1'),
  (1321555357,1,'admin',74,'Content Item: idabagus','Edited','127.0.0.1'),
  (1321555385,1,'admin',74,'Content Item: idabagus','Edited','127.0.0.1'),
  (1321672731,1,'admin',-1,'Automated Task Succeeded','PruneAdminlogTask','127.0.0.1'),
  (1321672748,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1321672860,1,'admin',73,'Content Item: suhardiduka','Edited','127.0.0.1'),
  (1321672931,1,'admin',73,'Content Item: suhardiduka','Edited','127.0.0.1'),
  (1321672934,1,'admin',73,'Content Item: suhardiduka','Edited','127.0.0.1'),
  (1321673044,1,'admin',71,'Content Item: bupatisumbawabarat','Edited','127.0.0.1'),
  (1321673147,1,'admin',75,'Content Item: abdullah','Edited','127.0.0.1'),
  (1321673253,1,'admin',76,'Content Item: samsulashar','Edited','127.0.0.1'),
  (1321673256,1,'admin',76,'Content Item: samsulashar','Edited','127.0.0.1'),
  (1321673367,1,'admin',77,'Content Item: ritawidya','Edited','127.0.0.1'),
  (1321673423,1,'admin',72,'Content Item: herliyansaleh','Edited','127.0.0.1'),
  (1321673443,1,'admin',73,'Content Item: suhardiduka','Edited','127.0.0.1'),
  (1321673521,1,'admin',74,'Content Item: idabagus','Edited','127.0.0.1'),
  (1321673590,1,'admin',74,'Content Item: idabagus','Edited','127.0.0.1'),
  (1321673647,1,'admin',73,'Content Item: suhardiduka','Edited','127.0.0.1'),
  (1321673677,1,'admin',74,'Content Item: idabagus','Edited','127.0.0.1'),
  (1321673716,1,'admin',75,'Content Item: abdullah','Edited','127.0.0.1'),
  (1321673751,1,'admin',76,'Content Item: samsulashar','Edited','127.0.0.1'),
  (1321673799,1,'admin',77,'Content Item: ritawidya','Edited','127.0.0.1'),
  (1321673922,1,'admin',78,'Content Item: rycko','Edited','127.0.0.1'),
  (1321673938,1,'admin',71,'Content Item: zulkifli','Edited','127.0.0.1'),
  (1321673990,1,'admin',71,'Content Item: zulkifli','Edited','127.0.0.1'),
  (1321674056,1,'admin',75,'Content Item: abdullah','Edited','127.0.0.1'),
  (1321674083,1,'admin',76,'Content Item: samsulashar','Edited','127.0.0.1'),
  (1321674257,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321674472,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321674532,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321674557,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321674604,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321674637,1,'admin',72,'Content Item: herliyansaleh','Edited','127.0.0.1'),
  (1321674651,1,'admin',71,'Content Item: zulkifli','Edited','127.0.0.1'),
  (1321674668,1,'admin',73,'Content Item: suhardiduka','Edited','127.0.0.1'),
  (1321674691,1,'admin',74,'Content Item: idabagus','Edited','127.0.0.1'),
  (1321674706,1,'admin',75,'Content Item: abdullah','Edited','127.0.0.1'),
  (1321674717,1,'admin',76,'Content Item: samsulashar','Edited','127.0.0.1'),
  (1321674730,1,'admin',77,'Content Item: ritawidya','Edited','127.0.0.1'),
  (1321674758,1,'admin',78,'Content Item: rycko','Edited','127.0.0.1'),
  (1321674777,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321674983,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675065,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675202,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1321675664,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675681,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675697,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675713,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675759,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675869,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675892,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321675916,1,'admin',60,'Content Item: PENGURUS FTI PERIODE PERTAMA','Edited','127.0.0.1'),
  (1321676284,1,'admin',75,'Content Item: abdullah','Edited','127.0.0.1'),
  (1321676332,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321676347,1,'admin',76,'Content Item: samsulashar','Edited','127.0.0.1'),
  (1321676377,1,'admin',71,'Content Item: zulkifli','Edited','127.0.0.1'),
  (1321676401,1,'admin',72,'Content Item: herliyansaleh','Edited','127.0.0.1'),
  (1321677432,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321677471,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321677593,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321677705,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321678061,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321772737,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1321772756,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321847791,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321847801,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321847801,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321847822,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1321847974,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1321848030,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321848055,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321848074,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1321848380,1,'admin',80,'Content Item: Login','Added','127.0.0.1'),
  (1321848393,1,'admin',80,'Content Item: Login','Edited','127.0.0.1'),
  (1321848559,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321855889,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321857390,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321857408,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858148,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858250,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1');
COMMIT;

#
# Data for the `cms_adminlog` table  (LIMIT 1000,500)
#

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES 
  (1321858276,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858292,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858323,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858386,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858442,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321858497,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859336,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859460,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859492,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321859492,1,'admin',-1,'Automated Task Succeeded','PruneAdminlogTask','127.0.0.1'),
  (1321859492,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859530,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859575,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859587,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859604,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859619,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859627,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859671,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859694,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859705,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859928,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321859950,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321860026,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321860153,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321860167,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321860194,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321860227,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321860242,1,'admin',-1,'CGFeedback','Edited Tempalte summary_Sample','127.0.0.1'),
  (1321864037,1,'admin',81,'Content Item: test','Added','127.0.0.1'),
  (1321864134,1,'admin',1,'Admin Username: admin','Logged Out','127.0.0.1'),
  (1321864169,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321865264,1,'admin',-1,'--Add Me - module:FrontEndUsersComments string:fri','--Add Me - module:FrontEndUsersComments string:installed--','127.0.0.1'),
  (1321865264,1,'admin',-1,'FrontEndUsersComments','Installed version 0.1','127.0.0.1'),
  (1321865301,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321865351,1,'admin',81,'Content Item: test','Edited','127.0.0.1'),
  (1321865724,1,'admin',-1,'DLSupport','Installed version 2.0','127.0.0.1'),
  (1321865837,1,'admin',-1,'Module','Uninstalled module DLSupport','127.0.0.1'),
  (1321865927,1,'admin',-1,'Module: DLSupport','Deleted','127.0.0.1'),
  (1321865936,1,'admin',-1,'Module: DLComments','Deleted','127.0.0.1'),
  (1321867824,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321868305,1,'admin',81,'Content Item: test','Edited','127.0.0.1'),
  (1321868455,1,'admin',81,'Content Item: test','Edited','127.0.0.1'),
  (1321868492,1,'admin',81,'Content Item: test','Edited','127.0.0.1'),
  (1321868674,1,'admin',81,'Content Item: test','Edited','127.0.0.1'),
  (1321868686,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1321868996,1,'admin',81,'Content Item: test','Edited','127.0.0.1'),
  (1321886127,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321898927,0,'',-1,'Automated Task Succeeded','GatherNotificationsTask',''),
  (1321898934,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321902294,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1321924824,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1321928448,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321928461,1,'admin',-1,'Module','Expanded module: SimpleSlider version 0.3','127.0.0.1'),
  (1321928587,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321928768,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321928777,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321928967,1,'admin',-1,'SimpleSlider','Installed version 0.3','127.0.0.1'),
  (1321929176,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\function.images.php:6','127.0.0.1'),
  (1321929200,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\function.images.php:6','127.0.0.1'),
  (1321929205,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\function.images.php:6','127.0.0.1'),
  (1321929263,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321929267,1,'admin',-1,'SimpleSlider','Module is not properly cleaning input params','127.0.0.1'),
  (1321929267,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\action.default.php:26','127.0.0.1'),
  (1321929285,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321929287,1,'admin',-1,'SimpleSlider','Module is not properly cleaning input params','127.0.0.1'),
  (1321929288,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\action.default.php:13','127.0.0.1'),
  (1321929289,1,'admin',-1,'SimpleSlider','Module is not properly cleaning input params','127.0.0.1'),
  (1321929289,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\action.default.php:13','127.0.0.1'),
  (1321929295,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321929302,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\SimpleSlider\\function.images.php:6','127.0.0.1'),
  (1321929311,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''ADODB2_'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\adodb_lite\\adodb.inc.php:164','127.0.0.1'),
  (1321929376,1,'admin',-1,'Module','Uninstalled module SimpleSlider','127.0.0.1'),
  (1321929383,1,'admin',-1,'Module: SimpleSlider','Deleted','127.0.0.1'),
  (1321929720,1,'admin',-1,'Module','Expanded module: Cycle version 1.3-1','127.0.0.1'),
  (1321929804,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321929918,1,'admin',-1,'Showtime Slideshow','Module version 2.0.5 installed.','127.0.0.1'),
  (1321929918,1,'admin',-1,'Showtime','Installed version 2.0.5','127.0.0.1'),
  (1321930033,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321930365,1,'admin',-1,'Module','Expanded module: Cron version 0.0.2','127.0.0.1'),
  (1321930374,1,'admin',-1,'Cron','Module version 0.0.2 installed.','127.0.0.1'),
  (1321930374,1,'admin',-1,'Cron','Installed version 0.0.2','127.0.0.1'),
  (1321931146,1,'admin',-1,'--Add Me - module:FrontEndUsersComments string:fri','--Add Me - module:FrontEndUsersComments string:uninstalled--','127.0.0.1'),
  (1321931146,1,'admin',-1,'Module','Uninstalled module FrontEndUsersComments','127.0.0.1'),
  (1321931153,1,'admin',-1,'Module: FrontEndUsersComments','Deleted','127.0.0.1'),
  (1321931173,1,'admin',-1,'Gallery2 Embedded','Module Uninstalled.','127.0.0.1'),
  (1321931173,1,'admin',-1,'Module','Uninstalled module Gallery2Embedded','127.0.0.1'),
  (1321931182,1,'admin',-1,'Module: Gallery2Embedded','Deleted','127.0.0.1'),
  (1321931933,1,'admin',3,'User Defined Tag: getLatestImages','Added','127.0.0.1'),
  (1321931954,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321932621,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321932645,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321932648,1,'admin',-1,'ERROR','ERROR DETECTED: Using $this when not in object context at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:1','127.0.0.1'),
  (1321932668,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321933594,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321933611,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321933613,1,'admin',-1,'ERROR','ERROR DETECTED: Using $this when not in object context at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:4','127.0.0.1'),
  (1321933723,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321933727,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function imagecreatefromfile() at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:1','127.0.0.1'),
  (1321934648,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function imagecreatefromfile() at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:1','127.0.0.1'),
  (1321934665,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321934671,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined method CMSModule::imagecreatefromfile() at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:1','127.0.0.1'),
  (1321934733,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321934784,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321936282,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1321936282,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321936285,1,'admin',-1,'ERROR','ERROR DETECTED: Class ''Showtimt'' not found at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:2','127.0.0.1'),
  (1321936306,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321936328,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined method Showtime::addManualPic() at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:2','127.0.0.1'),
  (1321936357,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321936360,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined method Showtime::manualAddPic() at E:\\WEB\\cmsdepdagri\\Source\\simple\\lib\\classes\\class.usertagoperations.inc.php(260) : eval()''d code:2','127.0.0.1'),
  (1321936432,1,'admin',3,'User Defined Tag: getLatestImages','Edited','127.0.0.1'),
  (1321936436,1,'admin',-1,'ERROR','ERROR DETECTED: Using $this when not in object context at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:433','127.0.0.1'),
  (1321937448,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321937507,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function getDirectory() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:474','127.0.0.1'),
  (1321937580,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function getDirectory() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:463','127.0.0.1'),
  (1321937585,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function getDirectory() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:463','127.0.0.1'),
  (1321937589,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function getDirectory() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:463','127.0.0.1'),
  (1321937620,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function getDirectory() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:463','127.0.0.1'),
  (1321937729,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function ListFiles() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:464','127.0.0.1'),
  (1321937741,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function ListFiles() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:464','127.0.0.1'),
  (1321937749,1,'admin',-1,'ERROR','ERROR DETECTED: Using $this when not in object context at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:464','127.0.0.1'),
  (1321937762,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function ListFiles() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:440','127.0.0.1'),
  (1321938671,1,'admin',15,'Content Item: Home','Edited','127.0.0.1'),
  (1321942728,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function GenID() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:485','127.0.0.1'),
  (1321942758,1,'admin',-1,'ERROR','ERROR DETECTED: Using $this when not in object context at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:456','127.0.0.1'),
  (1321942903,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:493','127.0.0.1'),
  (1321944230,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Execute() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:513','127.0.0.1'),
  (1321945077,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function mysql_commit() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:513','127.0.0.1'),
  (1321945132,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined function mysql_commit() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Showtime\\Showtime.module.php:513','127.0.0.1'),
  (1321946990,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1321946992,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1321947020,1,'admin',58,'Content Item: News','Edited','127.0.0.1'),
  (1322011798,0,'',-1,'Automated Task Succeeded','PruneAdminlogTask',''),
  (1322011804,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1322012902,1,'admin',1,'Admin Username: admin','Logged In','127.0.0.1'),
  (1322012958,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322013020,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1322013041,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1322013179,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1322013702,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322014268,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1322014285,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1322014299,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1322014347,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322014513,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322014542,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322014605,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322014618,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322014662,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322014704,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322014893,0,'',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com',''),
  (1322015793,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1322015801,1,'admin',-1,'FrontEndEditor','Installed version 1.2.0','127.0.0.1'),
  (1322016163,1,'admin',-1,'SelfRegistration','Installed version 1.6.13','127.0.0.1'),
  (1322016484,1,'admin',82,'Content Item: Register','Added','127.0.0.1'),
  (1322016490,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322016613,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322016623,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322016629,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322016630,1,'admin',1,'SelfRegistration','User xxx@xxx.xxx registered','127.0.0.1'),
  (1322016630,1,'admin',-1,'Self Registration Module','A new user has been added to FrontEndUsers: xxx@xxx.xxx','127.0.0.1'),
  (1322016630,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322016630,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322016661,1,'admin',-1,'Frontend User Management','Frontend User Login: xxx@xxx.xxx','127.0.0.1'),
  (1322016690,1,'admin',-1,'Frontend User Management','Frontend User Logout: xxx@xxx.xxx','127.0.0.1'),
  (1322016700,1,'admin',-1,'Frontend User Management','Deleted User 2','127.0.0.1'),
  (1322017068,1,'admin',82,'Content Item: Register','Edited','127.0.0.1'),
  (1322017071,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322018925,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322018935,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322018959,1,'admin',82,'Content Item: Register','Edited','127.0.0.1'),
  (1322019671,1,'admin',82,'Content Item: Register','Edited','127.0.0.1'),
  (1322019705,1,'admin',82,'Content Item: Register','Edited','127.0.0.1'),
  (1322019708,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322019711,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322019718,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322019723,1,'admin',82,'Content Item: Register','Edited','127.0.0.1'),
  (1322019727,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322019781,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322020750,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322020764,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322020769,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322021881,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322021927,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322021940,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322021947,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322021955,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322027341,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322027356,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322027378,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322027380,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322027392,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322027394,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322027414,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322027416,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322027428,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322027440,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322027441,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322027564,1,'admin',-1,'Global Settings','Edited','127.0.0.1'),
  (1322027583,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322028563,1,'admin',-1,'Global Settings','Edited','127.0.0.1'),
  (1322028778,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322028852,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322028879,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322028897,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322028926,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322028947,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322028949,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322028959,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322029240,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322029263,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322029273,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322029377,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322029394,1,'admin',-1,'News Frontend Submit','Article added','127.0.0.1'),
  (1322029600,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322029607,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1322029961,1,'admin',-1,'Captcha','Module version 0.4.5 installed.','127.0.0.1'),
  (1322029961,1,'admin',-1,'Captcha','Installed version 0.4.5','127.0.0.1'),
  (1322030035,1,'admin',-1,'ERROR','ERROR DETECTED: Call to undefined method Captcha::CMSModule() at E:\\WEB\\cmsdepdagri\\Source\\simple\\modules\\Captcha\\lib\\classes\\module\\class.captcha.php:68','127.0.0.1'),
  (1322030105,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322030120,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322030165,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322030225,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322030267,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322030281,1,'admin',-1,'Captcha','Module Uninstalled.','127.0.0.1'),
  (1322030281,1,'admin',-1,'Module','Uninstalled module Captcha','127.0.0.1'),
  (1322030296,1,'admin',-1,'Module: Captcha','Deleted','127.0.0.1'),
  (1322031620,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322031797,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322031909,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322031925,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322031926,1,'admin',-1,'ERROR','ERROR DETECTED: Call to a member function Lang() on a non-object at E:\\WEB\\cmsdepdagri\\Source\\simple\\tmp\\templates_c\\81^%%70^707^707A8977%%content%3Acontent_en.php:12','127.0.0.1'),
  (1322031959,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322032010,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322032086,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322032160,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322032167,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322032182,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322032278,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322032364,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322033525,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322033542,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322033557,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1322033596,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322033605,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322033669,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322033676,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1322033730,1,'admin',81,'Content Item: Submit News','Edited','127.0.0.1'),
  (1322033738,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322033753,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322033767,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1322033878,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322033896,1,'admin',82,'Content Item: Register','Edited','127.0.0.1'),
  (1322033898,1,'admin',-1,'SelfRegistration','Module is not properly cleaning input params','127.0.0.1'),
  (1322033908,1,'admin',-1,'Frontend User Management','Frontend User Login: ronald@localhost.com','127.0.0.1'),
  (1322034596,1,'admin',-1,'Automated Task Succeeded','GatherNotificationsTask','127.0.0.1'),
  (1322034907,1,'admin',-1,'Frontend User Management','Frontend User Logout: ronald@localhost.com','127.0.0.1'),
  (1322035056,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035071,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035089,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035112,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035173,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035305,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035362,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035406,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035424,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035470,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035530,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035555,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035564,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035578,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035585,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035599,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035739,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035741,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322035864,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035909,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035928,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035940,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322035987,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036000,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036011,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036087,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036113,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036124,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036176,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036194,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036210,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036222,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036257,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036270,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036281,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036314,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036338,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036348,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036395,1,'admin',16,'HTML-template: CSSMenu top + 2 columns','Edited','127.0.0.1'),
  (1322036458,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036470,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036480,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036495,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036512,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036521,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036529,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036535,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322036709,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322036736,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322036792,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322036918,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322036962,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322036975,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322036999,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322037036,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322037287,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322037316,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322037523,1,'admin',23,'HTML-template: PopupPage','Edited','127.0.0.1'),
  (1322037814,1,'admin',50,'Stylesheet: PopupContent','Changed','127.0.0.1'),
  (1322038113,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322038181,1,'admin',39,'Stylesheet: Layout: Top menu + 2 columns','Changed','127.0.0.1'),
  (1322038359,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1322038408,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1322038467,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1322038537,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1322038552,1,'admin',-1,'CGFeedback','Edited Tempalte detail_Sample','127.0.0.1'),
  (1322038913,1,'admin',83,'Content Item: New Comment','Added','127.0.0.1'),
  (1322038949,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1322039118,1,'admin',62,'Content Item: Comment','Edited','127.0.0.1'),
  (1322040168,1,'admin',4,'User Defined Tag: redirect','Added','127.0.0.1');
COMMIT;

#
# Data for the `cms_content` table  (LIMIT 0,500)
#

INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES 
  (15,'Home','content',1,-1,16,1,'00001',1,'Home','home',1,1,'html',1,1,'15','home','target,pagedata,extra1,extra2,extra3,image,searchable,disable_wysiwyg,image1,Sidebar,content_en,thumbnail','','Home Page, shortcut key=1','','1',1,'2006-07-25 21:22:31','2011-11-22 05:11:11',0,''),
  (56,'Photo','content',1,-1,16,5,'00005',0,'Photo','photo',1,NULL,'html',1,1,'56','photo','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-10-29 03:06:17','2011-11-03 15:30:36',0,''),
  (58,'News','content',1,-1,16,2,'00002',0,'News','news',1,NULL,'html',1,0,'58','news','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en,__feu_date__','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:28:55','2011-11-22 07:30:20',0,''),
  (59,'SEJARAH SINGKAT PEMBENTUKAN FTI','content',1,-1,16,3,'00003',0,'History','history',1,NULL,'html',1,1,'59','history','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}\r\n{literal}\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"/modules/TinyMCE/tinymce/jscripts/tiny_mce/tiny_mce.js\"></script>\r\n<script language=\"javascript\" type=\"text/javascript\">\r\ntinyMCE.init({\r\n        theme : \"advanced\",\r\n        mode : \"textareas\",\r\n        plugins : \"spellchecker, paste\",\r\n        theme_advanced_toolbar_location : \"top\",\r\n        theme_advanced_toolbar_align : \"left\",\r\n        theme_advanced_buttons1 : \"bold,italic,underline,separator,cut,copy,paste,pastetext,pasteword,selectall,separator,link,unlink,\r\nseparator,bullist,numlist,separator,undo,redo,separator,hr,charmap,sub,sup,separator,spellchecker\",\r\n        theme_advanced_buttons2 : \"\",\r\n        theme_advanced_buttons3 : \"\"\r\n});\r\n</script>\r\n{/literal}','','','',1,'2011-11-03 12:30:43','2011-11-16 07:06:19',0,''),
  (60,'PENGURUS FTI PERIODE PERTAMA','content',1,-1,16,6,'00006',0,'Pengurus','pengurus',1,NULL,'html',1,1,'60','pengurus','content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:31:01','2011-11-19 04:11:55',0,''),
  (61,'Angkatan I (Tahun 2011)','content',1,-1,16,4,'00004',0,'Profil Peserta','profil-peserta',1,NULL,'html',1,1,'61','profil-peserta','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:31:18','2011-11-17 10:03:07',0,''),
  (62,'Comment','content',1,-1,16,7,'00007',0,'Comment','comment',1,NULL,'html',1,0,'62','comment','Sidebar,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,__feu_date__','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:31:34','2011-11-23 09:05:18',0,''),
  (64,'Mr. Indra Catri','content',1,67,23,1,'00008.00001',0,'indracatri','indracatri',0,NULL,'html',1,1,'67.64','memberscontainer/indracatri','content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar','','','','',1,'2011-11-12 02:38:40','2011-11-14 03:05:50',0,''),
  (65,'Mr. Isman Imran','content',1,67,23,2,'00008.00002',0,'ismanimran','ismanimran',0,NULL,'html',1,1,'67.65','memberscontainer/ismanimran','extra2,extra3,disable_wysiwyg,Sidebar,content_en,searchable,pagedata,target,image,thumbnail,extra1','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-12 07:12:22','2011-11-14 03:06:00',0,''),
  (66,'Mr. Ruzaidin Noor','content',1,67,23,3,'00008.00003',0,'ruzaidin','ruzaidin',0,NULL,'html',1,1,'67.66','memberscontainer/ruzaidin','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-13 07:34:06','2011-11-14 03:06:07',0,''),
  (67,'MembersContainer','content',1,-1,16,8,'00008',0,'MembersContainer','memberscontainer',0,NULL,'html',1,1,'67','memberscontainer','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-13 07:42:57','2011-11-13 07:42:57',0,''),
  (68,'Mr.Mohammad Aswan','content',1,67,23,4,'00008.00004',0,'aswan','aswan',0,NULL,'html',1,1,'67.68','memberscontainer/aswan','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-13 07:44:50','2011-11-14 03:06:14',0,''),
  (70,'PengurusContainer','content',1,-1,16,9,'00009',0,'PengurusContainer','penguruscontainer',0,NULL,'html',1,1,'70','penguruscontainer','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:06:51','2011-11-16 07:06:51',0,''),
  (71,'zulkifli','content',1,70,23,1,'00009.00001',0,'zulkifli','zulkifli',1,NULL,'html',1,1,'70.71','penguruscontainer/zulkifli','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:09:23','2011-11-19 04:19:37',0,''),
  (72,'herliyansaleh','content',1,70,23,2,'00009.00002',0,'herliyansaleh','herliyansaleh',1,NULL,'html',1,1,'70.72','penguruscontainer/herliyansaleh','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:14:20','2011-11-19 04:20:01',0,''),
  (73,'suhardiduka','content',1,70,23,3,'00009.00003',0,'suhardiduka','suhardiduka',1,NULL,'html',1,1,'70.73','penguruscontainer/suhardiduka','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:14:49','2011-11-19 03:51:08',0,''),
  (74,'idabagus','content',1,70,23,4,'00009.00004',0,'idabagus','idabagus',1,NULL,'html',1,1,'70.74','penguruscontainer/idabagus','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:15:04','2011-11-19 03:51:31',0,''),
  (75,'abdullah','content',1,70,23,5,'00009.00005',0,'abdullah','abdullah',1,NULL,'html',1,1,'70.75','penguruscontainer/abdullah','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:15:20','2011-11-19 04:18:04',0,''),
  (76,'samsulashar','content',1,70,23,6,'00009.00006',0,'samsulashar','samsulashar',1,NULL,'html',1,1,'70.76','penguruscontainer/samsulashar','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:15:33','2011-11-19 04:19:06',0,''),
  (77,'ritawidya','content',1,70,23,7,'00009.00007',0,'ritawidya','ritawidya',1,NULL,'html',1,1,'70.77','penguruscontainer/ritawidya','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:15:45','2011-11-19 03:52:10',0,''),
  (78,'rycko','content',1,70,23,8,'00009.00008',0,'rycko','rycko',1,NULL,'html',1,1,'70.78','penguruscontainer/rycko','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-16 07:15:55','2011-11-19 03:52:38',0,''),
  (80,'Login','content',1,-1,16,10,'00010',0,'Login','login',1,NULL,'html',1,1,'80','login','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-21 04:06:20','2011-11-21 04:06:33',0,''),
  (81,'Submit News','content',1,-1,16,11,'00011',0,'submitnews','submitnews',0,NULL,'html',1,0,'81','submitnews','__feu_date__,content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar','{cms_init_editor} ','','','',1,'2011-11-21 08:27:16','2011-11-23 07:35:30',0,''),
  (82,'Register','content2',1,-1,16,12,'00012',0,'Register','register',0,NULL,'html',1,1,'82','register','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-23 02:48:04','2011-11-23 07:38:15',0,''),
  (83,'New Comment','content',1,-1,23,13,'00013',0,'newcomment','newcomment',0,NULL,'html',1,1,'83','newcomment','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-23 09:01:53','2011-11-23 09:01:53',0,'');
COMMIT;

#
# Data for the `cms_content_props` table  (LIMIT 0,500)
#

INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES 
  (31,'string','content_en',NULL,NULL,NULL,'asdf','2006-07-25 21:22:31','2006-07-25 21:22:31'),
  (32,'string','content_en',NULL,NULL,NULL,'asdf','2006-07-25 21:22:31','2006-07-25 21:22:31'),
  (15,'string','target','','','','',NULL,'2011-11-22 05:11:11'),
  (15,'string','pagedata','','','','',NULL,'2011-11-22 05:11:11'),
  (15,'string','extra1','','','','',NULL,'2011-11-22 05:11:11'),
  (15,'string','extra2','','','','',NULL,'2011-11-22 05:11:11'),
  (15,'string','extra3','','','','',NULL,'2011-11-22 05:11:11'),
  (65,'string','extra2','','','','',NULL,'2011-11-14 03:06:00'),
  (65,'string','extra3','','','','',NULL,'2011-11-14 03:06:00'),
  (15,'string','image','','','','-1',NULL,'2011-11-22 05:11:11'),
  (15,'string','searchable','','','','1',NULL,'2011-11-22 05:11:11'),
  (15,'string','disable_wysiwyg','','','','0',NULL,'2011-11-22 05:11:11'),
  (15,'string','image1','','','','uploads/images/logo1.gif',NULL,'2011-11-22 05:11:11'),
  (65,'string','disable_wysiwyg','','','','0',NULL,'2011-11-14 03:06:00'),
  (65,'string','Sidebar','','','','',NULL,'2011-11-14 03:06:00'),
  (65,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"{uploads_url}/images/members/ismanimran.png\" alt=\"\" width=\"100\" /><strong>Mr. Isman Imran </strong>was born in Kemang on August 16, 1961. He joined civil service right after he graduated from college in 1989. He was named the Head Organizational Section of Agam District in 1996. During his tenure at Pasaman District he was assigned to conduct feasibility study of the proliferation (<em>pemekaran</em>) plan of Pasaman District, as a result in 2003, Pasaman District was subdivided into two districts: Pasaman and West Pasaman. He was transferred from Pasaman to Agam District in 2006, and got promoted to the position of Head of <em>Bappeda </em>of Agam District.</p>',NULL,'2011-11-14 03:06:00'),
  (15,'string','Sidebar','','','','',NULL,'2011-11-22 05:11:11'),
  (66,'string','target','','','','',NULL,'2011-11-14 03:06:07'),
  (66,'string','image','','','','-1',NULL,'2011-11-14 03:06:07'),
  (66,'string','thumbnail','','','','-1',NULL,'2011-11-14 03:06:07'),
  (66,'string','extra1','','','','',NULL,'2011-11-14 03:06:07'),
  (66,'string','extra2','','','','',NULL,'2011-11-14 03:06:07'),
  (66,'string','extra3','','','','',NULL,'2011-11-14 03:06:07'),
  (66,'string','searchable','','','','1',NULL,'2011-11-14 03:06:07'),
  (66,'string','pagedata','','','','',NULL,'2011-11-14 03:06:07'),
  (66,'string','disable_wysiwyg','','','','0',NULL,'2011-11-14 03:06:07'),
  (66,'string','Sidebar','','','','',NULL,'2011-11-14 03:06:07'),
  (66,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"{uploads_url}/images/members/ruzaidin.png\" alt=\"\" width=\"100\" /><strong>Mr. Ruzaidin Noor </strong>was born in Martapura on December 22, 1951. He graduated from APDN (<em>Akademi Pemerintahan Dalam Negeri </em>or Academy for Local Government), a college to train local government official candidates in 1975. He joined the South Kalimantan Provincial government right after he graduate from APDN. He was transferred to Banjarmansin Municipality in 1978. He was promoted to the position of Assistant for Developmental Administration in 1998. During the New Order era, he was active as Golkar functionary in Banjarmansin chapter.?</p>\r\n<p>Following the formation of Banjarbaru, he was transferred to the new municipality, where he served as the acting municipality secretary from 1999 to 2001. Beginning in 2001, he became the municipality secretary. As a career bureaucrat, he successfully got elected as vice-mayor in 2005, and he was elected as Mayor of Banjarbaru in the 2010 direct local elections.?</p>',NULL,'2011-11-14 03:06:07'),
  (67,'string','target','','','','',NULL,'2011-11-13 07:42:57'),
  (67,'string','image','','','','-1',NULL,'2011-11-13 07:42:57'),
  (67,'string','thumbnail','','','','-1',NULL,'2011-11-13 07:42:57'),
  (67,'string','extra1','','','','',NULL,'2011-11-13 07:42:57'),
  (67,'string','extra2','','','','',NULL,'2011-11-13 07:42:57'),
  (67,'string','extra3','','','','',NULL,'2011-11-13 07:42:57'),
  (67,'string','searchable','','','','0',NULL,'2011-11-13 07:42:57'),
  (67,'string','pagedata','','','','',NULL,'2011-11-13 07:42:57'),
  (67,'string','disable_wysiwyg','','','','0',NULL,'2011-11-13 07:42:57'),
  (67,'string','Sidebar','','','','',NULL,'2011-11-13 07:42:57'),
  (67,'string','content_en','','','','<!-- Add code here that should appear in the content block of all new pages -->',NULL,'2011-11-13 07:42:57'),
  (56,'string','target','','','','',NULL,'2011-11-03 15:30:36'),
  (56,'string','image','','','','-1',NULL,'2011-11-03 15:30:36'),
  (56,'string','thumbnail','','','','-1',NULL,'2011-11-03 15:30:36'),
  (56,'string','extra1','','','','',NULL,'2011-11-03 15:30:36'),
  (56,'string','extra2','','','','',NULL,'2011-11-03 15:30:36'),
  (56,'string','extra3','','','','',NULL,'2011-11-03 15:30:36'),
  (56,'string','searchable','','','','1',NULL,'2011-11-03 15:30:36'),
  (56,'string','pagedata','','','','',NULL,'2011-11-03 15:30:36'),
  (56,'string','disable_wysiwyg','','','','0',NULL,'2011-11-03 15:30:36'),
  (56,'string','content_en','','','','<div>\r\n<p>{Gallery template=\"Fancybox\"}</p>\r\n</div>',NULL,'2011-11-03 15:30:36'),
  (60,'string','content_en','','','','<p>{literal}</p>\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/jquery-1.4.4.js\"></script>\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/thickbox.js\"></script>\r\n<p>{/literal}</p>\r\n\r\n<a href=\"{cms_selflink href=''herliyansaleh''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/herliyan_saleh.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Herliyan Saleh</b><br /> <br /> \r\n                                            District Head of Bengkalis District, Riau\r\n                                        </div>\r\n\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>    \r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''idabagus''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/ida_bagus.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Mr. Ida Bagus Rai Dharmawijaya</b><br /> <br /> \r\n                                            District Head of Bengkalis District, Riau\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''suhardiduka''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/suhardi_duka.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Suhardi Duka</b><br /> <br /> \r\n                                            District Head of Mamuju, West Sulawesi\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''zulkifli''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/zulkifli.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Mr. Zulkifli Muhadli</b><br /> <br /> \r\n                                            District Head of Mamuju, West Sulawesi\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''abdullah''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/abdullah.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Mr. Abdullah Azwar Anas</b><br /> <br /> \r\n                                            District Head of Banyuwangi, East Java\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''samsulashar''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/samsul_ashar.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Mr. Samsul Ashar</b><br /> <br /> \r\n                                            Mayor of Kediri\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''ritawidya''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/rita_widyasari.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Mrs. Rita Widyasari</b><br /> <br /> \r\n                                            District Head of Kutai Kertanegara District, East Kalimantan\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>\r\n\r\n<a href=\"{cms_selflink href=''rycko''}\" class=\"thickbox\">\r\n    <div id=\"roundbox\">\r\n        <div id=\"lb\">\r\n            <div id=\"rb\">\r\n                <div id=\"bb\">\r\n                    <div id=\"blc\">\r\n                        <div id=\"brc\">\r\n                            <div id=\"tb\">\r\n                                <div id=\"tlc\">\r\n                                    <div id=\"trc\">\r\n                                        <div id=\"roundcontent\">\r\n                                            <img style=\"float: left; margin-right: 10px; margin-bottom: 10px;\" \r\n                                                 src=\"uploads/images/pengurus/rycko.jpg\" alt=\"\" \r\n                                                 width=\"100px\" /><b>Mr. Rycko Menoza</b><br /> <br /> \r\n                                            District Head of South Lampung, Lampung\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</a>',NULL,'2011-11-19 04:11:55'),
  (62,'string','Sidebar','','','','',NULL,'2011-11-23 09:05:18'),
  (58,'string','target','','','','',NULL,'2011-11-22 07:30:20'),
  (58,'string','image','','','','-1',NULL,'2011-11-22 07:30:20'),
  (58,'string','thumbnail','','','','-1',NULL,'2011-11-22 07:30:20'),
  (58,'string','extra1','','','','',NULL,'2011-11-22 07:30:20'),
  (58,'string','extra2','','','','',NULL,'2011-11-22 07:30:20'),
  (58,'string','extra3','','','','',NULL,'2011-11-22 07:30:20'),
  (58,'string','searchable','','','','1',NULL,'2011-11-22 07:30:20'),
  (58,'string','pagedata','','','','',NULL,'2011-11-22 07:30:20'),
  (58,'string','disable_wysiwyg','','','','0',NULL,'2011-11-22 07:30:20'),
  (59,'string','target','','','','',NULL,'2011-11-16 07:06:19'),
  (59,'string','image','','','','-1',NULL,'2011-11-16 07:06:19'),
  (59,'string','thumbnail','','','','-1',NULL,'2011-11-16 07:06:19'),
  (59,'string','extra1','','','','',NULL,'2011-11-16 07:06:19'),
  (59,'string','extra2','','','','',NULL,'2011-11-16 07:06:19'),
  (59,'string','extra3','','','','',NULL,'2011-11-16 07:06:19'),
  (59,'string','searchable','','','','1',NULL,'2011-11-16 07:06:19'),
  (59,'string','pagedata','','','','',NULL,'2011-11-16 07:06:19'),
  (59,'string','disable_wysiwyg','','','','0',NULL,'2011-11-16 07:06:19'),
  (70,'string','target','','','','',NULL,'2011-11-16 07:06:51'),
  (70,'string','image','','','','-1',NULL,'2011-11-16 07:06:51'),
  (60,'string','target','','','','',NULL,'2011-11-19 04:11:55'),
  (60,'string','image','','','','-1',NULL,'2011-11-19 04:11:55'),
  (60,'string','thumbnail','','','','-1',NULL,'2011-11-19 04:11:55'),
  (60,'string','extra1','','','','',NULL,'2011-11-19 04:11:55'),
  (60,'string','extra2','','','','',NULL,'2011-11-19 04:11:55'),
  (60,'string','extra3','','','','',NULL,'2011-11-19 04:11:55'),
  (60,'string','searchable','','','','1',NULL,'2011-11-19 04:11:55'),
  (60,'string','pagedata','','','','',NULL,'2011-11-19 04:11:55'),
  (60,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 04:11:55'),
  (71,'string','target','','','','',NULL,'2011-11-19 04:19:37'),
  (71,'string','image','','','','-1',NULL,'2011-11-19 04:19:37'),
  (71,'string','thumbnail','','','','-1',NULL,'2011-11-19 04:19:37'),
  (61,'string','target','','','','',NULL,'2011-11-17 10:03:07'),
  (61,'string','image','','','','-1',NULL,'2011-11-17 10:03:07'),
  (61,'string','thumbnail','','','','-1',NULL,'2011-11-17 10:03:07'),
  (61,'string','extra1','','','','',NULL,'2011-11-17 10:03:07'),
  (61,'string','extra2','','','','',NULL,'2011-11-17 10:03:07'),
  (61,'string','extra3','','','','',NULL,'2011-11-17 10:03:07'),
  (61,'string','searchable','','','','1',NULL,'2011-11-17 10:03:07'),
  (61,'string','pagedata','','','','',NULL,'2011-11-17 10:03:07'),
  (61,'string','disable_wysiwyg','','','','0',NULL,'2011-11-17 10:03:07'),
  (62,'string','target','','','','',NULL,'2011-11-23 09:05:18'),
  (62,'string','image','','','','-1',NULL,'2011-11-23 09:05:18'),
  (62,'string','thumbnail','','','','-1',NULL,'2011-11-23 09:05:18'),
  (62,'string','extra1','','','','',NULL,'2011-11-23 09:05:18'),
  (62,'string','extra2','','','','',NULL,'2011-11-23 09:05:18'),
  (62,'string','extra3','','','','',NULL,'2011-11-23 09:05:18'),
  (62,'string','searchable','','','','1',NULL,'2011-11-23 09:05:18'),
  (62,'string','pagedata','','','','',NULL,'2011-11-23 09:05:18'),
  (62,'string','disable_wysiwyg','','','','0',NULL,'2011-11-23 09:05:18'),
  (59,'string','content_en','','','','<p>Pada tanggal 6 Oktober 2011, bertempat di Gedung Research Triangle Institute (RTI) atas prakarsa peserta dan difasilitasi Badan Diklat Kemendagri telah dibentuk Forum Transformasi Indonesia (FTI) sebagai salah satu jaringan bagi seluruh Alumni Transforming Leader in Indonesia untuk terus berkomunikasi membina dan mengembangkan kapasitas guna percepatan transformasi pemerintahan daerah di Indonesia. Secara umum, FTI bertujuan untuk memberikan fasilitasi kajian penelitian untuk mendukung pengambilan kebijakan dengan kegiatan utama pelaksanaan kajian kebijakan, penerbitan, pembentukan network secara global dan pemberian penghargaan kepada pelaku. Pada saat yang bersamaan telah dibentuk Presidium Kepengurusan yang terdiri dari 4 Ketua, Sekretaris Jenderal, Wakil Sekretaris Jenderal, Bendahara dan Wakil Bendahara.</p>\r\n<p>Beberapa kebijakan yang telah ditetapkan untuk mendukung pencapaian tujuan FTI diantaranya:</p>\r\n<p>a)      Sekretariat beralamat di Badan Pendidikan dan Pelatihan Kemendagri, Jl. Pahlawan Nomor 8 Kalibata Jakarta Selatan dan Jl. Cimahi Nomor 10, Menteng, Jakarta Pusat</p>\r\n<p>b)      Organisasi bersifat independen</p>\r\n<p>c)       Menjadi organisasi yang akan memberikan masukan kajian kebijakan</p>\r\n<p>d)      Melaksanakan kerjasama dengan Perguruan Tinggi di Indonesia</p>\r\n<p>e)      Memberikan penugasan kepada 3 (tiga) narasumber utama yaitu Bapak Dr. Wahyudi Kumorotomo, Dr. Achmadi Ringoringo dan Prof. Dr. Eko Prasojo untuk mendesain garis besar organisasi;</p>\r\n<p>f)       Akan menunjuk dan menetapkan Sekretaris Executive untuk melaksanakan administrasi organisasi sehari-hari dan untuk membantu Pengurus Organisasi.</p>\r\n<p> </p>\r\n<p>(<strong>Yusharto, Kabid Otda dan PUM, Badan Diklat Kemendagri</strong>) </p>',NULL,'2011-11-16 07:06:19'),
  (61,'string','content_en','','','','{literal}\r\n<link href=\"uploads/popup/css/thickbox.css\" rel=\"stylesheet\" type=\"text/css\" display=\"screen\" />\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/jquery-1.4.4.js\"></script>\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/thickbox.js\"></script>\r\n{/literal}\r\n<div>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"vertical-align: top;\">\r\n<td>\r\n<p style=\"color: #a91617;\">Bupati &amp; Walikota Lubuk Basung, Sumatera Barat</p>\r\n<ul>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''indracatri''}\">Mr. Indra Catri</a></li>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''ismanimran''}\">Mr. Isman Imran</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\n<p style=\"color: #a91617;\">Bupati &amp; Walikota Banjarbaru, Kalimantan Selatan</p>\r\n<ul>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''ruzaidin''}\">Mr. Muhammad Ruzaidin Noor</a></li>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''aswan''}\">Mr. Mohammad Aswan</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>',NULL,'2011-11-17 10:03:07'),
  (64,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"{uploads_url}/images/members/indracatri.png\" alt=\"\" width=\"100\" /><strong>Mr. Indra Catri</strong>?was born in Bukittingi on April 4, 1961. After obtainin his bachelor degree from the Department of Regional Planning of Bandung Institute of Technology (ITB) in 1987, he joined civil service at the Padang Municipality <em>Bappeda </em>(Local Planning Agency) in 1990. He was transferred to various positions at the Padang Municipality office. He was named the Head of <em>Bappeda </em>Padang Municipality in 2008, previously he served as the Assistant for People?s Welfare Affairs at the Padang Municipality.</p>\r\n<p>He run for District Head of Agam in 2005, but he lost. He run again in the 2010 Agam local election and elected. As a newly elected district head, Indra Catri?s endeavor is to improve the economic infrastructure, minimize leaks in local public finance and to enhance human resources? capacity.</p>',NULL,'2011-11-14 03:05:50'),
  (68,'string','target','','','','',NULL,'2011-11-14 03:06:14'),
  (68,'string','image','','','','-1',NULL,'2011-11-14 03:06:14'),
  (68,'string','thumbnail','','','','-1',NULL,'2011-11-14 03:06:14'),
  (68,'string','extra1','','','','',NULL,'2011-11-14 03:06:14'),
  (68,'string','extra2','','','','',NULL,'2011-11-14 03:06:14'),
  (68,'string','extra3','','','','',NULL,'2011-11-14 03:06:14'),
  (68,'string','searchable','','','','1',NULL,'2011-11-14 03:06:14'),
  (68,'string','pagedata','','','','',NULL,'2011-11-14 03:06:14'),
  (68,'string','disable_wysiwyg','','','','0',NULL,'2011-11-14 03:06:14'),
  (68,'string','Sidebar','','','','',NULL,'2011-11-14 03:06:14'),
  (68,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"{uploads_url}/images/members/aswan.png\" alt=\"\" width=\"100\" /> <strong>Mr. Mohammad Aswan</strong> was born in Banjarbaru on September 19, 1962. He built his career in local government bureaucracy in Tanah Laut District, South Kalimantan Province, immediately after graduating from Hasanuddin University in 1989. He served as Sub-district Head (<em>camat</em>) of Kurau in Tanah Laut Disrict from 2001 to 2002. After the formation of Banjarbaru Municipality, he moved to the new municipality and served as the Head of Economic Affairs. Meanwhile he pursued his master degree in public administration at Gadjah Mada University in 1995 and doctorate degree in public administration at Brawijaya University in 2008. He was named Head of <em>Bappeda </em>of Banjarbaru municipality in 2010.</p>',NULL,'2011-11-14 03:06:14'),
  (58,'string','Sidebar','','','','',NULL,'2011-11-22 07:30:20'),
  (59,'string','Sidebar','','','','',NULL,'2011-11-16 07:06:19'),
  (61,'string','Sidebar','','','','',NULL,'2011-11-17 10:03:07'),
  (56,'string','Sidebar','','','','',NULL,'2011-11-03 15:30:36'),
  (64,'string','target','','','','',NULL,'2011-11-14 03:05:50'),
  (64,'string','image','','','','-1',NULL,'2011-11-14 03:05:50'),
  (64,'string','thumbnail','','','','-1',NULL,'2011-11-14 03:05:50'),
  (64,'string','extra1','','','','',NULL,'2011-11-14 03:05:50'),
  (64,'string','extra2','','','','',NULL,'2011-11-14 03:05:50'),
  (64,'string','extra3','','','','',NULL,'2011-11-14 03:05:50'),
  (64,'string','searchable','','','','1',NULL,'2011-11-14 03:05:50'),
  (64,'string','pagedata','','','','',NULL,'2011-11-14 03:05:50'),
  (64,'string','disable_wysiwyg','','','','0',NULL,'2011-11-14 03:05:50'),
  (65,'string','searchable','','','','1',NULL,'2011-11-14 03:06:00'),
  (65,'string','pagedata','','','','',NULL,'2011-11-14 03:06:00'),
  (64,'string','Sidebar','','','','',NULL,'2011-11-14 03:05:50'),
  (65,'string','target','','','','',NULL,'2011-11-14 03:06:00'),
  (65,'string','image','','','','-1',NULL,'2011-11-14 03:06:00'),
  (65,'string','thumbnail','','','','-1',NULL,'2011-11-14 03:06:00'),
  (65,'string','extra1','','','','',NULL,'2011-11-14 03:06:00'),
  (58,'string','content_en','','','','<p>{news number=''3''}</p>\r\n<p><a href=\"{cms_selflink href=''submitnews''}\">Submit News</a></p>',NULL,'2011-11-22 07:30:20'),
  (70,'string','thumbnail','','','','-1',NULL,'2011-11-16 07:06:51'),
  (70,'string','extra1','','','','',NULL,'2011-11-16 07:06:51'),
  (70,'string','extra2','','','','',NULL,'2011-11-16 07:06:51'),
  (70,'string','extra3','','','','',NULL,'2011-11-16 07:06:51'),
  (70,'string','searchable','','','','1',NULL,'2011-11-16 07:06:51'),
  (70,'string','pagedata','','','','',NULL,'2011-11-16 07:06:51'),
  (70,'string','disable_wysiwyg','','','','0',NULL,'2011-11-16 07:06:51'),
  (70,'string','Sidebar','','','','',NULL,'2011-11-16 07:06:51'),
  (70,'string','content_en','','','','<p> </p>\r\n<!-- Add code here that should appear in the content block of all new pages -->',NULL,'2011-11-16 07:06:51'),
  (71,'string','extra1','','','','',NULL,'2011-11-19 04:19:37'),
  (71,'string','extra2','','','','',NULL,'2011-11-19 04:19:37'),
  (71,'string','extra3','','','','',NULL,'2011-11-19 04:19:37'),
  (71,'string','searchable','','','','1',NULL,'2011-11-19 04:19:37'),
  (71,'string','pagedata','','','','',NULL,'2011-11-19 04:19:37'),
  (71,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 04:19:37'),
  (71,'string','Sidebar','','','','',NULL,'2011-11-19 04:19:37'),
  (71,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/zulkifli.jpg\" alt=\"\" width=\"120\" /><strong>Mr. Zulkifli Muhadli</strong></h3>\r\n<p>District Head of Sumbawa Barat, West of Nusa Tenggara<br /> Jalan Bung Karno No. 3, Taliwang<br /> West of Nusa Tenggara, Indonesia<br /> +62372 81001<br /> +62812 3891799<br /> +62812 31304233<br /> Email: zulkiflimuhadli@gmail.com</p>\r\n\r\n<p>Born in Taliwang, West Sumbawa on May 14, 1958. Before joining politics, Zulkifli was a kiai (Islamic cleric). In 1984 Zulkifli helped to found Pondok Pesantren (Islamic boarding school) Al-Ikhlas in Taliwang. Twenty years later, in 2004, he helped to establish Cordova University, the first university in the district. Zulkifli Muhadli played substantial role in the endeavor of establishing the District of West Sumbawa, which previously was part of Sumbawa District. He was named as the chair of Committee for the Formation of West Sumbawa District (Panitia Pembentukan Kabupaten Sumbawa Barat). Aside from being a popular kiai (Islamic cleric) who serves in various Islamic organizations and propagation (dakwah), he has been known as brilliant intellectual and seasoned businessman. He was democratically elected as the first District Head of West Sumbawa in the pemilukada (local district head elections) in 2005. He was reelected for the second term in 2010. As a district head, Zulkifli Muhadli is known for his pro-people and fulfillment of basic needs policies.</p>',NULL,'2011-11-19 04:19:37'),
  (15,'string','content_en','','','','<div>\r\n<div>\r\n<h3 style=\"text-align: left;\" align=\"center\">{getLatestImages}</h3>\r\n<h3 style=\"text-align: left;\" align=\"center\"> </h3>\r\n<h3 style=\"text-align: left;\" align=\"center\">{Showtime show=''1''}</h3>\r\n</div>\r\n</div>',NULL,'2011-11-22 05:11:11'),
  (81,'string','__feu_date__','','','','a:1:{s:6:\"groups\";a:1:{i:0;s:1:\"1\";}}',NULL,'2011-11-23 07:35:30'),
  (82,'string','target','','','','',NULL,'2011-11-23 07:38:15'),
  (82,'string','image','','','','-1',NULL,'2011-11-23 07:38:15'),
  (82,'string','thumbnail','','','','-1',NULL,'2011-11-23 07:38:15'),
  (82,'string','extra1','','','','',NULL,'2011-11-23 07:38:15'),
  (82,'string','extra2','','','','',NULL,'2011-11-23 07:38:15'),
  (82,'string','extra3','','','','',NULL,'2011-11-23 07:38:15'),
  (82,'string','searchable','','','','1',NULL,'2011-11-23 07:38:15'),
  (82,'string','pagedata','','','','',NULL,'2011-11-23 07:38:15'),
  (82,'string','disable_wysiwyg','','','','0',NULL,'2011-11-23 07:38:15'),
  (82,'string','Sidebar','','','','',NULL,'2011-11-23 07:38:15'),
  (83,'string','target','','','','',NULL,'2011-11-23 09:01:53'),
  (82,'string','content_en','','','','<p>{cms_module module=SelfRegistration group=Member}</p>',NULL,'2011-11-23 07:38:15'),
  (81,'string','content_en','','','','{FrontEndUsers form=\"silent\"}\r\n\r\n{if isset($username)}\r\n{* logged in, display news submission form *}\r\n  {news action=\"fesubmit\" formtemplate=\"FrontEndNewsForm\"}\r\n\r\n{else}\r\n{* not logged in, display login form *}\r\n  {FrontEndUsers returnto=\"submitnews\"}\r\n{/if}',NULL,'2011-11-23 07:35:30'),
  (83,'string','image','','','','-1',NULL,'2011-11-23 09:01:53'),
  (83,'string','thumbnail','','','','-1',NULL,'2011-11-23 09:01:53'),
  (83,'string','extra1','','','','',NULL,'2011-11-23 09:01:53'),
  (83,'string','extra2','','','','',NULL,'2011-11-23 09:01:53'),
  (83,'string','extra3','','','','',NULL,'2011-11-23 09:01:53'),
  (83,'string','searchable','','','','1',NULL,'2011-11-23 09:01:53'),
  (83,'string','pagedata','','','','',NULL,'2011-11-23 09:01:53'),
  (83,'string','disable_wysiwyg','','','','0',NULL,'2011-11-23 09:01:53'),
  (83,'string','Sidebar','','','','',NULL,'2011-11-23 09:01:53'),
  (83,'string','content_en','','','','{CGFeedback}',NULL,'2011-11-23 09:01:53'),
  (62,'string','content_en','','','','{literal}\r\n<link href=\"uploads/popup/css/thickbox.css\" rel=\"stylesheet\" type=\"text/css\" display=\"screen\" />\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/jquery-1.4.4.js\"></script>\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/thickbox.js\"></script>\r\n{/literal}\r\n\r\n{CGFeedback action=''summary'' pagelimit=\"4\"}\r\n<a href=\"{cms_selflink href=''newcomment''}\" class=\"thickbox\">Submit New Comment</a>',NULL,'2011-11-23 09:05:18'),
  (15,'string','thumbnail','','','','-1',NULL,'2011-11-22 05:11:11'),
  (72,'string','target','','','','',NULL,'2011-11-19 04:20:01'),
  (72,'string','image','','','','-1',NULL,'2011-11-19 04:20:01'),
  (72,'string','thumbnail','','','','-1',NULL,'2011-11-19 04:20:01'),
  (72,'string','extra1','','','','',NULL,'2011-11-19 04:20:01'),
  (72,'string','extra2','','','','',NULL,'2011-11-19 04:20:01'),
  (72,'string','extra3','','','','',NULL,'2011-11-19 04:20:01'),
  (72,'string','searchable','','','','1',NULL,'2011-11-19 04:20:01'),
  (72,'string','pagedata','','','','',NULL,'2011-11-19 04:20:01'),
  (72,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 04:20:01'),
  (72,'string','Sidebar','','','','',NULL,'2011-11-19 04:20:01'),
  (73,'string','target','','','','',NULL,'2011-11-19 03:51:08'),
  (73,'string','image','','','','-1',NULL,'2011-11-19 03:51:08'),
  (73,'string','thumbnail','','','','-1',NULL,'2011-11-19 03:51:08'),
  (73,'string','extra1','','','','',NULL,'2011-11-19 03:51:08'),
  (73,'string','extra2','','','','',NULL,'2011-11-19 03:51:08'),
  (73,'string','extra3','','','','',NULL,'2011-11-19 03:51:08'),
  (73,'string','searchable','','','','1',NULL,'2011-11-19 03:51:08'),
  (73,'string','pagedata','','','','',NULL,'2011-11-19 03:51:08'),
  (73,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 03:51:08'),
  (73,'string','Sidebar','','','','',NULL,'2011-11-19 03:51:08'),
  (74,'string','target','','','','',NULL,'2011-11-19 03:51:31'),
  (74,'string','image','','','','-1',NULL,'2011-11-19 03:51:31'),
  (74,'string','thumbnail','','','','-1',NULL,'2011-11-19 03:51:31'),
  (74,'string','extra1','','','','',NULL,'2011-11-19 03:51:31'),
  (74,'string','extra2','','','','',NULL,'2011-11-19 03:51:31'),
  (74,'string','extra3','','','','',NULL,'2011-11-19 03:51:31'),
  (74,'string','searchable','','','','1',NULL,'2011-11-19 03:51:31'),
  (74,'string','pagedata','','','','',NULL,'2011-11-19 03:51:31'),
  (74,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 03:51:31'),
  (74,'string','Sidebar','','','','',NULL,'2011-11-19 03:51:31'),
  (75,'string','target','','','','',NULL,'2011-11-19 04:18:04'),
  (75,'string','image','','','','-1',NULL,'2011-11-19 04:18:04'),
  (75,'string','thumbnail','','','','-1',NULL,'2011-11-19 04:18:04'),
  (75,'string','extra1','','','','',NULL,'2011-11-19 04:18:04'),
  (75,'string','extra2','','','','',NULL,'2011-11-19 04:18:04'),
  (75,'string','extra3','','','','',NULL,'2011-11-19 04:18:04'),
  (75,'string','searchable','','','','1',NULL,'2011-11-19 04:18:04'),
  (75,'string','pagedata','','','','',NULL,'2011-11-19 04:18:04'),
  (75,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 04:18:04'),
  (75,'string','Sidebar','','','','',NULL,'2011-11-19 04:18:04'),
  (75,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/abdullah.jpg\" alt=\"\" width=\"120\" /><strong>Mr. Abdullah Azwar Anas</strong></h3>\r\n<p>District Head of Banyuwangi, East Java<br /> Jl. Ahmad Yani No. 100,<br /> Banyuwangi East Java, Indonesia<br /> +62333 42500<br /> +62333 418333<br /> +62815 9667255<br /> Email: abdullahazwaranas@yahoo.com</p>\r\n<p>Born in Banyuwangi on August 6, 1973. He was trained in several Islamic boarding schools in East Java and later on enrolled at the University of Indonesia, Jakarta. He has been active in Nahdathul Ulama (NU)?s affiliated youth organizations such as IPNU (Ikatan Putra Nahdathul Ulama or Association of Nahdathul Ulama?s Sons) and Gerakan Pemuda Anshor (Anshor Youth Movement). In was member of MPR (Majelis Permusyawaratan Rakyat or People?s Consultative Assembly) from 1997 to 1999. Following the downfall of the New Order, he joined PKB (National Awakening Party) which is closely affiliated to Nahdathul Ulama. He was elected as Member of Parliament in 2004 legislative elections. He was elected as the District Head of his home district Banyuwangi in 2010. He was also elected as the Chair of Anshor Youth Movement in 2011.</p>',NULL,'2011-11-19 04:18:04'),
  (76,'string','target','','','','',NULL,'2011-11-19 04:19:06'),
  (76,'string','image','','','','-1',NULL,'2011-11-19 04:19:06'),
  (76,'string','thumbnail','','','','-1',NULL,'2011-11-19 04:19:06'),
  (76,'string','extra1','','','','',NULL,'2011-11-19 04:19:06'),
  (76,'string','extra2','','','','',NULL,'2011-11-19 04:19:06'),
  (76,'string','extra3','','','','',NULL,'2011-11-19 04:19:06'),
  (76,'string','searchable','','','','1',NULL,'2011-11-19 04:19:06'),
  (76,'string','pagedata','','','','',NULL,'2011-11-19 04:19:06'),
  (76,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 04:19:06'),
  (76,'string','Sidebar','','','','',NULL,'2011-11-19 04:19:06'),
  (77,'string','target','','','','',NULL,'2011-11-19 03:52:10'),
  (77,'string','image','','','','-1',NULL,'2011-11-19 03:52:10'),
  (77,'string','thumbnail','','','','-1',NULL,'2011-11-19 03:52:10'),
  (77,'string','extra1','','','','',NULL,'2011-11-19 03:52:10'),
  (77,'string','extra2','','','','',NULL,'2011-11-19 03:52:10'),
  (77,'string','extra3','','','','',NULL,'2011-11-19 03:52:10'),
  (77,'string','searchable','','','','1',NULL,'2011-11-19 03:52:10'),
  (77,'string','pagedata','','','','',NULL,'2011-11-19 03:52:10'),
  (77,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 03:52:10'),
  (77,'string','Sidebar','','','','',NULL,'2011-11-19 03:52:10'),
  (77,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/rita_widyasari.jpg\" alt=\"\" width=\"120\" /><strong>Mrs. Rita Widyasari</strong></h3>\r\n<p>District Head of Kutai Kertanegara District, East Kalimantan<br /> Jl. Wolter Monginsidi No.1 , Tenggarong<br /> East Kalimantan, Indonesia<br /> +62541 624018<br /> +62811 5331117</p>',NULL,'2011-11-19 03:52:10'),
  (78,'string','target','','','','',NULL,'2011-11-19 03:52:38'),
  (78,'string','image','','','','-1',NULL,'2011-11-19 03:52:38'),
  (78,'string','thumbnail','','','','-1',NULL,'2011-11-19 03:52:38'),
  (78,'string','extra1','','','','',NULL,'2011-11-19 03:52:38'),
  (78,'string','extra2','','','','',NULL,'2011-11-19 03:52:38'),
  (78,'string','extra3','','','','',NULL,'2011-11-19 03:52:38'),
  (78,'string','searchable','','','','1',NULL,'2011-11-19 03:52:38'),
  (78,'string','pagedata','','','','',NULL,'2011-11-19 03:52:38'),
  (78,'string','disable_wysiwyg','','','','0',NULL,'2011-11-19 03:52:38'),
  (78,'string','Sidebar','','','','',NULL,'2011-11-19 03:52:38'),
  (58,'string','__feu_date__','','','','a:1:{s:6:\"groups\";a:1:{i:0;s:1:\"1\";}}',NULL,'2011-11-22 07:30:20'),
  (62,'string','__feu_date__','','','','a:1:{s:6:\"groups\";a:1:{i:0;s:1:\"1\";}}',NULL,'2011-11-23 09:05:18'),
  (72,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/herliyan_saleh.jpg\" alt=\"\" width=\"120\" /> <strong>Mr. Herliyan Saleh</strong></h3>\r\n<p><br /> District Head of Bengkalis District, Riau <br /> Jl. Antara No. 451, <br /> Bengkalis Riau, Indonesia <br /> +62766 22224 <br /> +62852 71016161</p>\r\n\r\n<p>Born in Lubuk Muda on March 25, 1959. Upon graduating from Bogor Institute of Agriculture, he joined civil service in Bengkalis District, he was assigned as the Head of Economic Section of Bengkalis Local Planning Agency (Bappeda) and then promoted to the position of Bappeda Secretary. He pursued his master degree in planning at University of Tennessee, Knoxville in 1992. As a seasoned regional planning, he develops the ideas of village empowerment and palm oil downstream industry cluster that has been the policy of Riau Province government. He was democratically elected as Bengkalis District Head in 2010. He also currently serves as the Chair of National Mandate Party (PAN) Bengkalis Chapter.</p>',NULL,'2011-11-19 04:20:01'),
  (74,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/ida_bagus.jpg\" alt=\"\" width=\"120\" /> <strong>Mr. Ida Bagus Rai Dharmawijaya </strong></h3>\r\n<p>Mayor of Denpasar, Bali<br /> Jl. Gajah Mada No. 1 Denpasar, Indonesia<br /> +62361 221530<br /> +62361243831<br /> +628123878700</p>\r\n<p>Email: ibraimantra@gmail.com</p>',NULL,'2011-11-19 03:51:31'),
  (73,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/suhardi_duka.jpg\" alt=\"\" width=\"120\" /> <strong>Mr. Suhardi Duka</strong></h3>\r\n<p>District Head of Mamuju, West Sulawesi<br /> Jl. Soekarno Hatta Mamuju,?Indonesia<br /> +62426 21101<br /> +62815 24001962</p>',NULL,'2011-11-19 03:51:08'),
  (76,'string','content_en','','','','<h3><img style=\"float: left; left; margin-right: 15px; margin-bottom: 15px;\" src=\"uploads/images/pengurus/samsul_ashar.jpg\" alt=\"\" width=\"120\" /><strong>Mr. Samsul Ashar</strong></h3>\r\n<p>Mayor of Kediri<br /> Jl. Basuki Rachmat No. 17<br /> Kediri, Indonesia<br /> +62354 682885<br /> +62821 39138367<br /> Email: samsulashar@gmail.com</p>\r\n\r\n<p>Born in Kediri on September 16, 1961. He is a medical doctor by training and practice. Upon graduating from medical school at Brawijaya University in 1989, he served as a junior medical doctor in Aceh Province. In 2000, he continued his study to become an internist. Beginning in 2006, he served as Deputy Director of Gambiran Public Hospital in Kediri. Samsul Ashar was democratically elected as Mayor of Kediri in 2008 local elections (pemilukada).</p>',NULL,'2011-11-19 04:19:06'),
  (78,'string','content_en','','','','<h3><img style=\"float: left; margin-right: 10px; margin-bottom: 5px;\" src=\"uploads/images/pengurus/rycko.jpg\" alt=\"\" width=\"120\" /></h3>\r\n<h3><strong>Mr. Rycko Menoza</strong></h3>\r\n<p>District Head of South Lampung, Lampung<br /> Jl. Indra Bangsawan Kalianda No. 01<br />Lampung Selatan, Lampung<br />Indonesia<br /> +62727 321001<br />+62811 721971<br /> Email: rycko@yahoo.com</p>',NULL,'2011-11-19 03:52:38'),
  (60,'string','Sidebar','','','','',NULL,'2011-11-19 04:11:55'),
  (80,'string','target','','','','',NULL,'2011-11-21 04:06:33'),
  (80,'string','image','','','','-1',NULL,'2011-11-21 04:06:33'),
  (80,'string','thumbnail','','','','-1',NULL,'2011-11-21 04:06:33'),
  (80,'string','extra1','','','','',NULL,'2011-11-21 04:06:33'),
  (80,'string','extra2','','','','',NULL,'2011-11-21 04:06:33'),
  (80,'string','extra3','','','','',NULL,'2011-11-21 04:06:33'),
  (80,'string','searchable','','','','1',NULL,'2011-11-21 04:06:33'),
  (80,'string','pagedata','','','','',NULL,'2011-11-21 04:06:33'),
  (80,'string','disable_wysiwyg','','','','0',NULL,'2011-11-21 04:06:33'),
  (80,'string','Sidebar','','','','',NULL,'2011-11-21 04:06:33'),
  (80,'string','content_en','','','','<p>{FrontEndUsers}</p>\r\n<!-- Add code here that should appear in the content block of all new pages -->',NULL,'2011-11-21 04:06:33'),
  (81,'string','target','','','','',NULL,'2011-11-23 07:35:30'),
  (81,'string','image','','','','-1',NULL,'2011-11-23 07:35:30'),
  (81,'string','thumbnail','','','','-1',NULL,'2011-11-23 07:35:30'),
  (81,'string','extra1','','','','',NULL,'2011-11-23 07:35:30'),
  (81,'string','extra2','','','','',NULL,'2011-11-23 07:35:30'),
  (81,'string','extra3','','','','',NULL,'2011-11-23 07:35:30'),
  (81,'int','searchable','','','','0',NULL,'2011-11-23 07:35:30'),
  (81,'string','pagedata','','','','',NULL,'2011-11-23 07:35:30'),
  (81,'int','disable_wysiwyg','','','','0',NULL,'2011-11-23 07:35:30'),
  (81,'string','Sidebar','','','','',NULL,'2011-11-23 07:35:30');
COMMIT;

#
# Data for the `cms_content_props_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_content_props_seq` (`id`) VALUES 
  (55);
COMMIT;

#
# Data for the `cms_content_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_content_seq` (`id`) VALUES 
  (83);
COMMIT;

#
# Data for the `cms_crossref` table  (LIMIT 0,500)
#

INSERT INTO `cms_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES 
  ('global_content',1,'template',15,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
  ('global_content',1,'template',16,'2011-11-23 08:19:55','2011-11-23 08:19:55'),
  ('global_content',1,'template',20,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
  ('global_content',1,'template',18,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
  ('global_content',1,'template',17,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
  ('global_content',1,'template',21,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
  ('global_content',1,'template',22,'2011-11-12 02:39:26','2011-11-12 02:39:26');
COMMIT;

#
# Data for the `cms_css` table  (LIMIT 0,500)
#

INSERT INTO `cms_css` (`css_id`, `css_name`, `css_text`, `media_type`, `create_date`, `modified_date`) VALUES 
  (30,'Print','/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class=\"noprint\"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}','print','2006-07-25 21:22:32','2006-07-25 21:22:32'),
  (31,'Accessibility and cross-browser tools','/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n\ttext-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n\tposition: absolute;\r\n/* takes it out top side */\r\n\ttop: -999em;\r\n/* takes it out left side */\r\n\tleft: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n\tposition: absolute;\r\n\tleft: -1000px;\r\n\ttop: -1000px;\r\n\twidth: 0;\r\n\theight: 0;\r\n\toverflow: hidden;\r\n\tdisplay: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have \"(external link)\" text added, lets hide it */\r\na.external span {\r\n\tposition: absolute;\r\n\tleft: -5000px;\r\n\twidth: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n\tpadding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n\tcolor: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n\tcolor: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n\tbackground-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n\tcontent: \".\";\r\n\tdisplay: block;\r\n\theight: 0;\r\n\tclear: both;\r\n\tvisibility: hidden;\r\n}\r\n.clear {\r\n\theight: 0;\r\n\tclear: both;\r\n\twidth: 90%;\r\n\tvisibility: hidden;\r\n}\r\n#main .clear {\r\n\theight: 0;\r\n\tclear: right;\r\n\twidth: 90%;\r\n\tvisibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n\tdisplay: inline-block;\r\n\twidth: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n\theight: 1%;\r\n\tclear: right;\r\n\twidth: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */','screen','2006-07-25 21:22:32','2009-05-13 10:42:54'),
  (32,'Layout: Left sidebar + 1 column','/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n\ttext-align: left;\r\n\tfont-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n\tfont-size: 75.01%;\r\n\tline-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n\tfont-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don''t want that*/\r\nimg {\r\n\tborder: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n\ttext-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n\tbackground-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n\tcolor: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n\ttext-decoration: underline;\r\n\tbackground-color: inherit;\r\n/* a different color is used for visited links */\r\n\tcolor: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n\ttext-decoration: none;\r\n\tbackground-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n\tcolor: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* default text color for entire site*/\r\n\tcolor: #333;\r\n/* you can set your own image and background color here */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n\tmax-width: 99em;\r\n\tmin-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n\tmargin: 0 auto;\r\n\tbackground-color: #fefefe;\r\n\tcolor: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n\theight: 100px;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n\tborder-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the \"a\" link a solid shape */\r\n\tdisplay: block;\r\n/* adjust according your image size */\r\n\theight: 100px;\r\n/* this hides the text */\r\n\ttext-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n\ttext-decoration: none;\r\n}\r\ndiv#header h1 {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n\tline-height: 0;\r\n\tfont-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n\tfloat: right;\r\n\tline-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n\tfont-size: 1.5em;\r\n/* keeps the size uniform */\r\n\tmargin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n\tcolor: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n\tpadding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n\tfont-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n\tmargin: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n\tfloat: right;\r\n/* enough width for the search input box */\r\n\twidth: 27em;\r\n\ttext-align: right;\r\n\tpadding: 0.5em 0 0.2em 0;\r\n\tmargin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n\tborder: none;\r\n\theight: 22px;\r\n\twidth: 53px;\r\n\tmargin-left: 5px;\r\n\tpadding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n\tcursor: pointer;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n\tmargin: 1.5em auto 2em 0;\r\n\tpadding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n\tmargin-left: 29%;\r\n/* and some air on the right */\r\n\tmargin-right: 2%;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n\tfloat: right;\r\n\twidth: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 10px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n\tmargin-left: 29%;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n\tfloat: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n\twidth: 26%;\r\n/* FIX IE double margin bug */\r\n\tdisplay: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n\tmargin: 0px 0px 20px;\r\n\tpadding: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n\tpadding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n\tpadding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n\tclear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n\tpadding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n\tpadding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n\tcolor: #595959;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n\tfloat: left;\r\n\twidth: 30%;\r\n\tmargin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n\tfont-size: 0.8em;\r\n/* some air for footer */\r\n\tpadding: 1.5em;\r\n/* centered text */\r\n\ttext-align: center;\r\n\tmargin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n\tcolor: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n\theight: 1px;\r\n\tpadding: 1em;\r\n\tborder-bottom: 1px dotted black;\r\n\tmargin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n\twidth: 70%;\r\n}\r\ndiv.right49 {\r\n\tfloat: right;\r\n\twidth: 29%;\r\n/* set right to keep text on right */\r\n\ttext-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n\tfont-size: 2em;\r\n\tline-height: 1em;\r\n\tmargin: 0;\r\n}\r\ndiv#content h2 {\r\n\tcolor: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n\tfont-size: 1.5em;\r\n\ttext-align: left;\r\n/* some air around the text */\r\n\tpadding-left: 0.5em;\r\n\tpadding-bottom: 1px;\r\n/* set borders around header */\r\n\tborder-bottom: 1px solid #899092;\r\n\tborder-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n\tline-height: 1.5em;\r\n/* and some air under the border */\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.3em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.2em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n\tfont-size: 1em;\r\n/* some air around p elements */\r\n\tmargin: 0 0 1.5em 0;\r\n\tline-height: 1.4em;\r\n\tpadding: 0;\r\n}\r\nblockquote {\r\n\tborder-left: 10px solid #ddd;\r\n\tmargin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n\tfont-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n\tfont-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n\twhite-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n\twhite-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n\twhite-space: -pre-wrap;\r\n/* Opera 7 */\r\n\twhite-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n\tword-wrap: break-word;\r\n\tfont-family: \"Courier New\", Courier, monospace;\r\n\tfont-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n\tborder: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n\tbackground-color: #ddd;\r\n\tmargin: 0 1em 1em 1em;\r\n\tpadding: 0.5em;\r\n\tline-height: 1.5em;\r\n\tfont-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n\tmargin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n\tfont-size: 1.0em;\r\n\tline-height: 1.4em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n\tmargin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2006-07-25 21:22:32','2009-05-10 14:06:00'),
  (33,'Navigation: CSSMenu - Vertical','/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n\twidth: 95%;\r\n\tmargin-left: 0px;\r\n/* room at bottom */\r\n\tmargin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style: none;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n/* make sure it fills out */\r\n\twidth: 100%;\r\n/* just a little bump */\r\n\tmargin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n\tposition: absolute;\r\n/* just a little bump down for second level ul */\r\n\ttop: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n\tleft: 100%;\r\n/* keeps it hidden till hover event */\r\n\tdisplay: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n\ttop: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n\tmargin-bottom: -1px;\r\n/* keeps within it''s container */\r\n\tposition: relative;\r\n/* bottom padding pushes \"a\" up enough to show our image */\r\n\tpadding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n\twidth: 220px;\r\n\tpadding: 0px;\r\n/* removes first level li image */\r\n\tbackground-image: none;\r\n}\r\n/* Styling the basic apperance of the menu \"a\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* removes underline from default link setting */\r\n\ttext-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* pushes text to right */\r\n\tpadding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n\tcolor: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \"a\" */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n\tcolor: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n\tcolor: #000;\r\n\tfont-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n\tcolor: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n\ttext-align: left;\r\n\tmargin: 0px;\r\n/* relative to it''s container */\r\n\tposition: relative;\r\n/* more padding to left than default */\r\n\tpadding: 6px 3px 6px 15px;\r\n\tfont-weight: normal;\r\n/* darker than first level \"a\" */\r\n\tcolor: #000;\r\n/* removes any borders that may have been set in first level */\r\n\tborder-top: 0 none;\r\n\tborder-right: 0 none;\r\n\tborder-left: 0 none;\r\n/* removes image set in first level \"a\" */\r\n\tbackground: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n\tbackground: #F3F5F5;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n\tposition: absolute;\r\n\twidth: auto;\r\n\theight: auto;\r\n\tdisplay: none;\r\n\tposition: absolute;\r\n\tz-index: 999;\r\n\tborder-top: 1px solid #FFFFFF;\r\n\tborder-bottom: 1px solid #374B51;\r\n\t/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n\topacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n\tmin-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n\tpadding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n\tpadding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n\tpadding-left: 0;\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n/* removes padding that is used for arrows */\r\n\tpadding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n\tcolor: #899092\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n\tcolor: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n\t_float: left;\r\n\t_height: 1%;\r\n}\r\n#primary-nav li a {\r\n\t_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n\tborder-left: 1px solid #006699;\r\n\tborder-top: 1px solid #006699;\r\n\tfont-size: 130%;\r\n\tfont-weight: bold;\r\n\tpadding: 1.5em 0 0.8em 0.5em;\r\n\tbackground-color: #fff;\r\n\tmargin: 0;\r\n\twidth: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n\tdisplay: block;\r\n\theight: 0.5em;\r\n\tcolor: #abb0b6;\r\n\tbackground-color: #abb0b6;\r\n\twidth: 100%;\r\n\tborder: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tborder-top: 1px solid #006699;\r\n\tborder-right: 1px solid #006699;\r\n}','screen','2006-07-25 21:22:32','2009-05-10 20:20:30'),
  (34,'Navigation: CSSMenu - Horizontal','/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n\tclear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n/*\tbackground-color: #243135;      */\r\nbackground:  url([[root_url]]/uploads/menu_bg.png) repeat;\r\n/* IE6 Hack */\r\n\theight: 1%;\r\n\twidth: auto;\r\n/* one border at the top */\r\n\tborder-top: 1px solid #3F565C;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n\tpadding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n\tpadding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n\tposition: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n\ttop: auto;\r\n/* keeps it hidden till hover event */\r\n\tdisplay: none;\r\n/* same size but different color for each border */\r\n\tborder-top: 1px solid #C8D3D7;\r\n\tborder-right: 1px solid #C8D3D7;\r\n\tborder-bottom: 1px solid #ADC0C7;\r\n\tborder-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n\tmargin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n\tmargin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n\tleft: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n\ttop: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n\tfloat: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the \"a\" */\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n\twidth: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n\tmargin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n\tmargin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n\tfloat: none;\r\n/* relative to the ul they are in */\r\n\tposition: relative;\r\n}\r\n/* set the \"a\" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 12px 15px 15px;\r\n\tdisplay: block;\r\n/* sets no underline on links */\r\n\ttext-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n\tbackground-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n\tcolor: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n\t\r\n/* bold to set it off from non active */\r\n\tfont-weight: bold;\r\n/* set your image here */\r\n/* hover background color */\r\n/*\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px; */\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n\tcolor: #000;\r\n/* keep it the same */\r\n\tfont-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can''t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n\ttext-align: left;\r\n\tmargin: 0px;\r\n/* keeps it relative to it''s container */\r\n\tposition: relative;\r\n/* less padding than first level no need for large links here */\r\n\tpadding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n\tfont-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n\tcolor: #000;\r\n\tborder-top: 0 none;\r\n\tborder-right: 0 none;\r\n\tborder-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n\tbackground: #F3F5F5;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n\tposition: absolute;\r\n\twidth: auto;\r\n\theight: auto;\r\n\tdisplay: none;\r\n\tposition: absolute;\r\n\tz-index: 999;\r\n\tborder-top: 1px solid #FFFFFF;\r\n\tborder-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n\topacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n\topacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n\tcolor: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n\tfloat: left;\r\n\tclear: both;\r\n}\r\n#primary-nav li li a {\r\n\theight: 1%;\r\n}','screen','2006-07-25 21:22:32','2011-11-15 06:55:40'),
  (35,'Module: News','div#news {\r\n/* margin for the entire div surrounding the news items */\r\n\tmargin: 2em 0 1em 0em;\r\n/* border set here */\r\n\tborder: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n\tbackground: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n\tline-height: 2em;\r\n/* you can set your own image here */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center; */\r\n\tcolor: #990000;\r\n\tborder: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n\tpadding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n\tmargin: 0 0.5em 1em 0.5em;\r\n\tborder-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n\tfont-size: 90%;\r\n/* bold to set it off from text */\r\n\tfont-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n\tfont-weight: bold;\r\n/* little more room at top */\r\n\tpadding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n\tmargin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n\tpadding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n\tline-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n\tpadding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n\tfont-size: 90%;\r\n\tmargin-bottom: 5px;\r\n/* bold to set it off from text */\r\n\tfont-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n\tline-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n\tborder-top: 1px solid #ccc;\r\n\tmargin-top: 0.5em;\r\n\tpadding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n\tmargin-bottom: 15px;\r\n/* larger than default text */\r\n\tline-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n\tpadding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\r\ndiv#news ul li {\r\n\tpadding: 2px 2px 2px 5px;\r\n\tmargin-left: 20px;\r\n}','screen','2006-07-25 21:22:32','2011-11-03 16:14:51'),
  (38,'Navigation: Simple - Horizontal','/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n\theight: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n\tbackground-color: #243135;\r\n/* insure full width */\r\n\twidth: 100%;\r\n/* set height */\r\n\theight: 49px;\r\n\tmargin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n\tmargin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n\tpadding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n\tpadding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n\tfloat: left;\r\n/* remove any default bullets */\r\n\tlist-style: none;\r\n/* still no margin */\r\n\tmargin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n\tmargin: 0;\r\n/* removes default underline */\r\n\ttext-decoration: none;\r\n/* default link color */\r\n\tcolor: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n\tdisplay: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the \"a\" */\r\n\tpadding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the \"a\" we can set it here, it lets us use the span for an image */\r\n\tpadding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n\tpadding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n\tpadding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n\tcolor: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n\tpadding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n\tbackground: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n\tcolor: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the \"sectionheader\" */\r\n\tpadding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n\tcolor: #000;\r\n}','screen','2006-07-25 21:22:32','2010-05-29 13:06:18'),
  (39,'Layout: Top menu + 2 columns','/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n\ttext-align: left;\r\n\tfont-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n\tfont-size: 75.01%;\r\n\tline-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n\tfont-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don''t want that*/\r\nimg {\r\n\tborder: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n\ttext-decoration: none;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n}\r\na:visited {\r\n\ttext-decoration: underline;\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n\ttext-decoration: none;\r\n\tbackground-color: inherit;\r\n\tcolor: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* default text color for entire site*/\r\n\tcolor: #333;\r\n/* you can set your own image and background color here */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n\tmax-width: 69em;\r\n\tmin-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n\tmargin: 0 auto;\r\n\t/*background-color: #F4F4F4;*/\r\n\tcolor: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\t/* you can set your own image here, will go behind h1 a image */\r\n\t/* background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top; */\r\nbackground: url([[root_url]]/uploads/headerbanner.png) center no-repeat;\r\n\r\n/* border just the bottom */\r\n\tborder-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n/* this will make the \"a\" link a solid shape */\r\n\tdisplay: block;\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n/* this hides the text */\r\n\ttext-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n\ttext-decoration: none;\r\n}\r\ndiv#header h1 {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n\tline-height: 0;\r\n\tfont-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n\tfloat: right;\r\n\tline-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n\tfont-size: 1.5em;\r\n/* keeps the size uniform */\r\n\tmargin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n\tcolor: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n\tpadding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n\tfont-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n\tmargin: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n\tfloat: right;\r\n/* enough width for the search input box */\r\n\twidth: 27em;\r\n\ttext-align: right;\r\n\tpadding: 0.5em 0 0.2em 0;\r\n\tmargin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n\tborder: none;\r\n\theight: 26px;\r\n\twidth: 60px;\r\n\tmargin-left: 5px;\r\n\tpadding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n\tcursor: pointer;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n\tmargin: 10px auto 10px 0;\r\n\tpadding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n\tmargin-left: 27%;\r\n/* and some air on the right */\r\n\tmargin-right: 0%;\r\n/* you can set your own image here */\r\n\tbackground: #FFFFFF url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n\tfloat: right;\r\n\twidth: 90%;\r\n/* and we take this out or it will stop at the bottom  */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 10px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\nmin-height: 421px;\r\nmax-height: 421px;\r\n\tpadding: 10px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n\tfloat: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n\twidth: 26%;\r\n/* FIX IE double margin bug */\r\n\tdisplay: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n\tmargin: 0px 0px 20px;\r\n\tpadding: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\nmin-height: 400px;\r\nmax-height: 400px;\r\n/* overflow: auto; */\r\n}\r\ndiv#sidebarb {\r\n\tpadding: 0 0 0 0;\r\n/* this one is for sidebar with content and no menu */\r\n\t\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n\tmargin: 0em 0 0em 0em;\r\nmin-height: 440px;\r\nmax-height: 440px;\r\n}\r\ndiv#sidebara {\r\n\tpadding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n\tclear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n\tpadding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n\tpadding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n\tcolor: #595959;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n\tfloat: left;\r\n\twidth: 30%;\r\n\tmargin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n\tfont-size: 0.8em;\r\n/* some air for footer */\r\n\tpadding: 1.5em;\r\n/* centered text */\r\n\ttext-align: center;\r\n\tmargin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n\tcolor: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n\theight: 1px;\r\n\tpadding: 1em;\r\n\tborder-bottom: 1px dotted black;\r\n\tmargin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n\twidth: 70%;\r\n}\r\ndiv.right49 {\r\n\tfloat: right;\r\n\twidth: 29%;\r\n/* set right to keep text on right */\r\n\ttext-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n\tfont-size: 2em;\r\n\tline-height: 1em;\r\n\tmargin: 0;\r\n}\r\ndiv#content h2 {\r\n\tcolor: #990000;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n\tfont-size: 1.5em;\r\n\ttext-align: left;\r\n/* some air around the text */\r\n\tpadding-left: 0.5em;\r\n\tpadding-bottom: 1px;\r\n/* set borders around header */\r\n\tborder-bottom: 1px solid #899092;\r\n\tborder-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n\tline-height: 1.5em;\r\n/* and some air under the border */\r\n\tmargin: 0 0 0.1em 0;\r\n}\r\ndiv#content h3 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.3em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.2em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n\tfont-size: 1em;\r\n/* some air around p elements */\r\n\tmargin: 0 0 1.5em 0;\r\n\tline-height: 1.4em;\r\n\tpadding: 0;\r\n}\r\nblockquote {\r\n\tborder-left: 10px solid #ddd;\r\n\tmargin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n\tfont-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n\tfont-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n\twhite-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n\twhite-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n\twhite-space: -pre-wrap;\r\n/* Opera 7 */\r\n\twhite-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n\tword-wrap: break-word;\r\n\tfont-family: \"Courier New\", Courier, monospace;\r\n\tfont-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n\tborder: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n\tbackground-color: #ddd;\r\n\tmargin: 0 1em 1em 1em;\r\n\tpadding: 0.5em;\r\n\tline-height: 1.5em;\r\n\tfont-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n\tmargin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n\tfont-size: 1.0em;\r\n\tline-height: 1.4em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n\tmargin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2006-07-25 21:22:32','2011-11-23 08:49:41'),
  (41,'Handheld','/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}','handheld','2006-07-25 21:22:32','2006-07-25 21:22:32'),
  (42,'Navigation: Simple - Vertical','/******************** MENU *********************/\n#menu_vert {\n\tmargin: 0;\n\tpadding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n\tlist-style: none;\n/* margin/padding set in li */\n\tmargin: 0px;\n\tpadding: 0px;\n}\n#menu_vert ul ul {\n\tmargin: 0;\n/* padding right sets second level li in on right from first li */\n\tpadding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n\tlist-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n\tmargin: 0px 0px -1px;\n/* bottom padding pushes \"a\" up enough to show our image */\n\tpadding: 0px 0px 4px 0px;\n/* you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n\tpadding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n\tmargin: 0;\n\tpadding: 0px;\n/* replaced by image in ul ul */\n\tbackground: none;\n}\n#menu_vert li.menuactive ul {\n\tmargin: 0;\n}\n#menu_vert li.activeparent {\n\tmargin: 0;\n\tpadding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n\theight: 1%;\n}\n* html #menu_vert li a {\n\theight: 1%;\n}\n* html #menu_vert li hr {\n\theight: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n\tdisplay: block;\n/* some air for it */\n\tpadding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n\tcolor: #18507C;\n/* Fixes IE7 whitespace bug */\n\tmin-height: 1em;\n/* no underline for links */\n\ttext-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n\tfont-size: 90%;\n\tpadding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n\tpadding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n\tbackground-color: transparent;\n\tcolor: #595959;\n\ttext-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n\tcolor: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n\tcolor: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n\tcolor: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n\tpadding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n\tpadding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n\tdisplay: block;\n\tmargin: 0;\n/* adds left padding taken out of \"a.parent\" */\n\tpadding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n\ttext-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n\tdisplay: block;\n\tmargin: 0;\n\tpadding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n\tpadding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n\tpadding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n\tdisplay: block;\n\tmargin: 0;\n/* to contrast with non active pages */\n\tfont-weight: bold;\n\tpadding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n\ttext-decoration: none;\n\tcolor: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n\tcolor: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n\tdisplay: block;\n/* some air for it */\n\tpadding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n\tcolor: #000;\n/* instead of the normal font size for <h3> */\n\tfont-size: 1em;\n/* as <h3> normally has some margin by default */\n\tmargin: 0;\n/* you can set your own image here, same as \"a\" */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n\tfont-size: 90%;\n\tpadding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as \"a\" */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n\tcolor: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n\tpadding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn''t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n\tborder-right: none;\n\tpadding: 0.8em 0.5em 0.5em 1.5em;\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n\tline-height: 1em;\n\tmargin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n\theight: 1px !important;\n\tmargin-top: -1px;\n\tmargin-bottom: 0;\n\t-padding: 2px 0 2px 0;\n\tbackground-color: #000;\n\toverflow: hidden !important;\n\tline-height: 1px !important;\n\tfont-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n\tdisplay: none;\n/* this is for accessibility */\n}','screen','2009-04-30 01:09:15','2009-07-23 00:17:42'),
  (43,'Navigation: ShadowMenu - Horizontal','/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n\tclear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n\tbackground-color: #243135;\r\n/* IE6 Hack */\r\n\theight: 1%;\r\n\twidth: auto;\r\n/* one border at the top */\r\n\tborder-top: 1px solid #3F565C;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\nul#primary-nav {\r\n\tlist-style-type: none;\r\n\tmargin: 0px;\r\n\tpadding-top: 10px;\r\n\tpadding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n/* sets width of second level ul to background image */\r\n\twidth: 210px;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n\tposition: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n\ttop: auto;\r\n/* keeps it hidden till hover event */\r\n\tdisplay: none;\r\n/* room at top for li so image top shows correct */\r\n\tpadding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n\tpadding-top: 13px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n\tmargin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n\tmargin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n\tleft: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n\ttop: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n\tmargin-top: 0px;\r\n\tpadding-left: 5px;\r\n\tleft: 100%;\r\n\ttop: -7px;\r\n/* IE6 gets gif as it can''t handle transparent png */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n\tmargin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n\tfloat: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n\tmargin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n\tmargin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n\tfloat: none;\r\n/* relative to the ul they are in */\r\n\tposition: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n\tmargin-left: 6px;\r\n/* helps hold it inside the ul */\r\n\twidth: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n\tpadding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* remove default \"a\" underline */\r\n\ttext-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal \"a\" padding minus some for right image */\r\n\tpadding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n\tbackground-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n\tcolor: #fff;\r\n/* just to be sure */\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n\tbackground:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n\tbackground:  none;\r\n/* set text color here also to insure color */\r\n\tcolor: #fff;\r\n/* just to be sure */\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n\tcolor: #000;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an \"h\" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n\tbackground:  none;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n\tbackground:  none;\r\n\tcolor: #000;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n\tcolor: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n\tbackground:  none;\r\n\tcolor: #FFF;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n\tbackground:  none;\r\n\tcolor: #FFF;\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n\tcolor: #000;\r\n/* bold to set it off from non active */\r\n\tfont-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n\tpadding: 5px 10px;\r\n/* to keep it within li */\r\n\twidth: 165px;\r\n/* space between them */\r\n\tmargin: 5px;\r\n\tbackground: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n\tpadding: 5px 10px;\r\n\twidth: 165px;\r\n\tmargin: 0px;\r\n\tcolor: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n\tbackground: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n\tcolor: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n\tcolor: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n\tcolor: #000;\r\n/* just to insure normal */\r\n\tfont-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n\tcolor: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n\tcolor: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n\tcolor: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n\tcolor: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n\tcolor: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n\tcolor: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n\tbackground:  none;\r\n\tfont-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n\tcolor: #0587A9;\r\n\ttext-decoration: none;\r\n\tbackground: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n\tcolor: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n\tpadding: 0px;\r\n\tbackground:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n\twidth: 210px;\r\n/* height of image */\r\n\theight: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n\tmargin: 0px 0px -8px;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n\theight: 9px;\r\n\tmargin: 0px 0px -8px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n\theight: 2px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n\tmargin: 0px 0px -8px;\r\n\theight: 2px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n\tfloat: left;\r\n\tclear: both;\r\n}\r\n#primary-nav li li a {\r\n\theight: 1%;\r\n}','screen','2009-05-01 04:32:33','2009-07-20 18:18:21'),
  (45,'Navigation: ShadowMenu - Vertical','/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n\twidth: 95%;\r\n\tmargin-left: 0px;\r\n/* room at bottom */\r\n\tmargin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style: none;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n/* make sure it fills out */\r\n\twidth: 100%;\r\n/* just a little bump */\r\n\tmargin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n\tmargin-bottom: -1px;\r\n/* keeps within it''s container */\r\n\tposition: relative;\r\n/* bottom padding pushes \"a\" up enough to show our image */\r\n\tpadding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n\twidth: 190px;\r\n/* changes padding inherited from first level */\r\n\tpadding: 0px 10px;\r\n/* removes first level li image */\r\n\tbackground-image: none;\r\n}\r\n/* Styling the basic appearance of the menu \"a\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* removes underline from default link setting */\r\n\ttext-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* pushes text to right */\r\n\tpadding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n\tcolor: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \"a\" */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n\tcolor: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n\tcolor: #000;\r\n\tfont-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n\ttext-align: left;\r\n\tmargin: 0px;\r\n/* relative to it''s container */\r\n\tposition: relative;\r\n/* even padding all 4 sides */\r\n\tpadding: 6px;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors from here on */\r\n\tcolor: #000;\r\n/* remove any background that may have been set in level above */\r\n\tbackground: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n/* sets width of second level ul to background image */\r\n\twidth: 209px;\r\n\theight: auto;\r\n/* negative margin pulls it over the parent ul */\r\n\tmargin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n\tpadding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n\tposition: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n\tleft: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n\ttop: -2px;\r\n\tdisplay: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n\tlist-style-type: none;\r\n/* bit more negative left margin */\r\n\tmargin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:''value'', this flat lines it */\r\n\tpadding: 0px;\r\n/* now we just change one with ''property''-top:value */\r\n\tpadding-top: 10px;\r\n\tposition: absolute;\r\n\twidth: 209px;\r\n\theight: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n\ttop: -5px;\r\n\tleft: 100%;\r\n\tdisplay: none;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n\twidth: 209px;\r\n\tpadding: 0px;\r\n/* height of image */\r\n\theight: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n\tmargin: 0px 0px -9px;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 ''star html'' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n\theight: 2px;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n\tmin-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n\tcolor: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n\tfont-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n\tpadding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n\tpadding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n\tpadding-left: 0;\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n\tpadding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n\tcolor: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n\t_float: left;\r\n\t_height: 1%;\r\n}\r\n#primary-nav li a {\r\n\t_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n\tborder-left: 1px solid #006699;\r\n\tborder-top: 1px solid #006699;\r\n\tfont-size: 130%;\r\n\tfont-weight: bold;\r\n\tpadding: 1.5em 0 0.8em 0.5em;\r\n\tbackground-color: #fff;\r\n\tmargin: 0;\r\n\twidth: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n\tdisplay: block;\r\n\theight: 0.5em;\r\n\tcolor: #abb0b6;\r\n\tbackground-color: #abb0b6;\r\n\twidth: 100%;\r\n\tborder: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tborder-top: 1px solid #006699;\r\n\tborder-right: 1px solid #006699;\r\n}','screen','2009-05-02 00:20:03','2009-05-11 00:43:17'),
  (46,'Navigation: FatFootMenu','#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the \"a\" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like \"a\" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like \"a\", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}','screen','2009-05-02 15:05:04','2009-05-09 23:47:45'),
  (47,'ncleanbluecore','/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n\twidth: 100%;\r\n}\r\n.core-wrap-960 {\r\n\twidth: 960px;\r\n}\r\n.core-wrap-780 {\r\n\twidth: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n\tmargin-left: auto;\r\n\tmargin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n\tfloat: left;\r\n\tdisplay: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n\tfloat: right;\r\n\tdisplay: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n\tmargin-left: auto;\r\n\tmargin-right: auto;\r\n}','screen','2009-05-06 14:28:28','2009-05-11 02:35:43'),
  (48,'ncleanblueutils','/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tborder: 0;\r\n\toutline: 0;\r\n\tfont-size: 100%;\r\n\tvertical-align: baseline;\r\n\tbackground: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n\tline-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n\tlist-style: none;\r\n}\r\nblockquote, q {\r\n\tquotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n\tcontent: '''';\r\n\tcontent: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n\toutline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n\ttext-decoration: none;\r\n}\r\ndel {\r\n\ttext-decoration: line-through;\r\n}\r\n/* tables still need ''cellspacing=\"0\"'' in the markup */\r\ntable {\r\n\tborder-collapse: collapse;\r\n\tborder-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n\tfont-weight: inherit;\r\n\tfont-style: inherit;\r\n\tfont-family: inherit;\r\n}\r\ndfn {\r\n\tdisplay: none;\r\n\toverflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n\tbackground: none;\r\n\tborder: 0;\r\n\tclear: both;\r\n\tdisplay: block;\r\n\tfloat: none;\r\n\tfont-size: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tposition: static;\r\n\toverflow: hidden;\r\n\tvisibility: hidden;\r\n\twidth: 0;\r\n\theight: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n\tclear: both;\r\n\tcontent: ''.'';\r\n\tdisplay: block;\r\n\tvisibility: hidden;\r\n\theight: 0;\r\n}\r\n.util-clearfix {\r\n\tdisplay: inline-block;\r\n}\r\n* html .util-clearfix {\r\n\theight: 1%;\r\n}\r\n.util-clearfix {\r\n\tdisplay: block;\r\n}','screen','2009-05-06 14:29:17','2009-05-11 02:38:10'),
  (49,'Layout: NCleanBlue','/*  \r\n@Nuno Costa [criacaoweb.net]\r\n@Since [cmsms 1.6]\r\n@Contributors: Mark and Dev-Team\r\n*/\r\nbody {\r\n/* default text for entire site */\r\n\tfont: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\r\n/* default text color for entire site */\r\n\tcolor: #3A3A36;\r\n/* you can set your own image and background color here */\r\n\tbackground: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\r\n#ncleanblue {\r\n/* set to width of viewport */\r\n\twidth: auto;\r\n/* you can set your own image and background color here */\r\n\tbackground: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* wiki style external links */\r\n/* external links will have \"(external link)\" text added, lets hide it */\r\na.external span {\r\n\tposition: absolute;\r\n\tleft: -5000px;\r\n\twidth: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n\tpadding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n\tcolor: #679EBC;\r\n/* background image for the link to show wiki style arrow */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n\tcolor: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n\tbackground-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\r\n.accessibility, hr {\r\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\r\n\tposition: absolute;\r\n\ttop: -9999em;\r\n\tleft: -9999em;\r\n\tbackground: none;\r\n\tborder: 0;\r\n\tclear: both;\r\n\tdisplay: block;\r\n\tfloat: none;\r\n\tfont-size: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\toverflow: hidden;\r\n\tvisibility: hidden;\r\n\twidth: 0;\r\n\theight: 0;\r\n\tborder: none;\r\n}\r\n/* ------------ Standard  HTML elements and their default settings ------------ */\r\nb, strong{font-weight: bold;}i, em{\tfont-style: italic;}\r\np {\r\n\tpadding: 0;\r\n\tmargin-top: 0.5em;\r\n    margin-bottom: 1em;\r\n   text-align:left;\r\n}\r\nh1, h2, h3, h4, h5 {\r\n\tline-height: 1.6em;\r\n\tfont-weight: normal;\r\n\twidth: auto;\r\n\tfont-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n}\r\n/*default link styles*/\r\na {\r\n\tcolor: #679EBC;\r\n\ttext-decoration: none;\r\n\ttext-align: left;\r\n}\r\na:hover {\r\n\tcolor: #3A6B85;\r\n}\r\na:active {\r\n\tcolor: #3A6B85;\r\n}\r\na:visited {\r\n\tcolor: #679EBC;\r\n}\r\ninput, textarea, select {\r\n\tfont-size: 0.95em;\r\n}\r\n/* ------------ Wrapper ------------ */\r\ndiv#pagewrapper {\r\n\tfont-size: 95%;\r\n\tposition: relative;\r\n\tz-index: 1;\r\n}\r\n/* ------------ Header ------------ */\r\n#header {\r\n\theight: 111px;\r\n\twidth: 960px;\r\n}\r\n#logo a {\r\n/* adjust according your image size */\r\n\theight: 75px;\r\n\twidth: 215px;\r\n/* forces full link size */\r\n\tdisplay: block;\r\n/* this hides the text */\r\n\ttext-indent: -9999em;\r\n\tmargin-top: 0;\r\n\tmargin-left: 0;\r\n/* you can set your own image here, note size adjustments */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\r\n}\r\n/* ------------ Header - Search ------------ */\r\ndiv#search {\r\n\twidth: 190px;\r\n\theight: 28px;\r\n\tmargin-top: 31px;\r\n\tmargin-right: 20px;\r\n}\r\ndiv#search label {\r\n\ttext-indent: -9999em;\r\n\theight: 0pt;\r\n\twidth: 0pt;\r\n\tdisplay: none;\r\n}\r\ndiv#search input.search-input {\r\n/* specific size for image, your image may need these adjusted */\r\n\twidth: 143px;\r\n\theight: 17px;\r\n/* removes default borders, allows use of image */\r\n\tborder-style: none;\r\n/* text color */\r\n\tcolor: #999;\r\n/* padding of text */\r\n\tpadding: 7px 0px 4px 10px;\r\n\tfloat: left;\r\n/* set all font properties at once, weight, size, family */\r\n\tfont: bold 0.9em Arial, Helvetica, sans-serif;\r\n/* left input image, set your own here */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\r\n}\r\ndiv#search input.search-button {\r\n/* specific size for image, your image may need these adjusted */\r\n\twidth: 37px;\r\n\theight: 28px;\r\n/* removes default borders, allows use of image */\r\n\tborder-style: none;\r\n/* hides text, image has text */\r\n\ttext-indent: -9999em;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n/* provides positive hover effect */\r\n\tcursor: pointer;\r\n/* removes default size/height */\r\n\tfont-size: 0px;\r\n\tline-height: 0px;\r\n/* submit button image, set your own here */\r\n\tbackground: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\r\n}\r\n/* ------------ Content ------------ */\r\n#content {\r\n\twidth: auto;\r\n/* all text in #content will default align left, changed in other calls */\r\n\ttext-align: left;\r\n}\r\n#bar {\r\n\twidth: auto;\r\n\theight: 40px;\r\n\tpadding-right: 1em;\r\n\tpadding-left: 1em;\r\n}\r\n.print {\r\n\tmargin-right: 75px;\r\n\tmargin-top: 10px;\r\n}\r\n#version {\r\n\t//width: 50px;\r\n\t//height: 31px;\r\n\t//position: absolute;\r\n\t//z-index: 5;\r\n\t//top: 130px;\r\n\t//right: -16px;\r\n\t//font-size: 1.6em;\r\n\t//font-weight: bold;\r\n\t//padding: 28px 15px;\r\n\t//color: #FFF;\r\n\t//text-align: center;\r\n\t//vertical-align: middle;\r\n\t//background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\r\n}\r\n/* IE6 fixes */\r\n* html div#version {\r\n\ttop: 150px;\r\n}\r\n/* End IE6 fixes */\r\n/* Site Title */\r\nh1.title {\r\n\tfont-size: 1.8em;\r\n\tcolor: #666666;\r\n\tmargin-bottom: 0.5em;\r\n}\r\n/* Breadcrumbs */\r\ndiv.breadcrumbs {\r\n\tpadding: 0.5em 0;\r\n\tfont-size: 80%;\r\n\tmargin: 0 1em;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\n/* ------------ Side Bar (Left) ------------ */\r\n#left {\r\n\twidth: 250px;\r\n}\r\n/* Image that Represents the new CMS design */\r\n#left .screen {\r\n\tmargin: 10px 50px;\r\n}\r\n/* End  */\r\n.sbar-title {\r\n\tfont: bold 1.2em Arial, Helvetica, sans-serif;\r\n\tcolor: #252523;\r\n}\r\n.sbar-top {\r\n\theight: 20px;\r\n\twidth: auto;\r\n\tpadding: 10px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\r\n}\r\n.sbar-main {\r\n\twidth: auto;\r\n\tborder-right: 1px solid #E2E2E2;\r\n\tborder-left: 1px solid #E2E2E2;\r\n\tbackground: #F0F0F0;\r\n}\r\nspan.sbar-bottom {\r\n\twidth: auto;\r\n\tdisplay: block;\r\n\theight: 10px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\r\n}\r\n/* ------------ Main (Right) ------------ */\r\n#main {\r\n\twidth: 690px;\r\n}\r\n.main-top {\r\n\theight: 15px;\r\n\twidth: auto;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\r\n}\r\n.main-main {\r\n\twidth: auto;\r\n\tborder-right: 1px solid #E2E2E2;\r\n\tborder-left: 1px solid #E2E2E2;\r\n\tbackground: #F0F0F0;\r\n\tpadding: 20px;\r\n\tpadding-top: 0px;\r\n}\r\n.main-bottom {\r\n\twidth: auto;\r\n\theight: 41px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\r\n}\r\n.right49, .left49 {\r\n\tfont-size: 0.85em;\r\n\tmargin: 7px 5px 5px 10px;\r\n\tfont-weight: bold;\r\n}\r\n.left49 span {\r\n\tdisplay: block;\r\n\tpadding-top: 1px;\r\n}\r\n.left49 a {\r\n\tfont-weight: normal;\r\n}\r\n.right49 {\r\n\theight: 28px;\r\n\twidth: 50px;\r\n\tpadding-right: 10px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\r\n}\r\n.right49 a, .right49 a:visited {\r\n\tpadding: 7px 4px;\r\n\tdisplay: block;\r\n\tcolor: #000;\r\n\theight: 15px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\r\n}\r\n#main h2,\r\n#main h3,\r\n#main h4,\r\n#main h5,\r\n#main h6 {\r\n\tfont-size: 1.4em;\r\n\tcolor: #301E12;\r\n}\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl,\r\n#footer ul,\r\n#footer ol {\r\n\tline-height: 1em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul,\r\n#footer ul {\r\n\tlist-style: circle;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li,\r\n#footer ul li,\r\n#footer ol li {\r\n\tpadding: 2px 2px 2px 5px;\r\n\tmargin-left: 20px;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\n/* ------------ Footer ------------ */\r\n#footer-wrapper {\r\n\tmin-height: 235px;\r\n\theight: auto!important;\r\n\theight: 235px;\r\n\twidth: auto;\r\n\tmargin-top: 5px;\r\n\ttext-align: center;\r\n\tmargin-right: 00px;\r\n\tmargin-left: 0px;\r\n\tbackground: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer {\r\n\tcolor: #FFF;\r\n\tfont-size: 0.8em;\r\n\tmin-height: 235px;\r\n\theight: auto!important;\r\n\theight: 235px;\r\n\tbackground: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer .block {\r\n\twidth: 300px;\r\n\tmargin: 20px 10px 10px;\r\n}\r\n#footer .cms {\r\n\ttext-align: right;\r\n}\r\n/* ------------ Footer Links ------------ */\r\n#footer ul {\r\n\twidth: auto;\r\n\ttext-align: left;\r\n\tmargin-left: 50px;\r\n}\r\n#footer ul ul {\r\n\tmargin-left: 0px;\r\n}\r\n#footer ul li a {\r\n\tcolor: #FFF;\r\n\tdisplay: block;\r\n\tfont-weight: normal;\r\n\tmargin-bottom: 0.5em;\r\n\ttext-decoration: none;\r\n}\r\n#footer a {\r\n\tcolor: #DCEDF1;\r\n\ttext-decoration: underline;\r\n\tfont-weight: bold;\r\n}\r\n/* ------------ END LAYOUT ---------------*/\r\n/* ------------  Menu  ROOT  ------------ */\r\n.page-menu {\r\n\twidth: auto;\r\n\theight: 35px;\r\n\tmargin: 3px 0 0 20px;\r\n}\r\n.menuwrapper {}\r\n\r\nul#primary-nav li hr.menu_separator{\r\n        position: relative;\r\n        visibility: hidden;\r\n        display:block;\r\n        width:5px;\r\n       \theight: 32px;\r\n       \tmargin: 0px 5px 0px;\r\n}\r\n.page-menu ul#primary-nav {\r\n\theight: 1%;\r\n\tfloat: left;\r\n\tlist-style: none;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n}\r\n.page-menu ul#primary-nav li {\r\n\tfloat: left;\r\n}\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a span {\r\n\tdisplay: block;\r\n\tpadding: 0 10px;\r\n\tbackground-repeat: no-repeat;\r\n\tbackground-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\r\n}\r\n.page-menu ul#primary-nav li a {\r\n\tpadding-left: 0;\r\n\tcolor: #000;\r\n\tfont-weight: bold;\r\n\tline-height: 2.15em;\r\n\ttext-decoration: none;\r\n\tmargin-left: 1px;\r\n\tfont-size: 0.85em;\r\n}\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:active {\r\n\tcolor: #000;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover span {\r\n\tcolor: #000;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n\tpadding-top: 6px;\r\n\tpadding-right: 0;\r\n\tpadding-bottom: 5px;\r\n}\r\n.page-menu ul#primary-nav li a.menuparenth,\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n\tbackground-position: 100% -120px;\r\n}\r\n.page-menu ul#primary-nav li a {\r\n\tbackground-position: 100% -80px;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive span,\r\n.page-menu ul#primary-nav li a:hover span,\r\n.page-menu ul#primary-nav li a:focus span,\r\n.page-menu ul#primary-nav li a:active span {\r\n\tbackground-position: 0 -40px;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n\tbackground-position: 0 0;\r\n}\r\n.page-menu ul#primary-nav .sectionheader,\r\n.page-menu ul#primary-nav li a:link.menuactive,\r\n.page-menu ul#primary-nav li a:visited.menuactive {\r\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\r\n\tcursor: text;\r\n}\r\n.page-menu ul#primary-nav li span,\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n/* @ Opera, we need to be explicit again here now... */\r\n\tcursor: pointer;\r\n}\r\n/* Additional IE specific bug fixes... */\r\n* html .page-menu ul#primary-nav {\r\n\tdisplay: inline-block;\r\n}\r\n*:first-child+html .page-menu ul#primary-nav {\r\n\tdisplay: inline-block;\r\n}\r\n/* --------------------  menu dropdow  -------------------------\r\n/* Unless you know what you do, do not touch this */\r\n/* Reset all ROOT menu styles. */\r\nul#primary-nav ul.unli li li a span,\r\nul#primary-nav ul.unli li a span,\r\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\r\n\tfont-weight: normal;\r\n\tbackground-image: none;\r\n\tdisplay: block;\r\n\tpadding-top: 0px;\r\n\tpadding-left: 0px;\r\n\tpadding-right: 0px;\r\n\tpadding-bottom: 0px;\r\n}\r\n#primary-nav {\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n}\r\n#primary-nav ul {\r\n\tlist-style: none;\r\n\tmargin: -6px 0px 0px;\r\n\tpadding: 0px;\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n\twidth: 209px;\r\n}\r\n#primary-nav ul {\r\n\tposition: absolute;\r\n\tz-index: 1001;\r\n\ttop: auto;\r\n\tdisplay: none;\r\n\tpadding-top: 9px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\r\n}\r\n* html #primary-nav ul.unli {\r\n\tpadding-top: 12px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\r\n}\r\n#primary-nav ul.unli ul {\r\n\tmargin-left: -7px;\r\n\tleft: 100%;\r\n\ttop: 3px;\r\n}\r\n* html #primary-nav ul.unli ul {\r\n\tmargin-left: -0px;\r\n}\r\n#primary-nav li {\r\n\tmargin: 0px;\r\n\tfloat: left;\r\n}\r\n#primary-nav li li {\r\n\tmargin-left: 7px;\r\n\tmargin-top: -1px;\r\n\tfloat: none;\r\n\tposition: relative;\r\n}\r\n/* Styling the basic appearance of the menu elements */\r\nul#primary-nav ul hr.menu_separator{\r\n        position: relative;\r\n        visibility: visible;\r\n        display:block;\r\n        width:130px;\r\n       \theight: 1px;\r\n       \tmargin: 2px 30px 2px;\r\n\tpadding: 0em;\r\n\tborder-bottom: 1px solid #ccc;\r\n\tborder-top-width: 0px;\r\n\tborder-right-width: 0px;\r\n\tborder-left-width: 0px;\r\n\tborder-top-style: none;\r\n\tborder-right-style: none;\r\n\tborder-left-style: none;\r\n}\r\n#primary-nav .separator,\r\n#primary-nav .separatorh {\r\n\theight: 9px;\r\n\twidth: 209px;\r\n\tmargin: 0px 0px -8px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\r\n}\r\n* html #primary-nav .separator {\r\n       z-index:-1;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\r\n}\r\n*:first-child+html #primary-nav .separator {\r\n       z-index:-1;\r\n}\r\n#primary-nav ul.unli li a {\r\n\tpadding: 0px 10px;\r\n\twidth: 165px;\r\n\tmargin: 5px;\r\n\tbackground-image: none;\r\n}\r\n* html #primary-nav ul.unli li a {\r\n\tpadding: 0px 10px 0px 5px;\r\n\twidth: 165px;\r\n\tmargin: 5px 0px;\r\n}\r\n#primary-nav li li a:hover {\r\n\tbackground-color: #DBE7F2;\r\n}\r\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li.menuactive li a {\r\n\ttext-decoration: none;\r\n\tbackground: none;\r\n}\r\n#primary-nav ul.unli li.menuparenth,\r\n#primary-nav ul.unli a:hover,\r\n#primary-nav ul.unli a.menuactive {\r\n\tbackground-color: #DBE7F2;\r\n}\r\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav ul.unli li .menuparent:hover,\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\r\n\tbackground-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\r\n\tbackground-position: center right;\r\n\tbackground-repeat: no-repeat;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul,\r\n#primary-nav li.menuparenth ul ul ul {\r\n\tdisplay: none;\r\n}\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul,\r\n#primary-nav ul ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n\tfloat: left;\r\n\tclear: both;\r\n}\r\n#primary-nav li li a {\r\n\theight: 1%;\r\n}\r\n/*************** End Menu *****************/\r\n/* ------------ News Module ------------ */\r\n#news {\r\n\tpadding: 10px;\r\n}\r\n.NewsSummary {\r\n}\r\n.NewsSummaryPostdate,\r\n.NewsSummaryCategory,\r\n.NewsSummaryAuthor {\r\n\tfont-style: italic;\r\n\tfont-size: 0.8em;\r\n}\r\n.NewsSummaryLink {\r\n\tmargin: 2px 0;\r\n}\r\n.NewsSummaryContent {\r\n\tmargin: 10px 0;\r\n}\r\n.NewsSummaryMorelink {\r\n\tmargin: 5px 0 15px;\r\n}\r\n/* ------------ End News Module ------------ */','screen','2009-05-06 14:30:25','2011-10-29 05:32:42'),
  (50,'PopupContent','/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n\ttext-align: left;\r\n\tfont-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n\tfont-size: 75.01%;\r\n\tline-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n\tfont-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don''t want that*/\r\nimg {\r\n\tborder: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n\ttext-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n}\r\na:visited {\r\n\ttext-decoration: underline;\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n\ttext-decoration: none;\r\n\tbackground-color: inherit;\r\n\tcolor: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* default text color for entire site*/\r\n\tcolor: #333;\r\n/* you can set your own image and background color here */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n\tmax-width: 50em;\r\n\tmin-width: 40em;\r\n/* now that width is set this centers wrapper */\r\n\tmargin: 0 auto;\r\n\t/*background-color: #F4F4F4;*/\r\n\tcolor: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\t/* you can set your own image here, will go behind h1 a image */\r\n\t/* background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top; */\r\nbackground: url([[root_url]]/uploads/headerbanner.png) center no-repeat;\r\n\r\n/* border just the bottom */\r\n\tborder-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n/* this will make the \"a\" link a solid shape */\r\n\tdisplay: block;\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n/* this hides the text */\r\n\ttext-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n\ttext-decoration: none;\r\n}\r\ndiv#header h1 {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n\tline-height: 0;\r\n\tfont-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n\tfloat: right;\r\n\tline-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n\tfont-size: 1.5em;\r\n/* keeps the size uniform */\r\n\tmargin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n\tcolor: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n\tpadding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n\tfont-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n\tmargin: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n\tfloat: right;\r\n/* enough width for the search input box */\r\n\twidth: 27em;\r\n\ttext-align: right;\r\n\tpadding: 0.5em 0 0.2em 0;\r\n\tmargin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n\tborder: none;\r\n\theight: 22px;\r\n\twidth: 53px;\r\n\tmargin-left: 5px;\r\n\tpadding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n\tcursor: pointer;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n\tmargin: 1.5em auto 2em 0;\r\n\tpadding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 0%;\r\n/* you can set your own image here */\r\n\tbackground: #FFFFFF url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n\tfloat: right;\r\n\twidth: 90%;\r\n/* and we take this out or it will stop at the bottom  */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n\tfloat: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n\twidth: 26%;\r\n/* FIX IE double margin bug */\r\n\tdisplay: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n\tmargin: 0px 0px 20px;\r\n\tpadding: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n\tpadding: 0 0 0 0;\r\n/* this one is for sidebar with content and no menu */\r\n\t\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n\tmargin: 0em 0 0em 0em;\r\n}\r\ndiv#sidebara {\r\n\tpadding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n\tclear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n\tpadding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n\tpadding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n\tcolor: #595959;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n\tfloat: left;\r\n\twidth: 30%;\r\n\tmargin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n\tfont-size: 0.8em;\r\n/* some air for footer */\r\n\tpadding: 1.5em;\r\n/* centered text */\r\n\ttext-align: center;\r\n\tmargin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n\tcolor: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n\theight: 1px;\r\n\tpadding: 1em;\r\n\tborder-bottom: 1px dotted black;\r\n\tmargin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n\twidth: 70%;\r\n}\r\ndiv.right49 {\r\n\tfloat: right;\r\n\twidth: 29%;\r\n/* set right to keep text on right */\r\n\ttext-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n\tfont-size: 2em;\r\n\tline-height: 1em;\r\n\tmargin: 0;\r\n}\r\ndiv#content h2 {\r\n\tcolor: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n\tfont-size: 1.5em;\r\n\ttext-align: left;\r\n/* some air around the text */\r\n\tpadding-left: 0.5em;\r\n\tpadding-bottom: 1px;\r\n/* set borders around header */\r\n\tborder-bottom: 1px solid #899092;\r\n\tborder-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n\tline-height: 1.5em;\r\n/* and some air under the border */\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.3em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.2em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n\tfont-size: 1em;\r\n/* some air around p elements */\r\n\tmargin: 0 0 1.5em 0;\r\n\tline-height: 1.4em;\r\n\tpadding: 0;\r\n}\r\nblockquote {\r\n\tborder-left: 10px solid #ddd;\r\n\tmargin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n\tfont-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n\tfont-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n\twhite-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n\twhite-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n\twhite-space: -pre-wrap;\r\n/* Opera 7 */\r\n\twhite-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n\tword-wrap: break-word;\r\n\tfont-family: \"Courier New\", Courier, monospace;\r\n\tfont-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n\tborder: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n\tbackground-color: #ddd;\r\n\tmargin: 0 1em 1em 1em;\r\n\tpadding: 0.5em;\r\n\tline-height: 1.5em;\r\n\tfont-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n\tmargin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n\tfont-size: 1.0em;\r\n\tline-height: 1.4em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n\tmargin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2011-11-12 03:34:54','2011-11-23 08:43:34'),
  (52,'PopupContentCss','.memberheader\r\n{\r\nfont-color: #ff0000;\r\n}','','2011-11-12 04:02:37','2011-11-12 04:04:00'),
  (53,'thickbox-css','/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> global settings needed for thickbox <<<-----------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n*{padding: 0; margin: 0;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox specific link and font settings <<<------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n\r\n#TB_window {\r\n    font: 12px Arial, Helvetica, sans-serif;\r\n    color: #333333;\r\n}\r\n\r\n#TB_secondLine {\r\n    font: 10px Arial, Helvetica, sans-serif;\r\n    color:#666666;\r\n}\r\n\r\n#TB_window a:link {color: #666666;}\r\n#TB_window a:visited {color: #666666;}\r\n#TB_window a:hover {color: #000;}\r\n#TB_window a:active {color: #666666;}\r\n#TB_window a:focus{color: #666666;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox settings <<<-----------------------------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_overlay {\r\n    position: fixed;\r\n    z-index:100;\r\n    top: 0px;\r\n    left: 0px;\r\n    height:100%;\r\n    width:100%;\r\n}\r\n\r\n.TB_overlayMacFFBGHack {background: url(macFFBgHack.png) repeat;}\r\n.TB_overlayBG {\r\n    background-color:#000;\r\n    filter:alpha(opacity=75);\r\n    -moz-opacity: 0.75;\r\n    opacity: 0.75;\r\n}\r\n\r\n* html #TB_overlay { /* ie6 hack */\r\n                     position: absolute;\r\n                     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_window {\r\n    position: fixed;\r\n    background: #ffffff;\r\n    z-index: 102;\r\n    color:#000000;\r\n    display:none;\r\n    border: 4px solid #525252;\r\n    text-align:left;\r\n    top:50%;\r\n    left:50%;\r\n}\r\n\r\n* html #TB_window { /* ie6 hack */\r\n                    position: absolute;\r\n                    margin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_window img#TB_Image {\r\n    display:block;\r\n    margin: 15px 0 0 15px;\r\n    border-right: 1px solid #ccc;\r\n    border-bottom: 1px solid #ccc;\r\n    border-top: 1px solid #666;\r\n    border-left: 1px solid #666;\r\n}\r\n\r\n#TB_caption{\r\n    height:25px;\r\n    padding:7px 30px 10px 25px;\r\n    float:left;\r\n}\r\n\r\n#TB_closeWindow{\r\n    height:25px;\r\n    padding:11px 25px 10px 0;\r\n    float:right;\r\n}\r\n\r\n#TB_closeAjaxWindow{\r\n    padding:7px 10px 5px 0;\r\n    margin-bottom:1px;\r\n    text-align:right;\r\n    float:right;\r\n}\r\n\r\n#TB_ajaxWindowTitle{\r\n    float:left;\r\n    padding:7px 0 5px 10px;\r\n    margin-bottom:1px;\r\n}\r\n\r\n#TB_title{\r\n    background-color:#e8e8e8;\r\n    height:27px;\r\n}\r\n\r\n#TB_ajaxContent{\r\n    clear:both;\r\n    padding:2px 15px 15px 15px;\r\n    overflow:auto;\r\n    text-align:left;\r\n    line-height:1.4em;\r\n}\r\n\r\n#TB_ajaxContent.TB_modal{\r\n    padding:15px;\r\n    overflow: hidden;\r\n}\r\n\r\n#TB_ajaxContent p{\r\n    padding:5px 0px 5px 0px;\r\n}\r\n\r\n#TB_load{\r\n    position: fixed;\r\n    display:none;\r\n    height:13px;\r\n    width:208px;\r\n    z-index:103;\r\n    top: 50%;\r\n    left: 50%;\r\n    margin: -6px 0 0 -104px; /* -height/2 0 0 -width/2 */\r\n}\r\n\r\n* html #TB_load { /* ie6 hack */\r\n                  position: absolute;\r\n                  margin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_HideSelect{\r\n    z-index:99;\r\n    position:fixed;\r\n    top: 0;\r\n    left: 0;\r\n    background-color:#fff;\r\n    border:none;\r\n    filter:alpha(\"opacity=0\");\r\n    -moz-opacity: 0;\r\n    opacity: 0%;\r\n    height:100%;\r\n    width:100%;\r\n}\r\n\r\n* html #TB_HideSelect { /* ie6 hack */\r\n                        position: absolute;\r\n                        height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_iframeContent{\r\n    clear:both;\r\n    border:none;\r\n    margin-bottom:-1px;\r\n    margin-top:1px;\r\n    _margin-bottom:1px;\r\n}','screen','2011-11-12 08:40:49','2011-11-14 02:38:57'),
  (54,'roundbox','\r\n\r\n#roundbox\r\n\t{\r\n\tposition: relative;\r\n\tmargin-left: 5px;\r\n\tmargin-right: 5px;\r\n\tmargin-top: 10px;\r\n\tpadding: 10px;\r\n\ttext-align: left;\r\n\t/*width:40%;*/\t\t\t\t/* <-- use this to tie width to viewport size */\r\n\t/*width: 35em;*/\t\t\t\t/* <-- use this for a set width */\r\n\tmin-width:200px;\r\n        width: 240px;\r\n\tbackground-color: #eeeeee;\r\n        height: 110px;\r\n        float: left;\r\n\t}\r\n \t\r\n#roundcontent\r\n\t{\r\n\tpadding: 8px;\r\n\t}\r\n\r\n#roundcontent h1\r\n\t{\r\n\tcolor:#0354c2;\r\n\tfont-weight: bold;\r\n\tfont-size: 1.2em;\r\n\tfont-family: helvetica, geneva, arial, sans-serif;\r\n\t}\r\n\t\t\r\n#roundcontent p\r\n\t{\r\n\tcolor:#3b3b3b;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tfont-family: arial, helvetica, sans-serif;\r\n\t}\r\n\t\t\r\n/* ---=== border code follows ===--- */\r\n/*\r\n\ttlc = top left corner\r\n\ttrc = top right corner\r\n\tblc = bottom left corner\r\n\tbrc = bottom right corner\r\n\tlb = left border\r\n\trb = right border\r\n\ttb = top border\r\n\tbb = bottom border \r\n*/\r\n\r\n#tlc, #trc, #blc, #brc\r\n\t{\r\n\tbackground-color: transparent;\r\n\tbackground-repeat: no-repeat;\r\n\t}\r\n\r\n#tlc\r\n\t{\r\n\tbackground-image:url(uploads/rounded/tlc.gif);\r\n\tbackground-position: 0% 0%;\r\n\t}\r\n\r\n#trc\r\n\t{\r\n\tbackground-image:url(uploads/rounded/trc.gif);\r\n\tbackground-position: 100% 0%;\r\n\t}\r\n\t\r\n#blc\r\n\t{\r\n\tbackground-image:url(uploads/rounded/blc.gif);\r\n\tbackground-position: 0% 100%;\r\n\t}\r\n\r\n#brc\r\n\t{\r\n\tbackground-image:url(uploads/rounded/brc.gif);\r\n\tbackground-position: 100% 100%;\r\n\t}\r\n\r\n#tb, #bb\r\n\t{\r\n\tbackground-color: transparent;\r\n\tbackground-repeat: repeat-x;\r\n\t}\r\n\t\t\t\r\n#tb\r\n\t{\r\n\tbackground-image:url(uploads/rounded/tb.gif);\r\n\tbackground-position: 0% 0%;\r\n\t}\r\n\r\n#bb\r\n\t{\r\n\tbackground-image:url(uploads/rounded/bb.gif);\r\n\tbackground-position: 50% 100%;\r\n\t}\r\n\t\r\n#rb\r\n\t{\r\n\tbackground-image:url(uploads/rounded/r.gif);\r\n\tbackground-position: 100% 0%;\r\n\tbackground-repeat: repeat-y;\r\n\t}\r\n\r\n#lb\r\n\t{\r\n\tbackground-image:url(uploads/rounded/l.gif);\r\n\tbackground-position: 0% 100%;\r\n\tbackground-repeat: repeat-y;\r\n\t}\r\n\t\t\t','screen','2011-11-17 08:46:58','2011-11-17 09:56:31');
COMMIT;

#
# Data for the `cms_css_assoc` table  (LIMIT 0,500)
#

INSERT INTO `cms_css_assoc` (`assoc_to_id`, `assoc_css_id`, `assoc_type`, `create_date`, `modified_date`, `assoc_order`) VALUES 
  (17,41,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',4),
  (16,39,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',1),
  (18,31,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',4),
  (18,35,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',5),
  (18,30,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',6),
  (18,38,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',2),
  (18,42,'template','2009-04-30 17:44:09','2009-04-30 17:44:09',3),
  (18,39,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',1),
  (16,31,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',4),
  (16,34,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',2),
  (16,35,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',3),
  (16,30,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',5),
  (15,31,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',3),
  (15,33,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',2),
  (15,32,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',1),
  (15,30,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',4),
  (15,35,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',5),
  (17,32,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',1),
  (17,35,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',3),
  (17,30,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',5),
  (17,42,'template','2009-04-30 01:10:05','2009-04-30 01:10:05',2),
  (17,31,'template','2006-07-25 21:22:32','2006-07-25 21:22:32',6),
  (20,39,'template','2009-05-01 04:30:42','2009-05-01 04:30:42',1),
  (20,31,'template','2009-05-01 04:30:42','2009-05-01 04:30:42',4),
  (20,43,'template','2009-05-01 04:33:01','2009-05-01 04:33:01',2),
  (20,35,'template','2009-05-01 04:30:42','2009-05-01 04:30:42',3),
  (20,30,'template','2009-05-01 04:30:42','2009-05-01 04:30:42',5),
  (21,31,'template','2009-05-01 23:17:51','2009-05-01 23:17:51',3),
  (21,45,'template','2009-05-02 00:20:26','2009-05-02 00:20:26',2),
  (21,32,'template','2009-05-01 23:17:51','2009-05-01 23:17:51',1),
  (21,30,'template','2009-05-01 23:17:51','2009-05-01 23:17:51',4),
  (21,35,'template','2009-05-01 23:17:51','2009-05-01 23:17:51',5),
  (15,46,'template','2009-05-02 15:05:19','2009-05-02 15:05:19',6),
  (21,46,'template','2009-05-02 15:05:22','2009-05-02 15:05:22',6),
  (16,46,'template','2009-05-02 15:05:24','2009-05-02 15:05:24',6),
  (20,46,'template','2009-05-02 15:05:27','2009-05-02 15:05:27',6),
  (17,46,'template','2009-05-02 15:05:29','2009-05-02 15:05:29',7),
  (22,48,'template','2009-05-06 14:31:08','2009-05-06 14:31:08',1),
  (18,46,'template','2009-05-02 15:05:34','2009-05-02 15:05:34',7),
  (22,47,'template','2009-05-06 14:31:14','2009-05-06 14:31:14',2),
  (22,49,'template','2009-05-06 14:31:20','2009-05-06 14:31:20',3),
  (23,52,'template','2011-11-12 04:02:48','2011-11-12 04:02:48',4),
  (23,31,'template','2011-11-12 02:57:03','2011-11-12 02:57:03',2),
  (23,30,'template','2011-11-12 02:57:03','2011-11-12 02:57:03',3),
  (23,50,'template','2011-11-12 03:35:10','2011-11-12 03:35:10',1),
  (23,53,'template','2011-11-12 08:41:00','2011-11-12 08:41:00',5),
  (16,53,'template','2011-11-14 02:38:49','2011-11-14 02:38:49',7),
  (16,54,'template','2011-11-17 08:49:23','2011-11-17 08:49:23',8);
COMMIT;

#
# Data for the `cms_css_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_css_seq` (`id`) VALUES 
  (54);
COMMIT;

#
# Data for the `cms_event_handler_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_event_handler_seq` (`id`) VALUES 
  (21);
COMMIT;

#
# Data for the `cms_event_handlers` table  (LIMIT 0,500)
#

INSERT INTO `cms_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES 
  (38,NULL,'MenuManager',0,1,1),
  (40,NULL,'MenuManager',0,1,2),
  (38,NULL,'Search',0,2,3),
  (40,NULL,'Search',0,2,4),
  (22,NULL,'Search',0,1,5),
  (24,NULL,'Search',0,1,6),
  (26,NULL,'Search',0,1,7),
  (30,NULL,'Search',0,1,8),
  (32,NULL,'Search',0,1,9),
  (34,NULL,'Search',0,1,10),
  (48,NULL,'Search',0,1,11),
  (53,NULL,'Gallery',0,1,12),
  (53,NULL,'AdvancedContent',0,3,14),
  (38,NULL,'AdvancedContent',0,3,15),
  (53,NULL,'CGExtensions',0,4,16),
  (53,NULL,'Uploads',1,5,17),
  (53,NULL,'FrontEndUsers',0,6,18),
  (53,NULL,'Showtime',0,7,19),
  (47,NULL,'SelfRegistration',0,1,20),
  (48,NULL,'SelfRegistration',0,2,21);
COMMIT;

#
# Data for the `cms_events` table  (LIMIT 0,500)
#

INSERT INTO `cms_events` (`originator`, `event_name`, `event_id`) VALUES 
  ('Core','LoginPost',1),
  ('Core','LogoutPost',2),
  ('Core','AddUserPre',3),
  ('Core','AddUserPost',4),
  ('Core','EditUserPre',5),
  ('Core','EditUserPost',6),
  ('Core','DeleteUserPre',7),
  ('Core','DeleteUserPost',8),
  ('Core','AddGroupPre',9),
  ('Core','AddGroupPost',10),
  ('Core','EditGroupPre',11),
  ('Core','EditGroupPost',12),
  ('Core','DeleteGroupPre',13),
  ('Core','DeleteGroupPost',14),
  ('Core','AddStylesheetPre',15),
  ('Core','AddStylesheetPost',16),
  ('Core','EditStylesheetPre',17),
  ('Core','EditStylesheetPost',18),
  ('Core','DeleteStylesheetPre',19),
  ('Core','DeleteStylesheetPost',20),
  ('Core','AddTemplatePre',21),
  ('Core','AddTemplatePost',22),
  ('Core','EditTemplatePre',23),
  ('Core','EditTemplatePost',24),
  ('Core','DeleteTemplatePre',25),
  ('Core','DeleteTemplatePost',26),
  ('Core','TemplatePreCompile',27),
  ('Core','TemplatePostCompile',28),
  ('Core','AddGlobalContentPre',29),
  ('Core','AddGlobalContentPost',30),
  ('Core','EditGlobalContentPre',31),
  ('Core','EditGlobalContentPost',32),
  ('Core','DeleteGlobalContentPre',33),
  ('Core','DeleteGlobalContentPost',34),
  ('Core','GlobalContentPreCompile',35),
  ('Core','GlobalContentPostCompile',36),
  ('Core','ContentEditPre',37),
  ('Core','ContentEditPost',38),
  ('Core','ContentDeletePre',39),
  ('Core','ContentDeletePost',40),
  ('Core','AddUserDefinedTagPre',41),
  ('Core','AddUserDefinedTagPost',42),
  ('Core','EditUserDefinedTagPre',43),
  ('Core','EditUserDefinedTagPost',44),
  ('Core','DeleteUserDefinedTagPre',45),
  ('Core','DeleteUserDefinedTagPost',46),
  ('Core','ModuleInstalled',47),
  ('Core','ModuleUninstalled',48),
  ('Core','ModuleUpgraded',49),
  ('Core','ContentStylesheet',50),
  ('Core','ContentPreCompile',51),
  ('Core','ContentPostCompile',52),
  ('Core','ContentPostRender',53),
  ('Core','SmartyPreCompile',54),
  ('Core','SmartyPostCompile',55),
  ('Core','ChangeGroupAssignPre',56),
  ('Core','ChangeGroupAssignPost',57),
  ('Core','StylesheetPreCompile',58),
  ('Core','StylesheetPostCompile',59),
  ('Core','LoginFailed',60),
  ('News','NewsArticleAdded',61),
  ('News','NewsArticleEdited',62),
  ('News','NewsArticleDeleted',63),
  ('News','NewsCategoryAdded',64),
  ('News','NewsCategoryEdited',65),
  ('News','NewsCategoryDeleted',66),
  ('Search','SearchInitiated',67),
  ('Search','SearchCompleted',68),
  ('Search','SearchItemAdded',69),
  ('Search','SearchItemDeleted',70),
  ('Search','SearchAllItemsDeleted',71),
  ('Uploads','OnUpload',72),
  ('Uploads','OnRemove',73),
  ('Uploads','OnDownload',74),
  ('Uploads','OnCreateCategory',75),
  ('Uploads','OnDeleteCategory',76),
  ('FrontEndUsers','OnLogin',77),
  ('FrontEndUsers','OnLogout',78),
  ('FrontEndUsers','OnExpireUser',79),
  ('FrontEndUsers','OnCreateUser',80),
  ('FrontEndUsers','OnDeleteUser',81),
  ('FrontEndUsers','OnUpdateUser',82),
  ('FrontEndUsers','OnCreateGroup',83),
  ('FrontEndUsers','OnUpdateGroup',84),
  ('FrontEndUsers','OnDeleteGroup',85),
  ('FrontEndUsers',' OnRefreshUser',86),
  ('Showtime','OnShowtimePreferenceChange',87),
  ('Cron','CronHourly',88),
  ('Cron','CronDaily',89),
  ('Cron','CronWeekly',90),
  ('Cron','CronMonthly',91),
  ('Cron','CronYearly',92),
  ('SelfRegistration','onNewUser',93),
  ('SelfRegistration','onUserRegistered',94);
COMMIT;

#
# Data for the `cms_events_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_events_seq` (`id`) VALUES 
  (94);
COMMIT;

#
# Data for the `cms_group_perms` table  (LIMIT 0,500)
#

INSERT INTO `cms_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES 
  (176,3,30,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (177,3,25,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (178,3,4,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (179,3,31,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (180,3,26,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (181,3,22,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (182,3,11,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (183,3,32,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (184,3,27,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (185,3,24,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (186,3,16,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (187,2,44,'2009-05-12 08:05:26','2009-05-12 08:05:26'),
  (188,1,50,'2011-10-29 02:15:15','2011-10-29 02:15:15'),
  (189,2,50,'2011-10-29 02:15:15','2011-10-29 02:15:15'),
  (190,1,59,'2011-11-14 02:04:03','2011-11-14 02:04:03'),
  (191,2,59,'2011-11-14 02:04:03','2011-11-14 02:04:03');
COMMIT;

#
# Data for the `cms_group_perms_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_group_perms_seq` (`id`) VALUES 
  (191);
COMMIT;

#
# Data for the `cms_groups` table  (LIMIT 0,500)
#

INSERT INTO `cms_groups` (`group_id`, `group_name`, `active`, `create_date`, `modified_date`) VALUES 
  (1,'Admin',1,'2006-07-25 21:22:32','2006-07-25 21:22:32'),
  (2,'Editor',1,'2006-07-25 21:22:32','2006-07-25 21:22:32'),
  (3,'Designer',1,'2006-07-25 21:22:32','2006-07-25 21:22:32');
COMMIT;

#
# Data for the `cms_groups_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_groups_seq` (`id`) VALUES 
  (3);
COMMIT;

#
# Data for the `cms_htmlblobs` table  (LIMIT 0,500)
#

INSERT INTO `cms_htmlblobs` (`htmlblob_id`, `htmlblob_name`, `html`, `description`, `use_wysiwyg`, `owner`, `create_date`, `modified_date`) VALUES 
  (1,'footer','<p>Powered by: dOOKIe cORP@2011</p>','',0,1,'2006-07-25 21:22:32','2011-10-29 02:30:29');
COMMIT;

#
# Data for the `cms_htmlblobs_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_htmlblobs_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_acomments_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_acomments_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_module_advancedcontent_blockdisplay` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_advancedcontent_blockdisplay` (`user_id`, `content_id`, `template_id`, `item_id`, `item_display`) VALUES 
  (1,-1,16,'content_en',1),
  (1,-1,16,'Sidebar',0),
  (1,79,16,'content_en',1),
  (1,81,16,'content_en',1),
  (1,82,16,'content_en',1),
  (1,82,16,'Sidebar',1);
COMMIT;

#
# Data for the `cms_module_advancedcontent_multi_input_tpl_assocs` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_advancedcontent_multi_input_tpl_assocs` (`input_id`, `tpl_name`) VALUES 
  ('SampleInput','multi_input_SampleTemplate'),
  ('SampleInput','multi_input_SampleTemplate');
COMMIT;

#
# Data for the `cms_module_advancedcontent_multi_inputs` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_advancedcontent_multi_inputs` (`input_id`, `input_fields`) VALUES 
  ('SampleInput','\n{content block=\"module_select\" label=\"Select a module\" block_type=\"dropdown\" items=\"|News|Menu\" values=\"|News|MenuManager\"}\n{content block=\"module_params\" label=\"Enter module parameters here\" block_type=\"text\" oneline=true size=\"56\"}');
COMMIT;

#
# Data for the `cms_module_album_albums` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_album_albums` (`album_id`, `album_name`, `album_number`, `thumbnail_path`, `comment`, `column_number`, `row_number`, `template`) VALUES 
  (1,'test',1,'/Gallery/anime/thumb_1024_FF_542.jpg',NULL,5,0,'default');
COMMIT;

#
# Data for the `cms_module_album_albums_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_album_albums_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_album_categories_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_album_categories_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_module_album_category_listings_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_album_category_listings_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_module_album_pictures` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_album_pictures` (`picture_id`, `picture_name`, `picture_album_id`, `picture_number`, `thumbnail_path`, `picture_path`, `comment`, `comment2`, `comment3`, `thumbnail_width`, `thumbnail_height`) VALUES 
  (1,'1024_FF_542.jpg',1,1,'/Gallery/anime/thumb_1024_FF_542.jpg','/Gallery/anime/1024_FF_542.jpg',NULL,NULL,NULL,'96','72'),
  (2,'1024_t_variant.jpg',1,2,'/Gallery/anime/thumb_1024_t_variant.jpg','/Gallery/anime/1024_t_variant.jpg',NULL,NULL,NULL,'96','72'),
  (3,'AMSM520_1280.jpg',1,3,'/Gallery/anime/thumb_AMSM520_1280.jpg','/Gallery/anime/AMSM520_1280.jpg',NULL,NULL,NULL,'96','72'),
  (4,'amz_sm_528_1280.jpg',1,4,'/Gallery/anime/thumb_amz_sm_528_1280.jpg','/Gallery/anime/amz_sm_528_1280.jpg',NULL,NULL,NULL,'96','72');
COMMIT;

#
# Data for the `cms_module_album_pictures_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_album_pictures_seq` (`id`) VALUES 
  (4);
COMMIT;

#
# Data for the `cms_module_attach_attachments` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_attach_attachments` (`attachid`, `name`, `sourcetype`, `sourceid`, `desttype`, `destid`) VALUES 
  (1,'xxxx',1,58,3,'/CGFeedback-1.5.4.tar.gz');
COMMIT;

#
# Data for the `cms_module_attach_attachments_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_attach_attachments_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_attach_restypes` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_attach_restypes` (`typeid`, `typename`, `destonly`, `active`, `iscore`, `type_retrievecombo`, `type_retrieveitem`, `type_activecheck`) VALUES 
  (1,'Content Page',0,1,1,'','$manager =& $gCms->GetHierarchyManager();\n$node =& $manager->sureGetNodeById($item->destid);\nif(!isset($node))\treturn false;\n$content =& $node->GetContent();\n$item->ressource_name = $content->Name();\n$item->ressource_url = $content->getURL();','$result=true;'),
  (2,'URL',1,1,1,'','$item->ressource_name = $item->name;\n$item->ressource_url = $item->destid;','$result=true;'),
  (3,'File',1,1,1,'','$item->ressource_name = $item->name;\n$item->ressource_url = $gCms->config[\"uploads_url\"].str_replace(\"//\",\"/\",\"/attachments/\".$item->destid);\n$info = $this->plGetFileInfo($gCms->config[\"uploads_path\"].\"/attachments/\".$item->destid);\nif($info){\n\tforeach($info as $key=>$value)\t$item->$key = $value;\n}','$result=true;'),
  (4,'News-article',0,0,0,'$query = \"SELECT news_id, news_title FROM \".cms_db_prefix().\"module_news\";\n$dbresult =& $db->Execute($query);\nwhile ($dbresult && $row = $dbresult->FetchRow()){\n\t$options[$row[\"news_id\"]] = $row[\"news_title\"];\n}','$newsmodule = $this->GetModuleInstance(\"News\");\nif(!$newsmodule) return false;\n\n$query = \"SELECT news_title FROM \".cms_db_prefix().\"module_news WHERE news_id=?\";\n$dbresult = $db->Execute($query,array($item->destid));\nif($dbresult && $row = $dbresult->FetchRow()){\n\t$item->ressource_name = $row[\"news_title\"];\n}else{\n\treturn false;\n}\n\n$prettyurl = \"news/\" . $item->destid.\"/\".$returnid.\"/\".munge_string_to_url($item->ressource_name);\n$item->ressource_url = $newsmodule->CreateLink($id,\"detail\",$returnid,\"\",array(\"articleid\"=>$item->destid),\"\",true, false, \"\", true, $prettyurl);','if(!isset($gCms->modules[\"News\"]) || !$gCms->modules[\"News\"][\"active\"]){\n\t$result = false;\n}else{\n\t$result = true;\n}'),
  (5,'ShopMadeSimple-Product',0,0,0,'$dbresult = $db->Execute(\"SELECT product_id, name FROM \".cms_db_prefix().\"module_sms_products\");\nwhile ($dbresult && $row = $dbresult->FetchRow()){\n\t$options[$row[\"product_id\"]] = $row[\"name\"];\n}','$smsmodule = $this->GetModuleInstance(\"ShopMadeSimple\");\n\nif(!$smsmodule) return false;\n$dbresult = $db->Execute(\"SELECT name FROM \".cms_db_prefix().\"module_sms_products WHERE product_id=?\",array($item->destid));\nif($dbresult && $row = $dbresult->FetchRow()){\n\t$item->ressource_name = $row[\"name\"];\n\t$item->ressource_url = $smsmodule->CreateLink($id, \"fe_product_detail\", $returnid, $row[\"name\"], array(\"product_id\"=>$item->destid), \"\", true);\n}','return (isset($gCms->modules[\"ShopMadeSimple\"]) && $gCms->modules[\"ShopMadeSimple\"][\"active\"]);'),
  (6,'Album',0,0,0,'$dbresult = $db->Execute(\"SELECT album_id, album_name FROM \".cms_db_prefix().\"module_album_albums\");\nwhile ($dbresult && $row = $dbresult->FetchRow()){\n\t$options[$row[\"album_id\"]] = $row[\"album_name\"];\n}','$module = $this->GetModuleInstance(\"Album\");\nif(!$module) return false;\n$dbresult = $db->Execute(\"SELECT album_name FROM \".cms_db_prefix().\"module_album_albums WHERE album_id=?\",array($item->destid));\nif($dbresult && $row = $dbresult->FetchRow()){\n\t$item->ressource_name = $row[\"album_name\"];\n\t$pretty_url = false;\n\tif(FALSE){\t// SET THIS TO TRUE TO ENABLE PRETTY URLS\n\t\t$q = \"SELECT hierarchy_path FROM \".cms_db_prefix().\"content WHERE content_id=''\".$returnid.\"''\";\n\t\t$dbresult = $db->Execute( $q );\n\t\tif($dbresult && $call_page = $dbresult->FetchRow()){\n\t\t\t$pretty_url = $call_page[\"hierarchy_path\"].\"/album-\".$this->albums[$i]->id.\"/\".$returnid;\n\t\t}\n\t}\n\t$item->ressource_url = $module->CreateLink($id, \"default\", $returnid, $row[\"album_name\"], array(\"albumid\"=>$item->destid), \"\", true, false, \"\", false, $pretty_url);\n}','return (isset($gCms->modules[\"Album\"]) && $gCms->modules[\"Album\"][\"active\"]);');
COMMIT;

#
# Data for the `cms_module_attach_restypes_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_attach_restypes_seq` (`id`) VALUES 
  (6);
COMMIT;

#
# Data for the `cms_module_cge_countries` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cge_countries` (`id`, `code`, `name`, `sorting`) VALUES 
  (1,'AF','Afghanistan',0),
  (2,'AL','Albania',0),
  (3,'DZ','Algeria',0),
  (4,'AS','American Samoa',0),
  (5,'AD','Andorra',0),
  (6,'AO','Angola',0),
  (7,'AI','Anguilla',0),
  (8,'AQ','Antarctica',0),
  (9,'AG','Antigua And Barbuda',0),
  (10,'AR','Argentina',0),
  (11,'AM','Armenia',0),
  (12,'AW','Aruba',0),
  (13,'AU','Australia',0),
  (14,'AT','Austria',0),
  (15,'AZ','Azerbaijan',0),
  (16,'BS','Bahamas',0),
  (17,'BH','Bahrain',0),
  (18,'BD','Bangladesh',0),
  (19,'BB','Barbados',0),
  (20,'BY','Belarus',0),
  (21,'BE','Belgium',0),
  (22,'BZ','Belize',0),
  (23,'BJ','Benin',0),
  (24,'BM','Bermuda',0),
  (25,'BT','Bhutan',0),
  (26,'BO','Bolivia',0),
  (27,'BA','Bosnia And Herzegowina',0),
  (28,'BW','Botswana',0),
  (29,'BV','Bouvet Island',0),
  (30,'BR','Brazil',0),
  (31,'IO','British Indian Ocean Territory',0),
  (32,'BN','Brunei Darussalam',0),
  (33,'BG','Bulgaria',0),
  (34,'BF','Burkina Faso',0),
  (35,'BI','Burundi',0),
  (36,'KH','Cambodia',0),
  (37,'CM','Cameroon',0),
  (38,'CA','Canada',0),
  (39,'CV','Cape Verde',0),
  (40,'KY','Cayman Islands',0),
  (41,'CF','Central African Republic',0),
  (42,'TD','Chad',0),
  (43,'CL','Chile',0),
  (44,'CN','China',0),
  (45,'CX','Christmas Island',0),
  (46,'CC','Cocos (Keeling) Islands',0),
  (47,'CO','Colombia',0),
  (48,'KM','Comoros',0),
  (49,'CG','Congo',0),
  (50,'CK','Cook Islands',0),
  (51,'CR','Costa Rica',0),
  (52,'CI','Cote D''Ivoire',0),
  (53,'HR','Croatia (Local Name: Hrvatska)',0),
  (54,'CU','Cuba',0),
  (55,'CY','Cyprus',0),
  (56,'CZ','Czech Republic',0),
  (57,'DK','Denmark',0),
  (58,'DJ','Djibouti',0),
  (59,'DM','Dominica',0),
  (60,'DO','Dominican Republic',0),
  (61,'TP','East Timor',0),
  (62,'EC','Ecuador',0),
  (63,'EG','Egypt',0),
  (64,'SV','El Salvador',0),
  (65,'GQ','Equatorial Guinea',0),
  (66,'ER','Eritrea',0),
  (67,'EE','Estonia',0),
  (68,'ET','Ethiopia',0),
  (69,'FK','Falkland Islands (Malvinas)',0),
  (70,'FO','Faroe Islands',0),
  (71,'FJ','Fiji',0),
  (72,'FI','Finland',0),
  (73,'FR','France',0),
  (74,'GF','French Guiana',0),
  (75,'PF','French Polynesia',0),
  (76,'TF','French Southern Territories',0),
  (77,'GA','Gabon',0),
  (78,'GM','Gambia',0),
  (79,'GE','Georgia',0),
  (80,'DE','Germany',0),
  (81,'GH','Ghana',0),
  (82,'GI','Gibraltar',0),
  (83,'GR','Greece',0),
  (84,'GL','Greenland',0),
  (85,'GD','Grenada',0),
  (86,'GP','Guadeloupe',0),
  (87,'GU','Guam',0),
  (88,'GT','Guatemala',0),
  (89,'GN','Guinea',0),
  (90,'GW','Guinea-Bissau',0),
  (91,'GY','Guyana',0),
  (92,'HT','Haiti',0),
  (93,'HM','Heard And Mc Donald Islands',0),
  (94,'VA','Holy See (Vatican City State)',0),
  (95,'HN','Honduras',0),
  (96,'HK','Hong Kong',0),
  (97,'HU','Hungary',0),
  (98,'IS','Icel And',0),
  (99,'IN','India',0),
  (100,'ID','Indonesia',0),
  (101,'IR','Iran (Islamic Republic Of)',0),
  (102,'IQ','Iraq',0),
  (103,'IE','Ireland',0),
  (104,'IL','Israel',0),
  (105,'IT','Italy',0),
  (106,'JM','Jamaica',0),
  (107,'JP','Japan',0),
  (108,'JO','Jordan',0),
  (109,'KZ','Kazakhstan',0),
  (110,'KE','Kenya',0),
  (111,'KI','Kiribati',0),
  (112,'KP','Korea',0),
  (113,'KR','Korea',0),
  (114,'KW','Kuwait',0),
  (115,'KG','Kyrgyzstan',0),
  (116,'LA','Lao People''S Dem Republic',0),
  (117,'LV','Latvia',0),
  (118,'LB','Lebanon',0),
  (119,'LS','Lesotho',0),
  (120,'LR','Liberia',0),
  (121,'LY','Libyan Arab Jamahiriya',0),
  (122,'LI','Liechtenstein',0),
  (123,'LT','Lithuania',0),
  (124,'LU','Luxembourg',0),
  (125,'MO','Macau',0),
  (126,'MK','Macedonia',0),
  (127,'MG','Madagascar',0),
  (128,'MW','Malawi',0),
  (129,'MY','Malaysia',0),
  (130,'MV','Maldives',0),
  (131,'ML','Mali',0),
  (132,'MT','Malta',0),
  (133,'MH','Marshall Islands',0),
  (134,'MQ','Martinique',0),
  (135,'MR','Mauritania',0),
  (136,'MU','Mauritius',0),
  (137,'YT','Mayotte',0),
  (138,'MX','Mexico',0),
  (139,'FM','Micronesia',0),
  (140,'MD','Moldova',0),
  (141,'MC','Monaco',0),
  (142,'MN','Mongolia',0),
  (143,'MS','Montserrat',0),
  (144,'MA','Morocco',0),
  (145,'MZ','Mozambique',0),
  (146,'MM','Myanmar',0),
  (147,'NA','Namibia',0),
  (148,'NR','Nauru',0),
  (149,'NP','Nepal',0),
  (150,'NL','Netherlands',0),
  (151,'AN','Netherlands Ant Illes',0),
  (152,'NC','New Caledonia',0),
  (153,'NZ','New Zealand',0),
  (154,'NI','Nicaragua',0),
  (155,'NE','Niger',0),
  (156,'NG','Nigeria',0),
  (157,'NU','Niue',0),
  (158,'NF','Norfolk Island',0),
  (159,'MP','Northern Mariana Islands',0),
  (160,'NO','Norway',0),
  (161,'OM','Oman',0),
  (162,'PK','Pakistan',0),
  (163,'PW','Palau',0),
  (164,'PA','Panama',0),
  (165,'PG','Papua New Guinea',0),
  (166,'PY','Paraguay',0),
  (167,'PE','Peru',0),
  (168,'PH','Philippines',0),
  (169,'PN','Pitcairn',0),
  (170,'PL','Poland',0),
  (171,'PT','Portugal',0),
  (172,'PR','Puerto Rico',0),
  (173,'QA','Qatar',0),
  (174,'RE','Reunion',0),
  (175,'RO','Romania',0),
  (176,'RU','Russian Federation',0),
  (177,'RW','Rwanda',0),
  (178,'KN','Saint K Itts And Nevis',0),
  (179,'LC','Saint Lucia',0),
  (180,'VC','Saint Vincent',0),
  (181,'WS','Samoa',0),
  (182,'SM','San Marino',0),
  (183,'ST','Sao Tome And Principe',0),
  (184,'SA','Saudi Arabia',0),
  (185,'SN','Senegal',0),
  (186,'SC','Seychelles',0),
  (187,'SL','Sierra Leone',0),
  (188,'SG','Singapore',0),
  (189,'SK','Slovakia (Slovak Republic)',0),
  (190,'SI','Slovenia',0),
  (191,'SB','Solomon Islands',0),
  (192,'SO','Somalia',0),
  (193,'ZA','South Africa',0),
  (194,'GS','South Georgia',0),
  (195,'ES','Spain',0),
  (196,'LK','Sri Lanka',0),
  (197,'SH','St. Helena',0),
  (198,'PM','St. Pierre And Miquelon',0),
  (199,'SD','Sudan',0),
  (200,'SR','Suriname',0),
  (201,'SJ','Svalbard',0),
  (202,'SZ','Sw Aziland',0),
  (203,'SE','Sweden',0),
  (204,'CH','Switzerland',0),
  (205,'SY','Syrian Arab Republic',0),
  (206,'TW','Taiwan',0),
  (207,'TJ','Tajikistan',0),
  (208,'TZ','Tanzania',0),
  (209,'TH','Thailand',0),
  (210,'TG','Togo',0),
  (211,'TK','Tokelau',0),
  (212,'TO','Tonga',0),
  (213,'TT','Trinidad And Tobago',0),
  (214,'TN','Tunisia',0),
  (215,'TR','Turkey',0),
  (216,'TM','Turkmenistan',0),
  (217,'TC','Turks And Caicos Islands',0),
  (218,'TV','Tuvalu',0),
  (219,'UG','Uganda',0),
  (220,'UA','Ukraine',0),
  (221,'AE','United Arab Emirates',0),
  (222,'GB','United Kingdom',0),
  (223,'US','United States',0),
  (224,'UM','United States Minor Is.',0),
  (225,'UY','Uruguay',0),
  (226,'UZ','Uzbekistan',0),
  (227,'VU','Vanuatu',0),
  (228,'VE','Venezuela',0),
  (229,'VN','Viet Nam',0),
  (230,'VG','Virgin Islands (British)',0),
  (231,'VI','Virgin Islands (U.S.)',0),
  (232,'WF','Wallis And Futuna Islands',0),
  (233,'EH','Western Sahara',0),
  (234,'YE','Yemen',0),
  (235,'YU','Yugoslavia',0),
  (236,'ZR','Zaire',0),
  (237,'ZM','Zambia',0),
  (238,'ZW','Zimbabwe',0);
COMMIT;

#
# Data for the `cms_module_cge_states` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cge_states` (`id`, `code`, `name`, `sorting`) VALUES 
  (1,'AL','Alabama',0),
  (2,'AK','Alaska',0),
  (3,'AS','American Samoa',0),
  (4,'AZ','Arizona',0),
  (5,'AR','Arkansas',0),
  (6,'CA','California',0),
  (7,'CO','Colorado',0),
  (8,'CT','Connecticut',0),
  (9,'DE','Delaware',0),
  (10,'DC','District of Columbia',0),
  (11,'FM','Fed. States of Micronesia',0),
  (12,'FL','Florida',0),
  (13,'GA','Georgia',0),
  (14,'GU','Guam',0),
  (15,'HI','Hawaii',0),
  (16,'ID','Idaho',0),
  (17,'IL','Illinois',0),
  (18,'IN','Indiana',0),
  (19,'IA','Iowa',0),
  (20,'KS','Kansas',0),
  (21,'KY','Kentucky',0),
  (22,'LA','Louisiana',0),
  (23,'ME','Maine',0),
  (24,'MH','Marshall Islands',0),
  (25,'MD','Maryland',0),
  (26,'MA','Massachusetts',0),
  (27,'MI','Michigan',0),
  (28,'MN','Minnesota',0),
  (29,'MS','Mississippi',0),
  (30,'MO','Missouri',0),
  (31,'MT','Montana',0),
  (32,'NE','Nebraska',0),
  (33,'NV','Nevada',0),
  (34,'NH','New Hampshire',0),
  (35,'NJ','New Jersey',0),
  (36,'NM','New Mexico',0),
  (37,'NY','New York',0),
  (38,'NC','North Carolina',0),
  (39,'ND','North Dakota',0),
  (40,'MP','Northern Mariana Is.',0),
  (41,'OH','Ohio',0),
  (42,'OK','Oklahoma',0),
  (43,'OR','Oregon',0),
  (44,'PW','Palau',0),
  (45,'PA','Pennsylvania',0),
  (46,'PR','Puerto Rico',0),
  (47,'RI','Rhode Island',0),
  (48,'SC','South Carolina',0),
  (49,'SD','South Dakota',0),
  (50,'TN','Tennessee',0),
  (51,'TX','Texas',0),
  (52,'UT','Utah',0),
  (53,'VT','Vermont',0),
  (54,'VA','Virginia',0),
  (55,'VI','Virgin Islands',0),
  (56,'WA','Washington',0),
  (57,'WV','West Virginia',0),
  (58,'WI','Wisconsin',0),
  (59,'WY','Wyoming',0),
  (60,'AB','Alberta',0),
  (61,'BC','British Columbia',0),
  (62,'MB','Manitoba',0),
  (63,'NB','New Brunswick',0),
  (64,'NF','Newfoundland',0),
  (65,'NT','Northwest Territories',0),
  (66,'NS','Nova Scotia',0),
  (67,'ON','Ontario',0),
  (68,'PE','Prince Edward Island',0),
  (69,'QC','Quebec',0),
  (70,'SK','Saskatchewan',0),
  (71,'YT','Yukon',0);
COMMIT;

#
# Data for the `cms_module_cgfeedback_comments` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cgfeedback_comments` (`id`, `key1`, `key2`, `key3`, `rating`, `title`, `data`, `status`, `author_name`, `author_email`, `author_ip`, `author_notify`, `admin_notes`, `notified`, `origurl`, `created`, `modified`) VALUES 
  (12,'__page__','83','',1,'aa','aa','published','aa','aa','127.0.0.1',NULL,NULL,1,'http://localhost:8888/cmsdepdagri/Source/simple/index.php?page=newcomment&amp;random=1322040367912','2011-11-23 09:26:12','2011-11-23 09:26:12');
COMMIT;

#
# Data for the `cms_module_cmsusers_grouppermissions` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cmsusers_grouppermissions` (`id`, `group_id`, `permission_id`, `created_at`, `updated_at`) VALUES 
  (1,1,1,'2011-11-12 13:54:18','2011-11-12 13:54:18');
COMMIT;

#
# Data for the `cms_module_cmsusers_groups` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cmsusers_groups` (`id`, `name`, `type`, `is_active`, `created_at`, `updated_at`, `comments`) VALUES 
  (1,'CMSUsers','private',1,'2011-11-12 13:54:05','2011-11-12 13:54:05',NULL);
COMMIT;

#
# Data for the `cms_module_cmsusers_permissions` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cmsusers_permissions` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `comments`) VALUES 
  (1,'Comment',1,'2011-11-12 13:54:18','2011-11-12 13:54:18',NULL);
COMMIT;

#
# Data for the `cms_module_cmsusers_usergroups` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cmsusers_usergroups` (`id`, `group_id`, `user_id`, `created_at`, `updated_at`) VALUES 
  (1,1,1,'2011-11-12 13:54:05','2011-11-12 13:54:05');
COMMIT;

#
# Data for the `cms_module_cmsusers_users` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_cmsusers_users` (`id`, `username`, `algorithm`, `salt`, `password`, `email`, `is_active`, `is_disabled`, `token`, `created_at`, `updated_at`, `last_login`, `comments`) VALUES 
  (1,'dookie','sha1','96b4a2de1bce8529033abf95de2af83a','8cedabaa70c6af30c242b448cf7ec555a5123563','dookie@gmail.com',1,0,NULL,'2011-11-12 13:53:27','2011-11-12 13:53:27',NULL,NULL);
COMMIT;

#
# Data for the `cms_module_deps` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES 
  ('CMSForms','CMSUsers','0.0.24','2011-11-12 13:52:57','2011-11-12 13:52:57'),
  ('CGExtensions','CGFeedback','1.24','2011-11-15 16:23:42','2011-11-15 16:23:42'),
  ('CGSimpleSmarty','CGFeedback','1.4','2011-11-15 16:23:42','2011-11-15 16:23:42'),
  ('CGExtensions','Uploads','1.26','2011-11-16 11:12:46','2011-11-16 11:12:46'),
  ('CMSMailer','FrontEndUsers','1.73.9','2011-11-16 11:32:12','2011-11-16 11:32:12'),
  ('CGExtensions','FrontEndUsers','1.25.2','2011-11-16 11:32:12','2011-11-16 11:32:12'),
  ('CGExtensions','SelfRegistration','1.25.2','2011-11-23 09:42:43','2011-11-23 09:42:43'),
  ('CMSMailer','SelfRegistration','1.73.9','2011-11-23 09:42:43','2011-11-23 09:42:43'),
  ('FrontEndUsers','SelfRegistration','1.14','2011-11-23 09:42:43','2011-11-23 09:42:43');
COMMIT;

#
# Data for the `cms_module_feusers_belongs` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_belongs` (`userid`, `groupid`) VALUES 
  (1,1);
COMMIT;

#
# Data for the `cms_module_feusers_grouppropmap` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_grouppropmap` (`name`, `group_id`, `sort_key`, `required`, `lostunflag`) VALUES 
  ('firstname',1,0,2,-1),
  ('lastname',1,1,1,-1);
COMMIT;

#
# Data for the `cms_module_feusers_groups` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_groups` (`id`, `groupname`, `groupdesc`) VALUES 
  (1,'Member','Members group');
COMMIT;

#
# Data for the `cms_module_feusers_groups_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_groups_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_feusers_history` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_history` (`userid`, `sessionid`, `action`, `refdate`, `ipaddress`) VALUES 
  (1,'2lr93cnrb9nc5t603fq4a04757','login','2011-11-16 04:49:05','127.0.0.1'),
  (1,'2lr93cnrb9nc5t603fq4a04757','logout','2011-11-16 04:49:26','127.0.0.1'),
  (1,'2lr93cnrb9nc5t603fq4a04757','login','2011-11-16 06:53:45','127.0.0.1'),
  (1,'l145gm7s7mhtag5m6ons6mscf4','fail','2011-11-16 06:55:06','127.0.0.1'),
  (1,'l145gm7s7mhtag5m6ons6mscf4','fail','2011-11-16 06:55:14','127.0.0.1'),
  (1,'2lr93cnrb9nc5t603fq4a04757','logout','2011-11-16 06:55:35','127.0.0.1'),
  (1,'l145gm7s7mhtag5m6ons6mscf4','login','2011-11-16 06:55:41','127.0.0.1'),
  (1,'2lr93cnrb9nc5t603fq4a04757','login','2011-11-16 07:34:01','127.0.0.1'),
  (1,'ua8q2p0kfko8fd90mej62fmen0','login','2011-11-17 06:26:47','127.0.0.1'),
  (1,'ua8q2p0kfko8fd90mej62fmen0','logout','2011-11-17 06:30:47','127.0.0.1'),
  (1,'linj7nesk3jq6afs9jmrlk0886','login','2011-11-21 04:09:19','127.0.0.1'),
  (1,'linj7nesk3jq6afs9jmrlk0886','login','2011-11-21 06:11:29','127.0.0.1'),
  (1,'linj7nesk3jq6afs9jmrlk0886','login','2011-11-21 09:44:46','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','fail','2011-11-23 02:01:38','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 02:01:42','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 02:11:25','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 02:17:42','127.0.0.1'),
  (1,'ea62engfua6m9ssfmi8j0me0r2','login','2011-11-23 02:21:33','127.0.0.1'),
  (2,'1i4ob8110tjk9p0bjjjnb02np3','fail','2011-11-23 02:50:44','127.0.0.1'),
  (2,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 02:51:01','127.0.0.1'),
  (2,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 02:51:30','127.0.0.1'),
  (2,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 02:51:40','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 03:59:29','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 05:49:01','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 06:26:47','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 07:09:27','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 07:32:37','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 07:33:25','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 07:34:36','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 07:35:38','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 07:36:07','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','login','2011-11-23 07:38:28','127.0.0.1'),
  (1,'1i4ob8110tjk9p0bjjjnb02np3','logout','2011-11-23 07:55:07','127.0.0.1');
COMMIT;

#
# Data for the `cms_module_feusers_propdefn` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_propdefn` (`name`, `prompt`, `type`, `length`, `maxlength`, `attribs`, `force_unique`, `encrypt`) VALUES 
  ('firstname','First name','0',80,255,'a:0:{}',0,0),
  ('lastname','Last name','0',80,255,'a:0:{}',0,0);
COMMIT;

#
# Data for the `cms_module_feusers_properties` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_properties` (`id`, `userid`, `title`, `data`) VALUES 
  (1,1,'firstname','ronald'),
  (2,1,'lastname','andriyan');
COMMIT;

#
# Data for the `cms_module_feusers_properties_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_properties_seq` (`id`) VALUES 
  (4);
COMMIT;

#
# Data for the `cms_module_feusers_users` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_users` (`id`, `username`, `password`, `createdate`, `expires`) VALUES 
  (1,'ronald@localhost.com','aafc4484901c6ec60051f53e203e937a','2011-11-16 04:46:03','2016-11-16 23:59:59');
COMMIT;

#
# Data for the `cms_module_feusers_users_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_feusers_users_seq` (`id`) VALUES 
  (2);
COMMIT;

#
# Data for the `cms_module_gallery` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_gallery` (`fileid`, `filename`, `filepath`, `filedate`, `fileorder`, `active`, `defaultfile`, `galleryid`, `title`, `comment`) VALUES 
  (1,'Gallery/','','2011-10-29 03:03:35',-1,1,0,0,'Main Gallery Index',NULL),
  (27,'anime/','','2011-10-29 03:38:22',0,1,0,1,'','test'),
  (28,'1024_FF_542.jpg','anime','2007-02-23 06:51:58',0,1,0,27,'',''),
  (29,'1024_t_variant.jpg','anime','2007-02-22 09:59:04',0,1,0,27,'',''),
  (30,'AMSM520_1280.jpg','anime','2007-02-23 06:54:14',0,1,0,27,'',''),
  (31,'amz_sm_528_1280.jpg','anime','2007-02-22 09:51:02',0,1,0,27,'',''),
  (37,'ducati_silver.jpg','anime','2011-09-20 03:05:51',0,1,0,27,'',''),
  (38,'juliet_black_fire.jpg','anime','2011-09-20 03:04:40',0,1,0,27,'',''),
  (39,'juliet_gun_black.jpg','anime','2011-09-20 03:04:26',0,1,0,27,'',''),
  (40,'juliet_silver.jpg','anime','2011-09-20 03:04:09',0,1,0,27,'',''),
  (41,'Classroom/','','2011-11-19 04:32:51',0,1,0,1,'',''),
  (42,'Reception/','','2011-11-19 04:34:33',0,1,0,1,'',''),
  (43,'9.26.11Indonesia010.jpg','Classroom','2011-11-19 04:31:19',0,1,0,41,'',''),
  (44,'9.26.11Indonesia016.jpg','Classroom','2011-11-19 04:32:08',0,1,0,41,'',''),
  (45,'9.26.11Indonesia020.jpg','Classroom','2011-11-19 04:32:39',0,1,0,41,'',''),
  (46,'9.26.11Indonesia024.jpg','Classroom','2011-11-19 04:31:28',0,1,0,41,'',''),
  (47,'9.26.11Indonesia025.jpg','Classroom','2011-11-19 04:30:32',0,1,0,41,'',''),
  (48,'9.26.11Indonesia034.jpg','Classroom','2011-11-19 04:32:11',0,1,0,41,'',''),
  (49,'9.26.11Indonesia035.jpg','Classroom','2011-11-19 04:32:54',0,1,0,41,'',''),
  (50,'9.26.11Indonesia062.jpg','Classroom','2011-11-19 04:31:40',0,1,0,41,'',''),
  (51,'9.26.11Indonesia066.jpg','Classroom','2011-11-19 04:32:42',0,1,0,41,'',''),
  (52,'9.26.11Indonesia071.jpg','Classroom','2011-11-19 04:32:47',0,1,0,41,'',''),
  (53,'9.26.11Indonesia075.jpg','Classroom','2011-11-19 04:30:41',0,1,0,41,'',''),
  (54,'9.26.11Indonesia104.jpg','Classroom','2011-11-19 04:31:53',0,1,0,41,'',''),
  (55,'9.26.11Indonesia110.jpg','Classroom','2011-11-19 04:31:33',0,1,0,41,'',''),
  (56,'9.26.11Indonesia113.jpg','Classroom','2011-11-19 04:32:05',0,1,0,41,'',''),
  (57,'9.26.11Indonesia123.jpg','Classroom','2011-11-19 04:30:38',0,1,0,41,'',''),
  (58,'9.26.11Indonesia138.jpg','Classroom','2011-11-19 04:32:51',0,1,0,41,'',''),
  (59,'9.26.11Indonesia144.jpg','Classroom','2011-11-19 04:31:58',0,1,0,41,'',''),
  (60,'9.26.11Indonesia155.jpg','Classroom','2011-11-19 04:32:44',0,1,0,41,'',''),
  (61,'9.26.11Indonesia170.jpg','Classroom','2011-11-19 04:30:25',0,1,0,41,'',''),
  (62,'9.26.11Indonesia176.jpg','Classroom','2011-11-19 04:32:02',0,1,0,41,'',''),
  (63,'9.26.11Indonesia198.jpg','Classroom','2011-11-19 04:30:34',0,1,0,41,'',''),
  (64,'9.26.11Indonesia202.jpg','Classroom','2011-11-19 04:31:24',0,1,0,41,'',''),
  (65,'9.26.11Indonesia208.jpg','Classroom','2011-11-19 04:30:44',0,1,0,41,'',''),
  (66,'9.26.11Indonesia233.jpg','Classroom','2011-11-19 04:30:51',0,1,0,41,'',''),
  (67,'9.26.11Indonesia256.jpg','Classroom','2011-11-19 04:31:43',0,1,0,41,'',''),
  (68,'9.26.11Indonesia258.jpg','Classroom','2011-11-19 04:32:36',0,1,0,41,'',''),
  (69,'9.26.11Indonesia263.jpg','Classroom','2011-11-19 04:31:46',0,1,0,41,'',''),
  (70,'9.26.11Indonesia276.jpg','Classroom','2011-11-19 04:30:29',0,1,0,41,'',''),
  (71,'9.26.11Indonesia317.jpg','Classroom','2011-11-19 04:31:50',0,1,0,41,'',''),
  (72,'9.26.11Indonesia322.jpg','Classroom','2011-11-19 04:31:37',0,1,0,41,'',''),
  (73,'9.26.11Indonesia334.jpg','Classroom','2011-11-19 04:30:47',0,1,0,41,'',''),
  (74,'9.29.11Loeb007.jpg','Reception','2011-11-19 04:34:13',0,1,0,42,'',''),
  (75,'9.29.11Loeb008.jpg','Reception','2011-11-19 04:34:17',0,1,0,42,'',''),
  (76,'9.29.11Loeb010.jpg','Reception','2011-11-19 04:34:33',0,1,0,42,'',''),
  (77,'9.29.11Loeb013.jpg','Reception','2011-11-19 04:34:06',0,1,0,42,'',''),
  (78,'9.29.11Loeb016.jpg','Reception','2011-11-19 04:33:40',0,1,0,42,'',''),
  (79,'9.29.11Loeb017.jpg','Reception','2011-11-19 04:33:26',0,1,0,42,'',''),
  (80,'9.29.11Loeb019.jpg','Reception','2011-11-19 04:34:10',0,1,0,42,'',''),
  (81,'9.29.11Loeb020.jpg','Reception','2011-11-19 04:32:59',0,1,0,42,'',''),
  (82,'9.29.11Loeb036.jpg','Reception','2011-11-19 04:34:02',0,1,0,42,'',''),
  (83,'9.29.11Loeb038.jpg','Reception','2011-11-19 04:33:57',0,1,0,42,'',''),
  (84,'9.29.11Loeb047.jpg','Reception','2011-11-19 04:34:37',0,1,0,42,'',''),
  (85,'9.29.11Loeb139.jpg','Reception','2011-11-19 04:33:34',0,1,0,42,'',''),
  (86,'9.29.11Loeb159.jpg','Reception','2011-11-19 04:33:29',0,1,0,42,'',''),
  (87,'9.29.11Loeb161.jpg','Reception','2011-11-19 04:33:43',0,1,0,42,'',''),
  (88,'9.29.11Loeb167.jpg','Reception','2011-11-19 04:33:51',0,1,0,42,'',''),
  (89,'9.29.11Loeb177.jpg','Reception','2011-11-19 04:34:24',0,1,0,42,'',''),
  (90,'9.29.11Loeb179.jpg','Reception','2011-11-19 04:33:47',0,1,0,42,'',''),
  (91,'9.29.11Loeb184.jpg','Reception','2011-11-19 04:34:20',0,1,0,42,'',''),
  (92,'9.29.11Loeb188.jpg','Reception','2011-11-19 04:34:29',0,1,0,42,'','');
COMMIT;

#
# Data for the `cms_module_gallery_props` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_gallery_props` (`fileid`, `templateid`, `hideparentlink`) VALUES 
  (1,0,1),
  (17,0,0),
  (27,0,0),
  (32,0,0),
  (41,0,0),
  (42,0,0);
COMMIT;

#
# Data for the `cms_module_gallery_templateprops` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_gallery_templateprops` (`templateid`, `template`, `version`, `about`, `thumbwidth`, `thumbheight`, `resizemethod`, `maxnumber`, `sortitems`, `visible`) VALUES 
  (1,'Fancybox','1.3.4-2','<p>This Gallerytemplate uses the Fancybox system version 1.3.4</p>\r\n<p>Documentation for extra options can be found at <a href=\"http://www.fancybox.net/\" target=\"_blank\">www.fancybox.net</a></p>\r\n<p>Files that come with Fancybox are stored in <em>modules/Gallery/templates/fancybox/</em></p>\r\n<p>Fancybox was built using the <a href=\"http://jquery.com/\">jQuery library</a>. Licensed under both <a href=\"http://docs.jquery.com/Licensing\">MIT and GPL licenses</a></p>',NULL,NULL,NULL,NULL,'n-isdir/s+file',1),
  (2,'Lightbox','2.04-3','<p>This Gallerytemplate uses the Lightbox2 system version 2.04 by Lokesh Dhakar</p>\r\n<p>Documentation can be found at <a href=\"http://www.huddletogether.com/projects/lightbox2/\" target=\"_blank\">www.huddletogether.com/projects/lightbox2</a></p>\r\n<p>Files that come with Lightbox are stored in <em>modules/Gallery/templates/lightbox/</em></p>\r\n<p>Licensed under the <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons Attribution 2.5 License</a></p>\r\n<a href=\"http://docs.jquery.com/Licensing\"></a>',NULL,NULL,NULL,NULL,'n-isdir/s+file',1),
  (3,'Lytebox','3.22-4','<p>This Gallerytemplate uses the Lytebox system version 3.22 by Markus F. Hay, with a <a href=\"http://nederveld.wordpress.com/2009/07/02/lytebox-and-internet-explorer-8/\" target=\"_blank\">ie8 fix</a>.</p>\r\n<p>Documentation can be found at <a href=\"http://www.dolem.com/lytebox/\" target=\"_blank\">www.dolem.com/lytebox</a></p>\r\n<p>Files that come with Lytebox are stored in <em>modules/Gallery/templates/lytebox/</em></p>\r\n<p>Licensed under <a href=\"http://creativecommons.org/licenses/by/3.0/\" target=\"_blank\">Creative Commons Attribution 3.0 License</a><a href=\"http://docs.jquery.com/Licensing\"></a></p>',NULL,NULL,NULL,NULL,'n-isdir/s+file',1),
  (4,'Slimbox','2.04-2','<p>This Gallerytemplate uses the Slimbox system version 2.04, a lightweight Lightbox clone using the jQuery javascript library, by Christophe Beyls.</p>\r\n<p>Documentation can be found at <a href=\"http://code.google.com/p/slimbox/\" target=\"_blank\">code.google.com/p/slimbox</a></p>\r\n<p>Files that come with Slimbox are stored in <em>modules/Gallery/templates/slimbox/</em></p>\r\nLicensed under <a href=\"http://www.opensource.org/licenses/mit-license.php\">MIT License</a>',NULL,NULL,NULL,NULL,'n-isdir/s+file',1),
  (5,'Thickbox','3.1-3','<p>This Gallerytemplate uses the Thickbox system version 3.1 by Cody Lindley (<a href=\"http://www.codylindley.com/\" target=\"_blank\">www.codylindley.com</a>).</p>\r\n<p>Patched Version by Jamie Thompson - Fixes IE7 Positioning Issues (<a href=\"http://jamazon.co.uk/web/2008/03/17/thickbox-31-ie7-positioning-bug/\" target=\"_blank\">jamazon.co.uk/web/2008/03/17/thickbox-31-ie7-positioning-bug</a>).</p>\r\n<p>Files that come with Thickbox are stored in <em>modules/Gallery/templates/thickbox/</em></p>\r\n<p>Licensed under <a href=\"http://www.opensource.org/licenses/mit-license.php\">MIT License</a></p>',NULL,NULL,NULL,NULL,'n-isdir/s+file',1),
  (6,'gallerytree','1.0','<p>This template is ment for the {Gallery action=''gallerytree'' template=''gallerytree''} call.</p>\r\n<p>The generated tree respects the sortorder settings for each (sub)gallery. Setting a sortorder for this template won''t make any difference.</p>',NULL,NULL,NULL,NULL,'0',0),
  (7,'Cycle','1.3-1','<p>Cycle template</p>',NULL,NULL,NULL,NULL,NULL,NULL);
COMMIT;

#
# Data for the `cms_module_javascript_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_javascript_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_module_news` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`) VALUES 
  (2,1,'ERROR TYPE III DAN GAYA KEPEMIMPINAN DI INDONESIA','<div>\r\n<div>\r\n<div>\r\n<p align=\"center\"><strong>Oleh : Ir. Said Alkhudri</strong></p>\r\n<p align=\"center\"><strong>(Peserta Diklat Transforming Leader In Indonesia, Angkatan I)</strong></p>\r\n<p>Pada Sessi pertama hari terakhir dalam pembelajaran di Havard Kennedy Scholl, tanggal ........2011, Prof. Amy C. Edmonson membahas meledaknya pesawat ulang-alik CHALENGER? diatas samudera Atlantik setelah 2 menit diluncurkan pada tahun 1980.</p>\r\n<p>NASA sebagai Badan Ruang Angkasa Amerika telah mengontrak Perusahaan MORON THIOKOL untuk rancangan SRB, yaitu salah Komponen dari Pesawat Ulang-alik Chalenger. Rancangan SRB tersebut Mengandalkan O-Ring untuk mengankat komponen berukuran besar.</p>\r\n<p>MissI Chalengger telah di tunda beberapa kali, sehingga Pemimpin? NASA merasa perusahaan MORON THIOKOL sebagai penyebab pengunduran-pengunduran ini.</p>\r\n<p>Pada tanggal 27 Januari 1986 terjadilah Proses pengambilan Keputusan Peluncur Chalenger yang penuh emosional.</p>\r\n<p>Intinya BOISJOLY dari THIOKAL telah mengingatkan bahan O-Ring akan meleleh pada suhu 29<sup>o</sup>?F.Jika prediksii cuaca Peluncuran oleh Angkatan Udara Amerika Benar.</p>\r\n<p>LARRY MULLOY pemimpin NASA dan Stafnya menclaim Boisjoly terlalu Vokal dan ini bisa mengancam jadwal ?peluncuran Chalenger yang telah ditetapkan oleh beberapa atasan MULLOY dengan mendiskusikan pendapat Boisjoly antara lain:</p>\r\n<ol>\r\n<li>Dengan kondisi O-Ring saat ini ,beberapa peluncuran? sebelumnya ternyata aman.</li>\r\n<li>Rusia meluncurkan pesawat ulang-alik juga dengan kondisi pengikisan O-Ring yang lebih panas.</li>\r\n<li>Jangan-jangan Boisjoly ditumpangi kepentingan pihak lain yang menginginkan peluncuran Chalengger ditunda.</li>\r\n</ol>\r\n<p>Rapat tanggal 27 Januari 1986 tersebut memutuskan peluncuran Challanger tetap dilaksanakan sesuai dengan jadwal yang ditetapkan.</p>\r\n<p>Kenyataan pahit yang diterima NASA. Atas Arogansi sendiri terjadi, pesawat ulang-alik Challenger meledak di angkasa setelah 2 menit peluncuran, dan kepingan-kepingan pesawat ditemukan jatuh tersebar di laut atlantikk dengan 9 astronot di dalamnya.</p>\r\n<p>Dunia Antariksa terpukul.</p>\r\n<p>Sebuah Error Type III terjadi dalam proses pengambilan keputusan di NASA.</p>\r\n<p>Prof. Amy menyajikan kasus ini dengan bantuan Video rekaman secara apik sekali, telah membuat para peserta pembelajaran terbangun dari praktek arogansi selama ini mungkin sering terjadi dalam Pemerintahan Daerah.</p>\r\n<p>Error Type III adalah istilah kalimat yang maksudnya ?melaksanakan keputusan yang salah? yang dimulai dengan? ?Identifikasi masalah yang salah?</p>\r\n<p>Disadari atau tidak, para pemimpin Pemerintah di Daerah berpeluang bisa terjebak menangani masalah yang salah, seperti dilakukan LARRY MULLOY dalam peluncuran Shuttle Space Chalenger tahun 1986.</p>\r\n<p>Bermula dalam proses pengambilan keputusan, intervensi pimpinan sering mematahkan dan mementahkan seluruh proses pengambilan keputusan yang sudah berjalan sesuai dengan mekanisme dari bawah.</p>\r\n<p>Sebuah kasus di sebuah Pemerintah Kota; ketika Sekretaris Kota memimpin rencana kegiatan Hari Ulang Tahun Kota yang dihadiri dari SKPD dan Kepala Uniit, mekanisme rapat berjalan bagus. Saran, usul dan ide muncul dengan cerdasnya. Kesimpulannya sudah mengena kepada kegiatan-kegiatan ya ng melibatkan banyak rakyat, seperti lomba olahraga ditingkat kelurahan dan sebagainya.</p>\r\n<p>Tetapi ketika dipenghujung rapat Pak Wali Kota masuk, beliau langsung memberikan arahan kepada peserta, termasuk menentukan kegiatan-kegiatan Hari Ulang Tahun Kota yang harus dilaksanakan SKPD tanpa Resume. Tetapi arahan Walikota lebih kepada pertandingan Golf antara Eksekutif-Legislatif, upacara dan malam resepsi. Semua keputusan Rapat sejak pagi yang dipimpi Sekretaris Kota menjadi mentah.</p>\r\n<p>Error Type III terjadi dimana-mana dalam penetapan Kebijakan Pembangunan di Daerah.</p>\r\n<p>Error Type III sering lahir dari arogansi para pemeimpin. Prof. Amy. C. Edmon telah membangunkan 19 Bupati/ Walikota peserta Angkatan I. Transforming Leader Indonesia dalam sessi ini dengan mengangkat kasus peluncuran Shuttle Space Challenger oleh NASA.</p>\r\n<p>Pemerintah Daerah Kabupaten/Kota adalah ujung tombak dan referensi di Indonesia. Sehingga Transparansi kepemimpinan ditingkat Kabupaten/Kota dapat merubah wajah Republik Indonesia tercinta ini.</p>\r\n</div>\r\n</div>\r\n</div>','2011-10-29 02:35:20','<div>\r\n<p>Pada Sessi pertama hari terakhir dalam pembelajaran di Havard Kennedy Scholl, tanggal ........2011, Prof. Amy C. Edmonson membahas meledaknya pesawat ulang-alik CHALENGER? diatas samudera Atlantik setelah 2 menit diluncurkan pada tahun 1980</p>\r\n</div>',NULL,NULL,'published',NULL,'2011-10-29 02:36:03','2011-11-19 04:24:03',1,'',''),
  (3,1,'PELAKSANAAN ORIENTASI KEPEMIMPINAN DAN PENYELENGGARAAN PEMERINTAHAN DAERAH (OKPPD) DAN MENGIKUTI EXECUTIVE EDUCATION COURSE ON TRANSFORMING LEADERS IN INDONESIA PROGRAM','<div>\r\n<p>Badan Diklat Kementerian Dalam Negeri telah melaksanakan Orientasi Kepemimpinan dan Penyelenggaraan Pemerintahan Daerah (OKPPD) telah dilaksanakan dari tahun 2010 sampai dengan tahun 2011 dilanjutkan dengan Executive Training Education Program Transforming Leaders in Indonesia Tahun 2011. OKPPD merupakan kegiatan utama Badan Pendidikan dan Pelatihan Kementerian Dalam Negeri yang disertai dengan pelaksanaan Orientasi Pengembangan Kepribadian dan Kepemimpinan Bagi Isteri Bupati/Walikota dan Wakil Bupati/Wakil Walikota (ladies program).</p>\r\n<p>Secara keseluruhan OKPPD Tahun 2010 sebanyak 48 orang peserta dan ladies program sebanyak 40 orang peserta yang dilaksanakan masing-masing 2 angkatan. Selanjutnya pada tahun 2011 OKPPD menghasilkan alumni sebanyak 222 orang dan aldies program sebanyak 185 orang yang dilaksanakan dalam 5 angkatan penyelenggaraan.</p>\r\n<p>Dari jumlah alumni OKPPD sebanyak 270 orang selanjutnya dipilih sebanyak 19 Bupati/Walikota untuk mengikuti <em>Executive Education Course on Transforming Leaders in Indonesia Program</em>yang dilaksanakan dalam 2 (dua) tahap, yaitu:</p>\r\n<ol>\r\n<li>Program Pengantar yang akan memberikan perspektif dasar yang akan mempelajari <em>Strategic Leadership</em>, <em>New Public Management</em>dan perancangan dan penyusunan Peraturan Daerah. Kegiatan ini telah dilaksanakan di Jakarta dari tanggal 12 sd 16 September 2011 dan diikuti oleh 39 peserta dengan perincian sebagai berikut:</li>\r\n</ol>\r\n<p>1) Bupati : 15 orang</p>\r\n<p>2) Walikota : 4 orang</p>\r\n<p>3) Pejabat Bappeda : 19 orang</p>\r\n<p>4) Pejabat Kementerian Dalam Negeri : 1 orang</p>\r\n<ol>\r\n<li><em>Executive Education Training Program </em>yang merupakan kegiatan inti yang akan dilaksanakan di Kampus Harvard University, Boston, USA dari tanggal 19 sampai dengan 30 September 2011 dan dilanjutkan Studi Lapangan ke beberapa Pemerintah Daerah diantaranya North Carolina dan Washington DC.</li>\r\n</ol>\r\n<p>Berbagai pengalaman belajar yang telah dilewati oleh para alumni OKPPD maupun <em>Executive Education Training Program</em>selanjutnya akan dijadikan bahan pertimbangan para Kepala Daerah dalam memimpin penyelenggaraan pemerintahan daerah masing-masing. Bila membutuhkan penyegaran terhadap materi pembelajaran atau penyebarluasan hasil-hasil pembelajaran yang telah diikuti kepada Kepala Daerah lainnya maupun kepada pejabat pemerintah daerah, akan dilakukan dalam bentuk Orientasi atau seminar yang terfokus untuk membahas isu tertentu yang menjadi pusar perhatian pemerintah daerah. Berbagai kegiatan ini dapat difasilitasi oleh Badan Diklat Kementerian Dalam Negeri, sebagai salah satu contoh, pada tanggal 17 sampai dengan 19 November 2011 akan dilaksanakan Diklat/Orientasi Penyusunan Laporan Penyelenggaraan pemerintahan daerah yang dirangkaikan dengan pertemuan alumni pertama yang bertujuan untuk mensosialisasikan program dan hasil-hasil OKPPD dan <em>Executive Education Training Program</em>kepada para Kepala Daerah atau pejabat pemerintah daerah lainnya.</p>\r\n<p>(<strong>Yusharto, Kabid Otda dan PUM, Badan Diklat Kemendagri</strong>)</p>\r\n</div>','2011-11-15 08:57:44','<div>\r\n<p>Badan Diklat Kementerian Dalam Negeri telah melaksanakan Orientasi Kepemimpinan dan Penyelenggaraan Pemerintahan Daerah (OKPPD) telah dilaksanakan dari tahun 2010 sampai dengan tahun 2011</p>\r\n</div>',NULL,NULL,'published',NULL,'2011-11-15 08:58:07','2011-11-21 04:05:26',1,'',''),
  (4,1,'news with attachment','<p>this is news with attachment sample</p>','2011-11-21 08:29:38','',NULL,NULL,'published',NULL,'2011-11-21 08:30:39','2011-11-21 08:30:39',1,'',''),
  (5,1,'news with attachment','<p>this is news with attachment sample</p>','2011-11-21 08:29:38','',NULL,NULL,'published',NULL,'2011-11-21 08:31:09','2011-11-21 08:31:09',1,'',''),
  (9,1,'pdf','<p>pdf</p>','2011-11-21 19:04:11','',NULL,NULL,'published',NULL,'2011-11-21 19:04:27','2011-11-21 19:05:35',1,'',''),
  (15,1,'asdasd','asdasd','2011-11-23 01:52:58','asdasda','2011-11-23 01:50:41','2012-05-21 01:50:41','published',NULL,'2011-11-23 01:52:58','2011-11-23 01:52:58',1,'',NULL),
  (20,1,'xxxx','xxxxx','2011-11-23 02:11:08','','2011-11-23 02:01:46','2012-05-21 02:01:46','published',NULL,'2011-11-23 02:11:08','2011-11-23 02:11:08',1,'',NULL),
  (21,1,'qqqq','qqqq','2011-11-23 02:11:39','','2011-11-23 02:11:29','2012-05-21 02:11:29','published',NULL,'2011-11-23 02:11:39','2011-11-23 02:11:39',1,'',NULL),
  (22,1,'zzzz','<p>zzzz</p>','2011-11-23 06:23:14','','2011-11-23 06:23:14','2012-05-21 06:23:14','published',NULL,'2011-11-23 06:23:14','2011-11-23 06:23:14',1,'',NULL);
COMMIT;

#
# Data for the `cms_module_news_categories` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `long_name`, `create_date`, `modified_date`) VALUES 
  (1,'General',-1,'00001','General','02:15:15','02:15:15');
COMMIT;

#
# Data for the `cms_module_news_categories_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news_categories_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_news_fielddefs` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news_fielddefs` (`id`, `name`, `type`, `max_length`, `create_date`, `modified_date`, `item_order`, `public`) VALUES 
  (1,'Attachment','file',255,'2011-11-21 04:20:03','2011-11-21 04:20:03',1,1);
COMMIT;

#
# Data for the `cms_module_news_fieldvals` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news_fieldvals` (`news_id`, `fielddef_id`, `value`, `create_date`, `modified_date`) VALUES 
  (5,1,'1-SWW.xlsx','2011-11-21 08:31:09','2011-11-21 08:31:09'),
  (9,1,'kamusti.pdf','2011-11-21 19:05:35','2011-11-21 19:05:35'),
  (20,1,'BTB2.jpg','2011-11-23 02:11:08','2011-11-23 02:11:08'),
  (21,1,'PERINCIAN PENGIRIMAN PAS2.xls','2011-11-23 02:11:39','2011-11-23 02:11:39'),
  (22,1,'BTB2.jpg','2011-11-23 06:23:14','2011-11-23 06:23:14');
COMMIT;

#
# Data for the `cms_module_news_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news_seq` (`id`) VALUES 
  (22);
COMMIT;

#
# Data for the `cms_module_search_index` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES 
  (1,'navigation',1),
  (1,'news',1),
  (275,'career',1),
  (275,'became',1),
  (275,'beginning',1),
  (275,'2001',2),
  (275,'1999',1),
  (275,'secretary',2),
  (275,'acting',1),
  (275,'served',1),
  (274,'bappeda',1),
  (274,'position',1),
  (274,'promoted',1),
  (274,'got',1),
  (274,'2006',1),
  (275,'banjarbaru',2),
  (275,'formation',1),
  (275,'following',1),
  (275,'chapter',1),
  (275,'functionary',1),
  (275,'golkar',1),
  (275,'active',1),
  (275,'era',1),
  (275,'order',1),
  (275,'new',2),
  (275,'1998',1),
  (275,'administration',1),
  (275,'developmental',1),
  (275,'assistant',1),
  (275,'position',1),
  (275,'promoted',1),
  (5,'navigation',1),
  (5,'news',1),
  (275,'1978',1),
  (275,'municipality',4),
  (275,'banjarmansin',2),
  (551,'fulfillment',1),
  (551,'people',1),
  (552,'national',1),
  (552,'chair',1),
  (552,'serves',1),
  (552,'currently',1),
  (552,'also',1),
  (551,'pro',1),
  (551,'2010',1),
  (551,'term',1),
  (551,'second',1),
  (551,'reelected',1),
  (551,'2005',1),
  (360,'menetapkan',1),
  (360,'menunjuk',1),
  (360,'besar',1),
  (360,'garis',1),
  (360,'mendesain',1),
  (360,'prasojo',1),
  (360,'eko',1),
  (360,'prof',1),
  (360,'ringoringo',1),
  (360,'achmadi',1),
  (275,'transferred',2),
  (275,'graduate',1),
  (275,'right',1),
  (275,'provincial',1),
  (275,'kalimantan',1),
  (275,'south',1),
  (275,'joined',1),
  (275,'1975',1),
  (275,'candidates',1),
  (275,'official',1),
  (275,'train',1),
  (275,'college',1),
  (275,'government',3),
  (275,'local',3),
  (275,'academy',1),
  (275,'negeri',1),
  (275,'dalam',1),
  (275,'pemerintahan',1),
  (275,'akademi',1),
  (275,'apdn',2),
  (275,'graduated',1),
  (275,'1951',1),
  (275,'december',1),
  (275,'martapura',1),
  (274,'transferred',1),
  (274,'west',1),
  (274,'districts',1),
  (274,'two',1),
  (274,'subdivided',1),
  (274,'2003',1),
  (274,'result',1),
  (274,'plan',1),
  (274,'pemekaran',1),
  (274,'proliferation',1),
  (274,'study',1),
  (274,'feasibility',1),
  (274,'conduct',1),
  (274,'assigned',1),
  (274,'pasaman',6),
  (274,'tenure',1),
  (274,'1996',1),
  (274,'district',6),
  (274,'agam',3),
  (274,'section',1),
  (274,'organizational',1),
  (274,'head',2),
  (274,'named',1),
  (274,'1989',1),
  (274,'college',1),
  (274,'graduated',1),
  (274,'right',1),
  (274,'service',1),
  (274,'civil',1),
  (274,'joined',1),
  (274,'1961',1),
  (274,'august',1),
  (274,'kemang',1),
  (274,'born',1),
  (274,'ismanimran',2),
  (274,'imran',3),
  (274,'isman',3),
  (275,'born',1),
  (275,'noor',3),
  (273,'capacity',1),
  (273,'resources',1),
  (273,'human',1),
  (273,'enhance',1),
  (273,'finance',1),
  (273,'public',1),
  (273,'leaks',1),
  (273,'minimize',1),
  (273,'infrastructure',1),
  (273,'economic',1),
  (273,'improve',1),
  (273,'endeavor',1),
  (273,'newly',1),
  (273,'elected',2),
  (273,'election',1),
  (273,'2010',1),
  (273,'lost',1),
  (273,'2005',1),
  (273,'agam',2),
  (273,'district',2),
  (273,'run',2),
  (273,'affairs',1),
  (273,'welfare',1),
  (273,'people',1),
  (273,'assistant',1),
  (273,'served',1),
  (273,'previously',1),
  (273,'2008',1),
  (273,'head',3),
  (273,'named',1),
  (273,'office',1),
  (273,'positions',1),
  (273,'various',1),
  (273,'transferred',1),
  (273,'1990',1),
  (273,'agency',1),
  (273,'local',3),
  (273,'bappeda',2),
  (273,'municipality',4),
  (273,'padang',4),
  (273,'service',1),
  (273,'civil',1),
  (273,'joined',1),
  (273,'1987',1),
  (273,'itb',1),
  (273,'technology',1),
  (273,'institute',1),
  (273,'bandung',1),
  (273,'planning',2),
  (273,'regional',1),
  (273,'department',1),
  (273,'degree',1),
  (273,'bachelor',1),
  (273,'obtainin',1),
  (273,'1961',1),
  (275,'ruzaidin',5),
  (487,'aswan',1),
  (487,'mohammad',1),
  (487,'noor',1),
  (487,'ruzaidin',1),
  (487,'muhammad',1),
  (487,'selatan',1),
  (487,'kalimantan',1),
  (487,'banjarbaru',1),
  (487,'imran',1),
  (487,'isman',1),
  (487,'catri',1),
  (276,'2010',1),
  (276,'bappeda',1),
  (276,'named',1),
  (276,'2008',1),
  (276,'brawijaya',1),
  (276,'doctorate',1),
  (276,'1995',1),
  (276,'mada',1),
  (276,'gadjah',1),
  (276,'administration',2),
  (276,'public',2),
  (276,'degree',2),
  (276,'master',1),
  (276,'pursued',1),
  (276,'meanwhile',1),
  (276,'affairs',1),
  (276,'economic',1),
  (276,'new',1),
  (276,'moved',1),
  (276,'municipality',3),
  (276,'formation',1),
  (276,'2002',1),
  (276,'2001',1),
  (276,'disrict',1),
  (276,'kurau',1),
  (276,'camat',1),
  (276,'head',3),
  (276,'sub',1),
  (276,'served',2),
  (276,'1989',1),
  (276,'university',3),
  (276,'hasanuddin',1),
  (276,'graduating',1),
  (276,'immediately',1),
  (276,'province',1),
  (276,'kalimantan',1),
  (276,'south',1),
  (276,'district',2),
  (276,'laut',2),
  (276,'tanah',2),
  (276,'bureaucracy',1),
  (276,'government',1),
  (276,'local',1),
  (276,'career',1),
  (276,'built',1),
  (276,'1962',1),
  (276,'september',1),
  (360,'kumorotomo',1),
  (360,'wahyudi',1),
  (360,'bapak',1),
  (360,'yaitu',1),
  (360,'narasumber',1),
  (360,'tiga',1),
  (360,'penugasan',1),
  (360,'tinggi',1),
  (360,'perguruan',1),
  (360,'kerjasama',1),
  (360,'melaksanakan',2),
  (360,'masukan',1),
  (360,'akan',2),
  (360,'bersifat',1),
  (360,'independen',1),
  (487,'indra',1),
  (360,'menjadi',1),
  (360,'organisasi',5),
  (360,'pusat',1),
  (360,'menteng',1),
  (360,'cimahi',1),
  (360,'selatan',1),
  (360,'jakarta',2),
  (360,'kalibata',1),
  (360,'nomor',2),
  (360,'pahlawan',1),
  (360,'pelatihan',1),
  (360,'pendidikan',1),
  (360,'beralamat',1),
  (360,'sekretariat',1),
  (360,'diantaranya',1),
  (360,'tujuan',1),
  (360,'pencapaian',1),
  (360,'ditetapkan',1),
  (360,'beberapa',1),
  (360,'bendahara',2),
  (360,'wakil',2),
  (360,'jenderal',2),
  (360,'sekretaris',3),
  (276,'banjarbaru',3),
  (276,'born',1),
  (276,'aswan',5),
  (83,'=\"version',1),
  (83,'navigation',1),
  (83,'&nbsp',6),
  (276,'mohammad',3),
  (614,'zzzz',3),
  (487,'basung',1),
  (487,'sumatera',1),
  (273,'april',1),
  (273,'bukittingi',1),
  (273,'born',1),
  (273,'indracatri',2),
  (273,'catri',4),
  (273,'indra',4),
  (35,'navigation',1),
  (35,'news',1),
  (37,'navigation',1),
  (37,'news',1),
  (39,'horizontal',1),
  (39,'ruler',1),
  (39,'hidden',1),
  (39,'visual',1),
  (39,'browsers',1),
  (39,'css',1),
  (39,'navigation',2),
  (39,'sub',1),
  (39,'news',1),
  (555,'diklat',1),
  (555,'peserta',4),
  (44,'corp@2011',1),
  (44,'dookie',1),
  (44,'powered',1),
  (565,'pertemuan',1),
  (627,'comment',4),
  (555,'alkhudri',1),
  (555,'said',1),
  (555,'oleh',4),
  (360,'ketua',1),
  (360,'dari',1),
  (360,'terdiri',1),
  (360,'kepengurusan',1),
  (360,'presidium',1),
  (589,'news',4),
  (83,'news',1),
  (129,'photo',4),
  (360,'bersamaan',1),
  (360,'yang',4),
  (360,'saat',1),
  (360,'pelaku',1),
  (360,'kepada',2),
  (360,'penghargaan',1),
  (360,'pemberian',1),
  (360,'global',1),
  (360,'network',1),
  (360,'penerbitan',1),
  (360,'kebijakan',4),
  (360,'pelaksanaan',1),
  (360,'utama',2),
  (360,'kegiatan',1),
  (487,'barat',1),
  (487,'lubuk',1),
  (487,'walikota',2),
  (487,'&amp',2),
  (487,'bupati',2),
  (487,'peserta',2),
  (487,'profil',2),
  (487,'2011',2),
  (487,'tahun',2),
  (487,'angkatan',2),
  (275,'bureaucrat',1),
  (275,'successfully',1),
  (275,'got',1),
  (275,'elected',2),
  (275,'vice',1),
  (275,'mayor',2),
  (275,'2005',1),
  (275,'2010',1),
  (275,'direct',1),
  (275,'elections',1),
  (565,'dirangkaikan',1),
  (360,'dengan',2),
  (360,'pengambilan',1),
  (360,'mendukung',2),
  (360,'penelitian',1),
  (360,'kajian',3),
  (360,'fasilitasi',1),
  (360,'memberikan',3),
  (360,'bertujuan',1),
  (360,'umum',1),
  (360,'secara',2),
  (360,'daerah',1),
  (360,'pemerintahan',1),
  (360,'percepatan',1),
  (360,'guna',1),
  (360,'kapasitas',1),
  (360,'mengembangkan',1),
  (360,'membina',1),
  (360,'berkomunikasi',1),
  (360,'terus',1),
  (360,'untuk',7),
  (360,'leader',1),
  (360,'transforming',1),
  (360,'alumni',1),
  (360,'seluruh',1),
  (360,'bagi',1),
  (360,'jaringan',1),
  (360,'satu',1),
  (360,'salah',1),
  (360,'sebagai',1),
  (360,'indonesia',4),
  (360,'transformasi',2),
  (360,'forum',1),
  (360,'dibentuk',2),
  (360,'telah',3),
  (360,'kemendagri',3),
  (360,'diklat',2),
  (360,'badan',3),
  (360,'difasilitasi',1),
  (360,'dan',10),
  (360,'peserta',1),
  (360,'prakarsa',1),
  (360,'atas',1),
  (360,'rti',1),
  (360,'institute',1),
  (360,'triangle',1),
  (360,'research',1),
  (360,'gedung',1),
  (360,'bertempat',1),
  (360,'2011',1),
  (360,'oktober',1),
  (360,'tanggal',1),
  (360,'pada',2),
  (360,'history',2),
  (360,'fti',5),
  (360,'pembentukan',3),
  (360,'singkat',2),
  (360,'sejarah',2),
  (360,'executive',1),
  (360,'administrasi',1),
  (360,'sehari',1),
  (360,'hari',1),
  (360,'membantu',1),
  (360,'pengurus',1),
  (360,'yusharto',1),
  (360,'kabid',1),
  (360,'otda',1),
  (360,'pum',1),
  (361,'penguruscontainer',4),
  (552,'2010',1),
  (532,'24001962',1),
  (533,'email',1),
  (549,'parliament',1),
  (550,'pemilukada',1),
  (536,'624018',1),
  (536,'indonesia',1),
  (537,'62811',1),
  (537,'321001',1),
  (565,'laporan',1),
  (565,'november',1),
  (565,'contoh',1),
  (565,'satu',1),
  (565,'salah',1),
  (565,'difasilitasi',1),
  (565,'dapat',1),
  (565,'perhatian',1),
  (565,'pusar',1),
  (565,'menjadi',1),
  (565,'tertentu',1),
  (565,'isu',1),
  (565,'membahas',1),
  (565,'terfokus',1),
  (565,'seminar',1),
  (565,'bentuk',1),
  (565,'dilakukan',1),
  (565,'maupun',1),
  (565,'lainnya',2),
  (565,'kepada',3),
  (565,'hasil',4),
  (565,'penyebarluasan',1),
  (565,'atau',3),
  (565,'pembelajaran',2),
  (565,'materi',1),
  (565,'terhadap',1),
  (565,'penyegaran',1),
  (565,'membutuhkan',1),
  (565,'bila',1),
  (565,'memimpin',1),
  (565,'kepala',3),
  (565,'pertimbangan',1),
  (565,'bahan',1),
  (565,'dijadikan',1),
  (565,'maupun',1),
  (565,'para',3),
  (565,'dilewati',1),
  (565,'belajar',1),
  (565,'pengalaman',1),
  (565,'berbagai',2),
  (565,'washington',1),
  (565,'carolina',1),
  (565,'north',1),
  (565,'diantaranya',1),
  (565,'pemerintah',4),
  (565,'beberapa',1),
  (565,'lapangan',1),
  (565,'usa',1),
  (565,'studi',1),
  (565,'boston',1),
  (565,'harvard',1),
  (565,'university',1),
  (551,'elections',1),
  (552,'elected',1),
  (552,'democratically',1),
  (552,'government',1),
  (552,'province',1),
  (548,'south',1),
  (552,'policy',1),
  (552,'cluster',1),
  (552,'industry',1),
  (552,'downstream',1),
  (552,'oil',1),
  (552,'palm',1),
  (552,'empowerment',1),
  (552,'village',1);
COMMIT;

#
# Data for the `cms_module_search_index` table  (LIMIT 500,500)
#

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES 
  (552,'ideas',1),
  (552,'develops',1),
  (552,'regional',1),
  (552,'seasoned',1),
  (552,'1992',1),
  (552,'knoxville',1),
  (552,'tennessee',1),
  (552,'university',1),
  (552,'degree',1),
  (552,'master',1),
  (552,'pursued',1),
  (552,'secretary',1),
  (552,'position',1),
  (552,'promoted',1),
  (552,'bappeda',2),
  (552,'agency',1),
  (552,'planning',3),
  (552,'local',1),
  (552,'section',1),
  (552,'economic',1),
  (552,'assigned',1),
  (552,'service',1),
  (552,'civil',1),
  (552,'joined',1),
  (552,'agriculture',1),
  (552,'institute',1),
  (552,'bogor',1),
  (552,'graduating',1),
  (552,'upon',1),
  (552,'1959',1),
  (552,'march',1),
  (552,'muda',1),
  (552,'lubuk',1),
  (552,'born',1),
  (552,'71016161',1),
  (552,'62852',1),
  (552,'22224',1),
  (552,'62766',1),
  (552,'indonesia',1),
  (552,'451',1),
  (625,'newcomment',2),
  (625,'comment',2),
  (625,'new',2),
  (595,'qqqq',3),
  (594,'xxxx',2),
  (594,'xxxxx',1),
  (593,'asdasda',1),
  (593,'asdasd',3),
  (623,'submit',1),
  (615,'register',4),
  (582,'frontslideshow',1),
  (586,'gif',1),
  (586,'logo1',1),
  (586,'images',1),
  (586,'uploads',1),
  (586,'home',4),
  (552,'antara',1),
  (552,'riau',3),
  (552,'bengkalis',6),
  (552,'head',3),
  (533,'ibraimantra@gmail',1),
  (533,'628123878700',1),
  (533,'62361243831',1),
  (533,'221530',1),
  (533,'62361',1),
  (533,'indonesia',1),
  (533,'mada',1),
  (533,'gajah',1),
  (533,'bali',1),
  (533,'denpasar',2),
  (533,'mayor',1),
  (532,'62815',1),
  (532,'21101',1),
  (532,'62426',1),
  (532,'indonesia',1),
  (532,'hatta',1),
  (532,'soekarno',1),
  (532,'sulawesi',1),
  (532,'west',1),
  (532,'mamuju',2),
  (532,'head',1),
  (532,'district',1),
  (532,'duka',1),
  (532,'suhardi',1),
  (551,'local',1),
  (551,'pemilukada',1),
  (551,'elected',1),
  (551,'democratically',1),
  (551,'businessman',1),
  (551,'seasoned',1),
  (551,'intellectual',1),
  (551,'brilliant',1),
  (551,'known',2),
  (551,'dakwah',1),
  (551,'propagation',1),
  (551,'organizations',1),
  (551,'various',1),
  (551,'serves',1),
  (551,'popular',1),
  (551,'aside',1),
  (551,'kabupaten',1),
  (551,'pembentukan',1),
  (551,'panitia',1),
  (551,'formation',1),
  (551,'committee',1),
  (551,'chair',1),
  (551,'named',1),
  (551,'part',1),
  (551,'previously',1),
  (551,'establishing',1),
  (551,'endeavor',1),
  (551,'role',1),
  (551,'substantial',1),
  (551,'played',1),
  (551,'first',2),
  (551,'university',2),
  (551,'cordova',1),
  (551,'establish',1),
  (551,'2004',1),
  (551,'later',1),
  (551,'years',1),
  (551,'twenty',1),
  (551,'ikhlas',1),
  (551,'school',1),
  (551,'boarding',1),
  (551,'pesantren',1),
  (551,'pondok',1),
  (551,'found',1),
  (551,'helped',2),
  (551,'1984',1),
  (551,'cleric',2),
  (551,'islamic',4),
  (551,'kiai',2),
  (551,'politics',1),
  (551,'joining',1),
  (549,'closely',1),
  (549,'party',1),
  (549,'awakening',1),
  (549,'national',1),
  (549,'pkb',1),
  (549,'joined',1),
  (549,'order',1),
  (549,'new',1),
  (549,'downfall',1),
  (549,'following',1),
  (549,'1999',1),
  (549,'1997',1),
  (549,'assembly',1),
  (549,'consultative',1),
  (549,'people?s',1),
  (549,'rakyat',1),
  (549,'permusyawaratan',1),
  (549,'majelis',1),
  (549,'mpr',1),
  (549,'member',2),
  (549,'movement',2),
  (549,'anshor',3),
  (549,'pemuda',1),
  (549,'gerakan',1),
  (549,'sons',1),
  (549,'ulama?s',1),
  (549,'association',1),
  (549,'putra',1),
  (549,'ikatan',1),
  (549,'ipnu',1),
  (549,'organizations',1),
  (549,'youth',3),
  (549,'affiliated',2),
  (549,'?s',1),
  (549,'ulama',3),
  (549,'nahdathul',4),
  (549,'active',1),
  (549,'jakarta',1),
  (549,'university',1),
  (549,'later',1),
  (550,'elections',1),
  (550,'local',1),
  (550,'2008',1),
  (550,'elected',1),
  (550,'democratically',1),
  (550,'hospital',1),
  (550,'public',1),
  (550,'gambiran',1),
  (550,'director',1),
  (550,'deputy',1),
  (550,'2006',1),
  (550,'beginning',1),
  (550,'internist',1),
  (550,'become',1),
  (550,'study',1),
  (550,'2000',1),
  (550,'continued',1),
  (550,'province',1),
  (550,'aceh',1),
  (550,'junior',1),
  (550,'served',2),
  (550,'1989',1),
  (550,'university',1),
  (550,'brawijaya',1),
  (550,'school',1),
  (550,'graduating',1),
  (550,'upon',1),
  (550,'practice',1),
  (550,'training',1),
  (550,'doctor',2),
  (550,'medical',3),
  (550,'1961',1),
  (550,'september',1),
  (550,'born',1),
  (550,'com',1),
  (550,'samsulashar@gmail',1),
  (536,'62541',1),
  (536,'tenggarong',1),
  (536,'monginsidi',1),
  (536,'wolter',1),
  (536,'kalimantan',2),
  (536,'east',2),
  (536,'kertanegara',1),
  (536,'kutai',1),
  (536,'head',1),
  (536,'district',2),
  (552,'district',4),
  (552,'saleh',1),
  (552,'herliyan',1),
  (532,'suhardiduka',4),
  (533,'dharmawijaya',1),
  (533,'rai',1),
  (533,'bagus',1),
  (533,'ida',1),
  (533,'idabagus',4),
  (549,'enrolled',1),
  (549,'schools',1),
  (549,'boarding',1),
  (549,'islamic',1),
  (549,'several',1),
  (549,'trained',1),
  (549,'1973',1),
  (549,'august',1),
  (549,'born',1),
  (549,'com',1),
  (549,'abdullahazwaranas@yahoo',1),
  (549,'email',1),
  (549,'9667255',1),
  (550,'email',1),
  (550,'39138367',1),
  (550,'62821',1),
  (550,'682885',1),
  (550,'62354',1),
  (536,'widyasari',1),
  (536,'rita',1),
  (536,'mrs',1),
  (536,'ritawidya',4),
  (537,'62727',1),
  (537,'indonesia',1),
  (537,'selatan',1),
  (537,'kalianda',1),
  (537,'bangsawan',1),
  (537,'indra',1),
  (537,'lampung',4),
  (537,'south',1),
  (537,'head',1),
  (537,'district',1),
  (537,'menoza',1),
  (537,'rycko',5),
  (551,'1958',1),
  (551,'may',1),
  (551,'com',1),
  (551,'born',1),
  (551,'zulkiflimuhadli@gmail',1),
  (551,'email',1),
  (551,'31304233',1),
  (551,'3891799',1),
  (551,'62812',2),
  (551,'81001',1),
  (551,'62372',1),
  (551,'indonesia',1),
  (551,'taliwang',3),
  (551,'karno',1),
  (551,'bung',1),
  (551,'jalan',1),
  (551,'tenggara',2),
  (551,'nusa',2),
  (551,'west',6),
  (551,'barat',2),
  (551,'sumbawa',7),
  (551,'head',4),
  (551,'district',8),
  (549,'62815',1),
  (549,'418333',1),
  (549,'42500',1),
  (549,'62333',2),
  (549,'indonesia',2),
  (549,'100',1),
  (549,'yani',1),
  (549,'ahmad',1),
  (549,'java',3),
  (549,'east',3),
  (550,'indonesia',1),
  (550,'rachmat',1),
  (550,'basuki',1),
  (550,'kediri',5),
  (550,'mayor',2),
  (552,'herliyansaleh',4),
  (548,'menoza',1),
  (548,'rycko',1),
  (551,'muhadli',3),
  (551,'zulkifli',9),
  (533,'com',1),
  (549,'elected',3),
  (549,'banyuwangi',4),
  (549,'head',2),
  (549,'district',3),
  (549,'anas',1),
  (549,'azwar',1),
  (549,'abdullah',5),
  (550,'ashar',2),
  (550,'samsul',2),
  (550,'samsulashar',4),
  (536,'62811',1),
  (536,'5331117',1),
  (537,'721971',1),
  (537,'email',1),
  (537,'rycko@yahoo',1),
  (537,'com',1),
  (548,'kalimantan',1),
  (548,'kertanegara',1),
  (548,'kutai',1),
  (548,'widyasari',1),
  (548,'rita',1),
  (548,'mrs',1),
  (548,'kediri',1),
  (548,'mayor',1),
  (548,'ashar',1),
  (548,'samsul',1),
  (548,'java',1),
  (548,'east',2),
  (548,'banyuwangi',1),
  (548,'anas',1),
  (548,'azwar',1),
  (548,'abdullah',1),
  (548,'muhadli',1),
  (548,'zulkifli',1),
  (548,'sulawesi',2),
  (548,'west',2),
  (548,'mamuju',2),
  (548,'duka',1),
  (548,'suhardi',1),
  (548,'dharmawijaya',1),
  (548,'rai',1),
  (548,'bagus',1),
  (548,'ida',1),
  (548,'riau',2),
  (548,'head',7),
  (548,'bengkalis',2),
  (548,'district',10),
  (548,'saleh',1),
  (548,'herliyan',1),
  (548,'pertama',2),
  (548,'periode',2),
  (548,'fti',2),
  (548,'pengurus',4),
  (548,'lampung',2),
  (549,'2004',1),
  (549,'legislative',1),
  (549,'elections',1),
  (549,'home',1),
  (549,'2010',1),
  (549,'also',1),
  (549,'chair',1),
  (549,'2011',1),
  (551,'basic',1),
  (551,'needs',1),
  (551,'policies',1),
  (552,'mandate',1),
  (552,'party',1),
  (552,'pan',1),
  (552,'chapter',1),
  (565,'kampus',1),
  (565,'inti',1),
  (565,'program',1),
  (565,'bappeda',1),
  (565,'pejabat',4),
  (565,'berikut',1),
  (565,'sebagai',2),
  (565,'perincian',1),
  (565,'oleh',3),
  (565,'diikuti',2),
  (565,'september',2),
  (565,'tanggal',3),
  (565,'jakarta',1),
  (565,'ini',2),
  (565,'peraturan',1),
  (565,'penyusunan',2),
  (565,'perancangan',1),
  (565,'management',1),
  (565,'public',1),
  (565,'new',1),
  (565,'leadership',1),
  (565,'strategic',1),
  (565,'mempelajari',1),
  (565,'dasar',1),
  (565,'perspektif',1),
  (565,'memberikan',1),
  (565,'akan',6),
  (565,'pengantar',1),
  (565,'yaitu',1),
  (565,'tahap',1),
  (565,'course',3),
  (565,'dua',1),
  (565,'mengikuti',1),
  (565,'untuk',3),
  (565,'dipilih',1),
  (565,'270',1),
  (565,'jumlah',1),
  (565,'185',1),
  (565,'aldies',1),
  (565,'222',1),
  (565,'alumni',4),
  (565,'menghasilkan',1),
  (565,'pada',2),
  (565,'selanjutnya',3),
  (565,'angkatan',2),
  (565,'masing',4),
  (565,'orang',9),
  (555,'transforming',2),
  (555,'leader',2),
  (555,'indonesia',6),
  (555,'angkatan',3),
  (555,'pada',6),
  (555,'sessi',3),
  (555,'pertama',2),
  (555,'hari',4),
  (555,'terakhir',2),
  (555,'dalam',8),
  (555,'pembelajaran',3),
  (555,'havard',2),
  (555,'kennedy',2),
  (555,'scholl',2),
  (555,'tanggal',4),
  (555,'2011',2),
  (555,'prof',4),
  (555,'amy',4),
  (555,'edmonson',2),
  (555,'membahas',2),
  (555,'meledaknya',2),
  (555,'pesawat',6),
  (555,'ulang',7),
  (555,'alik',5),
  (555,'chalenger',2),
  (555,'diatas',2),
  (555,'samudera',2),
  (555,'atlantik',2),
  (555,'setelah',3),
  (555,'menit',3),
  (555,'diluncurkan',2),
  (555,'tahun',5),
  (555,'1980',2),
  (555,'nasa',6),
  (555,'sebagai',2),
  (555,'badan',1),
  (555,'ruang',1),
  (555,'angkasa',2),
  (555,'amerika',2),
  (555,'telah',6),
  (555,'mengontrak',1),
  (555,'perusahaan',2),
  (555,'moron',2),
  (555,'thiokol',2),
  (555,'untuk',2),
  (555,'rancangan',2),
  (555,'srb',2),
  (555,'yaitu',1),
  (555,'salah',2),
  (555,'komponen',2),
  (555,'dari',6),
  (555,'chalenger',4),
  (555,'tersebut',2),
  (555,'mengandalkan',1),
  (555,'ring',4),
  (555,'mengankat',1),
  (555,'berukuran',1),
  (555,'besar',1),
  (555,'missi',1),
  (555,'chalengger',2),
  (555,'tunda',1),
  (555,'beberapa',3),
  (555,'kali',1),
  (555,'sehingga',2),
  (555,'pemimpin',1),
  (555,'merasa',1),
  (555,'penyebab',1),
  (555,'pengunduran',2),
  (555,'ini',7),
  (555,'januari',2),
  (555,'1986',3),
  (555,'terjadilah',1),
  (555,'proses',4),
  (555,'pengambilan',4),
  (555,'keputusan',6),
  (555,'peluncur',1);
COMMIT;

#
# Data for the `cms_module_search_index` table  (LIMIT 1000,500)
#

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES 
  (555,'yang',15),
  (555,'penuh',1),
  (555,'emosional',1),
  (555,'intinya',1),
  (555,'boisjoly',4),
  (555,'thiokal',1),
  (555,'mengingatkan',1),
  (555,'bahan',1),
  (555,'akan',1),
  (555,'meleleh',1),
  (555,'suhu',1),
  (555,'jika',1),
  (555,'prediksii',1),
  (555,'cuaca',1),
  (555,'peluncuran',7),
  (555,'udara',1),
  (555,'benar',1),
  (555,'larry',2),
  (555,'mulloy',3),
  (555,'pemimpin',2),
  (555,'dan',11),
  (555,'stafnya',1),
  (555,'menclaim',1),
  (555,'terlalu',1),
  (555,'vokal',1),
  (555,'bisa',2),
  (555,'mengancam',1),
  (555,'jadwal',2),
  (555,'ditetapkan',2),
  (555,'atasan',1),
  (555,'dengan',9),
  (555,'mendiskusikan',1),
  (555,'pendapat',1),
  (555,'antara',2),
  (555,'lain',2),
  (555,'kondisi',2),
  (555,'saat',1),
  (555,'peluncuran',1),
  (555,'sebelumnya',1),
  (555,'ternyata',1),
  (555,'aman',1),
  (555,'rusia',1),
  (555,'meluncurkan',1),
  (555,'juga',1),
  (555,'pengikisan',1),
  (555,'lebih',2),
  (555,'panas',1),
  (555,'jangan',2),
  (555,'ditumpangi',1),
  (555,'kepentingan',1),
  (555,'pihak',1),
  (555,'menginginkan',1),
  (555,'ditunda',1),
  (555,'rapat',4),
  (555,'memutuskan',1),
  (555,'challanger',1),
  (555,'tetap',1),
  (555,'dilaksanakan',2),
  (555,'sesuai',2),
  (555,'kenyataan',1),
  (555,'pahit',1),
  (555,'diterima',1),
  (555,'atas',1),
  (555,'arogansi',3),
  (555,'sendiri',1),
  (555,'terjadi',4),
  (555,'challenger',2),
  (555,'meledak',1),
  (555,'kepingan',2),
  (555,'ditemukan',1),
  (555,'jatuh',1),
  (555,'tersebar',1),
  (555,'laut',1),
  (555,'atlantikk',1),
  (555,'astronot',1),
  (555,'dalamnya',1),
  (555,'dunia',1),
  (555,'antariksa',1),
  (555,'terpukul',1),
  (555,'sebuah',3),
  (555,'error',6),
  (555,'type',6),
  (555,'iii',6),
  (555,'menyajikan',1),
  (555,'kasus',3),
  (555,'bantuan',1),
  (555,'video',1),
  (555,'rekaman',1),
  (555,'secara',1),
  (555,'apik',1),
  (555,'sekali',1),
  (555,'membuat',1),
  (555,'para',3),
  (555,'terbangun',1),
  (555,'praktek',1),
  (555,'selama',1),
  (555,'mungkin',1),
  (555,'sering',3),
  (555,'pemerintahan',1),
  (555,'daerah',4),
  (555,'adalah',2),
  (555,'istilah',1),
  (555,'kalimat',1),
  (555,'maksudnya',1),
  (555,'?melaksanakan',1),
  (555,'salah?',2),
  (555,'dimulai',1),
  (555,'dengan',1),
  (555,'?identifikasi',1),
  (555,'masalah',2),
  (555,'disadari',1),
  (555,'atau',1),
  (555,'tidak',1),
  (555,'pemerintah',3),
  (555,'berpeluang',1),
  (555,'terjebak',1),
  (555,'menangani',1),
  (555,'seperti',2),
  (555,'dilakukan',1),
  (555,'shuttle',2),
  (555,'space',2),
  (555,'bermula',1),
  (555,'intervensi',1),
  (555,'pimpinan',1),
  (555,'mematahkan',1),
  (555,'mementahkan',1),
  (555,'seluruh',1),
  (555,'sudah',2),
  (555,'berjalan',2),
  (555,'mekanisme',2),
  (555,'bawah',1),
  (555,'kota',8),
  (555,'ketika',2),
  (555,'sekretaris',2),
  (555,'memimpin',1),
  (555,'rencana',1),
  (555,'kegiatan',5),
  (555,'dihadiri',1),
  (555,'skpd',2),
  (555,'kepala',1),
  (555,'uniit',1),
  (555,'bagus',1),
  (555,'saran',1),
  (555,'usul',1),
  (555,'ide',1),
  (555,'muncul',1),
  (555,'cerdasnya',1),
  (555,'kesimpulannya',1),
  (555,'mengena',1),
  (555,'kepada',3),
  (555,'melibatkan',1),
  (555,'banyak',1),
  (555,'rakyat',1),
  (555,'lomba',1),
  (555,'olahraga',1),
  (555,'ditingkat',2),
  (555,'kelurahan',1),
  (555,'sebagainya',1),
  (555,'tetapi',2),
  (555,'dipenghujung',1),
  (555,'pak',1),
  (555,'wali',1),
  (555,'masuk',1),
  (555,'beliau',1),
  (555,'langsung',1),
  (555,'memberikan',1),
  (555,'arahan',2),
  (555,'termasuk',1),
  (555,'menentukan',1),
  (555,'harus',1),
  (555,'tanpa',1),
  (555,'resume',1),
  (555,'walikota',2),
  (555,'pertandingan',1),
  (555,'golf',1),
  (555,'eksekutif',1),
  (555,'legislatif',1),
  (555,'upacara',1),
  (555,'malam',1),
  (555,'resepsi',1),
  (555,'semua',1),
  (555,'sejak',1),
  (555,'pagi',1),
  (555,'dipimpi',1),
  (555,'menjadi',1),
  (555,'mentah',1),
  (555,'dimana',1),
  (555,'mana',1),
  (555,'penetapan',1),
  (555,'kebijakan',1),
  (555,'pembangunan',1),
  (555,'lahir',1),
  (555,'pemeimpin',1),
  (555,'edmon',1),
  (555,'membangunkan',1),
  (555,'bupati',1),
  (555,'mengangkat',1),
  (555,'kabupaten',2),
  (555,'ujung',1),
  (555,'tombak',1),
  (555,'referensi',1),
  (555,'transparansi',1),
  (555,'kepemimpinan',3),
  (555,'dapat',1),
  (555,'merubah',1),
  (555,'wajah',1),
  (555,'republik',1),
  (555,'tercinta',1),
  (555,'gaya',2),
  (623,'navigation',1),
  (565,'peserta',3),
  (565,'sebanyak',6),
  (565,'keseluruhan',1),
  (565,'secara',1),
  (565,'ladies',2),
  (565,'wakil',2),
  (565,'walikota',4),
  (565,'isteri',1),
  (565,'bupati',4),
  (565,'bagi',1),
  (565,'kepribadian',1),
  (565,'pengembangan',1),
  (565,'pelaksanaan',3),
  (565,'disertai',1),
  (565,'yang',14),
  (565,'pelatihan',1),
  (565,'pendidikan',1),
  (565,'utama',1),
  (565,'kegiatan',4),
  (565,'merupakan',2),
  (565,'indonesia',4),
  (565,'leaders',4),
  (565,'transforming',4),
  (565,'program',11),
  (565,'education',7),
  (565,'training',4),
  (565,'executive',7),
  (565,'dilanjutkan',2),
  (565,'2011',7),
  (565,'dengan',8),
  (565,'sampai',4),
  (565,'2010',3),
  (565,'tahun',7),
  (565,'dari',5),
  (565,'dilaksanakan',8),
  (565,'okppd',10),
  (565,'daerah',14),
  (565,'pemerintahan',6),
  (565,'penyelenggaraan',7),
  (565,'dan',18),
  (565,'kepemimpinan',5),
  (565,'orientasi',7),
  (565,'melaksanakan',2),
  (565,'telah',7),
  (565,'negeri',5),
  (565,'dalam',9),
  (565,'kementerian',5),
  (565,'diklat',5),
  (565,'badan',5),
  (565,'pertama',1),
  (565,'bertujuan',1),
  (565,'mensosialisasikan',1),
  (565,'dan',1),
  (565,'yusharto',1),
  (565,'kabid',1),
  (565,'otda',1),
  (565,'pum',1),
  (565,'kemendagri',1),
  (565,'mengikuti',2),
  (567,'login',4),
  (623,'news',2),
  (569,'sww',1),
  (569,'xlsx',1),
  (569,'news',3),
  (569,'attachment',3),
  (569,'sample',1),
  (577,'kamusti',1),
  (577,'pdf',4);
COMMIT;

#
# Data for the `cms_module_search_items` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES 
  (1,'Search',15,'template',NULL),
  (5,'Search',17,'template',NULL),
  (30,'Search',19,'template',NULL),
  (35,'Search',21,'template',NULL),
  (37,'Search',20,'template',NULL),
  (39,'Search',18,'template',NULL),
  (44,'Search',1,'global_content',NULL),
  (83,'Search',22,'template',NULL),
  (129,'Search',56,'content',NULL),
  (273,'Search',64,'content',NULL),
  (274,'Search',65,'content',NULL),
  (275,'Search',66,'content',NULL),
  (276,'Search',68,'content',NULL),
  (360,'Search',59,'content',NULL),
  (361,'Search',70,'content',NULL),
  (487,'Search',61,'content',NULL),
  (532,'Search',73,'content',NULL),
  (533,'Search',74,'content',NULL),
  (536,'Search',77,'content',NULL),
  (537,'Search',78,'content',NULL),
  (548,'Search',60,'content',NULL),
  (549,'Search',75,'content',NULL),
  (550,'Search',76,'content',NULL),
  (551,'Search',71,'content',NULL),
  (552,'Search',72,'content',NULL),
  (555,'News',2,'article',NULL),
  (565,'News',3,'article',NULL),
  (567,'Search',80,'content',NULL),
  (569,'News',5,'article',NULL),
  (577,'News',9,'article',NULL),
  (582,'Showtime',1,'show',NULL),
  (586,'Search',15,'content',NULL),
  (589,'Search',58,'content',NULL),
  (593,'News',15,'article','2012-05-21 01:50:41'),
  (594,'News',20,'article','2012-05-21 02:01:46'),
  (595,'News',21,'article','2012-05-21 02:11:29'),
  (614,'News',22,'article','2012-05-21 06:23:14'),
  (615,'Search',82,'content',NULL),
  (623,'Search',16,'template',NULL),
  (624,'Search',23,'template',NULL),
  (625,'Search',83,'content',NULL),
  (627,'Search',62,'content',NULL);
COMMIT;

#
# Data for the `cms_module_search_items_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_search_items_seq` (`id`) VALUES 
  (627);
COMMIT;

#
# Data for the `cms_module_selfreg_properties_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_selfreg_properties_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_module_selfreg_users_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_selfreg_users_seq` (`id`) VALUES 
  (3);
COMMIT;

#
# Data for the `cms_module_showtime` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_showtime` (`picture_id`, `active`, `show_id`, `picture_name`, `picture_number`, `picture_url`, `thumbnail_path`, `picture_path`, `comment`) VALUES 
  (362,1,1,'9.26.11Indonesia010.jpg',7,NULL,'/Gallery/Classroom/thumb_9.26.11Indonesia010.jpg','/Gallery/Classroom/9.26.11Indonesia010.jpg',NULL),
  (363,1,1,'9.26.11Indonesia016.jpg',8,NULL,'/Gallery/Classroom/thumb_9.26.11Indonesia016.jpg','/Gallery/Classroom/9.26.11Indonesia016.jpg',NULL),
  (364,1,1,'9.26.11Indonesia020.jpg',9,NULL,'/Gallery/Classroom/thumb_9.26.11Indonesia020.jpg','/Gallery/Classroom/9.26.11Indonesia020.jpg',NULL),
  (365,1,1,'9.26.11Indonesia024.jpg',10,NULL,'/Gallery/Classroom/thumb_9.26.11Indonesia024.jpg','/Gallery/Classroom/9.26.11Indonesia024.jpg',NULL),
  (366,1,1,'9.26.11Indonesia025.jpg',11,NULL,'/Gallery/Classroom/thumb_9.26.11Indonesia025.jpg','/Gallery/Classroom/9.26.11Indonesia025.jpg',NULL),
  (367,1,1,'9.26.11Indonesia034.jpg',12,NULL,'/Gallery/Classroom/thumb_9.26.11Indonesia034.jpg','/Gallery/Classroom/9.26.11Indonesia034.jpg',NULL);
COMMIT;

#
# Data for the `cms_module_showtime_name` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_showtime_name` (`show_id`, `show_name`, `st_animationtype`, `st_height`, `st_width`, `st_rotatetime`, `st_transitiontime`, `st_transition`, `st_easeFunc`, `st_ease`, `st_autoplay`, `st_showcontrols`, `st_showcontrolssub`, `st_textbgcolor`, `st_showtext`, `st_showcomment`, `st_showalt`, `st_textcolor`, `st_textsize`, `st_titlesize`, `st_fonttype`, `st_bgcolor`, `st_scale`, `st_shuffle`, `st_wmode`, `st_commentpos`, `st_navbut`, `st_nav_bordercolor`, `st_nav_bordersize`, `st_nav_radius`, `st_nav_bgcolor`, `st_nav_bgactivecolor`, `st_nav_textcolor`, `st_nav_showtext`, `st_nav_size`, `st_nav_pos`, `st_nav_padding`, `st_target`, `st_link`) VALUES 
  (1,'FrontSlideShow','jQuery',320,575,5,1,'fade','Linear','EaseNone',1,0,1004,'#000000',0,0,0,'#eeeeee',12,16,'sans','#000000','exactfit',0,'window','top',1,'#CCCCCC',1,0,'#EEEEEE','#FFFFFF','#333333',1,20,'bottom_right',5,'_self','internal page');
COMMIT;

#
# Data for the `cms_module_showtime_name_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_showtime_name_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_showtime_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_showtime_seq` (`id`) VALUES 
  (367);
COMMIT;

#
# Data for the `cms_module_templates` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES 
  ('CMSPrinting','linktemplate','{if isset($imgsrc)}\n{capture assign=''image''}\n  <img src=\"{$imgsrc}\" title=\"{$linktext}\" alt=\"{$linktext}\" {if isset($imgclass) && $imgclass!=''''}class=\"{$imgclass}\"{/if} />\n{/capture}\n<a href=\"{$href}\" class=\"{$class}\" {$target} {if isset($more)}{$more}{/if} rel=\"nofollow\">{$image}</a>\n{else}\n<a href=\"{$href}\" class=\"{$class}\" {$target} {if isset($more)}{$more}{/if} rel=\"nofollow\">{$linktext}</a>\n{/if}\n','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  ('CMSPrinting','printtemplate','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n  <head>\n    <title>Printing {title}</title>\n    <meta name=\"robots\" content=\"noindex\"></meta>\n    <base href=\"{$rooturl}\" />\n    <meta name=\"Generator\" content=\"CMS Made Simple - Copyright (C) 2004-11 Ted Kulp. All rights reserved.\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset={$encoding}\" />\n\n    {cms_stylesheet media=''print'' templateid=$templateid}\n\n    {if $overridestylesheet!=''''}\n    <style type=\"text/css\">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style=\"background-color: white; color: black; background-image: none; text-align: left;\">\t\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  ('News','summarySample','{if $pagecount > 1}\r\n\t<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" width=\"200\">\r\n\t\t<tr>\r\n\t\t\t{if $pagenumber > 1}\r\n\t\t\t\t<td width=\"10%\" align=\"center\">\r\n\t\t\t\t\t{$firstpage}\r\n\t\t\t\t</td>\r\n\t\t\t\t<td width=\"10%\" align=\"center\">\r\n\t\t\t\t\t{$prevpage}\t\t\t\t\t\r\n\t\t\t\t</td>\r\n\t\t\t{else}\r\n\t\t\t\t<td width=\"10%\" align=\"center\">&nbsp;</td>\r\n\t\t\t\t<td width=\"10%\" align=\"center\">&nbsp;</td>\r\n\t\t\t{/if}\r\n\r\n\t\t\t<td width=\"40%\" align=\"center\">\r\n\t\t\t\t{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\r\n\t\t\t</td>\r\n\r\n\t\t\t{if $pagenumber < $pagecount}\r\n\t\t\t\t<td width=\"10%\" align=\"center\">\r\n\t\t\t\t\t{$nextpage}\r\n\t\t\t\t</td>\r\n\t\t\t\t<td width=\"10%\" align=\"center\">\r\n\t\t\t\t\t{$lastpage}\t\t\t\t\r\n\t\t\t\t</td>\r\n\t\t\t{else}\r\n\t\t\t\t<td width=\"10%\" align=\"center\">&nbsp;</td>\r\n\t\t\t\t<td width=\"10%\" align=\"center\">&nbsp;</td>\r\n\t\t\t{/if}\r\n\t\t</tr>\r\n\t</table>\r\n{/if}\r\n\r\n{foreach from=$items item=entry}\r\n<div class=\"NewsSummary\">\r\n\r\n<div class=\"NewsSummaryLink\">\r\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\r\n</div>\r\n\r\n{if $entry->postdate}\r\n\t<div class=\"NewsSummaryPostdate\">\r\n\t\tPosted On {$entry->postdate|cms_date_format} by \"{$entry->author}\"\r\n\t</div>\r\n{/if}\r\n\r\n{if $entry->summary}\r\n\t<div class=\"NewsSummarySummary\">\r\n\t\t{eval var=$entry->summary}\r\n\t</div>\r\n{else if $entry->content}\r\n\t<div class=\"NewsSummaryContent\">\r\n\t\t{eval var=$entry->content}\r\n\t</div>\r\n{/if}\r\n\r\n<div class=\"NewsSummaryMorelink\">\r\n                 <a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\" style=\"color: #FFFFFF; background-color: #A71517; padding: 4px 4px 4px 4px; font-size: 10px\"><em>SELENGKAPNYA</em></a>\r\n\t</div>\r\n\r\n\r\n\r\n{if isset($entry->extra)}\r\n    <div class=\"NewsSummaryExtra\">\r\n        {eval var=$entry->extra}\r\n{*\r\n\t {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} \r\n*}\r\n    </div>\r\n{/if}\r\n\r\n\r\n\r\n\r\n</div>\r\n{/foreach}\r\n<!-- End News Display Template -->\r\n','2011-10-29 02:15:15','2011-11-23 08:09:59'),
  ('SelfRegistration','selpkgtemplate','{* select subscription package *}\n<div id=\"selfreg_selpkg\">\n{$formstart}\n\n<table>\n{foreach from=$pkgs item=pkg}\n  <tr>\n   <td align=\"left\" width=\"5%\">\n     <input type=\"radio\" name=\"{$actionid}selfreg_pkg\" value=\"{$pkg.id}\"/>\n   </td>\n   <td align=\"left\">{$pkg.prompt}</td>\n   <td align=\"right\" width=\"15%\">{$currency_symbol}{$pkg.cost|number_format:2}{$currency_code}</td>\n  </tr>\n  <tr>\n   <td></td>\n   <td colspan=\"3\">{$pkg.description}</td>\n  </tr>\n{/foreach}\n</table>\n\n<div class=\"row\">\n  <p class=\"prompt\"></p>\n  <p class=\"input\">\n    <input type=\"submit\" name=\"{$actionid}selfreg_submit\" value=\"{$SelfRegistration->Lang(''submit'')}\"/>\n  </p>\n</div>\n\n{$formend}\n</div>','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_reg1template','<!-- Registration 1 template -->\r\n\r\n{* {$title} *}\r\n{if isset($message) && $message != ''''}\r\n  {if isset($error) && $error != ''''}\r\n    <p><font color=\"red\">{$message}</font></p>\r\n  {else}\r\n    <p>{$message}</p>\r\n  {/if}\r\n{/if}\r\n{$startform}\r\n{if $controlcount > 0}\r\n  <center>\r\n  <table width=\"75%\">\r\n{foreach from=$controls item=control}\r\n  <tr>\r\n    <td>{$control->hidden}\r\n    {if $control->color != ''''}\r\n      <font color=\"{$control->color}\">{$control->prompt}{$control->marker}</font>\r\n    {else}\r\n      {$control->prompt}{$control->marker}\r\n    {/if}\r\n    </td>\r\n    <td>{$control->control}</td>\r\n  </tr>\r\n{/foreach}\r\n  </table>\r\n  </center>\r\n<br/>\r\n{/if}\r\n{if isset($captcha)}\r\n{$captcha_title}: {$input_captcha}<br />\r\n  {$captcha}<br />\r\n{/if}\r\n {$hidden}{if isset($hidden2)}{$hidden2}{/if}{$submit}<br/>\r\n{$msg_sendanotheremail}&nbsp;{$link_sendanotheremail}\r\n{$endform}\r\n<!-- Registration 1 template -->\r\n ','2011-11-23 02:42:42','2011-11-23 03:42:57'),
  ('News','detailSample','{literal}\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/jquery-1.4.4.js\"></script>\r\n{/literal}\r\n\r\n{* News module entry object reference:\r\n   ------------------------------\r\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\r\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\r\n   you will find a referennce to the available data.\r\n\r\n   ====\r\n   news_article Object Reference\r\n   ====\r\n\r\n     Members:\r\n     --\r\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\r\n\r\n     The following members are available in the entry array:\r\n   \r\n     id (integer)           = The unique article id.\r\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\r\n     title (string)         = The title of the article.\r\n     summary (text)         = The summary text (may be empty or unset).\r\n     extra (string)         = The \"extra\" data associated with the article (may be empty or unset).\r\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\r\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\r\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\r\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\r\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\r\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\r\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\r\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\r\n     category (string)      = The name of the category that this article is associated with.\r\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\r\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\r\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\r\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\r\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\r\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\r\n     \r\n\r\n   ====\r\n   news_field Object Reference\r\n   ====\r\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\r\n\r\n     Members:\r\n     --------\r\n     id (integer)  = The id of the field definition\r\n     name (string) = The name of the field\r\n     type (string) = The type of field\r\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\r\n     item_order (integer) = The order of the field\r\n     public (integer) = A flag indicating wether the field is public or not\r\n     value (mixed)    = The value of the field.\r\n\r\n\r\n   ====\r\n   Below, you will find the normal detail template information.  Modify this template as desired.\r\n*}\r\n\r\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=''canonical'' value=$entry->canonical}\r\n{/if}\r\n\r\n{if $entry->postdate}\r\n\t<div id=\"NewsPostDetailDate\">\r\n\t\t{$entry->postdate|cms_date_format}\r\n\t</div>\r\n{/if}\r\n\r\n<center>\r\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\r\n</center>\r\n\r\n<hr id=\"NewsPostDetailHorizRule\" />\r\n\r\n{*\r\n{if $entry->summary}\r\n\t<div id=\"NewsPostDetailSummary\">\r\n\t\t<strong>\r\n\t\t\t{eval var=$entry->summary}\r\n\t\t</strong>\r\n\t</div>\r\n{/if}\r\n*}\r\n\r\n<div id=\"NewsPostDetailContent\">\r\n\t{eval var=$entry->content}\r\n</div>\r\n\r\n{if $entry->extra}\r\n\t<div id=\"NewsPostDetailExtra\">\r\n\t\t{$extra_label} {$entry->extra}\r\n\t</div>\r\n{/if}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<TABLE border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n\t<TR>\r\n\t\t<TD width=\"50%\" align=\"left\">\r\n\t\t\t{* display custom field as file *}\r\n\t\t\t{if isset($entry->fields)}\r\n\t\t\t\t{foreach from=$entry->fields item=''field''}\r\n\t\t\t\t\t<div class=\"NewsSummaryField\">\r\n\t\t\t\t\t\t{if $field->type == ''file''}\r\n\r\n\t\t\t\t\t\t\t{* select file type to display download icon *}\r\n\t\t\t\t\t\t\t{if substr_count($field->value,\"xls\")}\r\n\t\t\t\t\t\t\t\t<TABLE border=\"0\" width=\"100%\">\r\n\t\t\t\t\t\t\t\t\t<TR>\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"12\">\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">\r\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"uploads/images/excel.png\" width=\"20\" />\r\n\t\t\t\t\t\t\t\t\t\t\t</a>\r\n\t\t\t\t\t\t\t\t\t\t</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"5\">&nbsp;</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD><a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">{$field->value}</a></TD>\r\n\t\t\t\t\t\t\t\t\t</TR>\r\n\t\t\t\t\t\t\t\t</TABLE>\r\n\t\t\t\t\t\t\t{elseif substr_count($field->value,\"doc\")}\r\n\t\t\t\t\t\t\t\t<TABLE border=\"0\" width=\"100%\">\r\n\t\t\t\t\t\t\t\t\t<TR>\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"12\">\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">\r\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"uploads/images/word.png\" width=\"20\" />\r\n\t\t\t\t\t\t\t\t\t\t\t</a>\r\n\t\t\t\t\t\t\t\t\t\t</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"5\">&nbsp;</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD><a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">{$field->value}</a></TD>\r\n\t\t\t\t\t\t\t\t\t</TR>\r\n\t\t\t\t\t\t\t\t</TABLE>\r\n\r\n\t\t\t\t\t\t\t{elseif substr_count($field->value,\"pdf\")}\r\n\t\t\t\t\t\t\t\t<TABLE border=\"0\" width=\"100%\">\r\n\t\t\t\t\t\t\t\t\t<TR>\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"12\">\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">\r\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"uploads/images/pdf.png\" width=\"20\" />\r\n\t\t\t\t\t\t\t\t\t\t\t</a>\r\n\t\t\t\t\t\t\t\t\t\t</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"5\">&nbsp;</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD><a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">{$field->value}</a></TD>\r\n\t\t\t\t\t\t\t\t\t</TR>\r\n\t\t\t\t\t\t\t\t</TABLE>\r\n\r\n\t\t\t\t\t\t\t{else}\r\n\t\t\t\t\t\t\t\t<TABLE border=\"0\" width=\"100%\">\r\n\t\t\t\t\t\t\t\t\t<TR>\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"12\">\r\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">\r\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"uploads/images/file.png\" width=\"20\" />\r\n\t\t\t\t\t\t\t\t\t\t\t</a>\r\n\t\t\t\t\t\t\t\t\t\t</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD width=\"5\">&nbsp;</TD>\r\n\t\t\t\t\t\t\t\t\t\t<TD><a href=\"{$entry->file_location}/{$field->value}\" target=\"_blank\">{$field->value}</a></TD>\r\n\t\t\t\t\t\t\t\t\t</TR>\r\n\t\t\t\t\t\t\t\t</TABLE>\r\n\t\t\t\t\t\t\t{/if}\r\n\t\t\t\t\t\t\t{else}\r\n\t\t\t\t\t\t\t{$field->name}:&nbsp;{eval var=$field->value}\r\n\t\t\t\t\t\t{/if}\r\n\t\t\t\t\t</div>\r\n\t\t\t\t{/foreach}\r\n\t\t\t{/if}\r\n\t\t</TD>\t\r\n\t\t<TD width=\"50%\" align=\"right\">\r\n\t\t\t{if $return_url != \"\"}\r\n\t\t\t\t<div id=\"NewsPostDetailReturnLink\">\r\n\t\t\t\t\t{$return_url}{if $category_name != ''''} - {$category_link}{/if}\r\n\t\t\t\t</div>\r\n\t\t\t{/if}\r\n\t\t</TD>\r\n\t</TR>\r\n</TABLE>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div id=\"NewsPostDetailCategory\">\r\n<TABLE border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n\t<TR>\r\n\t\t<TD width=\"50%\" align=\"left\">\r\n\t\t\t{if $entry->category}\r\n\t\t\t\t{$category_label} {$entry->category}\r\n\t\t\t{/if}\r\n\t\t</TD>\t\r\n\t\t<TD width=\"50%\" align=\"right\">\r\n\t\t\t{if $entry->author}\r\n\t\t\t\t{$author_label} {$entry->author}\r\n\t\t\t{/if}\r\n\t\t</TD>\r\n\t</TR>\r\n</TABLE>\r\n</div>','2011-10-29 02:15:15','2011-11-23 08:01:02'),
  ('News','formSample','{* original form template *}\r\n\r\n{if isset($error)}\r\n  <h3><font color=\"red\">{$error}</font></h3>\r\n{else}\r\n  {if isset($message)}\r\n    <h3>{$message}</h3>\r\n  {/if}\r\n{/if}\r\n{$startform}\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">*{$titletext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputtitle}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$categorytext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputcategory}</p>\r\n\t</div>\r\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$summarytext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputsummary}</p>\r\n\t</div>\r\n{/if}\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">*{$contenttext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputcontent}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$extratext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputextra}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$startdatetext}:</p>\r\n\t\t<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$enddatetext}:</p>\r\n\t\t<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\r\n\t</div>\r\n\t{if isset($customfields)}\r\n\t   {foreach from=$customfields item=''onefield''}\r\n\t      <div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$onefield->name}:</p>\r\n\t\t<p class=\"pageinput\">{$onefield->field}</p>\r\n\t      </div>\r\n\t   {/foreach}\r\n\t{/if}\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">&nbsp;</p>\r\n\t\t<p class=\"pageinput\">{$hidden}{$submit}{$cancel}</p>\r\n\t</div>\r\n{$endform}\r\n','2011-10-29 02:15:15','2011-11-16 04:06:05'),
  ('News','browsecatSample','{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  ('News','email_template','A new news article has been posted to your website.  The details are as follows:\r\nTitle:      {$title}\r\nIP Address: {$ipaddress}\r\nSummary:    {$summary|strip_tags}\r\nPost Date:  {$postdate|date_format}\r\nStart Date: {$startdate|date_format}\r\nEnd Date:   {$enddate|date_format}\r\n','2011-10-29 02:15:15','2011-11-23 01:54:13'),
  ('Search','displaysearch','\n{$startform}\n<label for=\"{$search_actionid}searchinput\">{$searchprompt}:&nbsp;</label><input type=\"text\" class=\"search-input\" id=\"{$search_actionid}searchinput\" name=\"{$search_actionid}searchinput\" size=\"20\" maxlength=\"50\" value=\"{$searchtext}\" {$hogan}/>\n{*\n<br/>\n<input type=\"checkbox\" name=\"{$search_actionid}use_or\" value=\"1\"/>\n*}\n<input class=\"search-button\" name=\"submit\" value=\"{$submittext}\" type=\"submit\" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}','2011-10-29 02:15:17','2011-10-29 02:15:17'),
  ('Search','displayresult','<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href=\"{$entry->url}\">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == ''News''}{News action=''detail'' article_id=$entry->modulerecord detailpage=''News''} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}','2011-10-29 02:15:17','2011-10-29 02:15:17'),
  ('AComments','default_display','<div id=\"comments\">\n\n{if $items}\n<ul>\n{/if}\n{foreach from=$items item=entry}\n\t<li class=\"{$entry->cssclass}\">{if $entry->comment_title}<strong>{$entry->comment_title}</strong><br />{/if}\n\t{if $entry->comment_author}\n\t\t{if $entry->author_website}<a href=\"{$entry->author_website}\" target=\"_blank\">{$entry->comment_author}</a> - \n\t\t{else}{$entry->comment_author} - \n\t\t{/if}\n\t{else if $entry->author_website}<a href=\"{$entry->author_website}\" target=\"_blank\">{$entry->author_website}</a> - \n\t{/if}\n\t{$entry->date}<br />\n\t{$entry->comment_data}\n\t</li>\n{/foreach}\n{if $items}\n</ul>\n{/if}\n\n{if FALSE == $errormessage}\n{startExpandCollapse id=\"name\" title=\"$addacomment\"}\n{else}\n{$errormessage}\n{/if}\n<h3>{$addacomment}</h3>\n\n{$startform}\n{*<form id=\"{$id}moduleform_1\" method=\"post\" action=\"{$returnurl}\" class=\"cms_form\">*}\n{$image}\n\n<table>\n\t<tr>\n\t\t<td>{$titletxt}:</td>\n\t\t<td>{$inputtitle}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$yournametxt}(*):</td>\n\t\t<td>{$inputyourname}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$emailtxt}:</td>\n\t\t<td>{$inputemail}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$notifytxt}:</td>\n\t\t<td>{$inputnotify}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$websitetxt}:</td>\n\t\t<td>{$inputwebsite}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$commenttxt}(*):</td>\n\t\t<td>{$inputcomment}</td>\n\t</tr>\n{if $spamprotect}\n\t<tr>\n\t\t<td>{$entercodetxt}:</td>\n\t\t<td>{$spamprotectimage}<br />{$inputentercode}</td>\n\t</tr>\n{/if}\n\t<tr>\n\t\t<td>&nbsp;</td>\n\t\t<td>{$submit} {$cancel}</td>\n\t</tr>\n</table>\n\n{*</form>*}\n{$endform}\n{if FALSE == $errormessage}\n{stopExpandCollapse} \n{/if}\n\n{if $trackback == 1}\n<span class=\"trackback\"><a href=\"{$trackbackurl}\" rel=\"nofollow\">Trackback-URL</a></span>\n<!--\n<rdf:RDF\n\txmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n\txmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n\txmlns:trackback=\"{$trackbackurl}\">\n<rdf:Description\n\trdf:about=\"{$redirecturl}\"\n\tdc:title=\"{$pagetitle}\"\n\tdc:identifier=\"{$redirecturl}\"\n\ttrackback:ping=\"{$trackbackurl}\" />\n</rdf:RDF>\n-->\n{/if}\n\n</div>','2011-10-29 02:52:40','2011-10-29 02:52:40'),
  ('Gallery','Fancybox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a class=\"group\" href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"gallery-{$galleryid}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n\tposition: fixed;\r\n\ttop: 50%;\r\n\tleft: 50%;\r\n\twidth: 40px;\r\n\theight: 40px;\r\n\tmargin-top: -20px;\r\n\tmargin-left: -20px;\r\n\tcursor: pointer;\r\n\toverflow: hidden;\r\n\tz-index: 1104;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 40px;\r\n\theight: 480px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n}\r\n\r\n#fancybox-overlay {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tz-index: 1100;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\toverflow: auto;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\tpadding: 20px;\r\n\tz-index: 1101;\r\n\toutline: none;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-outer {\r\n\tposition: relative;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: #000;\r\n}\r\n\r\n#fancybox-content {\r\n\twidth: 0;\r\n\theight: 0;\r\n\tpadding: 0;\r\n\toutline: none;\r\n\tposition: relative;\r\n\toverflow: hidden;\r\n\tz-index: 1102;\r\n\tborder: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: transparent;\r\n\tz-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n\tposition: absolute;\r\n\ttop: -15px;\r\n\tright: -15px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tbackground: transparent url(''../fancybox/fancybox.png'') -40px 0px;\r\n\tcursor: pointer;\r\n\tz-index: 1103;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-error {\r\n\tcolor: #444;\r\n\tfont: normal 12px/20px Arial;\r\n\tpadding: 14px;\r\n\tmargin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: none;\r\n\toutline: none;\r\n\tline-height: 0;\r\n\tvertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tborder: none;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n\tposition: absolute;\r\n\tbottom: 0px;\r\n\theight: 100%;\r\n\twidth: 35%;\r\n\tcursor: pointer;\r\n\toutline: none;\r\n\tbackground: transparent url(''../fancybox/blank.gif'');\r\n\tz-index: 1102;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-left {\r\n\tleft: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n\tright: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n\tposition: absolute;\r\n\ttop: 50%;\r\n\tleft: -9999px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tmargin-top: -15px;\r\n\tcursor: pointer;\r\n\tz-index: 1102;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n\tvisibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n\tleft: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n\tleft: auto;\r\n\tright: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n\tposition: absolute;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\twidth: 20px;\r\n\theight: 20px;\r\n\tz-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n\ttop: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n\ttop: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n\ttop: 0;\r\n\tright: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n\tbackground-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n\tbottom: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n\tbottom: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n\tbackground-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n\tbottom: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n\ttop: 0;\r\n\tleft: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n\ttop: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n\tfont-family: Helvetica;\r\n\tfont-size: 12px;\r\n\tz-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n\tpadding-bottom: 10px;\r\n\ttext-align: center;\r\n\tcolor: #333;\r\n\tbackground: #fff;\r\n\tposition: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n\tpadding-top: 10px;\r\n\tcolor: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n\tposition: absolute;\r\n\tbottom: 0;\r\n\tleft: 0;\r\n\tcolor: #FFF;\r\n\ttext-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n\tpadding: 10px;\r\n\tbackground-image: url(''../fancybox/fancy_title_over.png'');\r\n\tdisplay: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n\tposition: absolute;\r\n\tleft: 0;\r\n\tbottom: -20px;\r\n\theight: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n\tborder: none;\r\n\tborder-collapse: collapse;\r\n\twidth: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n\tborder: none;\r\n\twhite-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n\tcolor: #FFF;\r\n\tline-height: 29px;\r\n\tfont-weight: bold;\r\n\tpadding: 0 0 3px 0;\r\n\tbackground: url(''../fancybox/fancybox-x.png'') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }\r\n{*----------<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/fancybox/jquery.fancybox.pack.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.mousewheel.pack.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n\t$(\"a.group\").fancybox({\r\n\t\t''speedIn'':\t\t300,\r\n\t\t''speedOut'':\t300,\r\n\t\t''overlayColor'':\t''#000'',\r\n\t\t''overlayOpacity'':\t0.7\r\n\t});\r\n});\r\n</script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Lightbox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"lightbox[gallery]\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;*/\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* LIGHTBOX */\r\n\r\n#lightbox{\tposition: absolute;\tleft: 0; width: 100%; z-index: 100; text-align: center; line-height: 0;}\r\n#lightbox img{ width: auto; height: auto;}\r\n#lightbox a img{ border: none; }\r\n\r\n#outerImageContainer{ position: relative; background-color: #fff; width: 250px; height: 250px; margin: 0 auto; }\r\n#imageContainer{ padding: 10px; }\r\n\r\n#loading{ position: absolute; top: 40%; left: 0%; height: 25%; width: 100%; text-align: center; line-height: 0; }\r\n#hoverNav{ position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#imageContainer>#hoverNav{ left: 0;}\r\n#hoverNav a{ outline: none;}\r\n\r\n#prevLink, #nextLink{ width: 49%; height: 100%; background-image: url(data:image/gif;base64,AAAA); /* Trick IE into showing hover */ display: block; }\r\n#prevLink { left: 0; float: left;}\r\n#nextLink { right: 0; float: right;}\r\n#prevLink:hover, #prevLink:visited:hover { background: url(../lightbox/images/prevlabel.gif) left 15% no-repeat; }\r\n#nextLink:hover, #nextLink:visited:hover { background: url(../lightbox/images/nextlabel.gif) right 15% no-repeat; }\r\n\r\n#imageDataContainer{ font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; margin: 0 auto; line-height: 1.4em; overflow: auto; width: 100%\t; }\r\n\r\n#imageData{\tpadding:0 10px; color: #666; }\r\n#imageData #imageDetails{ width: 70%; float: left; text-align: left; }\t\r\n#imageData #caption{ font-weight: bold;\t}\r\n#imageData #numberDisplay{ display: block; clear: left; padding-bottom: 1.0em;\t}\t\t\t\r\n#imageData #bottomNavClose{ width: 66px; float: right;  padding-bottom: 0.7em; outline: none;}\t \t\r\n\r\n#overlay{ position: absolute; top: 0; left: 0; z-index: 90; width: 100%; height: 500px; background-color: #000; }\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/lightbox/js/prototype.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/lightbox/js/scriptaculous.js?load=effects,builder\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/lightbox/js/lightbox.js\"></script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Lytebox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"lyteshow[gallery]\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;*/\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* LYTEBOX */\r\n\r\n#lbOverlay { position: fixed; top: 0; left: 0; z-index: 99998; width: 100%; height: 500px; }\r\n\t#lbOverlay.grey { background-color: #000000; }\r\n\t#lbOverlay.red { background-color: #330000; }\r\n\t#lbOverlay.green { background-color: #003300; }\r\n\t#lbOverlay.blue { background-color: #011D50; }\r\n\t#lbOverlay.gold { background-color: #666600; }\r\n\r\n#lbMain { position: absolute; left: 0; width: 100%; z-index: 99999; text-align: center; line-height: 0; }\r\n#lbMain a img { border: none; }\r\n\r\n#lbOuterContainer { position: relative; background-color: #fff; width: 200px; height: 200px; margin: 0 auto; }\r\n\t#lbOuterContainer.grey { border: 3px solid #888888; }\r\n\t#lbOuterContainer.red { border: 3px solid #DD0000; }\r\n\t#lbOuterContainer.green { border: 3px solid #00B000; }\r\n\t#lbOuterContainer.blue { border: 3px solid #5F89D8; }\r\n\t#lbOuterContainer.gold { border: 3px solid #B0B000; }\r\n\r\n#lbDetailsContainer {\tfont: 10px Verdana, Helvetica, sans-serif; background-color: #fff; width: 100%; line-height: 1.4em;\toverflow: auto; margin: 0 auto; }\r\n\t#lbDetailsContainer.grey { border: 3px solid #888888; border-top: none; }\r\n\t#lbDetailsContainer.red { border: 3px solid #DD0000; border-top: none; }\r\n\t#lbDetailsContainer.green { border: 3px solid #00B000; border-top: none; }\r\n\t#lbDetailsContainer.blue { border: 3px solid #5F89D8; border-top: none; }\r\n\t#lbDetailsContainer.gold { border: 3px solid #B0B000; border-top: none; }\r\n\r\n#lbImageContainer, #lbIframeContainer { padding: 10px; }\r\n#lbLoading {\r\n\tposition: absolute; top: 45%; left: 0%; height: 32px; width: 100%; text-align: center; line-height: 0; background: url(../lytebox/images/loading.gif) center no-repeat;\r\n}\r\n\r\n#lbHoverNav { position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#lbImageContainer>#lbHoverNav { left: 0; }\r\n#lbHoverNav a { outline: none; }\r\n\r\n#lbPrev { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; left: 0; float: left; }\r\n\t#lbPrev.grey:hover, #lbPrev.grey:visited:hover { background: url(../lytebox/images/prev_grey.gif) left 15% no-repeat; }\r\n\t#lbPrev.red:hover, #lbPrev.red:visited:hover { background: url(../lytebox/images/prev_red.gif) left 15% no-repeat; }\r\n\t#lbPrev.green:hover, #lbPrev.green:visited:hover { background: url(../lytebox/images/prev_green.gif) left 15% no-repeat; }\r\n\t#lbPrev.blue:hover, #lbPrev.blue:visited:hover { background: url(../lytebox/images/prev_blue.gif) left 15% no-repeat; }\r\n\t#lbPrev.gold:hover, #lbPrev.gold:visited:hover { background: url(../lytebox/images/prev_gold.gif) left 15% no-repeat; }\r\n\r\n#lbNext { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; right: 0; float: right; }\r\n\t#lbNext.grey:hover, #lbNext.grey:visited:hover { background: url(../lytebox/images/next_grey.gif) right 15% no-repeat; }\r\n\t#lbNext.red:hover, #lbNext.red:visited:hover { background: url(../lytebox/images/next_red.gif) right 15% no-repeat; }\r\n\t#lbNext.green:hover, #lbNext.green:visited:hover { background: url(../lytebox/images/next_green.gif) right 15% no-repeat; }\r\n\t#lbNext.blue:hover, #lbNext.blue:visited:hover { background: url(../lytebox/images/next_blue.gif) right 15% no-repeat; }\r\n\t#lbNext.gold:hover, #lbNext.gold:visited:hover { background: url(../lytebox/images/next_gold.gif) right 15% no-repeat; }\r\n\r\n#lbPrev2, #lbNext2 { text-decoration: none; font-weight: bold; }\r\n\t#lbPrev2.grey, #lbNext2.grey, #lbSpacer.grey { color: #333333; }\r\n\t#lbPrev2.red, #lbNext2.red, #lbSpacer.red { color: #620000; }\r\n\t#lbPrev2.green, #lbNext2.green, #lbSpacer.green { color: #003300; }\r\n\t#lbPrev2.blue, #lbNext2.blue, #lbSpacer.blue { color: #01379E; }\r\n\t#lbPrev2.gold, #lbNext2.gold, #lbSpacer.gold { color: #666600; }\r\n\r\n#lbPrev2_Off, #lbNext2_Off { font-weight: bold; }\r\n\t#lbPrev2_Off.grey, #lbNext2_Off.grey { color: #CCCCCC; }\r\n\t#lbPrev2_Off.red, #lbNext2_Off.red { color: #FFCCCC; }\r\n\t#lbPrev2_Off.green, #lbNext2_Off.green { color: #82FF82; }\r\n\t#lbPrev2_Off.blue, #lbNext2_Off.blue { color: #B7CAEE; }\r\n\t#lbPrev2_Off.gold, #lbNext2_Off.gold { color: #E1E100; }\r\n\r\n#lbDetailsData { padding: 0 10px; }\r\n\t#lbDetailsData.grey { color: #333333; }\r\n\t#lbDetailsData.red { color: #620000; }\r\n\t#lbDetailsData.green { color: #003300; }\r\n\t#lbDetailsData.blue { color: #01379E; }\r\n\t#lbDetailsData.gold { color: #666600; }\r\n\r\n#lbDetails { width: 60%; float: left; text-align: left; }\r\n#lbCaption { display: block; font-weight: bold; }\r\n#lbNumberDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n#lbNavDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n\r\n#lbClose { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n\t#lbClose.grey { background: url(../lytebox/images/close_grey.png) no-repeat; }\r\n\t#lbClose.red { background: url(../lytebox/images/close_red.png) no-repeat; }\r\n\t#lbClose.green { background: url(../lytebox/images/close_green.png) no-repeat; }\r\n\t#lbClose.blue { background: url(../lytebox/images/close_blue.png) no-repeat; }\r\n\t#lbClose.gold { background: url(../lytebox/images/close_gold.png) no-repeat; }\r\n\r\n#lbPlay { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n\t#lbPlay.grey { background: url(../lytebox/images/play_grey.png) no-repeat; }\r\n\t#lbPlay.red { background: url(../lytebox/images/play_red.png) no-repeat; }\r\n\t#lbPlay.green { background: url(../lytebox/images/play_green.png) no-repeat; }\r\n\t#lbPlay.blue { background: url(../lytebox/images/play_blue.png) no-repeat; }\r\n\t#lbPlay.gold { background: url(../lytebox/images/play_gold.png) no-repeat; }\r\n\r\n#lbPause { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n\t#lbPause.grey { background: url(../lytebox/images/pause_grey.png) no-repeat; }\r\n\t#lbPause.red { background: url(../lytebox/images/pause_red.png) no-repeat; }\r\n\t#lbPause.green { background: url(../lytebox/images/pause_green.png) no-repeat; }\r\n\t#lbPause.blue { background: url(../lytebox/images/pause_blue.png) no-repeat; }\r\n\t#lbPause.gold { background: url(../lytebox/images/pause_gold.png) no-repeat; }\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/lytebox/lytebox.js\"></script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Slimbox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"lightbox[gallery]\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* SLIMBOX */\r\n\r\n#lbOverlay {\r\n\tposition: fixed;\r\n\tz-index: 9999;\r\n\tleft: 0;\r\n\ttop: 0;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground-color: #000;\r\n\tcursor: pointer;\r\n}\r\n\r\n#lbCenter, #lbBottomContainer {\r\n\tposition: absolute;\r\n\tz-index: 9999;\r\n\toverflow: hidden;\r\n\tbackground-color: #fff;\r\n}\r\n\r\n.lbLoading {\r\n\tbackground: #fff url(../slimbox/css/loading.gif) no-repeat center;\r\n}\r\n\r\n#lbImage {\r\n\tposition: absolute;\r\n\tleft: 0;\r\n\ttop: 0;\r\n\tborder: 10px solid #fff;\r\n\tbackground-repeat: no-repeat;\r\n}\r\n\r\n#lbPrevLink, #lbNextLink {\r\n\tdisplay: block;\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\twidth: 50%;\r\n\toutline: none;\r\n}\r\n\r\n#lbPrevLink {\r\n\tleft: 0;\r\n}\r\n\r\n#lbPrevLink:hover {\r\n\tbackground: transparent url(../slimbox/css/prevlabel.gif) no-repeat 0 15%;\r\n}\r\n\r\n#lbNextLink {\r\n\tright: 0;\r\n}\r\n\r\n#lbNextLink:hover {\r\n\tbackground: transparent url(../slimbox/css/nextlabel.gif) no-repeat 100% 15%;\r\n}\r\n\r\n#lbBottom {\r\n\tfont-family: Verdana, Arial, Geneva, Helvetica, sans-serif;\r\n\tfont-size: 10px;\r\n\tcolor: #666;\r\n\tline-height: 1.4em;\r\n\ttext-align: left;\r\n\tborder: 10px solid #fff;\r\n\tborder-top-style: none;\r\n}\r\n\r\n#lbCloseLink {\r\n\tdisplay: block;\r\n\tfloat: right;\r\n\twidth: 66px;\r\n\theight: 22px;\r\n\tbackground: transparent url(../slimbox/css/closelabel.gif) no-repeat center;\r\n\tmargin: 5px 0;\r\n\toutline: none;\r\n}\r\n\r\n#lbCaption, #lbNumber {\r\n\tmargin-right: 71px;\r\n}\r\n\r\n#lbCaption {\r\n\tfont-weight: bold;\r\n}\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/slimbox/js/slimbox2.js\"></script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Thickbox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" class=\"thickbox\" rel=\"gallery\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* THICKBOX */\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> global settings needed for thickbox <<<-----------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n*{padding: 0; margin: 0;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox specific link and font settings <<<------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_window {\r\n\tfont: 12px Arial, Helvetica, sans-serif;\r\n\tcolor: #333333;\r\n}\r\n\r\n#TB_secondLine {\r\n\tfont: 10px Arial, Helvetica, sans-serif;\r\n\tcolor:#666666;\r\n}\r\n\r\n#TB_window a:link {color: #666666;}\r\n#TB_window a:visited {color: #666666;}\r\n#TB_window a:hover {color: #000;}\r\n#TB_window a:active {color: #666666;}\r\n#TB_window a:focus{color: #666666;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox settings <<<-----------------------------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_overlay {\r\n\tposition: fixed;\r\n\tz-index:100;\r\n\ttop: 0px;\r\n\tleft: 0px;\r\n\theight:100%;\r\n\twidth:100%;\r\n}\r\n\r\n.TB_overlayMacFFBGHack {background: url(modules/Gallery/templates/thickbox/macFFBgHack.png) repeat;}\r\n.TB_overlayBG {\r\n\tbackground-color:#000;\r\n\tfilter:alpha(opacity=75);\r\n\t-moz-opacity: 0.75;\r\n\topacity: 0.75;\r\n}\r\n\r\n* html #TB_overlay { /* ie6 hack */\r\n     position: absolute;\r\n     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_window {\r\n\tposition: fixed;\r\n\tbackground: #ffffff;\r\n\tz-index: 102;\r\n\tcolor:#000000;\r\n\tdisplay:none;\r\n\tborder: 4px solid #525252;\r\n\ttext-align:left;\r\n\ttop:50%;\r\n\tleft:50%;\r\n}\r\n\r\n* html #TB_window { /* ie6 hack */\r\nposition: absolute;\r\nmargin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_window img#TB_Image {\r\n\tdisplay:block;\r\n\tmargin: 15px 0 0 15px;\r\n\tborder-right: 1px solid #ccc;\r\n\tborder-bottom: 1px solid #ccc;\r\n\tborder-top: 1px solid #666;\r\n\tborder-left: 1px solid #666;\r\n}\r\n\r\n#TB_caption{\r\n\theight:25px;\r\n\tpadding:7px 30px 10px 25px;\r\n\tfloat:left;\r\n}\r\n\r\n#TB_closeWindow{\r\n\theight:25px;\r\n\tpadding:11px 25px 10px 0;\r\n\tfloat:right;\r\n}\r\n\r\n#TB_closeAjaxWindow{\r\n\tpadding:7px 10px 5px 0;\r\n\tmargin-bottom:1px;\r\n\ttext-align:right;\r\n\tfloat:right;\r\n}\r\n\r\n#TB_ajaxWindowTitle{\r\n\tfloat:left;\r\n\tpadding:7px 0 5px 10px;\r\n\tmargin-bottom:1px;\r\n}\r\n\r\n#TB_title{\r\n\tbackground-color:#e8e8e8;\r\n\theight:27px;\r\n}\r\n\r\n#TB_ajaxContent{\r\n\tclear:both;\r\n\tpadding:2px 15px 15px 15px;\r\n\toverflow:auto;\r\n\ttext-align:left;\r\n\tline-height:1.4em;\r\n}\r\n\r\n#TB_ajaxContent.TB_modal{\r\n\tpadding:15px;\r\n}\r\n\r\n#TB_ajaxContent p{\r\n\tpadding:5px 0px 5px 0px;\r\n}\r\n\r\n#TB_load{\r\n\tposition: fixed;\r\n\tdisplay:none;\r\n\theight:13px;\r\n\twidth:208px;\r\n\tz-index:103;\r\n\ttop: 50%;\r\n\tleft: 50%;\r\n\tmargin: -6px 0 0 -104px; /* -height/2 0 0 -width/2 */\r\n}\r\n\r\n* html #TB_load { /* ie6 hack */\r\nposition: absolute;\r\nmargin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_HideSelect{\r\n\tz-index:99;\r\n\tposition:fixed;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\tbackground-color:#fff;\r\n\tborder:none;\r\n\tfilter:alpha(opacity=0);\r\n\t-moz-opacity: 0;\r\n\topacity: 0;\r\n\theight:100%;\r\n\twidth:100%;\r\n}\r\n\r\n* html #TB_HideSelect { /* ie6 hack */\r\n     position: absolute;\r\n     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_iframeContent{\r\n\tclear:both;\r\n\tborder:none;\r\n\tmargin-bottom:-1px;\r\n\tmargin-top:1px;\r\n\t_margin-bottom:1px;\r\n}\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/thickbox/thickbox.js\"></script>\r\n*}','2011-10-29 03:03:37','2011-10-29 03:03:37'),
  ('Gallery','gallerytree','\t<ul>\r\n{assign var=''g_prevdepth'' value=1}\r\n{foreach from=$images item=image name=img}\r\n\r\n{if $image->depth > $g_prevdepth}\r\n{repeat string=\"<ul>\" times=$image->depth-$g_prevdepth}\r\n{elseif $image->depth < $g_prevdepth}\r\n{repeat string=\"</li></ul>\" times=$g_prevdepth-$image->depth}\r\n</li>\r\n{elseif $smarty.foreach.img.index > 0}</li>\r\n{/if}\r\n\t\t<li><a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a> {$image->titlename}\r\n\r\n{assign var=''g_prevdepth'' value=$image->depth}\r\n{/foreach}\r\n{repeat string=\"</li></ul>\" times=$image->depth-1}</li>\r\n\t</ul>\r\n{*----------{*----------*}','2011-10-29 03:03:37','2011-10-29 03:03:37'),
  ('Album','default','{* Include JS files. You can move this to the head of your page template if you want *}\n<!--Thickbox ThickBoxWithPrev-Next stuff-->\n<script type=\"text/javascript\" src=\"modules/Album/templates/db/js/jquery.js\"></script>\n<script type=\"text/javascript\" src=\"modules/Album/templates/db/js/thickbox.js\"></script>\n\n\n{if $pictureid !=0}\n\n{* Big Picture *}\n<div style=\"text-align:center\">\n<p class=\"bigpicturecaption\"><strong>{$picture->name}</strong><br />\n{$picture->comment}<br />\n<span class=\"bigpicturenav\">\n{if $link.picture.previous}<a href=\"{$link.picture.previous}\" title=\"Previous picture\">&lt; Previous</a>{/if}\n <span class= \"albumpicturecount\">( Picture {$picturenumber}/{$picturecount} )</span> \n{if $link.picture.next}<a href=\"{$link.picture.next}\" title=\"Next picture\">Next &gt;</a></span>{/if}\n</p>\n<img src=\"{$picture->picture}\" alt=\"{$picture->name|escape:''html''} - {$picture->comment|escape:''html''}\"  title=\"{$picture->name|escape:''html''}  - {$picture->comment|escape:''html''}\" />\n</div>\n{/if}\n\n{* Album List *}\n{if !$album}\n<ul class=\"albumlist\">\n\t{foreach from=$albums item=album}\n\t<li class=\"thumb\">\n \t<a href=\"{$album->link}\">\n<img src=\"{$album->thumbnail}\" alt=\"{$album->name|escape:''html''}\" title=\"{$album->name|escape:''html''} - {$album->comment|escape:''html''}\"{$album->autothumbnailsize} /></a>\n\n<p class=\"albumname\">{$album->name}<br />\n<span class=\"albumpicturecount\">({$album->picturecount} images)</span><br />\n<span class=\"albumcomment\">{$album->comment}</span></p>\n</li>\n\t{/foreach}\n</ul>\n\n{else}\n\n{* Photo List *}\n<p><span class=\"noprint\">Click on a thumbnail to view a larger image. Click anywhere on the larger image or use the ''Esc'' (escape) key to close it. Use the ''next'' and ''previous'' links or the ''&lt;'' or ''&gt;'' (more than/less than keys) to navigate the larger images. <br/>{if $returnlink}<a href=\"{$returnlink}\">Return to the album index page</a>{/if}</span></p>\n\t{if $pagecount>1}\n\t<p class=\"albumnav\">\n\t\t<a href=\"{$link.page.first}\" title=\"first page\">&lt;&lt;&nbsp;</a>\n\t\t{if $link.page.previous}<a href=\"{$link.page.previous}\" title=\"previous page\">&lt;&nbsp;</a>{/if}\n\t\tpage {$pagenumber}/{$pagecount}\n\t\t{if $link.page.next}<a href=\"{$link.page.next}\" title=\"next page\">&nbsp;&gt;</a>{/if}\n\t\t<a href=\"{$link.page.last}\" title=\"last page\">&nbsp;&gt;&gt;</a>\n\t</p>\n\t{/if}\n<h3>{$album->name}</h3>\n{$album->comment}\n<ul class=\"picturelist\">\n\t{foreach from=$pictures item=picturesrow}\n\t    {foreach from=$picturesrow item=onepicture}\n\t    <li class=\"thumb\"><a href=\"{$onepicture->picture}\" rel=\"{$album->name|escape:''html''}\" class=\"thickbox\" title=\"{$onepicture->name|escape:''html''} - {$onepicture->comment|escape:''html''}\"> <img src=\"{$onepicture->thumbnail}\" alt=\"{$onepicture->name|escape:''html''} - {$onepicture->comment|escape:''html''}\" title=\"{$onepicture->name|escape:''html''} - {$onepicture->comment|escape:''html''}\"{$onepicture->autothumbnailsize} /></a>\n   \t   </li>\n\n      {if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}\n\t    {/foreach}\n\t{/foreach}\n</ul>\n\n{if $picturecount==0}No image{/if}\n{/if}\n\n{if $picture->id>0}\n{/if}\n<div style=\"clear:both\"></div> ','2011-11-14 02:04:03','2011-11-14 02:04:03'),
  ('Album','recently_updated','<ul class=\"picturelist\">\n\t{foreach from=$pictures item=onepicture}\n   \t\t<li class=\"thumb\"><a href=\"{$onepicture->link}\" title=\"{$onepicture->name|escape:''html''}\"> <img src=\"{$onepicture->thumbnail}\" alt=\"{$onepicture->name|escape:''html''}\" title=\"{$onepicture->name|escape:''html''}\"{$onepicture->autothumbnailsize} /></a>\n\t\t</li>\n\t{/foreach}\n</ul>\n<div style=\"clear:both\"></div>','2011-11-14 02:04:03','2011-11-14 02:04:03'),
  ('Album','random_image','{* Include JS files. You can move this to the head of your page template if you want *}\n<!--Greybox-->\n<script type=\"text/javascript\">\n    var GB_ROOT_DIR = \"modules/Album/templates/db/greybox/\";\n</script>\n\n<script type=\"text/javascript\" src=\"modules/Album/templates/db/greybox/AJS.js\"></script>\n<script type=\"text/javascript\" src=\"modules/Album/templates/db/greybox/AJS_fx.js\"></script>\n<script type=\"text/javascript\" src=\"modules/Album/templates/db/greybox/gb_scripts.js\"></script>\n\n\n\n\n<ul class=\"picturelist\">\n\t{foreach from=$pictures item=onepicture}\n\t    <li class=\"thumb\"><a href=\"{$onepicture->picture}\" rel=\"gb_imageset[random]\" title=\"{$onepicture->name|escape:''html''} {if ($onepicture->comment != \"\")}- {$onepicture->comment|escape:''html''}{/if}\"> <img src=\"{$onepicture->thumbnail}\" alt=\"{$onepicture->name|escape:''html''} {if ($onepicture->comment != \"\")}- {$onepicture->comment|escape:''html''}{/if}\" title=\"{$onepicture->name|escape:''html''} {if ($onepicture->comment != \"\")}- {$onepicture->comment|escape:''html''}{/if}\"{$onepicture->autothumbnailsize} /></a>\n   \t   </li>\n\t{/foreach}\n</ul>\n\n<div style=\"clear:both\"></div>','2011-11-14 02:04:03','2011-11-14 02:04:03'),
  ('Album','categories','{section name=album loop=$categories}\n<div class=\"album_content\">\n\t<h3>{$categories[album].category->name}</h3>\n\t{if !empty($categories[album].category->comment)}<p>{$categories[album].category->comment}</p>{/if}\n\t{$categories[album].albums_content}\n</div>\n{/section}\n<div class=\"clear\"></div>','2011-11-14 02:04:03','2011-11-14 02:04:03'),
  ('AdvancedContent','multi_input_SampleTemplate','<div class=\"pageoverflow\">\n<p>\n{foreach from=$inputs item=elm}\n\t{$elm->GetBlockProperty(''label'')}:&nbsp;{$elm->GetBlockInput()}&nbsp;\n{/foreach}\n</p>\n</div>','2011-11-14 02:04:12','2011-11-14 02:04:12'),
  ('CGExtensions','cg_errormsg','{* original template for displaying frontend errors *}\n<div class=\"{$cg_errorclass}\">{$cg_errormsg}</div>','2011-11-15 09:21:12','2011-11-15 09:21:12'),
  ('CGExtensions','sortablelists_Sample','{* sortable list template *}\n\n{*\n This template provides one example of using javascript in a CMS module template.  The javascript is left here as an example of how one can interact with smarty in javascript.  You may infact want to put most of these functions into a seperate .js file and include it somewhere in your head section.\n\n You are free to modify this javascript and this template.  However, the php driver scripts look for a field named in the smarty variable {$selectarea_prefix}, and expect that to be a comma seperated list of values.\n *}\n\n{literal}\n<script type=''text/javascript''>\nvar allowduplicates = {/literal}{$allowduplicates};{literal}\nvar selectlist = {/literal}\"{$selectarea_prefix}_selectlist\";{literal}\nvar masterlist = {/literal}\"{$selectarea_prefix}_masterlist\";{literal}\nvar addbtn = {/literal}\"{$selectarea_prefix}_add\";{literal}\nvar rembtn = {/literal}\"{$selectarea_prefix}_remove\";{literal}\nvar upbtn = {/literal}\"{$selectarea_prefix}_up\";{literal}\nvar downbtn = {/literal}\"{$selectarea_prefix}_down\";{literal}\nvar valuefld = {/literal}\"{$selectarea_prefix}\";{literal}\nvar max_selected = {/literal}{$max_selected};{literal}\n\nfunction selectarea_update_value()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var val_elem = document.getElementById(valuefld);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  var tmp = new Array();\n  for( i = 0; i < opts.length; i++ )\n    {\n      tmp[tmp.length] = opts[i].value;\n    }\n  var str = tmp.join('','');\n  val_elem.value = str;  \n}\n\nfunction selectarea_handle_down()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  for( var i = opts.length - 2; i >= 0; i-- )\n    {\n      var opt = opts[i];\n      if( opt.selected )\n        {\n           var nextopt = opts[i+1];\n           opt = sel_elem.removeChild(opt);\n           nextopt = sel_elem.replaceChild(opt,nextopt);\n           sel_elem.insertBefore(nextopt,opt);\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_up()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( sel_idx > 0 )\n    {\n      for( var i = 1; i < opts.length; i++ )\n        {\n          var opt = opts[i];\n          if( opt.selected )\n            {\n              sel_elem.removeChild(opt);\n               sel_elem.insertBefore(opt, opts[i-1]);\n            }\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_remove()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  if( sel_idx >= 0 )\n    {\n      var val = sel_elem.options[sel_idx].value;\n      sel_elem.remove(sel_idx);\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_add()\n{\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  var sel_elem = document.getElementById(selectlist);\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( opts.length >= max_selected && max_selected > 0) return;\n  if( mas_idx >= 0 )\n    {\n      var newOpt = document.createElement(''option'');\n      newOpt.text = mas_elem.options[mas_idx].text;\n      newOpt.value = mas_elem.options[mas_idx].value;\n      if( allowduplicates == 0 )\n        {\n          for( var i = 0; i < opts.length; i++ )\n          {\n            if( opts[i].value == newOpt.value ) return;\n          }\n        }\n      sel_elem.add(newOpt,null);\n    }\n  selectarea_update_value();\n}\n\n\nfunction selectarea_handle_select()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  addbtn.disabled = (mas_idx >= 0);\n  rembtn.disabled = (sel_idx >= 0);\n  addbtn.disabled = (sel_idx >= 0);\n  downbtn.disabled = (sel_idx >= 0);\n}\n\n</script>\n{/literal}\n\n <table>\n   <tr>\n     <td>\n      {* left column - for the selected items *}\n      {$label_left}<br/>\n      <select id=\"{$selectarea_prefix}_selectlist\" size=\"10\" onchange=\"selectarea_handle_select();\">\n        {html_options options=$selectarea_selected}\n      </select><br/>\n     </td>\n     <td>\n      {* center column - for the add/delete buttons *}\n      <input type=\"submit\" id=\"{$selectarea_prefix}_add\" value=\"&lt;&lt;\" onclick=\"selectarea_handle_add(); return false;\"/><br/>\n      <input type=\"submit\" id=\"{$selectarea_prefix}_remove\" value=\"&gt;&gt;\" onclick=\"selectarea_handle_remove(); return false;\"/><br/>\n      <input type=\"submit\" id=\"{$selectarea_prefix}_up\" value=\"{$upstr}\" onclick=\"selectarea_handle_up(); return false;\"/><br/>\n      <input type=\"submit\" id=\"{$selectarea_prefix}_down\" value=\"{$downstr}\" onclick=\"selectarea_handle_down(); return false;\"/><br/>\n     </td>\n     <td>\n      {* right column - for the master list *}\n      {$label_right}<br/>\n      <select id=\"{$selectarea_prefix}_masterlist\" size=\"10\" onchange=\"selectarea_handle_select();\">\n        {html_options options=$selectarea_masterlist}\n      </select>\n     </td>\n   </tr>\n </table>\n <div><input type=\"hidden\" id=\"{$selectarea_prefix}\" name=\"{$selectarea_prefix}\" value=\"{$selectarea_selected_str}\" /></div>\n','2011-11-15 09:21:12','2011-11-15 09:21:12'),
  ('CGFeedback','commentform_Sample','{* comment form template *}\r\n{if isset($message)}\r\n  <div class=\"pagemessage\">{$message}</div>\r\n{else}\r\n{* no message... display the form *}\r\n<div class=\"cgfeedback_addcoment\">\r\n{if isset($error)}\r\n  <div class=\"error\">{$error}</div>\r\n{/if}\r\n{$formstart}\r\n<fieldset style=\"margin: 1em;\">\r\n  <legend> {$mod->Lang(''prompt_add_comment'')} </legend>\r\n\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$mod->Lang(''prompt_title'')}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 40%;\">\r\n      <input type=\"text\" name=\"{$actionid}title\" size=\"40\" maxlength=\"255\" value=\"{$title}\"/>\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$mod->Lang(''prompt_your_name'')}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n      <input type=\"text\" name=\"{$actionid}author_name\" size=\"40\" maxlength=\"255\" value=\"{$author_name}\"/>\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$mod->Lang(''prompt_your_email'')}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n      <input type=\"text\" name=\"{$actionid}author_email\" size=\"40\" maxlength=\"255\" value=\"{$author_email}\"/>\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n\r\n{*\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$mod->Lang(''prompt_notify'')}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n      <input type=\"checkbox\" name=\"{$actionid}author_notify\" value=\"1\" {if $author_notify == 1}checked=\"checked\"{/if}/>\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n*}\r\n\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$mod->Lang(''prompt_your_rating'')}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n      <select name=\"{$actionid}rating\">\r\n        {html_options options=$rating_options selected=$rating}\r\n      </select>\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n\r\n\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$mod->Lang(''prompt_comment'')}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 40%;\">\r\n      {$input_comment}\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n\r\n\r\n  {* custom fields *}\r\n  {if isset($fields)}\r\n  {foreach from=$fields key=''fieldid'' item=''field''}\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n      {$field.name}:\r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n    {if isset($field.input)}\r\n      {$field.input}\r\n    {elseif $field.type == 0 or $field.type == 1 }\r\n      <input type=\"text\" name=\"{$actionid}field_{$fieldid}\" value=\"{$field.value}\" size=\"{$field.attrib.length}\" maxlength=\"{$field.attrib.maxlength}\"/>\r\n    {elseif $field.type == 2}\r\n      {* text area fields should have an input... so this should never get caled... but just in case *}\r\n      <textarea name=\"{$actionid}field_{$fieldid}\">{$field.value}</textarea>\r\n    {elseif $field.type == 3}\r\n      <select name=\"{$actionid}field_{$fieldid}\">\r\n        {html_options options=$field.attrib.options selected=\"{$field.value}\"}\r\n      </select>\r\n    {elseif $field.type == 4}\r\n      <select multiple=\"multiple\" size=\"4\" name=\"{$actionid}field_{$fieldid}[]\">\r\n        {html_options options=$field.attrib.options selected=\"{$field.value}\"}\r\n      </select>\r\n    {/if}\r\n    </div>\r\n  </div>\r\n  {/foreach}\r\n  {/if}\r\n\r\n  {if isset($captcha_img)}\r\n     {* handle captcha image *}\r\n     <div class=\"row\" style=\"margin: 1em;\">\r\n       <div class=\"col30\" style=\"float: left; width: 29%;\"> </div>\r\n     <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n      {$captcha_img}<br/>\r\n      <input type=\"text\" name=\"{$actionid}feedback_captcha\" value=\"\" size=\"20\"/>\r\n    </div>\r\n  </div>\r\n  {/if}\r\n\r\n  <div class=\"row\" style=\"margin: 1em;\">\r\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\r\n        \r\n    </div>\r\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\r\n      <input type=\"submit\" name=\"{$actionid}submit\" value=\"{$mod->Lang(''submit'')}\"/>\r\n    </div>\r\n  </div>\r\n  <div class=\"clearfix\"></div>\r\n\r\n</fieldset>\r\n{$formend}\r\n</div>\r\n{/if}','2011-11-15 09:23:42','2011-11-15 09:51:58'),
  ('CGFeedback','commentform_Radio','{* comment form template *}\n{if isset($message)}\n  <div class=\"pagemessage\">{$message}</div>\n{else}\n{* no message... display the form *}\n<div class=\"cgfeedback_addcoment\">\n{if isset($error)}\n  <div class=\"error\">{$error}</div>\n{/if}\n{$formstart}\n<fieldset style=\"margin: 1em;\">\n  <legend>&nbsp;{$mod->Lang(''prompt_add_comment'')}&nbsp;</legend>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_title'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"text\" name=\"{$actionid}title\" size=\"80\" maxlength=\"255\" value=\"{$title}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_your_name'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"text\" name=\"{$actionid}author_name\" size=\"40\" maxlength=\"255\" value=\"{$author_name}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_your_email'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"text\" name=\"{$actionid}author_email\" size=\"40\" maxlength=\"255\" value=\"{$author_email}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_notify'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"checkbox\" name=\"{$actionid}author_notify\" value=\"1\" {if $author_notify == 1}checked=\"checked\"{/if}/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_your_rating'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      {section name=''outer'' start=1 loop=6}\n        <input name=\"{$actionid}rating\" type=\"radio\" value=\"{$smarty.section.outer.index}\" {if $rating == $smarty.section.outer.index} checked=\"checked\"{/if} />\n        {section  name=''inner'' start=1 loop=$smarty.section.outer.index+1}\n           <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\n        {/section}\n        <br/>\n      {/section}\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_comment'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      {$input_comment}\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  {* custom fields *}\n  {if isset($fields)}\n  {foreach from=$fields key=''fieldid'' item=''field''}\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$field.name}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n    {if isset($field.input)}\n      {$field.input}\n    {elseif $field.type == 0 or $field.type == 1 }\n      <input type=\"text\" name=\"{$actionid}field_{$fieldid}\" value=\"{$field.value}\" size=\"{$field.attrib.length}\" maxlength=\"{$field.atrrib.maxlength}\"/>\n    {elseif $field.type == 2}\n      {* text area fields should have an input... so this should never get caled... but just in case *}\n      <textarea name=\"{$actionid}field_{$fieldid}\">{$field.value}</textarea>\n    {elseif $field.type == 3}\n      <select name=\"{$actionid}field_{$fieldid}\">\n        {html_options options=$field.attrib.options selected=\"{$field.value}\"}\n      </select>\n    {elseif $field.type == 4}\n      <select multiple=\"multiple\" size=\"4\" name=\"{$actionid}field_{$fieldid}[]\">\n        {html_options options=$field.attrib.options selected=\"{$field.value}\"}\n      </select>\n    {/if}\n    </div>\n  </div>\n  {/foreach}\n  {/if}\n\n  {if isset($captcha_img)}\n     {* handle captcha image *}\n     <div class=\"row\" style=\"margin: 1em;\">\n       <div class=\"col30\" style=\"float: left; width: 29%;\">&nbsp;</div>\n     <div class=\"col70\" style=\"float: left; width: 70%;\">\n      {$captcha_img}<br/>\n      <input type=\"text\" name=\"{$actionid}feedback_captcha\" value=\"\" size=\"20\"/>\n    </div>\n  </div>\n  {/if}\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n       &nbsp;\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"submit\" name=\"{$actionid}submit\" value=\"{$mod->Lang(''submit'')}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n</fieldset>\n{$formend}\n</div>\n{/if}','2011-11-15 09:23:42','2011-11-15 09:23:42'),
  ('CGFeedback','ratings_Sample','{* cgfeedback ratings template *}\n{strip}\n<div id=\"{$actionid}_feedback_ratings_report\">\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_count_comments'')}:&nbsp;{$stats.count}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_min_rating'')}:&nbsp;{$stats.min}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_max_rating'')}:&nbsp;{$stats.max}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_avg_rating'')}:&nbsp;{$stats.avg}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {section name=''rating'' start=1 loop=6}\n    {if $smarty.section.rating.index <= $stats.int_avg}\n       <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\n    {/if}\n    {/section}\n    {if isset($stats.fraction)}\n       <img src=\"{$rating_imgs.img_half}\" alt=\"\"/>\n    {/if}\n  </div>\n \n{* feedback_ratings_report *}</div>\n{/strip}','2011-11-15 09:23:42','2011-11-15 09:23:42'),
  ('CGFeedback','summary_Sample','{* summary template *}\r\n<div id=\"{$actionid}_feedback_summary_report\">\r\n{strip}\r\n{if $pagecount > 1}\r\n<p>\r\n  \r\n\r\n<table border=\"0\" cellspacing=\"1\" cellpadding=\"1\" width=\"30%\">\r\n\t<tr>\r\n\t\t{if $pagenum > 1}\r\n\t\t\t<td width=\"10%\">\t\t\t\r\n\t\t\t\t<a href=\"{$firstpage_url}\" title=\"{$mod->Lang(''lbl_goto_firstpage'')}\">\r\n\t\t\t\t\t<img src=\"uploads/images/top.png\" height=\"15\"></a>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"5%\">\r\n\t\t\t \r\n\t\t\t</td>\r\n\t\t\t<td width=\"10%\">\r\n\t\t\t\t<a href=\"{$prevpage_url}\" title=\"{$mod->Lang(''lbl_goto_prevpage'')}\">\r\n\t\t\t\t\t<img src=\"uploads/images/prev.png\" height=\"15\"> </a>\t\t\r\n\t\t\t</td>\r\n\t\t{else}\r\n\t\t\t<td width=\"10%\">\t\t\t\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t\t<td width=\"5%\">\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t\t<td width=\"10%\">\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t{/if}\r\n\r\n\t\t<td align=\"center\">\r\n\t\t\t{$mod->Lang(''lbl_page'')}{$pagenum} {$mod->Lang(''lbl_of'')} {$pagecount}\r\n\t\t</td>\r\n\r\n\t\t{if $pagenum < $pagecount}\r\n\t\t\t<td width=\"10%\">\t\t\t\r\n\t\t\t\t<a href=\"{$nextpage_url}\" title=\"{$mod->Lang(''lbl_goto_nextpage'')}\">\r\n\t\t\t\t\t<img src=\"uploads/images/next.png\" height=\"15\"></a>\r\n\t\t\t</td>\r\n\t\t\t<td width=\"5%\">\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t\t<td width=\"10%\">\r\n\t\t\t\t<a href=\"{$lastpage_url}\" title=\"{$mod->Lang(''lbl_goto_lastpage'')}\">\r\n\t\t\t\t\t<img src=\"uploads/images/bottom.png\" height=\"15\"></a>\t\t\t\r\n\t\t\t</td>\r\n\t\t{else}\r\n\t\t\t<td width=\"10%\">\t\t\t\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t\t<td width=\"5%\">\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t\t<td width=\"10%\">\r\n\t\t\t\t \r\n\t\t\t</td>\r\n\t\t{/if}\r\n\t</tr>\r\n</table>\r\n\r\n\r\n</p>\r\n{* pagecount *}{/if}\r\n\r\n{* disini *}\r\n\r\n{if isset($comments)}\r\n{foreach from=$comments item=''one''}\r\n  <div class=\"feedback_summary_item\">\r\n    <div class=\"feedback_item_title\">\r\n      <a href=\"{$one.detail_url}\" title=\"{$one.title}\">{$one.title}</a>\r\n    </div>\r\n\r\n    <div class=\"feedback_item_authodatee\">\r\n      {* {$mod->Lang(''lbl_created'')}:*}\r\n\r\n<table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n<tr>\r\n<td>\r\n{$one.created|cms_date_format}\r\n</td>\r\n<td align=\"right\">\r\n{section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\r\n        {else}\r\n          <img src=\"{$rating_imgs.img_off}\" alt=\"\"/>\r\n        {/if}\r\n      {/section}\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n    </div>\r\n{*\r\n    <div class=\"feedback_item_rating\">\r\n       {$mod->Lang(''lbl_rating'')}:{$one.rating}\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\r\n        {else}\r\n          <img src=\"{$rating_imgs.img_off}\" alt=\"\"/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n*}\r\n\r\n\r\n    {if $one.author_name}\r\n    <div class=\"feedback_item_authorname\">\r\n      {* {$mod->Lang(''lbl_author_name'')}:{$one.author_name} ({$one.author_email}) *}\r\nAuthor:{$one.author_name} ({$one.author_email})\r\n    </div>\r\n    {/if}\r\n{*\r\n    {if $one.author_email}\r\n    <div class=\"feedback_item_authoremail\">\r\n      {$mod->Lang(''lbl_author_email'')}:{$one.author_email}\r\n    </div>\r\n    {/if}\r\n*}\r\n    {if $one.author_ip}\r\n    <div class=\"feedback_item_authorip\">\r\n      {$mod->Lang(''lbl_author_ip'')}:{$one.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class=\"feedback_item_data\">\r\n      {$one.data|htmlspecialchars}\r\n    </div>\r\n\r\n    {if isset($one.fields)}    \r\n      {foreach from=$one.fields key=''name'' item=''field''}\r\n      <div class=\"feedback_item_field\">\r\n        {$name}:{$field.value|htmlspecialchars}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n{/foreach}\r\n{* comments *}{/if}\r\n{* feedback_summary_report *}</div>\r\n\r\n\r\n\r\n{/strip}\r\n\r\n','2011-11-15 09:23:42','2011-11-21 07:24:02'),
  ('CGFeedback','detail_Sample','{* detail template *}\r\n  <div class=\"feedback_summary_item\">\r\n    <div class=\"feedback_item_title\">\r\n      {$mod->Lang(''lbl_title'')}:{$onecomment.title}\r\n    </div>\r\n\r\n    <div class=\"feedback_item_authorname\">\r\n      Posted:{$onecomment.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class=\"feedback_item_rating\">\r\n      {$mod->Lang(''lbl_rating'')}:{$onecomment.rating}\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $onecomment.rating}\r\n          <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\r\n        {else}\r\n          <img src=\"{$rating_imgs.img_off}\" alt=\"\"/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $onecomment.author_name}\r\n    <div class=\"feedback_item_authorname\">\r\n      {$mod->Lang(''lbl_author_name'')}:{$onecomment.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_email}\r\n    <div class=\"feedback_item_authoremail\">\r\n      {$mod->Lang(''lbl_author_email'')}:{$onecomment.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_ip}\r\n    <div class=\"feedback_item_authorip\">\r\n      {$mod->Lang(''lbl_author_ip'')}:{$onecomment.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class=\"feedback_item_data\">\r\n      {$onecomment.data}\r\n    </div>\r\n\r\n    {if isset($onecomment.fields)}    \r\n      {foreach from=$onecomment.fields key=''name'' item=''field''}\r\n      <div class=\"feedback_item_field\">\r\n        {$name}:{$field.value}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n\r\n\r\n\r\n{if $returnid != \"\"}\r\n\t<div id=\"NewsPostDetailReturnLink\">\r\n\t\t{$returnid}{if $category_name != ''''} - {$category_link}{/if}\r\n\t</div>\r\n{/if}\r\n\r\n</div>\r\n','2011-11-15 09:23:42','2011-11-23 08:55:52'),
  ('CGFeedback','notification_template','{* admin notification template *}\n<html>\n<body>\n<h1>{$subject}</h1>\n\n<table>\n<tr>\n  <td>{$mod->Lang(''lbl_url'')}:</td>\n  <td>{$orig_url}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_key1'')}:</td>\n  <td>{$key1}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_key2'')}:</td>\n  <td>{$key2}</td>\n</tr>\n{if !empty($key3) }\n<tr>\n  <td>{$mod->Lang(''lbl_key3'')}:</td>\n  <td>{$key3}</td>\n</tr>\n{/if}\n<tr>\n  <td>{$mod->Lang(''lbl_author'')}:</td>\n  <td>{$author_name} {if !empty($author_email)}({$author_email}){/if}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_author_ip'')}:</td>\n  <td>{$author_ip}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_title'')}:</td>\n  <td>{$title}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_rating'')}:</td>\n  <td>{$rating}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_comment'')}:</td>\n  <td>{$comment}</td>\n</tr>\n{foreach from=$fields item=''onefield''}\n<tr>\n  <td>{$onefield.name}:</td>\n  <td>{$onefield.value}</td>\n</tr>\n{/foreach}\n</body>\n</html>','2011-11-15 09:23:42','2011-11-15 09:23:42'),
  ('CGFeedback','usernotification_template','{* user notification template *}\n{* admin notification template *}\n<html>\n<body>\n<h1>{$subject}</h1>\n\n<table>\n<tr>\n  <td>{$mod->Lang(''lbl_url'')}:</td>\n  <td>{$orig_url}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_key1'')}:</td>\n  <td>{$key1}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_key2'')}:</td>\n  <td>{$key2}</td>\n</tr>\n{if !empty($key3) }\n<tr>\n  <td>{$mod->Lang(''lbl_key3'')}:</td>\n  <td>{$key3}</td>\n</tr>\n{/if}\n<tr>\n  <td>{$mod->Lang(''lbl_author'')}:</td>\n  <td>{$author_name} {if !empty($author_email)}({$author_email}){/if}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_title'')}:</td>\n  <td>{$title}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_rating'')}:</td>\n  <td>{$rating}</td>\n</tr>\n<tr>\n  <td>{$mod->Lang(''lbl_comment'')}:</td>\n  <td>{$comment}</td>\n</tr>\n{foreach from=$fields item=''onefield''}\n<tr>\n  <td>{$onefield.name}:</td>\n  <td>{$onefield.value}</td>\n</tr>\n{/foreach}\n</body>\n</html>','2011-11-15 09:23:42','2011-11-15 09:23:42'),
  ('CGFeedback','success_msg','<p>{* comment successfull template *}</p>\r\n<p>Thank you {$author_name} <em>{$author_ip}</em> for your comment entitled \"{$title}\". {if $author_notify}You will be notified of any further replies to this thread.{/if}</p>\r\n<p> </p>\r\n<p>{redirect to=''comment''}</p>','2011-11-15 09:23:42','2011-11-23 09:27:05'),
  ('CGFeedback','success_message','Comment successfully added.  Thank you','2011-11-15 09:23:42','2011-11-15 09:23:42'),
  ('CGFeedback','sysdflt_commentform_template','{* comment form template *}\n{if isset($message)}\n  <div class=\"pagemessage\">{$message}</div>\n{else}\n{* no message... display the form *}\n<div class=\"cgfeedback_addcoment\">\n{if isset($error)}\n  <div class=\"error\">{$error}</div>\n{/if}\n{$formstart}\n<fieldset style=\"margin: 1em;\">\n  <legend>&nbsp;{$mod->Lang(''prompt_add_comment'')}&nbsp;</legend>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_title'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"text\" name=\"{$actionid}title\" size=\"80\" maxlength=\"255\" value=\"{$title}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_your_name'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"text\" name=\"{$actionid}author_name\" size=\"40\" maxlength=\"255\" value=\"{$author_name}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_your_email'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"text\" name=\"{$actionid}author_email\" size=\"40\" maxlength=\"255\" value=\"{$author_email}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_notify'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"checkbox\" name=\"{$actionid}author_notify\" value=\"1\" {if $author_notify == 1}checked=\"checked\"{/if}/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_your_rating'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <select name=\"{$actionid}rating\">\n        {html_options options=$rating_options selected=$rating}\n      </select>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$mod->Lang(''prompt_comment'')}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      {$input_comment}\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n  {* custom fields *}\n  {if isset($fields)}\n  {foreach from=$fields key=''fieldid'' item=''field''}\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n      {$field.name}:\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n    {if isset($field.input)}\n      {$field.input}\n    {elseif $field.type == 0 or $field.type == 1 }\n      <input type=\"text\" name=\"{$actionid}field_{$fieldid}\" value=\"{$field.value}\" size=\"{$field.attrib.length}\" maxlength=\"{$field.attrib.maxlength}\"/>\n    {elseif $field.type == 2}\n      {* text area fields should have an input... so this should never get caled... but just in case *}\n      <textarea name=\"{$actionid}field_{$fieldid}\">{$field.value}</textarea>\n    {elseif $field.type == 3}\n      <select name=\"{$actionid}field_{$fieldid}\">\n        {html_options options=$field.attrib.options selected=\"{$field.value}\"}\n      </select>\n    {elseif $field.type == 4}\n      <select multiple=\"multiple\" size=\"4\" name=\"{$actionid}field_{$fieldid}[]\">\n        {html_options options=$field.attrib.options selected=\"{$field.value}\"}\n      </select>\n    {/if}\n    </div>\n  </div>\n  {/foreach}\n  {/if}\n\n  {if isset($captcha_img)}\n     {* handle captcha image *}\n     <div class=\"row\" style=\"margin: 1em;\">\n       <div class=\"col30\" style=\"float: left; width: 29%;\">&nbsp;</div>\n     <div class=\"col70\" style=\"float: left; width: 70%;\">\n      {$captcha_img}<br/>\n      <input type=\"text\" name=\"{$actionid}feedback_captcha\" value=\"\" size=\"20\"/>\n    </div>\n  </div>\n  {/if}\n\n  <div class=\"row\" style=\"margin: 1em;\">\n    <div class=\"col30\" style=\"float: left; width: 29%;\">\n       &nbsp;\n    </div>\n    <div class=\"col70\" style=\"float: left; width: 70%;\">\n      <input type=\"submit\" name=\"{$actionid}submit\" value=\"{$mod->Lang(''submit'')}\"/>\n    </div>\n  </div>\n  <div class=\"clearfix\"></div>\n\n</fieldset>\n{$formend}\n</div>\n{/if}','2011-11-16 03:11:03','2011-11-16 03:13:25'),
  ('CGFeedback','sysdflt_summary_template','{* summary template *}\r\n<div id=\"{$actionid}_feedback_summary_report\">\r\n{strip}\r\n{if $pagecount > 1}\r\n<p>\r\n  {if $pagenum > 1}\r\n    <a href=\"{$firstpage_url}\" title=\"{$mod->Lang(''lbl_goto_firstpage'')}\">&lt;&lt;</a>&nbsp;\r\n    <a href=\"{$prevpage_url}\" title=\"{$mod->Lang(''lbl_goto_prevpage'')}\">&lt;</a>&nbsp;\r\n  {/if}\r\n  {$mod->Lang(''lbl_page'')}&nbsp;{$pagenum}&nbsp;{$mod->Lang(''lbl_of'')}&nbsp;{$pagecount}\r\n  {if $pagenum < $pagecount}\r\n    &nbsp;<a href=\"{$nextpage_url}\" title=\"{$mod->Lang(''lbl_goto_nextpage'')}\">&gt;</a>&nbsp;\r\n    <a href=\"{$lastpage_url}\" title=\"{$mod->Lang(''lbl_goto_lastpage'')}\">&gt;&gt;</a>\r\n  {/if}\r\n</p>\r\n{* pagecount *}{/if}\r\n\r\n{if isset($stats)}\r\n<div class=\"feedback_summary_stats\">\r\n<h4>{$mod->Lang(''statistics'')}</h4>\r\n{* disini *}\r\n</div>\r\n{/if}\r\n\r\n{if isset($comments)}\r\n{foreach from=$comments item=''one''}\r\n  <div class=\"feedback_summary_item\">\r\n    <div class=\"feedback_item_title\">\r\n      <a href=\"{$one.detail_url}\" title=\"{$one.title}\">{$one.title}</a>\r\n    </div>\r\n\r\n    <div class=\"feedback_item_authodatee\">\r\n      {$mod->Lang(''lbl_created'')}:&nbsp;{$one.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class=\"feedback_item_rating\">\r\n      {$mod->Lang(''lbl_rating'')}:&nbsp;{$one.rating}&nbsp;&nbsp;\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $one.rating}\r\n          <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\r\n        {else}\r\n          <img src=\"{$rating_imgs.img_off}\" alt=\"\"/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $one.author_name}\r\n    <div class=\"feedback_item_authorname\">\r\n      {$mod->Lang(''lbl_author_name'')}:&nbsp;{$one.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $one.author_email}\r\n    <div class=\"feedback_item_authoremail\">\r\n      {$mod->Lang(''lbl_author_email'')}:&nbsp;{$one.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $one.author_ip}\r\n    <div class=\"feedback_item_authorip\">\r\n      {$mod->Lang(''lbl_author_ip'')}:&nbsp;{$one.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class=\"feedback_item_data\">\r\n      {$one.data|htmlspecialchars}\r\n    </div>\r\n\r\n    {if isset($one.fields)}    \r\n      {foreach from=$one.fields key=''name'' item=''field''}\r\n      <div class=\"feedback_item_field\">\r\n        {$name}:&nbsp;{$field.value|htmlspecialchars}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n{/foreach}\r\n{* comments *}{/if}\r\n{* feedback_summary_report *}</div>\r\n{/strip}\r\n','2011-11-16 03:12:13','2011-11-16 03:16:08'),
  ('Attach','default','<fieldset><legend><b>{$restitle}</b></legend>\r\n<ul id=\"ressources_list\">\r\n{foreach from=$itemlist item=\"item\"}\r\n\t<li><a href=\"{$item->ressource_url}\">{$item->ressource_name}</a>{if $item->ressource_type->typename == \"File\"} ({$item->ext}, {$item->size_wformat}){/if}</li>\r\n{/foreach}\r\n</ul>\r\n\r\n</fieldset>','2011-11-16 03:57:11','2011-11-16 03:57:11'),
  ('CGFeedback','sysdflt_detail_template','detail template\r\n{* detail template *}\r\n  <div class=\"feedback_summary_item\">\r\n    <div class=\"feedback_item_title\">\r\n      {$mod->Lang(''lbl_title'')}:&nbsp;{$onecomment.title}\r\n    </div>\r\n\r\n    <div class=\"feedback_item_authorname\">\r\n      {$mod->Lang(''lbl_author_name'')}:&nbsp;{$onecomment.created|cms_date_format}\r\n    </div>\r\n\r\n    <div class=\"feedback_item_rating\">\r\n      {$mod->Lang(''lbl_rating'')}:&nbsp;{$onecomment.rating}&nbsp;&nbsp;\r\n      {section name=''rating'' start=1 loop=6}\r\n        {if $smarty.section.rating.index <= $onecomment.rating}\r\n          <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\r\n        {else}\r\n          <img src=\"{$rating_imgs.img_off}\" alt=\"\"/>\r\n        {/if}\r\n      {/section}\r\n    </div>\r\n\r\n    {if $onecomment.author_name}\r\n    <div class=\"feedback_item_authorname\">\r\n      {$mod->Lang(''lbl_author_name'')}:&nbsp;{$onecomment.author_name}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_email}\r\n    <div class=\"feedback_item_authoremail\">\r\n      {$mod->Lang(''lbl_author_email'')}:&nbsp;{$onecomment.author_email}\r\n    </div>\r\n    {/if}\r\n\r\n    {if $onecomment.author_ip}\r\n    <div class=\"feedback_item_authorip\">\r\n      {$mod->Lang(''lbl_author_ip'')}:&nbsp;{$onecomment.author_ip}\r\n    </div>\r\n    {/if}\r\n\r\n    <div class=\"feedback_item_data\">\r\n      {$onecomment.data}\r\n    </div>\r\n\r\n    {if isset($onecomment.fields)}    \r\n      {foreach from=$onecomment.fields key=''name'' item=''field''}\r\n      <div class=\"feedback_item_field\">\r\n        {$name}:&nbsp;{$field.value}\r\n      </div>\r\n      {/foreach}\r\n    {/if}\r\n\r\n    <br/><br/>\r\n  </div>\r\n','2011-11-16 03:13:21','2011-11-16 03:14:38'),
  ('CGFeedback','sysdflt_ratings_template','{* cgfeedback ratings template *}\n{strip}\n<div id=\"{$actionid}_feedback_ratings_report\">\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_count_comments'')}:&nbsp;{$stats.count}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_min_rating'')}:&nbsp;{$stats.min}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_max_rating'')}:&nbsp;{$stats.max}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {$mod->Lang(''lbl_avg_rating'')}:&nbsp;{$stats.avg}\n  </div>\n\n  <div class=\"feedback_ratings_item\">\n    {section name=''rating'' start=1 loop=6}\n    {if $smarty.section.rating.index <= $stats.int_avg}\n       <img src=\"{$rating_imgs.img_on}\" alt=\"\"/>\n    {/if}\n    {/section}\n    {if isset($stats.fraction)}\n       <img src=\"{$rating_imgs.img_half}\" alt=\"\"/>\n    {/if}\n  </div>\n \n{* feedback_ratings_report *}</div>\n{/strip}','2011-11-16 03:13:28','2011-11-16 03:13:28'),
  ('Uploads','uploadform_default','<!-- Upload form template -->\n{$startform}\n{if isset($max_uploadsize)}\n<input type=''hidden'' name=\"MAX_UPLOAD_SIZE\" value=\"{$max_uploadsize}\"/>\n{/if}\n{if isset($noauthor) } \n{$input_author}\n{else}\n<p>{$prompt_author}:&nbsp;<input type=\"text\" name=\"{$actionid}input_author\" value=\"{$author}\" size=\"20\" maxlength=\"255\"/></p>\n{/if}\n<p>{$prompt_upload}:&nbsp;<input type=\"file\" name=\"{$actionid}input_browse\" value=\"\" size=\"50\" maxlength=\"255\"/></p>\n<p>{$prompt_summary}&nbsp;<input type=\"text\" name=\"{$actionid}input_summary\" value=\"\" size=\"40\" maxlength=\"255\"/></p>\n</p>\n<p>{$prompt_description}&nbsp;<textarea name=\"{$actionid}input_description\"></textarea></p>\n<p>{$prompt_destname}&nbsp;<input type=\"text\" name=\"{$actionid}input_destname\" value=\"\" size=\"40\" maxlength=\"255\"/>&nbsp;{$info_destname}</p>\n<p>{$prompt_thumbnail}&nbsp;<input type=\"file\" name=\"{$actionid}input_thumbnail\" value=\"\" size=\"40\" maxlength=\"255\"/>&nbsp;{$info_thumbnail}</p>\n\n{if isset($fields)}\n  {foreach from=$fields item=''one'' key=''name''}\n  {strip}<p>{$one.name}:&nbsp;\n  {if isset($one.input)}\n    {$one.input}\n  {elseif $one.type == ''textinput''}\n    <input type=\"text\" name=\"{$actionid}field_{$one.id}\" value=\"{$one.value}\" size=\"{$one.attrib.length}\" maxlength=\"{$one.attrib.maxlength}\"/>\n  {elseif $one.type == ''checkbox''}\n    <input type=\"checkbox\" name=\"{$actionid}field_{$one.id}\" value=\"1\"{if $one.value == 1} checked=\"checked\"{/if}/>\n  {elseif $one.type == ''dropdown''}\n    <select name=\"{$actionid}field_{$one.id}\">\n      {html_options options=$one.attrib.options}\n    </select>\n  {elseif $one.type == ''multiselect''}\n    <select multiple=\"multiple\" size=\"4\" name=\"{$actionid}field_{$one.id}[]\">\n      {html_options options=$one.attrib.options}\n    </select>\n  {/if}{/strip}\n  {/foreach}\n{/if}\n{if isset($captcha)}\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p><input type=\"text\" name=\"{$actionid}input_captcha\" size=\"10\" maxlength=\"10\"/></p>\n{/if}\n<p><input type=\"submit\" name=\"{$actionid}input_submit\" value=\"{$mod->Lang(''submit'')}\"/></p>\n{$endform}\n<!-- Upload form template -->\n','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('Uploads','summaryrpt_default','<!-- Start Upload Summary Template -->\n{if isset($input_filter) }\n{$startform}\n{$prompt_filter}{$input_filter}{$hidden_params}{$input_submit}\n{$endform}\n<br/>\n{if isset($matches)}\n{$matches}&nbsp;{$matchestext}\n{/if}\n{/if}\n\n<div>\n{if isset($prevpage_url)}\n  <a href=\"{$firstpage_url}\" title=\"{$firstpage}\">{$firstpage_arrow}</a>\n  <a href=\"{$prevpage_url}\" title=\"{$prevpage}\">{$prevpage_arrow}</a>\n{/if}\n{if $numpages > 1}\n  &nbsp;&nbsp;{$pagetext} {$pagenum} {$oftext} {$numpages}&nbsp;&nbsp;\n{/if}\n{if isset($nextpage_url)}\n  <a href=\"{$nextpage_url}\" title=\"{$nextpage}\">{$nextpage_arrow}</a>\n  <a href=\"{$lastpage_url}\" title=\"{$lastpage}\">{$lastpage_arrow}</a>\n{/if}\n</div>\n\n{foreach from=$items item=''entry'' name=''uploads''}\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    <div class=\"row\" style=\"width: 100%; padding-bottom: 10px;\">\n  {/if}\n \n  <div class=\"upload\" style=\"float: left; width: 33%;\">\n    <a href=\"{$entry->detailurl}\">{$entry->upload_name}</a>&nbsp;({$entry->size})<br/>\n    <a href=\"{$entry->download_url}\" title=\"{$entry->upload_name}\">\n      {if isset($entry->thumbnail_url)}\n        <img src=\"{$entry->thumbnail_url}\" alt=\"\">\n      {else}\n        <img src=\"{$entry->iconurl}\" alt=\"\">\n      {/if}\n    </a>\n    <br/>\n    <a href=\"{$entry->sendfile_url}\" title=\"\">Send this file</a><br/>\n    {$author}: {$entry->author}<br/>\n    {$date}: {$entry->date}<br/>\n    {$entry->summary}\n  </div>\n\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    </div>\n  {/if}\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n    {$field.name}: {$field.value}<br/>\n  {/foreach}\n{/foreach}\n<!-- End Upload Summary Template -->\n','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('Uploads','detailrpt_default','<!-- Start Upload Detail template -->\n<table>\n  <tr>\n    {if isset($entry->thumbnail_url)}\n    <td>{$thumbnail}</td>\n    <td><img src=\"{$entry->thumbnail_url}\" border=\"0\" /></td>\n    {else}\n    <td>{$icon}</td>\n    <td><img src=\"{$entry->iconurl}\" border=\"0\" /></td>\n    {/if}\n  </tr>\n  <tr>\n    <td>{$category}</td>\n    <td>{$entry->category}</td>\n  </tr>\n  <tr>\n    <td>{$id}</td>\n    <td>{$entry->id}</td>\n  </tr>\n  <tr>\n    <td>{$name}</td>\n    <td><a href=\"{$entry->download_url}\" title=\"{$entry->name}\">{$entry->name}</a>&nbsp;&nbsp;\n        <a href=\"{$entry->sendfile_url}\" title=\"\">Send this file</a><br/>\n    </td>\n  </tr>\n  {if isset($entry->delete_url)}\n  <tr>\n    <td>{$delete}</td>\n    <td><a href=\"{$entry->delete_url}\" title=\"{$delete}\" onclick=\"return confirm(''{$areyousure}'');\">{$entry->name}</a></td>\n  </tr>\n  {/if}\n  <tr>\n    <td>{$date}</td>\n    <td>{$entry->date}</td>\n  </tr>\n  <tr>\n    <td>{$author}</td>\n    <td>{$entry->author}</td>\n  </tr>\n  <tr>\n    <td>{$size}</td>\n    <td>{$entry->size}</td>\n  </tr>\n  <tr>\n    <td>{$summary}</td>\n    <td>{$entry->summary}</td>\n  </tr>\n  <tr>\n    <td>{$description}</td>\n    <td>{$entry->description}</td>\n  </tr>\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n  <tr>\n    <td>{$field.name}</td>\n    <td>{$field.value}</td>\n  </tr>\n  {/foreach}\n</table>\n<!-- End Upload Detail template -->\n','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('Uploads','sendfileform_default','{* form to send a file *}\n{if isset($message)}\n<div style=\"border: 1px solid #99FD99; color: #000; background: #DAFEDA;\">\n{$message}\n</div>\n{/if}\n\n{if isset($error)}\n<div style=\"border: 1px dashed #FD9999; color: #000; background: #FEDADA;\">\n{$error}\n</div>\n{/if}\n\n{$formstart}\n<fieldset>\n<legend>{$mod->Lang(''file_info'')}:&nbsp;</legend>\n<p>{$mod->Lang(''name'')}:&nbsp;{$upload_info.upload_name} ({$upload_info.upload_id})</p>\n<p>{$upload_info.upload_summary}</p>\n</fieldset>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">\n    {$mod->Lang(''addressees'')}\n  </p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n   <textarea name=\"{$actionid}input_sendto\" rows=\"2\" cols=\"50\">{$sendto}</textarea>\n  </p>\n</div>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">\n    {$mod->Lang(''subject'')}\n  </p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n    <input type=\"text\" name=\"{$actionid}input_subject\" size=\"50\" maxlength=\"50\" value=\"{$subject}\"/>\n  </p>\n</div>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">\n    {$mod->Lang(''notes'')}\n  </p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n   <textarea name=\"{$actionid}input_notes\" rows=\"5\" cols=\"50\">{$notes}</textarea>\n  </p>\n</div>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">&nbsp;</p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n    <input type=\"submit\" name=\"{$actionid}input_submit\" value=\"{$mod->Lang(''send'')}\"/>\n    <input type=\"submit\" name=\"{$actionid}input_cancel\" value=\"{$mod->Lang(''cancel'')}\"/>\n  </p>\n</div>\n{$formend}','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('Uploads','yousenditform_default','{* yousendit interface *}\n{if isset($message)}\n<div style=\"border: 1px solid #99FD99; color: #000; background: #DAFEDA; margin-bottom: 0.5em;\">\n<ul>\n  {foreach from=$messages item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{if isset($errors)}\n<div style=\"border: 1px dashed #FD9999; color: #000; background: #FEDADA; ; margin-bottom: 0.5em;\">\n<ul>\n  {foreach from=$errors item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{$startform}\n<p>{$mod->Lang(''author'')}:&nbsp;\n  <input type=\"text\" name=\"author\" size=\"20\" maxlength=\"255\" value=\"{$author}\"/>\n</p>\n\n<p>{$mod->Lang(''summary'')}:\n  <input type=\"text\" name=\"{$actionid}input_summary\" size=\"40\" maxlength=\"255\" value=\"{$summary}\"/>\n</p>\n\n<p>{$mod->Lang(''description'')}:&nbsp;\n  <textarea name=\"{$actionid}input_description\">{$description}</textarea>\n</p>\n\n<p>{$mod->Lang(''destname'')}:&nbsp;\n  <input type=\"text\" name=\"{$actionid}input_destname\" size=\"40\" maexlength=\"255\" value=\"{$destname}\"/><br/>\n  {$mod->Lang(''info_destname'')}\n</p>\n\n<p>{$mod->Lang(''thumbnail'')}:&nbsp;\n  <input type=\"file\" name=\"{$actionid}input_thumbnail\" size=\"50\"/>\n</p>\n\n<p>{$mod->Lang(''prompt_replace'')}:&nbsp;\n  <input type=\"hidden\" name=\"{$actionid}input_replace\" value=\"0\"/>\n  <input type=\"checkbox\" name=\"{$actionid}input_replace\" value=\"1\"/><br/>\n  {$mod->Lang(''info_replace'')}\n</p>\n\n<p>*{$mod->Lang(''upload'')}:&nbsp;\n  <input type=\"file\" name=\"{$actionid}input_browse\" size=\"50\"/>\n</p>\n\n<br/>\n<hr/>\n<br/>\n\n<p>*{$mod->Lang(''to'')}:&nbsp;\n  <textarea name=\"{$actionid}input_sendto\" rows=\"2\" cols=\"50\">{$sendto}</textarea>\n</p>\n\n<p>*{$mod->Lang(''subject'')}:&nbsp;\n  <input type=\"text\" name=\"{$actionid}input_subject\" value=\"{$subject}\" size=\"50\"/>\n</p>\n\n<p>{$mod->Lang(''notes'')}:&nbsp;\n  <textarea name=\"{$actionid}input_notes\" rows=\"5\" cols=\"50\">{$notes}</textarea>\n</p>\n\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p>{$input_captcha}</p>\n<p>\n  <input type=\"submit\" name=\"{$actionid}input_submit\" value=\"{$mod->Lang(''send'')}\"/>\n  <input type=\"submit\" name=\"{$actionid}input_cancel\" value=\"{$mod->Lang(''cancel'')}\"/>\n</p>\n\n{$endform}\n<!-- Upload form template -->\n','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('Uploads','upload_sendfilerpt','{* send file form template *}\n<html>\n  <body>\n    <h3>Greetings</h3>\n    <p>You are receiving this email because somebody has sent you information about how to access a specific file on &quot;{sitename}&quot;.</p>\n    <p>This file is located on a remote server, and has not been attached to this email.  To retrieve the file you must click on <a href=\"{$entry->download_url}\">this link</a>.  If you are unable to click on this link, then copy the following URL into the address bar on your web browser:<br/>{$entry->download_url}</p>\n    {if isset($hours)}\n      <p>Access to this file is time limited.  You have {$hours} hours from now to access this file.</p>\n    {/if}\n    {if isset($downloads)}\n      <p>You may download this file, or attempt to download it a maximum of {$downloads} times.</P\n    {/if}\n\n    If you experience difficulty with the link provided in this email please contact the administratrors at {sitename}\n\n    {if isset($entry->thumbnail_url)}\n      <img src=\"{$entry->thumbnail_url}\" border=\"0\"><br/>\n    {/if}\n\n    {if $notes != ''''}\n    <h4>Notes:</h4>\n    <p>{$notes}</p>\n    {/if}\n\n    <h4>File Details:</h4>\n    <table border=\"0\">\n      <tr><td>{$mod->Lang(''name'')}:</td><td>{$entry->name}</td></tr>\n      <tr><td>{$mod->Lang(''size'')}:</td><td>{$entry->size}</td></tr>\n      <tr><td>{$mod->Lang(''summary'')}:</td><td>{$entry->summary}</td></tr>\n      <tr><td>{$mod->Lang(''author'')}:</td><td>{$entry->author}</td></tr>\n      <tr><td>{$mod->Lang(''description'')}:</td><td>{$entry->description}</td></tr>\n    </table>\n  </body>\n</html>','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('Uploads','upload_emailtemplate','<!-- Email notify template -->\n<p>This message is to notify you that a file has been uploaded to your website.  The details of this upload are as follows:</p>\n<p>Name: {$name}</p>\n<p>Size: {$size}</p>\n<p>Summary: {$summary}</p>\n<p>Description: {$description}</p>\n<p>Author: {$author}</p>\n<p>IP Address: {$ip_address}</p>\n<!-- Email notify template -->\n','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  ('FrontEndUsers','feusers_loginform','{* login form template *}\r\n{* this is a sample template, feel free to customize it *}\r\n{$startform}\r\n{if $error}\r\n  {$error}<br>\r\n{/if}\r\n\r\n<TABLE width=\"100%\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<TR>\r\n\t<TD>Email</TD>\r\n\t<TD>{$input_username}</TD>\r\n</TR>\r\n<TR>\r\n\t<TD>Password</TD>\r\n\t<TD>{$input_password}</TD>\r\n</TR>\r\n\r\n<tr>\r\n<td colspan=\"2\">\r\n\r\n {if isset($captcha)}\r\n   <br/>\r\n   {$captcha_title}: {$input_captcha}<br/>\r\n   {$captcha}\r\n {/if}\r\n {if isset($input_rememberme)}\r\n   <br/>\r\n   {$input_rememberme}&nbsp;{$prompt_rememberme}<br/>\r\n {/if}\r\n\r\n <br/>\r\n\r\n <input type=\"submit\" class=\"search-button\" name=\"{$feuactionid}submit\" value=\"{$mod->Lang(''login'')}\"/><br/>\r\n<br/>\r\n\r\n<a href=\"{cms_selflink href=''register''}\">Register new user</a>\r\n\r\n<br />\r\n  <a href=\"{$url_forgot}\" title=\"{$mod->Lang(''info_forgotpw'')}\">{$mod->Lang(''forgotpw'')}</a>\r\n<br/>\r\n  <a href=\"{$url_lostun}\" title=\"{$mod->Lang(''info_lostun'')}\">{$mod->Lang(''lostusername'')}</a>\r\n</td>\r\n</tr>\r\n\r\n</TABLE>\r\n{$endform}\r\n','2011-11-16 04:32:11','2011-11-23 07:37:53'),
  ('FrontEndUsers','feusers_logoutform','\n<!-- Logout form template -->\n{if isset($message)}<div class=\"message\">{$message}</div>{/if}\n  <p>{$prompt_loggedin}&nbsp;{$username}</p> \n  <p><a href=\"{$url_logout}\" title=\"{$mod->Lang(''info_logout'')}\">{$mod->Lang(''logout'')}</a></p>\n<!-- Logout form template -->\n ','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_changesettingsform','<!-- change settings template -->\n{$title}\n{if $message != ''''}\n  {if $error != ''''}\n    <p><font color=\"red\">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n{$startform}\n {if $controlcount > 0}\n  <center>\n  <table width=\"75%\">\n     {foreach from=$controls item=control}\n  <tr>\n     <td>{$control->hidden}<font color=\"{$control->color}\">{$control->prompt}{$control->marker}</font></td>\n     <td>\n       {if isset($control->image)}{$control->image}<br/>{/if}\n       {$control->control}{$control->addtext}\n       {if isset($control->control2)}{$control->prompt2}&nbsp;{$control->control2}<br/>{/if}\n     </td>\n  </tr>\n {/foreach}\n  </table>\n  </center>\n {/if}\n {$hidden}{$hidden2}{$submit}\n{$endform}\n<!-- change settings template -->\n','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_forgotpasswordform','<!-- forgot password template -->\n{$startform}\n{$title}\n{if !empty($message) }\n  {if !empty($error) }\n    <p><font color=\"red\">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>{$lostpw_message}</p>\n<p>{$prompt_username}&nbsp;{$input_username}</p>\n<p>{$hidden}{$submit}&nbsp{$cancel}</p>\n{$endform}\n<!-- forgot password template --> \n','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_forgotpasswordemailform','\n<!-- forgot password email template -->\n<p>{$message_forgotpwemail}</p>\n<p>{$prompt_code}&nbsp;{$data_code}</p>\n<p>{$prompt_link}&nbsp;{$data_link}<p>\n<!-- forgot password email template -->\n  ','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_forgotpasswordverifyform','<!-- forgot password verification template -->\n{$startform}\n{$title}\n{if !empty($message)}\n  {if !empty($error) }\n    <p><font color=\"red\">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>{$prompt_username}&nbsp;{$input_username}</p>\n<p>{$prompt_code}&nbsp;{$input_code}</p>\n<p>{$prompt_password}&nbsp;{$input_password}</p>\n<p>{$prompt_repeatpassword}&nbsp;{$input_repeatpassword}</p>\n<p>{$hidden}{$submit}</p>\n{$endform}\n<!-- forgot password verification template -->\n','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_lostunform','{* lost username confirm template form *}\n<h4>{$title}</h4>\n{if isset($message)}<h5 class=\"error\">{$message}</h5>{/if}\n{if $controlcount > 0}\n  {$startform}{$hidden}\n    <div class=\"pagerow\">\n      <div class=\"page_prompt\">{$prompt_password}</div>\n      <div class=\"page_input\">{$input_password}</div>\n    </div>\n    {foreach from=$controls item=''entry''}\n       <div class=\"pagerow\">\n          <div class=\"page_prompt\">{$entry->hidden}{$entry->prompt}</div\n          <div class=\"page_input\">{$entry->control}{$entry->addtext}</div>\n       </div>\n    {/foreach}\n    <div class=\"pagerow\">{$submit}{$cancel}</div>\n    <div class=\"pagerow\">\n       {$captcha_title}{$input_captcha}{$captcha}\n    </div>\n  {$endform}\n{/if}','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_lostunform_confirm','{* lost username confirm template form *}\n<p>{$premsg}</p>\n<p>{$prompt_yourusernameis}: <strong>{$username}</strong>.</p>\n<p>{$postmsg}</p>','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','notification_template','{* this template defines how notification emails will be sent *}\r\n{* the same template is used for all notification events so you may need \r\n   to throw in some logic here to display all of the information you want\r\n   in each email. *}\r\n{* all smarty variables can be used in this template, including functions\r\n   from customcontent for frontend generated events *}\r\n{* I encourage you to use the {get_template_vars} smarty plugin and the\r\n   print_r smarty modifier to see what variables are available *}\r\n\r\n{get_template_vars}','2011-11-16 04:32:11','2011-11-23 02:10:45'),
  ('FrontEndUsers','feusers_viewuser','{* view user template *}\n<p>{$feu->Lang(''id'')}:&nbsp;{$userinfo.id}</p>\n<p>{$feu->Lang(''username'')}:&nbsp;{$userinfo.username}</p>\n<p>{$feu->Lang(''email'')}:&nbsp;<a href=\"mailto:{$email_address}\">{$email_address}</p>\n<p>{$feu->Lang(''expires'')}:&nbsp;{$userinfo.expires}</p>\n{foreach from=$user_properties item=''entry''}\n{if $entry.type != 0}\n<p>{$entry.prompt}:&nbsp;{$entry.data}</p>\n{/if}\n{/foreach}\n','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('FrontEndUsers','feusers_resetsession','{* reset session template *}\n{* NOTE: this template requires jquery be available in any page that it is used on *}\n\n<p><a href=\"javascript:;\" name=\"feu_manual_reset\">Click Here To Confirm Login Status</a></p>{* safe to remove this *}\n\n{* style information for the modal window and the mask... these can be removed and placed in a CMSMS stylesheet *}\n{literal}\n<style type=\"text/css\">\n#feu_modal {\n  background-color: #fff;\n  border: 1px solid #00f;\n  padding: 2px;\n  margin:  2px;\n}\n#feu_mask {\n  background-color: #000;\n}\n#feu_modal .title {\n  background-color: #00f;\n  color:  #fff;\n  padding: 0px;\n}\n</style>\n{/literal}\n\n{capture assign=''feu_theform''}{strip}\n{* the reset-session form, a simple form to display a message with a title to the user with two options... okay, and cancel... the name of these buttons is important, as well the strip tag is important *}\n<form action=\"javascript:;\">\n<p class=\"title\">{$mod->Lang(''title_reset_session'')}</p>\n<p class=\"row\">{$mod->Lang(''msg_reset_session'')}</p>\n<p class=\"row\">\n  <input type=\"submit\" name=\"feu_ok\" value=\"{$mod->Lang(''ok'')}\"/>\n  <input type=\"submit\" name=\"feu_cancel\" value=\"{$mod->Lang(''cancel'')}\"/>\n</p>\n</form>\n{/strip}{/capture}\n\n{literal}\n<script type=\"text/javascript\">\n//<![CDATA[\n// the timer interval (how often you want to display the dialog to your users\nvar timer_interval = {/literal}{$session_timeout}{literal} - 30;\n\n// a function to hide the modal dialog -- you can modify this function\nfunction feu_close_modal()\n{\n   jQuery(''#feu_modal'').fadeOut(2000);\n   jQuery(''#feu_mask'').fadeOut(1000);\n}\n\n// a function to display the modal dialog... you can modify this function\nfunction feu_open_modal()\n{\n  var maskHeight = jQuery(document).height();\n  var maskWidth = jQuery(document).width();\n\n  // set the mask size to fill up the whole screen\n  jQuery(''#feu_mask'').css({''width'':maskWidth,''height'':maskHeight});\n\n  // transition effect\n  jQuery(''#feu_mask'').fadeIn(1000);\n  jQuery(''#feu_mask'').fadeTo(\"slow\",0.8);\n\n  // get the top left corner of the popup\n  var winHeight = jQuery(window).height();\n  var winWidth = jQuery(window).width();\n\n  var popupHeight = jQuery(''#feu_modal'').height();\n  var popupWidth  = jQuery(''#feu_modal'').width();\n\n  var top = winHeight/2 - popupHeight/2;\n  var left = winWidth/2 - popupWidth/2;\n  // set the popup window to center\n  jQuery(''#feu_modal'').css({''top'':top,''left'':left});\n\n  // transition effect\n  jQuery(''#feu_modal'').fadeIn(2000);\n}\n\nfunction feu_user_cancelled()\n{\n  // a callback function that may be customized to allow displaying a message to the user\n  // to indicate that they may be logged out at any time.\n  alert(''You have chosen to disregard the session warning, you may continue to browse this site however some functionality may be unavailable to you until you login again'');\n}\n\n// *\n// * do not modify below here unless you are an experienced jquery programmer *\n// *\n\nif( timer_interval <= 0 )\n  {\n     timer_interval = 0;\n  }\nvar dialogcontents = ''{/literal}{$feu_theform}{literal}'';\n\n\n// we have jQuery\njQuery(document).ready(function(){\n  // create a new id for our stuff\n  jQuery(''body'').append(''<div id=\"feu_body\"></div>'');\n  \n  // create the mask and append it to the dom\n  jQuery(''#feu_body'').append(''<div id=\"feu_mask\"></div>'');\n\n  // create the modal dialog and append it to the DOM\n  jQuery(''#feu_body'').append(''<div id=\"feu_modal\">''+dialogcontents+''</div>'');\n  \n  // and a junk div\n  jQuery(''#feu_body'').append(''<div id=\"feu_junk\" style=\"display: none;\"></div>'');\n\n  // handle click events\n  jQuery(''#feu_modal input[name=feu_ok]'').click(function(e){\n    e.preventDefault();\n\n    // do the ajax request\n    var url = ''{/literal}{$reset_url}{literal}'';\n    var url = url.replace(/amp;/g,'''');\n    jQuery(''#feu_junk'').load(url);\n\n    // and done.\n    feu_close_modal();\n   });\n  jQuery(''#feu_modal input[name=feu_cancel]'').click(function(e){\n    e.preventDefault();\n    feu_close_modal();\n    feu_user_cancelled();\n  });\n  jQuery(''a[name=feu_manual_reset]'').click(function(e){\n    e.preventDefault();\n    feu_open_modal();\n  });\n\n  // create our timer\n  if( timer_interval > 0 )\n     {\n        setTimeout(feu_open_modal,timer_interval * 1000);\n     }\n\n});\n//]]>\n</script>\n{/literal}\n\n{* required css *}\n{literal}\n<style type=\"text/css\">\n#feu_modal {\n  position: absolute;\n  z-index: 9999;\n  display: none;\n}\n#feu_mask {\n  top: 0;\n  left: 0;\n  position: absolute;\n  z-index: 9000;\n  display: none;\n}\n</style>\n{/literal}','2011-11-16 04:32:11','2011-11-16 04:32:11'),
  ('Album','cmotion-image-gallery','{* CMotion gallery template *}\n\n{* Include JS files. You can move this to the head of your page template if you want *}\n{literal}\n<script type=\"text/javascript\" src=\"modules/Album/templates/db/js/motiongallery.js\">\n\n/***********************************************\n* CMotion Image Gallery- Â© Dynamic Drive DHTML code library (www.dynamicdrive.com)\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\n* This notice must stay intact for legal use\n* Modified by Jscheuer1 for autowidth and optional starting positions\n***********************************************/\n\n</script>\n\n<script type=\"text/javascript\">\n\n/***********************************************\n* Dynamic Ajax Content- Â© Dynamic Drive DHTML code library (www.dynamicdrive.com)\n* This notice MUST stay intact for legal use\n* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code\n***********************************************/\n\nvar bustcachevar=1 //bust potential caching of external pages after initial request? (1=yes, 0=no)\nvar loadedobjects=\"\"\nvar rootdomain=\"http://\"+window.location.hostname\nvar bustcacheparameter=\"\"\n\nfunction ajaxpage(url, containerid){\nvar page_request = false\nif (window.XMLHttpRequest) // if Mozilla, Safari etc\npage_request = new XMLHttpRequest()\nelse if (window.ActiveXObject){ // if IE\ntry {\npage_request = new ActiveXObject(\"Msxml2.XMLHTTP\")\n} \ncatch (e){\ntry{\npage_request = new ActiveXObject(\"Microsoft.XMLHTTP\")\n}\ncatch (e){}\n}\n}\nelse\nreturn false\npage_request.onreadystatechange=function(){\nloadpage(page_request, containerid)\n}\nif (bustcachevar) //if bust caching of external page\nbustcacheparameter=(url.indexOf(\"?\")!=-1)? \"&\"+new Date().getTime() : \"?\"+new Date().getTime()\npage_request.open(''GET'', url+bustcacheparameter, true)\npage_request.send(null)\n}\n\nfunction loadpage(page_request, containerid){\nif (page_request.readyState == 4 && (page_request.status==200 || window.location.href.indexOf(\"http\")==-1))\ndocument.getElementById(containerid).innerHTML=page_request.responseText\n}\n\nfunction loadobjs(){\nif (!document.getElementById)\nreturn\nfor (i=0; i<arguments.length; i++){\nvar file=arguments[i]\nvar fileref=\"\"\nif (loadedobjects.indexOf(file)==-1){ //Check to see if this object has not already been added to page before proceeding\nif (file.indexOf(\".js\")!=-1){ //If object is a js file\nfileref=document.createElement(''script'')\nfileref.setAttribute(\"type\",\"text/javascript\");\nfileref.setAttribute(\"src\", file);\n}\nelse if (file.indexOf(\".css\")!=-1){ //If object is a css file\nfileref=document.createElement(\"link\")\nfileref.setAttribute(\"rel\", \"stylesheet\");\nfileref.setAttribute(\"type\", \"text/css\");\nfileref.setAttribute(\"href\", file);\n}\n}\nif (fileref!=\"\"){\ndocument.getElementsByTagName(\"head\").item(0).appendChild(fileref)\nloadedobjects+=file+\" \" //Remember this object as being already added to page\n}\n}\n}\n\n</script>\n\n<!-- End gallery script -->\n{/literal}\n\n\n{* Album List *}\n{if !$album}\n<ul class=\"albumlist\">\n\t{foreach from=$albums item=album}\n\t<li class=\"thumb\">\n \t<a href=\"{$album->link}\">\n<img src=\"{$album->thumbnail}\" alt=\"{$album->name|escape:''html''}\" title=\"{$album->name|escape:''html''}\"{$album->autothumbnailsize} /></a>\n\n<p class=\"albumname\">{$album->name|escape:''html''}<br />\n<span class=\"albumpicturecount\">({$album->picturecount} images)</span><br />\n<span class=\"albumcomment\">{$album->comment}</span></p>\n</li>\n\t{/foreach}\n</ul>\n\n{else}\n\n\n\n{* Big Picture *}\n\n\n\n<div class=\"largeview\">\n\n{* The image alt/title-attribute uses the sitename-tag with a copyright-symbol. You can also use other tags from this album template. *}\n\n<img id=\"maincmotionpic\" src=\"{$picture->picture}\" alt=\"&copy; {sitename}\" title=\"&copy; {sitename}\"/>\n\n</div>\n\n\n\n{* End Big Picture *}\n\n\n\n\n\n{*CMotion gallery with thumbnail list*}\n\n\n\n<div id=\"motioncontainer\" style=\"position:relative;overflow:hidden;\">\n\n <div id=\"motiongallery\" style=\"position:absolute;left:0;top:0;white-space: nowrap;\">\n\n   <div id=\"trueContainer\">\n\n\t{foreach from=$pictures item=picturesrow}\n\n\t    {foreach from=$picturesrow item=onepicture}\n\n{* Change alt/title-tag to what you need. *}\n\n\t    <a href=\"{$onepicture->link}\"  title=\"{$onepicture->name|escape:''html''} | {$picture->comment|escape:''html''}\" onclick=\"document.getElementById(''maincmotionpic'').setAttribute(''src'', ''{$onepicture->picture}'');return false;\"> <img src=\"{$onepicture->thumbnail}\" alt=\"{$onepicture->name|escape:''html''}\"/></a>\n\n\n\n      {if ($onepicture->number==$picturenumber and !$picture)}{assign var=picture value=$onepicture}{/if}\n\n\n\n\t    {/foreach}\n\n\t{/foreach}\n\n   </div>\n\n </div>\n\n</div>\n\n\n\n{/if}\n\n\n<div style=\"clear:both\"></div>','2011-11-17 02:49:02','2011-11-17 02:49:02'),
  ('SelfRegistration','selfreg_reg2template','\n<!-- Registration 1 template -->\n{$title}\n{if isset($messsage) && $message != ''''}\n  {if isset($error) && $error != ''''}\n    <p><font color=\"red\">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n{$startform}\n  <center>\n  <table width=\"75%\">\n  <tr>\n    <td>{$prompt_username}</font>\n    </td>\n    <td>{$input_username}</td>\n  </tr>\n  <tr>\n    <td>{$prompt_password}</font>\n    </td>\n    <td>{$input_password}</td>\n  </tr>\n  <tr>\n    <td>{$prompt_code}</font>\n    </td>\n    <td>{$input_code}</td>\n  </tr>\n  </table>\n  </center>\n<br/>\n {$hidden}{$hidden2}{$submit}\n{$endform}\n<!-- Registration 2 template -->\n ','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('News','formFrontEndNewsForm','{* original form template *}\r\n{if isset($error)}\r\n  <h3><font color=\"red\">{$error}</font></h3>\r\n{else}\r\n  {if isset($message)}\r\n    <h3>{$message}</h3>\r\n  {/if}\r\n{/if}\r\n{$startform}\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">*{$titletext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputtitle}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$categorytext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputcategory}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">*{$contenttext}:</p>\r\n\t\t<p class=\"pageinput\">{$inputcontent}</p>\r\n\t</div>\r\n{*\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$startdatetext}:</p>\r\n\t\t<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\r\n\t</div>\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$enddatetext}:</p>\r\n\t\t<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\r\n*}\r\n\r\n\t</div>\r\n\t{if isset($customfields)}\r\n\t   {foreach from=$customfields item=''onefield''}\r\n\t      <div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">{$onefield->name}:</p>\r\n\t\t<p class=\"pageinput\">{$onefield->field}</p>\r\n\t      </div>\r\n\t   {/foreach}\r\n\t{/if}\r\n\t<div class=\"pageoverflow\">\r\n\t\t<p class=\"pagetext\">&nbsp;</p>\r\n\t\t<p class=\"search-button\">{$hidden}{$submit}{$cancel}</p>\r\n\t</div>\r\n{$endform}\r\n','2011-11-21 09:40:36','2011-11-21 09:42:58'),
  ('SelfRegistration','selfreg_postreg1_template','<!-- Post Registration 1 template -->\r\n{$title}\r\n{if isset($messasge) && $message != ''''}\r\n  {if isset($error) && $error != ''''}\r\n    <p><font color=\"red\">{$message}</font></p>\r\n  {else}\r\n    <p>{$message}</p>\r\n  {/if}\r\n{/if}\r\n<p>Thank you {$username} for registering with {$sitename}.  An email has been sent to {$email} with instructions on how to continue the registration process</p>\r\n<!-- Post Registration 1 template -->\r\n','2011-11-23 02:42:42','2011-11-23 03:42:57'),
  ('SelfRegistration','selfreg_emailconfirm_template','\n<!-- EmailConfirm template -->\n<html>\n<body>\n<p>Greetings {$name} welcome to the site.  This email is being sent because somebody registered for access to {$sitename} using this email address. If this was you, please click on the following link and enter your username, password, and the unique code below</p>\n   <p>Follow this link: {$link}</p>\n   <p>or this link: {$smalllink}</p>\n   <p>Code: {$code}</p>\n</body>\n</html>\n<!-- EmailConfirm template -->\n','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_emailconfirm_texttemplate','\nGreetings {$name} welcome to the site.  This email is being sent because somebody registered for access to {$sitename} using this email address. If this was you, please click on the following link and enter your username, password, and the unique code below.\n\nFollow this link: {$url}\nor this link: {$smallurl}</p>\nCode: {$code}\n','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_emailuseredited_template','\n<!-- EmailUserEdited template -->\n<html>\n<body>\n<p>Greetings {$name} welcome to the site.  This email is being sent because, although you have already registered with {$sitename}, there was an error in your input.  The administrator has done his best to correct this data, and you are now being sent an updated registration form. Please click on the following link and enter your username, password, and the unique code below</p>\n   <p>Follow this link: {$link}</p>\n   <p>or this link: {$smalllink}</p>\n   <p>Password: {$password}</p>\n   <p>Code: {$code}</p>\n</body>\n</html>\n<!-- EmailUserEdited template -->\n','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_emailuseredited_texttemplate','\nGreetings {$name} welcome to the site.  This email is being sent because, although you have already registered with {$sitename}, there was an error in your input.  The administrator has done his best to correct this data, and you are now being sent an updated registration form. Please click on the following link and enter your username, password, and the unique code below\n   Follow this link: {$url}\n     or this link: {$smallurl}</p>\n   Password: {$password}\n   Code: {$code}\n','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_finalmessage_template','\n<!-- FinalMessage Template -->\n<p>Welcome {$username} to {$sitename}.  Your registration is complete.  Please login to continue</p>\n<!-- FinalMessage Template -->\n  ','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_sendanotheremail_template','\n<!-- SendAnotherEmail Template -->\n{$title}\n{if isset($message) && $message != ''''}\n  {if isset($message) && $error != ''''}\n    <p><font color=\"red\">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>I didn''t receive my confirmation email, please send another one.</p>\n<p>My Username is: {$startform}{$input_username}&nbsp;{$submit}{$endform}</p>\n<!-- SendAnotherEmail Template -->\n  ','2011-11-23 02:42:42','2011-11-23 02:42:42'),
  ('SelfRegistration','selfreg_post_sendanotheremail_template','\n<!-- Post SendAnotherEmail template -->\n{$title}\n{if isset($message) && $message != ''''}\n  {if isset($error) && $error != ''''}\n    <p><font color=\"red\">{$message}</font></p>\n  {else}\n    <p>{$message}</p>\n  {/if}\n{/if}\n<p>Thank you {$username} for registering with {$sitename}.  We are sorry you had difficulty receiving your email.  A second email has been sent to {$email} with instructions on how to continue the registration process</p>\n<!-- Post SendAnotherEmail template -->\n','2011-11-23 02:42:42','2011-11-23 02:42:42');
COMMIT;

#
# Data for the `cms_module_uploads_categories` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_categories` (`upload_category_id`, `upload_category_name`, `upload_category_description`, `upload_category_path`, `upload_category_listable`, `upload_category_groups`, `upload_category_deletable`, `upload_category_expires_hrs`, `upload_category_scannable`) VALUES 
  (1,'Attachments','Members attachments','attachment',0,NULL,0,0,1);
COMMIT;

#
# Data for the `cms_module_uploads_categories_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_categories_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_module_uploads_downloads_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_downloads_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_module_uploads_fielddefs` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_fielddefs` (`id`, `name`, `type`, `attribs`, `iorder`, `public`) VALUES 
  (1,'Filename','textinput','a:2:{s:6:\"length\";s:2:\"10\";s:9:\"maxlength\";s:3:\"255\";}',1,1);
COMMIT;

#
# Data for the `cms_module_uploads_filetypes` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_filetypes` (`id`, `sortorder`, `name`, `description`, `extensions`, `image`) VALUES 
  (1,1,'Sound','Sound files','mp3,ogg,wav','sound.png'),
  (2,2,'Image','Image files','png,gif,jpg,jpeg,bmp','image.png'),
  (3,3,'PDF Document','Adobe Acrobat PDF Document','pdf','pdf.png'),
  (4,4,'Spreadsheet','Spreadsheets','xls','spreadsheet.png'),
  (5,5,'Compressed','Compressed file','zip,tar,gz,rar,arj','zip.png'),
  (6,6,'Text','Text File','txt,text','txt.png'),
  (7,7,'Video','Video Files','avi,mpg.wmv','video.png'),
  (8,8,'Word Processing','Word Processing Files','doc','wordprocessing.png');
COMMIT;

#
# Data for the `cms_module_uploads_filetypes_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_filetypes_seq` (`id`) VALUES 
  (8);
COMMIT;

#
# Data for the `cms_module_uploads_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_uploads_seq` (`id`) VALUES 
  (0);
COMMIT;

#
# Data for the `cms_modules` table  (LIMIT 0,500)
#

INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES 
  ('AComments','installed','1.1',0,1,0,0),
  ('AdvancedContent','installed','0.9.1',0,1,0,1),
  ('Album','installed','0.9.3',0,1,0,0),
  ('Attach','installed','0.7.2.1',0,1,0,0),
  ('CGExtensions','installed','1.27.1',0,1,0,0),
  ('CGFeedback','installed','1.5.4',0,1,0,0),
  ('CGSimpleSmarty','installed','1.4.10',0,1,0,0),
  ('CMSForms','installed','0.1.2',0,1,0,0),
  ('CMSMailer','installed','2.0.2',0,1,1,0),
  ('CMSPrinting','installed','1.0',0,1,1,0),
  ('CMSUsers','installed','1.0.0',0,1,0,0),
  ('Cron','installed','0.0.2',0,1,0,0),
  ('FileManager','installed','1.2.0',0,1,1,0),
  ('FrontEndEditor','installed','1.2.0',0,1,0,0),
  ('FrontEndUsers','installed','1.16.2',0,1,0,0),
  ('Gallery','installed','1.4.4',0,1,0,0),
  ('JavaScript','installed','1.0.2',0,1,0,0),
  ('MenuManager','installed','1.7.6',0,1,1,0),
  ('MicroTiny','installed','1.1',0,1,1,0),
  ('ModuleManager','installed','1.5',1,1,0,0),
  ('News','installed','2.12.2',0,1,0,0),
  ('Search','installed','1.7',0,1,1,0),
  ('SelfRegistration','installed','1.6.13',0,1,0,0),
  ('Showtime','installed','2.0.5',0,1,0,0),
  ('ThemeManager','installed','1.1.4',1,1,0,0),
  ('Uploads','installed','1.14.1',0,1,0,0);
COMMIT;

#
# Data for the `cms_permissions` table  (LIMIT 0,500)
#

INSERT INTO `cms_permissions` (`permission_id`, `permission_name`, `permission_text`, `create_date`, `modified_date`) VALUES 
  (1,'Add Pages','Add Pages','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (2,'Add Groups','Add Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (4,'Add Templates','Add Templates','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (5,'Add Users','Add Users','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (6,'Modify Any Page','Modify Any Page','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (7,'Modify Groups','Modify Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (8,'Modify Group Assignments','Modify Group Assignments','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (9,'Modify Permissions','Modify Permissions for Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (11,'Modify Templates','Modify Templates','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (12,'Modify Users','Modify Users','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (13,'Remove Pages','Remove Pages','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (14,'Remove Groups','Remove Groups','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (16,'Remove Templates','Remove Templates','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (17,'Remove Users','Remove Users','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (18,'Modify Modules','Modify Modules','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (20,'Modify Files','Modify Files','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (21,'Modify Site Preferences','Modify Site Preferences','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (22,'Modify Stylesheets','Modify Stylesheets','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (23,'Add Stylesheets','Add Stylesheets','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (24,'Remove Stylesheets','Remove Stylesheets','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (25,'Add Stylesheet Assoc','Add Stylesheet Associations','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (26,'Modify Stylesheet Assoc','Modify Stylesheet Associations','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (27,'Remove Stylesheet Assoc','Remove Stylesheet Associations','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (28,'Modify User-defined Tags','Modify User defined Tags','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (29,'Clear Admin Log','Clear Admin Log','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (30,'Add Global Content Blocks','Add Global Content Blocks','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (31,'Modify Global Content Blocks','Modify Global Content Blocks','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (32,'Remove Global Content Blocks','Remove Global Content Blocks','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (35,'Modify Events','Modify Events','2006-01-27 20:06:58','2006-01-27 20:06:58'),
  (36,'View Tag Help','View Tag Help','2006-01-27 20:06:58','2006-01-27 20:06:58'),
  (44,'Manage All Content','Manage All Content','2009-05-06 15:04:11','2009-05-06 15:04:11'),
  (46,'Reorder Content','Reorder Content','2009-05-06 15:04:11','2009-05-06 15:04:11'),
  (47,'Use FileManager Advanced','Advanced usage of the File Manager module','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  (48,'Manage Menu','Manage Menu','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  (49,'MicroTiny View HTML Source','MicroTiny View HTML Source','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  (50,'Modify News','Modify News','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  (51,'Approve News','Approve News For Frontend Display','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  (52,'Delete News','Delete News Articles','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  (53,'Manage Themes','Manage Themes','2011-10-29 02:15:25','2011-10-29 02:15:25'),
  (54,'Manage AComments','Manage AComments','2011-10-29 02:52:40','2011-10-29 02:52:40'),
  (55,'Use Gallery','Use Gallery','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  (56,'Set Gallery Prefs','Set Gallery Prefs','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  (58,'Manage CMSUsers','Manage CMSUsers','2011-11-12 06:52:57','2011-11-12 06:52:57'),
  (59,'Use Album','Use Album','2011-11-14 02:04:03','2011-11-14 02:04:03'),
  (60,'Manage AdvancedContent Preferences','Manage AdvancedContent Preferences','2011-11-14 02:04:11','2011-11-14 02:04:11'),
  (61,'Manage All AdvancedContent Blocks','Manage All AdvancedContent Blocks','2011-11-14 02:04:11','2011-11-14 02:04:11'),
  (62,'Manage AdvancedContent Options','Manage AdvancedContent Options','2011-11-14 02:04:12','2011-11-14 02:04:12'),
  (63,'Manage AdvancedContent MultiInputs','Manage AdvancedContent MultiInputs','2011-11-14 02:04:12','2011-11-14 02:04:12'),
  (64,'Manage AdvancedContent MultiInput Templates','Manage AdvancedContent MultiInput Templates','2011-11-14 02:04:12','2011-11-14 02:04:12'),
  (67,'Manage Site Feedback','Manage Site Feedback','2011-11-15 09:23:42','2011-11-15 09:23:42'),
  (68,'attach_use','Attach: use module','2011-11-16 03:57:11','2011-11-16 03:57:11'),
  (69,'attach_admin','Attach: admin','2011-11-16 03:57:11','2011-11-16 03:57:11'),
  (70,'Manage Uploads','Manage Uploads','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  (71,'Upload Files to Uploads','Upload Files to Uploads','2011-11-16 04:12:45','2011-11-16 04:12:45'),
  (72,'Modify FrontEndUserProps','Modify FrontEndUser Properties','2011-11-16 04:32:12','2011-11-16 04:32:12'),
  (75,'Use Showtime','Use Showtime','2011-11-22 02:45:18','2011-11-22 02:45:18'),
  (76,'Use Showtime Prefs','Use Showtime Prefs','2011-11-22 02:45:18','2011-11-22 02:45:18'),
  (77,'FEU Add Users','Add Front-End Users','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (78,'FEU Modify Users','Modify Front-End Users','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (79,'FEU Remove Users','Remove Front-End Users','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (80,'FEU Add Groups','Add Front-End User Groups','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (81,'FEU Modify Groups','Modify Front-End User Groups','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (82,'FEU Modify Group Assignments','Modify Front-End User Group Assignments','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (83,'FEU Remove Groups','Remove Front-End User Groups','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (84,'FEU Modify Site Preferences','Modify Front-End Users Site Prefs','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (85,'FEU Modify FrontEndUserProps','Modify Front-End User Properties','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (86,'FEU Modify Templates','Modify Front-End User Templates','2011-11-23 01:59:20','2011-11-23 01:59:20'),
  (87,'FrontEndEditor Admin','Manage FrontEndEditor','2011-11-23 02:36:41','2011-11-23 02:36:41'),
  (88,'Manage Registering Users','Manage Registering Users','2011-11-23 02:42:42','2011-11-23 02:42:42');
COMMIT;

#
# Data for the `cms_permissions_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_permissions_seq` (`id`) VALUES 
  (88);
COMMIT;

#
# Data for the `cms_siteprefs` table  (LIMIT 0,500)
#

INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES 
  ('AComments_mapi_pref_akismet_check','0',NULL,NULL),
  ('AComments_mapi_pref_default_template','default_display',NULL,NULL),
  ('AComments_mapi_pref_disable_html','1',NULL,NULL),
  ('AComments_mapi_pref_enable_cookie_support','0',NULL,NULL),
  ('AComments_mapi_pref_enable_trackbacks','0',NULL,NULL),
  ('AComments_mapi_pref_enable_trackback_backlink_check','0',NULL,NULL),
  ('AComments_mapi_pref_moderate','',NULL,NULL),
  ('AComments_mapi_pref_spamprotect','',NULL,NULL),
  ('additional_editors','',NULL,NULL),
  ('adminlog_lifetime','2678400',NULL,NULL),
  ('AdvancedContent_mapi_pref_default_multi_input_tpl','multi_input_SampleTemplate',NULL,NULL),
  ('Album_mapi_pref_autolinkstylesheet','1',NULL,NULL),
  ('Album_mapi_pref_defaultalbumpage','-1',NULL,NULL),
  ('Album_mapi_pref_defaultcolumns','5',NULL,NULL),
  ('Album_mapi_pref_defaultrows','0',NULL,NULL),
  ('Album_mapi_pref_defaulttemplate','default',NULL,NULL),
  ('Album_mapi_pref_max_image_size','800',NULL,NULL),
  ('Album_mapi_pref_template','cmotion-image-gallery',NULL,NULL),
  ('Album_mapi_pref_useinlinelinks','1',NULL,NULL),
  ('allowparamcheckwarnings','0',NULL,NULL),
  ('allow_browser_cache','0',NULL,NULL),
  ('Attach_mapi_pref_deftemplate','default',NULL,NULL),
  ('auto_clear_cache_age','0',NULL,NULL),
  ('browser_cache_expiry','60',NULL,NULL),
  ('CGExtensions_mapi_pref_cache_autoclean_last','1322041277',NULL,NULL),
  ('CGExtensions_mapi_pref_dflt_sortablelist_template','Sample',NULL,NULL),
  ('CGExtensions_mapi_pref_dflt_sortablelist_template_content','{* sortable list template *}\n\n{*\n This template provides one example of using javascript in a CMS module template.  The javascript is left here as an example of how one can interact with smarty in javascript.  You may infact want to put most of these functions into a seperate .js file and include it somewhere in your head section.\n\n You are free to modify this javascript and this template.  However, the php driver scripts look for a field named in the smarty variable {$selectarea_prefix}, and expect that to be a comma seperated list of values.\n *}\n\n{literal}\n<script type=''text/javascript''>\nvar allowduplicates = {/literal}{$allowduplicates};{literal}\nvar selectlist = {/literal}\"{$selectarea_prefix}_selectlist\";{literal}\nvar masterlist = {/literal}\"{$selectarea_prefix}_masterlist\";{literal}\nvar addbtn = {/literal}\"{$selectarea_prefix}_add\";{literal}\nvar rembtn = {/literal}\"{$selectarea_prefix}_remove\";{literal}\nvar upbtn = {/literal}\"{$selectarea_prefix}_up\";{literal}\nvar downbtn = {/literal}\"{$selectarea_prefix}_down\";{literal}\nvar valuefld = {/literal}\"{$selectarea_prefix}\";{literal}\nvar max_selected = {/literal}{$max_selected};{literal}\n\nfunction selectarea_update_value()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var val_elem = document.getElementById(valuefld);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  var tmp = new Array();\n  for( i = 0; i < opts.length; i++ )\n    {\n      tmp[tmp.length] = opts[i].value;\n    }\n  var str = tmp.join('','');\n  val_elem.value = str;  \n}\n\nfunction selectarea_handle_down()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  for( var i = opts.length - 2; i >= 0; i-- )\n    {\n      var opt = opts[i];\n      if( opt.selected )\n        {\n           var nextopt = opts[i+1];\n           opt = sel_elem.removeChild(opt);\n           nextopt = sel_elem.replaceChild(opt,nextopt);\n           sel_elem.insertBefore(nextopt,opt);\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_up()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( sel_idx > 0 )\n    {\n      for( var i = 1; i < opts.length; i++ )\n        {\n          var opt = opts[i];\n          if( opt.selected )\n            {\n              sel_elem.removeChild(opt);\n               sel_elem.insertBefore(opt, opts[i-1]);\n            }\n        }\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_remove()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  if( sel_idx >= 0 )\n    {\n      var val = sel_elem.options[sel_idx].value;\n      sel_elem.remove(sel_idx);\n    }\n  selectarea_update_value();\n}\n\nfunction selectarea_handle_add()\n{\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  var sel_elem = document.getElementById(selectlist);\n  var opts = sel_elem.getElementsByTagName(''option'');\n  if( opts.length >= max_selected && max_selected > 0) return;\n  if( mas_idx >= 0 )\n    {\n      var newOpt = document.createElement(''option'');\n      newOpt.text = mas_elem.options[mas_idx].text;\n      newOpt.value = mas_elem.options[mas_idx].value;\n      if( allowduplicates == 0 )\n        {\n          for( var i = 0; i < opts.length; i++ )\n          {\n            if( opts[i].value == newOpt.value ) return;\n          }\n        }\n      sel_elem.add(newOpt,null);\n    }\n  selectarea_update_value();\n}\n\n\nfunction selectarea_handle_select()\n{\n  var sel_elem = document.getElementById(selectlist);\n  var sel_idx = sel_elem.selectedIndex;\n  var mas_elem = document.getElementById(masterlist);\n  var mas_idx = mas_elem.selectedIndex;\n  addbtn.disabled = (mas_idx >= 0);\n  rembtn.disabled = (sel_idx >= 0);\n  addbtn.disabled = (sel_idx >= 0);\n  downbtn.disabled = (sel_idx >= 0);\n}\n\n</script>\n{/literal}\n\n <table>\n   <tr>\n     <td>\n      {* left column - for the selected items *}\n      {$label_left}<br/>\n      <select id=\"{$selectarea_prefix}_selectlist\" size=\"10\" onchange=\"selectarea_handle_select();\">\n        {html_options options=$selectarea_selected}\n      </select><br/>\n     </td>\n     <td>\n      {* center column - for the add/delete buttons *}\n      <input type=\"submit\" id=\"{$selectarea_prefix}_add\" value=\"&lt;&lt;\" onclick=\"selectarea_handle_add(); return false;\"/><br/>\n      <input type=\"submit\" id=\"{$selectarea_prefix}_remove\" value=\"&gt;&gt;\" onclick=\"selectarea_handle_remove(); return false;\"/><br/>\n      <input type=\"submit\" id=\"{$selectarea_prefix}_up\" value=\"{$upstr}\" onclick=\"selectarea_handle_up(); return false;\"/><br/>\n      <input type=\"submit\" id=\"{$selectarea_prefix}_down\" value=\"{$downstr}\" onclick=\"selectarea_handle_down(); return false;\"/><br/>\n     </td>\n     <td>\n      {* right column - for the master list *}\n      {$label_right}<br/>\n      <select id=\"{$selectarea_prefix}_masterlist\" size=\"10\" onchange=\"selectarea_handle_select();\">\n        {html_options options=$selectarea_masterlist}\n      </select>\n     </td>\n   </tr>\n </table>\n <div><input type=\"hidden\" id=\"{$selectarea_prefix}\" name=\"{$selectarea_prefix}\" value=\"{$selectarea_selected_str}\" /></div>\n',NULL,NULL),
  ('CGExtensions_mapi_pref_imageextensions','jpg,png,gif',NULL,NULL),
  ('CGExtensions_mapi_pref_thumbnailsize','75',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_angle','0',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_bgcolor','#FFFFFF',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_font','ARIAL.TTF',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_text','',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_textcolor','#000000',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_textsize','12',NULL,NULL),
  ('CGExtensions_mapi_pref_watermark_transparent','1',NULL,NULL),
  ('CGFeedback_mapi_pref_allow_comment_html','0',NULL,NULL),
  ('CGFeedback_mapi_pref_allow_comment_wysiwyg','1',NULL,NULL),
  ('CGFeedback_mapi_pref_captcha_module','-1',NULL,NULL),
  ('CGFeedback_mapi_pref_curdflt_commentform_template_name','Sample',NULL,NULL),
  ('CGFeedback_mapi_pref_curdflt_detail_template_name','Sample',NULL,NULL),
  ('CGFeedback_mapi_pref_curdflt_ratings_template_name','Sample',NULL,NULL),
  ('CGFeedback_mapi_pref_curdflt_summary_template_name','Sample',NULL,NULL),
  ('CGFeedback_mapi_pref_moderate_comments','0',NULL,NULL),
  ('CGFeedback_mapi_pref_moderation_iplist','',NULL,NULL),
  ('CGFeedback_mapi_pref_moderation_patterns','',NULL,NULL),
  ('CGFeedback_mapi_pref_notification_group','-1',NULL,NULL),
  ('CGFeedback_mapi_pref_notification_ishtml','1',NULL,NULL),
  ('CGFeedback_mapi_pref_notification_subject','A comment has been posted on your website',NULL,NULL),
  ('CGFeedback_mapi_pref_spamcheck_module','-1',NULL,NULL),
  ('CGFeedback_mapi_pref_usernotification_subject','A reply has been posted in a thread you are interested in',NULL,NULL),
  ('CGFeedback_mapi_pref_use_cookies','0',NULL,NULL),
  ('CGFeedback_mapi_pref_validate_email','none',NULL,NULL),
  ('CGFeedback_mapi_pref_word_limit','0',NULL,NULL),
  ('checkversion','0',NULL,NULL),
  ('clear_vc_cache','0',NULL,NULL),
  ('CMSMailer_mapi_pref_from','root@localhost',NULL,NULL),
  ('CMSMailer_mapi_pref_fromuser','CMS Administrator',NULL,NULL),
  ('CMSMailer_mapi_pref_host','localhost',NULL,NULL),
  ('CMSMailer_mapi_pref_mailer','smtp',NULL,NULL),
  ('CMSMailer_mapi_pref_password','',NULL,NULL),
  ('CMSMailer_mapi_pref_port','25',NULL,NULL),
  ('CMSMailer_mapi_pref_secure','',NULL,NULL),
  ('CMSMailer_mapi_pref_sendmail','/usr/sbin/sendmail',NULL,NULL),
  ('CMSMailer_mapi_pref_smtpauth','0',NULL,NULL),
  ('CMSMailer_mapi_pref_timeout','1000',NULL,NULL),
  ('CMSMailer_mapi_pref_username','',NULL,NULL),
  ('CMSPrinting_mapi_pref_overridestyle','/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don''t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/',NULL,NULL),
  ('CMSUsers_mapi_pref_password_reset_email_subject','Reset password request for %s',NULL,NULL),
  ('CMSUsers_mapi_pref_signup_email_subject','Account details for %s',NULL,NULL),
  ('CMSUsers_mapi_pref_validation_email_subject','Please verify your account %s',NULL,NULL),
  ('Cron_mapi_pref_LastDaily',NULL,NULL,NULL),
  ('Cron_mapi_pref_LastHourly',NULL,NULL,NULL),
  ('Cron_mapi_pref_LastMonthly',NULL,NULL,NULL),
  ('Cron_mapi_pref_LastWeekly',NULL,NULL,NULL),
  ('Cron_mapi_pref_LastYearly',NULL,NULL,NULL),
  ('css_max_age','0',NULL,NULL),
  ('defaultdateformat','',NULL,NULL),
  ('defaultpagecontent','<!-- Add code here that should appear in the content block of all new pages -->',NULL,NULL),
  ('default_parent_page','-1',NULL,NULL),
  ('disablesafemodewarning','0',NULL,NULL),
  ('enablenotifications','1',NULL,NULL),
  ('enablesitedownmessage','0','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('FileManager_mapi_pref_advancedmode','false',NULL,NULL),
  ('FileManager_mapi_pref_iconsize','32px',NULL,NULL),
  ('FileManager_mapi_pref_showhiddenfiles','false',NULL,NULL),
  ('FileManager_mapi_pref_uploadboxes','5',NULL,NULL),
  ('frontendlang','en_US',NULL,NULL),
  ('FrontEndUsers_mapi_pref_allowed_image_extensions','.png,.jpg,.doc,.docx,.xls,.xlsx,.pdf',NULL,NULL),
  ('FrontEndUsers_mapi_pref_allow_duplicate_emails','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_allow_duplicate_reminders','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_allow_repeated_logins','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_auth_module','__BUILTIN__',NULL,NULL),
  ('FrontEndUsers_mapi_pref_auto_create_unknown','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_cookiename','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_cookie_keepalive','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_group','-1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_limit','100',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_loggedinonly','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_propsel','none',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_propval','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_regex','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_sort','username',NULL,NULL),
  ('FrontEndUsers_mapi_pref_current_viewprops','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_default_group','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_expireage_months','60',NULL,NULL),
  ('FrontEndUsers_mapi_pref_expireusers_interval','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_expire_lastrun','1322038206',NULL,NULL),
  ('FrontEndUsers_mapi_pref_feusers_specific_permissions','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_forcelogout_sessionage','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_forcelogout_times','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_hidden_field_color','green',NULL,NULL),
  ('FrontEndUsers_mapi_pref_hidden_field_marker','!',NULL,NULL),
  ('FrontEndUsers_mapi_pref_image_destination_path','feusers',NULL,NULL),
  ('FrontEndUsers_mapi_pref_max_passwordlength','20',NULL,NULL),
  ('FrontEndUsers_mapi_pref_max_usernamelength','40',NULL,NULL),
  ('FrontEndUsers_mapi_pref_min_passwordlength','6',NULL,NULL),
  ('FrontEndUsers_mapi_pref_min_usernamelength','4',NULL,NULL),
  ('FrontEndUsers_mapi_pref_notification_address','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_notification_subject','FEU Event Notification',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageidforgotpasswd','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageid_afterchangesettings','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageid_afterverify','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageid_changesettings','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageid_forgotpasswd','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageid_login','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pageid_logout','',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pagetype_action','showlogin',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pagetype_groups',NULL,NULL,NULL),
  ('FrontEndUsers_mapi_pref_pagetype_redirectto','-1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_passwordfldlength','20',NULL,NULL),
  ('FrontEndUsers_mapi_pref_pwsalt','f9ebc',NULL,NULL),
  ('FrontEndUsers_mapi_pref_required_field_color','blue',NULL,NULL),
  ('FrontEndUsers_mapi_pref_required_field_marker','*',NULL,NULL),
  ('FrontEndUsers_mapi_pref_require_onegroup','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_secure_field_color','yellow',NULL,NULL),
  ('FrontEndUsers_mapi_pref_secure_field_marker','^^',NULL,NULL),
  ('FrontEndUsers_mapi_pref_signin_button',NULL,NULL,NULL),
  ('FrontEndUsers_mapi_pref_support_lostpw','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_support_lostun','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_usecookiestoremember','0',NULL,NULL),
  ('FrontEndUsers_mapi_pref_usernamefldlength','40',NULL,NULL),
  ('FrontEndUsers_mapi_pref_username_is_email','1',NULL,NULL),
  ('FrontEndUsers_mapi_pref_user_session_expires','1800',NULL,NULL),
  ('FrontEndUsers_mapi_pref_use_randomusername','0',NULL,NULL),
  ('frontendwysiwyg','MicroTiny',NULL,NULL),
  ('Gallery_mapi_pref_allowed_extensions','jpg,jpeg,gif,png',NULL,NULL),
  ('Gallery_mapi_pref_be_folderpath','modules/Gallery/images/foldersmall.png',NULL,NULL),
  ('Gallery_mapi_pref_current_template','Fancybox',NULL,NULL),
  ('Gallery_mapi_pref_default_template_contents','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a class=\"group\" href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"gallery-{$galleryid}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n\tposition: fixed;\r\n\ttop: 50%;\r\n\tleft: 50%;\r\n\twidth: 40px;\r\n\theight: 40px;\r\n\tmargin-top: -20px;\r\n\tmargin-left: -20px;\r\n\tcursor: pointer;\r\n\toverflow: hidden;\r\n\tz-index: 1104;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 40px;\r\n\theight: 480px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n}\r\n\r\n#fancybox-overlay {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tz-index: 1100;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\toverflow: auto;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\tpadding: 20px;\r\n\tz-index: 1101;\r\n\toutline: none;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-outer {\r\n\tposition: relative;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: #000;\r\n}\r\n\r\n#fancybox-content {\r\n\twidth: 0;\r\n\theight: 0;\r\n\tpadding: 0;\r\n\toutline: none;\r\n\tposition: relative;\r\n\toverflow: hidden;\r\n\tz-index: 1102;\r\n\tborder: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: transparent;\r\n\tz-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n\tposition: absolute;\r\n\ttop: -15px;\r\n\tright: -15px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tbackground: transparent url(''../fancybox/fancybox.png'') -40px 0px;\r\n\tcursor: pointer;\r\n\tz-index: 1103;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-error {\r\n\tcolor: #444;\r\n\tfont: normal 12px/20px Arial;\r\n\tpadding: 14px;\r\n\tmargin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: none;\r\n\toutline: none;\r\n\tline-height: 0;\r\n\tvertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tborder: none;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n\tposition: absolute;\r\n\tbottom: 0px;\r\n\theight: 100%;\r\n\twidth: 35%;\r\n\tcursor: pointer;\r\n\toutline: none;\r\n\tbackground: transparent url(''../fancybox/blank.gif'');\r\n\tz-index: 1102;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-left {\r\n\tleft: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n\tright: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n\tposition: absolute;\r\n\ttop: 50%;\r\n\tleft: -9999px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tmargin-top: -15px;\r\n\tcursor: pointer;\r\n\tz-index: 1102;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n\tvisibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n\tleft: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n\tleft: auto;\r\n\tright: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n\tposition: absolute;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\twidth: 20px;\r\n\theight: 20px;\r\n\tz-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n\ttop: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n\ttop: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n\ttop: 0;\r\n\tright: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n\tbackground-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n\tbottom: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n\tbottom: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n\tbackground-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n\tbottom: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n\ttop: 0;\r\n\tleft: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n\ttop: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n\tfont-family: Helvetica;\r\n\tfont-size: 12px;\r\n\tz-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n\tpadding-bottom: 10px;\r\n\ttext-align: center;\r\n\tcolor: #333;\r\n\tbackground: #fff;\r\n\tposition: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n\tpadding-top: 10px;\r\n\tcolor: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n\tposition: absolute;\r\n\tbottom: 0;\r\n\tleft: 0;\r\n\tcolor: #FFF;\r\n\ttext-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n\tpadding: 10px;\r\n\tbackground-image: url(''../fancybox/fancy_title_over.png'');\r\n\tdisplay: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n\tposition: absolute;\r\n\tleft: 0;\r\n\tbottom: -20px;\r\n\theight: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n\tborder: none;\r\n\tborder-collapse: collapse;\r\n\twidth: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n\tborder: none;\r\n\twhite-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n\tcolor: #FFF;\r\n\tline-height: 29px;\r\n\tfont-weight: bold;\r\n\tpadding: 0 0 3px 0;\r\n\tbackground: url(''../fancybox/fancybox-x.png'') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }\r\n{*----------<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/fancybox/jquery.fancybox.pack.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.mousewheel.pack.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n\t$(\"a.group\").fancybox({\r\n\t\t''speedIn'':\t\t300,\r\n\t\t''speedOut'':\t300,\r\n\t\t''overlayColor'':\t''#000'',\r\n\t\t''overlayOpacity'':\t0.7\r\n\t});\r\n});\r\n</script>\r\n*}',NULL,NULL),
  ('Gallery_mapi_pref_editdirdates','0',NULL,NULL),
  ('Gallery_mapi_pref_editfiledates','0',NULL,NULL),
  ('Gallery_mapi_pref_fe_folderpath','modules/Gallery/images/folder.png',NULL,NULL),
  ('Gallery_mapi_pref_maximageheight','768',NULL,NULL),
  ('Gallery_mapi_pref_maximagewidth','1024',NULL,NULL),
  ('Gallery_mapi_pref_singleimg_template','Fancybox',NULL,NULL),
  ('Gallery_mapi_pref_singleimg_template_html','<a class=\"group\" href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->title}\" rel=\"gallery\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->title}\" /></a>',NULL,NULL),
  ('Gallery_mapi_pref_urlprefix','gallery',NULL,NULL),
  ('Gallery_mapi_pref_use_comment_wysiwyg','0',NULL,NULL),
  ('global_umask','022',NULL,NULL),
  ('listcontent_showalias','1',NULL,NULL),
  ('listcontent_showtitle','1',NULL,NULL),
  ('listcontent_showurl','1',NULL,NULL),
  ('logintheme','NCleanGrey','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('MenuManager_mapi_pref_cachable_templates','YTowOnt9',NULL,NULL),
  ('MenuManager_mapi_pref_default_template','accessible_simple_navigation.tpl',NULL,NULL),
  ('metadata','<meta name=\"Generator\" content=\"SimpleCMS\" />\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n ','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('MicroTiny_mapi_pref_allowimages','1',NULL,NULL),
  ('MicroTiny_mapi_pref_allow_resize','1',NULL,NULL),
  ('MicroTiny_mapi_pref_css_styles','',NULL,NULL),
  ('MicroTiny_mapi_pref_show_statusbar','1',NULL,NULL),
  ('ModuleManager_mapi_pref_module_repository','http://www.cmsmadesimple.org/ModuleRepository/request/v2/',NULL,NULL),
  ('News_mapi_pref_allowed_upload_types','gif,png,jpeg,jpg,xls,xlsx,doc,docx,pdf',NULL,NULL),
  ('News_mapi_pref_allow_summary_wysiwyg','1',NULL,NULL),
  ('News_mapi_pref_auto_create_thumbnails','gif,png,jpeg,jpg',NULL,NULL),
  ('News_mapi_pref_current_browsecat_template','Sample',NULL,NULL),
  ('News_mapi_pref_current_detail_template','Sample',NULL,NULL),
  ('News_mapi_pref_current_form_template','Sample',NULL,NULL),
  ('News_mapi_pref_current_summary_template','Sample',NULL,NULL),
  ('News_mapi_pref_default_browsecat_template_contents','{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}',NULL,NULL),
  ('News_mapi_pref_default_category','1',NULL,NULL),
  ('News_mapi_pref_default_detail_template_contents','{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The \"extra\" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n\t<div id=\"NewsPostDetailDate\">\n\t\t{$entry->postdate|cms_date_format}\n\t</div>\n{/if}\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id=\"NewsPostDetailHorizRule\" />\n\n{if $entry->summary}\n\t<div id=\"NewsPostDetailSummary\">\n\t\t<strong>\n\t\t\t{eval var=$entry->summary}\n\t\t</strong>\n\t</div>\n{/if}\n\n{if $entry->category}\n\t<div id=\"NewsPostDetailCategory\">\n\t\t{$category_label} {$entry->category}\n\t</div>\n{/if}\n{if $entry->author}\n\t<div id=\"NewsPostDetailAuthor\">\n\t\t{$author_label} {$entry->author}\n\t</div>\n{/if}\n\n<div id=\"NewsPostDetailContent\">\n\t{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n\t<div id=\"NewsPostDetailExtra\">\n\t\t{$extra_label} {$entry->extra}\n\t</div>\n{/if}\n\n{if $return_url != \"\"}\n<div id=\"NewsPostDetailReturnLink\">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class=\"NewsDetailField\">\n        {if $field->type == ''file''}\n\t  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n',NULL,NULL),
  ('News_mapi_pref_default_form_template_contents','{* original form template *}\n{if isset($error)}\n  <h3><font color=\"red\">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">*{$titletext}:</p>\n\t\t<p class=\"pageinput\">{$inputtitle}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$categorytext}:</p>\n\t\t<p class=\"pageinput\">{$inputcategory}</p>\n\t</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$summarytext}:</p>\n\t\t<p class=\"pageinput\">{$inputsummary}</p>\n\t</div>\n{/if}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">*{$contenttext}:</p>\n\t\t<p class=\"pageinput\">{$inputcontent}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$extratext}:</p>\n\t\t<p class=\"pageinput\">{$inputextra}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$startdatetext}:</p>\n\t\t<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$enddatetext}:</p>\n\t\t<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n\t</div>\n\t{if isset($customfields)}\n\t   {foreach from=$customfields item=''onefield''}\n\t      <div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$onefield->name}:</p>\n\t\t<p class=\"pageinput\">{$onefield->field}</p>\n\t      </div>\n\t   {/foreach}\n\t{/if}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">&nbsp;</p>\n\t\t<p class=\"pageinput\">{$hidden}{$submit}{$cancel}</p>\n\t</div>\n{$endform}\n',NULL,NULL),
  ('News_mapi_pref_default_summary_template_contents','<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class=\"firstnewscat\"{/if}>\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n\t<div class=\"NewsSummaryPostdate\">\n\t\t{$entry->postdate|cms_date_format}\n\t</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n\t{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n\t<div class=\"NewsSummaryAuthor\">\n\t\t{$author_label} {$entry->author}\n\t</div>\n{/if}\n\n{if $entry->summary}\n\t<div class=\"NewsSummarySummary\">\n\t\t{eval var=$entry->summary}\n\t</div>\n\n\t<div class=\"NewsSummaryMorelink\">\n\t\t[{$entry->morelink}]\n\t</div>\n\n{else if $entry->content}\n\n\t<div class=\"NewsSummaryContent\">\n\t\t{eval var=$entry->content}\n\t</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {eval var=$entry->extra}\n\t{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == ''file''}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n',NULL,NULL),
  ('News_mapi_pref_detail_returnid','-1',NULL,NULL),
  ('News_mapi_pref_email_subject','A new News article has been posted',NULL,NULL),
  ('News_mapi_pref_expired_searchable','1',NULL,NULL),
  ('News_mapi_pref_expiry_interval','180',NULL,NULL),
  ('News_mapi_pref_fesubmit_redirect','',NULL,NULL),
  ('News_mapi_pref_fesubmit_status','published',NULL,NULL),
  ('News_mapi_pref_formsubmit_emailaddress','',NULL,NULL),
  ('News_mapi_pref_hide_summary_field','1',NULL,NULL),
  ('nogcbwysiwyg','0',NULL,NULL),
  ('page_active','1',NULL,NULL),
  ('page_cachable','1',NULL,NULL),
  ('page_extra1','',NULL,NULL),
  ('page_extra2','',NULL,NULL),
  ('page_extra3','',NULL,NULL),
  ('page_metadata','{* Add code here that should appear in the metadata section of all new pages *}',NULL,NULL),
  ('page_searchable','1',NULL,NULL),
  ('page_showinmenu','1',NULL,NULL),
  ('PruneAdminlog_lastexecute','1322011798',NULL,NULL),
  ('pseudocron_granularity','60',NULL,NULL),
  ('pseudocron_lastrun','1322038199',NULL,NULL),
  ('searchmodule','Search',NULL,NULL),
  ('Search_mapi_pref_searchtext','Enter Search...',NULL,NULL),
  ('Search_mapi_pref_stopwords','i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very',NULL,NULL),
  ('Search_mapi_pref_usestemming','false',NULL,NULL),
  ('SelfRegistration_mapi_pref_additionalgroups_matchfields','*username-password*',NULL,NULL),
  ('SelfRegistration_mapi_pref_allowselectpkg','0',NULL,NULL),
  ('SelfRegistration_mapi_pref_enable_whitelist','',NULL,NULL),
  ('SelfRegistration_mapi_pref_inline_forms','1',NULL,NULL),
  ('SelfRegistration_mapi_pref_login_afterverify','0',NULL,NULL),
  ('SelfRegistration_mapi_pref_noregister_groups','',NULL,NULL),
  ('SelfRegistration_mapi_pref_notify_on_registration','1',NULL,NULL),
  ('SelfRegistration_mapi_pref_redirect_afterregister','',NULL,NULL),
  ('SelfRegistration_mapi_pref_redirect_afterverify','',NULL,NULL),
  ('SelfRegistration_mapi_pref_reg_additionalgroups','0',NULL,NULL),
  ('SelfRegistration_mapi_pref_require_email_confirmation','0',NULL,NULL),
  ('SelfRegistration_mapi_pref_selfreg_emailconfirm_subject','Registration Confirmation',NULL,NULL),
  ('SelfRegistration_mapi_pref_selfreg_emailuseredited_subject','Your registration info has been modified',NULL,NULL),
  ('SelfRegistration_mapi_pref_selfreg_force_email_twice','0',NULL,NULL),
  ('SelfRegistration_mapi_pref_selfreg_skip_final_msg','0',NULL,NULL),
  ('SelfRegistration_mapi_pref_send_emails_to','root@localhost.com',NULL,NULL),
  ('SelfRegistration_mapi_pref_whitelist','',NULL,NULL),
  ('SelfRegistration_mapi_pref_whitelist_trigger_message','',NULL,NULL),
  ('Showtime_mapi_pref_load_jQuery_scripts','1',NULL,NULL),
  ('Showtime_mapi_pref_uploadmethode','swf',NULL,NULL),
  ('Showtime_mapi_pref_watermark_file','watermark.png',NULL,NULL),
  ('Showtime_mapi_pref_watermark_onoff','0',NULL,NULL),
  ('Showtime_mapi_pref_watermark_padding_x','10',NULL,NULL),
  ('Showtime_mapi_pref_watermark_padding_y','10',NULL,NULL),
  ('Showtime_mapi_pref_watermark_pos','bottom_right',NULL,NULL),
  ('Showtime_mapi_pref_watermark_transparant','70',NULL,NULL),
  ('sitedownexcludes','',NULL,NULL),
  ('sitedownmessage','<p>Site is currently down for maintenance.</p>','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('sitedownmessagetemplate','-1','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('sitemask','uTsvABNjn#D6*Z5P',NULL,NULL),
  ('sitename','',NULL,NULL),
  ('thumbnail_height','96',NULL,NULL),
  ('thumbnail_width','96',NULL,NULL),
  ('Uploads_mapi_pref_autothumbnail_extensions','gif,jpg,jpeg,bmp,png',NULL,NULL),
  ('Uploads_mapi_pref_autothumbnail_size','80',NULL,NULL),
  ('Uploads_mapi_pref_category_expiry','0',NULL,NULL),
  ('Uploads_mapi_pref_create_dummy_index_html','1',NULL,NULL),
  ('Uploads_mapi_pref_default_detailrpt','default',NULL,NULL),
  ('Uploads_mapi_pref_default_sendfileform','default',NULL,NULL),
  ('Uploads_mapi_pref_default_summaryrpt','default',NULL,NULL),
  ('Uploads_mapi_pref_default_uploadform','default',NULL,NULL),
  ('Uploads_mapi_pref_default_yousenditform','default',NULL,NULL),
  ('Uploads_mapi_pref_detailrpt_sysdefault','<!-- Start Upload Detail template -->\n<table>\n  <tr>\n    {if isset($entry->thumbnail_url)}\n    <td>{$thumbnail}</td>\n    <td><img src=\"{$entry->thumbnail_url}\" border=\"0\" /></td>\n    {else}\n    <td>{$icon}</td>\n    <td><img src=\"{$entry->iconurl}\" border=\"0\" /></td>\n    {/if}\n  </tr>\n  <tr>\n    <td>{$category}</td>\n    <td>{$entry->category}</td>\n  </tr>\n  <tr>\n    <td>{$id}</td>\n    <td>{$entry->id}</td>\n  </tr>\n  <tr>\n    <td>{$name}</td>\n    <td><a href=\"{$entry->download_url}\" title=\"{$entry->name}\">{$entry->name}</a>&nbsp;&nbsp;\n        <a href=\"{$entry->sendfile_url}\" title=\"\">Send this file</a><br/>\n    </td>\n  </tr>\n  {if isset($entry->delete_url)}\n  <tr>\n    <td>{$delete}</td>\n    <td><a href=\"{$entry->delete_url}\" title=\"{$delete}\" onclick=\"return confirm(''{$areyousure}'');\">{$entry->name}</a></td>\n  </tr>\n  {/if}\n  <tr>\n    <td>{$date}</td>\n    <td>{$entry->date}</td>\n  </tr>\n  <tr>\n    <td>{$author}</td>\n    <td>{$entry->author}</td>\n  </tr>\n  <tr>\n    <td>{$size}</td>\n    <td>{$entry->size}</td>\n  </tr>\n  <tr>\n    <td>{$summary}</td>\n    <td>{$entry->summary}</td>\n  </tr>\n  <tr>\n    <td>{$description}</td>\n    <td>{$entry->description}</td>\n  </tr>\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n  <tr>\n    <td>{$field.name}</td>\n    <td>{$field.value}</td>\n  </tr>\n  {/foreach}\n</table>\n<!-- End Upload Detail template -->\n',NULL,NULL),
  ('Uploads_mapi_pref_download_chunksize','8',NULL,NULL),
  ('Uploads_mapi_pref_requirefilename_extensions','1',NULL,NULL),
  ('Uploads_mapi_pref_sendfileform_sysdefault','{* form to send a file *}\n{if isset($message)}\n<div style=\"border: 1px solid #99FD99; color: #000; background: #DAFEDA;\">\n{$message}\n</div>\n{/if}\n\n{if isset($error)}\n<div style=\"border: 1px dashed #FD9999; color: #000; background: #FEDADA;\">\n{$error}\n</div>\n{/if}\n\n{$formstart}\n<fieldset>\n<legend>{$mod->Lang(''file_info'')}:&nbsp;</legend>\n<p>{$mod->Lang(''name'')}:&nbsp;{$upload_info.upload_name} ({$upload_info.upload_id})</p>\n<p>{$upload_info.upload_summary}</p>\n</fieldset>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">\n    {$mod->Lang(''addressees'')}\n  </p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n   <textarea name=\"{$actionid}input_sendto\" rows=\"2\" cols=\"50\">{$sendto}</textarea>\n  </p>\n</div>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">\n    {$mod->Lang(''subject'')}\n  </p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n    <input type=\"text\" name=\"{$actionid}input_subject\" size=\"50\" maxlength=\"50\" value=\"{$subject}\"/>\n  </p>\n</div>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">\n    {$mod->Lang(''notes'')}\n  </p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n   <textarea name=\"{$actionid}input_notes\" rows=\"5\" cols=\"50\">{$notes}</textarea>\n  </p>\n</div>\n\n<div class=\"row\" style=\"width: 80%;\">\n  <p style=\"margin-left: 4em; margin-top: 1em;\">&nbsp;</p>\n  <p style=\"margin-left: 4em; margin-top: 0;\">\n    <input type=\"submit\" name=\"{$actionid}input_submit\" value=\"{$mod->Lang(''send'')}\"/>\n    <input type=\"submit\" name=\"{$actionid}input_cancel\" value=\"{$mod->Lang(''cancel'')}\"/>\n  </p>\n</div>\n{$formend}',NULL,NULL),
  ('Uploads_mapi_pref_send_upload_notifications_to','',NULL,NULL),
  ('Uploads_mapi_pref_subnet_exclusions','',NULL,NULL),
  ('Uploads_mapi_pref_summaryrpt_sysdefault','<!-- Start Upload Summary Template -->\n{if isset($input_filter) }\n{$startform}\n{$prompt_filter}{$input_filter}{$hidden_params}{$input_submit}\n{$endform}\n<br/>\n{if isset($matches)}\n{$matches}&nbsp;{$matchestext}\n{/if}\n{/if}\n\n<div>\n{if isset($prevpage_url)}\n  <a href=\"{$firstpage_url}\" title=\"{$firstpage}\">{$firstpage_arrow}</a>\n  <a href=\"{$prevpage_url}\" title=\"{$prevpage}\">{$prevpage_arrow}</a>\n{/if}\n{if $numpages > 1}\n  &nbsp;&nbsp;{$pagetext} {$pagenum} {$oftext} {$numpages}&nbsp;&nbsp;\n{/if}\n{if isset($nextpage_url)}\n  <a href=\"{$nextpage_url}\" title=\"{$nextpage}\">{$nextpage_arrow}</a>\n  <a href=\"{$lastpage_url}\" title=\"{$lastpage}\">{$lastpage_arrow}</a>\n{/if}\n</div>\n\n{foreach from=$items item=''entry'' name=''uploads''}\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    <div class=\"row\" style=\"width: 100%; padding-bottom: 10px;\">\n  {/if}\n \n  <div class=\"upload\" style=\"float: left; width: 33%;\">\n    <a href=\"{$entry->detailurl}\">{$entry->upload_name}</a>&nbsp;({$entry->size})<br/>\n    <a href=\"{$entry->download_url}\" title=\"{$entry->upload_name}\">\n      {if isset($entry->thumbnail_url)}\n        <img src=\"{$entry->thumbnail_url}\" alt=\"\">\n      {else}\n        <img src=\"{$entry->iconurl}\" alt=\"\">\n      {/if}\n    </a>\n    <br/>\n    <a href=\"{$entry->sendfile_url}\" title=\"\">Send this file</a><br/>\n    {$author}: {$entry->author}<br/>\n    {$date}: {$entry->date}<br/>\n    {$entry->summary}\n  </div>\n\n  {if ($smarty.foreach.uploads.index == 0) or ($smarty.foreach.uploads.index % 3 == 0)}\n    </div>\n  {/if}\n  {foreach name=fields from=$entry->fields key=''fldname'' item=''field''}\n    {$field.name}: {$field.value}<br/>\n  {/foreach}\n{/foreach}\n<!-- End Upload Summary Template -->\n',NULL,NULL),
  ('Uploads_mapi_pref_uploadform_sysdefault','<!-- Upload form template -->\n{$startform}\n{if isset($max_uploadsize)}\n<input type=''hidden'' name=\"MAX_UPLOAD_SIZE\" value=\"{$max_uploadsize}\"/>\n{/if}\n{if isset($noauthor) } \n{$input_author}\n{else}\n<p>{$prompt_author}:&nbsp;<input type=\"text\" name=\"{$actionid}input_author\" value=\"{$author}\" size=\"20\" maxlength=\"255\"/></p>\n{/if}\n<p>{$prompt_upload}:&nbsp;<input type=\"file\" name=\"{$actionid}input_browse\" value=\"\" size=\"50\" maxlength=\"255\"/></p>\n<p>{$prompt_summary}&nbsp;<input type=\"text\" name=\"{$actionid}input_summary\" value=\"\" size=\"40\" maxlength=\"255\"/></p>\n</p>\n<p>{$prompt_description}&nbsp;<textarea name=\"{$actionid}input_description\"></textarea></p>\n<p>{$prompt_destname}&nbsp;<input type=\"text\" name=\"{$actionid}input_destname\" value=\"\" size=\"40\" maxlength=\"255\"/>&nbsp;{$info_destname}</p>\n<p>{$prompt_thumbnail}&nbsp;<input type=\"file\" name=\"{$actionid}input_thumbnail\" value=\"\" size=\"40\" maxlength=\"255\"/>&nbsp;{$info_thumbnail}</p>\n\n{if isset($fields)}\n  {foreach from=$fields item=''one'' key=''name''}\n  {strip}<p>{$one.name}:&nbsp;\n  {if isset($one.input)}\n    {$one.input}\n  {elseif $one.type == ''textinput''}\n    <input type=\"text\" name=\"{$actionid}field_{$one.id}\" value=\"{$one.value}\" size=\"{$one.attrib.length}\" maxlength=\"{$one.attrib.maxlength}\"/>\n  {elseif $one.type == ''checkbox''}\n    <input type=\"checkbox\" name=\"{$actionid}field_{$one.id}\" value=\"1\"{if $one.value == 1} checked=\"checked\"{/if}/>\n  {elseif $one.type == ''dropdown''}\n    <select name=\"{$actionid}field_{$one.id}\">\n      {html_options options=$one.attrib.options}\n    </select>\n  {elseif $one.type == ''multiselect''}\n    <select multiple=\"multiple\" size=\"4\" name=\"{$actionid}field_{$one.id}[]\">\n      {html_options options=$one.attrib.options}\n    </select>\n  {/if}{/strip}\n  {/foreach}\n{/if}\n{if isset($captcha)}\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p><input type=\"text\" name=\"{$actionid}input_captcha\" size=\"10\" maxlength=\"10\"/></p>\n{/if}\n<p><input type=\"submit\" name=\"{$actionid}input_submit\" value=\"{$mod->Lang(''submit'')}\"/></p>\n{$endform}\n<!-- Upload form template -->\n',NULL,NULL),
  ('Uploads_mapi_pref_valid_uploadextensions','png,gif,jpg,JPEG,bmp,wmf,wma,wmv,mpg,zip,tar,gz,bz2,mp3,wav,au,ogg,xml,pdf',NULL,NULL),
  ('Uploads_mapi_pref_yousenditform_sysdefault','{* yousendit interface *}\n{if isset($message)}\n<div style=\"border: 1px solid #99FD99; color: #000; background: #DAFEDA; margin-bottom: 0.5em;\">\n<ul>\n  {foreach from=$messages item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{if isset($errors)}\n<div style=\"border: 1px dashed #FD9999; color: #000; background: #FEDADA; ; margin-bottom: 0.5em;\">\n<ul>\n  {foreach from=$errors item=''one''}\n  <li>{$one}</li>\n  {/foreach}\n</ul>\n</div>\n{/if}\n\n{$startform}\n<p>{$mod->Lang(''author'')}:&nbsp;\n  <input type=\"text\" name=\"author\" size=\"20\" maxlength=\"255\" value=\"{$author}\"/>\n</p>\n\n<p>{$mod->Lang(''summary'')}:\n  <input type=\"text\" name=\"{$actionid}input_summary\" size=\"40\" maxlength=\"255\" value=\"{$summary}\"/>\n</p>\n\n<p>{$mod->Lang(''description'')}:&nbsp;\n  <textarea name=\"{$actionid}input_description\">{$description}</textarea>\n</p>\n\n<p>{$mod->Lang(''destname'')}:&nbsp;\n  <input type=\"text\" name=\"{$actionid}input_destname\" size=\"40\" maexlength=\"255\" value=\"{$destname}\"/><br/>\n  {$mod->Lang(''info_destname'')}\n</p>\n\n<p>{$mod->Lang(''thumbnail'')}:&nbsp;\n  <input type=\"file\" name=\"{$actionid}input_thumbnail\" size=\"50\"/>\n</p>\n\n<p>{$mod->Lang(''prompt_replace'')}:&nbsp;\n  <input type=\"hidden\" name=\"{$actionid}input_replace\" value=\"0\"/>\n  <input type=\"checkbox\" name=\"{$actionid}input_replace\" value=\"1\"/><br/>\n  {$mod->Lang(''info_replace'')}\n</p>\n\n<p>*{$mod->Lang(''upload'')}:&nbsp;\n  <input type=\"file\" name=\"{$actionid}input_browse\" size=\"50\"/>\n</p>\n\n<br/>\n<hr/>\n<br/>\n\n<p>*{$mod->Lang(''to'')}:&nbsp;\n  <textarea name=\"{$actionid}input_sendto\" rows=\"2\" cols=\"50\">{$sendto}</textarea>\n</p>\n\n<p>*{$mod->Lang(''subject'')}:&nbsp;\n  <input type=\"text\" name=\"{$actionid}input_subject\" value=\"{$subject}\" size=\"50\"/>\n</p>\n\n<p>{$mod->Lang(''notes'')}:&nbsp;\n  <textarea name=\"{$actionid}input_notes\" rows=\"5\" cols=\"50\">{$notes}</textarea>\n</p>\n\n<p>{$captcha_title}&nbsp;{$captcha}</p>\n<p>{$input_captcha}</p>\n<p>\n  <input type=\"submit\" name=\"{$actionid}input_submit\" value=\"{$mod->Lang(''send'')}\"/>\n  <input type=\"submit\" name=\"{$actionid}input_cancel\" value=\"{$mod->Lang(''cancel'')}\"/>\n</p>\n\n{$endform}\n<!-- Upload form template -->\n',NULL,NULL),
  ('urlcheckversion','',NULL,NULL),
  ('useadvancedcss','1','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('xmlmodulerepository','','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('__listcontent_timelock__','1320323585',NULL,NULL),
  ('__NOTIFICATIONS__','a:1:{i:0;O:8:\"stdClass\":4:{s:8:\"priority\";i:1;s:4:\"html\";s:403:\"Your mail settings have not been configured.  This could interfere with the ability of your website to send email messages.  You should go to <a href=\"moduleinterface.php?_sx_=b2d0e4a6&amp;module=CMSMailer\">Extensions >> CMSMailer</a> and configure the mail settings with the information provided by your host.&nbsp;This test is generated on an infrequent basis.  It may take some time for it to go away\";s:4:\"name\";s:9:\"CMSMailer\";s:12:\"friendlyname\";s:9:\"CMSMailer\";}}',NULL,NULL);
COMMIT;

#
# Data for the `cms_templates` table  (LIMIT 0,500)
#

INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES 
  (15,'CSSMenu left + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\n\n    <!--[if lte IE 6]>\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* anything class=\"accessibility\" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Left sidebar + 1 column\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Navigation, stylesheet  \"Navigation: CSSMenu - Vertical\" *}\n            <h2 class=\"accessibility\">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu.tpl''}\n            <hr class=\"accessibility\" />\n{* End Navigation *}\n\n{* Start News, stylesheet  \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class=\"back1\">\n          <div class=\"back2\">\n            <div class=\"back3\">\n              <div id=\"main\">\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class=\"accessibility\" />\n                <div class=\"clear\">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>','','',1,0,'2006-07-25 21:22:33','2011-11-12 02:39:26'),
  (16,'CSSMenu top + 2 columns','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir=\"start\" rellink=1}\r\n {cms_selflink dir=\"prev\" rellink=1}\r\n {cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type=\"text/JavaScript\">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw=\"auto\",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type=\"text/css\">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n  </head>\r\n  <body>\r\n    <div id=\"pagewrapper\">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class=\"accessibility\">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Top menu + 2 columns\" *}\r\n      <div id=\"header\">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class=\"headright\">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation *}\r\n      <div id=\"menu_vert\">\r\n{* stylesheet  \"Navigation: CSSMenu - Horizontal\" *}\r\n        <h2 class=\"accessibility\">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu.tpl''}\r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class=\"crbk\">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class=\"breadcrumbs\">\r\n<!-- <img src=''uploads/lastevent.png''> -->\r\n        {breadcrumbs root=''Home'' delimiter=''&raquo;''}\r\n          <hr class=\"accessibility\" />\r\n        </div>\r\n      </div>\r\n\r\n\r\n\r\n{* End Breadcrumbs *}\r\n\r\n\r\n{* Start Content *}\r\n      <div id=\"content\">\r\n\r\n{* Start Sidebar *}\r\n        <div id=\"sidebar\">\r\n          <div id=\"sidebarb\">\r\n\r\n\r\n          {content block=''Sidebar''}\r\n\r\n{* start login *}\r\n{* <div id=\"news\" style=\"padding: 7px 7px 7px 7px\"> *}\r\n{* {FrontEndUsers} *}\r\n{* </div> *}\r\n\r\n{* end login *}\r\n\r\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\r\n{*      <div id=\"news\"> *}\r\n{*      {search} *}\r\n{*      </div> *}\r\n{* End Search *}\r\n\r\n{* Start News, stylesheet  \"Module: News\" *}\r\n\t<div id=\"news\">\r\n\t\t<h2>News</h2>\r\n\t\t{news number=''3'' detailpage=''news''}\r\n\r\n\t\t<div style=\"padding: 7px 7px 7px 7px\">\r\n\t\t\t<a href=\"{cms_selflink href=''submitnews''}\">Submit News</a>\r\n\t\t</div>\r\n\t</div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class=\"back1\">\r\n          <div class=\"back2\">\r\n            <div class=\"back3\">\r\n              <div id=\"main\" style=\"overflow: auto; height: 425px;\">\r\n                <div style=\"float: right;\" >{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n{*            <div class=\"right49\">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n*}\r\n{*\r\n            <div class=\"left49\">\r\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\r\n*}\r\n\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\r\n{*\r\n              <br />\r\n              {cms_selflink dir=\"next\"}\r\n              </p>\r\n            </div>\r\n*}\r\n{* End relational links *}\r\n\r\n                <hr class=\"accessibility\" />\r\n                <div class=\"clear\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\r\n{*      <div class=\"footback\">\r\n        <div id=\"footer\"> *}\r\n{* stylesheet  \"Navigation: FatFootMenu\" *}\r\n{*          <div id=\"fooleft\">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id=\"footrt\">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class=\"clear\"></div>\r\n        </div>\r\n      </div> *}\r\n{* End Footer *}\r\n\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>','','',1,1,'2006-07-25 21:22:33','2011-11-23 08:49:41'),
  (17,'Left simple navigation + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Left sidebar + 1 column\" *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* anything with class=\"accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Left sidebar + 1 column\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1> \n       \n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Navigation, stylesheet  \"Navigation: Simple - Vertical\" *}\n            <div id=\"menu_vert\">\n              <h2 class=\"accessibility\">Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' collapse=''1''}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class=\"back\">        \n          <div id=\"main\">\n            <div style=\"float: right;\">{print showbutton=true script=true}</div>\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class=\"accessibility\" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class=\"clear\"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>','','',1,0,'2006-07-25 21:22:33','2011-11-12 02:39:26'),
  (18,'Top simple navigation + left subnavigation + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Top menu + 2 columns\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>\n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id=\"menu_horiz\">\n{* stylesheet  \"Navigation: Simple - Horizontal\" *}\n        <h2 class=\"accessibility\">Navigation</h2>\n        {menu loadprops=0 template=''simple_navigation.tpl'' number_of_levels=''1''}\n        <hr class=\"accessibility\" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Sub Navigation, stylesheet  \"Navigation: Simple - Vertical\" *}\n            <div id=\"menu_vert\">\n              <h2 class=\"accessibility\">Sub Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' start_level=''2'' collapse=''1''}\n                <hr class=\"accessibility\" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class=\"back1\">\n          <div class=\"back2\">\n            <div class=\"back3\">\n              <div id=\"main\">\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class=\"accessibility\" />\n                <div class=\"clear\"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>','','',1,0,'2006-07-25 21:22:33','2011-11-23 08:49:41'),
  (19,'Minimal template','{process_pagedata}\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style=\"float: left; width: 25%;\">\r\n         {menu loadprops=0 template=''minimal_menu.tpl''}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>',NULL,NULL,1,0,'2006-07-25 21:22:33','2011-11-12 02:39:26'),
  (20,'ShadowMenu Tab + 2 columns','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir=\"start\" rellink=1}\r\n {cms_selflink dir=\"prev\" rellink=1}\r\n {cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type=\"text/JavaScript\">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw=\"auto\",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type=\"text/css\">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n\r\n  </head>\r\n  <body>\r\n    <div id=\"pagewrapper\">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class=\"accessibility\">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Top menu + 2 columns\" *}\r\n      <div id=\"header\">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class=\"headright\">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation, stylesheet \"Navigation: ShadowMenu - Horizontal\" *}\r\n      <div id=\"menu_vert\">\r\n        <h2 class=\"accessibility\">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\r\n      <div id=\"search\">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class=\"crbk\">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class=\"breadcrumbs\">\r\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n          <hr class=\"accessibility\" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id=\"content\">\r\n\r\n{* Start Sidebar *}\r\n        <div id=\"sidebar\">\r\n          <div id=\"sidebarb\">\r\n          {content block=''Sidebar''}\r\n\r\n{* Start News, stylesheet  \"Module: News\" *}\r\n            <div id=\"news\">\r\n              <h2>News</h2>\r\n              {news number=''3'' detailpage=''news''}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class=\"back1\">\r\n          <div class=\"back2\">\r\n            <div class=\"back3\">\r\n              <div id=\"main\">\r\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class=\"right49\">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n            <div class=\"left49\">\r\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\r\n\r\n              <br />\r\n              {cms_selflink dir=\"next\"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class=\"accessibility\" />\r\n                <div class=\"clear\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\r\n      <div class=\"footback\">\r\n        <div id=\"footer\">\r\n{* stylesheet  \"Navigation: FatFootMenu\" *}\r\n          <div id=\"fooleft\">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id=\"footrt\">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class=\"clear\"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>','','',1,0,'2009-05-01 04:30:42','2011-11-23 08:49:41'),
  (21,'ShadowMenu left + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\n\n    <!--[if lte IE 6]>\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Left sidebar + 1 column\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Navigation, stylesheet  \"Navigation: ShadowMenu - Vertical\" *}\n            <h2 class=\"accessibility\">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\n            <hr class=\"accessibility\" />\n\n{* Start News, stylesheet  \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class=\"back1\">\n          <div class=\"back2\">\n            <div class=\"back3\">\n              <div id=\"main\">\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class=\"accessibility\" />\n                <div class=\"clear\"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>','','',1,0,'2009-05-01 23:17:51','2011-11-12 02:39:26'),
  (22,'NCleanBlue','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel=\"canonical\" href=\"{$canonical}\" />{elseif isset($content_obj)}<link rel=\"canonical\" href=\"{$content_obj->GetURL()}\" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir=\"start\" rellink=1}\r\n{cms_selflink dir=\"prev\" rellink=1}\r\n{cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\"  src=\"uploads/NCleanBlue/js/ie6fix.js\"></script>\r\n<script type=\"text/javascript\">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(''.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version'');\r\n</script>\r\n<style type=\"text/css\">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand(\"BackgroundImageCache\", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id=\"ncleanblue\">\r\n      <div id=\"pagewrapper\" class=\"core-wrap-960 core-center\">\r\n{* start accessibility skip links *}\r\n        <ul class=\"accessibility\">\r\n          <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n          <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id=\"header\" class=\"util-clearfix\">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  \"Layout: NCleanBlue\" *}\r\n          <div id=\"logo\" class=\"core-float-left\">\r\n            {cms_selflink dir=\"start\" text=\"$sitename\"}\r\n          </div>\r\n          \r\n{* Start Search, the input \"Submit\" is using an image, CSS: div#search input.search-button *}\r\n          <div id=\"search\" class=\"core-float-right\">\r\n            {search search_method=\"post\"}\r\n          </div>\r\n{* End Search *}\r\n          <span class=\"util-clearb\">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  \"Layout: NCleanBlue\", starting at Menu  ROOT *}\r\n          <h2 class=\"accessibility util-clearb\">Navigation</h2>\r\n{* anything class=\"accessibility\" is hidden for visual browsers by CSS *}\r\n          <div class=\"page-menu util-clearfix\">\r\n          {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n          </div>\r\n          <hr class=\"accessibility util-clearb\" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id=\"content\" class=\"util-clearfix\"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          {*<div title=\"CMS - {cms_version} - {cms_versionname}\" id=\"version\">\r\n          {capture assign=''cms_version''}{cms_version|lower}{/capture}{\"/-([a-z]).*/\"|preg_replace:\"\":$cms_version}\r\n          </div>*}\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id=\"bar\" class=\"util-clearfix\">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class=\"breadcrumbs core-float-right\">\r\n              {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class=\"accessibility util-clearb\" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id=\"left\" class=\"core-float-left\">\r\n            <div class=\"sbar-top\">\r\n              <h2 class=\"sbar-title\">News</h2>\r\n            </div>\r\n            <div class=\"sbar-main\">\r\n{* Start News *}\r\n              <div id=\"news\">\r\n              {news number=''3'' detailpage=''news''}\r\n              </div>\r\n              <img class=\"screen\" src=\"uploads/NCleanBlue/screen-1.6.jpg\" width=\"139\" height=\"142\" title=\"CMS - {cms_version} - {cms_versionname}\" alt=\"CMS - {cms_version} - {cms_versionname}\" />\r\n{* End News *} \r\n            </div>\r\n            <span class=\"sbar-bottom\">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id=\"main\"  class=\"core-float-right\">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class=\"main-top\">\r\n              <div class=\"print core-float-right\">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class=\"main-main util-clearfix\">\r\n              <h1 class=\"title\">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class=\"main-bottom\">\r\n              <div class=\"right49 core-float-right\">\r\n              {anchor anchor=''main'' text=''^&nbsp;&nbsp;Top''}\r\n              </div>\r\n              <div class=\"left49 core-float-left\">\r\n                <span>\r\n                  {cms_selflink dir=\"previous\" label=\"Previous page: \"}&nbsp;\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir=\"next\"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class=\"accessibility\" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class=\"util-clearb\">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id=\"footer-wrapper\">\r\n        <div id=\"footer\" class=\"core-wrap-960\">\r\n{* first foot menu *}\r\n          <div class=\"block core-float-left\">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  number_of_levels=''1''}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class=\"block core-float-left\">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  start_level=\"2\"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called \"footer\" *}\r\n          <div class=\"block cms core-float-left\">\r\n            {global_content name=''footer''}\r\n          </div>\r\n          \r\n          <span class=\"util-clearb\">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>','','',1,0,'2009-05-06 14:20:10','2011-11-12 02:39:26'),
  (23,'PopupPage','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir=\"start\" rellink=1}\r\n {cms_selflink dir=\"prev\" rellink=1}\r\n {cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type=\"text/JavaScript\">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw=\"auto\",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type=\"text/css\">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n  </head>\r\n  <body>\r\n    <div id=\"pagewrapper\">\r\n\r\n      <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Content *}\r\n      <div id=\"content\">\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class=\"back1\">\r\n          <div class=\"back2\">\r\n            <div class=\"back3\">\r\n              <div id=\"main\" style=\"max-height: 300px;\">\r\n                \r\n<!--                <h2>{title}</h2> -->\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n\r\n                <hr class=\"accessibility\" />\r\n                <div class=\"clear\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>','','',1,0,'2011-11-12 02:57:03','2011-11-23 08:43:34');
COMMIT;

#
# Data for the `cms_templates_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_templates_seq` (`id`) VALUES 
  (23);
COMMIT;

#
# Data for the `cms_user_groups` table  (LIMIT 0,500)
#

INSERT INTO `cms_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES 
  (1,1,'2006-07-25 21:22:33','2006-07-25 21:22:33');
COMMIT;

#
# Data for the `cms_userplugins` table  (LIMIT 0,500)
#

INSERT INTO `cms_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES 
  (1,'user_agent','//Code to show the user''s user agent information.\r\necho $_SERVER[\"HTTP_USER_AGENT\"];','Code to show the users user agent information','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (2,'custom_copyright','//set start to date your site was published\r\n$startCopyRight=''2004'';\r\n\r\n// check if start year is this year\r\nif(date(''Y'') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.''-''. date(''Y'');\r\n}','Code to output copyright information','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  (3,'getLatestImages','//Showtime::imagecreatefromfile(\"uploads/headerbanner.png\");\r\nShowtime::manualAddPic(\"uploads/headerbanner.png\");','','2011-11-22 03:18:53','2011-11-22 04:33:52'),
  (4,'redirect','if( isset( $params[''to''] ) )\r\n  {\r\n    global $gCms;\r\n    $manager =& $gCms->GetHierarchyManager();\r\n    $node =& $manager->sureGetNodeByAlias($params[''to'']);\r\n    $content =& $node->GetContent();\r\n    if (isset($content) && is_object($content))\r\n       {\r\n         if ($content->GetURL() != '''')\r\n         {\r\n            redirect($content->GetURL());\r\n         }\r\n       }\r\n    else return ''<!-- redirect udt - page not found: ''.$params[''to''].'' -->'';\r\n  }','','2011-11-23 09:22:48','2011-11-23 09:22:48');
COMMIT;

#
# Data for the `cms_userplugins_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_userplugins_seq` (`id`) VALUES 
  (4);
COMMIT;

#
# Data for the `cms_userprefs` table  (LIMIT 0,500)
#

INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES 
  (1,'admintheme','NCleanGrey',NULL),
  (1,'ajax','0',NULL),
  (1,'bookmarks','on',NULL),
  (1,'collapse','0=1.',NULL),
  (1,'date_format_string','%x %X',NULL),
  (1,'default_cms_language','en_US',NULL),
  (1,'hide_help_links','0',NULL),
  (1,'indent','on',NULL),
  (1,'paging','0',NULL),
  (1,'recent','on',NULL),
  (1,'use_wysiwyg','1',NULL),
  (1,'wysiwyg','MicroTiny',NULL);
COMMIT;

#
# Data for the `cms_users` table  (LIMIT 0,500)
#

INSERT INTO `cms_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES 
  (1,'admin','7a14d46fcf07e6873d98fd45fb54f0e7',1,'','','admin@localhost.com',1,'2006-07-25 21:22:33','2009-05-13 07:43:16');
COMMIT;

#
# Data for the `cms_users_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_users_seq` (`id`) VALUES 
  (1);
COMMIT;

#
# Data for the `cms_version` table  (LIMIT 0,500)
#

INSERT INTO `cms_version` (`version`) VALUES 
  (35);
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
