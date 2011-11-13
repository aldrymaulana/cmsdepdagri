# SQL Manager 2005 Lite for MySQL 3.7.0.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : cms


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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
# Data for the `cms_additional_users_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_additional_users_seq` (`id`) VALUES 
  (0);

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
  (1321170836,1,'admin',68,'Content Item: Mr.Mohammad Aswan','Edited','127.0.0.1');

COMMIT;

#
# Data for the `cms_content` table  (LIMIT 0,500)
#

INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `collapsed`, `markup`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES 
  (15,'Home','content',1,-1,16,1,'00001',1,'Home','home',1,1,'html',1,1,'15','home','target,pagedata,extra1,extra2,extra3,Sidebar,image,searchable,disable_wysiwyg,image1,thumbnail,content_en','','Home Page, shortcut key=1','','1',1,'2006-07-25 21:22:31','2011-11-12 06:58:44',0,''),
  (64,'Mr. Indra Catri','content',1,67,23,1,'00008.00001',0,'indracatri','indracatri',0,NULL,'html',1,1,'67.64','memberscontainer/indracatri','content_en,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar','','','','',1,'2011-11-12 02:38:40','2011-11-13 07:43:06',0,''),
  (65,'Mr. Isman Imran','content',1,67,23,2,'00008.00002',0,'ismanimran','ismanimran',0,NULL,'html',1,1,'67.65','memberscontainer/ismanimran','extra2,extra3,disable_wysiwyg,Sidebar,content_en,searchable,pagedata,target,image,thumbnail,extra1','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-12 07:12:22','2011-11-13 07:43:15',0,''),
  (66,'Mr. Ruzaidin Noor','content',1,67,23,3,'00008.00003',0,'ruzaidin','ruzaidin',0,NULL,'html',1,1,'67.66','memberscontainer/ruzaidin','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-13 07:34:06','2011-11-13 07:43:21',0,''),
  (67,'MembersContainer','content',1,-1,16,8,'00008',0,'MembersContainer','memberscontainer',0,NULL,'html',1,1,'67','memberscontainer','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-13 07:42:57','2011-11-13 07:42:57',0,''),
  (68,'Mr.Mohammad Aswan','content',1,67,23,4,'00008.00004',0,'aswan','aswan',0,NULL,'html',1,1,'67.68','memberscontainer/aswan','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,Sidebar,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-13 07:44:50','2011-11-13 07:53:56',0,''),
  (56,'Photo','content',1,-1,16,5,'00005',0,'Photo','photo',1,NULL,'html',1,1,'56','photo','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-10-29 03:06:17','2011-11-03 15:30:36',0,''),
  (58,'News','content',1,-1,16,2,'00002',0,'News','news',1,NULL,'html',1,1,'58','news','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:28:55','2011-11-03 13:09:12',0,''),
  (59,'History','content',1,-1,16,3,'00003',0,'History','history',1,NULL,'html',1,1,'59','history','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:30:43','2011-11-03 13:09:25',0,''),
  (60,'Pengurus','content',1,-1,16,6,'00006',0,'Pengurus','pengurus',1,NULL,'html',1,1,'60','pengurus','Sidebar,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:31:01','2011-11-03 13:10:14',0,''),
  (61,'Angkatan I (Tahun 2011)','content',1,-1,16,4,'00004',0,'Profil Peserta','profil-peserta',1,NULL,'html',1,1,'61','profil-peserta','target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en,Sidebar','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:31:18','2011-11-13 07:53:05',0,''),
  (62,'Comment','content',1,-1,16,7,'00007',0,'Comment','comment',1,NULL,'html',1,1,'62','comment','Sidebar,target,image,thumbnail,extra1,extra2,extra3,searchable,pagedata,disable_wysiwyg,content_en','{* Add code here that should appear in the metadata section of all new pages *}','','','',1,'2011-11-03 12:31:34','2011-11-03 13:10:25',0,'');

COMMIT;

#
# Data for the `cms_content_props` table  (LIMIT 0,500)
#

INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES 
  (31,'string','content_en',NULL,NULL,NULL,'asdf','2006-07-25 21:22:31','2006-07-25 21:22:31'),
  (32,'string','content_en',NULL,NULL,NULL,'asdf','2006-07-25 21:22:31','2006-07-25 21:22:31'),
  (15,'string','target','','','','',NULL,'2011-11-12 06:58:44'),
  (15,'string','pagedata','','','','',NULL,'2011-11-12 06:58:44'),
  (15,'string','extra1','','','','',NULL,'2011-11-12 06:58:44'),
  (15,'string','extra2','','','','',NULL,'2011-11-12 06:58:44'),
  (15,'string','extra3','','','','',NULL,'2011-11-12 06:58:44'),
  (15,'string','Sidebar','','','','<p><strong><br /></strong></p>',NULL,'2011-11-12 06:58:44'),
  (65,'string','extra2','','','','',NULL,'2011-11-13 07:43:15'),
  (65,'string','extra3','','','','',NULL,'2011-11-13 07:43:15'),
  (15,'string','image','','','','-1',NULL,'2011-11-12 06:58:44'),
  (15,'string','searchable','','','','1',NULL,'2011-11-12 06:58:44'),
  (15,'string','disable_wysiwyg','','','','0',NULL,'2011-11-12 06:58:44'),
  (15,'string','image1','','','','uploads/images/logo1.gif',NULL,'2011-11-12 06:58:44'),
  (15,'string','thumbnail','','','','-1',NULL,'2011-11-12 06:58:44'),
  (65,'string','disable_wysiwyg','','','','0',NULL,'2011-11-13 07:43:15'),
  (65,'string','Sidebar','','','','',NULL,'2011-11-13 07:43:15'),
  (65,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"uploads/members/ismanimran.png\" alt=\"\" width=\"100\" /><strong>Mr. Isman Imran </strong>was born in Kemang on August 16, 1961. He joined civil service right after he graduated from college in 1989. He was named the Head Organizational Section of Agam District in 1996. During his tenure at Pasaman District he was assigned to conduct feasibility study of the proliferation (<em>pemekaran</em>) plan of Pasaman District, as a result in 2003, Pasaman District was subdivided into two districts: Pasaman and West Pasaman. He was transferred from Pasaman to Agam District in 2006, and got promoted to the position of Head of <em>Bappeda </em>of Agam District.</p>',NULL,'2011-11-13 07:43:15'),
  (66,'string','target','','','','',NULL,'2011-11-13 07:43:21'),
  (66,'string','image','','','','-1',NULL,'2011-11-13 07:43:21'),
  (66,'string','thumbnail','','','','-1',NULL,'2011-11-13 07:43:21'),
  (66,'string','extra1','','','','',NULL,'2011-11-13 07:43:21'),
  (66,'string','extra2','','','','',NULL,'2011-11-13 07:43:21'),
  (66,'string','extra3','','','','',NULL,'2011-11-13 07:43:21'),
  (66,'string','searchable','','','','1',NULL,'2011-11-13 07:43:21'),
  (66,'string','pagedata','','','','',NULL,'2011-11-13 07:43:21'),
  (66,'string','disable_wysiwyg','','','','0',NULL,'2011-11-13 07:43:21'),
  (66,'string','Sidebar','','','','',NULL,'2011-11-13 07:43:21'),
  (66,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"uploads/images/members/ruzaidin.png\" alt=\"\" width=\"100\" /><strong>Mr. Ruzaidin Noor </strong>was born in Martapura on December 22, 1951. He graduated from APDN (<em>Akademi Pemerintahan Dalam Negeri </em>or Academy for Local Government), a college to train local government official candidates in 1975. He joined the South Kalimantan Provincial government right after he graduate from APDN. He was transferred to Banjarmansin Municipality in 1978. He was promoted to the position of Assistant for Developmental Administration in 1998. During the New Order era, he was active as Golkar functionary in Banjarmansin chapter. </p>\r\n<p>Following the formation of Banjarbaru, he was transferred to the new municipality, where he served as the acting municipality secretary from 1999 to 2001. Beginning in 2001, he became the municipality secretary. As a career bureaucrat, he successfully got elected as vice-mayor in 2005, and he was elected as Mayor of Banjarbaru in the 2010 direct local elections. </p>',NULL,'2011-11-13 07:43:21'),
  (64,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"uploads/members/indracatri.png\" alt=\"\" width=\"100\" /><strong>Mr. Indra Catri</strong> was born in Bukittingi on April 4, 1961. After obtainin his bachelor degree from the Department of Regional Planning of Bandung Institute of Technology (ITB) in 1987, he joined civil service at the Padang Municipality <em>Bappeda </em>(Local Planning Agency) in 1990. He was transferred to various positions at the Padang Municipality office. He was named the Head of <em>Bappeda </em>Padang Municipality in 2008, previously he served as the Assistant for People’s Welfare Affairs at the Padang Municipality.</p>\r\n<p>He run for District Head of Agam in 2005, but he lost. He run again in the 2010 Agam local election and elected. As a newly elected district head, Indra Catri’s endeavor is to improve the economic infrastructure, minimize leaks in local public finance and to enhance human resources’ capacity.</p>',NULL,'2011-11-13 07:43:06'),
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
  (60,'string','Sidebar','','','','',NULL,'2011-11-03 13:10:14'),
  (62,'string','Sidebar','','','','',NULL,'2011-11-03 13:10:25'),
  (58,'string','target','','','','',NULL,'2011-11-03 13:09:12'),
  (58,'string','image','','','','-1',NULL,'2011-11-03 13:09:12'),
  (58,'string','thumbnail','','','','-1',NULL,'2011-11-03 13:09:12'),
  (58,'string','extra1','','','','',NULL,'2011-11-03 13:09:12'),
  (58,'string','extra2','','','','',NULL,'2011-11-03 13:09:12'),
  (58,'string','extra3','','','','',NULL,'2011-11-03 13:09:12'),
  (58,'string','searchable','','','','1',NULL,'2011-11-03 13:09:12'),
  (58,'string','pagedata','','','','',NULL,'2011-11-03 13:09:12'),
  (58,'string','disable_wysiwyg','','','','0',NULL,'2011-11-03 13:09:12'),
  (58,'string','content_en','','','','<!-- Add code here that should appear in the content block of all new pages -->',NULL,'2011-11-03 13:09:12'),
  (59,'string','target','','','','',NULL,'2011-11-03 13:09:25'),
  (59,'string','image','','','','-1',NULL,'2011-11-03 13:09:25'),
  (59,'string','thumbnail','','','','-1',NULL,'2011-11-03 13:09:25'),
  (59,'string','extra1','','','','',NULL,'2011-11-03 13:09:25'),
  (59,'string','extra2','','','','',NULL,'2011-11-03 13:09:25'),
  (59,'string','extra3','','','','',NULL,'2011-11-03 13:09:25'),
  (59,'string','searchable','','','','1',NULL,'2011-11-03 13:09:25'),
  (59,'string','pagedata','','','','',NULL,'2011-11-03 13:09:25'),
  (59,'string','disable_wysiwyg','','','','0',NULL,'2011-11-03 13:09:25'),
  (59,'string','content_en','','','','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>',NULL,'2011-11-03 13:09:25'),
  (60,'string','target','','','','',NULL,'2011-11-03 13:10:14'),
  (60,'string','image','','','','-1',NULL,'2011-11-03 13:10:14'),
  (60,'string','thumbnail','','','','-1',NULL,'2011-11-03 13:10:14'),
  (60,'string','extra1','','','','',NULL,'2011-11-03 13:10:14'),
  (60,'string','extra2','','','','',NULL,'2011-11-03 13:10:14'),
  (60,'string','extra3','','','','',NULL,'2011-11-03 13:10:14'),
  (60,'string','searchable','','','','1',NULL,'2011-11-03 13:10:14'),
  (60,'string','pagedata','','','','',NULL,'2011-11-03 13:10:14'),
  (60,'string','disable_wysiwyg','','','','0',NULL,'2011-11-03 13:10:14'),
  (60,'string','content_en','','','','<div>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n</div>',NULL,'2011-11-03 13:10:14'),
  (61,'string','target','','','','',NULL,'2011-11-13 07:53:05'),
  (61,'string','image','','','','-1',NULL,'2011-11-13 07:53:05'),
  (61,'string','thumbnail','','','','-1',NULL,'2011-11-13 07:53:05'),
  (61,'string','extra1','','','','',NULL,'2011-11-13 07:53:05'),
  (61,'string','extra2','','','','',NULL,'2011-11-13 07:53:05'),
  (61,'string','extra3','','','','',NULL,'2011-11-13 07:53:05'),
  (61,'string','searchable','','','','1',NULL,'2011-11-13 07:53:05'),
  (61,'string','pagedata','','','','',NULL,'2011-11-13 07:53:05'),
  (61,'string','disable_wysiwyg','','','','0',NULL,'2011-11-13 07:53:05'),
  (62,'string','target','','','','',NULL,'2011-11-03 13:10:25'),
  (62,'string','image','','','','-1',NULL,'2011-11-03 13:10:25'),
  (62,'string','thumbnail','','','','-1',NULL,'2011-11-03 13:10:25'),
  (62,'string','extra1','','','','',NULL,'2011-11-03 13:10:25'),
  (62,'string','extra2','','','','',NULL,'2011-11-03 13:10:25'),
  (62,'string','extra3','','','','',NULL,'2011-11-03 13:10:25'),
  (62,'string','searchable','','','','1',NULL,'2011-11-03 13:10:25'),
  (62,'string','pagedata','','','','',NULL,'2011-11-03 13:10:25'),
  (62,'string','disable_wysiwyg','','','','0',NULL,'2011-11-03 13:10:25'),
  (62,'string','content_en','','','','<div>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n</div>',NULL,'2011-11-03 13:10:25'),
  (61,'string','content_en','','','','{literal}\r\n<link href=\"uploads/popup/css/thickbox.css\" rel=\"stylesheet\" type=\"text/css\" display=\"screen\" />\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/jquery-1.4.4.js\"></script>\r\n<script type=\"text/javascript\" src=\"uploads/popup/js/thickbox.js\"></script>\r\n{/literal}\r\n<div>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"vertical-align: top;\">\r\n<td>\r\n<p style=\"color: #a91617;\">Bupati &amp; Walikota Lubuk Basung, Sumatera Barat</p>\r\n<ul>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''indracatri''}\">Mr. Indra Catri</a></li>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''ismanimran''}\">Mr. Isman Imran</a></li>\r\n</ul>\r\n</td>\r\n<td>\r\n<p style=\"color: #a91617;\">Bupati &amp; Walikota Banjarbaru, Kalimantan Selatan</p>\r\n<ul>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''ruzaidin''}\">Mr. Muhammad Ruzaidin Noor</a></li>\r\n<li><a class=\"thickbox\" href=\"{cms_selflink href=''aswan''}\">Mr. Mohammad Aswan</a></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>',NULL,'2011-11-13 07:53:05'),
  (68,'string','target','','','','',NULL,'2011-11-13 07:53:56'),
  (68,'string','image','','','','-1',NULL,'2011-11-13 07:53:56'),
  (68,'string','thumbnail','','','','-1',NULL,'2011-11-13 07:53:56'),
  (68,'string','extra1','','','','',NULL,'2011-11-13 07:53:56'),
  (68,'string','extra2','','','','',NULL,'2011-11-13 07:53:56'),
  (68,'string','extra3','','','','',NULL,'2011-11-13 07:53:56'),
  (68,'string','searchable','','','','1',NULL,'2011-11-13 07:53:56'),
  (68,'string','pagedata','','','','',NULL,'2011-11-13 07:53:56'),
  (68,'string','disable_wysiwyg','','','','0',NULL,'2011-11-13 07:53:56'),
  (68,'string','Sidebar','','','','',NULL,'2011-11-13 07:53:56'),
  (68,'string','content_en','','','','<p><img style=\"float: left; margin-right: 15px; margin-bottom: 15px;\" src=\"uploads/images/members/aswan.png\" alt=\"\" width=\"100\" />\r\n<strong>Mr. Mohammad Aswan</strong> was born in Banjarbaru on September 19, 1962. He built his career in local government bureaucracy in Tanah Laut District, South Kalimantan Province, immediately after graduating from Hasanuddin University in 1989. He served as Sub-district Head (<em>camat</em>) of Kurau in Tanah Laut Disrict from 2001 to 2002. After the formation of Banjarbaru Municipality, he moved to the new municipality and served as the Head of Economic Affairs. Meanwhile he pursued his master degree in public administration at Gadjah Mada University in 1995 and doctorate degree in public administration at Brawijaya University in 2008. He was named Head of <em>Bappeda </em>of Banjarbaru municipality in 2010.</p>',NULL,'2011-11-13 07:53:56'),
  (15,'string','content_en','','','','<div>\r\n<div>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.</p>\r\n<p>Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.</p>\r\n</div>\r\n</div>',NULL,'2011-11-12 06:58:44'),
  (58,'string','Sidebar','','','','',NULL,'2011-11-03 13:09:12'),
  (59,'string','Sidebar','','','','',NULL,'2011-11-03 13:09:25'),
  (61,'string','Sidebar','','','','',NULL,'2011-11-13 07:53:05'),
  (56,'string','Sidebar','','','','',NULL,'2011-11-03 15:30:36'),
  (64,'string','target','','','','',NULL,'2011-11-13 07:43:06'),
  (64,'string','image','','','','-1',NULL,'2011-11-13 07:43:06'),
  (64,'string','thumbnail','','','','-1',NULL,'2011-11-13 07:43:06'),
  (64,'string','extra1','','','','',NULL,'2011-11-13 07:43:06'),
  (64,'string','extra2','','','','',NULL,'2011-11-13 07:43:06'),
  (64,'string','extra3','','','','',NULL,'2011-11-13 07:43:06'),
  (64,'string','searchable','','','','1',NULL,'2011-11-13 07:43:06'),
  (64,'string','pagedata','','','','',NULL,'2011-11-13 07:43:06'),
  (64,'string','disable_wysiwyg','','','','0',NULL,'2011-11-13 07:43:06'),
  (65,'string','searchable','','','','1',NULL,'2011-11-13 07:43:15'),
  (65,'string','pagedata','','','','',NULL,'2011-11-13 07:43:15'),
  (64,'string','Sidebar','','','','',NULL,'2011-11-13 07:43:06'),
  (65,'string','target','','','','',NULL,'2011-11-13 07:43:15'),
  (65,'string','image','','','','-1',NULL,'2011-11-13 07:43:15'),
  (65,'string','thumbnail','','','','-1',NULL,'2011-11-13 07:43:15'),
  (65,'string','extra1','','','','',NULL,'2011-11-13 07:43:15');

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
  (68);

COMMIT;

#
# Data for the `cms_crossref` table  (LIMIT 0,500)
#

INSERT INTO `cms_crossref` (`child_type`, `child_id`, `parent_type`, `parent_id`, `create_date`, `modified_date`) VALUES 
  ('global_content',1,'template',15,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
  ('global_content',1,'template',16,'2011-11-12 02:39:26','2011-11-12 02:39:26'),
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
  (41,'Handheld','/*********************************************\r\nSample stylesheet for mobile and small screen handheld devices\r\n\r\nJust a simple layout suitable for smaller screens with less \r\nstyling cabapilities and minimal css\r\n\r\nNote: If you dont want to support mobile devices you can\r\nsafely remove this stylesheet.\r\n*********************************************/\r\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\r\nbody {\r\nmargin:0;\r\npadding:0;\r\nwidth:100%;\r\n}\r\n\r\n/* hide accessibility noprint and definition */\r\n.accessibility,\r\n.noprint,\r\ndfn {\r\ndisplay:none;\r\n}\r\n\r\n/* dont want to download image for header so just set bg color */\r\ndiv#header,\r\ndiv#footer {\r\nbackground-color: #385C72;  \r\ncolor: #fff;\r\ntext-align:center;\r\n}\r\n\r\n/* text colors for header and footer */\r\ndiv#header a,\r\ndiv#footer a {\r\ncolor: #fff;\r\n}\r\n\r\n/* this doesnt look as nice, but takes less space */\r\ndiv#menu_vert ul li,\r\ndiv#menu_horiz ul li {\r\ndisplay:inline;\r\n}\r\n\r\n/* small border at the bottom to have some indicator */\r\ndiv#menu_vert ul,\r\ndiv#menu_horiz ul {\r\nborder-bottom:1px solid #fff;\r\n}\r\n\r\n/* save some space */\r\ndiv.breadcrumbs {\r\ndisplay:none;\r\n}','handheld','2006-07-25 21:22:32','2006-07-25 21:22:32'),
  (30,'Print','/*\r\nSections that are hidden when printing the page. We only want the content printed.\r\n*/\r\n\r\n\r\nbody {\r\ncolor: #000 !important; /* we want everything in black */\r\nbackground-color:#fff !important; /* on white background */\r\nfont-family:arial; /* arial is nice to read ;) */\r\nborder:0 !important; /* no borders thanks */\r\n}\r\n\r\n/* This affects every tag */\r\n* {\r\nborder:0 !important; /* again no borders on printouts */\r\n}\r\n\r\n/* \r\nno need for accessibility on printout. \r\nMark all your elements in content you \r\ndont want to get printed with class=\"noprint\"\r\n*/\r\n.accessibility,\r\n.noprint\r\n {\r\ndisplay:none !important; \r\n}\r\n\r\n/* \r\nremove all width constraints from content area\r\n*/\r\ndiv#content,\r\ndiv#main {\r\ndisplay:block !important;\r\nwidth:100% !important;\r\nborder:0 !important;\r\npadding:1em !important;\r\n}\r\n\r\n/* hide everything else! */\r\ndiv#header,\r\ndiv#header h1 a,\r\ndiv.breadcrumbs,\r\ndiv#search,\r\ndiv#footer,\r\ndiv#menu_vert,\r\ndiv#news,\r\ndiv.right49,\r\ndiv.left49,\r\ndiv#sidebar  {\r\n   display: none !important;\r\n}\r\n\r\nimg {\r\nfloat:none; /* this makes images couse a pagebreak if it doesnt fit on the page */\r\n}','print','2006-07-25 21:22:32','2006-07-25 21:22:32'),
  (31,'Accessibility and cross-browser tools','/* accessibility */\r\n/* menu links accesskeys */\r\nspan.accesskey {\r\n\ttext-decoration: none;\r\n}\r\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\r\n.accessibility, hr {\r\n/* position set so the rest can be set out side of visual browser viewport */\r\n\tposition: absolute;\r\n/* takes it out top side */\r\n\ttop: -999em;\r\n/* takes it out left side */\r\n\tleft: -999em;\r\n}\r\n/* definition tags are also hidden, these are also used for accessibility menu links */\r\ndfn {\r\n\tposition: absolute;\r\n\tleft: -1000px;\r\n\ttop: -1000px;\r\n\twidth: 0;\r\n\theight: 0;\r\n\toverflow: hidden;\r\n\tdisplay: inline;\r\n}\r\n/* end accessibility */\r\n/* wiki style external links */\r\n/* external links will have \"(external link)\" text added, lets hide it */\r\na.external span {\r\n\tposition: absolute;\r\n\tleft: -5000px;\r\n\twidth: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n\tpadding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n\tcolor: #18507C;\r\n/* background image for the link to show wiki style arrow */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n\tcolor: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n\tbackground-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* clearing */\r\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\r\n.clearfix:after {\r\n\tcontent: \".\";\r\n\tdisplay: block;\r\n\theight: 0;\r\n\tclear: both;\r\n\tvisibility: hidden;\r\n}\r\n.clear {\r\n\theight: 0;\r\n\tclear: both;\r\n\twidth: 90%;\r\n\tvisibility: hidden;\r\n}\r\n#main .clear {\r\n\theight: 0;\r\n\tclear: right;\r\n\twidth: 90%;\r\n\tvisibility: hidden;\r\n}\r\n* html>body .clearfix {\r\n\tdisplay: inline-block;\r\n\twidth: 100%;\r\n}\r\n* html .clear {\r\n/* Hides from IE-mac \\*/\r\n\theight: 1%;\r\n\tclear: right;\r\n\twidth: 90%;\r\n/* End hide from IE-mac */\r\n}\r\n/* end clearing */','screen','2006-07-25 21:22:32','2009-05-13 10:42:54'),
  (32,'Layout: Left sidebar + 1 column','/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n\ttext-align: left;\r\n\tfont-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n\tfont-size: 75.01%;\r\n\tline-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n\tfont-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don''t want that*/\r\nimg {\r\n\tborder: 0;\r\n}\r\n/*default link styles*/\r\na, a:link a:active {\r\n/* set all links to have underline */\r\n\ttext-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n\tbackground-color: inherit;\r\n/* this is a bluish color, you change this for all default link colors */\r\n\tcolor: #18507C;\r\n}\r\na:visited {\r\n/* keeps the underline */\r\n\ttext-decoration: underline;\r\n\tbackground-color: inherit;\r\n/* a different color is used for visited links */\r\n\tcolor: #18507C;\r\n}\r\na:hover {\r\n/* remove underline on hover */\r\n\ttext-decoration: none;\r\n\tbackground-color: inherit;\r\n/* using a different color makes the hover obvious */\r\n\tcolor: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* default text color for entire site*/\r\n\tcolor: #333;\r\n/* you can set your own image and background color here */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n\tmax-width: 99em;\r\n\tmin-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n\tmargin: 0 auto;\r\n\tbackground-color: #fefefe;\r\n\tcolor: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n\theight: 100px;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here, will go behind h1 a image */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\r\n/* border just the bottom */\r\n\tborder-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n/* this will make the \"a\" link a solid shape */\r\n\tdisplay: block;\r\n/* adjust according your image size */\r\n\theight: 100px;\r\n/* this hides the text */\r\n\ttext-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n\ttext-decoration: none;\r\n}\r\ndiv#header h1 {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n\tline-height: 0;\r\n\tfont-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n\tfloat: right;\r\n\tline-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n\tfont-size: 1.5em;\r\n/* keeps the size uniform */\r\n\tmargin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n\tcolor: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n\tpadding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n\tfont-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n\tmargin: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n\tfloat: right;\r\n/* enough width for the search input box */\r\n\twidth: 27em;\r\n\ttext-align: right;\r\n\tpadding: 0.5em 0 0.2em 0;\r\n\tmargin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n\tborder: none;\r\n\theight: 22px;\r\n\twidth: 53px;\r\n\tmargin-left: 5px;\r\n\tpadding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n\tcursor: pointer;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n\tmargin: 1.5em auto 2em 0;\r\n\tpadding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n\tmargin-left: 29%;\r\n/* and some air on the right */\r\n\tmargin-right: 2%;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n\tfloat: right;\r\n\twidth: 69%;\r\n/* and we take this out or it will stop at the bottom  */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 10px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv.back #main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 30px 1px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv.back {\r\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\r\n\tmargin-left: 29%;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n\tfloat: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n\twidth: 26%;\r\n/* FIX IE double margin bug */\r\n\tdisplay: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n\tmargin: 0px 0px 20px;\r\n\tpadding: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv#sidebara {\r\n\tpadding: 13px 15px 3px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebarb {\r\n\tpadding: 10px 10px 1px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n\tclear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n\tpadding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n\tpadding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n\tcolor: #595959;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n\tfloat: left;\r\n\twidth: 30%;\r\n\tmargin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n\tfont-size: 0.8em;\r\n/* some air for footer */\r\n\tpadding: 1.5em;\r\n/* centered text */\r\n\ttext-align: center;\r\n\tmargin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n\tcolor: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n\theight: 1px;\r\n\tpadding: 1em;\r\n\tborder-bottom: 1px dotted black;\r\n\tmargin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n\twidth: 70%;\r\n}\r\ndiv.right49 {\r\n\tfloat: right;\r\n\twidth: 29%;\r\n/* set right to keep text on right */\r\n\ttext-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n\tfont-size: 2em;\r\n\tline-height: 1em;\r\n\tmargin: 0;\r\n}\r\ndiv#content h2 {\r\n\tcolor: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n\tfont-size: 1.5em;\r\n\ttext-align: left;\r\n/* some air around the text */\r\n\tpadding-left: 0.5em;\r\n\tpadding-bottom: 1px;\r\n/* set borders around header */\r\n\tborder-bottom: 1px solid #899092;\r\n\tborder-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n\tline-height: 1.5em;\r\n/* and some air under the border */\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.3em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.2em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n\tfont-size: 1em;\r\n/* some air around p elements */\r\n\tmargin: 0 0 1.5em 0;\r\n\tline-height: 1.4em;\r\n\tpadding: 0;\r\n}\r\nblockquote {\r\n\tborder-left: 10px solid #ddd;\r\n\tmargin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n\tfont-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n\tfont-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n\twhite-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n\twhite-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n\twhite-space: -pre-wrap;\r\n/* Opera 7 */\r\n\twhite-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n\tword-wrap: break-word;\r\n\tfont-family: \"Courier New\", Courier, monospace;\r\n\tfont-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n\tborder: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n\tbackground-color: #ddd;\r\n\tmargin: 0 1em 1em 1em;\r\n\tpadding: 0.5em;\r\n\tline-height: 1.5em;\r\n\tfont-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n\tmargin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n\tfont-size: 1.0em;\r\n\tline-height: 1.4em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n\tmargin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2006-07-25 21:22:32','2009-05-10 14:06:00'),
  (33,'Navigation: CSSMenu - Vertical','/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n\twidth: 95%;\r\n\tmargin-left: 0px;\r\n/* room at bottom */\r\n\tmargin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style: none;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n/* make sure it fills out */\r\n\twidth: 100%;\r\n/* just a little bump */\r\n\tmargin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n\tposition: absolute;\r\n/* just a little bump down for second level ul */\r\n\ttop: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n\tleft: 100%;\r\n/* keeps it hidden till hover event */\r\n\tdisplay: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n\ttop: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n\tmargin-bottom: -1px;\r\n/* keeps within it''s container */\r\n\tposition: relative;\r\n/* bottom padding pushes \"a\" up enough to show our image */\r\n\tpadding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n\twidth: 220px;\r\n\tpadding: 0px;\r\n/* removes first level li image */\r\n\tbackground-image: none;\r\n}\r\n/* Styling the basic apperance of the menu \"a\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* removes underline from default link setting */\r\n\ttext-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* pushes text to right */\r\n\tpadding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n\tcolor: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \"a\" */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n\tcolor: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n\tcolor: #000;\r\n\tfont-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n\tcolor: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n\ttext-align: left;\r\n\tmargin: 0px;\r\n/* relative to it''s container */\r\n\tposition: relative;\r\n/* more padding to left than default */\r\n\tpadding: 6px 3px 6px 15px;\r\n\tfont-weight: normal;\r\n/* darker than first level \"a\" */\r\n\tcolor: #000;\r\n/* removes any borders that may have been set in first level */\r\n\tborder-top: 0 none;\r\n\tborder-right: 0 none;\r\n\tborder-left: 0 none;\r\n/* removes image set in first level \"a\" */\r\n\tbackground: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n\tbackground: #F3F5F5;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n\tposition: absolute;\r\n\twidth: auto;\r\n\theight: auto;\r\n\tdisplay: none;\r\n\tposition: absolute;\r\n\tz-index: 999;\r\n\tborder-top: 1px solid #FFFFFF;\r\n\tborder-bottom: 1px solid #374B51;\r\n\t/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n\topacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n\tmin-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n\tpadding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n\tpadding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n\tpadding-left: 0;\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n/* removes padding that is used for arrows */\r\n\tpadding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n\tcolor: #899092\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n\tcolor: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n\t_float: left;\r\n\t_height: 1%;\r\n}\r\n#primary-nav li a {\r\n\t_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n\tborder-left: 1px solid #006699;\r\n\tborder-top: 1px solid #006699;\r\n\tfont-size: 130%;\r\n\tfont-weight: bold;\r\n\tpadding: 1.5em 0 0.8em 0.5em;\r\n\tbackground-color: #fff;\r\n\tmargin: 0;\r\n\twidth: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n\tdisplay: block;\r\n\theight: 0.5em;\r\n\tcolor: #abb0b6;\r\n\tbackground-color: #abb0b6;\r\n\twidth: 100%;\r\n\tborder: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tborder-top: 1px solid #006699;\r\n\tborder-right: 1px solid #006699;\r\n}','screen','2006-07-25 21:22:32','2009-05-10 20:20:30'),
  (34,'Navigation: CSSMenu - Horizontal','/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n\tclear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n/*\tbackground-color: #243135;      */\r\nbackground:  url([[root_url]]/uploads/menu_bg.png) repeat;\r\n/* IE6 Hack */\r\n\theight: 1%;\r\n\twidth: auto;\r\n/* one border at the top */\r\n\tborder-top: 1px solid #3F565C;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n\tpadding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n\tpadding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n\tposition: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n\ttop: auto;\r\n/* keeps it hidden till hover event */\r\n\tdisplay: none;\r\n/* same size but different color for each border */\r\n\tborder-top: 1px solid #C8D3D7;\r\n\tborder-right: 1px solid #C8D3D7;\r\n\tborder-bottom: 1px solid #ADC0C7;\r\n\tborder-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n\tmargin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n\tmargin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n\tleft: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n\ttop: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n\tfloat: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the \"a\" */\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n\twidth: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n\tmargin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n\tmargin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n\tfloat: none;\r\n/* relative to the ul they are in */\r\n\tposition: relative;\r\n}\r\n/* set the \"a\" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 12px 15px 15px;\r\n\tdisplay: block;\r\n/* sets no underline on links */\r\n\ttext-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n\tbackground-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n\tcolor: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n\tcolor: #000;\r\n/* bold to set it off from non active */\r\n\tfont-weight: bold;\r\n/* set your image here */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n\tcolor: #000;\r\n/* keep it the same */\r\n\tfont-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can''t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or ''right'' puts it to far */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n\ttext-align: left;\r\n\tmargin: 0px;\r\n/* keeps it relative to it''s container */\r\n\tposition: relative;\r\n/* less padding than first level no need for large links here */\r\n\tpadding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n\tfont-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n\tcolor: #000;\r\n\tborder-top: 0 none;\r\n\tborder-right: 0 none;\r\n\tborder-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n\tbackground: #F3F5F5;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n\tposition: absolute;\r\n\twidth: auto;\r\n\theight: auto;\r\n\tdisplay: none;\r\n\tposition: absolute;\r\n\tz-index: 999;\r\n\tborder-top: 1px solid #FFFFFF;\r\n\tborder-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n\topacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n\topacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n\tcolor: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n\tfloat: left;\r\n\tclear: both;\r\n}\r\n#primary-nav li li a {\r\n\theight: 1%;\r\n}','screen','2006-07-25 21:22:32','2011-11-03 14:06:39'),
  (35,'Module: News','div#news {\r\n/* margin for the entire div surrounding the news items */\r\n\tmargin: 2em 0 1em 0em;\r\n/* border set here */\r\n\tborder: 1px solid #909799;\r\n/* sets it off from surroundings */\r\n\tbackground: #f5f5f5;\r\n}\r\ndiv#news h2 {\r\n\tline-height: 2em;\r\n/* you can set your own image here */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center; */\r\n\tcolor: #990000;\r\n\tborder: none\r\n}\r\n.NewsSummary {\r\n/* padding for the news article summary */\r\n\tpadding: 0.5em 0.5em 1em;\r\n/* margin to the bottom of the news article summary */\r\n\tmargin: 0 0.5em 1em 0.5em;\r\n\tborder-bottom: 1px solid #ccc;\r\n}\r\n.NewsSummaryPostdate {\r\n/* smaller than default text size */\r\n\tfont-size: 90%;\r\n/* bold to set it off from text */\r\n\tfont-weight: bold;\r\n}\r\n.NewsSummaryLink {\r\n/* bold to set it off from text */\r\n\tfont-weight: bold;\r\n/* little more room at top */\r\n\tpadding-top: 0.2em;\r\n}\r\n.NewsSummaryCategory {\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n\tmargin: 5px 0;\r\n}\r\n.NewsSummaryAuthor {\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n\tpadding-bottom: 0.5em;\r\n}\r\n.NewsSummarySummary, .NewsSummaryContent {\r\n/* larger than default text */\r\n\tline-height: 140%;\r\n}\r\n.NewsSummaryMorelink {\r\n\tpadding-top: 0.5em;\r\n}\r\n#NewsPostDetailDate {\r\n/* smaller text */\r\n\tfont-size: 90%;\r\n\tmargin-bottom: 5px;\r\n/* bold to set it off from text */\r\n\tfont-weight: bold;\r\n}\r\n#NewsPostDetailSummary {\r\n/* larger than default text */\r\n\tline-height: 150%;\r\n}\r\n#NewsPostDetailCategory {\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n\tborder-top: 1px solid #ccc;\r\n\tmargin-top: 0.5em;\r\n\tpadding: 0.2em 0;\r\n}\r\n#NewsPostDetailContent {\r\n\tmargin-bottom: 15px;\r\n/* larger than default text */\r\n\tline-height: 150%;\r\n}\r\n#NewsPostDetailAuthor {\r\n\tpadding-bottom: 1.5em;\r\n/* italic to set it off from text */\r\n\tfont-style: italic;\r\n}\r\n/* more divs, left unstyled, just so you know the IDs of them */ \r\n#NewsPostDetailTitle {\r\n}\r\n#NewsPostDetailHorizRule {\r\n}\r\n#NewsPostDetailPrintLink {\r\n}\r\n#NewsPostDetailReturnLink {\r\n}\r\ndiv#news ul li {\r\n\tpadding: 2px 2px 2px 5px;\r\n\tmargin-left: 20px;\r\n}','screen','2006-07-25 21:22:32','2011-11-03 16:14:51'),
  (38,'Navigation: Simple - Horizontal','/********************MENU*********************/\r\n/* hack for IE6 */\r\n* html div#menu_horiz {\r\n/* hide ie/mac \\*/\r\n\theight: 1%;\r\n/* end hide */\r\n}\r\ndiv#menu_horiz {\r\n/* background color for the entire menu row */\r\n\tbackground-color: #243135;\r\n/* insure full width */\r\n\twidth: 100%;\r\n/* set height */\r\n\theight: 49px;\r\n\tmargin: 0;\r\n}\r\ndiv#menu_horiz ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n\tmargin: 0;\r\n/* pushes the menu div up to give room above for background color to show */\r\n\tpadding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n\tpadding-left: 10px;\r\n}\r\n/* menu list items */\r\ndiv#menu_horiz li {\r\n/* makes the list horizontal */\r\n\tfloat: left;\r\n/* remove any default bullets */\r\n\tlist-style: none;\r\n/* still no margin */\r\n\tmargin: 0;\r\n}\r\n/* the links, that is each list item */\r\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 12px 15px 15px 0px;\r\n/* still no margin */\r\n\tmargin: 0;\r\n/* removes default underline */\r\n\ttext-decoration: none;\r\n/* default link color */\r\n\tcolor: #FFF;\r\n/* makes it hold a shape, IE has problems with this, fixed above */\r\n\tdisplay: block;\r\n}\r\n/* hover state for links */\r\ndiv#menu_horiz li a:hover {;\r\n/* set your image here, dark grey image with white text set above*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\r\n}\r\ndiv#menu_horiz a span {\r\n/* compensates for no left padding on the \"a\" */\r\n\tpadding-left: 15px;\r\n}\r\ndiv#menu_horiz li.parent a span {\r\n/* no left padding on the \"a\" we can set it here, it lets us use the span for an image */\r\n\tpadding-left: 20px;\r\n/* set your image here, down arrow to note it has children, left side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.parent a:hover span {\r\n\tpadding-left: 20px;\r\n/* hover replaces default with right arrow image */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\r\n}\r\ndiv#menu_horiz li.menuactive a span {\r\n\tpadding-left: 20px;\r\n/* menuactive replaces default with right arrow image */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\r\n\tcolor: #000;\r\n}\r\ndiv#menu_horiz li.currentpage h3 span {\r\n\tpadding-left: 12px;\r\n/* menuactive replaces default with right arrow image */\r\n\tbackground: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n\tcolor: #000;\r\n}\r\ndiv#menu_horiz .sectionheader span {\r\n/* compensates for no left padding on the \"sectionheader\" */\r\n\tpadding-left: 15px;\r\n}\r\n/* active parent, that is the first level parent of a child page that is the current page */\r\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\r\n/* set your image here, light image with #000/black text set below*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n\tcolor: #000;\r\n}','screen','2006-07-25 21:22:32','2010-05-29 13:06:18'),
  (39,'Layout: Top menu + 2 columns','/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n\ttext-align: left;\r\n\tfont-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n\tfont-size: 75.01%;\r\n\tline-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n\tfont-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don''t want that*/\r\nimg {\r\n\tborder: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n\ttext-decoration: none;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n}\r\na:visited {\r\n\ttext-decoration: underline;\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n\ttext-decoration: none;\r\n\tbackground-color: inherit;\r\n\tcolor: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* default text color for entire site*/\r\n\tcolor: #333;\r\n/* you can set your own image and background color here */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n\tmax-width: 69em;\r\n\tmin-width: 60em;\r\n/* now that width is set this centers wrapper */\r\n\tmargin: 0 auto;\r\n\t/*background-color: #F4F4F4;*/\r\n\tcolor: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\t/* you can set your own image here, will go behind h1 a image */\r\n\t/* background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top; */\r\nbackground: url([[root_url]]/uploads/headerbanner.png) center no-repeat;\r\n\r\n/* border just the bottom */\r\n\tborder-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n/* this will make the \"a\" link a solid shape */\r\n\tdisplay: block;\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n/* this hides the text */\r\n\ttext-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n\ttext-decoration: none;\r\n}\r\ndiv#header h1 {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n\tline-height: 0;\r\n\tfont-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n\tfloat: right;\r\n\tline-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n\tfont-size: 1.5em;\r\n/* keeps the size uniform */\r\n\tmargin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n\tcolor: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n\tpadding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n\tfont-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n\tmargin: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n\tfloat: right;\r\n/* enough width for the search input box */\r\n\twidth: 27em;\r\n\ttext-align: right;\r\n\tpadding: 0.5em 0 0.2em 0;\r\n\tmargin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n\tborder: none;\r\n\theight: 22px;\r\n\twidth: 53px;\r\n\tmargin-left: 5px;\r\n\tpadding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n\tcursor: pointer;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n\tmargin: 1.5em auto 2em 0;\r\n\tpadding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n\tmargin-left: 29%;\r\n/* and some air on the right */\r\n\tmargin-right: 2%;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n\tfloat: right;\r\n\twidth: 90%;\r\n/* and we take this out or it will stop at the bottom  */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 10px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n\tfloat: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n\twidth: 26%;\r\n/* FIX IE double margin bug */\r\n\tdisplay: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n\tmargin: 0px 0px 20px;\r\n\tpadding: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n\tpadding: 0 0 0 0;\r\n/* this one is for sidebar with content and no menu */\r\n\t\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n\tmargin: 0em 0 0em 0em;\r\n}\r\ndiv#sidebara {\r\n\tpadding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n\tclear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n\tpadding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n\tpadding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n\tcolor: #595959;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n\tfloat: left;\r\n\twidth: 30%;\r\n\tmargin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n\tfont-size: 0.8em;\r\n/* some air for footer */\r\n\tpadding: 1.5em;\r\n/* centered text */\r\n\ttext-align: center;\r\n\tmargin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n\tcolor: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n\theight: 1px;\r\n\tpadding: 1em;\r\n\tborder-bottom: 1px dotted black;\r\n\tmargin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n\twidth: 70%;\r\n}\r\ndiv.right49 {\r\n\tfloat: right;\r\n\twidth: 29%;\r\n/* set right to keep text on right */\r\n\ttext-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n\tfont-size: 2em;\r\n\tline-height: 1em;\r\n\tmargin: 0;\r\n}\r\ndiv#content h2 {\r\n\tcolor: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n\tfont-size: 1.5em;\r\n\ttext-align: left;\r\n/* some air around the text */\r\n\tpadding-left: 0.5em;\r\n\tpadding-bottom: 1px;\r\n/* set borders around header */\r\n\tborder-bottom: 1px solid #899092;\r\n\tborder-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n\tline-height: 1.5em;\r\n/* and some air under the border */\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.3em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.2em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n\tfont-size: 1em;\r\n/* some air around p elements */\r\n\tmargin: 0 0 1.5em 0;\r\n\tline-height: 1.4em;\r\n\tpadding: 0;\r\n}\r\nblockquote {\r\n\tborder-left: 10px solid #ddd;\r\n\tmargin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n\tfont-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n\tfont-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n\twhite-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n\twhite-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n\twhite-space: -pre-wrap;\r\n/* Opera 7 */\r\n\twhite-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n\tword-wrap: break-word;\r\n\tfont-family: \"Courier New\", Courier, monospace;\r\n\tfont-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n\tborder: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n\tbackground-color: #ddd;\r\n\tmargin: 0 1em 1em 1em;\r\n\tpadding: 0.5em;\r\n\tline-height: 1.5em;\r\n\tfont-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n\tmargin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n\tfont-size: 1.0em;\r\n\tline-height: 1.4em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n\tmargin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2006-07-25 21:22:32','2011-11-12 04:14:59'),
  (42,'Navigation: Simple - Vertical','/******************** MENU *********************/\n#menu_vert {\n\tmargin: 0;\n\tpadding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n\tlist-style: none;\n/* margin/padding set in li */\n\tmargin: 0px;\n\tpadding: 0px;\n}\n#menu_vert ul ul {\n\tmargin: 0;\n/* padding right sets second level li in on right from first li */\n\tpadding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n\tlist-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n\tmargin: 0px 0px -1px;\n/* bottom padding pushes \"a\" up enough to show our image */\n\tpadding: 0px 0px 4px 0px;\n/* you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n\tpadding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n\tmargin: 0;\n\tpadding: 0px;\n/* replaced by image in ul ul */\n\tbackground: none;\n}\n#menu_vert li.menuactive ul {\n\tmargin: 0;\n}\n#menu_vert li.activeparent {\n\tmargin: 0;\n\tpadding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n\theight: 1%;\n}\n* html #menu_vert li a {\n\theight: 1%;\n}\n* html #menu_vert li hr {\n\theight: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n\tdisplay: block;\n/* some air for it */\n\tpadding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n\tcolor: #18507C;\n/* Fixes IE7 whitespace bug */\n\tmin-height: 1em;\n/* no underline for links */\n\ttext-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n\tfont-size: 90%;\n\tpadding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n\tpadding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n\tbackground-color: transparent;\n\tcolor: #595959;\n\ttext-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n\tcolor: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n\tcolor: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n\tcolor: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n\tpadding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n\tpadding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n\tdisplay: block;\n\tmargin: 0;\n/* adds left padding taken out of \"a.parent\" */\n\tpadding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n\ttext-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n\tdisplay: block;\n\tmargin: 0;\n\tpadding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n\tpadding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n\tpadding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n\tdisplay: block;\n\tmargin: 0;\n/* to contrast with non active pages */\n\tfont-weight: bold;\n\tpadding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n\ttext-decoration: none;\n\tcolor: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n\tcolor: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n\tdisplay: block;\n/* some air for it */\n\tpadding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n\tcolor: #000;\n/* instead of the normal font size for <h3> */\n\tfont-size: 1em;\n/* as <h3> normally has some margin by default */\n\tmargin: 0;\n/* you can set your own image here, same as \"a\" */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n\tfont-size: 90%;\n\tpadding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as \"a\" */\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n\tcolor: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n\tpadding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn''t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n\tborder-right: none;\n\tpadding: 0.8em 0.5em 0.5em 1.5em;\n\tbackground: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n\tline-height: 1em;\n\tmargin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n\theight: 1px !important;\n\tmargin-top: -1px;\n\tmargin-bottom: 0;\n\t-padding: 2px 0 2px 0;\n\tbackground-color: #000;\n\toverflow: hidden !important;\n\tline-height: 1px !important;\n\tfont-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n\tdisplay: none;\n/* this is for accessibility */\n}','screen','2009-04-30 01:09:15','2009-07-23 00:17:42'),
  (43,'Navigation: ShadowMenu - Horizontal','/* by Alexander Endresen and mark */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n\tclear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n\tbackground-color: #243135;\r\n/* IE6 Hack */\r\n\theight: 1%;\r\n\twidth: auto;\r\n/* one border at the top */\r\n\tborder-top: 1px solid #3F565C;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\nul#primary-nav {\r\n\tlist-style-type: none;\r\n\tmargin: 0px;\r\n\tpadding-top: 10px;\r\n\tpadding-left: 10px;\r\n}\r\n#primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n/* sets width of second level ul to background image */\r\n\twidth: 210px;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n\tposition: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n\ttop: auto;\r\n/* keeps it hidden till hover event */\r\n\tdisplay: none;\r\n/* room at top for li so image top shows correct */\r\n\tpadding-top: 9px;\r\n/* set your image here, tall enough for the ul */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul {\r\n\tpadding-top: 13px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\r\n}\r\n#primary-nav ul ul {\r\n/* insures no top margins */\r\n\tmargin-top: 0px;\r\n/* pulls the last ul back over the preceding ul */\r\n\tmargin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n\tleft: 100%;\r\n/* negative margin pulls the left centered in li next to it */\r\n\ttop: -3px;\r\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav ul ul {\r\n\tmargin-top: 0px;\r\n\tpadding-left: 5px;\r\n\tleft: 100%;\r\n\ttop: -7px;\r\n/* IE6 gets gif as it can''t handle transparent png */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\r\n}\r\n#primary-nav li {\r\n/* a little space to the left of each top level menu item */\r\n\tmargin-left: 5px;\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n\tfloat: left;\r\n}\r\n#primary-nav li li {\r\n/* a little more space to the left of each menu item */\r\n\tmargin-left: 8px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n\tmargin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n\tfloat: none;\r\n/* relative to the ul they are in */\r\n\tposition: relative;\r\n}\r\n/* IE6 hacks on the above code */\r\n* html #primary-nav li li {\r\n\tmargin-left: 6px;\r\n/* helps hold it inside the ul */\r\n\twidth: 171px;\r\n}\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #fff;\r\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\r\n\tpadding: 0px 11px 0px 0px;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* remove default \"a\" underline */\r\n\ttext-decoration: none;\r\n}\r\nul#primary-nav li a span {\r\n/* takes normal \"a\" padding minus some for right image */\r\n\tpadding: 12px 4px 12px 15px;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n\tbackground-color: transparent;\r\n}\r\nul#primary-nav li {\r\n/* set your image here */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\r\n}\r\nul#primary-nav li span {\r\n/* set your image here */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\r\n/* set text color here also to insure color */\r\n\tcolor: #fff;\r\n/* just to be sure */\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li li {\r\n/* remove any image set in first level li */\r\n\tbackground:  none;\r\n}\r\nul#primary-nav li li span {\r\n/* remove any image set in first level li span */\r\n\tbackground:  none;\r\n/* set text color here also to insure color */\r\n\tcolor: #fff;\r\n/* just to be sure */\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li:hover,\r\nul#primary-nav li.menuh,\r\nul#primary-nav li.menuparenth {\r\n/* set hover image, right side */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li:hover span,\r\nul#primary-nav li.menuh span,\r\nul#primary-nav li.menuparenth span {\r\n/* set hover image, left side */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* change text color on hover */\r\n\tcolor: #000;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an \"h\" as seen above and below */\r\nul#primary-nav li li.menuh {\r\n\tbackground:  none;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li span {\r\n\tbackground:  none;\r\n\tcolor: #000;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparent span {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n\tcolor: #000\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuh span {\r\n\tbackground:  none;\r\n\tcolor: #FFF;\r\n\tfont-weight: normal;\r\n}\r\n/* IE6 hacks */\r\nul#primary-nav li.menuparenth li.menuparenth {\r\n\tbackground:  none;\r\n\tcolor: #FFF;\r\n\tfont-weight: normal;\r\n}\r\nul#primary-nav li.menuactive a {\r\n/* set your image here for active tab right */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\r\n}\r\nul#primary-nav li a.menuactive span {\r\n/* set your image here for active tab left */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n\tcolor: #000;\r\n/* bold to set it off from non active */\r\n\tfont-weight: bold;\r\n}\r\n#primary-nav li li a {\r\n/* second level padding, no image and not as big */\r\n\tpadding: 5px 10px;\r\n/* to keep it within li */\r\n\twidth: 165px;\r\n/* space between them */\r\n\tmargin: 5px;\r\n\tbackground: none;\r\n}\r\n/* IE6 hacks to above code */\r\n* html #primary-nav li li a {\r\n\tpadding: 5px 10px;\r\n\twidth: 165px;\r\n\tmargin: 0px;\r\n\tcolor: #000;\r\n}\r\n#primary-nav li li:hover {\r\n/* remove image set in first level */\r\n\tbackground: none;\r\n}\r\n#primary-nav li li a:hover {\r\n/* set different image than first level */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* we need #FFF/white to contrast with dark background */\r\n\tcolor: #FFF;\r\n}\r\n#primary-nav li.menuparent li a:hover span {\r\n/* insures text color */\r\n\tcolor: #FFF;\r\n}\r\nul#primary-nav li:hover li a span {\r\n/* first level is #FFF/white, we need #000/black to contrast with light background */\r\n\tcolor: #000;\r\n/* just to insure normal */\r\n\tfont-weight: normal;\r\n}\r\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\r\n/* set your image here, lighter than hover */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n/* non active is #FFF/white, we need #000/black to contrast with light background */\r\n\tcolor: #000;\r\n}\r\n#primary-nav li li.menuactive a.menuactive span {\r\n/* insures text color */\r\n\tcolor: #000\r\n}\r\n#primary-nav li li.menuactive a.menuactive:hover span {\r\n/* insures text color */\r\n\tcolor: #000;\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent span {\r\n/* right arrow for menu parent, IE6 gif */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n\tcolor: #000\r\n}\r\n/* IE6 hacks to above code */\r\n#primary-nav li li.menuparenth a.menuparent:hover span {\r\n\tcolor: #FFF\r\n}\r\n#primary-nav li li.menuparent a.menuparent span {\r\n/* right arrow for parent item */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* black text */\r\n\tcolor: #000\r\n}\r\nul#primary-nav li li a.menuactive  span {\r\n/* remove image set in first level */\r\n\tbackground:  none;\r\n\tfont-weight: normal;\r\n}\r\n#primary-nav li.menuactive li a {\r\n/* second level active link color */\r\n\tcolor: #0587A9;\r\n\ttext-decoration: none;\r\n\tbackground: none;\r\n}\r\n#primary-nav li.menuactive li a:hover {\r\n/* dark image for hover */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuactive li a:hover span {\r\n/* white text to contrast with dark background image on hover */\r\n\tcolor: #FFF;\r\n}\r\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\r\n\tpadding: 0px;\r\n\tbackground:  none;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n\twidth: 210px;\r\n/* height of image */\r\n\theight: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n\tmargin: 0px 0px -8px;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* same as above for next level to insure it shows correct */\r\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\r\n\theight: 9px;\r\n\tmargin: 0px 0px -8px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separator {\r\n\theight: 2px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* IE6 hacks */\r\n* html #primary-nav ul li.separatorh {\r\n\tmargin: 0px 0px -8px;\r\n\theight: 2px;\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n\tfloat: left;\r\n\tclear: both;\r\n}\r\n#primary-nav li li a {\r\n\theight: 1%;\r\n}','screen','2009-05-01 04:32:33','2009-07-20 18:18:21'),
  (45,'Navigation: ShadowMenu - Vertical','/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark */\r\n#menuwrapper {\r\n/* just smaller than it''s containing div */\r\n\twidth: 95%;\r\n\tmargin-left: 0px;\r\n/* room at bottom */\r\n\tmargin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n\tlist-style: none;\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n/* make sure it fills out */\r\n\twidth: 100%;\r\n/* just a little bump */\r\n\tmargin-left: 1px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n\tmargin-bottom: -1px;\r\n/* keeps within it''s container */\r\n\tposition: relative;\r\n/* bottom padding pushes \"a\" up enough to show our image */\r\n\tpadding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n\twidth: 190px;\r\n/* changes padding inherited from first level */\r\n\tpadding: 0px 10px;\r\n/* removes first level li image */\r\n\tbackground-image: none;\r\n}\r\n/* Styling the basic appearance of the menu \"a\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n\tfont-size: 1em;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors */\r\n\tcolor: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n\tpadding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* removes underline from default link setting */\r\n\ttext-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n\tdisplay: block;\r\n/* pushes text to right */\r\n\tpadding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n\tbackground: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n\tcolor: #899092\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \"a\" */\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n\tcolor: #FFF\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n\tcolor: #000;\r\n\tfont-weight: bold;\r\n}\r\nul#primary-nav li ul a {\r\n/* insure alignment */\r\n\ttext-align: left;\r\n\tmargin: 0px;\r\n/* relative to it''s container */\r\n\tposition: relative;\r\n/* even padding all 4 sides */\r\n\tpadding: 6px;\r\n/* make sure we keep the font normal */\r\n\tfont-weight: normal;\r\n/* set default link colors from here on */\r\n\tcolor: #000;\r\n/* remove any background that may have been set in level above */\r\n\tbackground: none;\r\n}\r\nul#primary-nav li ul {\r\n/* remove any default bullets */\r\n\tlist-style-type: none;\r\n/* sets width of second level ul to background image */\r\n\twidth: 209px;\r\n\theight: auto;\r\n/* negative margin pulls it over the parent ul */\r\n\tmargin: 0px 0px 0px -2px;\r\n/* top padding gives room for image shadow and pushes li down into image */\r\n\tpadding: 10px 0px 0px;\r\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\r\n\tposition: absolute;\r\n/* keeps the left side of this ul on the right side of the preceding ul */\r\n\tleft: 100%;\r\n/* negative top pulls up so left arrow centered in li next to it */\r\n\ttop: -2px;\r\n\tdisplay: none;\r\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n/* a lot of the same as above, minor changes */\r\nul#primary-nav li ul ul {\r\n\tlist-style-type: none;\r\n/* bit more negative left margin */\r\n\tmargin: 0px 0px 0px -8px;\r\n/* you can call a property twice but not a property:''value'', this flat lines it */\r\n\tpadding: 0px;\r\n/* now we just change one with ''property''-top:value */\r\n\tpadding-top: 10px;\r\n\tposition: absolute;\r\n\twidth: 209px;\r\n\theight: auto;\r\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\r\n\ttop: -5px;\r\n\tleft: 100%;\r\n\tdisplay: none;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n* html ul#primary-nav li ul ul {\r\n/* gif for IE6, as it can''t handle transparent png */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\r\n}\r\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\r\n#primary-nav ul li.separator, #primary-nav .separator:hover {\r\n/* set same as ul */\r\n\twidth: 209px;\r\n\tpadding: 0px;\r\n/* height of image */\r\n\theight: 9px;\r\n/* negative margin pulls it down to cover ul image */\r\n\tmargin: 0px 0px -9px;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\r\n}\r\n/* IE6 ''star html'' Hack */\r\n* html #primary-nav  li ul li.separator {\r\n\theight: 2px;\r\n/* set your image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\r\n}\r\n/* Fixes IE7 bug*/\r\n#primary-nav li, #primary-nav li.menuparent {\r\n\tmin-height: 1em;\r\n}\r\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive a.menuactive {\r\n/* contrast color to image behind it */\r\n\tcolor: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n\tfont-weight: normal;\r\n/* set your image here, dark grey image with white text set above*/\r\n\tbackground:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n\tpadding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n\tpadding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can''t handle transparent png */\r\n\tpadding-left: 0;\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span,\r\n#primary-nav li.menuparenth span {\r\n/* right arrow on hover */\r\n\tbackground: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n\tpadding-left: 0px;\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover li a,\r\n#primary-nav li.menuh li a,\r\n#primary-nav li.menuparenth li a,\r\n#primary-nav li.menuactiveh li a {\r\n/* removes any images set above unless it''s a parent or active parent */\r\n\tbackground:  none;\r\n\tcolor: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n\tdisplay: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li, #primary-nav li.menuparenth {\r\n\t_float: left;\r\n\t_height: 1%;\r\n}\r\n#primary-nav li a {\r\n\t_height: 1%;\r\n}\r\n/* BIG NOTE: I didn''t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n\tborder-left: 1px solid #006699;\r\n\tborder-top: 1px solid #006699;\r\n\tfont-size: 130%;\r\n\tfont-weight: bold;\r\n\tpadding: 1.5em 0 0.8em 0.5em;\r\n\tbackground-color: #fff;\r\n\tmargin: 0;\r\n\twidth: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n\tdisplay: block;\r\n\theight: 0.5em;\r\n\tcolor: #abb0b6;\r\n\tbackground-color: #abb0b6;\r\n\twidth: 100%;\r\n\tborder: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tborder-top: 1px solid #006699;\r\n\tborder-right: 1px solid #006699;\r\n}','screen','2009-05-02 00:20:03','2009-05-11 00:43:17'),
  (46,'Navigation: FatFootMenu','#footer ul {\r\n/* some margin is set in the footer padding */\r\n   margin: 0px;\r\n/* calling a specific side, left in this case */\r\n   margin-left: 5px;\r\n   padding: 0px;\r\n/* remove any default bullets, image used in li call */\r\n   list-style: none;\r\n}\r\n#footer ul li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* float left to set first level li items across the top */\r\n   float:left;\r\n/* a little margin at top */\r\n   margin: 5px 0px 0px;\r\n/* padding all the way around */\r\n   padding: 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\r\n}\r\n#footer ul li a {\r\n/* this will make the \"a\" link a solid shape */\r\n   display:block;\r\n   margin: 2px 0px 4px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like \"a\" */\r\n#footer li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 2px 0px 2px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n/* set h3 to look like \"a\", less margin at this level */\r\n#footer li li h3 {\r\n   font-weight:normal;\r\n   font-size:100%;\r\n   margin: 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n#footer ul li li {\r\n/* remove any default bullets, image used for consistency */\r\n   list-style: none;\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* less margin/padding */\r\n   margin: 0px;\r\n   padding: 0px 0px 0px 5px;\r\n/* you can set your own image here, used for consistency */\r\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\r\n}\r\n/* fix for IE6 */\r\n* html #footer ul li a {\r\n   margin: 2px 0px 0px;\r\n   padding: 0px 5px 5px 5px;\r\n}\r\n* html #footer ul li li a {\r\n   margin: 0px 0px 0px;\r\n   padding: 0px 5px 0px 5px;\r\n}\r\n/* End fix for IE6 */\r\n#footer ul ul {\r\n/* remove float so they line up under top li */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}\r\n#footer ul ul ul {\r\n/* remove float so they line up under li above it */\r\n   float:none;\r\n/* a little margin to offset it */\r\n   margin: 0px 0px 0px 8px;\r\n   padding: 0;\r\n}','screen','2009-05-02 15:05:04','2009-05-09 23:47:45'),
  (47,'ncleanbluecore','/*\r\n  @Nuno Costa [criacaoweb.net] Core CSS.\r\n  @Licensed under GPL and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/*----------- Global Containers ----------- */\r\n/* \r\n.core-wrap-100   =  width - 100% of Browser Fluid\r\n.core-wrap-960   =  width - 960px  - fixed\r\n.core-wrap-780   =  width - 780px  - fixed\r\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\r\n*/\r\n.core-wrap-100 {\r\n\twidth: 100%;\r\n}\r\n.core-wrap-960 {\r\n\twidth: 960px;\r\n}\r\n.core-wrap-780 {\r\n\twidth: 780px;\r\n}\r\n.core-wrap-100,\r\n.core-wrap-960,\r\n.core-wrap-780,\r\n.custom-wrap-x {\r\n\tmargin-left: auto;\r\n\tmargin-right: auto;\r\n}\r\n/*----------- Global Float ----------- */\r\n.core-wrap-100  .core-float-left,\r\n.core-wrap-960  .core-float-left,\r\n.core-wrap-780  .core-float-left,\r\n.custom-wrap-x  .core-float-left {\r\n\tfloat: left;\r\n\tdisplay: inline;\r\n}\r\n.core-wrap-100  .core-float-right,\r\n.core-wrap-960  .core-float-right,\r\n.core-wrap-780  .core-float-right,\r\n.custom-wrap-x  .core-float-right {\r\n\tfloat: right;\r\n\tdisplay: inline;\r\n}\r\n/*----------- Global Center ----------- */\r\n.core-wrap-100   .core-center,\r\n.core-wrap-960   .core-center,\r\n.core-wrap-780   .core-center,\r\n.custom-wrap-x   .core-center {\r\n\tmargin-left: auto;\r\n\tmargin-right: auto;\r\n}','screen','2009-05-06 14:28:28','2009-05-11 02:35:43'),
  (48,'ncleanblueutils','/*\r\n  @Nuno Costa [criacaoweb.net] Utils CSS.\r\n  @Licensed under GPL2 and MIT.\r\n  @Status: Stable\r\n  @Version: 0.1-20090418\r\n  \r\n  @Contributors:\r\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \r\n  \r\n  --------------------------------------------------------------- \r\n*/\r\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\r\n/* v1.0 | 20080212 */\r\nhtml, body, div, span, applet, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, big, cite, code,\r\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\r\nsmall, strike, strong, sub, sup, tt, var,\r\nb, u, i, center,\r\ndl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tborder: 0;\r\n\toutline: 0;\r\n\tfont-size: 100%;\r\n\tvertical-align: baseline;\r\n\tbackground: transparent;\r\n}\r\n/*\r\nStantby for nowbody {\r\n\tline-height: 1;\r\n}\r\n*/\r\nol, ul {\r\n\tlist-style: none;\r\n}\r\nblockquote, q {\r\n\tquotes: none;\r\n}\r\nblockquote:before,\r\nblockquote:after,\r\nq:before, q:after {\r\n\tcontent: '''';\r\n\tcontent: none;\r\n}\r\n/* remember to define focus styles! */\r\n:focus {\r\n\toutline: 0;\r\n}\r\n/* remember to highlight inserts somehow! */\r\nins {\r\n\ttext-decoration: none;\r\n}\r\ndel {\r\n\ttext-decoration: line-through;\r\n}\r\n/* tables still need ''cellspacing=\"0\"'' in the markup */\r\ntable {\r\n\tborder-collapse: collapse;\r\n\tborder-spacing: 0;\r\n}\r\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\r\n* {\r\n\tfont-weight: inherit;\r\n\tfont-style: inherit;\r\n\tfont-family: inherit;\r\n}\r\ndfn {\r\n\tdisplay: none;\r\n\toverflow: hidden;\r\n}\r\n/* ----------- Clear Floated Elements ----------- */\r\nhtml body .util-clearb {\r\n\tbackground: none;\r\n\tborder: 0;\r\n\tclear: both;\r\n\tdisplay: block;\r\n\tfloat: none;\r\n\tfont-size: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\tposition: static;\r\n\toverflow: hidden;\r\n\tvisibility: hidden;\r\n\twidth: 0;\r\n\theight: 0;\r\n}\r\n/* ----------- Fix to Clear Floated Elements ----------- */\r\n.util-clearfix:after {\r\n\tclear: both;\r\n\tcontent: ''.'';\r\n\tdisplay: block;\r\n\tvisibility: hidden;\r\n\theight: 0;\r\n}\r\n.util-clearfix {\r\n\tdisplay: inline-block;\r\n}\r\n* html .util-clearfix {\r\n\theight: 1%;\r\n}\r\n.util-clearfix {\r\n\tdisplay: block;\r\n}','screen','2009-05-06 14:29:17','2009-05-11 02:38:10'),
  (49,'Layout: NCleanBlue','/*  \r\n@Nuno Costa [criacaoweb.net]\r\n@Since [cmsms 1.6]\r\n@Contributors: Mark and Dev-Team\r\n*/\r\nbody {\r\n/* default text for entire site */\r\n\tfont: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\r\n/* default text color for entire site */\r\n\tcolor: #3A3A36;\r\n/* you can set your own image and background color here */\r\n\tbackground: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\r\n#ncleanblue {\r\n/* set to width of viewport */\r\n\twidth: auto;\r\n/* you can set your own image and background color here */\r\n\tbackground: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\r\n}\r\n/* wiki style external links */\r\n/* external links will have \"(external link)\" text added, lets hide it */\r\na.external span {\r\n\tposition: absolute;\r\n\tleft: -5000px;\r\n\twidth: 4000px;\r\n}\r\na.external {\r\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\r\n\tpadding: 0 12px 0 0;\r\n}\r\n/* colors for external links */\r\na.external:link {\r\n\tcolor: #679EBC;\r\n/* background image for the link to show wiki style arrow */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:visited {\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited external links */\r\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\r\n}\r\na.external:hover {\r\n\tcolor: #18507C;\r\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\r\n\tbackground-color: inherit;\r\n}\r\n/* end wiki style external links */\r\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\r\n.accessibility, hr {\r\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\r\n\tposition: absolute;\r\n\ttop: -9999em;\r\n\tleft: -9999em;\r\n\tbackground: none;\r\n\tborder: 0;\r\n\tclear: both;\r\n\tdisplay: block;\r\n\tfloat: none;\r\n\tfont-size: 0;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\toverflow: hidden;\r\n\tvisibility: hidden;\r\n\twidth: 0;\r\n\theight: 0;\r\n\tborder: none;\r\n}\r\n/* ------------ Standard  HTML elements and their default settings ------------ */\r\nb, strong{font-weight: bold;}i, em{\tfont-style: italic;}\r\np {\r\n\tpadding: 0;\r\n\tmargin-top: 0.5em;\r\n    margin-bottom: 1em;\r\n   text-align:left;\r\n}\r\nh1, h2, h3, h4, h5 {\r\n\tline-height: 1.6em;\r\n\tfont-weight: normal;\r\n\twidth: auto;\r\n\tfont-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n}\r\n/*default link styles*/\r\na {\r\n\tcolor: #679EBC;\r\n\ttext-decoration: none;\r\n\ttext-align: left;\r\n}\r\na:hover {\r\n\tcolor: #3A6B85;\r\n}\r\na:active {\r\n\tcolor: #3A6B85;\r\n}\r\na:visited {\r\n\tcolor: #679EBC;\r\n}\r\ninput, textarea, select {\r\n\tfont-size: 0.95em;\r\n}\r\n/* ------------ Wrapper ------------ */\r\ndiv#pagewrapper {\r\n\tfont-size: 95%;\r\n\tposition: relative;\r\n\tz-index: 1;\r\n}\r\n/* ------------ Header ------------ */\r\n#header {\r\n\theight: 111px;\r\n\twidth: 960px;\r\n}\r\n#logo a {\r\n/* adjust according your image size */\r\n\theight: 75px;\r\n\twidth: 215px;\r\n/* forces full link size */\r\n\tdisplay: block;\r\n/* this hides the text */\r\n\ttext-indent: -9999em;\r\n\tmargin-top: 0;\r\n\tmargin-left: 0;\r\n/* you can set your own image here, note size adjustments */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\r\n}\r\n/* ------------ Header - Search ------------ */\r\ndiv#search {\r\n\twidth: 190px;\r\n\theight: 28px;\r\n\tmargin-top: 31px;\r\n\tmargin-right: 20px;\r\n}\r\ndiv#search label {\r\n\ttext-indent: -9999em;\r\n\theight: 0pt;\r\n\twidth: 0pt;\r\n\tdisplay: none;\r\n}\r\ndiv#search input.search-input {\r\n/* specific size for image, your image may need these adjusted */\r\n\twidth: 143px;\r\n\theight: 17px;\r\n/* removes default borders, allows use of image */\r\n\tborder-style: none;\r\n/* text color */\r\n\tcolor: #999;\r\n/* padding of text */\r\n\tpadding: 7px 0px 4px 10px;\r\n\tfloat: left;\r\n/* set all font properties at once, weight, size, family */\r\n\tfont: bold 0.9em Arial, Helvetica, sans-serif;\r\n/* left input image, set your own here */\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\r\n}\r\ndiv#search input.search-button {\r\n/* specific size for image, your image may need these adjusted */\r\n\twidth: 37px;\r\n\theight: 28px;\r\n/* removes default borders, allows use of image */\r\n\tborder-style: none;\r\n/* hides text, image has text */\r\n\ttext-indent: -9999em;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n/* provides positive hover effect */\r\n\tcursor: pointer;\r\n/* removes default size/height */\r\n\tfont-size: 0px;\r\n\tline-height: 0px;\r\n/* submit button image, set your own here */\r\n\tbackground: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\r\n}\r\n/* ------------ Content ------------ */\r\n#content {\r\n\twidth: auto;\r\n/* all text in #content will default align left, changed in other calls */\r\n\ttext-align: left;\r\n}\r\n#bar {\r\n\twidth: auto;\r\n\theight: 40px;\r\n\tpadding-right: 1em;\r\n\tpadding-left: 1em;\r\n}\r\n.print {\r\n\tmargin-right: 75px;\r\n\tmargin-top: 10px;\r\n}\r\n#version {\r\n\t//width: 50px;\r\n\t//height: 31px;\r\n\t//position: absolute;\r\n\t//z-index: 5;\r\n\t//top: 130px;\r\n\t//right: -16px;\r\n\t//font-size: 1.6em;\r\n\t//font-weight: bold;\r\n\t//padding: 28px 15px;\r\n\t//color: #FFF;\r\n\t//text-align: center;\r\n\t//vertical-align: middle;\r\n\t//background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\r\n}\r\n/* IE6 fixes */\r\n* html div#version {\r\n\ttop: 150px;\r\n}\r\n/* End IE6 fixes */\r\n/* Site Title */\r\nh1.title {\r\n\tfont-size: 1.8em;\r\n\tcolor: #666666;\r\n\tmargin-bottom: 0.5em;\r\n}\r\n/* Breadcrumbs */\r\ndiv.breadcrumbs {\r\n\tpadding: 0.5em 0;\r\n\tfont-size: 80%;\r\n\tmargin: 0 1em;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\n/* ------------ Side Bar (Left) ------------ */\r\n#left {\r\n\twidth: 250px;\r\n}\r\n/* Image that Represents the new CMS design */\r\n#left .screen {\r\n\tmargin: 10px 50px;\r\n}\r\n/* End  */\r\n.sbar-title {\r\n\tfont: bold 1.2em Arial, Helvetica, sans-serif;\r\n\tcolor: #252523;\r\n}\r\n.sbar-top {\r\n\theight: 20px;\r\n\twidth: auto;\r\n\tpadding: 10px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\r\n}\r\n.sbar-main {\r\n\twidth: auto;\r\n\tborder-right: 1px solid #E2E2E2;\r\n\tborder-left: 1px solid #E2E2E2;\r\n\tbackground: #F0F0F0;\r\n}\r\nspan.sbar-bottom {\r\n\twidth: auto;\r\n\tdisplay: block;\r\n\theight: 10px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\r\n}\r\n/* ------------ Main (Right) ------------ */\r\n#main {\r\n\twidth: 690px;\r\n}\r\n.main-top {\r\n\theight: 15px;\r\n\twidth: auto;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\r\n}\r\n.main-main {\r\n\twidth: auto;\r\n\tborder-right: 1px solid #E2E2E2;\r\n\tborder-left: 1px solid #E2E2E2;\r\n\tbackground: #F0F0F0;\r\n\tpadding: 20px;\r\n\tpadding-top: 0px;\r\n}\r\n.main-bottom {\r\n\twidth: auto;\r\n\theight: 41px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\r\n}\r\n.right49, .left49 {\r\n\tfont-size: 0.85em;\r\n\tmargin: 7px 5px 5px 10px;\r\n\tfont-weight: bold;\r\n}\r\n.left49 span {\r\n\tdisplay: block;\r\n\tpadding-top: 1px;\r\n}\r\n.left49 a {\r\n\tfont-weight: normal;\r\n}\r\n.right49 {\r\n\theight: 28px;\r\n\twidth: 50px;\r\n\tpadding-right: 10px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\r\n}\r\n.right49 a, .right49 a:visited {\r\n\tpadding: 7px 4px;\r\n\tdisplay: block;\r\n\tcolor: #000;\r\n\theight: 15px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\r\n}\r\n#main h2,\r\n#main h3,\r\n#main h4,\r\n#main h5,\r\n#main h6 {\r\n\tfont-size: 1.4em;\r\n\tcolor: #301E12;\r\n}\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl,\r\n#footer ul,\r\n#footer ol {\r\n\tline-height: 1em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul,\r\n#footer ul {\r\n\tlist-style: circle;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li,\r\n#footer ul li,\r\n#footer ol li {\r\n\tpadding: 2px 2px 2px 5px;\r\n\tmargin-left: 20px;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\n/* ------------ Footer ------------ */\r\n#footer-wrapper {\r\n\tmin-height: 235px;\r\n\theight: auto!important;\r\n\theight: 235px;\r\n\twidth: auto;\r\n\tmargin-top: 5px;\r\n\ttext-align: center;\r\n\tmargin-right: 00px;\r\n\tmargin-left: 0px;\r\n\tbackground: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer {\r\n\tcolor: #FFF;\r\n\tfont-size: 0.8em;\r\n\tmin-height: 235px;\r\n\theight: auto!important;\r\n\theight: 235px;\r\n\tbackground: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\r\n}\r\n#footer .block {\r\n\twidth: 300px;\r\n\tmargin: 20px 10px 10px;\r\n}\r\n#footer .cms {\r\n\ttext-align: right;\r\n}\r\n/* ------------ Footer Links ------------ */\r\n#footer ul {\r\n\twidth: auto;\r\n\ttext-align: left;\r\n\tmargin-left: 50px;\r\n}\r\n#footer ul ul {\r\n\tmargin-left: 0px;\r\n}\r\n#footer ul li a {\r\n\tcolor: #FFF;\r\n\tdisplay: block;\r\n\tfont-weight: normal;\r\n\tmargin-bottom: 0.5em;\r\n\ttext-decoration: none;\r\n}\r\n#footer a {\r\n\tcolor: #DCEDF1;\r\n\ttext-decoration: underline;\r\n\tfont-weight: bold;\r\n}\r\n/* ------------ END LAYOUT ---------------*/\r\n/* ------------  Menu  ROOT  ------------ */\r\n.page-menu {\r\n\twidth: auto;\r\n\theight: 35px;\r\n\tmargin: 3px 0 0 20px;\r\n}\r\n.menuwrapper {}\r\n\r\nul#primary-nav li hr.menu_separator{\r\n        position: relative;\r\n        visibility: hidden;\r\n        display:block;\r\n        width:5px;\r\n       \theight: 32px;\r\n       \tmargin: 0px 5px 0px;\r\n}\r\n.page-menu ul#primary-nav {\r\n\theight: 1%;\r\n\tfloat: left;\r\n\tlist-style: none;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n}\r\n.page-menu ul#primary-nav li {\r\n\tfloat: left;\r\n}\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a span {\r\n\tdisplay: block;\r\n\tpadding: 0 10px;\r\n\tbackground-repeat: no-repeat;\r\n\tbackground-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\r\n}\r\n.page-menu ul#primary-nav li a {\r\n\tpadding-left: 0;\r\n\tcolor: #000;\r\n\tfont-weight: bold;\r\n\tline-height: 2.15em;\r\n\ttext-decoration: none;\r\n\tmargin-left: 1px;\r\n\tfont-size: 0.85em;\r\n}\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:active {\r\n\tcolor: #000;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover span {\r\n\tcolor: #000;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n\tpadding-top: 6px;\r\n\tpadding-right: 0;\r\n\tpadding-bottom: 5px;\r\n}\r\n.page-menu ul#primary-nav li a.menuparenth,\r\n.page-menu ul#primary-nav li a.menuactive,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n\tbackground-position: 100% -120px;\r\n}\r\n.page-menu ul#primary-nav li a {\r\n\tbackground-position: 100% -80px;\r\n}\r\n.page-menu ul#primary-nav li a.menuactive span,\r\n.page-menu ul#primary-nav li a:hover span,\r\n.page-menu ul#primary-nav li a:focus span,\r\n.page-menu ul#primary-nav li a:active span {\r\n\tbackground-position: 0 -40px;\r\n}\r\n.page-menu ul#primary-nav li a span {\r\n\tbackground-position: 0 0;\r\n}\r\n.page-menu ul#primary-nav .sectionheader,\r\n.page-menu ul#primary-nav li a:link.menuactive,\r\n.page-menu ul#primary-nav li a:visited.menuactive {\r\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\r\n\tcursor: text;\r\n}\r\n.page-menu ul#primary-nav li span,\r\n.page-menu ul#primary-nav li a,\r\n.page-menu ul#primary-nav li a:hover,\r\n.page-menu ul#primary-nav li a:focus,\r\n.page-menu ul#primary-nav li a:active {\r\n/* @ Opera, we need to be explicit again here now... */\r\n\tcursor: pointer;\r\n}\r\n/* Additional IE specific bug fixes... */\r\n* html .page-menu ul#primary-nav {\r\n\tdisplay: inline-block;\r\n}\r\n*:first-child+html .page-menu ul#primary-nav {\r\n\tdisplay: inline-block;\r\n}\r\n/* --------------------  menu dropdow  -------------------------\r\n/* Unless you know what you do, do not touch this */\r\n/* Reset all ROOT menu styles. */\r\nul#primary-nav ul.unli li li a span,\r\nul#primary-nav ul.unli li a span,\r\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\r\n\tfont-weight: normal;\r\n\tbackground-image: none;\r\n\tdisplay: block;\r\n\tpadding-top: 0px;\r\n\tpadding-left: 0px;\r\n\tpadding-right: 0px;\r\n\tpadding-bottom: 0px;\r\n}\r\n#primary-nav {\r\n\tmargin: 0px;\r\n\tpadding: 0px;\r\n}\r\n#primary-nav ul {\r\n\tlist-style: none;\r\n\tmargin: -6px 0px 0px;\r\n\tpadding: 0px;\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n\twidth: 209px;\r\n}\r\n#primary-nav ul {\r\n\tposition: absolute;\r\n\tz-index: 1001;\r\n\ttop: auto;\r\n\tdisplay: none;\r\n\tpadding-top: 9px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\r\n}\r\n* html #primary-nav ul.unli {\r\n\tpadding-top: 12px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\r\n}\r\n#primary-nav ul.unli ul {\r\n\tmargin-left: -7px;\r\n\tleft: 100%;\r\n\ttop: 3px;\r\n}\r\n* html #primary-nav ul.unli ul {\r\n\tmargin-left: -0px;\r\n}\r\n#primary-nav li {\r\n\tmargin: 0px;\r\n\tfloat: left;\r\n}\r\n#primary-nav li li {\r\n\tmargin-left: 7px;\r\n\tmargin-top: -1px;\r\n\tfloat: none;\r\n\tposition: relative;\r\n}\r\n/* Styling the basic appearance of the menu elements */\r\nul#primary-nav ul hr.menu_separator{\r\n        position: relative;\r\n        visibility: visible;\r\n        display:block;\r\n        width:130px;\r\n       \theight: 1px;\r\n       \tmargin: 2px 30px 2px;\r\n\tpadding: 0em;\r\n\tborder-bottom: 1px solid #ccc;\r\n\tborder-top-width: 0px;\r\n\tborder-right-width: 0px;\r\n\tborder-left-width: 0px;\r\n\tborder-top-style: none;\r\n\tborder-right-style: none;\r\n\tborder-left-style: none;\r\n}\r\n#primary-nav .separator,\r\n#primary-nav .separatorh {\r\n\theight: 9px;\r\n\twidth: 209px;\r\n\tmargin: 0px 0px -8px;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\r\n}\r\n* html #primary-nav .separator {\r\n       z-index:-1;\r\n\tbackground: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\r\n}\r\n*:first-child+html #primary-nav .separator {\r\n       z-index:-1;\r\n}\r\n#primary-nav ul.unli li a {\r\n\tpadding: 0px 10px;\r\n\twidth: 165px;\r\n\tmargin: 5px;\r\n\tbackground-image: none;\r\n}\r\n* html #primary-nav ul.unli li a {\r\n\tpadding: 0px 10px 0px 5px;\r\n\twidth: 165px;\r\n\tmargin: 5px 0px;\r\n}\r\n#primary-nav li li a:hover {\r\n\tbackground-color: #DBE7F2;\r\n}\r\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li.menuactive li a {\r\n\ttext-decoration: none;\r\n\tbackground: none;\r\n}\r\n#primary-nav ul.unli li.menuparenth,\r\n#primary-nav ul.unli a:hover,\r\n#primary-nav ul.unli a.menuactive {\r\n\tbackground-color: #DBE7F2;\r\n}\r\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav ul.unli li .menuparent:hover,\r\n#primary-nav ul.unli li .menuparent,\r\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\r\n\tbackground-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\r\n\tbackground-position: center right;\r\n\tbackground-repeat: no-repeat;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul,\r\n#primary-nav li.menuparenth ul ul ul {\r\n\tdisplay: none;\r\n}\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul,\r\n#primary-nav ul ul ul li.menuparenth ul {\r\n\tdisplay: block;\r\n}\r\n/* IE Hacks */\r\n#primary-nav li li {\r\n\tfloat: left;\r\n\tclear: both;\r\n}\r\n#primary-nav li li a {\r\n\theight: 1%;\r\n}\r\n/*************** End Menu *****************/\r\n/* ------------ News Module ------------ */\r\n#news {\r\n\tpadding: 10px;\r\n}\r\n.NewsSummary {\r\n}\r\n.NewsSummaryPostdate,\r\n.NewsSummaryCategory,\r\n.NewsSummaryAuthor {\r\n\tfont-style: italic;\r\n\tfont-size: 0.8em;\r\n}\r\n.NewsSummaryLink {\r\n\tmargin: 2px 0;\r\n}\r\n.NewsSummaryContent {\r\n\tmargin: 10px 0;\r\n}\r\n.NewsSummaryMorelink {\r\n\tmargin: 5px 0 15px;\r\n}\r\n/* ------------ End News Module ------------ */','screen','2009-05-06 14:30:25','2011-10-29 05:32:42'),
  (50,'PopupContent','/* browsers interpret margin and padding a little differently, we''ll remove all default padding and margins and set them later on */\r\n* {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n}\r\n/*Set initial font styles*/\r\nbody {\r\n\ttext-align: left;\r\n\tfont-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\r\n\tfont-size: 75.01%;\r\n\tline-height: 1em;\r\n}\r\n/*set font size for all divs, this overrides some body rules*/\r\ndiv {\r\n\tfont-size: 1em;\r\n}\r\n/*if img is inside \"a\" it would have borders, we don''t want that*/\r\nimg {\r\n\tborder: 0;\r\n}\r\n/*default link styles*/\r\n/* set all links to have underline and bluish color */\r\na, a:link a:active {\r\n\ttext-decoration: underline;\r\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n}\r\na:visited {\r\n\ttext-decoration: underline;\r\n\tbackground-color: inherit;\r\n\tcolor: #18507C;\r\n/* a different color can be used for visited links */\r\n}\r\n/* remove underline on hover and change color */\r\na:hover {\r\n\ttext-decoration: none;\r\n\tbackground-color: inherit;\r\n\tcolor: #385C72;\r\n}\r\n/*****************basic layout *****************/\r\nbody {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* default text color for entire site*/\r\n\tcolor: #333;\r\n/* you can set your own image and background color here */\r\n\tbackground: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\r\n}\r\ndiv#pagewrapper {\r\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\r\n\tmax-width: 50em;\r\n\tmin-width: 40em;\r\n/* now that width is set this centers wrapper */\r\n\tmargin: 0 auto;\r\n\t/*background-color: #F4F4F4;*/\r\n\tcolor: black;\r\n}\r\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\r\ndiv#header {\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n\t/* you can set your own image here, will go behind h1 a image */\r\n\t/* background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top; */\r\nbackground: url([[root_url]]/uploads/headerbanner.png) center no-repeat;\r\n\r\n/* border just the bottom */\r\n\tborder-bottom: 1px solid #D9E2E6;\r\n}\r\ndiv#header h1 a {\r\n/* you can set your own image here */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n/* this will make the \"a\" link a solid shape */\r\n\tdisplay: block;\r\n/* adjust according your image size */\r\n\theight: 135px;\r\n/* this hides the text */\r\n\ttext-indent: -999em;\r\n/* old firefox would have shown underline for the link, this explicitly hides it */\r\n\ttext-decoration: none;\r\n}\r\ndiv#header h1 {\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/*these keep IE6 from pushing the header to more than the set size*/\r\n\tline-height: 0;\r\n\tfont-size: 0;\r\n/* this will keep IE6 from flickering on hover */\r\n/*\tbackground: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left center; */\r\n}\r\ndiv#header h2 {\r\n/* this is where the site name is */\r\n\tfloat: right;\r\n\tline-height: 1.2em;\r\n/* this keeps IE6 from not showing the whole text */\r\n\tfont-size: 1.5em;\r\n/* keeps the size uniform */\r\n\tmargin: 35px 65px 0px 0px;\r\n/* adjust according your text size */\r\n\tcolor: #f4f4f4;\r\n}\r\ndiv.crbk {\r\n/* sets all to 0 */\r\n\tmargin: 0;\r\n\tpadding: 0;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.breadcrumbs {\r\n/* CSS short hand rule first value is top then right, bottom and left */\r\n\tpadding: 1em 0em 1em 1em;\r\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\r\n\tfont-size: 90%;\r\n/* css shorthand rule will be opened to be \"0px 0px 0px 0px\" */\r\n\tmargin: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\r\n}\r\ndiv.breadcrumbs span.lastitem {\r\n\tfont-weight: bold;\r\n}\r\ndiv#search {\r\n/* position for the search box */\r\n\tfloat: right;\r\n/* enough width for the search input box */\r\n\twidth: 27em;\r\n\ttext-align: right;\r\n\tpadding: 0.5em 0 0.2em 0;\r\n\tmargin: 0 1em;\r\n}\r\n/* a class for Submit button for the search input box */\r\ninput.search-button {\r\n\tborder: none;\r\n\theight: 22px;\r\n\twidth: 53px;\r\n\tmargin-left: 5px;\r\n\tpadding: 0px 2px 2px 0px;\r\n/* makes the hover cursor show, you can set your own cursor here */\r\n\tcursor: pointer;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\r\n}\r\ndiv#content {\r\n/* some air above and under menu and content */\r\n\tmargin: 1.5em auto 2em 0;\r\n\tpadding: 0px;\r\n}\r\n/* this gets all the outside calls that were used on the div#main before  */\r\ndiv.back1 {\r\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 0%;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\n/* this is an IE6 hack, you may see these through out the CSS */\r\n* html div.back1 {\r\n/* unlike other browser IE6 needs float:right and a width */\r\n\tfloat: right;\r\n\twidth: 90%;\r\n/* and we take this out or it will stop at the bottom  */\r\n\tmargin-left: 0%;\r\n/* and some air on the right */\r\n\tmargin-right: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\r\n}\r\ndiv.back2 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\r\n}\r\ndiv.back3 {\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\r\n}\r\ndiv#main {\r\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\r\n\tpadding: 10px 15px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\r\n}\r\ndiv#sidebar {\r\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\r\n\tfloat: left;\r\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\r\n\twidth: 26%;\r\n/* FIX IE double margin bug */\r\n\tdisplay: inline;\r\n/* the 20px is on the bottom, insures space above footer if longer than content */\r\n\tmargin: 0px 0px 20px;\r\n\tpadding: 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\r\n}\r\ndiv#sidebarb {\r\n\tpadding: 0 0 0 0;\r\n/* this one is for sidebar with content and no menu */\r\n\t\r\n}\r\ndiv#sidebarb div#news {\r\n/* less margin surrounding the news, sidebarb has enough */\r\n\tmargin: 0em 0 0em 0em;\r\n}\r\ndiv#sidebara {\r\n\tpadding: 10px 15px 15px 0px;\r\n/* this one is for sidebar with menu and no content */\r\n\tbackground: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\r\n}\r\ndiv.footback {\r\n/* keep footer below content and menu */\r\n\tclear: both;\r\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\r\n\tpadding: 0px 10px 0px 0px;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\r\n}\r\ndiv#footer {\r\n/* this sets 10px on left to balance 10px right on last div */\r\n\tpadding: 0px 0px 0px 10px;\r\n/* color of text, the link color is set below */\r\n\tcolor: #595959;\r\n/* you can set your own image here */\r\n\tbackground: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\r\n}\r\ndiv.leftfoot {\r\n\tfloat: left;\r\n\twidth: 30%;\r\n\tmargin-left: 20px\r\n}\r\ndiv#footer p {\r\n/* sets different font size from default */\r\n\tfont-size: 0.8em;\r\n/* some air for footer */\r\n\tpadding: 1.5em;\r\n/* centered text */\r\n\ttext-align: center;\r\n\tmargin: 0;\r\n}\r\ndiv#footer p a {\r\n/* footer link would be same color as default we want it same as footer text */\r\n\tcolor: #595959;\r\n}\r\n/* as we hid all hr for accessibility we create new hr with div class=\"hr\" element */\r\ndiv.hr {\r\n\theight: 1px;\r\n\tpadding: 1em;\r\n\tborder-bottom: 1px dotted black;\r\n\tmargin: 1em;\r\n}\r\n/* relational links under content */\r\ndiv.left49 {\r\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\r\n\twidth: 70%;\r\n}\r\ndiv.right49 {\r\n\tfloat: right;\r\n\twidth: 29%;\r\n/* set right to keep text on right */\r\n\ttext-align: right;\r\n}\r\n/********************CONTENT STYLING*********************/\r\n/* HEADINGS */\r\ndiv#content h1 {\r\n/* font size for h1 */\r\n\tfont-size: 2em;\r\n\tline-height: 1em;\r\n\tmargin: 0;\r\n}\r\ndiv#content h2 {\r\n\tcolor: #294B5F;\r\n/* font size for h2 the higher the h number the smaller the font size, most times */\r\n\tfont-size: 1.5em;\r\n\ttext-align: left;\r\n/* some air around the text */\r\n\tpadding-left: 0.5em;\r\n\tpadding-bottom: 1px;\r\n/* set borders around header */\r\n\tborder-bottom: 1px solid #899092;\r\n\tborder-left: 1.1em solid #899092;\r\n/* a larder than h1 line height */\r\n\tline-height: 1.5em;\r\n/* and some air under the border */\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h3 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.3em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.5em 0;\r\n}\r\ndiv#content h4 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.2em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\ndiv#content h5 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1.1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\nh6 {\r\n\tcolor: #294B5F;\r\n\tfont-size: 1em;\r\n\tline-height: 1.3em;\r\n\tmargin: 0 0 0.25em 0;\r\n}\r\n/* END HEADINGS */\r\n/* TEXT */\r\np {\r\n/* default p font size, this is set different in some other divs */\r\n\tfont-size: 1em;\r\n/* some air around p elements */\r\n\tmargin: 0 0 1.5em 0;\r\n\tline-height: 1.4em;\r\n\tpadding: 0;\r\n}\r\nblockquote {\r\n\tborder-left: 10px solid #ddd;\r\n\tmargin-left: 10px;\r\n}\r\nstrong, b {\r\n/* explicit setting for these */\r\n\tfont-weight: bold;\r\n}\r\nem, i {\r\n/* explicit setting for these */\r\n\tfont-style: italic;\r\n}\r\n/* Wrapping text in <code> tags. Makes CSS not validate */\r\ncode, pre {\r\n/* css-3 */\r\n\twhite-space: pre-wrap;\r\n/* Mozilla, since 1999 */\r\n\twhite-space: -moz-pre-wrap;\r\n/* Opera 4-6 */\r\n\twhite-space: -pre-wrap;\r\n/* Opera 7 */\r\n\twhite-space: -o-pre-wrap;\r\n/* Internet Explorer 5.5+ */\r\n\tword-wrap: break-word;\r\n\tfont-family: \"Courier New\", Courier, monospace;\r\n\tfont-size: 1em;\r\n}\r\npre {\r\n/* black border for pre blocks */\r\n\tborder: 1px solid #000;\r\n/* set different from surroundings to stand out */\r\n\tbackground-color: #ddd;\r\n\tmargin: 0 1em 1em 1em;\r\n\tpadding: 0.5em;\r\n\tline-height: 1.5em;\r\n\tfont-size: 90%;\r\n}\r\n/* Separating the divs on the template explanation page */\r\ndiv.templatecode {\r\n\tmargin: 0 0 2.5em;\r\n}\r\n/* END TEXT */\r\n/* LISTS */\r\n/* lists in content need some margins to look nice */\r\ndiv#main ul,\r\ndiv#main ol,\r\ndiv#main dl {\r\n\tfont-size: 1.0em;\r\n\tline-height: 1.4em;\r\n\tmargin: 0 0 1.5em 0;\r\n}\r\ndiv#main ul li,\r\ndiv#main ol li {\r\n\tmargin: 0 0 0.25em 3em;\r\n}\r\n/* definition lists topics on bold */\r\ndiv#main dl {\r\n\tmargin-bottom: 2em;\r\n\tpadding-bottom: 1em;\r\n\tborder-bottom: 1px solid #c0c0c0;\r\n}\r\ndiv#main dl dt {\r\n\tfont-weight: bold;\r\n\tmargin: 0 0 0 1em;\r\n}\r\ndiv#main dl dd {\r\n\tmargin: 0 0 1em 1em;\r\n}\r\n/* END LISTS */','screen','2011-11-12 03:34:54','2011-11-12 04:10:03'),
  (53,'thickbox-css','/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> global settings needed for thickbox <<<-----------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n*{padding: 0; margin: 0;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox specific link and font settings <<<------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n\r\n#TB_window {\r\n    font: 12px Arial, Helvetica, sans-serif;\r\n    color: #333333;\r\n}\r\n\r\n#TB_secondLine {\r\n    font: 10px Arial, Helvetica, sans-serif;\r\n    color:#666666;\r\n}\r\n\r\n#TB_window a:link {color: #666666;}\r\n#TB_window a:visited {color: #666666;}\r\n#TB_window a:hover {color: #000;}\r\n#TB_window a:active {color: #666666;}\r\n#TB_window a:focus{color: #666666;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox settings <<<-----------------------------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_overlay {\r\n    position: fixed;\r\n    z-index:100;\r\n    top: 0px;\r\n    left: 0px;\r\n    height:100%;\r\n    width:100%;\r\n}\r\n\r\n.TB_overlayMacFFBGHack {background: url(macFFBgHack.png) repeat;}\r\n.TB_overlayBG {\r\n    background-color:#000;\r\n    filter:alpha(opacity=75);\r\n    -moz-opacity: 0.75;\r\n    opacity: 0.75;\r\n}\r\n\r\n* html #TB_overlay { /* ie6 hack */\r\n                     position: absolute;\r\n                     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_window {\r\n    position: fixed;\r\n    background: #ffffff;\r\n    z-index: 102;\r\n    color:#000000;\r\n    display:none;\r\n    border: 4px solid #525252;\r\n    text-align:left;\r\n    top:50%;\r\n    left:50%;\r\n}\r\n\r\n* html #TB_window { /* ie6 hack */\r\n                    position: absolute;\r\n                    margin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_window img#TB_Image {\r\n    display:block;\r\n    margin: 15px 0 0 15px;\r\n    border-right: 1px solid #ccc;\r\n    border-bottom: 1px solid #ccc;\r\n    border-top: 1px solid #666;\r\n    border-left: 1px solid #666;\r\n}\r\n\r\n#TB_caption{\r\n    height:25px;\r\n    padding:7px 30px 10px 25px;\r\n    float:left;\r\n}\r\n\r\n#TB_closeWindow{\r\n    height:25px;\r\n    padding:11px 25px 10px 0;\r\n    float:right;\r\n}\r\n\r\n#TB_closeAjaxWindow{\r\n    padding:7px 10px 5px 0;\r\n    margin-bottom:1px;\r\n    text-align:right;\r\n    float:right;\r\n}\r\n\r\n#TB_ajaxWindowTitle{\r\n    float:left;\r\n    padding:7px 0 5px 10px;\r\n    margin-bottom:1px;\r\n}\r\n\r\n#TB_title{\r\n    background-color:#e8e8e8;\r\n    height:27px;\r\n}\r\n\r\n#TB_ajaxContent{\r\n    clear:both;\r\n    padding:2px 15px 15px 15px;\r\n    overflow:auto;\r\n    text-align:left;\r\n    line-height:1.4em;\r\n}\r\n\r\n#TB_ajaxContent.TB_modal{\r\n    padding:15px;\r\n    overflow: hidden;\r\n}\r\n\r\n#TB_ajaxContent p{\r\n    padding:5px 0px 5px 0px;\r\n}\r\n\r\n#TB_load{\r\n    position: fixed;\r\n    display:none;\r\n    height:13px;\r\n    width:208px;\r\n    z-index:103;\r\n    top: 50%;\r\n    left: 50%;\r\n    margin: -6px 0 0 -104px; /* -height/2 0 0 -width/2 */\r\n}\r\n\r\n* html #TB_load { /* ie6 hack */\r\n                  position: absolute;\r\n                  margin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_HideSelect{\r\n    z-index:99;\r\n    position:fixed;\r\n    top: 0;\r\n    left: 0;\r\n    background-color:#fff;\r\n    border:none;\r\n    filter:alpha(\"opacity=0\");\r\n    -moz-opacity: 0;\r\n    opacity: 0%;\r\n    height:100%;\r\n    width:100%;\r\n}\r\n\r\n* html #TB_HideSelect { /* ie6 hack */\r\n                        position: absolute;\r\n                        height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_iframeContent{\r\n    clear:both;\r\n    border:none;\r\n    margin-bottom:-1px;\r\n    margin-top:1px;\r\n    _margin-bottom:1px;\r\n}','screen','2011-11-12 08:40:49','2011-11-12 08:40:49'),
  (52,'PopupContentCss','.memberheader\r\n{\r\nfont-color: #ff0000;\r\n}','','2011-11-12 04:02:37','2011-11-12 04:04:00');

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
  (23,53,'template','2011-11-12 08:41:00','2011-11-12 08:41:00',5);

COMMIT;

#
# Data for the `cms_css_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_css_seq` (`id`) VALUES 
  (53);

COMMIT;

#
# Data for the `cms_event_handler_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_event_handler_seq` (`id`) VALUES 
  (12);

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
  (53,NULL,'Gallery',0,1,12);

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
  ('Search','SearchAllItemsDeleted',71);

COMMIT;

#
# Data for the `cms_events_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_events_seq` (`id`) VALUES 
  (71);

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
  (189,2,50,'2011-10-29 02:15:15','2011-10-29 02:15:15');

COMMIT;

#
# Data for the `cms_group_perms_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_group_perms_seq` (`id`) VALUES 
  (189);

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
  ('CMSForms','CMSUsers','0.0.24','2011-11-12 13:52:57','2011-11-12 13:52:57');

COMMIT;

#
# Data for the `cms_module_gallery` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_gallery` (`fileid`, `filename`, `filepath`, `filedate`, `fileorder`, `active`, `defaultfile`, `galleryid`, `title`, `comment`) VALUES 
  (1,'Gallery/','','2011-10-29 03:03:35',-1,1,0,0,'Main Gallery Index',NULL),
  (32,'2011-11-03/','','2011-11-03 15:21:08',0,1,0,1,'',''),
  (33,'CIMG4563.JPG','2011-11-03','2011-06-30 10:54:26',0,1,0,32,'',''),
  (34,'CIMG4564.JPG','2011-11-03','2011-06-30 10:54:30',0,1,0,32,'',''),
  (35,'CIMG4565.JPG','2011-11-03','2011-06-30 10:54:34',0,1,0,32,'',''),
  (2,'(_)Susan B2.jpg','','2011-10-10 23:51:16',0,1,0,1,'',''),
  (3,'(_)Susan.jpg','','2011-10-10 23:51:16',0,1,0,1,'',''),
  (4,'(_)Susan?6.jpg','','1970-01-01',0,1,0,1,'',''),
  (5,'IMG00315-20111011-1215.jpg','','2011-10-11 06:21:38',0,1,0,1,'',''),
  (6,'IMG03727-20111015-1602.jpg','','2011-10-15 21:53:00',0,1,0,1,'',''),
  (7,'IMG03810-20111022-2246.jpg','','2011-10-22 16:04:18',0,1,0,1,'',''),
  (8,'1.jpg','','2011-10-10 23:51:16',0,1,0,1,'',''),
  (9,'2.jpg','','2011-10-10 23:51:16',0,1,0,1,'',''),
  (10,'3.jpg','','2011-10-16 15:56:38',0,1,0,1,'',''),
  (11,'4.jpg','','2011-10-29 03:06:41',0,1,0,1,'',''),
  (12,'5.jpg','','2011-10-29 03:06:41',0,1,0,1,'',''),
  (13,'6.jpg','','2011-10-29 03:06:41',0,1,0,1,'',''),
  (14,'7.jpg','','2011-10-22 16:04:18',0,1,0,1,'',''),
  (15,'8.jpg','','2011-10-29 03:06:41',0,1,0,1,'',''),
  (16,'9.jpg','','2011-10-15 21:53:00',0,1,0,1,'',''),
  (17,'susan/','','2011-10-29 03:09:57',0,1,0,1,'',''),
  (18,'1.jpg','susan','2011-10-10 23:51:16',0,1,0,17,'',''),
  (19,'2.jpg','susan','2011-10-10 23:51:16',0,1,0,17,'',''),
  (20,'3.jpg','susan','2011-10-16 15:56:38',0,1,0,17,'',''),
  (21,'4.jpg','susan','2011-10-29 03:06:41',0,1,0,17,'',''),
  (22,'5.jpg','susan','2011-10-29 03:06:41',0,1,0,17,'',''),
  (23,'6.jpg','susan','2011-10-29 03:06:41',0,1,0,17,'',''),
  (24,'7.jpg','susan','2011-10-22 16:04:18',0,1,0,17,'',''),
  (25,'8.jpg','susan','2011-10-29 03:06:41',0,1,0,17,'',''),
  (26,'9.jpg','susan','2011-10-15 21:53:00',0,1,0,17,'',''),
  (27,'anime/','','2011-10-29 03:38:22',0,1,0,1,'','test'),
  (28,'1024_FF_542.jpg','anime','2007-02-23 06:51:58',0,1,0,27,'',''),
  (29,'1024_t_variant.jpg','anime','2007-02-22 09:59:04',0,1,0,27,'',''),
  (30,'AMSM520_1280.jpg','anime','2007-02-23 06:54:14',0,1,0,27,'',''),
  (31,'amz_sm_528_1280.jpg','anime','2007-02-22 09:51:02',0,1,0,27,'',''),
  (36,'CIMG4568.JPG','2011-11-03','2011-06-30 10:59:32',0,1,0,32,'','');

COMMIT;

#
# Data for the `cms_module_gallery_props` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_gallery_props` (`fileid`, `templateid`, `hideparentlink`) VALUES 
  (1,0,1),
  (17,0,0),
  (27,0,0),
  (32,0,0);

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
  (1,1,'News Module Installed','The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.','2011-10-29 02:15:15',NULL,NULL,NULL,'published',NULL,'2011-10-29 02:15:15','2011-10-29 02:15:15',1,NULL,NULL),
  (2,1,'Test Article','<div>\r\n<p>This is a test article.</p>\r\n<p>Should be appearing on news panel.</p>\r\n</div>','2011-10-29 02:35:20','<p>This is a test article</p>',NULL,NULL,'published',NULL,'2011-10-29 02:36:03','2011-10-29 02:36:03',1,'','');

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
# Data for the `cms_module_news_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_news_seq` (`id`) VALUES 
  (2);

COMMIT;

#
# Data for the `cms_module_search_index` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES 
  (1,'navigation',1),
  (1,'news',1),
  (131,'news',1),
  (234,'elections',1),
  (234,'direct',1),
  (234,'2010',1),
  (234,'2005',1),
  (234,'mayor',2),
  (234,'vice',1),
  (234,'elected',2),
  (234,'got',1),
  (234,'successfully',1),
  (234,'bureaucrat',1),
  (233,'bappeda',1),
  (233,'position',1),
  (233,'promoted',1),
  (233,'got',1),
  (233,'2006',1),
  (234,'career',1),
  (234,'became',1),
  (234,'beginning',1),
  (234,'2001',2),
  (234,'1999',1),
  (234,'secretary',2),
  (234,'acting',1),
  (234,'served',1),
  (234,'banjarbaru',2),
  (234,'formation',1),
  (234,'following',1),
  (234,'chapter',1),
  (234,'functionary',1),
  (234,'golkar',1),
  (234,'active',1),
  (234,'era',1),
  (234,'order',1),
  (234,'promoted',1),
  (234,'position',1),
  (234,'assistant',1),
  (234,'developmental',1),
  (234,'1998',1),
  (234,'new',2),
  (5,'navigation',1),
  (5,'news',1),
  (234,'administration',1),
  (234,'transferred',2),
  (234,'banjarmansin',2),
  (234,'municipality',4),
  (108,'orci',2),
  (108,'mauris',2),
  (108,'pede',2),
  (108,'nonummy',2),
  (108,'pharetra',2),
  (108,'proin',2),
  (108,'egestas',2),
  (108,'turpis',2),
  (108,'fames',2),
  (108,'netus',2),
  (108,'senectus',2),
  (108,'tristique',2),
  (108,'morbi',2),
  (108,'habitant',2),
  (108,'pellentesque',2),
  (108,'tellus',2),
  (108,'vivamus',2),
  (108,'est',2),
  (108,'enim',2),
  (108,'imperdiet',2),
  (108,'viverra',2),
  (108,'nunc',2),
  (108,'urna',2),
  (108,'quis',2),
  (108,'eros',2),
  (108,'commodo',2),
  (108,'libero',2),
  (108,'malesuada',4),
  (108,'lectus',2),
  (108,'purus',2),
  (108,'ultricies',2),
  (108,'pulvinar',2),
  (108,'sed',2),
  (108,'magna',4),
  (108,'posuere',2),
  (108,'fusce',4),
  (108,'massa',2),
  (108,'congue',2),
  (108,'porttitor',2),
  (108,'maecenas',2),
  (108,'elit',2),
  (108,'adipiscing',2),
  (108,'consectetuer',2),
  (108,'amet',4),
  (108,'sit',4),
  (108,'dolor',2),
  (108,'ipsum',2),
  (108,'lorem',2),
  (108,'pengurus',4),
  (109,'proin',2),
  (109,'egestas',2),
  (109,'turpis',2),
  (109,'fames',2),
  (109,'netus',2),
  (109,'senectus',2),
  (109,'tristique',2),
  (109,'morbi',2),
  (109,'habitant',2),
  (109,'pellentesque',2),
  (109,'tellus',2),
  (109,'vivamus',2),
  (109,'est',2),
  (109,'enim',2),
  (109,'imperdiet',2),
  (234,'1978',1),
  (234,'graduate',1),
  (234,'right',1),
  (234,'provincial',1),
  (234,'kalimantan',1),
  (234,'south',1),
  (234,'joined',1),
  (234,'1975',1),
  (234,'candidates',1),
  (234,'official',1),
  (234,'train',1),
  (234,'college',1),
  (234,'government',3),
  (234,'local',3),
  (234,'academy',1),
  (234,'negeri',1),
  (234,'dalam',1),
  (234,'pemerintahan',1),
  (234,'akademi',1),
  (234,'apdn',2),
  (234,'graduated',1),
  (234,'1951',1),
  (234,'december',1),
  (234,'martapura',1),
  (233,'transferred',1),
  (233,'west',1),
  (233,'districts',1),
  (233,'two',1),
  (233,'subdivided',1),
  (233,'2003',1),
  (233,'result',1),
  (233,'plan',1),
  (233,'pemekaran',1),
  (233,'proliferation',1),
  (233,'study',1),
  (233,'feasibility',1),
  (233,'conduct',1),
  (233,'assigned',1),
  (233,'pasaman',6),
  (233,'tenure',1),
  (233,'1996',1),
  (233,'district',6),
  (233,'agam',3),
  (233,'section',1),
  (233,'organizational',1),
  (233,'head',2),
  (233,'named',1),
  (233,'1989',1),
  (233,'college',1),
  (233,'graduated',1),
  (233,'right',1),
  (233,'service',1),
  (233,'civil',1),
  (233,'joined',1),
  (233,'1961',1),
  (233,'august',1),
  (233,'kemang',1),
  (233,'born',1),
  (233,'ismanimran',2),
  (233,'imran',3),
  (233,'isman',3),
  (234,'noor',3),
  (234,'born',1),
  (232,'capacity',1),
  (232,'resources’',1),
  (232,'human',1),
  (232,'enhance',1),
  (232,'finance',1),
  (232,'public',1),
  (232,'leaks',1),
  (232,'minimize',1),
  (232,'infrastructure',1),
  (232,'economic',1),
  (232,'improve',1),
  (232,'endeavor',1),
  (232,'catri’s',1),
  (232,'newly',1),
  (232,'elected',2),
  (232,'election',1),
  (232,'2010',1),
  (232,'lost',1),
  (232,'2005',1),
  (232,'agam',2),
  (232,'district',2),
  (232,'run',2),
  (232,'affairs',1),
  (232,'welfare',1),
  (232,'people’s',1),
  (232,'assistant',1),
  (232,'served',1),
  (232,'previously',1),
  (232,'2008',1),
  (232,'head',3),
  (232,'named',1),
  (232,'office',1),
  (232,'positions',1),
  (232,'various',1),
  (232,'transferred',1),
  (232,'1990',1),
  (232,'agency',1),
  (232,'local',3),
  (232,'bappeda',2),
  (232,'municipality',4),
  (232,'padang',4),
  (232,'service',1),
  (232,'civil',1),
  (232,'joined',1),
  (232,'1987',1),
  (232,'itb',1),
  (232,'technology',1),
  (232,'institute',1),
  (232,'bandung',1),
  (232,'planning',2),
  (232,'regional',1),
  (232,'department',1),
  (232,'degree',1),
  (232,'bachelor',1),
  (232,'obtainin',1),
  (232,'1961',1),
  (234,'ruzaidin',5),
  (238,'aswan',1),
  (238,'mohammad',1),
  (238,'noor',1),
  (238,'ruzaidin',1),
  (238,'muhammad',1),
  (238,'selatan',1),
  (238,'kalimantan',1),
  (238,'banjarbaru',1),
  (238,'imran',1),
  (238,'isman',1),
  (238,'catri',1),
  (238,'indra',1),
  (238,'barat',1),
  (238,'sumatera',1),
  (238,'basung',1),
  (238,'lubuk',1),
  (238,'bupati',2),
  (238,'&amp',2),
  (238,'walikota',2),
  (239,'2010',1),
  (239,'bappeda',1),
  (239,'named',1),
  (239,'2008',1),
  (239,'brawijaya',1),
  (239,'doctorate',1),
  (239,'1995',1),
  (239,'mada',1),
  (239,'gadjah',1),
  (239,'administration',2),
  (239,'public',2),
  (239,'degree',2),
  (239,'master',1),
  (239,'pursued',1),
  (239,'meanwhile',1),
  (239,'affairs',1),
  (239,'economic',1),
  (239,'new',1),
  (239,'moved',1),
  (239,'municipality',3),
  (239,'formation',1),
  (239,'2002',1),
  (239,'2001',1),
  (239,'disrict',1),
  (239,'kurau',1),
  (239,'camat',1),
  (239,'head',3),
  (239,'sub',1),
  (239,'served',2),
  (239,'1989',1),
  (239,'university',3),
  (239,'hasanuddin',1),
  (239,'graduating',1),
  (239,'immediately',1),
  (239,'province',1),
  (239,'kalimantan',1),
  (239,'south',1),
  (239,'district',2),
  (239,'laut',2),
  (239,'tanah',2),
  (239,'bureaucracy',1),
  (239,'government',1),
  (239,'local',1),
  (239,'career',1),
  (239,'built',1),
  (239,'1962',1),
  (239,'september',1),
  (109,'viverra',2),
  (109,'nunc',2),
  (109,'urna',2),
  (109,'quis',2),
  (109,'eros',2),
  (109,'commodo',2),
  (109,'libero',2),
  (109,'malesuada',4),
  (109,'lectus',2),
  (109,'purus',2),
  (109,'ultricies',2),
  (109,'pulvinar',2),
  (109,'sed',2),
  (109,'magna',4),
  (109,'posuere',2),
  (109,'fusce',4),
  (109,'massa',2),
  (109,'congue',2),
  (109,'porttitor',2),
  (109,'maecenas',2),
  (109,'elit',2),
  (109,'adipiscing',2),
  (109,'consectetuer',2),
  (109,'amet',4),
  (109,'sit',4),
  (109,'dolor',2),
  (109,'ipsum',2),
  (109,'lorem',2),
  (109,'comment',4),
  (238,'peserta',2),
  (105,'orci',2),
  (105,'mauris',2),
  (105,'pede',2),
  (105,'nonummy',2),
  (105,'pharetra',2),
  (105,'egestas',2),
  (105,'proin',2),
  (105,'turpis',2),
  (105,'fames',2),
  (105,'netus',2),
  (105,'senectus',2),
  (105,'tristique',2),
  (105,'morbi',2),
  (105,'habitant',2),
  (105,'pellentesque',2),
  (105,'tellus',2),
  (105,'vivamus',2),
  (105,'est',2),
  (105,'enim',2),
  (105,'imperdiet',2),
  (105,'viverra',2),
  (105,'nunc',2),
  (105,'urna',2),
  (105,'quis',2),
  (105,'eros',2),
  (105,'commodo',2),
  (105,'libero',2),
  (105,'malesuada',4),
  (105,'lectus',2),
  (105,'purus',2),
  (105,'ultricies',2),
  (105,'pulvinar',2),
  (105,'sed',2),
  (105,'magna',4),
  (105,'posuere',2),
  (105,'fusce',4),
  (105,'massa',2),
  (105,'congue',2),
  (105,'elit',2),
  (105,'maecenas',2),
  (105,'porttitor',2),
  (239,'banjarbaru',3),
  (239,'born',1),
  (239,'aswan',5),
  (83,'=\"version',1),
  (83,'navigation',1),
  (83,'&nbsp',6),
  (239,'mohammad',3),
  (131,'navigation',1),
  (109,'orci',2),
  (109,'mauris',2),
  (109,'pede',2),
  (109,'nonummy',2),
  (109,'pharetra',2),
  (238,'profil',2),
  (238,'2011',2),
  (238,'tahun',2),
  (238,'angkatan',2),
  (232,'april',1),
  (232,'bukittingi',1),
  (232,'born',1),
  (232,'indracatri',2),
  (232,'catri',3),
  (232,'indra',4),
  (199,'gif',1),
  (199,'logo1',1),
  (199,'images',1),
  (199,'uploads',1),
  (199,'orci',2),
  (199,'mauris',2),
  (199,'pede',2),
  (199,'nonummy',2),
  (199,'pharetra',2),
  (199,'proin',2),
  (199,'egestas',2),
  (199,'turpis',2),
  (199,'fames',2),
  (199,'netus',2),
  (199,'senectus',2),
  (199,'tristique',2),
  (199,'morbi',2),
  (199,'habitant',2),
  (199,'pellentesque',2),
  (199,'tellus',2),
  (199,'vivamus',2),
  (199,'est',2),
  (199,'enim',2),
  (199,'imperdiet',2),
  (199,'viverra',2),
  (199,'nunc',2),
  (199,'urna',2),
  (199,'quis',2),
  (199,'eros',2),
  (199,'commodo',2),
  (199,'libero',2),
  (199,'malesuada',4),
  (199,'lectus',2),
  (199,'purus',2),
  (199,'ultricies',2),
  (199,'pulvinar',2),
  (199,'sed',2),
  (199,'magna',4),
  (199,'posuere',2),
  (199,'fusce',4),
  (199,'massa',2),
  (199,'congue',2),
  (199,'porttitor',2),
  (199,'maecenas',2),
  (199,'elit',2),
  (199,'adipiscing',2),
  (199,'consectetuer',2),
  (199,'amet',4),
  (199,'ipsum',2),
  (199,'dolor',2),
  (199,'sit',4),
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
  (45,'should',1),
  (45,'article',4),
  (45,'test',4),
  (44,'corp@2011',1),
  (44,'dookie',1),
  (44,'powered',1),
  (42,'news',5),
  (42,'module',3),
  (42,'installed',3),
  (42,'exciting',1),
  (42,'article',2),
  (42,'using',1),
  (42,'summary',1),
  (42,'field',1),
  (42,'therefore',1),
  (42,'link',1),
  (42,'read',2),
  (42,'can',1),
  (42,'click',1),
  (42,'heading',1),
  (45,'appearing',1),
  (45,'news',1),
  (45,'panel',1),
  (105,'adipiscing',2),
  (105,'consectetuer',2),
  (105,'amet',4),
  (105,'sit',4),
  (105,'dolor',2),
  (105,'ipsum',2),
  (105,'lorem',2),
  (105,'history',4),
  (104,'news',4),
  (83,'news',1),
  (199,'lorem',2),
  (199,'home',4),
  (129,'photo',4);

COMMIT;

#
# Data for the `cms_module_search_items` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES 
  (1,'Search',15,'template',NULL),
  (131,'Search',16,'template',NULL),
  (5,'Search',17,'template',NULL),
  (232,'Search',64,'content',NULL),
  (233,'Search',65,'content',NULL),
  (234,'Search',66,'content',NULL),
  (239,'Search',68,'content',NULL),
  (129,'Search',56,'content',NULL),
  (149,'Search',23,'template',NULL),
  (104,'Search',58,'content',NULL),
  (105,'Search',59,'content',NULL),
  (108,'Search',60,'content',NULL),
  (238,'Search',61,'content',NULL),
  (109,'Search',62,'content',NULL),
  (30,'Search',19,'template',NULL),
  (83,'Search',22,'template',NULL),
  (199,'Search',15,'content',NULL),
  (35,'Search',21,'template',NULL),
  (37,'Search',20,'template',NULL),
  (39,'Search',18,'template',NULL),
  (44,'Search',1,'global_content',NULL),
  (42,'News',1,'article',NULL),
  (45,'News',2,'article',NULL);

COMMIT;

#
# Data for the `cms_module_search_items_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_search_items_seq` (`id`) VALUES 
  (239);

COMMIT;

#
# Data for the `cms_module_templates` table  (LIMIT 0,500)
#

INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES 
  ('CMSPrinting','linktemplate','{if isset($imgsrc)}\n{capture assign=''image''}\n  <img src=\"{$imgsrc}\" title=\"{$linktext}\" alt=\"{$linktext}\" {if isset($imgclass) && $imgclass!=''''}class=\"{$imgclass}\"{/if} />\n{/capture}\n<a href=\"{$href}\" class=\"{$class}\" {$target} {if isset($more)}{$more}{/if} rel=\"nofollow\">{$image}</a>\n{else}\n<a href=\"{$href}\" class=\"{$class}\" {$target} {if isset($more)}{$more}{/if} rel=\"nofollow\">{$linktext}</a>\n{/if}\n','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  ('CMSPrinting','printtemplate','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n  <head>\n    <title>Printing {title}</title>\n    <meta name=\"robots\" content=\"noindex\"></meta>\n    <base href=\"{$rooturl}\" />\n    <meta name=\"Generator\" content=\"CMS Made Simple - Copyright (C) 2004-11 Ted Kulp. All rights reserved.\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset={$encoding}\" />\n\n    {cms_stylesheet media=''print'' templateid=$templateid}\n\n    {if $overridestylesheet!=''''}\n    <style type=\"text/css\">\n    {$overridestylesheet}\n    </style>\n    {/if}\n    \n  </head>\n  <body style=\"background-color: white; color: black; background-image: none; text-align: left;\">\t\n    {$content}\n        \n    {$printscript}\n  </body>\n</html>\n','2011-10-29 02:15:14','2011-10-29 02:15:14'),
  ('News','summarySample','<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class=\"firstnewscat\"{/if}>\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n\t<div class=\"NewsSummaryPostdate\">\n\t\t{$entry->postdate|cms_date_format}\n\t</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n\t{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n\t<div class=\"NewsSummaryAuthor\">\n\t\t{$author_label} {$entry->author}\n\t</div>\n{/if}\n\n{if $entry->summary}\n\t<div class=\"NewsSummarySummary\">\n\t\t{eval var=$entry->summary}\n\t</div>\n\n\t<div class=\"NewsSummaryMorelink\">\n\t\t[{$entry->morelink}]\n\t</div>\n\n{else if $entry->content}\n\n\t<div class=\"NewsSummaryContent\">\n\t\t{eval var=$entry->content}\n\t</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {eval var=$entry->extra}\n\t{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == ''file''}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  ('News','detailSample','{* News module entry object reference:\r\n   ------------------------------\r\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\r\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\r\n   you will find a referennce to the available data.\r\n\r\n   ====\r\n   news_article Object Reference\r\n   ====\r\n\r\n     Members:\r\n     --\r\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\r\n\r\n     The following members are available in the entry array:\r\n   \r\n     id (integer)           = The unique article id.\r\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\r\n     title (string)         = The title of the article.\r\n     summary (text)         = The summary text (may be empty or unset).\r\n     extra (string)         = The \"extra\" data associated with the article (may be empty or unset).\r\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\r\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\r\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\r\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\r\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\r\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\r\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\r\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\r\n     category (string)      = The name of the category that this article is associated with.\r\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\r\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\r\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\r\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\r\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\r\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\r\n     \r\n\r\n   ====\r\n   news_field Object Reference\r\n   ====\r\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\r\n\r\n     Members:\r\n     --------\r\n     id (integer)  = The id of the field definition\r\n     name (string) = The name of the field\r\n     type (string) = The type of field\r\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\r\n     item_order (integer) = The order of the field\r\n     public (integer) = A flag indicating wether the field is public or not\r\n     value (mixed)    = The value of the field.\r\n\r\n\r\n   ====\r\n   Below, you will find the normal detail template information.  Modify this template as desired.\r\n*}\r\n\r\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=''canonical'' value=$entry->canonical}\r\n{/if}\r\n\r\n{if $entry->postdate}\r\n\t<div id=\"NewsPostDetailDate\">\r\n\t\t{$entry->postdate|cms_date_format}\r\n\t</div>\r\n{/if}\r\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\r\n\r\n<hr id=\"NewsPostDetailHorizRule\" />\r\n\r\n{if $entry->summary}\r\n\t<div id=\"NewsPostDetailSummary\">\r\n\t\t<strong>\r\n\t\t\t{eval var=$entry->summary}\r\n\t\t</strong>\r\n\t</div>\r\n{/if}\r\n\r\n{if $entry->category}\r\n\t<div id=\"NewsPostDetailCategory\">\r\n\t\t{$category_label} {$entry->category}\r\n\t</div>\r\n{/if}\r\n{if $entry->author}\r\n\t<div id=\"NewsPostDetailAuthor\">\r\n\t\t{$author_label} {$entry->author}\r\n\t</div>\r\n{/if}\r\n\r\n<div id=\"NewsPostDetailContent\">\r\n\t{eval var=$entry->content}\r\n</div>\r\n\r\n{if $entry->extra}\r\n\t<div id=\"NewsPostDetailExtra\">\r\n\t\t{$extra_label} {$entry->extra}\r\n\t</div>\r\n{/if}\r\n\r\n{if $return_url != \"\"}\r\n<div id=\"NewsPostDetailReturnLink\">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\r\n{/if}\r\n\r\n\r\n{if isset($entry->fields)}\r\n  {foreach from=$entry->fields item=''field''}\r\n     <div class=\"NewsDetailField\">\r\n        {if $field->type == ''file''}\r\n\t  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\r\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\r\n        {else}\r\n          {$field->name}:&nbsp;{eval var=$field->value}\r\n        {/if}\r\n     </div>\r\n  {/foreach}\r\n{/if}\r\n\r\n{cms_module module=''comments'' modulename=''News'' pageid=$entry->id}','2011-10-29 02:15:15','2011-11-13 07:55:36'),
  ('News','formSample','{* original form template *}\n{if isset($error)}\n  <h3><font color=\"red\">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">*{$titletext}:</p>\n\t\t<p class=\"pageinput\">{$inputtitle}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$categorytext}:</p>\n\t\t<p class=\"pageinput\">{$inputcategory}</p>\n\t</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$summarytext}:</p>\n\t\t<p class=\"pageinput\">{$inputsummary}</p>\n\t</div>\n{/if}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">*{$contenttext}:</p>\n\t\t<p class=\"pageinput\">{$inputcontent}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$extratext}:</p>\n\t\t<p class=\"pageinput\">{$inputextra}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$startdatetext}:</p>\n\t\t<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$enddatetext}:</p>\n\t\t<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n\t</div>\n\t{if isset($customfields)}\n\t   {foreach from=$customfields item=''onefield''}\n\t      <div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$onefield->name}:</p>\n\t\t<p class=\"pageinput\">{$onefield->field}</p>\n\t      </div>\n\t   {/foreach}\n\t{/if}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">&nbsp;</p>\n\t\t<p class=\"pageinput\">{$hidden}{$submit}{$cancel}</p>\n\t</div>\n{$endform}\n','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  ('News','browsecatSample','{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  ('News','email_template','A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nPost Date:  {$postdate|date_format}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n','2011-10-29 02:15:15','2011-10-29 02:15:15'),
  ('Search','displaysearch','\n{$startform}\n<label for=\"{$search_actionid}searchinput\">{$searchprompt}:&nbsp;</label><input type=\"text\" class=\"search-input\" id=\"{$search_actionid}searchinput\" name=\"{$search_actionid}searchinput\" size=\"20\" maxlength=\"50\" value=\"{$searchtext}\" {$hogan}/>\n{*\n<br/>\n<input type=\"checkbox\" name=\"{$search_actionid}use_or\" value=\"1\"/>\n*}\n<input class=\"search-button\" name=\"submit\" value=\"{$submittext}\" type=\"submit\" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}','2011-10-29 02:15:17','2011-10-29 02:15:17'),
  ('Search','displayresult','<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href=\"{$entry->url}\">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {* \n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry \n      ie: {if $entry->module == ''News''}{News action=''detail'' article_id=$entry->modulerecord detailpage=''News''} \n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}','2011-10-29 02:15:17','2011-10-29 02:15:17'),
  ('AComments','default_display','<div id=\"comments\">\n\n{if $items}\n<ul>\n{/if}\n{foreach from=$items item=entry}\n\t<li class=\"{$entry->cssclass}\">{if $entry->comment_title}<strong>{$entry->comment_title}</strong><br />{/if}\n\t{if $entry->comment_author}\n\t\t{if $entry->author_website}<a href=\"{$entry->author_website}\" target=\"_blank\">{$entry->comment_author}</a> - \n\t\t{else}{$entry->comment_author} - \n\t\t{/if}\n\t{else if $entry->author_website}<a href=\"{$entry->author_website}\" target=\"_blank\">{$entry->author_website}</a> - \n\t{/if}\n\t{$entry->date}<br />\n\t{$entry->comment_data}\n\t</li>\n{/foreach}\n{if $items}\n</ul>\n{/if}\n\n{if FALSE == $errormessage}\n{startExpandCollapse id=\"name\" title=\"$addacomment\"}\n{else}\n{$errormessage}\n{/if}\n<h3>{$addacomment}</h3>\n\n{$startform}\n{*<form id=\"{$id}moduleform_1\" method=\"post\" action=\"{$returnurl}\" class=\"cms_form\">*}\n{$image}\n\n<table>\n\t<tr>\n\t\t<td>{$titletxt}:</td>\n\t\t<td>{$inputtitle}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$yournametxt}(*):</td>\n\t\t<td>{$inputyourname}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$emailtxt}:</td>\n\t\t<td>{$inputemail}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$notifytxt}:</td>\n\t\t<td>{$inputnotify}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$websitetxt}:</td>\n\t\t<td>{$inputwebsite}</td>\n\t</tr>\n\t<tr>\n\t\t<td>{$commenttxt}(*):</td>\n\t\t<td>{$inputcomment}</td>\n\t</tr>\n{if $spamprotect}\n\t<tr>\n\t\t<td>{$entercodetxt}:</td>\n\t\t<td>{$spamprotectimage}<br />{$inputentercode}</td>\n\t</tr>\n{/if}\n\t<tr>\n\t\t<td>&nbsp;</td>\n\t\t<td>{$submit} {$cancel}</td>\n\t</tr>\n</table>\n\n{*</form>*}\n{$endform}\n{if FALSE == $errormessage}\n{stopExpandCollapse} \n{/if}\n\n{if $trackback == 1}\n<span class=\"trackback\"><a href=\"{$trackbackurl}\" rel=\"nofollow\">Trackback-URL</a></span>\n<!--\n<rdf:RDF\n\txmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n\txmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n\txmlns:trackback=\"{$trackbackurl}\">\n<rdf:Description\n\trdf:about=\"{$redirecturl}\"\n\tdc:title=\"{$pagetitle}\"\n\tdc:identifier=\"{$redirecturl}\"\n\ttrackback:ping=\"{$trackbackurl}\" />\n</rdf:RDF>\n-->\n{/if}\n\n</div>','2011-10-29 02:52:40','2011-10-29 02:52:40'),
  ('Gallery','Fancybox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a class=\"group\" href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"gallery-{$galleryid}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n\tposition: fixed;\r\n\ttop: 50%;\r\n\tleft: 50%;\r\n\twidth: 40px;\r\n\theight: 40px;\r\n\tmargin-top: -20px;\r\n\tmargin-left: -20px;\r\n\tcursor: pointer;\r\n\toverflow: hidden;\r\n\tz-index: 1104;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 40px;\r\n\theight: 480px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n}\r\n\r\n#fancybox-overlay {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tz-index: 1100;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\toverflow: auto;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\tpadding: 20px;\r\n\tz-index: 1101;\r\n\toutline: none;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-outer {\r\n\tposition: relative;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: #000;\r\n}\r\n\r\n#fancybox-content {\r\n\twidth: 0;\r\n\theight: 0;\r\n\tpadding: 0;\r\n\toutline: none;\r\n\tposition: relative;\r\n\toverflow: hidden;\r\n\tz-index: 1102;\r\n\tborder: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: transparent;\r\n\tz-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n\tposition: absolute;\r\n\ttop: -15px;\r\n\tright: -15px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tbackground: transparent url(''../fancybox/fancybox.png'') -40px 0px;\r\n\tcursor: pointer;\r\n\tz-index: 1103;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-error {\r\n\tcolor: #444;\r\n\tfont: normal 12px/20px Arial;\r\n\tpadding: 14px;\r\n\tmargin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: none;\r\n\toutline: none;\r\n\tline-height: 0;\r\n\tvertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tborder: none;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n\tposition: absolute;\r\n\tbottom: 0px;\r\n\theight: 100%;\r\n\twidth: 35%;\r\n\tcursor: pointer;\r\n\toutline: none;\r\n\tbackground: transparent url(''../fancybox/blank.gif'');\r\n\tz-index: 1102;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-left {\r\n\tleft: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n\tright: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n\tposition: absolute;\r\n\ttop: 50%;\r\n\tleft: -9999px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tmargin-top: -15px;\r\n\tcursor: pointer;\r\n\tz-index: 1102;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n\tvisibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n\tleft: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n\tleft: auto;\r\n\tright: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n\tposition: absolute;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\twidth: 20px;\r\n\theight: 20px;\r\n\tz-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n\ttop: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n\ttop: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n\ttop: 0;\r\n\tright: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n\tbackground-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n\tbottom: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n\tbottom: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n\tbackground-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n\tbottom: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n\ttop: 0;\r\n\tleft: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n\ttop: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n\tfont-family: Helvetica;\r\n\tfont-size: 12px;\r\n\tz-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n\tpadding-bottom: 10px;\r\n\ttext-align: center;\r\n\tcolor: #333;\r\n\tbackground: #fff;\r\n\tposition: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n\tpadding-top: 10px;\r\n\tcolor: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n\tposition: absolute;\r\n\tbottom: 0;\r\n\tleft: 0;\r\n\tcolor: #FFF;\r\n\ttext-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n\tpadding: 10px;\r\n\tbackground-image: url(''../fancybox/fancy_title_over.png'');\r\n\tdisplay: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n\tposition: absolute;\r\n\tleft: 0;\r\n\tbottom: -20px;\r\n\theight: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n\tborder: none;\r\n\tborder-collapse: collapse;\r\n\twidth: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n\tborder: none;\r\n\twhite-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n\tcolor: #FFF;\r\n\tline-height: 29px;\r\n\tfont-weight: bold;\r\n\tpadding: 0 0 3px 0;\r\n\tbackground: url(''../fancybox/fancybox-x.png'') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }\r\n{*----------<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/fancybox/jquery.fancybox.pack.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.mousewheel.pack.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n\t$(\"a.group\").fancybox({\r\n\t\t''speedIn'':\t\t300,\r\n\t\t''speedOut'':\t300,\r\n\t\t''overlayColor'':\t''#000'',\r\n\t\t''overlayOpacity'':\t0.7\r\n\t});\r\n});\r\n</script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Lightbox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"lightbox[gallery]\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;*/\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* LIGHTBOX */\r\n\r\n#lightbox{\tposition: absolute;\tleft: 0; width: 100%; z-index: 100; text-align: center; line-height: 0;}\r\n#lightbox img{ width: auto; height: auto;}\r\n#lightbox a img{ border: none; }\r\n\r\n#outerImageContainer{ position: relative; background-color: #fff; width: 250px; height: 250px; margin: 0 auto; }\r\n#imageContainer{ padding: 10px; }\r\n\r\n#loading{ position: absolute; top: 40%; left: 0%; height: 25%; width: 100%; text-align: center; line-height: 0; }\r\n#hoverNav{ position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#imageContainer>#hoverNav{ left: 0;}\r\n#hoverNav a{ outline: none;}\r\n\r\n#prevLink, #nextLink{ width: 49%; height: 100%; background-image: url(data:image/gif;base64,AAAA); /* Trick IE into showing hover */ display: block; }\r\n#prevLink { left: 0; float: left;}\r\n#nextLink { right: 0; float: right;}\r\n#prevLink:hover, #prevLink:visited:hover { background: url(../lightbox/images/prevlabel.gif) left 15% no-repeat; }\r\n#nextLink:hover, #nextLink:visited:hover { background: url(../lightbox/images/nextlabel.gif) right 15% no-repeat; }\r\n\r\n#imageDataContainer{ font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; margin: 0 auto; line-height: 1.4em; overflow: auto; width: 100%\t; }\r\n\r\n#imageData{\tpadding:0 10px; color: #666; }\r\n#imageData #imageDetails{ width: 70%; float: left; text-align: left; }\t\r\n#imageData #caption{ font-weight: bold;\t}\r\n#imageData #numberDisplay{ display: block; clear: left; padding-bottom: 1.0em;\t}\t\t\t\r\n#imageData #bottomNavClose{ width: 66px; float: right;  padding-bottom: 0.7em; outline: none;}\t \t\r\n\r\n#overlay{ position: absolute; top: 0; left: 0; z-index: 90; width: 100%; height: 500px; background-color: #000; }\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/lightbox/js/prototype.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/lightbox/js/scriptaculous.js?load=effects,builder\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/lightbox/js/lightbox.js\"></script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Lytebox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"lyteshow[gallery]\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;*/\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* LYTEBOX */\r\n\r\n#lbOverlay { position: fixed; top: 0; left: 0; z-index: 99998; width: 100%; height: 500px; }\r\n\t#lbOverlay.grey { background-color: #000000; }\r\n\t#lbOverlay.red { background-color: #330000; }\r\n\t#lbOverlay.green { background-color: #003300; }\r\n\t#lbOverlay.blue { background-color: #011D50; }\r\n\t#lbOverlay.gold { background-color: #666600; }\r\n\r\n#lbMain { position: absolute; left: 0; width: 100%; z-index: 99999; text-align: center; line-height: 0; }\r\n#lbMain a img { border: none; }\r\n\r\n#lbOuterContainer { position: relative; background-color: #fff; width: 200px; height: 200px; margin: 0 auto; }\r\n\t#lbOuterContainer.grey { border: 3px solid #888888; }\r\n\t#lbOuterContainer.red { border: 3px solid #DD0000; }\r\n\t#lbOuterContainer.green { border: 3px solid #00B000; }\r\n\t#lbOuterContainer.blue { border: 3px solid #5F89D8; }\r\n\t#lbOuterContainer.gold { border: 3px solid #B0B000; }\r\n\r\n#lbDetailsContainer {\tfont: 10px Verdana, Helvetica, sans-serif; background-color: #fff; width: 100%; line-height: 1.4em;\toverflow: auto; margin: 0 auto; }\r\n\t#lbDetailsContainer.grey { border: 3px solid #888888; border-top: none; }\r\n\t#lbDetailsContainer.red { border: 3px solid #DD0000; border-top: none; }\r\n\t#lbDetailsContainer.green { border: 3px solid #00B000; border-top: none; }\r\n\t#lbDetailsContainer.blue { border: 3px solid #5F89D8; border-top: none; }\r\n\t#lbDetailsContainer.gold { border: 3px solid #B0B000; border-top: none; }\r\n\r\n#lbImageContainer, #lbIframeContainer { padding: 10px; }\r\n#lbLoading {\r\n\tposition: absolute; top: 45%; left: 0%; height: 32px; width: 100%; text-align: center; line-height: 0; background: url(../lytebox/images/loading.gif) center no-repeat;\r\n}\r\n\r\n#lbHoverNav { position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#lbImageContainer>#lbHoverNav { left: 0; }\r\n#lbHoverNav a { outline: none; }\r\n\r\n#lbPrev { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; left: 0; float: left; }\r\n\t#lbPrev.grey:hover, #lbPrev.grey:visited:hover { background: url(../lytebox/images/prev_grey.gif) left 15% no-repeat; }\r\n\t#lbPrev.red:hover, #lbPrev.red:visited:hover { background: url(../lytebox/images/prev_red.gif) left 15% no-repeat; }\r\n\t#lbPrev.green:hover, #lbPrev.green:visited:hover { background: url(../lytebox/images/prev_green.gif) left 15% no-repeat; }\r\n\t#lbPrev.blue:hover, #lbPrev.blue:visited:hover { background: url(../lytebox/images/prev_blue.gif) left 15% no-repeat; }\r\n\t#lbPrev.gold:hover, #lbPrev.gold:visited:hover { background: url(../lytebox/images/prev_gold.gif) left 15% no-repeat; }\r\n\r\n#lbNext { width: 49%; height: 100%; background: transparent url(../lytebox/images/blank.gif) no-repeat; display: block; right: 0; float: right; }\r\n\t#lbNext.grey:hover, #lbNext.grey:visited:hover { background: url(../lytebox/images/next_grey.gif) right 15% no-repeat; }\r\n\t#lbNext.red:hover, #lbNext.red:visited:hover { background: url(../lytebox/images/next_red.gif) right 15% no-repeat; }\r\n\t#lbNext.green:hover, #lbNext.green:visited:hover { background: url(../lytebox/images/next_green.gif) right 15% no-repeat; }\r\n\t#lbNext.blue:hover, #lbNext.blue:visited:hover { background: url(../lytebox/images/next_blue.gif) right 15% no-repeat; }\r\n\t#lbNext.gold:hover, #lbNext.gold:visited:hover { background: url(../lytebox/images/next_gold.gif) right 15% no-repeat; }\r\n\r\n#lbPrev2, #lbNext2 { text-decoration: none; font-weight: bold; }\r\n\t#lbPrev2.grey, #lbNext2.grey, #lbSpacer.grey { color: #333333; }\r\n\t#lbPrev2.red, #lbNext2.red, #lbSpacer.red { color: #620000; }\r\n\t#lbPrev2.green, #lbNext2.green, #lbSpacer.green { color: #003300; }\r\n\t#lbPrev2.blue, #lbNext2.blue, #lbSpacer.blue { color: #01379E; }\r\n\t#lbPrev2.gold, #lbNext2.gold, #lbSpacer.gold { color: #666600; }\r\n\r\n#lbPrev2_Off, #lbNext2_Off { font-weight: bold; }\r\n\t#lbPrev2_Off.grey, #lbNext2_Off.grey { color: #CCCCCC; }\r\n\t#lbPrev2_Off.red, #lbNext2_Off.red { color: #FFCCCC; }\r\n\t#lbPrev2_Off.green, #lbNext2_Off.green { color: #82FF82; }\r\n\t#lbPrev2_Off.blue, #lbNext2_Off.blue { color: #B7CAEE; }\r\n\t#lbPrev2_Off.gold, #lbNext2_Off.gold { color: #E1E100; }\r\n\r\n#lbDetailsData { padding: 0 10px; }\r\n\t#lbDetailsData.grey { color: #333333; }\r\n\t#lbDetailsData.red { color: #620000; }\r\n\t#lbDetailsData.green { color: #003300; }\r\n\t#lbDetailsData.blue { color: #01379E; }\r\n\t#lbDetailsData.gold { color: #666600; }\r\n\r\n#lbDetails { width: 60%; float: left; text-align: left; }\r\n#lbCaption { display: block; font-weight: bold; }\r\n#lbNumberDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n#lbNavDisplay { float: left; display: block; padding-bottom: 1.0em; }\r\n\r\n#lbClose { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n\t#lbClose.grey { background: url(../lytebox/images/close_grey.png) no-repeat; }\r\n\t#lbClose.red { background: url(../lytebox/images/close_red.png) no-repeat; }\r\n\t#lbClose.green { background: url(../lytebox/images/close_green.png) no-repeat; }\r\n\t#lbClose.blue { background: url(../lytebox/images/close_blue.png) no-repeat; }\r\n\t#lbClose.gold { background: url(../lytebox/images/close_gold.png) no-repeat; }\r\n\r\n#lbPlay { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n\t#lbPlay.grey { background: url(../lytebox/images/play_grey.png) no-repeat; }\r\n\t#lbPlay.red { background: url(../lytebox/images/play_red.png) no-repeat; }\r\n\t#lbPlay.green { background: url(../lytebox/images/play_green.png) no-repeat; }\r\n\t#lbPlay.blue { background: url(../lytebox/images/play_blue.png) no-repeat; }\r\n\t#lbPlay.gold { background: url(../lytebox/images/play_gold.png) no-repeat; }\r\n\r\n#lbPause { width: 64px; height: 28px; float: right; margin-bottom: 1px; }\r\n\t#lbPause.grey { background: url(../lytebox/images/pause_grey.png) no-repeat; }\r\n\t#lbPause.red { background: url(../lytebox/images/pause_red.png) no-repeat; }\r\n\t#lbPause.green { background: url(../lytebox/images/pause_green.png) no-repeat; }\r\n\t#lbPause.blue { background: url(../lytebox/images/pause_blue.png) no-repeat; }\r\n\t#lbPause.gold { background: url(../lytebox/images/pause_gold.png) no-repeat; }\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/lytebox/lytebox.js\"></script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Slimbox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"lightbox[gallery]\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* SLIMBOX */\r\n\r\n#lbOverlay {\r\n\tposition: fixed;\r\n\tz-index: 9999;\r\n\tleft: 0;\r\n\ttop: 0;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground-color: #000;\r\n\tcursor: pointer;\r\n}\r\n\r\n#lbCenter, #lbBottomContainer {\r\n\tposition: absolute;\r\n\tz-index: 9999;\r\n\toverflow: hidden;\r\n\tbackground-color: #fff;\r\n}\r\n\r\n.lbLoading {\r\n\tbackground: #fff url(../slimbox/css/loading.gif) no-repeat center;\r\n}\r\n\r\n#lbImage {\r\n\tposition: absolute;\r\n\tleft: 0;\r\n\ttop: 0;\r\n\tborder: 10px solid #fff;\r\n\tbackground-repeat: no-repeat;\r\n}\r\n\r\n#lbPrevLink, #lbNextLink {\r\n\tdisplay: block;\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\twidth: 50%;\r\n\toutline: none;\r\n}\r\n\r\n#lbPrevLink {\r\n\tleft: 0;\r\n}\r\n\r\n#lbPrevLink:hover {\r\n\tbackground: transparent url(../slimbox/css/prevlabel.gif) no-repeat 0 15%;\r\n}\r\n\r\n#lbNextLink {\r\n\tright: 0;\r\n}\r\n\r\n#lbNextLink:hover {\r\n\tbackground: transparent url(../slimbox/css/nextlabel.gif) no-repeat 100% 15%;\r\n}\r\n\r\n#lbBottom {\r\n\tfont-family: Verdana, Arial, Geneva, Helvetica, sans-serif;\r\n\tfont-size: 10px;\r\n\tcolor: #666;\r\n\tline-height: 1.4em;\r\n\ttext-align: left;\r\n\tborder: 10px solid #fff;\r\n\tborder-top-style: none;\r\n}\r\n\r\n#lbCloseLink {\r\n\tdisplay: block;\r\n\tfloat: right;\r\n\twidth: 66px;\r\n\theight: 22px;\r\n\tbackground: transparent url(../slimbox/css/closelabel.gif) no-repeat center;\r\n\tmargin: 5px 0;\r\n\toutline: none;\r\n}\r\n\r\n#lbCaption, #lbNumber {\r\n\tmargin-right: 71px;\r\n}\r\n\r\n#lbCaption {\r\n\tfont-weight: bold;\r\n}\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/slimbox/js/slimbox2.js\"></script>\r\n*}','2011-10-29 03:03:36','2011-10-29 03:03:36'),
  ('Gallery','Thickbox','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" class=\"thickbox\" rel=\"gallery\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block; \r\n\twidth: 50px; \r\n\theight: 39px;\r\n\tfloat: left; \r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* THICKBOX */\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> global settings needed for thickbox <<<-----------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n*{padding: 0; margin: 0;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox specific link and font settings <<<------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_window {\r\n\tfont: 12px Arial, Helvetica, sans-serif;\r\n\tcolor: #333333;\r\n}\r\n\r\n#TB_secondLine {\r\n\tfont: 10px Arial, Helvetica, sans-serif;\r\n\tcolor:#666666;\r\n}\r\n\r\n#TB_window a:link {color: #666666;}\r\n#TB_window a:visited {color: #666666;}\r\n#TB_window a:hover {color: #000;}\r\n#TB_window a:active {color: #666666;}\r\n#TB_window a:focus{color: #666666;}\r\n\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n/* ---------->>> thickbox settings <<<-----------------------------------------------------------------------------*/\r\n/* ----------------------------------------------------------------------------------------------------------------*/\r\n#TB_overlay {\r\n\tposition: fixed;\r\n\tz-index:100;\r\n\ttop: 0px;\r\n\tleft: 0px;\r\n\theight:100%;\r\n\twidth:100%;\r\n}\r\n\r\n.TB_overlayMacFFBGHack {background: url(modules/Gallery/templates/thickbox/macFFBgHack.png) repeat;}\r\n.TB_overlayBG {\r\n\tbackground-color:#000;\r\n\tfilter:alpha(opacity=75);\r\n\t-moz-opacity: 0.75;\r\n\topacity: 0.75;\r\n}\r\n\r\n* html #TB_overlay { /* ie6 hack */\r\n     position: absolute;\r\n     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_window {\r\n\tposition: fixed;\r\n\tbackground: #ffffff;\r\n\tz-index: 102;\r\n\tcolor:#000000;\r\n\tdisplay:none;\r\n\tborder: 4px solid #525252;\r\n\ttext-align:left;\r\n\ttop:50%;\r\n\tleft:50%;\r\n}\r\n\r\n* html #TB_window { /* ie6 hack */\r\nposition: absolute;\r\nmargin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_window img#TB_Image {\r\n\tdisplay:block;\r\n\tmargin: 15px 0 0 15px;\r\n\tborder-right: 1px solid #ccc;\r\n\tborder-bottom: 1px solid #ccc;\r\n\tborder-top: 1px solid #666;\r\n\tborder-left: 1px solid #666;\r\n}\r\n\r\n#TB_caption{\r\n\theight:25px;\r\n\tpadding:7px 30px 10px 25px;\r\n\tfloat:left;\r\n}\r\n\r\n#TB_closeWindow{\r\n\theight:25px;\r\n\tpadding:11px 25px 10px 0;\r\n\tfloat:right;\r\n}\r\n\r\n#TB_closeAjaxWindow{\r\n\tpadding:7px 10px 5px 0;\r\n\tmargin-bottom:1px;\r\n\ttext-align:right;\r\n\tfloat:right;\r\n}\r\n\r\n#TB_ajaxWindowTitle{\r\n\tfloat:left;\r\n\tpadding:7px 0 5px 10px;\r\n\tmargin-bottom:1px;\r\n}\r\n\r\n#TB_title{\r\n\tbackground-color:#e8e8e8;\r\n\theight:27px;\r\n}\r\n\r\n#TB_ajaxContent{\r\n\tclear:both;\r\n\tpadding:2px 15px 15px 15px;\r\n\toverflow:auto;\r\n\ttext-align:left;\r\n\tline-height:1.4em;\r\n}\r\n\r\n#TB_ajaxContent.TB_modal{\r\n\tpadding:15px;\r\n}\r\n\r\n#TB_ajaxContent p{\r\n\tpadding:5px 0px 5px 0px;\r\n}\r\n\r\n#TB_load{\r\n\tposition: fixed;\r\n\tdisplay:none;\r\n\theight:13px;\r\n\twidth:208px;\r\n\tz-index:103;\r\n\ttop: 50%;\r\n\tleft: 50%;\r\n\tmargin: -6px 0 0 -104px; /* -height/2 0 0 -width/2 */\r\n}\r\n\r\n* html #TB_load { /* ie6 hack */\r\nposition: absolute;\r\nmargin-top: expression(0 - parseInt(this.offsetHeight / 2) + (TBWindowMargin = document.documentElement && document.documentElement.scrollTop || document.body.scrollTop) + ''px'');\r\n}\r\n\r\n#TB_HideSelect{\r\n\tz-index:99;\r\n\tposition:fixed;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\tbackground-color:#fff;\r\n\tborder:none;\r\n\tfilter:alpha(opacity=0);\r\n\t-moz-opacity: 0;\r\n\topacity: 0;\r\n\theight:100%;\r\n\twidth:100%;\r\n}\r\n\r\n* html #TB_HideSelect { /* ie6 hack */\r\n     position: absolute;\r\n     height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + ''px'');\r\n}\r\n\r\n#TB_iframeContent{\r\n\tclear:both;\r\n\tborder:none;\r\n\tmargin-bottom:-1px;\r\n\tmargin-top:1px;\r\n\t_margin-bottom:1px;\r\n}\r\n\r\n{*----------<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/thickbox/thickbox.js\"></script>\r\n*}','2011-10-29 03:03:37','2011-10-29 03:03:37'),
  ('Gallery','gallerytree','\t<ul>\r\n{assign var=''g_prevdepth'' value=1}\r\n{foreach from=$images item=image name=img}\r\n\r\n{if $image->depth > $g_prevdepth}\r\n{repeat string=\"<ul>\" times=$image->depth-$g_prevdepth}\r\n{elseif $image->depth < $g_prevdepth}\r\n{repeat string=\"</li></ul>\" times=$g_prevdepth-$image->depth}\r\n</li>\r\n{elseif $smarty.foreach.img.index > 0}</li>\r\n{/if}\r\n\t\t<li><a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a> {$image->titlename}\r\n\r\n{assign var=''g_prevdepth'' value=$image->depth}\r\n{/foreach}\r\n{repeat string=\"</li></ul>\" times=$image->depth-1}</li>\r\n\t</ul>\r\n{*----------{*----------*}','2011-10-29 03:03:37','2011-10-29 03:03:37');

COMMIT;

#
# Data for the `cms_modules` table  (LIMIT 0,500)
#

INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES 
  ('CMSMailer','installed','2.0.2',0,1,1,0),
  ('CMSPrinting','installed','1.0',0,1,1,0),
  ('FileManager','installed','1.2.0',0,1,1,0),
  ('MenuManager','installed','1.7.6',0,1,1,0),
  ('MicroTiny','installed','1.1',0,1,1,0),
  ('ModuleManager','installed','1.5',1,1,0,0),
  ('News','installed','2.12.2',0,1,0,0),
  ('Search','installed','1.7',0,1,1,0),
  ('ThemeManager','installed','1.1.4',1,1,0,0),
  ('AComments','installed','1.1',0,1,0,0),
  ('Gallery','installed','1.4.4',0,1,0,0),
  ('CMSForms','installed','0.1.2',0,1,0,0),
  ('CMSUsers','installed','1.0.0',0,1,0,0),
  ('JavaScript','installed','1.0.2',0,1,0,0);

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
  (58,'Manage CMSUsers','Manage CMSUsers','2011-11-12 06:52:57','2011-11-12 06:52:57');

COMMIT;

#
# Data for the `cms_permissions_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_permissions_seq` (`id`) VALUES 
  (58);

COMMIT;

#
# Data for the `cms_siteprefs` table  (LIMIT 0,500)
#

INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES 
  ('enablesitedownmessage','0','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('sitedownmessage','<p>Site is currently down for maintenance.</p>','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('sitedownmessagetemplate','-1','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('useadvancedcss','1','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('metadata','<meta name=\"Generator\" content=\"SimpleCMS\" />\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n ','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('thumbnail_width','96',NULL,NULL),
  ('xmlmodulerepository','','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('logintheme','NCleanGrey','2006-07-25 21:22:33','2006-07-25 21:22:33'),
  ('global_umask','022',NULL,NULL),
  ('frontendlang','en_US',NULL,NULL),
  ('frontendwysiwyg','-1',NULL,NULL),
  ('nogcbwysiwyg','0',NULL,NULL),
  ('urlcheckversion','',NULL,NULL),
  ('defaultdateformat','',NULL,NULL),
  ('css_max_age','0',NULL,NULL),
  ('disablesafemodewarning','0',NULL,NULL),
  ('allowparamcheckwarnings','0',NULL,NULL),
  ('enablenotifications','1',NULL,NULL),
  ('page_active','1',NULL,NULL),
  ('page_showinmenu','1',NULL,NULL),
  ('page_cachable','1',NULL,NULL),
  ('page_metadata','{* Add code here that should appear in the metadata section of all new pages *}',NULL,NULL),
  ('defaultpagecontent','<!-- Add code here that should appear in the content block of all new pages -->',NULL,NULL),
  ('default_parent_page','-1',NULL,NULL),
  ('additional_editors','',NULL,NULL),
  ('page_searchable','1',NULL,NULL),
  ('page_extra1','',NULL,NULL),
  ('page_extra2','',NULL,NULL),
  ('page_extra3','',NULL,NULL),
  ('sitedownexcludes','',NULL,NULL),
  ('clear_vc_cache','0',NULL,NULL),
  ('sitename','',NULL,NULL),
  ('sitemask','uTsvABNjn#D6*Z5P',NULL,NULL),
  ('CMSMailer_mapi_pref_mailer','smtp',NULL,NULL),
  ('CMSMailer_mapi_pref_host','localhost',NULL,NULL),
  ('CMSMailer_mapi_pref_port','25',NULL,NULL),
  ('CMSMailer_mapi_pref_from','root@localhost',NULL,NULL),
  ('CMSMailer_mapi_pref_fromuser','CMS Administrator',NULL,NULL),
  ('CMSMailer_mapi_pref_sendmail','/usr/sbin/sendmail',NULL,NULL),
  ('CMSMailer_mapi_pref_timeout','1000',NULL,NULL),
  ('CMSMailer_mapi_pref_smtpauth','0',NULL,NULL),
  ('CMSMailer_mapi_pref_username','',NULL,NULL),
  ('CMSMailer_mapi_pref_password','',NULL,NULL),
  ('CMSMailer_mapi_pref_secure','',NULL,NULL),
  ('CMSPrinting_mapi_pref_overridestyle','/*\nYou can put css stuff here, which will be inserted in the header after calling the cmsms-stylesheets.\nProvided you don''t remove the {$overridestylesheet} in PrintTemplate, of course.\n\nAny suggestions for default content in this stylesheet?\n\nHave fun!\n*/',NULL,NULL),
  ('FileManager_mapi_pref_iconsize','32px',NULL,NULL),
  ('FileManager_mapi_pref_uploadboxes','5',NULL,NULL),
  ('FileManager_mapi_pref_advancedmode','false',NULL,NULL),
  ('FileManager_mapi_pref_showhiddenfiles','false',NULL,NULL),
  ('ModuleManager_mapi_pref_module_repository','http://www.cmsmadesimple.org/ModuleRepository/request/v2/',NULL,NULL),
  ('News_mapi_pref_default_summary_template_contents','<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class=\"firstnewscat\"{/if}>\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you''re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don''t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n\t<div class=\"NewsSummaryPostdate\">\n\t\t{$entry->postdate|cms_date_format}\n\t</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n\t{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n\t<div class=\"NewsSummaryAuthor\">\n\t\t{$author_label} {$entry->author}\n\t</div>\n{/if}\n\n{if $entry->summary}\n\t<div class=\"NewsSummarySummary\">\n\t\t{eval var=$entry->summary}\n\t</div>\n\n\t<div class=\"NewsSummaryMorelink\">\n\t\t[{$entry->morelink}]\n\t</div>\n\n{else if $entry->content}\n\n\t<div class=\"NewsSummaryContent\">\n\t\t{eval var=$entry->content}\n\t</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {eval var=$entry->extra}\n\t{* {cms_module module=''Uploads'' mode=''simpleurl'' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == ''file''}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n',NULL,NULL),
  ('News_mapi_pref_current_summary_template','Sample',NULL,NULL),
  ('News_mapi_pref_default_detail_template_contents','{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the ''object'' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as ''simple'' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=''foo'' value=$entry->membername}.\n\n     The following members are available in the entry array:\n   \n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The \"extra\" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either ''draft'' or ''published'' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the ''fields'' member\n     fieldsbyname           = (deprecated) - A synonym for the ''fields'' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n     \n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {assign var=''canonical'' value=$entry->canonical}\n{/if}\n\n{if $entry->postdate}\n\t<div id=\"NewsPostDetailDate\">\n\t\t{$entry->postdate|cms_date_format}\n\t</div>\n{/if}\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id=\"NewsPostDetailHorizRule\" />\n\n{if $entry->summary}\n\t<div id=\"NewsPostDetailSummary\">\n\t\t<strong>\n\t\t\t{eval var=$entry->summary}\n\t\t</strong>\n\t</div>\n{/if}\n\n{if $entry->category}\n\t<div id=\"NewsPostDetailCategory\">\n\t\t{$category_label} {$entry->category}\n\t</div>\n{/if}\n{if $entry->author}\n\t<div id=\"NewsPostDetailAuthor\">\n\t\t{$author_label} {$entry->author}\n\t</div>\n{/if}\n\n<div id=\"NewsPostDetailContent\">\n\t{eval var=$entry->content}\n</div>\n\n{if $entry->extra}\n\t<div id=\"NewsPostDetailExtra\">\n\t\t{$extra_label} {$entry->extra}\n\t</div>\n{/if}\n\n{if $return_url != \"\"}\n<div id=\"NewsPostDetailReturnLink\">{$return_url}{if $category_name != ''''} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=''field''}\n     <div class=\"NewsDetailField\">\n        {if $field->type == ''file''}\n\t  {* this template assumes that every file uploaded is an image of some sort, because News doesn''t distinguish *}\n          <img src=\"{$entry->file_location}/{$field->value}\"/>\n        {else}\n          {$field->name}:&nbsp;{eval var=$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n',NULL,NULL),
  ('News_mapi_pref_current_detail_template','Sample',NULL,NULL),
  ('News_mapi_pref_default_form_template_contents','{* original form template *}\n{if isset($error)}\n  <h3><font color=\"red\">{$error}</font></h3>\n{else}\n  {if isset($message)}\n    <h3>{$message}</h3>\n  {/if}\n{/if}\n{$startform}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">*{$titletext}:</p>\n\t\t<p class=\"pageinput\">{$inputtitle}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$categorytext}:</p>\n\t\t<p class=\"pageinput\">{$inputcategory}</p>\n\t</div>\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$summarytext}:</p>\n\t\t<p class=\"pageinput\">{$inputsummary}</p>\n\t</div>\n{/if}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">*{$contenttext}:</p>\n\t\t<p class=\"pageinput\">{$inputcontent}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$extratext}:</p>\n\t\t<p class=\"pageinput\">{$inputextra}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$startdatetext}:</p>\n\t\t<p class=\"pageinput\">{html_select_date prefix=$startdateprefix time=$startdate end_year=\"+15\"} {html_select_time prefix=$startdateprefix time=$startdate}</p>\n\t</div>\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$enddatetext}:</p>\n\t\t<p class=\"pageinput\">{html_select_date prefix=$enddateprefix time=$enddate end_year=\"+15\"} {html_select_time prefix=$enddateprefix time=$enddate}</p>\n\t</div>\n\t{if isset($customfields)}\n\t   {foreach from=$customfields item=''onefield''}\n\t      <div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">{$onefield->name}:</p>\n\t\t<p class=\"pageinput\">{$onefield->field}</p>\n\t      </div>\n\t   {/foreach}\n\t{/if}\n\t<div class=\"pageoverflow\">\n\t\t<p class=\"pagetext\">&nbsp;</p>\n\t\t<p class=\"pageinput\">{$hidden}{$submit}{$cancel}</p>\n\t</div>\n{$endform}\n',NULL,NULL),
  ('News_mapi_pref_current_form_template','Sample',NULL,NULL),
  ('News_mapi_pref_default_browsecat_template_contents','{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n\t<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}',NULL,NULL),
  ('News_mapi_pref_current_browsecat_template','Sample',NULL,NULL),
  ('News_mapi_pref_email_subject','A new News article has been posted',NULL,NULL),
  ('News_mapi_pref_allowed_upload_types','gif,png,jpeg,jpg',NULL,NULL),
  ('News_mapi_pref_auto_create_thumbnails','gif,png,jpeg,jpg',NULL,NULL),
  ('Search_mapi_pref_stopwords','i, me, my, myself, we, our, ours, ourselves, you, your, yours, \nyourself, yourselves, he, him, his, himself, she, her, hers, \nherself, it, its, itself, they, them, their, theirs, themselves, \nwhat, which, who, whom, this, that, these, those, am, is, are, \nwas, were, be, been, being, have, has, had, having, do, does, \ndid, doing, a, an, the, and, but, if, or, because, as, until, \nwhile, of, at, by, for, with, about, against, between, into, \nthrough, during, before, after, above, below, to, from, up, down, \nin, out, on, off, over, under, again, further, then, once, here, \nthere, when, where, why, how, all, any, both, each, few, more, \nmost, other, some, such, no, nor, not, only, own, same, so, \nthan, too, very',NULL,NULL),
  ('Search_mapi_pref_usestemming','false',NULL,NULL),
  ('Search_mapi_pref_searchtext','Enter Search...',NULL,NULL),
  ('PruneAdminlog_lastexecute','1321169171',NULL,NULL),
  ('pseudocron_lastrun','1321169171',NULL,NULL),
  ('thumbnail_height','96',NULL,NULL),
  ('searchmodule','Search',NULL,NULL),
  ('listcontent_showalias','1',NULL,NULL),
  ('listcontent_showurl','1',NULL,NULL),
  ('listcontent_showtitle','1',NULL,NULL),
  ('AComments_mapi_pref_moderate','',NULL,NULL),
  ('AComments_mapi_pref_spamprotect','',NULL,NULL),
  ('AComments_mapi_pref_disable_html','1',NULL,NULL),
  ('AComments_mapi_pref_akismet_check','0',NULL,NULL),
  ('AComments_mapi_pref_enable_trackbacks','0',NULL,NULL),
  ('AComments_mapi_pref_enable_trackback_backlink_check','0',NULL,NULL),
  ('AComments_mapi_pref_enable_cookie_support','0',NULL,NULL),
  ('Gallery_mapi_pref_default_template_contents','<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n\t<div class=\"img\">\r\n\t{if $image->isdir}\r\n\t\t<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a><br />\r\n\t\t{$image->titlename}\r\n\t{else}\r\n   <a class=\"group\" href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->titlename}\" rel=\"gallery-{$galleryid}\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->titlename}\" /></a>\r\n\t{/if}\r\n\t</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n{*----------.gallery .img {\r\n\theight: 120px;\r\n\t/*width: 120px;   Adjust as you see fit */\r\n\tfloat: left;\r\n\tmargin: 10px;\r\n\ttext-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n\tdisplay: inline-block;\r\n\tborder: 2px solid #ddd;\r\n\tpadding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n\tborder-color: #999;\r\n}\r\n\r\n.gallery img {\r\n\tborder: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n\theight: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/previous.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\tmargin: 0 6px 0 0;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/next.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n\tdisplay: block;\r\n\twidth: 50px;\r\n\theight: 39px;\r\n\tfloat: left;\r\n\ttext-indent: -1000px;\r\n\tbackground: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n\toverflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n\tbackground-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n\tbackground-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n\tfloat: right;\r\n\tborder-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n\tmargin-top: 6px;\r\n\tpadding: 0 6px;\r\n\tborder-left: 2px solid #666;\r\n\ttext-align: center;\r\n\tfont: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n\tcolor: #000;\r\n}\r\n\r\n.galleryclear {\r\n\tclear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n\tposition: fixed;\r\n\ttop: 50%;\r\n\tleft: 50%;\r\n\twidth: 40px;\r\n\theight: 40px;\r\n\tmargin-top: -20px;\r\n\tmargin-left: -20px;\r\n\tcursor: pointer;\r\n\toverflow: hidden;\r\n\tz-index: 1104;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 40px;\r\n\theight: 480px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n}\r\n\r\n#fancybox-overlay {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tz-index: 1100;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\toverflow: auto;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\tpadding: 20px;\r\n\tz-index: 1101;\r\n\toutline: none;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-outer {\r\n\tposition: relative;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: #000;\r\n}\r\n\r\n#fancybox-content {\r\n\twidth: 0;\r\n\theight: 0;\r\n\tpadding: 0;\r\n\toutline: none;\r\n\tposition: relative;\r\n\toverflow: hidden;\r\n\tz-index: 1102;\r\n\tborder: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n\tposition: absolute;\r\n\ttop: 0;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tbackground: transparent;\r\n\tz-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n\tposition: absolute;\r\n\ttop: -15px;\r\n\tright: -15px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tbackground: transparent url(''../fancybox/fancybox.png'') -40px 0px;\r\n\tcursor: pointer;\r\n\tz-index: 1103;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-error {\r\n\tcolor: #444;\r\n\tfont: normal 12px/20px Arial;\r\n\tpadding: 14px;\r\n\tmargin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: none;\r\n\toutline: none;\r\n\tline-height: 0;\r\n\tvertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n\twidth: 100%;\r\n\theight: 100%;\r\n\tborder: none;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n\tposition: absolute;\r\n\tbottom: 0px;\r\n\theight: 100%;\r\n\twidth: 35%;\r\n\tcursor: pointer;\r\n\toutline: none;\r\n\tbackground: transparent url(''../fancybox/blank.gif'');\r\n\tz-index: 1102;\r\n\tdisplay: none;\r\n}\r\n\r\n#fancybox-left {\r\n\tleft: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n\tright: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n\tposition: absolute;\r\n\ttop: 50%;\r\n\tleft: -9999px;\r\n\twidth: 30px;\r\n\theight: 30px;\r\n\tmargin-top: -15px;\r\n\tcursor: pointer;\r\n\tz-index: 1102;\r\n\tdisplay: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n\tvisibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n\tleft: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n\tleft: auto;\r\n\tright: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n\tposition: absolute;\r\n\tpadding: 0;\r\n\tmargin: 0;\r\n\tborder: 0;\r\n\twidth: 20px;\r\n\theight: 20px;\r\n\tz-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n\ttop: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n\ttop: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n\ttop: 0;\r\n\tright: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n\tbackground-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n\tbottom: -20px;\r\n\tright: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n\tbottom: -20px;\r\n\tleft: 0;\r\n\twidth: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-x.png'');\r\n\tbackground-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n\tbottom: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n\ttop: 0;\r\n\tleft: -20px;\r\n\theight: 100%;\r\n\tbackground-image: url(''../fancybox/fancybox-y.png'');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n\ttop: -20px;\r\n\tleft: -20px;\r\n\tbackground-image: url(''../fancybox/fancybox.png'');\r\n\tbackground-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n\tfont-family: Helvetica;\r\n\tfont-size: 12px;\r\n\tz-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n\tpadding-bottom: 10px;\r\n\ttext-align: center;\r\n\tcolor: #333;\r\n\tbackground: #fff;\r\n\tposition: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n\tpadding-top: 10px;\r\n\tcolor: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n\tposition: absolute;\r\n\tbottom: 0;\r\n\tleft: 0;\r\n\tcolor: #FFF;\r\n\ttext-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n\tpadding: 10px;\r\n\tbackground-image: url(''../fancybox/fancy_title_over.png'');\r\n\tdisplay: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n\tposition: absolute;\r\n\tleft: 0;\r\n\tbottom: -20px;\r\n\theight: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n\tborder: none;\r\n\tborder-collapse: collapse;\r\n\twidth: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n\tborder: none;\r\n\twhite-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n\tcolor: #FFF;\r\n\tline-height: 29px;\r\n\tfont-weight: bold;\r\n\tpadding: 0 0 3px 0;\r\n\tbackground: url(''../fancybox/fancybox-x.png'') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n\tpadding: 0 0 0 15px;\r\n\tbackground: url(''../fancybox/fancybox.png'') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }\r\n{*----------<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/fancybox/jquery.fancybox.pack.js\"></script>\r\n<script type=\"text/javascript\" src=\"modules/Gallery/templates/jquery/jquery.mousewheel.pack.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n\t$(\"a.group\").fancybox({\r\n\t\t''speedIn'':\t\t300,\r\n\t\t''speedOut'':\t300,\r\n\t\t''overlayColor'':\t''#000'',\r\n\t\t''overlayOpacity'':\t0.7\r\n\t});\r\n});\r\n</script>\r\n*}',NULL,NULL),
  ('Gallery_mapi_pref_current_template','Fancybox',NULL,NULL),
  ('Gallery_mapi_pref_singleimg_template','Fancybox',NULL,NULL),
  ('Gallery_mapi_pref_singleimg_template_html','<a class=\"group\" href=\"{$image->file|escape:''url''|replace:''%2F'':''/''}\" title=\"{$image->title}\" rel=\"gallery\"><img src=\"{$image->thumb|escape:''url''|replace:''%2F'':''/''}\" alt=\"{$image->title}\" /></a>',NULL,NULL),
  ('Gallery_mapi_pref_urlprefix','gallery',NULL,NULL),
  ('Gallery_mapi_pref_allowed_extensions','jpg,jpeg,gif,png',NULL,NULL),
  ('Gallery_mapi_pref_maximagewidth','1024',NULL,NULL),
  ('Gallery_mapi_pref_maximageheight','768',NULL,NULL),
  ('Gallery_mapi_pref_use_comment_wysiwyg','0',NULL,NULL),
  ('Gallery_mapi_pref_editdirdates','0',NULL,NULL),
  ('Gallery_mapi_pref_editfiledates','0',NULL,NULL),
  ('Gallery_mapi_pref_fe_folderpath','modules/Gallery/images/folder.png',NULL,NULL),
  ('Gallery_mapi_pref_be_folderpath','modules/Gallery/images/foldersmall.png',NULL,NULL),
  ('__NOTIFICATIONS__','a:1:{i:0;O:8:\"stdClass\":4:{s:8:\"priority\";i:1;s:4:\"html\";s:403:\"Your mail settings have not been configured.  This could interfere with the ability of your website to send email messages.  You should go to <a href=\"moduleinterface.php?_sx_=3b2f7597&amp;module=CMSMailer\">Extensions >> CMSMailer</a> and configure the mail settings with the information provided by your host.&nbsp;This test is generated on an infrequent basis.  It may take some time for it to go away\";s:4:\"name\";s:9:\"CMSMailer\";s:12:\"friendlyname\";s:9:\"CMSMailer\";}}',NULL,NULL),
  ('__listcontent_timelock__','1320323585',NULL,NULL),
  ('CMSUsers_mapi_pref_password_reset_email_subject','Reset password request for %s',NULL,NULL),
  ('CMSUsers_mapi_pref_validation_email_subject','Please verify your account %s',NULL,NULL),
  ('CMSUsers_mapi_pref_signup_email_subject','Account details for %s',NULL,NULL),
  ('MicroTiny_mapi_pref_show_statusbar','1',NULL,NULL),
  ('MicroTiny_mapi_pref_allow_resize','1',NULL,NULL),
  ('MicroTiny_mapi_pref_allowimages','1',NULL,NULL),
  ('MicroTiny_mapi_pref_css_styles','',NULL,NULL);

COMMIT;

#
# Data for the `cms_templates` table  (LIMIT 0,500)
#

INSERT INTO `cms_templates` (`template_id`, `template_name`, `template_content`, `stylesheet`, `encoding`, `active`, `default_template`, `create_date`, `modified_date`) VALUES 
  (19,'Minimal template','{process_pagedata}\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n<head>\r\n\r\n<title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n      {* Start Navigation *}\r\n      <div style=\"float: left; width: 25%;\">\r\n         {menu loadprops=0 template=''minimal_menu.tpl''}\r\n      </div>\r\n      {* End Navigation *}\r\n\r\n      {* Start Content *}\r\n      <div>\r\n         <h2>{title}</h2>\r\n         {content} \r\n      </div>\r\n      {* End Content *}\r\n\r\n</body>\r\n</html>',NULL,NULL,1,0,'2006-07-25 21:22:33','2011-11-12 02:39:26'),
  (15,'CSSMenu left + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\n\n    <!--[if lte IE 6]>\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* anything class=\"accessibility\" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Left sidebar + 1 column\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Navigation, stylesheet  \"Navigation: CSSMenu - Vertical\" *}\n            <h2 class=\"accessibility\">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu.tpl''}\n            <hr class=\"accessibility\" />\n{* End Navigation *}\n\n{* Start News, stylesheet  \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class=\"back1\">\n          <div class=\"back2\">\n            <div class=\"back3\">\n              <div id=\"main\">\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class=\"accessibility\" />\n                <div class=\"clear\">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>','','',1,0,'2006-07-25 21:22:33','2011-11-12 02:39:26'),
  (16,'CSSMenu top + 2 columns','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir=\"start\" rellink=1}\r\n {cms_selflink dir=\"prev\" rellink=1}\r\n {cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type=\"text/JavaScript\">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw=\"auto\",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type=\"text/css\">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n  </head>\r\n  <body>\r\n    <div id=\"pagewrapper\">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class=\"accessibility\">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Top menu + 2 columns\" *}\r\n      <div id=\"header\">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class=\"headright\">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation *}\r\n      <div id=\"menu_vert\">\r\n{* stylesheet  \"Navigation: CSSMenu - Horizontal\" *}\r\n        <h2 class=\"accessibility\">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu.tpl''}\r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\r\n      <div id=\"search\">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class=\"crbk\">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class=\"breadcrumbs\">\r\n<img src=''uploads/lastevent.png''>\r\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n          <hr class=\"accessibility\" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id=\"content\">\r\n\r\n{* Start Sidebar *}\r\n        <div id=\"sidebar\">\r\n          <div id=\"sidebarb\">\r\n          {content block=''Sidebar''}\r\n\r\n{* Start News, stylesheet  \"Module: News\" *}\r\n            <div id=\"news\">\r\n              <h2>News</h2>\r\n              {news number=''3'' detailpage=''news''}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class=\"back1\">\r\n          <div class=\"back2\">\r\n            <div class=\"back3\">\r\n              <div id=\"main\">\r\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class=\"right49\">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n            <div class=\"left49\">\r\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\r\n\r\n              <br />\r\n              {cms_selflink dir=\"next\"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class=\"accessibility\" />\r\n                <div class=\"clear\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\r\n      <div class=\"footback\">\r\n        <div id=\"footer\">\r\n{* stylesheet  \"Navigation: FatFootMenu\" *}\r\n          <div id=\"fooleft\">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id=\"footrt\">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class=\"clear\"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>','','',1,1,'2006-07-25 21:22:33','2011-11-12 04:14:59'),
  (17,'Left simple navigation + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Left sidebar + 1 column\" *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* anything with class=\"accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Left sidebar + 1 column\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1> \n       \n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Navigation, stylesheet  \"Navigation: Simple - Vertical\" *}\n            <div id=\"menu_vert\">\n              <h2 class=\"accessibility\">Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' collapse=''1''}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class=\"back\">        \n          <div id=\"main\">\n            <div style=\"float: right;\">{print showbutton=true script=true}</div>\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class=\"accessibility\" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class=\"clear\"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>','','',1,0,'2006-07-25 21:22:33','2011-11-12 02:39:26'),
  (18,'Top simple navigation + left subnavigation + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Top menu + 2 columns\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>\n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id=\"menu_horiz\">\n{* stylesheet  \"Navigation: Simple - Horizontal\" *}\n        <h2 class=\"accessibility\">Navigation</h2>\n        {menu loadprops=0 template=''simple_navigation.tpl'' number_of_levels=''1''}\n        <hr class=\"accessibility\" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Sub Navigation, stylesheet  \"Navigation: Simple - Vertical\" *}\n            <div id=\"menu_vert\">\n              <h2 class=\"accessibility\">Sub Navigation</h2>\n              {menu loadprops=0 template=''simple_navigation.tpl'' start_level=''2'' collapse=''1''}\n                <hr class=\"accessibility\" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class=\"back1\">\n          <div class=\"back2\">\n            <div class=\"back3\">\n              <div id=\"main\">\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class=\"accessibility\" />\n                <div class=\"clear\"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>','','',1,0,'2006-07-25 21:22:33','2011-11-12 04:14:59'),
  (20,'ShadowMenu Tab + 2 columns','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir=\"start\" rellink=1}\r\n {cms_selflink dir=\"prev\" rellink=1}\r\n {cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type=\"text/JavaScript\">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw=\"auto\",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type=\"text/css\">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\r\n\r\n    <!--[if lte IE 6]>\r\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n    <![endif]--> \r\n{* The above JavaScript is required for CSSMenu to work in IE *}\r\n\r\n  </head>\r\n  <body>\r\n    <div id=\"pagewrapper\">\r\n\r\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\r\n      <ul class=\"accessibility\">\r\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n      </ul>\r\n{* end accessibility skip links *}\r\n\r\n      <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Top menu + 2 columns\" *}\r\n      <div id=\"header\">\r\n\r\n{* this holds the name of the site on the right side *}\r\n        <h2 class=\"headright\">{sitename}</h2>\r\n\r\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\r\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Header *}\r\n\r\n{* Start Navigation, stylesheet \"Navigation: ShadowMenu - Horizontal\" *}\r\n      <div id=\"menu_vert\">\r\n        <h2 class=\"accessibility\">Navigation</h2>\r\n        {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n        <hr class=\"accessibility\" />\r\n      </div>\r\n{* End Navigation *}\r\n\r\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\r\n      <div id=\"search\">\r\n      {search}\r\n      </div>\r\n{* End Search *}\r\n\r\n{* Start Breadcrumbs *}\r\n      <div class=\"crbk\">\r\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\r\n\r\n        <div class=\"breadcrumbs\">\r\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n          <hr class=\"accessibility\" />\r\n        </div>\r\n      </div>\r\n{* End Breadcrumbs *}\r\n\r\n{* Start Content *}\r\n      <div id=\"content\">\r\n\r\n{* Start Sidebar *}\r\n        <div id=\"sidebar\">\r\n          <div id=\"sidebarb\">\r\n          {content block=''Sidebar''}\r\n\r\n{* Start News, stylesheet  \"Module: News\" *}\r\n            <div id=\"news\">\r\n              <h2>News</h2>\r\n              {news number=''3'' detailpage=''news''}\r\n            </div>\r\n{* End News *}\r\n\r\n          </div>\r\n        </div>\r\n{* End Sidebar *}\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class=\"back1\">\r\n          <div class=\"back2\">\r\n            <div class=\"back3\">\r\n              <div id=\"main\">\r\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\r\n                <h2>{title}</h2>\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n{* Start relational links *}\r\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\r\n            <div class=\"right49\">\r\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\r\n            </div>\r\n            <div class=\"left49\">\r\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\r\n\r\n              <br />\r\n              {cms_selflink dir=\"next\"}\r\n              </p>\r\n            </div>\r\n{* End relational links *}\r\n\r\n                <hr class=\"accessibility\" />\r\n                <div class=\"clear\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\r\n      <div class=\"footback\">\r\n        <div id=\"footer\">\r\n{* stylesheet  \"Navigation: FatFootMenu\" *}\r\n          <div id=\"fooleft\">\r\n          {menu loadprops=0}\r\n          </div>\r\n          <div id=\"footrt\">\r\n          {global_content name=''footer''}\r\n          </div>\r\n          <div class=\"clear\"></div>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>','','',1,0,'2009-05-01 04:30:42','2011-11-12 04:14:59'),
  (21,'ShadowMenu left + 1 column','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n{* Change lang=\"en\" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir=\"start\" rellink=1}\n {cms_selflink dir=\"prev\" rellink=1}\n {cms_selflink dir=\"next\" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\n {literal}\n<script type=\"text/JavaScript\">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw=\"auto\",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type=\"text/css\">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it''s in the stylesheet \"Layout: Top menu + 2 columns\" *}\n\n    <!--[if lte IE 6]>\n    <script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id=\"pagewrapper\">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class=\"accessibility\">\n        <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\n        <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class=\"accessibility\" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  \"Layout: Left sidebar + 1 column\" *}\n      <div id=\"header\">\n\n{* this holds the name of the site on the right side *}\n        <h2 class=\"headright\">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir=\"start\" text=\"$sitename\"}</h1>        \n        <hr class=\"accessibility\" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input \"Submit\" is using an image, CSS: input.search-button *}\n      <div id=\"search\">\n      {search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class=\"crbk\">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class=\"breadcrumbs\">\n        {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\n          <hr class=\"accessibility\" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id=\"content\">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id=\"sidebar\">\n          <div id=\"sidebara\">\n\n{* Start Navigation, stylesheet  \"Navigation: ShadowMenu - Vertical\" *}\n            <h2 class=\"accessibility\">Navigation</h2>\n            {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\n            <hr class=\"accessibility\" />\n\n{* Start News, stylesheet  \"Module: News\" *}\n            <div id=\"news\">\n              <h2>News</h2>\n              {news number=''3'' detailpage=''news''}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class=\"back1\">\n          <div class=\"back2\">\n            <div class=\"back3\">\n              <div id=\"main\">\n                <div style=\"float: right;\">{print showbutton=true script=true}</div>\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class=\"right49\">\n              <p>{anchor anchor=''main'' text=''^ Top''}</p>\n            </div>\n            <div class=\"left49\">\n              <p> {cms_selflink dir=\"previous\" label=\"Previous page: \"}\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\n\n              <br />\n              {cms_selflink dir=\"next\"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class=\"accessibility\" />\n                <div class=\"clear\"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called \"footer\" *}\n      <div class=\"footback\">\n        <div id=\"footer\">\n{* stylesheet  \"Navigation: FatFootMenu\" *}\n          <div id=\"fooleft\">\n          {menu loadprops=0}\n          </div>\n          <div id=\"footrt\">\n          {global_content name=''footer''}\n          </div>\n          <div class=\"clear\"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>','','',1,0,'2009-05-01 23:17:51','2011-11-12 02:39:26'),
  (22,'NCleanBlue','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\r\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n  <head>\r\n{if isset($canonical)}<link rel=\"canonical\" href=\"{$canonical}\" />{elseif isset($content_obj)}<link rel=\"canonical\" href=\"{$content_obj->GetURL()}\" />{/if}\r\n\r\n<title>{title} | {sitename}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n{metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n{cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to *}\r\n\r\n{cms_selflink dir=\"start\" rellink=1}\r\n{cms_selflink dir=\"prev\" rellink=1}\r\n{cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\" src=\"modules/MenuManager/CSSMenu.js\"></script>\r\n<![endif]-->\r\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n{* IE6 png fix *}\r\n{literal}\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\"  src=\"uploads/NCleanBlue/js/ie6fix.js\"></script>\r\n<script type=\"text/javascript\">\r\n // argument is a CSS selector\r\n DD_belatedPNG.fix(''.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version'');\r\n</script>\r\n<style type=\"text/css\">\r\n/* enable background image caching in IE6 */\r\nhtml {filter:expression(document.execCommand(\"BackgroundImageCache\", false, true));} \r\n</style>\r\n<![endif]-->\r\n{/literal}\r\n\r\n  </head>\r\n  <body>\r\n    <div id=\"ncleanblue\">\r\n      <div id=\"pagewrapper\" class=\"core-wrap-960 core-center\">\r\n{* start accessibility skip links *}\r\n        <ul class=\"accessibility\">\r\n          <li>{anchor anchor=''menu_vert'' title=''Skip to navigation'' accesskey=''n'' text=''Skip to navigation''}</li>\r\n          <li>{anchor anchor=''main'' title=''Skip to content'' accesskey=''s'' text=''Skip to content''}</li>\r\n        </ul>\r\n{* end accessibility skip links *}\r\n        <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Header, with logo image that links to the default start page *}\r\n        <div id=\"header\" class=\"util-clearfix\">\r\n{* logo image that links to the default start page. Logo image is changed in the style sheet  \"Layout: NCleanBlue\" *}\r\n          <div id=\"logo\" class=\"core-float-left\">\r\n            {cms_selflink dir=\"start\" text=\"$sitename\"}\r\n          </div>\r\n          \r\n{* Start Search, the input \"Submit\" is using an image, CSS: div#search input.search-button *}\r\n          <div id=\"search\" class=\"core-float-right\">\r\n            {search search_method=\"post\"}\r\n          </div>\r\n{* End Search *}\r\n          <span class=\"util-clearb\">&nbsp;</span>\r\n          \r\n{* Start Navigation, style sheet  \"Layout: NCleanBlue\", starting at Menu  ROOT *}\r\n          <h2 class=\"accessibility util-clearb\">Navigation</h2>\r\n{* anything class=\"accessibility\" is hidden for visual browsers by CSS *}\r\n          <div class=\"page-menu util-clearfix\">\r\n          {menu loadprops=0 template=''cssmenu_ulshadow.tpl''}\r\n          </div>\r\n          <hr class=\"accessibility util-clearb\" />\r\n{* End Navigation *}\r\n\r\n        </div>\r\n{* End Header *}\r\n\r\n{* Start Content (Navigation and Content columns) *}\r\n        <div id=\"content\" class=\"util-clearfix\"> \r\n\r\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\r\n          {*<div title=\"CMS - {cms_version} - {cms_versionname}\" id=\"version\">\r\n          {capture assign=''cms_version''}{cms_version|lower}{/capture}{\"/-([a-z]).*/\"|preg_replace:\"\":$cms_version}\r\n          </div>*}\r\n{* End Optional tag  *}\r\n\r\n{* Start Bar *}\r\n          <div id=\"bar\" class=\"util-clearfix\">\r\n{* Start Breadcrumbs, a bit of letting you know where your at *}\r\n            <div class=\"breadcrumbs core-float-right\">\r\n              {breadcrumbs starttext=''You are here'' root=''Home'' delimiter=''&raquo;''}\r\n            </div>\r\n{* End Breadcrumbs *}\r\n\r\n            <hr class=\"accessibility util-clearb\" />\r\n          </div>\r\n{* End Bar *}\r\n\r\n{* Start left side *}\r\n          <div id=\"left\" class=\"core-float-left\">\r\n            <div class=\"sbar-top\">\r\n              <h2 class=\"sbar-title\">News</h2>\r\n            </div>\r\n            <div class=\"sbar-main\">\r\n{* Start News *}\r\n              <div id=\"news\">\r\n              {news number=''3'' detailpage=''news''}\r\n              </div>\r\n              <img class=\"screen\" src=\"uploads/NCleanBlue/screen-1.6.jpg\" width=\"139\" height=\"142\" title=\"CMS - {cms_version} - {cms_versionname}\" alt=\"CMS - {cms_version} - {cms_versionname}\" />\r\n{* End News *} \r\n            </div>\r\n            <span class=\"sbar-bottom\">&nbsp;</span> \r\n          </div>\r\n{* End left side *}\r\n\r\n{* Start Content Area, right side *}\r\n          <div id=\"main\"  class=\"core-float-right\">\r\n\r\n{* main top, holds top image and print image *}\r\n            <div class=\"main-top\">\r\n              <div class=\"print core-float-right\">\r\n                {print showbutton=true}\r\n              </div>\r\n            </div> \r\n            \r\n{* main content *}\r\n            <div class=\"main-main util-clearfix\">\r\n              <h1 class=\"title\">{title}</h1>\r\n            {content}\r\n            </div>\r\n            \r\n{* Start main bottom and relational links *}\r\n            <div class=\"main-bottom\">\r\n              <div class=\"right49 core-float-right\">\r\n              {anchor anchor=''main'' text=''^&nbsp;&nbsp;Top''}\r\n              </div>\r\n              <div class=\"left49 core-float-left\">\r\n                <span>\r\n                  {cms_selflink dir=\"previous\" label=\"Previous page: \"}&nbsp;\r\n{* The label parameter doesn''t need to be there if you''re using English, but is here to show how it''s used if you don''t want the English text \"Previous page\" *}\r\n                </span>\r\n                <span>\r\n                  {cms_selflink dir=\"next\"}&nbsp;\r\n                </span>\r\n              </div>\r\n{* End relational links *}\r\n\r\n              <hr class=\"accessibility\" />\r\n            </div>\r\n{* End main bottom *}\r\n\r\n          </div>\r\n{* End Content Area, right side *}\r\n\r\n        </div>\r\n{* End Content *}\r\n\r\n      </div>\r\n{* end pagewrapper *}\r\n      <span class=\"util-clearb\">&nbsp;</span>\r\n      \r\n{* Start Footer *}\r\n      <div id=\"footer-wrapper\">\r\n        <div id=\"footer\" class=\"core-wrap-960\">\r\n{* first foot menu *}\r\n          <div class=\"block core-float-left\">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  number_of_levels=''1''}\r\n          </div>\r\n          \r\n{* second foot menu if active page has children *}\r\n          <div class=\"block core-float-left\">\r\n            {menu loadprops=0 template=''minimal_menu.tpl''  start_level=\"2\"}\r\n          </div>\r\n          \r\n{* edit the footer in the Global Content Block called \"footer\" *}\r\n          <div class=\"block cms core-float-left\">\r\n            {global_content name=''footer''}\r\n          </div>\r\n          \r\n          <span class=\"util-clearb\">&nbsp;</span>\r\n        </div>\r\n      </div>\r\n{* End Footer *}\r\n    </div>\r\n{* End Div *}\r\n  </body>\r\n</html>','','',1,0,'2009-05-06 14:20:10','2011-11-12 02:39:26'),
  (23,'PopupPage','{process_pagedata}<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\r\n{* Change lang=\"en\" to the language of your site *}\r\n\r\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\r\n\r\n  <head>\r\n    <title>{sitename} - {title}</title>\r\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\r\n\r\n {metadata}\r\n{* Don''t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n\r\n {cms_stylesheet}\r\n{* This is how all the stylesheets attached to this template are linked to it *}\r\n\r\n {cms_selflink dir=\"start\" rellink=1}\r\n {cms_selflink dir=\"prev\" rellink=1}\r\n {cms_selflink dir=\"next\" rellink=1}\r\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\r\n\r\n{* the literal below and the /literal at the end are needed whenever there are {\"curly brackets\"} as smarty will think it''s something to process and will throw an error *}\r\n {literal}\r\n<script type=\"text/JavaScript\">\r\n<!--\r\n//pass min and max - measured against window width\r\nfunction P7_MinMaxW(a,b){\r\nvar nw=\"auto\",w=document.documentElement.clientWidth;\r\nif(w>=b){nw=b+\"px\";}if(w<=a){nw=a+\"px\";}return nw;\r\n}\r\n//-->\r\n</script>\r\n    <!--[if lte IE 6]>\r\n    <style type=\"text/css\">\r\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\r\n    #container {height: 1%;}\r\n    </style>\r\n    <![endif]-->\r\n    {/literal}\r\n  </head>\r\n  <body>\r\n    <div id=\"pagewrapper\">\r\n\r\n      <hr class=\"accessibility\" />\r\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\r\n\r\n{* Start Content *}\r\n      <div id=\"content\">\r\n\r\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\r\n        <div class=\"back1\">\r\n          <div class=\"back2\">\r\n            <div class=\"back3\">\r\n              <div id=\"main\">\r\n                \r\n<!--                <h2>{title}</h2> -->\r\n                {content}\r\n                <br />{* to insure space below content *}\r\n\r\n\r\n                <hr class=\"accessibility\" />\r\n                <div class=\"clear\"></div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n{* End Content Area *}\r\n\r\n      </div>\r\n{* End Content *}\r\n\r\n    </div>\r\n{* end pagewrapper *}\r\n\r\n  </body>\r\n</html>','','',1,0,'2011-11-12 02:57:03','2011-11-12 08:41:26');

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
  (2,'custom_copyright','//set start to date your site was published\r\n$startCopyRight=''2004'';\r\n\r\n// check if start year is this year\r\nif(date(''Y'') == $startCopyRight){\r\n// it was, just print this year\r\n    echo $startCopyRight;\r\n}else{\r\n// it wasnt, print startyear and this year delimited with a dash\r\n    echo $startCopyRight.''-''. date(''Y'');\r\n}','Code to output copyright information','2006-07-25 21:22:33','2006-07-25 21:22:33');

COMMIT;

#
# Data for the `cms_userplugins_seq` table  (LIMIT 0,500)
#

INSERT INTO `cms_userplugins_seq` (`id`) VALUES 
  (2);

COMMIT;

#
# Data for the `cms_userprefs` table  (LIMIT 0,500)
#

INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES 
  (1,'use_wysiwyg','1',NULL),
  (1,'default_cms_language','en_US',NULL),
  (1,'date_format_string','%x %X',NULL),
  (1,'admintheme','NCleanGrey',NULL),
  (1,'bookmarks','on',NULL),
  (1,'recent','on',NULL),
  (1,'indent','on',NULL),
  (1,'ajax','0',NULL),
  (1,'paging','0',NULL),
  (1,'hide_help_links','0',NULL),
  (1,'wysiwyg','MicroTiny',NULL),
  (1,'collapse','0=1.67=1.',NULL);

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

