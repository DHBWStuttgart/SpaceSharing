-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Dez 2016 um 10:42
-- Server-Version: 5.7.14
-- PHP-Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `simon`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_assets`
--

CREATE TABLE `ya4mp_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_assets`
--

INSERT INTO `ya4mp_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 133, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1,"10":0}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1,"10":0}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1,"1":0},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0,"10":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 40, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":{"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 43, 78, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":{"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 79, 82, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 83, 84, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 85, 86, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 87, 88, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 89, 90, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 91, 94, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":{"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 95, 96, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 80, 81, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 92, 93, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 97, 98, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 99, 100, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":{"10":0},"core.delete":[],"core.edit.state":[]}'),
(35, 1, 101, 102, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 103, 104, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 105, 106, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 107, 108, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 44, 45, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 66, 67, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 38, 39, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 27, 19, 20, 3, 'com_content.article.1', 'Testartikel', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(56, 1, 109, 110, 1, 'com_realestatemanager', 'RealEstateManager', '{}'),
(57, 1, 111, 112, 1, '#__rem_main_categories.46', '#__rem_main_categories.46', '{}'),
(58, 1, 113, 114, 1, '#__rem_main_categories.47', '#__rem_main_categories.47', '{}'),
(59, 1, 115, 116, 1, '#__rem_main_categories.48', '#__rem_main_categories.48', '{}'),
(60, 1, 117, 118, 1, '#__rem_main_categories.49', '#__rem_main_categories.49', '{}'),
(61, 1, 119, 120, 1, '#__rem_main_categories.50', '#__rem_main_categories.50', '{}'),
(62, 1, 121, 122, 1, '#__rem_houses.2', '#__rem_houses.2', '{}'),
(63, 1, 123, 124, 1, '#__rem_houses.3', '#__rem_houses.3', '{}'),
(64, 1, 125, 126, 1, '#__rem_houses.4', '#__rem_houses.4', '{}'),
(66, 1, 129, 130, 1, 'com_akeeba', 'Akeeba', '{}'),
(67, 1, 131, 132, 1, 'com_coalawebcontact', 'com_coalawebcontact', '{"core.manage":{"10":0}}'),
(68, 18, 74, 75, 2, 'com_modules.module.87', ' Facebook Like Box Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(69, 18, 76, 77, 2, 'com_modules.module.88', 'Custom Facebook Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_associations`
--

CREATE TABLE `ya4mp_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_banners`
--

CREATE TABLE `ya4mp_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_banner_clients`
--

CREATE TABLE `ya4mp_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_banner_tracks`
--

CREATE TABLE `ya4mp_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_categories`
--

CREATE TABLE `ya4mp_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_categories`
--

INSERT INTO `ya4mp_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 608, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 608, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 608, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 608, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 608, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 608, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_contact_details`
--

CREATE TABLE `ya4mp_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_content`
--

CREATE TABLE `ya4mp_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_content`
--

INSERT INTO `ya4mp_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 55, 'Testartikel', 'testartikel', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', 1, 2, '2016-11-28 10:48:44', 608, '', '2016-11-28 10:48:44', 0, 0, '0000-00-00 00:00:00', '2016-11-28 10:48:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_contentitem_tag_map`
--

CREATE TABLE `ya4mp_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_content_frontpage`
--

CREATE TABLE `ya4mp_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_content_rating`
--

CREATE TABLE `ya4mp_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_content_types`
--

CREATE TABLE `ya4mp_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_content_types`
--

INSERT INTO `ya4mp_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_core_log_searches`
--

CREATE TABLE `ya4mp_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_extensions`
--

CREATE TABLE `ya4mp_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_extensions`
--

INSERT INTO `ya4mp_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"1","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"de-DE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{"redirect_edit":"site"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","info_block_position":"0","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"6508c4c334f64ed26511e318bf6d8861"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `ya4mp_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1481095434}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1479984888,"unique_id":"c77f0bc67ea904c36ed64d4558c2a010e025a623","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'meet_gavern', 'template', 'meet_gavern', '', 0, 1, 1, 0, '{"name":"meet_gavern","type":"template","creationDate":"30 Oct 2014","author":"GavickPro","copyright":"Copyright (C) 2014 GavickPro. All rights reserved.","authorEmail":"info@gavick.com","authorUrl":"","version":"1.4.1","description":"\\n                    <link rel=\\"stylesheet\\" type=\\"text\\/css\\" href=\\"..\\/templates\\/meet_gavern\\/admin\\/style.css\\" \\/>\\n                              <style type=\\"text\\/css\\" media=\\"all\\">\\n                              <!--\\n                              #wrap1 {padding: 0 30px 30px; font-size: 14px; line-height: 24px; color: #666}\\n                              #wrap1 h1 {clear:both;font: 300 38px\\/24px \\"Helvetica Neue\\",Helvetica,Arial,sans-serif;margin:30px 20px 12px 0;padding:0;color:#222;  }\\n                              #wrap1 h4 { border-bottom: 1px solid #e5e5e5; margin: 0 0 40px; padding: 0 0 16px; font: 300 17px\\/28px \\"Helvetica Neue\\",Helvetica,Arial,sans-serif; color: #555; }\\n                              #wrap1 sup { font-style: italic; font-size: }\\n                              .livedemo { margin-top: 28px; }\\n                              -->\\n                              <\\/style>\\t\\n                              <div id=\\"preloaderWrap\\"><div id=\\"preloader\\"><\\/div><\\/div>\\n                              <div id=\\"wrap1\\">\\n                              <h1>Meet Gavern<\\/h1>\\n                              \\n                              <h4>Responsive, bootstrap-based, free Joomla 3 template<\\/h4>\\n                              <p>We are happy to announce the availability of a free Joomla 3 template called Meet Gavern. Based upon a brand-new version of our Gavern Framework, this template has a few interesting features you should check out.\\n                              <p>First, it has been designed exclusively for use with Joomla! 3. Further, Meet Gavern features built-in support for Bootstrap.<\\/p>\\n                              <p>Finally, this wonderful no-cost template was built with support for Responsive Web Design, which means it is more flexible and powerful. This is surely a must-have template for Joomla users!<\\/p>\\n                              <p>With the anticipated release of the production version of Joomla 3, the enhanced version of the Gavern Framework will become the basis for all future GavickPro template releases.<\\/p>\\n                              <p class=\\"livedemo\\">View Meet Gavern template in action <a href=\\"http:\\/\\/joomla30.gavick.com\\" target=\\"_blank\\">here<\\/a>...<\\/p>\\n                              <small>Gavern v.1.4.1<\\/small>\\n                              \\n                              <\\/div> \\n          ","group":"","filename":"templateDetails"}', '{"max_page_width":"1200","logo_type":"image","logo_image":"","logo_text":"","logo_slogan":"","favicon_image":"","ogfb_image":"","show_category_details":"0","framework_logo":"1","webmaster_contact_type":"1","webmaster_contact":"webmaster@gavick.com","google_analytics_type":"old","menu_animation":"width_height_opacity","menu_speed":"fast","submenu_width":"200","social_pos":"left","fb_api_id":"","fb_lang":"en_US","fb_login":"1","fb_like":"0","fb_like_send":"0","fb_like_layout":"standard","fb_like_show_faces":"true","fb_like_width":"500","fb_like_action":"like","fb_like_font":"arial","fb_like_colorscheme":"light","google_plus":"1","google_plus_count":"1","google_plus_size":"medium","google_plus_lang":"en-GB","google_plus_share":"1","google_plus_share_annotation":"vertical-bubble","google_plus_share_size":"20","tweet_btn":"0","tweet_btn_data_count":"vertical","tweet_btn_data_via":"","tweet_btn_data_lang":"en","pinterest_btn":"0","pinterest_btn_style":"horizontal","excluded_cats":"","cookie_consent":"0","consenttype":"explicit","cookie_latest_version":"0","cookie_use_ssl":"0","banner_position":"bottom","banner_tag_placement":"bottom-right","cookie_style":"light","refreshOnConsent":"0","cookiecss":"1","recompile_css":"0","recompile_bootstrap":"0","usernameless_login":"0","css_cache":"0","css_compression":"0","css_override":"0","css_prefixer":"0","js_compression":"0","chrome_frame_support":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'GermanDE', 'language', 'de-DE', '', 0, 1, 0, 0, '{"name":"German (DE)","type":"language","creationDate":"25.10.2016","author":"J!German","copyright":"Copyright (C) 2008 - 2016 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.6.4.1","description":"\\n\\t  <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Frontend (Website)-\\u00dcbersetzung f\\u00fcr Joomla! 3.6.4\\n\\t  <br \\/>\\n\\t  <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Frontend (Website) translation for Joomla! 3.6.4\\n\\t","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'GermanDE', 'language', 'de-DE', '', 1, 1, 0, 0, '{"name":"German (DE)","type":"language","creationDate":"25.10.2016","author":"J!German","copyright":"Copyright (C) 2008 - 2016 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.6.4.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Backend (Administrator)-\\u00dcbersetzung f\\u00fcr Joomla! 3.6.4\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Backend (Administrator) translation for Joomla! 3.6.4\\n    ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'German (Germany) Language Pack', 'package', 'pkg_de-DE', '', 0, 1, 1, 0, '{"name":"German (Germany) Language Pack","type":"package","creationDate":"25.10.2016","author":"J!German","copyright":"","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.6.4.1","description":"\\n    <div style=\\"text-align: center;\\">\\n      <h2>Deutsches \\u201eFull\\u201c-Sprachpaket f\\u00fcr Joomla! 3.6.4 von <a title=\\"J!German\\" href=\\"http:\\/\\/www.jgerman.de\\" target=\\"_blank\\">J!German<\\/a><\\/h2>\\n      <h3><span style=\\"color: #008000;\\">\\u00dcbersetzungsversion: 3.6.4v1<\\/span><\\/h3>\\n      <hr \\/>\\n      <table rules=\\"all\\" frame=\\"border\\" style=\\"width: 90%; border-color: #000000; border-width: 1px; border-style: solid;\\" align=\\"center\\" border=\\"1\\">\\n      <colgroup> <col width=\\"30%\\" \\/> <col width=\\"60\\" \\/> <\\/colgroup>\\n      <tbody>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Frontend (Website)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td rowspan=\\"2\\">\\n            <ul>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Legen Sie die deutsche Sprache unter <a title=\\"Language(s)\\" href=\\"index.php?option=com_languages\\" target=\\"_blank\\">\\u201eExtensions\\u201c \\u2192 \\u201eLanguage(s)\\u201c<\\/a> als Standardsprache (\\u201eDefault\\u201c), sowohl f\\u00fcr die Website (\\u201eInstalled - Site\\u201c) als auch f\\u00fcr die Administration (\\u201eInstalled - Administrator\\u201c), fest.\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Aktualisierung:<\\/span>\\n                <br \\/>\\n                Es sind keine weiteren Schritte erforderlich.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Backend (Administrator)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n      <\\/tbody>\\n      <\\/table>\\n      <br \\/>\\n      <span style=\\"text-decoration: underline;\\">Hinweis:<\\/span> Dieses Paket unterst\\u00fctzt die Joomla! eigene <a title=\\"Joomla!-Aktualisierungsfunktion\\" href=\\"index.php?option=com_installer&amp;view=update\\" target=\\"_blank\\">Aktualisierungsfunktion<\\/a>!\\n    <\\/div>\\n    ","group":"","filename":"pkg_de-DE"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'SimonBS2', 'template', 'simonbs2', '', 0, 1, 1, 0, '{"name":"SimonBS2","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{"runless":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Simon BS', 'template', 'simonbs', '', 0, 1, 1, 0, '{"name":"Simon BS","type":"template","creationDate":"xxxx-xx-xx","author":"Simon","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'com_coalawebcontact', 'component', 'com_coalawebcontact', '', 1, 1, 1, 0, '{"name":"COM_COALAWEBCONTACT","type":"component","creationDate":"2016-11-17","author":"Steven Palmer","copyright":"Copyright (c) 2016 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"1.0.9","description":"COM_COALAWEBCONTACT_DESC","group":""}', '{"recipients":"1","recipient":"","email_subject":"","mail_from":"2","email_format":"nohtml","redirect_url":"2","sys_msg":"system-message-container","display_email":"R","display_name":"Y","display_subject":"Y","display_message":"Y","display_copyme":"0","display_asterisk_msg":"0","cwc_load_css":"1","form_theme":"C:\\\\wamp64\\\\www\\\\SpaceSharing\\\\media\\\\coalawebcontact\\\\components\\\\contact\\\\themes\\/light","form_width":"100","submit_btn_style":"btn","submit_btn_custom":"","submit_btn":"","display_c_input1":"N","type_c_input1":"text","select_c_input1":"Option 1,Option 2,Option 3","custom1_lbl":"","custom1_hint":"","msg_custom1_missing":"","msg_remail_missing":"","msg_subject_missing":"","msg_name_missing":"","msg_email_missing":"","msg_email_invalid":"","msg_message_missing":"","msg_captcha_wrong":"","msg_email_sent":"","msg_asterisk":"","subject_lbl":"","subject_hint":"","name_lbl":"","name_hint":"","email_lbl":"","email_hint":"","message_lbl":"","message_hint":"","copyme_lbl":"","captcha_heading":"","captcha_hint":"","sfrom_title":"","sfrom_web_lbl":"","sby_title":"","req_title":"","which_captcha":"none","display_captcha_title":"1","bcaptcha_question":"","bcaptcha_answer":"","cloak_on":"1","check_btn_on":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10010, 'com_gantry', 'component', 'com_gantry', '', 1, 1, 1, 0, '{"name":"Gantry","type":"component","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10011, 'com_jomres', 'component', 'com_jomres', '', 1, 1, 1, 0, '{"name":"com_jomres","type":"component","creationDate":"October 2016","author":"Vince Wooll","copyright":"Copyright (C) 2005-2016 Vince Wooll. All rights reserved.","authorEmail":"sales@jomres.net","authorUrl":"https:\\/\\/www.jomres.net","version":"9.8.18","description":"Jomres - Complete Online Booking and Property Management Solution","group":"","filename":"jomres"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10012, 'RealEstateManager', 'component', 'com_realestatemanager', '', 1, 1, 1, 0, '{"name":"RealEstateManager","type":"component","creationDate":"November 2016","author":"Rob de Cleen, Andrey Kvasnevskiy","copyright":"ordasoft - Andrey Kvasnevskiy ","authorEmail":"rob@decleen.com; akbet@mail.ru; ","authorUrl":"http:\\/\\/www.ordasoft.com","version":"3.9.3 Free","description":"RealEstateManager - component for sale and rent houses","group":"","filename":"realestatemanager"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'com_templateck', 'component', 'com_templateck', '', 1, 1, 1, 0, '{"name":"com_templateck","type":"component","creationDate":"April 2013","author":"Cedric Keiflin","copyright":"Copyright (C) 2013. All rights reserved.","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.template-creator.com","version":"3.3.10","description":"CK_TEMPLATECK_DESC","group":"","filename":"templateck"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10014, 'lib_fof30', 'library', 'lib_fof30', '', 0, 1, 1, 0, '{"name":"FOF30","type":"library","creationDate":"2016-10-04 19:03:23","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"3.0.15","description":"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t","group":"","filename":"lib_fof30"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10015, 'lib_gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"name":"Gantry","type":"library","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"lib_gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10016, 'mod_coalawebcontact', 'module', 'mod_coalawebcontact', '', 0, 1, 1, 0, '{"name":"MOD_COALAWEBCONTACT","type":"module","creationDate":"2016-11-17","author":"Steven Palmer","copyright":"Copyright (c) 2014 Steven Palmer All rights reserved","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"1.0.9","description":"MOD_COALAWEBCONTACT_DESC","group":"","filename":"mod_coalawebcontact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10017, 'mod_roknavmenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"name":"RokNavMenu","type":"module","creationDate":"February 24, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.8","description":"RocketTheme Customizable Navigation Menu","group":"","filename":"mod_roknavmenu"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10018, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10019, 'plg_quickicon_akeebabackup', 'plugin', 'akeebabackup', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_akeebabackup","type":"plugin","creationDate":"2012-09-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.0","description":"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION","group":"","filename":"akeebabackup"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10020, 'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE', 'plugin', 'akeebaupdatecheck', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE","type":"plugin","creationDate":"2011-05-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.1","description":"PLG_AKEEBAUPDATECHECK_DESCRIPTION2","group":"","filename":"akeebaupdatecheck"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10021, 'PLG_CWGEARS', 'plugin', 'cwgears', 'system', 0, 1, 1, 0, '{"name":"PLG_CWGEARS","type":"plugin","creationDate":"2016-10-04","author":"Steven Palmer","copyright":"Copyright (c) 2016 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"0.2.6","description":"PLG_CWGEARS_DESC","group":"","filename":"cwgears"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10022, 'PLG_CWMAILCHECK', 'plugin', 'cwmailcheck', 'system', 0, 1, 1, 0, '{"name":"PLG_CWMAILCHECK","type":"plugin","creationDate":"2016-11-17","author":"Steven Palmer","copyright":"Copyright (c) 2016 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"1.0.9","description":"PLG_CWMAILCHECK_DESCRIPTION","group":"","filename":"cwmailcheck"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10023, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"name":"System - Gantry","type":"plugin","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry System Plugin for Joomla","group":"","filename":"gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10024, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"name":"System - RokExtender","type":"plugin","creationDate":"October 31, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"System - Gantry","group":"","filename":"rokextender"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10025, 'frontend', 'template', 'frontend', '', 0, 1, 1, 0, '{"name":"frontend","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10026, 'jd_atlanta', 'template', 'jd_atlanta', '', 0, 1, 1, 0, '{"name":"jd_atlanta","type":"template","creationDate":"April, 2016","author":"JoomDev","copyright":"(C) 2008 - 2016 JoomDev. All rights reserved.","authorEmail":"info@joomdev.com","authorUrl":"http:\\/\\/www.joomdev.com","version":"1.3","description":"JD ATLANTA Template build by www.joomdev.com","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10027, 'masterbootstrap', 'template', 'masterbootstrap', '', 0, 1, 1, 0, '{"name":"Master Bootstrap","type":"template","creationDate":"05 APR 2016","author":"Gonzalo Suez","copyright":"Copyright \\u00a9 2013 - 2016 gsuez.cl","authorEmail":"info@gsuez.cl","authorUrl":"http:\\/\\/www.gsuez.cl","version":"Stable 1.2.2","description":"\\n\\t\\t<h1>Master Bootstrap for Joomla! 3.5<\\/h1>\\n\\t\\t<p>Un template para trabajar desde 0 con todas las ventajas de Bootstrap v.3.3.5<\\/p>\\n\\t\\t<p>A template to work from scratch, with all the advantages of Bootstrap v.3.3.5.<\\/p>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.gsuez.cl\\" target=\\"_blank\\">Gonzalo Suez <\\/a><\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10028, 'simon', 'template', 'simon', '', 0, 1, 1, 0, '{"name":"simon","type":"template","creationDate":"23.11.2016","author":"Simon","copyright":"Simon","authorEmail":"Simon","authorUrl":"Simon","version":"v1","description":"Simon","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10029, 'templatecreatorck', 'template', 'templatecreatorck', '', 0, 1, 1, 0, '{"name":"templatecreatorck","type":"template","creationDate":"Septembre 2011","author":"C\\u00e9dric KEIFLIN","copyright":"Copyright (C) 2013 C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.template-creator.com","version":"3.0.0","description":"Empty template for Template Creator","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10030, ' Facebook Like Box Slider', 'module', 'mod_fblikeboxslider', '', 0, 1, 0, 0, '{"name":" Facebook Like Box Slider","type":"module","creationDate":"June 2014","author":"Shahedur Rahman","copyright":"All rights reserved by JoomExperts.COM.","authorEmail":"shahed@joomexperts.com","authorUrl":"www.joomexperts.com","version":"1.0","description":"Thanks for installing Facebook Like Box Slider","group":"","filename":"mod_fblikeboxslider"}', '{"facebook_name":"https:\\/\\/www.facebook.com\\/FacebookDevelopers","align":"left","face":"yes","stream":"no","show_header":"yes","show_border":"yes","color_schem":"light","margintop":"110","facebook_width":"300","facebook_height":"350","jquery":"0","moduleclass_sfx":"","loadjquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `ya4mp_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10031, 'Custom Facebook Display', 'module', 'mod_custom_facebook_display', '', 0, 1, 0, 0, '{"name":"Custom Facebook Display","type":"module","creationDate":"May 2013","author":"Nick","copyright":"Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.","authorEmail":"info@phpseo.net","authorUrl":"www.phpseo.net","version":"1.0.0","description":"\\n\\n\\t\\t \\n\\n\\t\\t Custom Facebook Display for Joomla 2.5 & 3\\n\\n\\t\\t<br\\/>\\n\\n\\t\\t<p>\\n\\n\\t\\t\\n\\n\\t","group":"","filename":"mod_custom_facebook_display"}', '{"moduleclass_sfx":"","facebook_url":"","stream":"yes","show_faces":"true","hide":"true","connections":"25","apikey":"118979788166438","width":"300","height":"600"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'Spacesharing', 'template', 'spacesharing', '', 0, 1, 1, 0, '{"name":"Spacesharing","type":"template","creationDate":"24 Nov 2016","author":"SpaceSharing Team","copyright":"Copyright \\u00a9 2016 SpaceSharing Team","authorEmail":"","authorUrl":"","version":"Developer 1.0","description":"\\n\\t\\t<p>Created by SpaceSharing Team<\\/a><\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_filters`
--

CREATE TABLE `ya4mp_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links`
--

CREATE TABLE `ya4mp_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms0`
--

CREATE TABLE `ya4mp_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms1`
--

CREATE TABLE `ya4mp_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms2`
--

CREATE TABLE `ya4mp_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms3`
--

CREATE TABLE `ya4mp_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms4`
--

CREATE TABLE `ya4mp_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms5`
--

CREATE TABLE `ya4mp_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms6`
--

CREATE TABLE `ya4mp_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms7`
--

CREATE TABLE `ya4mp_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms8`
--

CREATE TABLE `ya4mp_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_terms9`
--

CREATE TABLE `ya4mp_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_termsa`
--

CREATE TABLE `ya4mp_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_termsb`
--

CREATE TABLE `ya4mp_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_termsc`
--

CREATE TABLE `ya4mp_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_termsd`
--

CREATE TABLE `ya4mp_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_termse`
--

CREATE TABLE `ya4mp_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_links_termsf`
--

CREATE TABLE `ya4mp_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_taxonomy`
--

CREATE TABLE `ya4mp_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ya4mp_finder_taxonomy`
--

INSERT INTO `ya4mp_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_taxonomy_map`
--

CREATE TABLE `ya4mp_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_terms`
--

CREATE TABLE `ya4mp_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_terms_common`
--

CREATE TABLE `ya4mp_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ya4mp_finder_terms_common`
--

INSERT INTO `ya4mp_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_tokens`
--

CREATE TABLE `ya4mp_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_tokens_aggregate`
--

CREATE TABLE `ya4mp_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_finder_types`
--

CREATE TABLE `ya4mp_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_languages`
--

CREATE TABLE `ya4mp_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_languages`
--

INSERT INTO `ya4mp_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_menu`
--

CREATE TABLE `ya4mp_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_menu`
--

INSERT INTO `ya4mp_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 75, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
(102, 'mainmenu', 'Thomas', 'thomas', '', 'thomas', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(103, 'mainmenu', 'Chris', 'chris', '', 'chris', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(104, 'mainmenu', 'Michi', 'michi', '', 'michi', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(105, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"loginredirectchoice":"1","login_redirect_url":"","login_redirect_menuitem":"","logindescription_show":"1","login_description":"","login_image":"","logoutredirectchoice":"1","logout_redirect_url":"","logout_redirect_menuitem":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(106, 'mainmenu', 'Registrieren', 'registrieren', '', 'registrieren', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(107, 'mainmenu', 'Logout', 'logout', '', 'logout', 'index.php?option=com_users&view=login&layout=logout&task=user.menulogout', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"logout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(108, 'main', 'RealEstateManager', 'RealEstateManager', '', 'RealEstateManager', 'index.php?option=com_realestatemanager', 'component', 0, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 53, 72, 0, '', 1),
(109, 'main', 'Houses', 'Houses', '', 'RealEstateManager/Houses', 'index.php?option=com_realestatemanager', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:module', 0, '{}', 54, 55, 0, '', 1),
(110, 'main', 'Categories', 'Categories', '', 'RealEstateManager/Categories', 'index.php?option=com_realestatemanager&section=categories', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 56, 57, 0, '', 1),
(111, 'main', 'Amenities Manager', 'Amenities Manager', '', 'RealEstateManager/Amenities Manager', 'index.php?option=com_realestatemanager&section=featured_manager', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 58, 59, 0, '', 1),
(112, 'main', 'Booking Manager', 'Booking Manager', '', 'RealEstateManager/Booking Manager', 'index.php?option=com_realestatemanager&task=rent_requests', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 60, 61, 0, '', 1),
(113, 'main', 'Booking History', 'Booking History', '', 'RealEstateManager/Booking History', 'index.php?option=com_realestatemanager&task=users_rent_history', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 62, 63, 0, '', 1),
(114, 'main', 'Sale Manager', 'Sale Manager', '', 'RealEstateManager/Sale Manager', 'index.php?option=com_realestatemanager&task=buying_requests', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 64, 65, 0, '', 1),
(115, 'main', 'Language Manager', 'Language Manager', '', 'RealEstateManager/Language Manager', 'index.php?option=com_realestatemanager&section=language_manager', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 66, 67, 0, '', 1),
(116, 'main', 'Settings', 'Settings', '', 'RealEstateManager/Settings', 'index.php?option=com_realestatemanager&task=config', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:config', 0, '{}', 68, 69, 0, '', 1),
(117, 'main', 'About', 'About', '', 'RealEstateManager/About', 'index.php?option=com_realestatemanager&task=about', 'component', 0, 108, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:info', 0, '{}', 70, 71, 0, '', 1),
(119, 'main', 'COM_AKEEBA', 'com-akeeba', '', 'com-akeeba', 'index.php?option=com_akeeba', 'component', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_akeeba/icons/akeeba-16.png', 0, '{}', 73, 74, 0, '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_menu_types`
--

CREATE TABLE `ya4mp_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_menu_types`
--

INSERT INTO `ya4mp_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_messages`
--

CREATE TABLE `ya4mp_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_messages_cfg`
--

CREATE TABLE `ya4mp_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_modules`
--

CREATE TABLE `ya4mp_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_modules`
--

INSERT INTO `ya4mp_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'navigation-right', 0, '0000-00-00 00:00:00', '2016-11-28 14:47:39', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 68, ' Facebook Like Box Slider', '', '', 1, 'content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_fblikeboxslider', 1, 1, '{"facebook_name":"https:\\/\\/www.facebook.com\\/FacebookDevelopers","align":"left","face":"yes","stream":"no","show_header":"yes","show_border":"yes","color_schem":"light","margintop":"110","facebook_width":"300","facebook_height":"350","jquery":"0","moduleclass_sfx":"","loadjquery":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 69, 'Custom Facebook Display', '', '', 1, 'facebook', 608, '2016-12-07 10:37:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom_facebook_display', 1, 1, '{"moduleclass_sfx":"","facebook_url":"https:\\/\\/www.facebook.com\\/reallabor.spacesharing\\/","stream":"true","show_faces":"true","hide":"true","connections":"25","apikey":"118979788166438","width":"300","height":"600","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_modules_menu`
--

CREATE TABLE `ya4mp_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_modules_menu`
--

INSERT INTO `ya4mp_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 101),
(16, 102),
(16, 103),
(16, 104),
(16, 105),
(16, 106),
(16, 107),
(17, 0),
(79, 0),
(86, 0),
(88, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_newsfeeds`
--

CREATE TABLE `ya4mp_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_overrider`
--

CREATE TABLE `ya4mp_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_postinstall_messages`
--

CREATE TABLE `ya4mp_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_postinstall_messages`
--

INSERT INTO `ya4mp_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_redirect_links`
--

CREATE TABLE `ya4mp_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_buying_request`
--

CREATE TABLE `ya4mp_rem_buying_request` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) NOT NULL DEFAULT '0',
  `fk_userid` int(11) DEFAULT NULL,
  `buying_request` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_name` varchar(250) DEFAULT '',
  `customer_email` varchar(250) DEFAULT '',
  `customer_phone` text,
  `customer_comment` text,
  `status` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_categories`
--

CREATE TABLE `ya4mp_rem_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `iditem` int(11) NOT NULL DEFAULT '0',
  `idcat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_categories`
--

INSERT INTO `ya4mp_rem_categories` (`id`, `iditem`, `idcat`) VALUES
(2, 2, 46),
(3, 3, 50),
(4, 4, 47);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_const`
--

CREATE TABLE `ya4mp_rem_const` (
  `id` int(11) UNSIGNED NOT NULL,
  `const` varchar(250) DEFAULT '',
  `sys_type` varchar(250) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_const`
--

INSERT INTO `ya4mp_rem_const` (`id`, `const`, `sys_type`) VALUES
(2, '_REALESTATE_MANAGER_LABEL_CBMAIN', 'Realestate Manager'),
(3, '_REALESTATE_MANAGER_LABEL_CBHOUSES', 'Realestate Manager'),
(4, '_REALESTATE_MANAGER_LABEL_CBEDIT', 'Realestate Manager'),
(5, '_REALESTATE_MANAGER_LABEL_CBRENT', 'Realestate Manager'),
(6, '_REALESTATE_MANAGER_LABEL_CBBUY', 'Realestate Manager'),
(7, '_REALESTATE_MANAGER_LABEL_CBHISTORY', 'Realestate Manager'),
(8, '_REALESTATE_MANAGER_LABEL_CBHOUSES_TO', 'Realestate Manager'),
(9, '_REALESTATE_MANAGER_LABEL_CBEDIT_TO', 'Realestate Manager'),
(10, '_REALESTATE_MANAGER_LABEL_CBRENT_TO', 'Realestate Manager'),
(11, '_REALESTATE_MANAGER_LABEL_CBBUY_TO', 'Realestate Manager'),
(12, '_REALESTATE_MANAGER_LABEL_CBHISTORY_TO', 'Realestate Manager'),
(13, '_REALESTATE_MANAGER_LABEL_CBHOUSES_TT', 'Realestate Manager'),
(14, '_REALESTATE_MANAGER_LABEL_CBEDIT_TT', 'Realestate Manager'),
(15, '_REALESTATE_MANAGER_LABEL_CBRENT_TT', 'Realestate Manager'),
(16, '_REALESTATE_MANAGER_LABEL_CBBUY_TT', 'Realestate Manager'),
(17, '_REALESTATE_MANAGER_LABEL_CBHISTORY_TT', 'Realestate Manager'),
(18, '_REALESTATE_MANAGER_LABEL_CBHOUSES_RL', 'Realestate Manager'),
(19, '_REALESTATE_MANAGER_LABEL_CBHOUSES_ML', 'Realestate Manager'),
(20, '_REALESTATE_MANAGER_LABEL_CBHOUSES_ML_BODY', 'Realestate Manager'),
(21, '_REALESTATE_MANAGER_LABEL_CBEDIT_RL', 'Realestate Manager'),
(22, '_REALESTATE_MANAGER_LABEL_CBEDIT_ML', 'Realestate Manager'),
(23, '_REALESTATE_MANAGER_LABEL_CBRENT_RL', 'Realestate Manager'),
(24, '_REALESTATE_MANAGER_LABEL_CBRENT_ML', 'Realestate Manager'),
(25, '_REALESTATE_MANAGER_LABEL_CBBUY_RL', 'Realestate Manager'),
(26, '_REALESTATE_MANAGER_LABEL_CBBUY_ML', 'Realestate Manager'),
(27, '_REALESTATE_MANAGER_LABEL_CBHISTORY_RL', 'Realestate Manager'),
(28, '_REALESTATE_MANAGER_LABEL_CBHISTORY_ML', 'Realestate Manager'),
(29, '_REALESTATE_MANAGER_TITLE', 'Realestate Manager'),
(30, '_REALESTATE_MANAGER_DESC', 'Realestate Manager'),
(31, '_REALESTATE_MANAGER_SEARCH_DESC1', 'Realestate Manager'),
(32, '_REALESTATE_MANAGER_SEARCH_DESC2', 'Realestate Manager'),
(33, '_REALESTATE_MANAGER_NO_PICTURE', 'Realestate Manager'),
(34, '_REALESTATE_MANAGER_NOT_AUTHORIZED', 'Realestate Manager'),
(35, '_REALESTATE_MANAGER_LABEL_OK', 'Realestate Manager'),
(36, '_REALESTATE_MANAGER_LABEL_STATUS', 'Realestate Manager'),
(37, '_REALESTATE_MANAGER_ADMIN_IMPEXP', 'Realestate Manager'),
(38, '_REALESTATE_MANAGER_ADMIN_IMPEXP_ADD', 'Realestate Manager'),
(39, '_REALESTATE_MANAGER_ADMIN_PLEASE_SEL', 'Realestate Manager'),
(40, '_REALESTATE_MANAGER_ADMIN_FORMAT_CSV', 'Realestate Manager'),
(41, '_REALESTATE_MANAGER_ADMIN_FORMAT_XML', 'Realestate Manager'),
(42, '_REALESTATE_MANAGER_SHOW_IMPEXP_ERR1', 'Realestate Manager'),
(43, '_REALESTATE_MANAGER_SHOW_IMPEXP_ERR2', 'Realestate Manager'),
(44, '_REALESTATE_MANAGER_SHOW_IMPEXP_ERR3', 'Realestate Manager'),
(45, '_REALESTATE_MANAGER_SHOW_IMPEXP_ERR4', 'Realestate Manager'),
(46, '_REALESTATE_MANAGER_SHOW_IMPEXP_LABEL_IMPORT_TYP', 'Realestate Manager'),
(47, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_TYP', 'Realestate Manager'),
(48, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_TYP_TT_HEAD', 'Realestate Manager'),
(49, '_REALESTATE_MANAGER_SHOW_IMPEXP_LABEL_IMPORT_CATEGORY', 'Realestate Manager'),
(50, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_CAT', 'Realestate Manager'),
(51, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_CAT_TT_HEAD', 'Realestate Manager'),
(52, '_REALESTATE_MANAGER_SHOW_IMPEXP_LABEL_IMPORT_FILE', 'Realestate Manager'),
(53, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_FILE', 'Realestate Manager'),
(54, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_FILE_TT_HEAD', 'Realestate Manager'),
(55, '_REALESTATE_MANAGER_SHOW_IMPEXP_FORMAT', 'Realestate Manager'),
(56, '_REALESTATE_MANAGER_SHOW_IMPEXP_LABEL_EXPORT_TYP', 'Realestate Manager'),
(57, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_TYP', 'Realestate Manager'),
(58, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_TYP_TT_HEAD', 'Realestate Manager'),
(59, '_REALESTATE_MANAGER_SHOW_IMPEXP_LABEL_EXPORT_CATEGORY', 'Realestate Manager'),
(60, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_CAT', 'Realestate Manager'),
(61, '_REALESTATE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_CAT_TT_HEAD', 'Realestate Manager'),
(62, '_REALESTATE_MANAGER_SHOW_IMPEXP_RESULT', 'Realestate Manager'),
(63, '_REALESTATE_MANAGER_SHOW_IMPEXP_RESULT_DOWNLOAD', 'Realestate Manager'),
(64, '_REALESTATE_MANAGER_SHOW_IMPEXP_RESULT_REMEMBER', 'Realestate Manager'),
(65, '_REALESTATE_MANAGER_CATEGORIES_MANAGER', 'Realestate Manager'),
(66, '_HEADER_CATEGORY', 'Realestate Manager'),
(67, '_HEADER_NUMBER', 'Realestate Manager'),
(68, '_HEADER_PUBLISHED', 'Realestate Manager'),
(69, '_HEADER_REORDER', 'Realestate Manager'),
(70, '_HEADER_ACCESS', 'Realestate Manager'),
(71, '_HEADER_CHECKED_OUT', 'Realestate Manager'),
(72, '_HEADER_ADD', 'Realestate Manager'),
(73, '_HEADER_EDIT', 'Realestate Manager'),
(74, '_CATEGORY', 'Realestate Manager'),
(75, '_DML_CAT_MUST_SELECT_NAME', 'Realestate Manager'),
(76, '_CATEGORIES_NAME', 'Realestate Manager'),
(77, '_A_SELECT_IMAGE', 'Realestate Manager'),
(78, '_A_SELECT_TOP', 'Realestate Manager'),
(79, '_CATEGORIES_HEADER_TITLE', 'Realestate Manager'),
(80, '_CATEGORIES_HEADER_NAME', 'Realestate Manager'),
(81, '_CATEGORIES__IMAGEPREVIEW', 'Realestate Manager'),
(82, '_CATEGORIES__DETAILS', 'Realestate Manager'),
(83, '_CATEGORIES_HEADER_IMAGEPOS', 'Realestate Manager'),
(84, '_CATEGORIES__PARENTITEM', 'Realestate Manager'),
(85, '_DELETED', 'Realestate Manager'),
(86, '_REALESTATE_MANAGER_SHOW_RENT_HOUSES', 'Realestate Manager'),
(87, '_REALESTATE_MANAGER_SHOW_RENT_RETURN', 'Realestate Manager'),
(88, '_REALESTATE_MANAGER_ADMIN_IMP', 'Realestate Manager'),
(89, '_REALESTATE_MANAGER_ADMIN_EXP', 'Realestate Manager'),
(90, '_REALESTATE_MANAGER_LABEL_SELECT_ALL_CATEGORIES', 'Realestate Manager'),
(91, '_REALESTATE_MANAGER_LABEL_SELECT_CATEGORIES', 'Realestate Manager'),
(92, '_REALESTATE_MANAGER_LABEL_SELECT_TO_RENT', 'Realestate Manager'),
(93, '_REALESTATE_MANAGER_LABEL_SELECT_ALL_RENT', 'Realestate Manager'),
(94, '_REALESTATE_MANAGER_LABEL_SELECT_RENT', 'Realestate Manager'),
(95, '_REALESTATE_MANAGER_LABEL_SELECT_NOT_RENT', 'Realestate Manager'),
(96, '_REALESTATE_MANAGER_LABEL_SELECT_ALL_USERS', 'Realestate Manager'),
(97, '_REALESTATE_MANAGER_LABEL_SELECT_TO_PUBLIC', 'Realestate Manager'),
(98, '_REALESTATE_MANAGER_LABEL_SELECT_ALL_PUBLIC', 'Realestate Manager'),
(99, '_REALESTATE_MANAGER_LABEL_SELECT_NOT_PUBLIC', 'Realestate Manager'),
(100, '_REALESTATE_MANAGER_LABEL_SELECT_PUBLIC', 'Realestate Manager'),
(101, '_REALESTATE_MANAGER_LABEL_SEARCH', 'Realestate Manager'),
(102, '_REALESTATE_MANAGER_LABEL_SEARCH_KEYWORD', 'Realestate Manager'),
(103, '_REALESTATE_MANAGER_LABEL_SEARCH_BUTTON', 'Realestate Manager'),
(104, '_REALESTATE_MANAGER_SHOW', 'Realestate Manager'),
(105, '_REALESTATE_MANAGER_SHOW_SEARCH', 'Realestate Manager'),
(106, '_REALESTATE_MANAGER_SHOW_SEARCH_KOM', 'Realestate Manager'),
(107, '_REALESTATE_MANAGER_LABEL_PROPERTYID', 'Realestate Manager'),
(108, '_REALESTATE_MANAGER_LABEL_RESULT', 'Realestate Manager'),
(109, '_REALESTATE_MANAGER_LABEL_COMMENT', 'Realestate Manager'),
(110, '_REALESTATE_MANAGER_LABEL_CATEGORY', 'Realestate Manager'),
(111, '_REALESTATE_MANAGER_LABEL_HOUSES', 'Realestate Manager'),
(112, '_REALESTATE_MANAGER_LABEL_COVER', 'Realestate Manager'),
(113, '_REALESTATE_MANAGER_LABEL_COUNTRY', 'Realestate Manager'),
(114, '_REALESTATE_MANAGER_LABEL_REGION', 'Realestate Manager'),
(115, '_REALESTATE_MANAGER_LABEL_CITY', 'Realestate Manager'),
(116, '_REALESTATE_MANAGER_LABEL_ZIPCODE', 'Realestate Manager'),
(117, '_REALESTATE_MANAGER_LABEL_ADDRESS', 'Realestate Manager'),
(118, '_REALESTATE_MANAGER_LABEL_NO_LOCATION_AVAILIBLE', 'Realestate Manager'),
(119, '_REALESTATE_MANAGER_LABEL_TITLE', 'Realestate Manager'),
(120, '_REALESTATE_MANAGER_LABEL_BUILD_YEAR', 'Realestate Manager'),
(121, '_REALESTATE_MANAGER_LABEL_PROPERTY_TYPE', 'Realestate Manager'),
(122, '_REALESTATE_MANAGER_LABEL_RATING', 'Realestate Manager'),
(123, '_REALESTATE_MANAGER_LABEL_PICTURE_URL', 'Realestate Manager'),
(124, '_REALESTATE_MANAGER_LABEL_PICTURE', 'Realestate Manager'),
(125, '_REALESTATE_MANAGER_LABEL_URL', 'Realestate Manager'),
(126, '_REALESTATE_MANAGER_LABEL_RENT_TO', 'Realestate Manager'),
(127, '_REALESTATE_MANAGER_LABEL_RENT_FROM', 'Realestate Manager'),
(128, '_REALESTATE_MANAGER_LABEL_RENT_UNTIL', 'Realestate Manager'),
(129, '_REALESTATE_MANAGER_LABEL_RENT_FROM_UNTIL', 'Realestate Manager'),
(130, '_REALESTATE_MANAGER_LABEL_RENT_FROM_UNTIL_NOT_KNOWN', 'Realestate Manager'),
(131, '_REALESTATE_MANAGER_LABEL_RENT_USER', 'Realestate Manager'),
(132, '_REALESTATE_MANAGER_LABEL_RENT_EMAIL', 'Realestate Manager'),
(133, '_REALESTATE_MANAGER_LABEL_RENT_ADRES', 'Realestate Manager'),
(134, '_REALESTATE_MANAGER_LABEL_BUYING_ADRES', 'Realestate Manager'),
(135, '_REALESTATE_MANAGER_LABEL_RENT_TIME', 'Realestate Manager'),
(136, '_REALESTATE_MANAGER_LABEL_HITS', 'Realestate Manager'),
(137, '_REALESTATE_MANAGER_LABEL_LINE', 'Realestate Manager'),
(138, '_REALESTATE_MANAGER_LABEL_RENT', 'Realestate Manager'),
(139, '_REALESTATE_MANAGER_LABEL_PUBLIC', 'Realestate Manager'),
(140, '_REALESTATE_MANAGER_LABEL_CONTROL', 'Realestate Manager'),
(141, '_REALESTATE_MANAGER_REVIEW_DATE', 'Realestate Manager'),
(142, '_REALESTATE_MANAGER_LABEL_PICTURE_URL_UPLOAD', 'Realestate Manager'),
(143, '_REALESTATE_MANAGER_LABEL_OTHER_PICTURES_URL_UPLOAD', 'Realestate Manager'),
(144, '_REALESTATE_MANAGER_LABEL_PICTURE_URL_DESC', 'Realestate Manager'),
(145, '_REALESTATE_MANAGER_LABEL_PICTURE_URL_UPLOAD_ERROR', 'Realestate Manager'),
(146, '_REALESTATE_MANAGER_LABEL_PRICE', 'Realestate Manager'),
(147, '_REALESTATE_MANAGER_LABEL_RENT_INFORMATIONS', 'Realestate Manager'),
(148, '_REALESTATE_MANAGER_LABEL_EDOCUMENT_ACTUAL', 'Realestate Manager'),
(149, '_REALESTATE_MANAGER_LABEL_EDOCUMENT_UPLOAD', 'Realestate Manager'),
(150, '_REALESTATE_MANAGER_LABEL_EDOCUMENT_DOWNLOAD', 'Realestate Manager'),
(151, '_REALESTATE_MANAGER_LABEL_EDOCUMENT_DELETE', 'Realestate Manager'),
(152, '_REALESTATE_MANAGER_LABEL_EDOCUMENT', 'Realestate Manager'),
(153, '_REALESTATE_MANAGER_LABEL_EDOCUMENT_UPLOAD_ERROR', 'Realestate Manager'),
(154, '_REALESTATE_MANAGER_LABEL_RENT_CB', 'Realestate Manager'),
(155, '_REALESTATE_MANAGER_LABEL_REQUIRED', 'Realestate Manager'),
(156, '_REALESTATE_MANAGER_LABEL_ADDREVIEW', 'Realestate Manager'),
(157, '_REALESTATE_MANAGER_LABEL_REVIEWS', 'Realestate Manager'),
(158, '_REALESTATE_MANAGER_LABEL_BUTTON_SAVE', 'Realestate Manager'),
(159, '_REALESTATE_MANAGER_LABEL_BUTTON_RENT_REQU', 'Book it!'),
(160, '_REALESTATE_MANAGER_LABEL_BUTTON_RENT_REQU_SAVE', 'Realestate Manager'),
(161, '_REALESTATE_MANAGER_LABEL_REVIEW', 'Realestate Manager'),
(162, '_REALESTATE_MANAGER_LABEL_REVIEW_TITLE', 'Realestate Manager'),
(163, '_REALESTATE_MANAGER_LABEL_REVIEW_RATING', 'Realestate Manager'),
(164, '_REALESTATE_MANAGER_LABEL_REVIEW_COMMENT', 'Realestate Manager'),
(165, '_REALESTATE_MANAGER_LABEL_ANONYMOUS', 'Realestate Manager'),
(166, '_REALESTATE_MANAGER_LABEL_FEATURED_CLICKS', 'Realestate Manager'),
(167, '_REALESTATE_MANAGER_LABEL_FEATURED_SHOWS', 'Realestate Manager'),
(168, '_REALESTATE_MANAGER_INFOTEXT_JS_REVIEW_TITLE', 'Realestate Manager'),
(169, '_REALESTATE_MANAGER_INFOTEXT_JS_REVIEW_COMMENT', 'Realestate Manager'),
(170, '_REALESTATE_MANAGER_INFOTEXT_JS_REVIEW_RATING', 'Realestate Manager'),
(171, '_REALESTATE_MANAGER_INFOTEXT_JS_RENT_REQ_NAME', 'Realestate Manager'),
(172, '_REALESTATE_MANAGER_INFOTEXT_JS_RENT_REQ_EMAIL', 'Realestate Manager'),
(173, '_REALESTATE_MANAGER_INFOTEXT_JS_RENT_REQ_MAILING', 'Realestate Manager'),
(174, '_REALESTATE_MANAGER_INFOTEXT_JS_RENT_REQ_UNTIL', 'Realestate Manager'),
(175, '_REALESTATE_MANAGER_INFOTEXT_JS_RENT_REQ_ALERT', 'Realestate Manager'),
(176, '_REALESTATE_MANAGER_INFOTEXT_JS_RENT_REQ_DATE', 'Realestate Manager'),
(177, '_REALESTATE_MANAGER_LANGUAGE_NOT_USED', 'Realestate Manager'),
(178, '_REALESTATE_MANAGER_LANGUAGE_PTBR', 'Realestate Manager'),
(179, '_REALESTATE_MANAGER_LANGUAGE_DK', 'Realestate Manager'),
(180, '_REALESTATE_MANAGER_LANGUAGE_DUT', 'Realestate Manager'),
(181, '_REALESTATE_MANAGER_LANGUAGE_ENG', 'Realestate Manager'),
(182, '_REALESTATE_MANAGER_LANGUAGE_FAR', 'Realestate Manager'),
(183, '_REALESTATE_MANAGER_LANGUAGE_FRE', 'Realestate Manager'),
(184, '_REALESTATE_MANAGER_LANGUAGE_GER', 'Realestate Manager'),
(185, '_REALESTATE_MANAGER_LANGUAGE_ITA', 'Realestate Manager'),
(186, '_REALESTATE_MANAGER_LANGUAGE_PR', 'Realestate Manager'),
(187, '_REALESTATE_MANAGER_LANGUAGE_ROM', 'Realestate Manager'),
(188, '_REALESTATE_MANAGER_LANGUAGE_RUS', 'Realestate Manager'),
(189, '_REALESTATE_MANAGER_LANGUAGE_SPA', 'Realestate Manager'),
(190, '_REALESTATE_MANAGER_LANGUAGE_SWE', 'Realestate Manager'),
(191, '_REALESTATE_MANAGER_NO', 'Realestate Manager'),
(192, '_REALESTATE_MANAGER_YES', 'Realestate Manager'),
(193, '_REALESTATE_MANAGER_IS_EDITED', 'Realestate Manager'),
(194, '_REALESTATE_MANAGER_ERROR_DEL', 'Realestate Manager'),
(195, '_REALESTATE_MANAGER_ADMIN_CONFIG_FRONTEND', 'Realestate Manager'),
(196, '_REALESTATE_MANAGER_ADMIN_CONFIG_BACKEND', 'Realestate Manager'),
(197, '_REALESTATE_MANAGER_ADMIN_CONFIG_HOUSEID_AUTO_INCREMENT', 'Realestate Manager'),
(198, '_REALESTATE_MANAGER_ADMIN_CONFIG_HOUSEID_AUTO_INCREMENT_TT_HEAD', 'Realestate Manager'),
(199, '_REALESTATE_MANAGER_ADMIN_CONFIG_HOUSEID_AUTO_INCREMENT_TT_BODY', 'Realestate Manager'),
(200, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD', 'Realestate Manager'),
(201, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_TT_HEAD', 'Realestate Manager'),
(202, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_TT_BODY', 'Realestate Manager'),
(203, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(204, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_LOCATION_TT_HEAD', 'Realestate Manager'),
(205, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_LOCATION_TT_BODY', 'Realestate Manager'),
(206, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_SHOW', 'Realestate Manager'),
(207, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_SHOW_TT_HEAD', 'Realestate Manager'),
(208, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_SHOW_TT_BODY', 'Realestate Manager'),
(209, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEWS_SHOW', 'Realestate Manager'),
(210, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEWS_SHOW_TT_HEAD', 'Realestate Manager'),
(211, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEWS_SHOW_TT_BODY', 'Realestate Manager'),
(212, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEWS_REGISTRATIONLEVEL', 'Realestate Manager'),
(213, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEWS_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(214, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEWS_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(215, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENTSTATUS_SHOW', 'Realestate Manager'),
(216, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENTSTATUS_SHOW_TT_HEAD', 'Realestate Manager'),
(217, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENTSTATUS_SHOW_TT_BODY', 'Realestate Manager'),
(218, '_REALESTATE_MANAGER_ADMIN_CONFIG_HOUSESTATUS_SHOW', 'Realestate Manager'),
(219, '_REALESTATE_MANAGER_ADMIN_CONFIG_HOUSESTATUS_SHOW_TT_BODY', 'Realestate Manager'),
(220, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENTREQUEST_REGISTRATIONLEVEL', 'Realestate Manager'),
(221, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENTREQUEST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(222, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENTREQUEST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(223, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRICE_SHOW', 'Realestate Manager'),
(224, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRICE_SHOW_TT_HEAD', 'Realestate Manager'),
(225, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRICE_SHOW_TT_BODY', 'Realestate Manager'),
(226, '_REALESTATE_MANAGER_ADMIN_CONFIG_ITEM_IN_PAGE', 'Realestate Manager'),
(227, '_REALESTATE_MANAGER_ADMIN_CONFIG_PAGE_SHOW_TT_BODY', 'Realestate Manager'),
(228, '_REALESTATE_MANAGER_ADMIN_CONFIG_PAGE_SHOW_TT_HEAD', 'Realestate Manager'),
(229, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTO_SIZE', 'Realestate Manager'),
(230, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTO_SIZE_TT_HEAD', 'Realestate Manager'),
(231, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTO_SIZE_TT_BODY', 'Realestate Manager'),
(232, '_REALESTATE_MANAGER_ADMIN_CONFIG_PAGE_ITEMS', 'Realestate Manager'),
(233, '_REALESTATE_MANAGER_ADMIN_CONFIG_PAGE_ITEMS_TT_HEAD', 'Realestate Manager'),
(234, '_REALESTATE_MANAGER_ADMIN_CONFIG_PAGE_ITEMS_TT_BODY', 'Realestate Manager'),
(235, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL', 'Realestate Manager'),
(236, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_TT_HEAD', 'Realestate Manager'),
(237, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_TT_BODY', 'Realestate Manager'),
(238, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL', 'Realestate Manager'),
(239, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_TT_HEAD', 'Realestate Manager'),
(240, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_TT_BODY', 'Realestate Manager'),
(241, '_REALESTATE_MANAGER_ADMIN_REQUEST_RENT', 'Realestate Manager'),
(242, '_REALESTATE_MANAGER_ADMIN_ABOUT', 'Realestate Manager'),
(243, '_REALESTATE_MANAGER_ADMIN_ABOUT_ABOUT', 'Realestate Manager'),
(244, '_REALESTATE_MANAGER_ADMIN_ABOUT_RELEASENOTE', 'Realestate Manager'),
(245, '_REALESTATE_MANAGER_ADMIN_ABOUT_CHANGELOG', 'Realestate Manager'),
(246, '_REALESTATE_MANAGER__HTML_ABOUT', 'Realestate Manager'),
(247, '_REALESTATE_MANAGER__HTML_ABOUT_INTRO', 'Realestate Manager'),
(248, '_REALESTATE_MANAGER_ADMIN_TEXT_WSINFO_TEXT1', 'Realestate Manager'),
(249, '_REALESTATE_MANAGER_ADMIN_TEXT_WSINFO_TEXT2', 'Realestate Manager'),
(250, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_HOUSEID_CHECK', 'Realestate Manager'),
(251, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_HOUSEID', 'Realestate Manager'),
(252, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_CATEGORY', 'Realestate Manager'),
(253, '_REALESTATE_MANAGER_DESC_TITLE', 'Realestate Manager'),
(254, '_REALESTATE_MANAGER_DESC_RENT', 'Realestate Manager'),
(255, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_NAME', 'Realestate Manager'),
(256, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_EMAIL', 'Realestate Manager'),
(257, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_MAILING', 'Realestate Manager'),
(258, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_UNTIL', 'Realestate Manager'),
(259, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_FROM', 'Realestate Manager'),
(260, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_THANKS', 'Realestate Manager'),
(261, '_REALESTATE_MANAGER_LABEL_BUYING_REQUEST_THANKS', 'Realestate Manager'),
(262, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_EMAIL_OBJECT', 'Realestate Manager'),
(263, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_EMAIL_TEXT1', 'Realestate Manager'),
(264, '_REALESTATE_MANAGER_LABEL_RENT_REQUEST_EMAIL_TEXT2', 'Realestate Manager'),
(265, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_SAVE', 'Realestate Manager'),
(266, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_RENT', 'Realestate Manager'),
(267, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_RETURN', 'Realestate Manager'),
(268, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_ACCEPT', 'Realestate Manager'),
(269, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_DECLINE', 'Realestate Manager'),
(270, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_IMPORT', 'Realestate Manager'),
(271, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_EXPORT', 'Realestate Manager'),
(272, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_DELETE_REVIEW', 'Realestate Manager'),
(273, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_EDIT_REVIEW', 'Realestate Manager'),
(274, '_REALESTATE_MANAGER_DOC_GENERAL_INFO', 'Realestate Manager'),
(275, '_REALESTATE_MANAGER_DOC_VERSION', 'Realestate Manager'),
(276, '_REALESTATE_MANAGER_DOC_RELEASE_DATE', 'Realestate Manager'),
(277, '_REALESTATE_MANAGER_DOC_PROJECTLINK', 'Realestate Manager'),
(278, '_REALESTATE_MANAGER_DOC_PROJECT_HOST', 'Realestate Manager'),
(279, '_REALESTATE_MANAGER_DOC_LICENSE', 'Realestate Manager'),
(280, '_REALESTATE_MANAGER_DOC_WARRANTY', 'Realestate Manager'),
(281, '_REALESTATE_MANAGER_DOC_DEVELOP', 'Realestate Manager'),
(282, '_REALESTATE_MANAGER_DOC_HOMEPAGE', 'Realestate Manager'),
(283, '_REALESTATE_MANAGER_LABEL_EDOCUMENT_UPLOAD_URL', 'Realestate Manager'),
(284, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_REGISTRATIONLEVEL', 'Realestate Manager'),
(285, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(286, '_REALESTATE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(287, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRICE_REGISTRATIONLEVEL', 'Realestate Manager'),
(288, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRICE_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(289, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRICE_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(290, '_REALESTATE_MANAGER_SHOW_REVIEW_MANAGER', 'Realestate Manager'),
(291, '_REALESTATE_MANAGER_LABEL_TITLE_HOUSE', 'Realestate Manager'),
(292, '_REALESTATE_MANAGER_LABEL_TITLE_REVIEW', 'Realestate Manager'),
(293, '_REALESTATE_MANAGER_LABEL_REVIEW_KEYGUEST', 'Realestate Manager'),
(294, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_PRINT', 'Realestate Manager'),
(295, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_PRINT_SELECT', 'Realestate Manager'),
(296, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_PRINT_FONT_SIZE', 'Realestate Manager'),
(297, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_PRINT_FORMAT', 'Realestate Manager'),
(298, '_REALESTATE_MANAGER_ADMIN_CONFIG_LICENSE_ALLOW', 'Realestate Manager'),
(299, '_REALESTATE_MANAGER_ADMIN_CONFIG_LICENSE_ALLOW_TT_BODY', 'Realestate Manager'),
(300, '_REALESTATE_MANAGER_ADMIN_CONFIG_LICENSE_ALLOW_TT_HEAD', 'Realestate Manager'),
(301, '_LICENSE_AGREEMENT_TITLE', 'Realestate Manager'),
(302, '_LICENSE_AGREEMENT_ACCEPT', 'Realestate Manager'),
(303, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYNOW_SHOW', 'Realestate Manager'),
(304, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYNOW_SHOW_TT_HEAD', 'Realestate Manager'),
(305, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYNOW_SHOW_TT_BODY', 'Realestate Manager'),
(306, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYNOW_REGISTRATIONLEVEL', 'Realestate Manager'),
(307, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYNOW_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(308, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYNOW_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(309, '_REALESTATE_MANAGER_ADMIN_ENTIRE_BU', 'Realestate Manager'),
(310, '_REALESTATE_MANAGER_ADMIN_ENTIRE_RECOVER', 'Realestate Manager'),
(311, '_REALESTATE_MANAGER_SHOW_IMPEXP_CONF', 'Realestate Manager'),
(312, '_REALESTATE_MANAGER_SHOW_IMPORT_WARNING_MESSAG', 'Realestate Manager'),
(313, '_REALESTATE_MANAGER_SHOW_EXPORT_WARNING_MESSAG', 'Realestate Manager'),
(314, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_SEND', 'Realestate Manager'),
(315, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_SEND_TT_HEAD', 'Realestate Manager'),
(316, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_SEND_TT_BODY', 'Realestate Manager'),
(317, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_REGISTRATIONLEVEL', 'Realestate Manager'),
(318, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(319, '_REALESTATE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(320, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_SEND', 'Realestate Manager'),
(321, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_SEND_TT_HEAD', 'Realestate Manager'),
(322, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_SEND_TT_BODY', 'Realestate Manager'),
(323, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_REGISTRATIONLEVEL', 'Realestate Manager'),
(324, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(325, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(326, '_REALESTATE_MANAGER_LABEL_TITLE_REVIEW_COMMENT', 'Realestate Manager'),
(327, '_REALESTATE_MANAGER_ADMIN_CONFIG_PICTURE_IN_CATEGORY_TT_HEAD', 'Realestate Manager'),
(328, '_REALESTATE_MANAGER_ADMIN_CONFIG_PICTURE_IN_CATEGORY_TT_BODY', 'Realestate Manager'),
(329, '_REALESTATE_MANAGER_ADMIN_CONFIG_SUBCATEGORY_SHOW', 'Realestate Manager'),
(330, '_REALESTATE_MANAGER_ADMIN_CONFIG_SUBCATEGORY_SHOW_TT_HEAD', 'Realestate Manager'),
(331, '_REALESTATE_MANAGER_ADMIN_CONFIG_SUBCATEGORY_SHOW_TT_BODY', 'Realestate Manager'),
(332, '_REALESTATE_MANAGER_MESSAGE_RETURN_HOUSES', 'Realestate Manager'),
(333, '_REALESTATE_MANAGER_TOOLBAR_RENT_HOUSES', 'Realestate Manager'),
(334, '_REALESTATE_MANAGER_TOOLBAR_RETURN_HOUSES', 'Realestate Manager'),
(335, '_REALESTATE_MANAGER_TOOLBAR_ACCEPT_REQUEST', 'Realestate Manager'),
(336, '_REALESTATE_MANAGER_TOOLBAR_DECLINE_REQUEST', 'Realestate Manager'),
(337, '_REALESTATE_MANAGER_TOOLBAR_IMPORT', 'Realestate Manager'),
(338, '_REALESTATE_MANAGER_TOOLBAR_EXPORT', 'Realestate Manager'),
(339, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_LISTING_TYPE', 'Realestate Manager'),
(340, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_ADDRESS', 'Realestate Manager'),
(341, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_PRICE', 'Realestate Manager'),
(342, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_TITLE', 'Realestate Manager'),
(343, '_REALESTATE_MANAGER_INFOTEXT_JS_ROOMS', 'Realestate Manager'),
(344, '_REALESTATE_MANAGER_INFOTEXT_JS_BATHROOMS', 'Realestate Manager'),
(345, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_YEAR', 'Realestate Manager'),
(346, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_AREA', 'Realestate Manager'),
(347, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_LOT_SIZE', 'Realestate Manager'),
(348, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_HOUSE_SIZE', 'Realestate Manager'),
(349, '_REALESTATE_MANAGER_INFOTEXT_JS_BUY_REQ_NAME', 'Realestate Manager'),
(350, '_REALESTATE_MANAGER_INFOTEXT_JS_BUY_REQ_EMAIL', 'Realestate Manager'),
(351, '_REALESTATE_MANAGER_INFOTEXT_JS_BUY_REQ_PHONE', 'Realestate Manager'),
(352, '_REALESTATE_MANAGER_LABEL_LISTING_TYPE', 'Realestate Manager'),
(353, '_REALESTATE_MANAGER_LABEL_LISTING_STATUS', 'Realestate Manager'),
(354, '_REALESTATE_MANAGER_LABEL_ROOMS', 'Realestate Manager'),
(355, '_REALESTATE_MANAGER_LABEL_BATHROOMS', 'Realestate Manager'),
(356, '_REALESTATE_MANAGER_LABEL_AGENT', 'Realestate Manager'),
(357, '_REALESTATE_MANAGER_LABEL_CONTACT_AGENT', 'Realestate Manager'),
(358, '_REALESTATE_MANAGER_LABEL_AGENT_INFO', 'Realestate Manager'),
(359, '_REALESTATE_MANAGER_LABEL_PHOTOS', 'Realestate Manager'),
(360, '_REALESTATE_MANAGER_LABEL_PRICING', 'Realestate Manager'),
(361, '_REALESTATE_MANAGER_LABEL_OVERVIEW', 'Realestate Manager'),
(362, '_REALESTATE_MANAGER_LABEL_AMENITIES', 'Realestate Manager'),
(363, '_REALESTATE_MANAGER_LABEL_BOOK_NOW', 'Realestate Manager'),
(364, '_REALESTATE_MANAGER_LABEL_EXPIRATION_DATE', 'Realestate Manager'),
(365, '_REALESTATE_MANAGER_LABEL_LOT_SIZE', 'Realestate Manager'),
(366, '_REALESTATE_MANAGER_LABEL_HOUSE_SIZE', 'Realestate Manager'),
(367, '_REALESTATE_MANAGER_LABEL_GARAGES', 'Realestate Manager'),
(368, '_REALESTATE_MANAGER_LABEL_APPROVED', 'Realestate Manager'),
(369, '_REALESTATE_MANAGER_REQUEST_PHONE', 'Realestate Manager'),
(370, '_REALESTATE_MANAGER_HEADER_REQUIREMENT_FIELDS', 'Realestate Manager'),
(371, '_REALESTATE_MANAGER_HEADER_RECOMMENDED_FIELDS', 'Realestate Manager'),
(372, '_REALESTATE_MANAGER_HEADER_ADDRESS_FIELDS', 'Realestate Manager'),
(373, '_REALESTATE_MANAGER_HEADER_OPTIONAL_FIELDS', 'Realestate Manager'),
(374, '_REALESTATE_MANAGER_HEADER_PHOTO_MANAGE', 'Realestate Manager'),
(375, '_REALESTATE_MANAGER_HEADER_PHOTOGALERY', 'Realestate Manager'),
(376, '_REALESTATE_MANAGER_HEADER_ADVERTISMENT', 'Realestate Manager'),
(377, '_REALESTATE_MANAGER_LABEL_BUYING', 'Realestate Manager'),
(378, '_REALESTATE_MANAGER_ADMIN_SALE_MANAGER', 'Realestate Manager'),
(379, '_REALESTATE_MANAGER_LABEL_BUTTON_SEND_MESSAGE', 'Realestate Manager'),
(380, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND', 'Realestate Manager'),
(381, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND_TT_HEAD', 'Realestate Manager'),
(382, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND_TT_BODY', 'Realestate Manager'),
(383, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL', 'Realestate Manager'),
(384, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(385, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(386, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL', 'Realestate Manager'),
(387, '_REALESTATE_MANAGER_ADMIN_CONFIG', 'Realestate Manager'),
(388, '_REALESTATE_MANAGER_ADMIN_REMOVE_MAIN_PHOTO', 'Realestate Manager'),
(389, '_REALESTATE_MANAGER_ADMIN_NEW_PHOTO', 'Realestate Manager'),
(390, '_REALESTATE_MANAGER_HOUSE_RENT_OUT', 'Realestate Manager'),
(391, '_REALESTATE_MANAGER_LABEL_ACCESSED_FOR_RENT', 'Realestate Manager'),
(392, '_REALESTATE_MANAGER_LABEL_ACCESSED_FOR_SALE', 'Realestate Manager'),
(393, '_REALESTATE_MANAGER_LABEL_RENT_RETURN', 'Realestate Manager'),
(394, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB', 'Realestate Manager'),
(395, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_TT_HEAD', 'Realestate Manager'),
(396, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_TT_BODY', 'Realestate Manager'),
(397, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEW_TAB', 'Realestate Manager'),
(398, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEW_TAB_TT_HEAD', 'Realestate Manager'),
(399, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEW_TAB_TT_BODY', 'Realestate Manager'),
(400, '_REALESTATE_MANAGER_LABEL_BUTTON_ADD_HOUSE', 'Realestate Manager'),
(401, '_REALESTATE_MANAGER_LABEL_BUTTON_PUBLISH', 'Realestate Manager'),
(402, '_REALESTATE_MANAGER_LABEL_BUTTON_UNPUBLISH', 'Realestate Manager'),
(403, '_REALESTATE_MANAGER_LABEL_BUTTON_DELETE', 'Realestate Manager'),
(404, '_REALESTATE_MANAGER_LABEL_BUTTON_RETURN_HOUSE_FROM_RENT', 'Realestate Manager'),
(405, '_REALESTATE_MANAGER_LABEL_BUTTON_RENT', 'Realestate Manager'),
(406, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_SHOW', 'Realestate Manager'),
(407, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_SHOW_TT_HEAD', 'Realestate Manager'),
(408, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_SHOW_TT_BODY', 'Realestate Manager'),
(409, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_REGISTRATIONLEVEL', 'Realestate Manager'),
(410, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(411, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(412, '_REALESTATE_MANAGER_LABEL_CONTACTS', 'Realestate Manager'),
(413, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS', 'Realestate Manager'),
(414, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_TT_HEAD', 'Realestate Manager'),
(415, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_TT_BODY', 'Realestate Manager'),
(416, '_REALESTATE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(417, '_REALESTATE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION_TT_BODY', 'Realestate Manager'),
(418, '_REALESTATE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION_TT_HEAD', 'Realestate Manager'),
(419, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEWS_TAB_REGISTRATIONLEVEL', 'Realestate Manager'),
(420, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEWS_TAB_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(421, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEWS_TAB_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(422, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_REGISTRATIONLEVEL', 'Realestate Manager'),
(423, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(424, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(425, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_REGISTRATIONLEVEL', 'Realestate Manager'),
(426, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(427, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(428, '_REALESTATE_MANAGER_LABEL_UNAVAILABLE_FOR_RENT', 'Realestate Manager'),
(429, '_REALESTATE_MANAGER_LABEL_REAL_ESTATE_THANKS', 'Realestate Manager'),
(430, '_REALESTATE_MANAGER_LABEL_AVAILABLE_FOR_RENT_FROM', 'Realestate Manager'),
(431, '_REALESTATE_MANAGER_LABEL_AVAILABLE_FOR_RENT_UNTIL', 'Realestate Manager'),
(432, '_REALESTATE_MANAGER_LABEL_SEARCH_NOTHING_FOUND', 'Realestate Manager'),
(433, '_REALESTATE_MANAGER_TAB_DESCRIPTION', 'Realestate Manager'),
(434, '_REALESTATE_MANAGER_TAB_LOCATION', 'Realestate Manager'),
(435, '_REALESTATE_MANAGER_TAB_ALL', 'Realestate Manager'),
(436, '_REALESTATE_MANAGER_TAB_REVIEWS', 'Realestate Manager'),
(437, '_REALESTATE_MANAGER_OPTION_SELECT', 'Realestate Manager'),
(438, '_REALESTATE_MANAGER_OPTION_FOR_RENT', 'Realestate Manager'),
(439, '_REALESTATE_MANAGER_OPTION_FOR_SALE', 'Realestate Manager'),
(440, '_REALESTATE_MANAGER_OPTION_LISTING_STATUS', 'Listing Status'),
(441, '_REALESTATE_MANAGER_OPTION_PROPERTY_TYPE', 'Property type'),
(442, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_ANSWER', 'Realestate Manager'),
(443, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_TT_HEAD', 'Realestate Manager'),
(444, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_TT_BODY', 'Realestate Manager'),
(445, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM', 'Realestate Manager'),
(446, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM_TT_BODY', 'Realestate Manager'),
(447, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM_TT_HEAD', 'Realestate Manager'),
(448, '_REALESTATE_MANAGER_SHOW_SEARCH_HOUSEID', 'Realestate Manager'),
(449, '_REALESTATE_MANAGER_SHOW_SEARCH_OWNER', 'Realestate Manager'),
(450, '_REALESTATE_MANAGER_SHOW_SEARCH_EXACTLY', 'Realestate Manager'),
(451, '_REALESTATE_MANAGER_EMAIL_RENT_ANSWER_SUBJECT', 'Realestate Manager'),
(452, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM', 'Realestate Manager'),
(453, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM_TT_BODY', 'Realestate Manager'),
(454, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM_TT_HEAD', 'Realestate Manager'),
(455, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM_DESCTIPTION', 'Realestate Manager'),
(456, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER', 'Realestate Manager'),
(457, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_TT_HEAD', 'Realestate Manager'),
(458, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_TT_BODY', 'Realestate Manager'),
(459, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_ACCEPTED', 'Realestate Manager'),
(460, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_DECLINED', 'Realestate Manager'),
(461, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_EDIT_RENT', 'Realestate Manager'),
(462, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL', 'Realestate Manager'),
(463, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(464, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(465, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_SHOW', 'Realestate Manager'),
(466, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_HEAD', 'Realestate Manager'),
(467, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_BODY', 'Realestate Manager'),
(468, '_REALESTATE_MANAGER_CONFIG_OWNER_SHOW', 'Realestate Manager'),
(469, '_REALESTATE_MANAGER_CONFIG_OWNER_SHOW_TT_HEAD', 'Realestate Manager'),
(470, '_REALESTATE_MANAGER_CONFIG_OWNER_SHOW_TT_BODY', 'Realestate Manager'),
(471, '_REALESTATE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL', 'Realestate Manager'),
(472, '_REALESTATE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(473, '_REALESTATE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(474, '_REALESTATE_MANAGER_CONFIG_RSS_SHOW', 'Realestate Manager'),
(475, '_REALESTATE_MANAGER_CONFIG_RSS_SHOW_TT_BODY', 'Realestate Manager'),
(476, '_REALESTATE_MANAGER_CONFIG_RSS_SHOW_TT_HEAD', 'Realestate Manager'),
(477, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_LIST', 'Realestate Manager'),
(478, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_GALLERY', 'Realestate Manager'),
(479, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_LIST_GALLERY', 'Realestate Manager'),
(480, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE', 'Realestate Manager'),
(481, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_TT_HEAD', 'Realestate Manager'),
(482, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_TT_BODY', 'Realestate Manager'),
(483, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REGISTRATIONLEVEL', 'Realestate Manager'),
(484, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD_TT_BODY', 'Realestate Manager'),
(485, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD', 'Realestate Manager'),
(486, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD_TT_HEAD', 'Realestate Manager'),
(487, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(488, '_REALESTATE_MANAGER_CONFIG_APPROVE_REGISTRATIONLEVEL', 'Realestate Manager'),
(489, '_REALESTATE_MANAGER_CONFIG_APPROVE_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(490, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD_TT_BODY', 'Realestate Manager'),
(491, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD', 'Realestate Manager'),
(492, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD_TT_HEAD', 'Realestate Manager'),
(493, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL', 'Realestate Manager'),
(494, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(495, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(496, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL', 'Realestate Manager'),
(497, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(498, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(499, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL', 'Realestate Manager'),
(500, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(501, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(502, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW', 'Realestate Manager'),
(503, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW_TT_HEAD', 'Realestate Manager'),
(504, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW_TT_BODY', 'Realestate Manager'),
(505, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW', 'Realestate Manager'),
(506, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW_TT_HEAD', 'Realestate Manager'),
(507, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW_TT_BODY', 'Realestate Manager'),
(508, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW', 'Realestate Manager'),
(509, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW_TT_HEAD', 'Realestate Manager'),
(510, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW_TT_BODY', 'Realestate Manager'),
(511, '_REALESTATE_MANAGER_LABEL_TITLE_USER_HOUSES', 'Realestate Manager'),
(512, '_REALESTATE_MANAGER_LABEL_DESCRIPTION', 'Realestate Manager'),
(513, '_REALESTATE_MANAGER_LABEL_YEAR', 'Realestate Manager'),
(514, '_REALESTATE_MANAGER_LABEL_OWNER', 'Realestate Manager'),
(515, '_REALESTATE_MANAGER_ERROR_HAVENOT_HOUSES_RSS', 'Realestate Manager'),
(516, '_REALESTATE_MANAGER_HAVENOT_HOUSES', 'Realestate Manager'),
(517, '_REALESTATE_MANAGER_DELETE_HOUSES', 'Realestate Manager'),
(518, '_REALESTATE_MANAGER_ERROR_NOT_SELECTED', 'Realestate Manager'),
(519, '_REALESTATE_MANAGER_NUMBER_HOUSES', 'Realestate Manager'),
(520, '_REALESTATE_MANAGER_LABEL_OWNERS', 'Realestate Manager'),
(521, '_REALESTATE_MANAGER_ERROR_ACCESS_PAGE', 'Realestate Manager'),
(522, '_REALESTATE_MANAGER_LABEL_TITLE_OWNERSLIST', 'Realestate Manager'),
(523, '_REALESTATE_MANAGER_LABEL_BUTTON_OWNERSLIST', 'Realestate Manager'),
(524, '_REALESTATE_MANAGER_LABEL_SHOW_MY_HOUSES', 'Realestate Manager'),
(525, '_REALESTATE_MANAGER_LABEL_TITLE_MY_HOUSES', 'Realestate Manager'),
(526, '_REALESTATE_MANAGER_LABEL_PUBLISH', 'Realestate Manager'),
(527, '_REALESTATE_MANAGER_LABEL_UNPUBLISH', 'Realestate Manager'),
(528, '_REALESTATE_MANAGER_LABEL_DELETE', 'Realestate Manager'),
(529, '_REALESTATE_MANAGER_LABEL_ID', 'Realestate Manager'),
(530, '_REALESTATE_MANAGER_LABEL_EDIT', 'Realestate Manager'),
(531, '_REALESTATE_MANAGER_ADMIN_FULL_XML', 'Realestate Manager'),
(532, '_REALESTATE_MANAGER_SHOW_RENT_EDIT', 'Realestate Manager'),
(533, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_SEND', 'Realestate Manager'),
(534, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_SEND_TT_HEAD', 'Realestate Manager'),
(535, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_SEND_TT_BODY', 'Realestate Manager'),
(536, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_REGISTRATIONLEVEL', 'Realestate Manager'),
(537, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(538, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(539, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW', 'Realestate Manager'),
(540, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW_TT_HEAD', 'Realestate Manager'),
(541, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW_TT_BODY', 'Realestate Manager'),
(542, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL', 'Realestate Manager'),
(543, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(544, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(545, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE', 'Realestate Manager'),
(546, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE_TT_BODY', 'Realestate Manager'),
(547, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE_TT_HEAD', 'Realestate Manager'),
(548, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE', 'Realestate Manager'),
(549, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE_TT_HEAD', 'Realestate Manager'),
(550, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE_TT_BODY', 'Realestate Manager'),
(551, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE', 'Realestate Manager'),
(552, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE_TT_HEAD', 'Realestate Manager'),
(553, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE_TT_BODY', 'Realestate Manager'),
(554, '_REALESTATE_MANAGER_HOUSE_THUMBNAIL_SETTINGS', 'Realestate Manager'),
(555, '_REALESTATE_MANAGER_ADMIN_THUMBNAIL_TT_BODY', 'Realestate Manager'),
(556, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL', 'Realestate Manager'),
(557, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_TT_HEAD', 'Realestate Manager'),
(558, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_TT_BODY', 'Realestate Manager'),
(559, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY', 'Realestate Manager'),
(560, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_TT_HEAD', 'Realestate Manager'),
(561, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_TT_BODY', 'Realestate Manager'),
(562, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS', 'Realestate Manager'),
(563, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS_TT_HEAD', 'Realestate Manager'),
(564, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS_TT_BODY', 'Realestate Manager'),
(565, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL', 'Realestate Manager'),
(566, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL_TT_HEAD', 'Realestate Manager'),
(567, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL_TT_BODY', 'Realestate Manager'),
(568, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP', 'Realestate Manager'),
(569, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP_TT_HEAD', 'Realestate Manager'),
(570, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP_TT_BODY', 'Realestate Manager'),
(571, '_REALESTATE_MANAGER_ADMIN_UPDATE', 'Realestate Manager'),
(572, '_REALESTATE_MANAGER_ADMIN_UPDATE_TT_HEAD', 'Realestate Manager'),
(573, '_REALESTATE_MANAGER_ADMIN_UPDATE_TT_BODY', 'Realestate Manager'),
(574, '_REALESTATE_MANAGER_ERROR_CATEGORIES', 'Realestate Manager'),
(575, '_REALESTATE_MANAGER_LABEL_TITLE_RENT_REQUEST', 'Realestate Manager'),
(576, '_REALESTATE_MANAGER_ERROR_HOUSE_NOT_PUBLISHED', 'Realestate Manager'),
(577, '_REALESTATE_MANAGER_ERROR_HOUSE_NOT_APPROVED', 'Realestate Manager'),
(578, '_REALESTATE_MANAGER_LABEL_TITLE_EDIT_HOUSE', 'Realestate Manager'),
(579, '_REALESTATE_MANAGER_LABEL_TITLE_ADD_HOUSE', 'Realestate Manager'),
(580, '_REALESTATE_MANAGER_WARNING_NO_LOGIN', 'Realestate Manager'),
(581, '_REALESTATE_MANAGER_LABEL_CLICKMAP', 'Realestate Manager'),
(582, '_REALESTATE_MANAGER_LABEL_DATE', 'Realestate Manager'),
(583, '_REALESTATE_MANAGER_NO_PICTURE_BIG', 'Realestate Manager'),
(584, '_REALESTATE_MANAGER_LABEL_BUTTON_EDIT_HOUSE', 'Realestate Manager'),
(585, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM_DESCTIPTION', 'Realestate Manager'),
(586, '_REALESTATE_MANAGER_LABEL_ADVANCED_SEARCH', 'Realestate Manager'),
(587, '_REALESTATE_MANAGER_LABEL_FROM', 'Realestate Manager'),
(588, '_REALESTATE_MANAGER_LABEL_TO', 'Realestate Manager'),
(589, '_REALESTATE_MANAGER_LABEL_ALL', 'Realestate Manager'),
(590, '_REALESTATE_MANAGER_LABEL_AVAILABLE_FOR_RENT', 'Realestate Manager'),
(591, '_REALESTATE_MANAGER_SHOW_SEARCH_YEAR', 'Realestate Manager'),
(592, '_REALESTATE_MANAGER_SHOW_SEARCH_UNTIL', 'Realestate Manager'),
(593, '_REALESTATE_MANAGER_LABEL_CALENDAR_WEEK', 'Realestate Manager'),
(594, '_REALESTATE_MANAGER_LABEL_CALENDAR_WEEKEND', 'Realestate Manager'),
(595, '_REALESTATE_MANAGER_LABEL_CALENDAR_MIDWEEK', 'Realestate Manager'),
(596, '_REALESTATE_MANAGER_LABEL_CALENDAR_YEAR', 'Realestate Manager'),
(597, '_REALESTATE_MANAGER_LABEL_CALENDAR_MONTH', 'Realestate Manager'),
(598, '_REALESTATE_MANAGER_LABEL_CALENDAR_CALENDAR', 'Realestate Manager'),
(599, '_REALESTATE_MANAGER_LABEL_CALENDAR_ADD_PRICE', 'Realestate Manager'),
(600, '_REALESTATE_MANAGER_LABEL_CALENDAR_SELECT_DELETE', 'Realestate Manager'),
(601, '_REALESTATE_MANAGER_LABEL_CALENDAR_NEW_PRICE', 'Realestate Manager'),
(602, '_REALESTATE_MANAGER_BUTTON_CALENDAR_ADD_NEW_PRICE', 'Realestate Manager'),
(603, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL', 'Realestate Manager'),
(604, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(605, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(606, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_SHOW', 'Realestate Manager'),
(607, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_SHOW_TT_HEAD', 'Realestate Manager'),
(608, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_SHOW_TT_BODY', 'Realestate Manager'),
(609, '_REALESTATE_MANAGER_CONFIG_CALENDAR_SHOW', 'Realestate Manager'),
(610, '_REALESTATE_MANAGER_CONFIG_CALENDAR_SHOW_TT_HEAD', 'Realestate Manager'),
(611, '_REALESTATE_MANAGER_CONFIG_CALENDAR_SHOW_TT_BODY', 'Realestate Manager'),
(612, '_REALESTATE_MANAGER_ADMIN_CONFIG_PLACEHOLDER', 'Realestate Manager'),
(613, '_REALESTATE_MANAGER_ADMIN_CONFIG_PLACEHOLDER_TT_BODY', 'Realestate Manager'),
(614, '_REALESTATE_MANAGER_ADMIN_CONFIG_PLACEHOLDER_TT_HEAD', 'Realestate Manager'),
(615, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER', 'Realestate Manager'),
(616, '_REALESTATE_MANAGER_LABEL_LANGUAGE_MANAGER_LANG_TAG', 'Realestate Manager'),
(617, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_CONST', 'Realestate Manager'),
(618, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_VALUE_CONST', 'Realestate Manager'),
(619, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_SEARCH_CONST', 'Realestate Manager'),
(620, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_SEARCH_VALUE_CONST', 'Realestate Manager'),
(621, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_SYS_TYPE', 'Realestate Manager'),
(622, '_REALESTATE_MANAGER_LABEL_LANGUAGE', 'Realestate Manager'),
(623, '_REALESTATE_MANAGER_ADMIN_FEATURED_MANAGER', 'Realestate Manager'),
(624, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE', 'Realestate Manager'),
(625, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_CATEGORY', 'Realestate Manager'),
(626, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_PUBLISHED', 'Realestate Manager'),
(627, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_NAME_ALIAS', 'Realestate Manager'),
(628, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_CATEGORY_ALIAS', 'Realestate Manager'),
(629, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE_MANAGER', 'Realestate Manager'),
(630, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_IMAGE', 'Realestate Manager'),
(631, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_REMOVE', 'Realestate Manager'),
(632, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_RECOMMENDED_IMAGE', 'Realestate Manager'),
(633, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES', 'Realestate Manager'),
(634, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_TT_BODY', 'Realestate Manager'),
(635, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_TT_HEAD', 'Realestate Manager'),
(636, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE', 'Realestate Manager'),
(637, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE_TT_BODY', 'Realestate Manager'),
(638, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE_TT_HEAD', 'Realestate Manager'),
(639, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW', 'Realestate Manager'),
(640, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW_TT_BODY', 'Realestate Manager'),
(641, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW_TT_HEAD', 'Realestate Manager'),
(642, '_REALESTATE_MANAGER_ADMIN_CONFIG_CURRENCY', 'Realestate Manager'),
(643, '_REALESTATE_MANAGER_ADMIN_CONFIG_CURRENCY_TT_BODY', 'Realestate Manager'),
(644, '_REALESTATE_MANAGER_ADMIN_CONFIG_CURRENCY_TT_HEAD', 'Realestate Manager'),
(645, '_REALESTATE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW', 'Realestate Manager'),
(646, '_REALESTATE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW_TT_BODY', 'Realestate Manager'),
(647, '_REALESTATE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW_TT_HEAD', 'Realestate Manager'),
(648, '_REALESTATE_MANAGER_LABEL_GEOCOOR', 'Realestate Manager'),
(649, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA1_SHOW', 'Realestate Manager'),
(650, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA2_SHOW', 'Realestate Manager'),
(651, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA3_SHOW', 'Realestate Manager'),
(652, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA4_SHOW', 'Realestate Manager'),
(653, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA5_SHOW', 'Realestate Manager'),
(654, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA6_SHOW', 'Realestate Manager'),
(655, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA7_SHOW', 'Realestate Manager'),
(656, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA8_SHOW', 'Realestate Manager'),
(657, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA9_SHOW', 'Realestate Manager'),
(658, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA10_SHOW', 'Realestate Manager'),
(659, '_REALESTATE_MANAGER_LABEL_EXTRA', 'Realestate Manager'),
(660, '_REALESTATE_MANAGER_LABEL_EXTRA1', 'Realestate Manager'),
(661, '_REALESTATE_MANAGER_LABEL_EXTRA2', 'Realestate Manager'),
(662, '_REALESTATE_MANAGER_LABEL_EXTRA3', 'Realestate Manager');
INSERT INTO `ya4mp_rem_const` (`id`, `const`, `sys_type`) VALUES
(663, '_REALESTATE_MANAGER_LABEL_EXTRA4', 'Realestate Manager'),
(664, '_REALESTATE_MANAGER_LABEL_EXTRA5', 'Realestate Manager'),
(665, '_REALESTATE_MANAGER_LABEL_EXTRA6', 'Realestate Manager'),
(666, '_REALESTATE_MANAGER_LABEL_EXTRA7', 'Realestate Manager'),
(667, '_REALESTATE_MANAGER_LABEL_EXTRA8', 'Realestate Manager'),
(668, '_REALESTATE_MANAGER_LABEL_EXTRA9', 'Realestate Manager'),
(669, '_REALESTATE_MANAGER_LABEL_EXTRA10', 'Realestate Manager'),
(670, '_REALESTATE_MANAGER_EXTRA6_SELECTLIST', 'Extra Select'),
(671, '_REALESTATE_MANAGER_EXTRA7_SELECTLIST', 'Extra Select'),
(672, '_REALESTATE_MANAGER_EXTRA8_SELECTLIST', 'Extra Select'),
(673, '_REALESTATE_MANAGER_EXTRA9_SELECTLIST', 'Extra Select'),
(674, '_REALESTATE_MANAGER_EXTRA10_SELECTLIST', 'Extra Select'),
(675, '_REALESTATE_MANAGER_ALLOWED_EXTS', 'Realestate Manager'),
(676, '_REALESTATE_MANAGER_ALLOWED_EXTS_IMG', 'Realestate Manager'),
(677, '_REALESTATE_MANAGER_ADMIN_HOUSE_PAGE_LAYOUT', 'Realestate Manager'),
(678, '_REALESTATE_MANAGER_ADMIN_ALL_HOUSES_LAYOUT', 'Realestate Manager'),
(679, '_REALESTATE_MANAGER_PRICE_FORMAT', 'Realestate Manager'),
(680, '_REALESTATE_MANAGER_PRICE_FORMAT_TT_BODY', 'Realestate Manager'),
(681, '_REALESTATE_MANAGER_DATE_TIME_FORMAT', 'Realestate Manager'),
(682, '_REALESTATE_MANAGER_DATE_FORMAT', 'Realestate Manager'),
(683, '_REALESTATE_MANAGER_DATE_FORMAT_INFO', 'Realestate Manager'),
(684, '_REALESTATE_MANAGER_TIME_FORMAT', 'Realestate Manager'),
(685, '_REALESTATE_MANAGER_DATE', 'Realestate Manager'),
(686, '_REALESTATE_MANAGER_TIME', 'Realestate Manager'),
(687, '_REALESTATE_PRICE_UNIT_SHOW', 'Realestate Manager'),
(688, '_REALESTATE_PRICE_UNIT_SHOW_AFTER', 'Realestate Manager'),
(689, '_REALESTATE_PRICE_UNIT_SHOW_BEFORE', 'Realestate Manager'),
(690, '_REALESTATE_MANAGER_PRICE_FORMAT_INFO', 'Realestate Manager'),
(691, '_REALESTATE_PRICE_UNIT_SHOW_INFO', 'Realestate Manager'),
(692, '_REALESTATE_MANAGER_CUSTOM_OWNER_EMAIL', 'Realestate Manager'),
(693, '_REALESTATE_MANAGER_BUTTON_SHOW_ADDRESS', 'Realestate Manager'),
(694, '_REALESTATE_MANAGER_BUTTON_ADD_NEW_PHOTO', 'Realestate Manager'),
(695, '_REALESTATE_MANAGER_LABEL_ORDER_BY', 'Realestate Manager'),
(696, '_REALESTATE_MANAGER_LABEL_SELECT_PHOTO_TO_REMOVE', 'Realestate Manager'),
(697, '_REALESTATE_MANAGER_LABEL_SELECT_PHOTO_FROM_GALLERY', 'Realestate Manager'),
(698, '_REALESTATE_MANAGER_TITLE_TO_TEXTAREA_FOR_ADDFEATURE', 'Realestate Manager'),
(699, '_REALESTATE_MANAGER_TITLE_TO_TEXTAREA_1_FOR_ADDCATEGORY', 'Realestate Manager'),
(700, '_REALESTATE_MANAGER_TITLE_TO_TEXTAREA_2_FOR_ADDCATEGORY', 'Realestate Manager'),
(701, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_GENERAL_INFO', 'Realestate Manager'),
(702, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_ADDITIONAL_INFO', 'Realestate Manager'),
(703, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_PHOTOS_AND_DOCUMENTS', 'Realestate Manager'),
(704, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_OWNER_CONTACTS', 'Realestate Manager'),
(705, '_REALESTATE_MANAGER_ADMIN_LABEL_FEATURE_TAB_1', 'Realestate Manager'),
(706, '_REALESTATE_MANAGER_ADMIN_LABEL_FEATURE_TAB_2', 'Realestate Manager'),
(707, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_1', 'Realestate Manager'),
(708, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_2', 'Realestate Manager'),
(709, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_3', 'Realestate Manager'),
(710, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_4', 'Realestate Manager'),
(711, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_5', 'Realestate Manager'),
(712, '_REALESTATE_MANAGER_HOUSE_IMAGE_HEADER_SETTINGS', 'Realestate Manager'),
(713, '_REALESTATE_MANAGER_TABS_MANAGER_HEADER_SETTINGS', 'Realestate Manager'),
(714, '_REALESTATE_MANAGER_HEADER_LABEL_SELLER_CONTACT_SETTINGS', 'Realestate Manager'),
(715, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_FEATURE_LIST_SETTINGS', 'Realestate Manager'),
(716, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_EXTRA_FIELDS_MANAGER', 'Realestate Manager'),
(717, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_EDOCUMENT_OPTIONS', 'Realestate Manager'),
(718, '_REALESTATE_MANAGER_SETTINGS_COMMON_SETTINGS', 'Realestate Manager'),
(719, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_RENT_REQUEST_OPTIONS', 'Realestate Manager'),
(720, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_BUY_REQUEST_OPTIONS', 'Realestate Manager'),
(721, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_ADD_HOUSE', 'Email Notification'),
(722, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_REVIEW', 'Email Notification'),
(723, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_RENT_REQUEST', 'Email Notification'),
(724, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_RENT_REQUEST_ANSWER', 'Email Notification'),
(725, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_BUYING_REQUEST', 'Email Notification'),
(726, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_BUYING_REQUEST_ANSWER', 'Email Notification'),
(727, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_RENT_BEFORE_END', 'Email Notification'),
(728, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_DESCRIPTION', 'Realestate Manager'),
(729, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_DESCRIPTION_TT_BODY', 'Realestate Manager'),
(730, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_DESCRIPTION_TT_HEAD', 'Realestate Manager'),
(731, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DESCRIPTION', 'Realestate Manager'),
(732, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DESCRIPTION_TT_BODY', 'Realestate Manager'),
(733, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DESCRIPTION_TT_HEAD', 'Realestate Manager'),
(734, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_REQUEST_DESCRIPTION', 'Realestate Manager'),
(735, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_REQUEST_TT_BODY', 'Realestate Manager'),
(736, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_REQUEST_TT_HEAD', 'Realestate Manager'),
(737, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_DESCRIPTION', 'Realestate Manager'),
(738, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_TT_BODY', 'Realestate Manager'),
(739, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_TT_HEAD', 'Realestate Manager'),
(740, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_REVIEW_DESCRIPTION', 'Realestate Manager'),
(741, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_REVIEW_TT_BODY', 'Realestate Manager'),
(742, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_REVIEW_TT_HEAD', 'Realestate Manager'),
(743, '_REALESTATE_MANAGER_SHOW_TABS_SHOW_MY_HOUSES', 'Realestate Manager'),
(744, '_REALESTATE_MANAGER_SHOW_TABS_EDIT_MY_HOUSES', 'Realestate Manager'),
(745, '_REALESTATE_MANAGER_SHOW_TABS_RENT_REQUESTS', 'Realestate Manager'),
(746, '_REALESTATE_MANAGER_SHOW_TABS_BUYING_REQUESTS', 'Realestate Manager'),
(747, '_REALESTATE_MANAGER_ADMIN_ALL_CATEGORIES_LAYOUT_TT_HEAD', 'Realestate Manager'),
(748, '_REALESTATE_MANAGER_ADMIN_SINGLE_CATEGORY_LAYOUT_TT_HEAD', 'Realestate Manager'),
(749, '_REALESTATE_MANAGER_ADMIN_SEARCH_LAYOUT_TT_HEAD', 'Realestate Manager'),
(750, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_TEXT_TT_BODY', 'Realestate Manager'),
(751, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_TEXT_TT_HEAD', 'Realestate Manager'),
(752, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_DROPDOWN_TT_BODY', 'Realestate Manager'),
(753, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_DROPDOWN_TT_HEAD', 'Realestate Manager'),
(754, '_REALESTATE_MANAGER_REVIEW_LABEL_PUBLISHED', 'Realestate Manager'),
(755, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_ON_ADD', 'Realestate Manager'),
(756, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_ON_ADD_TT_BODY', 'Realestate Manager'),
(757, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_ON_ADD_TT_HEAD', 'Realestate Manager'),
(758, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_REGISTRATIONLEVEL', 'Realestate Manager'),
(759, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(760, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(761, '_REALESTATE_MANAGER_ADMIN_CONFIG_LICENSE_TEXT', 'Realestate Manager'),
(762, '_REALESTATE_MANAGER_ADMIN_RENT_REQUESTS', 'Realestate Manager'),
(763, '_REALESTATE_MANAGER_ADMIN_SALE_MANAGER_MENU', 'Realestate Manager'),
(764, '_REALESTATE_MANAGER_ADMIN_IMPORT_EXPORT', 'Realestate Manager'),
(765, '_REALESTATE_MANAGER_LABEL_LANGUAGE_MENU', 'Realestate Manager'),
(766, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS', 'Realestate Manager'),
(767, '_REALESTATE_MANAGER_ADMIN_GROUP', 'Group'),
(768, '_REALESTATE_MANAGER_ADMIN_COUNT_OF_ITEMS', 'Count of houses'),
(769, '_REALESTATE_MANAGER_ADMIN_COUNT_OF_ITEMS_HELP', 'How many houses users can publish from a specific group.'),
(770, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY', 'Show buy'),
(771, '_REALESTATE_MANAGER_ADMIN_ALLOW_PAYPAL_BUY', 'Allow PayPal buy'),
(772, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_RENT', 'Show PayPal rent'),
(773, '_REALESTATE_MANAGER_ADMIN_ALLOW_PAYPAL_RENT', 'Allow PayPal rent'),
(774, '_REALESTATE_MANAGER_ADMIN_YOUR_PAY_PAL_EMAIL', 'Your PayPal email'),
(775, '_REALESTATE_MANAGER_ADMIN_SUCCESSFUL_RETURN', 'Successful return url'),
(776, '_REALESTATE_MANAGER_ADMIN_AFTER_SUCCESSFUL_RETURN', 'After successful payment returns the buyer on your page.'),
(777, '_REALESTATE_MANAGER_ADMIN_IMAGE_URL_PAYPAL', 'Image url'),
(778, '_REALESTATE_MANAGER_ADMIN_AFTER_IMAGE_URL_PAYPAL', 'Add image to PayPal page.'),
(779, '_REALESTATE_MANAGER_ADMIN_CANCEL_RETURN_URL', 'Cancel return url'),
(780, '_REALESTATE_MANAGER_ADMIN_AFTER_CANCEL_RETURN_URL', 'If buyer press cancel in payment page, returns the buyer on your page.'),
(781, '_REALESTATE_MANAGER_ADMIN_REAL_OF_TEST', 'Real(yes) or a test(no) PayPal account'),
(782, '_REALESTATE_MANAGER_ADMIN_REAL_OF_TEST_LABLE', 'If real go to www.paypal.com else go to www.sandbox.paypal.com'),
(783, '_REALESTATE_MANAGER_ADMIN_PAYPAL_LABLE', 'PayPal Options'),
(784, '_REALESTATE_MANAGER_ADMIN_NUMBER_OF_PHOTOS', 'Number of photos'),
(785, '_REALESTATE_MANAGER_ADMIN_NUMBER_OF_PHOTOS_HELP', 'How many photos in gallery users can publish from a specific group.'),
(786, '_REALESTATE_MANAGER_TOTAL_PRICE', 'Total price: '),
(787, '_REALESTATE_MANAGER_RENT_NOW_BY_PAYPAL', 'Go now to PayPal'),
(788, '_REALESTATE_MANAGER_RENT_INSTALL_PAYPAL', 'Payment plugin is not installed'),
(789, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE', 'Special price'),
(790, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_PER_DAY', 'Price per day'),
(791, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_PER_NIGHT', 'Price per night'),
(792, '_REALESTATE_MANAGER_RENT_ADD_SPECIAL_PRICE', 'Add special price'),
(793, '_REALESTATE_MANAGER_FROM', 'From'),
(794, '_REALESTATE_MANAGER_TO', 'To'),
(795, '_REALESTATE_MANAGER_RENT_PRICE_PER_DAY', 'Price per day'),
(796, '_REALESTATE_MANAGER_RENT_CALCULATE', 'Сalculate'),
(797, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_AND_RENT_TIME', 'Special price and rent time'),
(798, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_YES_NO', 'Special price per day("yes") or per night("no")'),
(799, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_YES_NO_HELP', 'if per day calculation all day(example of 2014-02-10 from 2014-02-16 is 7 days) if per night calculation all night (example of 2014-02-10 from 2014-02-16 is 6 nights)'),
(800, '_REALESTATE_MANAGER_RENT_PER_NIGHT', 'Realestate Manager'),
(801, '_REALESTATE_MANAGER_IMAGES', 'Realestate Manager'),
(802, '_REALESTATE_MANAGER_ALLOWED_EXT_DOC', 'TRealestate Manager '),
(803, '_REALESTATE_MANAGER_ALLOWED_EXT_IMAGES', 'Realestate Manager'),
(804, '_REALESTATE_MANAGER_SETTINGS_TAB_LABEL_PRICE', 'Pay'),
(805, '_REALESTATE_MANAGER_LABEL_LANGUAGE_NAME', 'Language'),
(806, '_REALESTATE_MANAGER_LABEL_SELECT_LANGUAGE', 'Select Language'),
(807, '_REALESTATE_MANAGER_ADMIN_LABEL_CLON', 'Clone'),
(808, '_REALESTATE_MANAGER_ADMIN_ABOUT_ORDERS', 'Orders'),
(809, '_REALESTATE_MANAGER_HOUSE_MARKER', '/images/marker-1.png,/images/marker-2.png,/images/marker-3.png,/images/marker-4.png,/images/marker-5.png,/images/marker-6.png,/images/marker-7.png,/images/marker-8.png,/images/marker-9.png,/images/marker-10.png,/images/marker-11.png,/images/marker-12'),
(810, '_REALESTATE_MANAGER_CANCEL_URL_TEXT', 'Message for unsuccessfull payment'),
(811, '_REALESTATE_MANAGER_SUCCESSES_URL_TEXT', 'Message for successfull payment'),
(812, '_REALESTATE_MANAGER_CANCEL_URL_TEXT_TT_BODY', 'Insert the Message on page with notification about unsuccessfull payment'),
(813, '_REALESTATE_MANAGER_SUCCESSES_URL_TEXT_TT_BODY', 'Insert the Message on page with notification about successfull payment'),
(814, '_REALESTATE_MANAGER_MESSAGE_SUCCESSFULL_PAYMENT', 'You do success payment!'),
(815, '_REALESTATE_MANAGER_MESSAGE_UNSUCCESSFULL_PAYMENT', 'You do unsuccess payment!'),
(816, '_REALESTATE_MANAGER_MESSAGE_INSTALL_PLUGIN', 'Please install plugin of payment to enable payment feature'),
(817, '_REALESTATE_MANAGER_LABEL_PLUGIN', 'Plugin'),
(818, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_EMAIL_NOTIFICATION_OPTIONS', 'Email Notification Options'),
(819, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_REVIEW_NOTIFICATION_OPTIONS', 'Review Notification Options'),
(820, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_PRICE_OPTIONS', 'Price Options'),
(821, '_REALESTATE_MANAGER_SETTINGS_HEADER_DATE_TIME_OPTIONS', 'Date&Time Options'),
(822, '_REALESTATE_MANAGER_SETTINGS_GROUP_SETTINGS', 'Realestate Manager'),
(823, '_REALESTATE_MANAGER_SETTINGS_EXTENSIONS_SETTINGS', 'Extension Options'),
(824, '_REALESTATE_MANAGER_SETTINGS_UPDATE_SETTINGS', 'Update Options'),
(825, '_REALESTATE_MANAGER_SETTINGS_HEADER_CATEGORY_OPTIONS', 'Category Options'),
(826, '_REALESTATE_MANAGER_LABEL_VIEW_LISTING', 'Realestate Manager'),
(827, '_REALESTATE_MANAGER_ADMIN_CONFIG_CATEGORY_PHOTO_SIZE', 'Category Options'),
(828, '_REALESTATE_MANAGER_ADMIN_CONFIG_CATEGORY_PHOTO_SIZE_TT_BODY', 'Category Options'),
(829, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_TT_BODY', 'Realestate Manager'),
(830, '_REALESTATE_MANAGER_ADMIN_SELECT_ONE_ITEM', 'Realestate Manager'),
(831, '_REALESTATE_MANAGER_ADMIN_RENT_ALERT_RETURNED', 'Realestate Manager'),
(832, '_REALESTATE_MANAGER_ADMIN_RENT_ASSOCIATED', 'Realestate Manager'),
(833, '_REALESTATE_MANAGER_ADMIN_ALERT_NOT_IN_RENT', 'Realestate Manager'),
(834, '_REALESTATE_MANAGER_ADMIN_NOT_FOR_RENT_ASOC', 'Realestate Manager'),
(835, '_REALESTATE_MANAGER_ADMIN_NOT_FOR_RENT', 'Realestate Manager'),
(836, '_REALESTATE_MANAGER_ADMIN_BAD_DATE_ALERT', 'Realestate Manager'),
(837, '_REALESTATE_MANAGER_ADMIN_NOT_CORRECT_CURRENCY', 'Realestate Manager'),
(838, '_REALESTATE_MANAGER_ADMIN_CLON_ALERT', 'Realestate Manager'),
(839, '_REALESTATE_MANAGER_ADMIN_ONE_REVIEW_ALERT', 'Realestate Manager'),
(840, '_REALESTATE_MANAGER_ADMIN_ONE_CTEGORY_ALERT', 'Realestate Manager'),
(841, '_REALESTATE_MANAGER_ADMIN_ONE_ITEM_ALERT', 'Realestate Manager'),
(842, '_REALESTATE_MANAGER_ADMIN_ONE_AMENITY_ALERT', 'Realestate Manager'),
(843, '_REALESTATE_MANAGER_ADMIN_HOUSE_NOT_IN_RENT', 'Realestate Manager'),
(844, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_URL', 'Realestate Manager'),
(845, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA', 'Realestate Manager'),
(846, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_SEARCH', 'Realestate Manager'),
(847, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_TT_BODY', 'Realestate Manager'),
(848, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_SEARCH_TT_BODY', 'Realestate Manager'),
(849, '_REALESTATE_MANAGER_LABEL_SIZE_SUFFIX', 'Realestate Manager'),
(850, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY_SALE', 'Realestate Manager'),
(851, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY_SALE_TT_BODY', 'Realestate Manager'),
(852, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY_TT_BODY', 'Realestate Manager'),
(853, '_REALESTATE_MANAGER_LABEL_PICTURE_FILE_NOT_ALLOWED', 'Realestate Manager'),
(854, '_REALESTATE_MANAGER_LANG_ASSOCIATE_HOUSES', 'Realestate Manager'),
(855, '_REALESTATE_MANAGER_LANG_ASSOCIATE_CATEGORIES', 'Realestate Manager'),
(856, '_REALESTATE_MANAGER_FOR_HOUSES_WITH_LANG', 'Realestate Manager'),
(857, '_REALESTATE_MANAGER_YOU_HAVE', 'Realestate Manager'),
(858, '_REALESTATE_MANAGER_MAXIMUM_COUNT_HOUSE_FOR_YOUR', 'Realestate Manager'),
(859, '_REALESTATE_MANAGER_TO_ADD_SPRICE_YOU_NEED', 'Realestate Manager'),
(860, '_REALESTATE_MANAGER_MAX_PHOTOS_LIMIT', 'Realestate Manager'),
(861, '_REALESTATE_MANAGER_NO_NUMERIC_PROPERTYID_WARNING', 'Realestate Manager'),
(862, '_REALESTATE_MANAGER_INFOTEXT_JS_INVALID_NUMBER', 'Realestate Manager'),
(863, '_REALESTATE_MANAGER_FILE_MIME_TYPE_NOT_MATCH', 'Realestate Manager'),
(864, '_REALESTATE_MANAGER_YOU_CAN_PUBLISH_ONLY', 'Realestate Manager'),
(865, '_REALESTATE_MANAGER_PLEASE_LOGIN', 'Realestate Manager'),
(866, '_REALESTATE_MANAGER_NEW_HOUSE_ADDED', 'Realestate Manager'),
(867, '_REALESTATE_MANAGER_BUYING_REQUEST_ADDED', 'Realestate Manager'),
(868, '_REALESTATE_MANAGER_NEW_REVIEW_ADDED', 'Realestate Manager'),
(869, '_REALESTATE_MANAGER_NEW_RENT_REQUEST_ADDED', 'Realestate Manager'),
(870, '_REALESTATE_MANAGER_RENT_EXPIRE_NOTICE', 'Realestate Manager'),
(871, '_REALESTATE_MANAGER_HOUSES_EXPIRE_NOTICE', 'Realestate Manager'),
(872, '_REALESTATE_MANAGER_LABEL_FETCHED_SUBCATEGORIES', 'Realestate Manager'),
(873, '_REALESTATE_MANAGER_LABEL_APPLY', 'Realestate Manager'),
(874, '_REALESTATE_MANAGER_LABEL_SAVE_CATEGORY', 'Realestate Manager'),
(875, '_REALESTATE_MANAGER_LABEL_DELETE_ORDER', 'Realestate Manager'),
(876, '_REALESTATE_MANAGER_MUST_RETURN_HOUSES_FROM_RENT', 'Realestate Manager'),
(877, '_REALESTATE_MANAGER_ORDERS_ID', 'Orders'),
(878, '_REALESTATE_MANAGER_ORDERS_TITLE', 'Orders'),
(879, '_REALESTATE_MANAGER_ORDERS_EMAIL', 'Orders'),
(880, '_REALESTATE_MANAGER_ORDERS_DATE', 'Orders'),
(881, '_REALESTATE_MANAGER_ORDERS_STATUS', 'Orders'),
(882, '_REALESTATE_MANAGER_ORDERS_PRICE', 'Orders'),
(883, '_REALESTATE_MANAGER_ORDERS_PAID', 'Orders'),
(884, '_REALESTATE_MANAGER_ORDERS_DETAILS', 'Orders'),
(885, '_REALESTATE_MANAGER_ORDERS_USER', 'Orders'),
(886, '_REALESTATE_MANAGER_ORDERS_USER_NAME', 'Orders'),
(887, '_REALESTATE_MANAGER_ORDERS_DET_ACCEPT', 'Orders'),
(888, '_REALESTATE_MANAGER_ORDERS_DET_SYSTEM', 'Orders'),
(889, '_REALESTATE_MANAGER_ORDERS_DET_EMAIL', 'Orders'),
(890, '_REALESTATE_MANAGER_ORDERS_DET_REASON', 'Orders'),
(891, '_REALESTATE_MANAGER_PAYPAL_ERROR', 'Realestate Manager'),
(892, '_REALESTATE_MANAGER_LOAD_LANGUAGE', 'Realestate Manager'),
(893, '_REALESTATE_MANAGER_LABEL_OWNER_ID', 'Realestate Manager'),
(894, '_REALESTATE_MANAGER_ADMIN_RENT_HISTORY', 'Realestate Manager'),
(895, '_REALESTATE_MANAGER_BUTTON_RENT_HISTORY', 'Realestate Manager'),
(896, '_REALESTATE_MANAGER_ADMIN_REQUEST_RENT_HISTORY', 'Realestate Manager'),
(897, '_REALESTATE_MANAGER_ADMIN_USER_RENT_HISTORY', 'Realestate Manager'),
(898, '_REALESTATE_MANAGER_CURRENCY_ERROR', 'Realestate Manager'),
(899, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_TRACK_KIND', 'Realestate Manager'),
(900, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_TRACK_LANGUAGE', 'Realestate Manager'),
(901, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_TRACK_TITLE', 'Realestate Manager'),
(902, '_REALESTATE_MANAGER_SETTINGS_VIDEO_ERROR_UPLOAD_OFF', 'Realestate Manager'),
(903, '_REALESTATE_MANAGER_SETTINGS_VIDEO_ERROR_POST_MAX_SIZE', 'Realestate Manager'),
(904, '_REALESTATE_MANAGER_SETTINGS_VIDEO_ERROR_UPLOAD_MAX_SIZE', 'Realestate Manager'),
(905, '_REALESTATE_MANAGER_LABEL_VIDEO', 'Realestate Manager'),
(906, '_REALESTATE_MANAGER_LABEL_VIDEO_ATTRIBUTE', 'Realestate Manager'),
(907, '_REALESTATE_MANAGER_LABEL_VIDEO_DELETE', 'Realestate Manager'),
(908, '_REALESTATE_MANAGER_LABEL_ADD_NEW_VIDEO_FILE', 'Realestate Manager'),
(909, '_REALESTATE_MANAGER_LABEL_TRACK', 'Realestate Manager'),
(910, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_URL', 'Realestate Manager'),
(911, '_REALESTATE_MANAGER_LABEL_TRACK_DELETE', 'Realestate Manager'),
(912, '_REALESTATE_MANAGER_LABEL_ADD_NEW_TRACK', 'Realestate Manager'),
(913, '_REALESTATE_MANAGER_LABEL_VIDEO_ADD_ALTERNATIVE_VIDEO', 'Realestate Manager'),
(914, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD', 'Realestate Manager'),
(915, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD_URL', 'Realestate Manager'),
(916, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD_YOUTUBE_CODE', 'Realestate Manager'),
(917, '_REALESTATE_MANAGER_LABEL_PRIOTITY', 'Realestate Manager'),
(918, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_KIND', 'Realestate Manager'),
(919, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_SCRLANG', 'Realestate Manager'),
(920, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_LABEL', 'Realestate Manager'),
(921, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD_ERROR', 'Realestate Manager'),
(922, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_ERROR', 'Realestate Manager'),
(923, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD', 'Realestate Manager'),
(924, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_VIDEOTRATCK_OPTIONS', 'Realestate Manager'),
(925, '_REALESTATE_MANAGER_ADMIN_CONFIG_VIDEO', 'Realestate Manager'),
(926, '_REALESTATE_MANAGER_ALLOWED_EXTS_VIDEO', 'Realestate Manager'),
(927, '_REALESTATE_MANAGER_ALLOWED_EXTS_TRACK', 'Realestate Manager'),
(928, '_REALESTATE_MANAGER_ADMIN_CONFIG_VIDEOS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(929, '_REALESTATE_MANAGER_ADMIN_CONFIG_TRACKS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(930, '_REALESTATE_MANAGER_LABEL_CALENDAR_TITLE', 'Realestate Manager'),
(931, '_REALESTATE_MANAGER_LABEL_CALENDAR_AVAILABLE', 'Realestate Manager'),
(932, '_REALESTATE_MANAGER_LABEL_CALENDAR_NOT_AVAILABLE', 'Realestate Manager'),
(933, '_REALESTATE_MANAGER_LABEL_MOD_MAP_SEARCH_ADDRESS_PLACEHOLDER', 'Realestate Manager'),
(934, '_REALESTATE_MANAGER_LABEL_MOD_MAP_SEARCH_RANGE', 'Realestate Manager'),
(935, '_REALESTATE_MANAGER_LABEL_MOD_SEARCH_CAT_PLACEHOLDER', 'Realestate Manager'),
(936, '_REALESTATE_MANAGER_LABEL_MOD_MAP_SEARCH_BUTTON', 'Realestate Manager'),
(937, '_REALESTATE_MANAGER_SHOW_ORDERS_MANAGER', 'Realestate Manager'),
(938, '_REALESTATE_MANAGER_PAYPAL_F5_ERROR', 'Realestate Manager'),
(939, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_STREET_VIEW_TT_BODY', 'Realestate Manager'),
(940, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_STREET_VIEW', 'Realestate Manager'),
(941, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_OPTIONS', 'Realestate Manager'),
(942, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_LOGIN', 'Realestate Manager'),
(943, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_PASSWORD', 'Realestate Manager'),
(944, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_IMPORT', 'Realestate Manager'),
(945, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_IMPORT_REQUIRED_FIELD', 'Realestate Manager'),
(946, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_UPDATE_MAP', 'Realestate Manager'),
(947, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_UPDATE_MAP_DESCRIPTION', 'Realestate Manager'),
(948, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_BOOKING_TT_BODY', 'Realestate Manager'),
(949, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_SENDMESSAGE_TT_BODY', 'Realestate Manager'),
(950, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_BOOKING', 'Realestate Manager'),
(951, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_SENDMESSAGE', 'Realestate Manager'),
(952, '_REALESTATE_MANAGER_SETTINGS_GOOGLE_MAP', 'Realestate Manager'),
(953, '_REALESTATE_MANAGER_GOOGLEMAP_API_KEY', 'Realestate Manager'),
(954, '_REALESTATE_MANAGER_LABEL_GOOGLEMAP_API_KEY', 'Realestate Manager'),
(955, '_REALESTATE_MANAGER_GOOGLEMAP_API_KEY_ERROR', 'Realestate Manager'),
(956, '_REALESTATE_MANAGER_GOOGLEMAP_API_KEY_LINK_MESSAGE', 'Realestate Manager'),
(957, '_REALESTATE_MANAGER_CONFIG_WISHLIST_SHOW_TT_BODY', 'Realestate Manager'),
(958, '_REALESTATE_MANAGER_CONFIG_WISHLIST_SHOW', 'Realestate Manager'),
(959, '_REALESTATE_MANAGER_LABEL_WISHLIST_ADDED', 'Realestate Manager'),
(960, '_REALESTATE_MANAGER_LABEL_WISHLIST_ADD', 'Realestate Manager'),
(961, '_REALESTATE_MANAGER_LABEL_WISHLIST_REMOVED', 'Realestate Manager'),
(962, '_REALESTATE_MANAGER_LABEL_WISHLIST_REMOVE', 'Realestate Manager'),
(963, '_REALESTATE_MANAGER_LABEL_WISHLIST_ALREDY_IN', 'Realestate Manager'),
(964, '_REALESTATE_MANAGER_LABEL_WISHLIST_ERROR_ADDING', 'Realestate Manager'),
(965, '_REALESTATE_MANAGER_LABEL_WISHLIST_ERROR_DELETE', 'Realestate Manager'),
(966, '_REALESTATE_MANAGER_SETTINGS_SEARCH_RESULT_LAYOUT', 'Realestate Manager'),
(967, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_MAP_SEARCH_RESULT_LAYOUT_TT_BODY', 'Realestate Manager'),
(968, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_MAP_SEARCH_RESULT_LAYOUT', 'Realestate Manager'),
(969, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_ORDER_BY_SEARCH_RESULT_LAYOUT_TT_BODY', 'Realestate Manager'),
(970, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_ORDER_BY_SEARCH_RESULT_LAYOUT', 'Realestate Manager'),
(971, '_REALESTATE_MANAGER_SETTINGS_GROUP_ACCESS_TO_EDIT', 'Realestate Manager'),
(972, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_GROUP_ACCESS_EDIT_TT_BODY', 'Realestate Manager'),
(973, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_GROUP_ACCESS_EDIT', 'Realestate Manager');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_const_languages`
--

CREATE TABLE `ya4mp_rem_const_languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_constid` int(11) NOT NULL DEFAULT '0',
  `fk_languagesid` int(11) NOT NULL DEFAULT '0',
  `value_const` varchar(2000) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_const_languages`
--

INSERT INTO `ya4mp_rem_const_languages` (`id`, `fk_constid`, `fk_languagesid`, `value_const`) VALUES
(2, 2, 2, 'Community Builder/My Houses plugin settings'),
(3, 3, 2, 'Show my houses'),
(4, 4, 2, 'Show edit houses'),
(5, 5, 2, 'Show rent requests'),
(6, 6, 2, 'Show buy requests'),
(7, 7, 2, 'Show user rent history'),
(8, 8, 2, 'Show my houses to'),
(9, 9, 2, 'Show edit houses to'),
(10, 10, 2, 'Show rent requests to'),
(11, 11, 2, 'Show buy requests to'),
(12, 12, 2, 'Show user rent history to'),
(13, 13, 2, 'Show my houses'),
(14, 14, 2, 'Show edit houses'),
(15, 15, 2, 'Show rent requests'),
(16, 16, 2, 'Show buy requests'),
(17, 17, 2, 'Show user rent history'),
(18, 18, 2, 'Show button \'show my houses\' on CB plugin'),
(19, 19, 2, 'Show my houses'),
(20, 20, 2, 'Select user group for which will be show this button'),
(21, 21, 2, 'Show button \'edit my houses\' on CB plugin'),
(22, 22, 2, 'Show edit houses'),
(23, 23, 2, 'Show button \'rent requests\' on CB plugin'),
(24, 24, 2, 'Show rent requests'),
(25, 25, 2, 'Show button \'buy requsts\' on CB plugin'),
(26, 26, 2, 'Show buy requsts'),
(27, 27, 2, 'Show button \'my rent history\' on CB plugin'),
(28, 28, 2, 'Show my rent history'),
(29, 29, 2, 'Real Estate Manager'),
(30, 30, 2, 'Our house catalogue with houses for sale and rent.'),
(31, 31, 2, 'Search houses'),
(32, 32, 2, 'Search houses'),
(33, 33, 2, 'no-img_eng.gif'),
(34, 34, 2, 'You are not allowed to perform this action!'),
(35, 35, 2, 'OK'),
(36, 36, 2, 'Status'),
(37, 37, 2, 'RealEstateManager : Import/Export'),
(38, 38, 2, 'You must add a category for this section first.'),
(39, 39, 2, 'Please select'),
(40, 40, 2, 'CSV File'),
(41, 41, 2, 'XML File'),
(42, 42, 2, 'You must select a type to import!'),
(43, 43, 2, 'You must select a category to import!'),
(44, 44, 2, 'You must choose a file to import!'),
(45, 45, 2, 'You must select a type to export!'),
(46, 46, 2, 'Import type'),
(47, 47, 2, 'Select file format'),
(48, 48, 2, 'Select file format'),
(49, 49, 2, 'Category'),
(50, 50, 2, 'Category'),
(51, 51, 2, 'Select category'),
(52, 52, 2, 'File to import'),
(53, 53, 2, 'File to import'),
(54, 54, 2, 'Select file to import'),
(55, 55, 2, 'At the moment the following CSV format is supported:<br />PropertyID | Description | Link | Listing type |  Location | Price | Title | ...'),
(56, 56, 2, 'Export type'),
(57, 57, 2, 'Select file format'),
(58, 58, 2, 'Select file format'),
(59, 59, 2, 'Category'),
(60, 60, 2, 'Category'),
(61, 61, 2, 'Select category'),
(62, 62, 2, 'Export Result'),
(63, 63, 2, 'You can download the requested Export under the following URL (right-click to save):'),
(64, 64, 2, 'Please note that the files will still be saved on the server and you have to clean them yourself.'),
(65, 65, 2, 'RealEstateManager : Categories'),
(66, 66, 2, 'Category'),
(67, 67, 2, 'Houses'),
(68, 68, 2, 'Published'),
(69, 69, 2, 'Reorder'),
(70, 70, 2, 'Access'),
(71, 71, 2, 'Checked Out By'),
(72, 72, 2, 'Add'),
(73, 73, 2, 'Edit'),
(74, 74, 2, 'Category'),
(75, 75, 2, 'Category name must be not empty'),
(76, 76, 2, 'Categories'),
(77, 77, 2, '- Select Image -'),
(78, 78, 2, 'Top'),
(79, 79, 2, 'Category Alias'),
(80, 80, 2, 'Category Title'),
(81, 81, 2, 'No preview available'),
(82, 82, 2, 'Details'),
(83, 83, 2, 'Image Position'),
(84, 84, 2, 'Parent Item'),
(85, 85, 2, 'Deleted'),
(86, 86, 2, 'RealEstateManager - Rent out a house'),
(87, 87, 2, 'RealEstateManager - Return House from a lease'),
(88, 88, 2, 'Import'),
(89, 89, 2, 'Export'),
(90, 90, 2, '- All Categories'),
(91, 91, 2, 'Select Categories'),
(92, 92, 2, 'Select house to rent out'),
(93, 93, 2, '- All Houses'),
(94, 94, 2, 'Rent'),
(95, 95, 2, 'Not Rent'),
(96, 96, 2, '- All Users'),
(97, 97, 2, 'Select Published'),
(98, 98, 2, '- All Houses'),
(99, 99, 2, 'Not Published'),
(100, 100, 2, 'Published'),
(101, 101, 2, 'Search Houses'),
(102, 102, 2, 'Search Keywords'),
(103, 103, 2, 'Search'),
(104, 104, 2, 'RealEstateManager : Houses'),
(105, 105, 2, 'Search:'),
(106, 106, 2, 'You must first create a Category for this Section.'),
(107, 107, 2, 'Property ID'),
(108, 108, 2, 'Result'),
(109, 109, 2, 'Description'),
(110, 110, 2, 'Category'),
(111, 111, 2, '# House'),
(112, 112, 2, 'View'),
(113, 113, 2, 'Country'),
(114, 114, 2, 'Region'),
(115, 115, 2, 'City'),
(116, 116, 2, 'Zipcode'),
(117, 117, 2, 'Address'),
(118, 118, 2, 'No location available'),
(119, 119, 2, 'Title'),
(120, 120, 2, 'Built year'),
(121, 121, 2, 'Property type'),
(122, 122, 2, 'Rating'),
(123, 123, 2, 'Picture URL'),
(124, 124, 2, 'Picture'),
(125, 125, 2, ' Buy from ] link'),
(126, 126, 2, 'Rent to'),
(127, 127, 2, 'Rent from'),
(128, 128, 2, 'Rent until'),
(129, 129, 2, 'Rent from - until'),
(130, 130, 2, 'unknown'),
(131, 131, 2, 'User'),
(132, 132, 2, 'Email'),
(133, 133, 2, 'Postal mailing address'),
(134, 134, 2, 'Phone number'),
(135, 135, 2, 'Rent until: '),
(136, 136, 2, 'Hits'),
(137, 137, 2, 'Reorder'),
(138, 138, 2, 'Rent out'),
(139, 139, 2, 'Published'),
(140, 140, 2, 'Checked out'),
(141, 141, 2, 'Review date'),
(142, 142, 2, 'Add a main photo'),
(143, 143, 2, 'Add more photos'),
(144, 144, 2, 'If you upload a picture, the URL of the current picture will be deleted and reset to the uploaded picture.'),
(145, 145, 2, 'Error uploading picture! Please note that only image formats (jpg, png, gif) are supported'),
(146, 146, 2, 'Price'),
(147, 147, 2, 'Rent information'),
(148, 148, 2, 'Actual edocument'),
(149, 149, 2, 'Upload edocument'),
(150, 150, 2, 'Download edocument'),
(151, 151, 2, 'Delete edocument'),
(152, 152, 2, 'Edocument'),
(153, 153, 2, 'Error uploading edocument!'),
(154, 154, 2, 'Rent out'),
(155, 155, 2, 'Required'),
(156, 156, 2, 'Add Review'),
(157, 157, 2, 'Reviews'),
(158, 158, 2, ' Save '),
(159, 159, 2, ' Book it! '),
(160, 160, 2, ' Submit Rent Request '),
(161, 161, 2, 'Review'),
(162, 162, 2, 'Title'),
(163, 163, 2, 'Rating'),
(164, 164, 2, 'Comment'),
(165, 165, 2, 'Anonymous'),
(166, 166, 2, 'Featured clicks'),
(167, 167, 2, 'Featured shows'),
(168, 168, 2, 'Please enter a Title for your review!'),
(169, 169, 2, 'Please enter a Text for your review!'),
(170, 170, 2, 'Please enter a Rating for your review!'),
(171, 171, 2, 'Please enter name!'),
(172, 172, 2, 'Please enter e-mail!'),
(173, 173, 2, 'Please enter a valid Postal Address for your rent request!'),
(174, 174, 2, 'Please enter correct Return date.'),
(175, 175, 2, 'Check out must be more Check in'),
(176, 176, 2, 'Wrong date!'),
(177, 177, 2, 'Not specified'),
(178, 178, 2, 'Brazilian Portuguese'),
(179, 179, 2, 'Danish'),
(180, 180, 2, 'Dutch'),
(181, 181, 2, 'English'),
(182, 182, 2, 'Farsi'),
(183, 183, 2, 'French'),
(184, 184, 2, 'German'),
(185, 185, 2, 'Italian'),
(186, 186, 2, 'Portuguese'),
(187, 187, 2, 'Romanian'),
(188, 188, 2, 'Russian'),
(189, 189, 2, 'Spanish'),
(190, 190, 2, 'Swedish'),
(191, 191, 2, 'NO'),
(192, 192, 2, 'YES'),
(193, 193, 2, 'The house title is currently being edited by another administrator'),
(194, 194, 2, 'Error deleting house!'),
(195, 195, 2, 'Settings Frontend'),
(196, 196, 2, 'House Options'),
(197, 197, 2, 'PropertyID auto-increment'),
(198, 198, 2, 'PropertyID auto increment'),
(199, 199, 2, 'Set Yes if you want to use PropertyID auto-increment. NO if you want use manually entered PropertyID'),
(200, 200, 2, 'edocument support'),
(201, 201, 2, 'edocument support'),
(202, 202, 2, 'YES if you want to activate edocument support for the administrator interface.'),
(203, 203, 2, 'Location of edocuments'),
(204, 204, 2, 'edocuments location'),
(205, 205, 2, 'The location of the uploaded edocuments on the server. The path is relative to the main Joomla directory and must start and end with a /'),
(206, 206, 2, 'Show edocuments download link'),
(207, 207, 2, 'Show edocuments download in the frontend'),
(208, 208, 2, 'YES if you want to show an edocument download link in the frontend.'),
(209, 209, 2, 'Show form "Add Review"'),
(210, 210, 2, 'Show reviews in the frontend'),
(211, 211, 2, 'Set Yes to show form "Add Review" on the page of house on frontend'),
(212, 212, 2, 'Allow Reviews'),
(213, 213, 2, 'Allow Reviews'),
(214, 214, 2, 'Allow Reviews in the frontend. This function will be activated only if --Show Reviews-- is also set to YES!'),
(215, 215, 2, 'Show form "Book Now"'),
(216, 216, 2, 'Show Rent status in the frontend'),
(217, 217, 2, 'Set Yes to show form "Book Now" on the page of house for rent on frontend'),
(218, 218, 2, 'Show houses status'),
(219, 219, 2, 'Set Yes to show houses status on the page of all houses and single categories on frontend'),
(220, 220, 2, 'Allow Rent Requests'),
(221, 221, 2, 'Allow Rent Request'),
(222, 222, 2, 'Allow Rent Requests in the frontend. This function will be activated only if --Show Rent Status-- is also set to YES!'),
(223, 223, 2, 'Show price'),
(224, 224, 2, 'Show price'),
(225, 225, 2, 'Set Yes to show the price of houses on frontend'),
(226, 226, 2, 'Houses per page.'),
(227, 227, 2, 'Set number of Houses shown per page.'),
(228, 228, 2, 'Pagination.'),
(229, 229, 2, 'Thumbnails, list view '),
(230, 230, 2, 'House photos size'),
(231, 231, 2, 'Set size of images for list view - width/height in px'),
(232, 232, 2, 'Items per page'),
(233, 233, 2, 'Page items'),
(234, 234, 2, 'Set the number of items per page.'),
(235, 235, 2, 'Review email'),
(236, 236, 2, 'Review email'),
(237, 237, 2, 'Email address for notifications about adding reviews.'),
(238, 238, 2, 'Rent Request email'),
(239, 239, 2, 'Rent Request email'),
(240, 240, 2, 'Email address for notifications about booking houses.'),
(241, 241, 2, 'RealEstateManager : Booking Manager'),
(242, 242, 2, 'RealEstateManager : About'),
(243, 243, 2, 'About'),
(244, 244, 2, 'Releasenote'),
(245, 245, 2, 'Changelog'),
(246, 246, 2, 'Welcome to RealEstateManager'),
(247, 247, 2, 'Thank you for using our component!<br /><br />\r\nRealEstateManager allows you to manage large house catalogues. It comes with category and subcategory support and you can add a PropertyID for your internal reference. Rent management is built-in, with a rent request possibility for users of your website. RealEstateManager also offers the possibility of house reviews by users, with review management in the backend. Edocument support is built-in. House information and house photos can be entered manually. <br/ ><br />\r\nNOTES: <br/ >\r\n- for download photos to your server to work, you need to compile PHP5 with CURL support<br />\r\n- for csv export to work, you need to compile PHP5 with XSL support<br/ >\r\n- for CAPTCHA to work, you need to compile PHP5 with GD support<br />\r\n<br />\r\nOn the website <a href="http://www.ordasoft.com">www.ordasoft.com</a> you can find RealEstateManager Manuals, additional Language files, Support Forums and also download additional modules and plugins.<br />\r\n<br />\r\nWe are available for Custom Development if you want a new feature added to RealEstateManager. Please mail your exact requirements to <a href="mailto:sales@ordasoft.com">sales@ordasoft.com</a> and we will get back to you with a quote. When you order a paid Customisation, you will receive the next PRO version with your custom feature added.'),
(248, 248, 2, 'The fields below only need to be filled in manually when you have set '),
(249, 249, 2, '. otherwise they will be ignored.'),
(250, 250, 2, 'Please insert an PropertyID for this house!'),
(251, 251, 2, 'A house with this PropertyID already exists!'),
(252, 252, 2, 'You must select a Category for this house!'),
(253, 253, 2, 'Rent Request'),
(254, 254, 2, 'The list shows the houses selected for renting.<br />If it is empty, please check your selection again.'),
(255, 255, 2, 'Name'),
(256, 256, 2, 'Email'),
(257, 257, 2, 'Description'),
(258, 258, 2, 'Check Out'),
(259, 259, 2, 'Check In'),
(260, 260, 2, 'Your Booking was stored in our database. We will check your request and inform you as soon as possible.<br />Thank you for using our service.'),
(261, 261, 2, 'Your Message was stored in our database. We will check your request and inform you as soon as possible.<br />Thank you for using our service.'),
(262, 262, 2, 'RealEstateManager: Rent Request accepted'),
(263, 263, 2, 'The house'),
(264, 264, 2, 'you requested is ready to be rented out.'),
(265, 265, 2, 'Save'),
(266, 266, 2, 'Rent house'),
(267, 267, 2, 'Return house from rent'),
(268, 268, 2, 'Accept request'),
(269, 269, 2, 'Decline request'),
(270, 270, 2, 'Import houses'),
(271, 271, 2, 'Export houses'),
(272, 272, 2, 'Delete review'),
(273, 273, 2, 'Edit review'),
(274, 274, 2, 'General information:'),
(275, 275, 2, 'Version:'),
(276, 276, 2, 'Release date:'),
(277, 277, 2, 'Project link:'),
(278, 278, 2, 'Project host:'),
(279, 279, 2, 'License:'),
(280, 280, 2, 'This program is distributed in the hope that it will be useful, but without any warranty. See the included LICENSE.TXT for more details.'),
(281, 281, 2, 'Developed by:'),
(282, 282, 2, 'Homepage'),
(283, 283, 2, 'edocument Download Link URL'),
(284, 284, 2, 'Allow edocuments download'),
(285, 285, 2, 'Allow edocuments download in the frontend. This function will only be activated if --Show edocuments Download Link-- is also set to YES'),
(286, 286, 2, 'Allow edocuments download'),
(287, 287, 2, 'Allow price:'),
(288, 288, 2, 'Allow price in the frontend. This function will be activated only if --Show Price-- is also set to YES!'),
(289, 289, 2, 'Allow price'),
(290, 290, 2, 'RealEstateManager : Reviews'),
(291, 291, 2, 'House address'),
(292, 292, 2, 'Review title'),
(293, 293, 2, 'Type the characters you see in the picture above into the box below.'),
(294, 294, 2, 'Print'),
(295, 295, 2, 'Please select the columns for printing and then click [ Next ]!'),
(296, 296, 2, 'Font size'),
(297, 297, 2, 'Format'),
(298, 298, 2, 'Show edocument download license'),
(299, 299, 2, 'Show edocument download license accept/decline before allowing edocument download from the frontend'),
(300, 300, 2, 'Show edocument download license'),
(301, 301, 2, 'License Agreement'),
(302, 302, 2, 'Accept?'),
(303, 303, 2, 'Show button [ Buy now ]'),
(304, 304, 2, 'Show button [ Buy now ]'),
(305, 305, 2, 'Shows button [ Buy now ] next to the house in the frontend'),
(306, 306, 2, 'Allow button [ Buy now ]:'),
(307, 307, 2, 'Show button [ Buy now ] in the frontend for the selected categories. This function will be activated only if --Show button [ Buy now ]-- is also set to YES! You can select multiple categories.'),
(308, 308, 2, 'Allow button [ Buy now ]'),
(309, 309, 2, 'Full data export'),
(310, 310, 2, 'Full data import'),
(311, 311, 2, 'This operation will remove ALL existing RealEstateManager data before importing. Do you want to continue?'),
(312, 312, 2, '\r\n<strong>CSV&nbsp;IMPORT:</strong>\r\n<ul>\r\n	<li>At the moment the following CSV format is supported:&nbsp;&nbsp;PropertyID&nbsp;|&nbsp;Description&nbsp;|&nbsp;&nbsp;|&nbsp;Listing type&nbsp;|&nbsp;Price&nbsp;|&nbsp;Price type&nbsp;|&nbsp;Title&nbsp;|&nbsp;Address&nbsp;|&nbsp;...&nbsp;|</li>\r\n	<li>Fields are separated by a pipe character (<strong>&nbsp;|&nbsp;</strong>)</li>\r\n	<li>You must import a whole list with just PropertyID by leaving the other fields empty, for example:&nbsp;&nbsp;PropertyID&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;Price&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;Title&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;...&nbsp;|</li>\r\n	<li><strong>WARNING:</strong>&nbsp;do not use CSV import if there are House Reviews present, in that case use Full data import instead!</li>\r\n</ul>\r\n<strong>XML&nbsp;IMPORT:</strong>\r\n<ul>\r\n	<li>import data in XML format</li>\r\n	<li><strong>WARNING:</strong>&nbsp;do not use XML import if there are House Reviews present, in that case use full data import!</li>\r\n	<li><strong>WARNING:</strong>&nbsp;associations between houses will not be saved!</li>\r\n	<li><strong>WARNING:</strong>&nbsp;you have to upload images singly, no photos will be saved!</li>\r\n</ul>\r\n<strong>FULL&nbsp;DATA&nbsp;IMPORT:</strong>\r\n<ul>\r\n	<li>This import will import all RealEstateManager data and restore all fields and details</li>\r\n	<li>This option will overwrite ALL existing entries, so be careful when using it!</li>\r\n  <li>For restore all Houses photos, please restore all files saved before from folder: --components/com_realestatemanager/photos--!</li>\r\n  <li>For restore all Houses eDocuments, please restore all files saved before from folder what you set in  setting backend --Location of edocuments--!</li>\r\n</ul>\r\n'),
(313, 313, 2, '\r\n<strong>CSV&nbsp;EXPORT:</strong>\r\n<ul>\r\n	<li>CSV export will contain all fields for further editing in a text editor or spreadsheet application</li>\r\n	<li>Please note that for subsequent import, only the following CSV format is supported:&nbsp;&nbsp;PropertyID&nbsp;|&nbsp;Description&nbsp;|&nbsp;Link&nbsp;|&nbsp;Listing type&nbsp;|&nbsp;Price&nbsp;|&nbsp;Price type&nbsp;|&nbsp;Title&nbsp;|&nbsp;Address&nbsp;|&nbsp;...&nbsp;|</li>\r\n	<li><strong>WARNING:</strong> if you want to import later including House Reviews, use Full data export instead!</li>\r\n</ul>\r\n<strong>XML&nbsp;EXPORT:</strong>\r\n<ul>\r\n	<li>Export data in XML</li>\r\n  <li><strong>WARNING:</strong> if you want to import later including House Reviews, use Full data export instead!</li>\r\n  <li><strong>WARNING:</strong>&nbsp;associations between houses will not be saved!</li>\r\n        <li><strong>WARNING:</strong>&nbsp;you have to upload images singly, no photos will be saved!</li>\r\n	</ul>\r\n<strong>FULL&nbsp;DATA&nbsp;EXPORT:</strong>\r\n<ul>\r\n	<li>This export will export all RealEstateManager data and save all fields and entries</li>\r\n	<li>You can later use these sql files to restore your RealEstateManager data in full</li>\r\n	<li>This subsequent import will overwrite ALL existing entries, so be careful when using it!</li>\r\n  <li>To restore all house photos, please restore all files from folder: --components/com_realestatemanager/photos--!</li>\r\n  <li>To restore all houses eDocuments, please restore all files from the folder you have set in [Settings Backend] -- [Location of edocuments]</li>\r\n</ul>\r\n'),
(314, 314, 2, 'Send Review Notification'),
(315, 315, 2, 'Send Review Notification'),
(316, 316, 2, 'Set Yes if you want to be notified through email when a user adds review.'),
(317, 317, 2, 'User groups from which Review notifications will be sent'),
(318, 318, 2, 'User groups from which Review notifications will be sent'),
(319, 319, 2, 'Choose which user groups will send Review notifications. This function will be activated only if --Send Review Notification-- is also set to YES'),
(320, 320, 2, 'Send Rent Request  Notification'),
(321, 321, 2, 'Send Rent Request  Notification'),
(322, 322, 2, 'Set Yes if you want to be notified through email when a user books house.'),
(323, 323, 2, 'User groups from which Rent Request notifications will be sent'),
(324, 324, 2, 'User groups from which Rent Request notifications will be sent'),
(325, 325, 2, 'Choose which user groups will send Rent Request notifications. This function will be activated only if --Send Rent Request Notification-- is also set to YES'),
(326, 326, 2, 'Review comment'),
(327, 327, 2, 'Custom Category images'),
(328, 328, 2, 'If set to YES you can assign a custom image to every category instead of the standard folder icon. You can then adjust the category images in [ RealEstateManager ] - [ Manage&nbsp;Categories ] - [ Edit ] - [ Select&nbsp;image ]'),
(329, 332, 2, 'You can not return house from rent that were not rent out'),
(330, 333, 2, 'Please make a selection from the list to Rent Нouses'),
(331, 334, 2, 'Please make a selection from the list to Return Houses from rent'),
(332, 335, 2, 'Please make a selection from the list to Accept Request'),
(333, 336, 2, 'Please make a selection from the list to Decline Request'),
(334, 337, 2, 'You must select a type to import!'),
(335, 338, 2, 'You must select a type to export!'),
(336, 339, 2, 'You must select a Listing type for this house!'),
(337, 340, 2, 'Please insert an Address for this house!'),
(338, 341, 2, 'Please insert a Price for this house!'),
(339, 342, 2, 'Please insert a Title for this house!'),
(340, 343, 2, 'Please enter a valid number of Rooms!'),
(341, 344, 2, 'Please enter a valid number of Bathrooms!'),
(342, 345, 2, 'Please enter a valid Build year for this house!'),
(343, 346, 2, 'Please enter a valid Area for this house!'),
(344, 347, 2, 'Please enter a valid Lot size for this house!'),
(345, 348, 2, 'Please enter a valid size for this house!'),
(346, 349, 2, 'Please enter a Name for your buying request!'),
(347, 350, 2, 'Please enter a valid e-mail address for your buying request!'),
(348, 351, 2, 'Please enter a valid Phone Number for your buying request!'),
(349, 352, 2, 'Listing type'),
(350, 353, 2, 'Listing status'),
(351, 354, 2, 'Rooms'),
(352, 355, 2, 'Bathrooms'),
(353, 356, 2, 'Agent name'),
(354, 357, 2, 'Contact agent'),
(355, 358, 2, 'Agent info'),
(356, 359, 2, 'Photos'),
(357, 360, 2, 'Pricing'),
(358, 361, 2, 'Overview'),
(359, 362, 2, 'Amenities'),
(360, 363, 2, 'Book now'),
(361, 364, 2, 'Expiration date'),
(362, 365, 2, 'Lot size'),
(363, 366, 2, 'House size'),
(364, 367, 2, 'Garages'),
(365, 368, 2, 'Approved'),
(366, 369, 2, 'Phone'),
(367, 370, 2, 'Required fields'),
(368, 371, 2, 'Recommended fields'),
(369, 372, 2, 'Address fields'),
(370, 373, 2, 'Optional fields'),
(371, 374, 2, 'Photo manage'),
(372, 375, 2, 'Gallery'),
(373, 376, 2, 'Advertisment'),
(374, 377, 2, 'Customer\'s information '),
(375, 378, 2, 'RealEstateManager : Sale Manager'),
(376, 379, 2, 'Send message'),
(377, 380, 2, 'Send Buying Request  Notification'),
(378, 381, 2, 'Send Buying Request  Notification'),
(379, 382, 2, 'Set Yes if you want to be notified through email when a user sends message.'),
(380, 383, 2, 'User groups from which Buying Request notifications will be sent'),
(381, 384, 2, 'User groups from which Buying Request notifications will be sent'),
(382, 385, 2, 'Choose which user groups will send Buying Request notifications. This function will be activated only if --Send Buying Request Notification-- is also set to YES'),
(383, 386, 2, 'Buying Request email'),
(384, 387, 2, 'RealEstateManager : Settings'),
(385, 388, 2, 'Remove'),
(386, 389, 2, 'Photo '),
(387, 390, 2, 'House rent out'),
(388, 391, 2, 'For rent'),
(389, 392, 2, 'For sale'),
(390, 393, 2, 'Rent return'),
(391, 394, 2, 'Show Location tab'),
(392, 395, 2, 'Show Location tab'),
(393, 396, 2, 'Set YES to display Location tab'),
(394, 397, 2, 'Show Reviews tab'),
(395, 398, 2, 'Show Reviews tab'),
(396, 399, 2, 'Set YES to display Reviews tab'),
(397, 400, 2, ' Add House '),
(398, 401, 2, 'Publish'),
(399, 402, 2, 'Unpublish'),
(400, 403, 2, 'Delete'),
(401, 404, 2, 'Return house from rent'),
(402, 405, 2, 'Rent'),
(403, 406, 2, 'Show button "Add House"'),
(404, 407, 2, 'Show button "Add House"'),
(405, 408, 2, 'Set Yes to show button "Add House" in the list houses on frontend'),
(406, 409, 2, 'Allow button "Add House" ]'),
(407, 410, 2, 'Allow button "Add House"'),
(408, 411, 2, 'Allow button "Add House" in the frontend. This function will be activated only if --Show button [ Add House ]-- is also set to YES!'),
(409, 412, 2, 'Contacts'),
(410, 413, 2, 'Show contacts'),
(411, 414, 2, 'Show Contacts'),
(412, 415, 2, 'Set Yes to show owner contacts'),
(413, 416, 2, 'Location of photos'),
(414, 417, 2, 'The location of the uploaded photos on the server. The path is relative to the main Joomla directory and must start and end with a /'),
(415, 418, 2, 'Photos location'),
(416, 419, 2, 'Show Reviews tab'),
(417, 420, 2, 'Show Reviews tab'),
(418, 421, 2, 'Allow Reviews tab in the frontend. This function will be activated only if --Show Reviews tab-- is also set to YES!'),
(419, 422, 2, 'Show Location tab'),
(420, 423, 2, 'Show Location tab'),
(421, 424, 2, 'Allow location tab in the frontend. This function will be activated only if --Show location tab-- is also set to YES!'),
(422, 425, 2, 'Show Contacts'),
(423, 426, 2, 'Show Contacts'),
(424, 427, 2, 'Allow Contacts in the frontend. This function will be activated only if --Show Contacts-- is also set to YES!'),
(425, 428, 2, 'Unavailable for rent'),
(426, 429, 2, 'Your Real Estate was stored in our database.<br />Thank you for using our service'),
(427, 430, 2, 'Available for rent from'),
(428, 431, 2, 'Available for rent until'),
(429, 432, 2, 'Nothing found.'),
(430, 433, 2, 'Description'),
(431, 434, 2, 'Location'),
(432, 435, 2, 'All information'),
(433, 436, 2, 'Reviews'),
(434, 437, 2, '---select---'),
(435, 438, 2, 'House for rent'),
(436, 439, 2, 'House for sale'),
(437, 440, 2, 'Active,Offer,Contract,Closed,Withdrawn'),
(438, 441, 2, 'Apartment,Commercial,Condo,Coop,Farm,Land,Manufactured,Multifamily,Ranch,Single family,Tic,Townhouse,Detached,Semi-Detached,Att/Row/Twnhouse,Multiplex,Commercial/Retail,Office,Store W/Apt/Office,Sale Of Business,Condo Apt,Co-Ownership Apt'),
(439, 442, 2, 'Send answer to user'),
(440, 443, 2, 'Buy request answer'),
(441, 444, 2, 'Set Yes if you want to notify user about accepting or declining request.'),
(442, 445, 2, 'Form for answer to buy request'),
(443, 446, 2, 'Past particular tags in "Buy request answer",and you recive necessary data in your letter'),
(444, 447, 2, 'Tags Description'),
(445, 448, 2, 'propertyid'),
(446, 449, 2, 'Owner'),
(447, 450, 2, 'Exactly to all'),
(448, 451, 2, 'Answer for your request'),
(449, 452, 2, 'Form for answer to rent request'),
(450, 453, 2, 'Past particular tags in "Rent request answer",and you recive necessary data in your letter'),
(451, 454, 2, 'Tags Description'),
(452, 455, 2, 'You can use this tags in your letter: <br/>{title} - title of rent house\r\n          <br/>{answer} - declined or accepded<br/>{username} - the name of the user who requested a house<br/>\r\n          {owneremail} - the email of the owner house<br/>{ownername} - the name of the owner house<br/>'),
(453, 456, 2, 'Send answer to user'),
(454, 457, 2, 'Rent request answer'),
(455, 458, 2, 'Set Yes if you want to notify user about accepting or declining of booking.'),
(456, 459, 2, 'Accepted'),
(457, 460, 2, 'Declined'),
(458, 461, 2, 'Edit rent'),
(459, 462, 2, 'Allow owners list'),
(460, 463, 2, 'Allow owners list'),
(461, 464, 2, 'Choose users, whom allow show owners list'),
(462, 465, 2, 'Show owners list'),
(463, 466, 2, 'Show owners list'),
(464, 467, 2, 'If choose "yes" then show owners list in frontend'),
(465, 468, 2, 'Show owner'),
(466, 469, 2, 'Show owner'),
(467, 470, 2, 'Set Yes to show house owner'),
(468, 471, 2, 'Allow RSS for'),
(469, 472, 2, 'Allow RSS'),
(470, 473, 2, 'Select users for whom allow RSS'),
(471, 474, 2, 'Show button "RSS"'),
(472, 475, 2, 'Set Yes to show button "RSS" in the list houses on frontend'),
(473, 476, 2, 'Show RSS'),
(474, 477, 2, 'list'),
(475, 478, 2, 'gallery'),
(476, 479, 2, 'User-selectable'),
(477, 480, 2, 'View type'),
(478, 481, 2, 'View type'),
(479, 482, 2, 'Select view type for houses'),
(480, 483, 2, 'Allow publish'),
(481, 484, 2, 'Set Yes to allow publish houses from frontend'),
(482, 485, 2, 'Publish added houses'),
(483, 486, 2, 'Publish added houses'),
(484, 487, 2, 'Choose users whom allow approve houses from frontend'),
(485, 488, 2, 'Allow approve'),
(486, 489, 2, 'Allow approve'),
(487, 490, 2, 'Set Yes to allow approve houses from frontend'),
(488, 491, 2, 'Approve added houses'),
(489, 492, 2, 'Approve added houses'),
(490, 493, 2, 'Allow button "Print PDF"'),
(491, 494, 2, 'Allow button "Print PDF"'),
(492, 495, 2, 'Allow button "Print PDF" in the frontend. This function will be activated only if --Show button [ print PDF ]-- is also set to YES!'),
(493, 496, 2, 'Allow button "Print View"'),
(494, 497, 2, 'Allow button "Print View"'),
(495, 498, 2, 'Allow button "Print View" in the frontend. This function will be activated only if --Show button [ print View ]-- is also set to YES!'),
(496, 499, 2, 'Allow button "Send Link"'),
(497, 500, 2, 'Allow button "Send Link"'),
(498, 501, 2, 'Allow button "Send Link" in the frontend. This function will be activated only if --Show button [ send Mail ]-- is also set to YES!'),
(499, 502, 2, 'Show button "Send Link"'),
(500, 503, 2, 'Show button "Send Link"'),
(501, 504, 2, 'Set Yes to show button "Send Link" in the list houses on frontend'),
(502, 505, 2, 'Show button "Print View"'),
(503, 506, 2, 'Show button "Print View"'),
(504, 507, 2, 'Set Yes to show button "Print View" in the list houses on frontend'),
(505, 508, 2, 'Show button "Print PDF"'),
(506, 509, 2, 'Show button "Print PDF"'),
(507, 510, 2, 'Set Yes to show button "Print PDF" in the list houses on frontend'),
(508, 511, 2, 'User houses'),
(509, 512, 2, 'Description'),
(510, 513, 2, 'Year'),
(511, 514, 2, 'Username'),
(512, 515, 2, 'There have not houses'),
(513, 516, 2, 'You have not houses'),
(514, 517, 2, 'Are you sure?'),
(515, 518, 2, 'Please select houses first!'),
(516, 519, 2, 'Houses'),
(517, 520, 2, 'Owners'),
(518, 521, 2, 'Sorry, you have not access to this page'),
(519, 522, 2, 'Owners list'),
(520, 523, 2, 'Owners list'),
(521, 524, 2, 'Show my houses'),
(522, 525, 2, 'My houses'),
(523, 526, 2, 'Publish'),
(524, 527, 2, 'Unpublish'),
(525, 528, 2, 'Delete'),
(526, 529, 2, 'Id'),
(527, 530, 2, 'Edit'),
(528, 531, 2, 'Full XML'),
(529, 532, 2, 'RealestateManager - Edit house rent details'),
(530, 533, 2, 'Send Notification'),
(531, 534, 2, 'Send Add House Notification'),
(532, 535, 2, 'Set Yes if you want to be notified through email when a user adds house.'),
(533, 536, 2, 'User groups from which Add House notifications will be sent'),
(534, 537, 2, 'User groups from which Add House notifications will be sent'),
(535, 538, 2, 'Choose which user groups will send Add House notifications. This function will be activated only if --Send Add House Notification-- is also set to YES'),
(536, 539, 2, 'Show form "Send Message"'),
(537, 540, 2, 'Show Buy status in the frontend'),
(538, 541, 2, 'Set Yes to show form "Send Message" on the page of house for sale on frontend'),
(539, 542, 2, 'Allow Buy Requests'),
(540, 543, 2, 'Allow Buy Request'),
(541, 544, 2, 'Allow Buy Requests in the frontend. This function will be activated only if --Show Buy Status-- is also set to YES!'),
(542, 545, 2, 'Main image size, px'),
(543, 546, 2, 'Set size of main images- width/height in px'),
(544, 547, 2, 'House main photos size'),
(545, 548, 2, 'Thumbnail size, px'),
(546, 549, 2, 'Photo size in house gallery'),
(547, 550, 2, 'Set size of thumbnails - width/height in px'),
(548, 551, 2, 'House upload photo size'),
(549, 552, 2, 'House upload photo size'),
(550, 553, 2, 'Set upload photo size - width/height in px'),
(551, 554, 2, 'Crop image'),
(552, 555, 2, 'Set Yes to crop images and No to scale images'),
(553, 556, 2, 'Email'),
(554, 557, 2, 'Add House email'),
(555, 558, 2, 'Email address for notifications about adding houses.'),
(556, 559, 2, 'Booking Expiration'),
(557, 560, 2, 'Rent before end notify'),
(558, 561, 2, 'Set Yes if you want to be notified through email when booking expires.'),
(559, 562, 2, 'Days'),
(560, 563, 2, 'Rent end days'),
(561, 564, 2, 'Number of days before booking expiration to get notification.'),
(562, 565, 2, 'Rent end email'),
(563, 566, 2, 'Rent end email'),
(564, 567, 2, 'Email address for notifications about booking expiration.'),
(565, 568, 2, 'Show location map'),
(566, 569, 2, 'Location map'),
(567, 570, 2, 'Set Yes to show location map'),
(568, 571, 2, 'Save databases when updating'),
(569, 572, 2, 'Save databases when updating'),
(570, 573, 2, 'Set Yes to update component with saving databases and No to update component with removing databases'),
(571, 574, 2, 'Check categories of houses'),
(572, 575, 2, 'Rent request'),
(573, 576, 2, 'You can\'t view this page because it not published'),
(574, 577, 2, 'You can\'t view this page because it not approved by administrator'),
(575, 578, 2, 'Edit House'),
(576, 579, 2, 'Add House'),
(577, 580, 2, 'You are not logged in! If you want edit house in future, please log in!'),
(578, 581, 2, 'Click on the map to choose the house location:'),
(579, 582, 2, 'Date'),
(580, 583, 2, 'no-img_eng_big.gif'),
(581, 584, 2, 'Edit house'),
(582, 585, 2, 'You can use this tags in your letter: <br/>{title} - title of buy house\r\n          <br/>{answer} - declined or accepded<br/>{username} - the name of the user who requested a house<br/>\r\n          {owneremail} - the email of the owner house<br/>{ownername} - the name of the owner house<br/>'),
(583, 586, 2, 'Advanced<br />search'),
(584, 587, 2, 'from'),
(585, 588, 2, 'to'),
(586, 589, 2, 'all'),
(587, 590, 2, 'Available for rent'),
(588, 591, 2, 'Year'),
(589, 592, 2, 'until'),
(590, 593, 2, 'Week'),
(591, 594, 2, 'Weekend'),
(592, 595, 2, 'Midweek'),
(593, 596, 2, 'Year'),
(594, 597, 2, 'Month'),
(595, 598, 2, 'Calendar'),
(596, 599, 2, 'Add price'),
(597, 600, 2, 'Select to remove'),
(598, 601, 2, 'New price rent'),
(599, 602, 2, 'Add new price rent'),
(600, 603, 2, 'Show Calendar tab'),
(601, 604, 2, 'Show Calendar tab'),
(602, 605, 2, 'Choose users, whom allow show Calendar tab'),
(603, 606, 2, 'Show Calendar tab'),
(604, 607, 2, 'Show Calendar tab'),
(605, 608, 2, 'If choose "yes" then show calendar tab in frontend'),
(606, 609, 2, 'Show owner'),
(607, 610, 2, 'Show calendar'),
(608, 611, 2, 'Show house calendar or not'),
(609, 612, 2, 'Default price label for calendar'),
(610, 613, 2, 'Default price labels for calendar (weekend, week, midweek)'),
(611, 614, 2, 'Default price label for calendar'),
(612, 615, 2, 'RealEstateManager : Language Manager'),
(613, 616, 2, 'Lang tag'),
(614, 617, 2, 'Constant'),
(615, 618, 2, 'Value constant'),
(616, 619, 2, 'Search by constant'),
(617, 620, 2, 'Search by value constant'),
(618, 621, 2, 'Sys type'),
(619, 622, 2, 'Language'),
(620, 623, 2, 'RealEstateManager : Amenities Manager'),
(621, 624, 2, 'Amenities'),
(622, 625, 2, 'Category'),
(623, 626, 2, 'Published'),
(624, 627, 2, 'Name'),
(625, 628, 2, 'Category'),
(626, 629, 2, 'Amenities Manager'),
(627, 630, 2, 'Image'),
(628, 631, 2, 'Select photo if it is necessary to remove'),
(629, 632, 2, 'Recommended image size 25 x 25 pixels'),
(630, 633, 2, 'Categories for Manager Amenities'),
(631, 634, 2, 'Category must be entered, separated by commas'),
(632, 635, 2, 'Categories for Manager Amenities'),
(633, 636, 2, 'Show Feature Icon'),
(634, 637, 2, 'Show Feature Icon'),
(635, 638, 2, 'If choose "yes" then show Icon for Manager Feature'),
(636, 639, 2, 'Show title of category'),
(637, 640, 2, 'Show title of Category Features'),
(638, 641, 2, 'Set Yes to display title of category amenities'),
(639, 642, 2, 'Currency'),
(640, 643, 2, 'If you want to use other currencies, enter the values as: USD = 1; EUR = 3.15; or USD=; EUR=; Available for paypal currencies: AUD, CAD, CZK, DKK, EUR, HKD, HUF, JPY, NOK, NZD, PLN, SGD, SEK, CHF, USD, RUB, ILS, MXN, PHP, GBP, THB .'),
(641, 644, 2, 'Currency with coefficients'),
(642, 645, 2, 'Show price separator'),
(643, 646, 2, 'Show price separator'),
(644, 647, 2, 'Set Yes to show separator of price'),
(645, 648, 2, 'Get geographic coordinates'),
(646, 649, 2, 'Show Custom Text Field 1'),
(647, 650, 2, 'Show Custom Text Field 2'),
(648, 651, 2, 'Show Custom Text Field 3'),
(649, 652, 2, 'Show Custom Text Field 4'),
(650, 653, 2, 'Show Custom Text Field 5'),
(651, 654, 2, 'Show Custom Dropdown Field 6'),
(652, 655, 2, 'Show Custom Dropdown Field 7'),
(653, 656, 2, 'Show Custom Dropdown Field 8'),
(654, 657, 2, 'Show Custom Dropdown Field 9'),
(655, 658, 2, 'Show Custom Dropdown Field 10'),
(656, 659, 2, 'Custom Fields Manager'),
(657, 660, 2, 'Custom Text 1'),
(658, 661, 2, 'Custom Text 2'),
(659, 662, 2, 'Custom Text 3'),
(660, 663, 2, 'Custom Text 4'),
(661, 664, 2, 'Custom Text 5'),
(662, 665, 2, 'Custom Dropdown Field 6'),
(663, 666, 2, 'Custom Dropdown Field 7'),
(664, 667, 2, 'Custom Dropdown Field 8'),
(665, 668, 2, 'Custom Dropdown Field 9'),
(666, 669, 2, 'Custom Dropdown Field 10'),
(667, 670, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(668, 671, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(669, 672, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(670, 673, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(671, 674, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(672, 675, 2, 'Allowed Exts eDocument'),
(673, 676, 2, 'Allowed Exts Image'),
(674, 677, 2, 'House Page Layout'),
(675, 678, 2, 'All Houses Layout'),
(676, 679, 2, 'Price Format'),
(677, 680, 2, 'Choose format of price (point, comma or space) or enter your delimiter'),
(678, 681, 2, 'Date format'),
(679, 682, 2, 'Date format'),
(680, 683, 2, 'Reorder date formats to set your date display format'),
(681, 684, 2, 'Time format'),
(682, 685, 2, '%Y - Year; %m - month;  %d - day'),
(683, 686, 2, '%H - hours; %i - minutes; %s - seconds'),
(684, 687, 2, 'Show price unit'),
(685, 688, 2, 'After'),
(686, 689, 2, 'Before'),
(687, 690, 2, 'Select price ditlimer os set youre.'),
(688, 691, 2, 'Set After to show unit of prices affter price or Before to show unit of prices before prices'),
(689, 692, 2, 'Custom owner email'),
(690, 693, 2, 'Show address on map'),
(691, 694, 2, 'Add new photo'),
(692, 695, 2, 'Order By'),
(693, 696, 2, 'Select photo if it is necessary to remove'),
(694, 697, 2, 'Select photos which are necessary to remove from photo gallery'),
(695, 698, 2, 'A short name to appear in FeatureMenus'),
(696, 699, 2, 'A short name to appear in menus'),
(697, 700, 2, 'A full name to appear in menus'),
(698, 701, 2, 'General Info'),
(699, 702, 2, 'Additional Info'),
(700, 703, 2, 'Photos and Documents'),
(701, 704, 2, 'Owner Contacts'),
(702, 705, 2, 'Categories for Amenities Manager'),
(703, 706, 2, 'Amenities List'),
(704, 707, 2, 'House Page Settings'),
(705, 708, 2, 'Category Page Settings'),
(706, 709, 2, 'Email Notification Settings'),
(707, 710, 2, 'Administrator Settings'),
(708, 711, 2, 'Plugins Settings'),
(709, 712, 2, 'Image Settings'),
(710, 713, 2, 'Tab Settings'),
(711, 714, 2, 'Seller Contact Settings'),
(712, 715, 2, 'Amenities Settings'),
(713, 716, 2, 'Extra Fields Settings'),
(714, 717, 2, 'eDocument Options'),
(715, 718, 2, 'Button Options'),
(716, 719, 2, 'Booking'),
(717, 720, 2, 'Send message'),
(718, 721, 2, '{title}\r\n        [PropertyID]: {id}<br>\r\n        A new house was added by {username}\r\n        on {date} to category {category}.<br>\r\n        Please log on and approve or deny this item.<br>'),
(719, 722, 2, 'User {username} has added a Review to house:<br>{house_title}<br>\r\n        Title Comment: {title}<br>\r\n        Label Rating: [{rating}]<br>\r\n        Review Comment: {comment}<br>\r\n        Please log on and edit this review where necessary.'),
(720, 723, 2, 'User {username} has submitted a booking for:<br>\r\n        Customer name: {user_name}<br>\r\n        Email: {user_email}<br>\r\n        User mailing: {user_mailing}<br>\r\n        Rent from: {rent_from}<br>\r\n        Rent until: {rent_until}<br>\r\n        PropertyID: {hid_value}<br>\r\n        {house_title}<br>\r\n        Please log on and approve or deny this booking'),
(721, 724, 2, 'Answer for your request:<br>\r\n        Dear {username}!<br>\r\n        Your booking for<br>\r\n        {title} {owneremail} {ownername}<br>\r\n        Answer: {answer}'),
(722, 725, 2, '\r\n        User {username}  has submitted a message for:<br>\r\n        Customer name: {customer_name}<br>\r\n        Customer email: {customer_email}<br>\r\n        Customer phone: {customer_phone}<br>\r\n        Customer comment: {customer_comment}<br>\r\n        PropertyID: {hid_value}<br>\r\n        {house_title}<br>\r\n        Please log on and approve or deny this message'),
(723, 726, 2, 'Dear {username}!<br>\r\n        Your message for<br>\r\n        {title} {owneremail} {ownername}<br>\r\n        Answer: {answer}<br>'),
(724, 727, 2, 'Rent User: {username}({user_email})<br>\r\n      House: {house_title}<br>\r\n      House ID: {ID}<br>\r\n      PropertyID: {PropertyID}<br>'),
(725, 728, 2, 'You can use this tags in your letter:<br>{house_title} - title of added house\r\n        <br>{username} - the name of the user who added a house\r\n        <br>{hid_value} - identification number of the house'),
(726, 729, 2, 'Past particular tags in "Send Buy Request Notification",and you recive necessary data in your letter'),
(727, 730, 2, 'Tags Description'),
(728, 731, 2, 'You can use this tags in your letter:<br/>{house_title} - title of added house\r\n          <br>{username} - the name of the user who added a house <br>{user_email} - email of the user who rents the house\r\n          <br>{vid} - identification number of the house'),
(729, 732, 2, 'Past particular tags in "Rent before end notify",and you recive necessary data in your letter'),
(730, 733, 2, 'Tags Description'),
(731, 734, 2, 'You can use this tags in your letter:<br>{house_title} - title of added house\r\n          <br>{username} - the name of the user who added a house\r\n          <br>{hid_value} - identification number of the house<br>'),
(732, 735, 2, 'Past particular tags in "Send Rent Request Notification",and you recive necessary data in your letter'),
(733, 736, 2, 'Tags Description'),
(734, 737, 2, 'You can use this tags in your letter: <br>{title} - title of added house\r\n          <br>{id} - identification number of the house\r\n          <br>{username} - the name of the user who added a house\r\n          <br>{date} - date when house was added<br>{category} - category which the house was added in'),
(735, 738, 2, 'Past particular tags in "Send Add House Notification",and you recive necessary data in your letter'),
(736, 739, 2, 'Tags Description'),
(737, 740, 2, 'You can use this tags in your letter: <br>{username} - name of the user,what added a review\r\n          <br>{house_title} - title of review house\r\n          <br>{title} - title of the comment, {rating} - rating of the comment,\r\n          <br>{comment} - body of the comment'),
(738, 741, 2, 'Past particular tags in "Send Review Notification",and you recive necessary data in your letter'),
(739, 742, 2, 'Tags Description'),
(740, 743, 2, 'show my houses'),
(741, 744, 2, 'edit my houses'),
(742, 745, 2, 'rent requests'),
(743, 746, 2, 'buying requests'),
(744, 747, 2, 'All Categories Layout'),
(745, 748, 2, 'Single Category Layout'),
(746, 749, 2, 'Search layout'),
(747, 750, 2, 'Set Yes to display extra field'),
(748, 751, 2, 'Text field'),
(749, 752, 2, 'Select which extra dropdown fields, you want to display'),
(750, 753, 2, 'Dropdown field'),
(751, 754, 2, 'Published'),
(752, 755, 2, 'Publish reviews'),
(753, 756, 2, 'Set Yes to publish added reviews automatically'),
(754, 757, 2, 'Publish review added'),
(755, 758, 2, 'Allow publish'),
(756, 759, 2, 'Allow publish to usergroup'),
(757, 760, 2, 'Chose the usergroup who can publish added review automatically'),
(758, 761, 2, 'License text'),
(759, 762, 2, 'Booking Manager'),
(760, 763, 2, 'Sale Manager'),
(761, 764, 2, 'Import/Export'),
(762, 765, 2, 'Language Manager'),
(763, 766, 2, 'Settings'),
(764, 767, 2, 'Group'),
(765, 768, 2, 'Number of houses'),
(766, 769, 2, 'How many houses users can publish from a specific group.'),
(767, 770, 2, 'Show buy for booking'),
(768, 771, 2, 'Allow PayPal buy'),
(769, 772, 2, 'Show PayPal rent'),
(770, 773, 2, 'Allow PayPal rent'),
(771, 774, 2, 'Your PayPal email'),
(772, 775, 2, 'Successful return url'),
(773, 776, 2, 'After successful payment returns the buyer on your page.'),
(774, 777, 2, 'Image url'),
(775, 778, 2, 'Add image to PayPal page.'),
(776, 779, 2, 'Cancel return url'),
(777, 780, 2, 'If buyer press cancel in payment page, returns the buyer on your page.'),
(778, 781, 2, 'Real(yes) or a test(no) PayPal account'),
(779, 782, 2, 'If real go to www.paypal.com else go to www.sandbox.paypal.com'),
(780, 783, 2, 'Payment Options'),
(781, 784, 2, 'Number of photos'),
(782, 785, 2, 'How many photos in gallery users can publish from a specific group.'),
(783, 786, 2, 'Total price: '),
(784, 787, 2, 'Go now to PayPal'),
(785, 788, 2, 'Payment plugin is not installed'),
(786, 789, 2, 'Special price'),
(787, 790, 2, 'Price per day'),
(788, 791, 2, 'Price per night'),
(789, 792, 2, 'Add special price'),
(790, 793, 2, 'From'),
(791, 794, 2, 'To'),
(792, 795, 2, 'Price per day'),
(793, 796, 2, 'Ð¡alculate'),
(794, 797, 2, 'Time of rent and special price'),
(795, 798, 2, 'Calculate'),
(796, 799, 2, 'if per day calculation all day(example of 2014-02-10 from 2014-02-16 is 7 days) if per night calculation all night (example of 2014-02-10 from 2014-02-16 is 6 nights)'),
(797, 800, 2, 'Nights'),
(798, 801, 2, 'Images'),
(799, 802, 2, 'Type the allowed extensions of eDocuments '),
(800, 803, 2, 'Type the allowed extensions of Images'),
(801, 804, 2, 'Payment settings'),
(802, 805, 2, 'Language'),
(803, 806, 2, 'Select Language'),
(804, 807, 2, 'Clone'),
(805, 808, 2, 'Orders'),
(806, 809, 2, '/images/marker-1.png,/images/marker-2.png,/images/marker-3.png,/images/marker-4.png,/images/marker-5.png,/images/marker-6.png,/images/marker-7.png,/images/marker-8.png,/images/marker-9.png,/images/marker-10.png,/images/marker-11.png,/images/marker-12.png,/images/marker-13.png'),
(807, 810, 2, 'Message for unsuccessfull payment'),
(808, 811, 2, 'Message for successfull payment'),
(809, 812, 2, 'Insert the Message on page with notification about unsuccessfull payment'),
(810, 813, 2, 'Insert the Message on page with notification about successfull payment'),
(811, 818, 2, 'Add House'),
(812, 819, 2, 'Review'),
(813, 820, 2, 'Price Options'),
(814, 821, 2, 'Date Options'),
(815, 822, 2, 'Groups Options'),
(816, 823, 2, 'Extension Options'),
(817, 824, 2, 'Update Options'),
(818, 825, 2, 'Category Settings'),
(819, 826, 2, 'View listing'),
(820, 827, 2, 'Thumbnails, gallery view '),
(821, 828, 2, 'Set size of images for gallery view - width/height in px'),
(822, 829, 2, 'Email address for notifications about sending messages.'),
(823, 830, 2, 'Please select one item'),
(824, 831, 2, 'House already returned'),
(825, 832, 2, 'Error in rent, for associated'),
(826, 833, 2, 'You cannot return houses that were not lent out'),
(827, 834, 2, 'This house has assitiated house not for rent'),
(828, 835, 2, 'This house is not for rent'),
(829, 836, 2, 'Bad date format'),
(830, 837, 2, 'You can not use paypal with this currencies, please set correct currencies or turn off paypal buttons '),
(831, 838, 2, 'You can clon only one house'),
(832, 839, 2, 'Please select one review for edit'),
(833, 840, 2, 'Select a category to delete'),
(834, 841, 2, 'You must select only one item for edit'),
(835, 842, 2, 'Select an amenity to delete'),
(836, 843, 2, 'You edit houses that were not lent out'),
(837, 814, 2, 'You do success payment!'),
(838, 815, 2, 'You do unsuccess payment!'),
(839, 816, 2, 'Please install plugin of payment to enable payment feature'),
(840, 817, 2, 'Plugin'),
(841, 844, 2, 'Send email to admin before Booking end.<br /> For that you need create CRON job and connect to Cron check so URL:<br /> http://{yours site}/index.php?option=com_realestatemanager&Itemid={Yours ItemID}&task=rent_before_end_notify  with span - every day.<br /> Cron Jobs may look like:<br/> "wget -q -O - http://localhost/index.php?option=com_realestatemanager&Iteid=56&task=rent_before_end_notify /dev/null'),
(842, 845, 2, 'Show captcha option'),
(843, 846, 2, 'Show search'),
(844, 847, 2, 'Display captcha option in the frontend'),
(845, 848, 2, 'Display search block in the frontend'),
(846, 849, 2, 'm&sup2;'),
(847, 329, 2, 'Show subcategory'),
(848, 330, 2, 'Show subcategory'),
(849, 331, 2, 'If set to YES, you will see subcategory for every category'),
(850, 850, 2, 'Show buy for sale'),
(851, 851, 2, 'Show buy form after sale request'),
(852, 852, 2, 'Show buy form after book request'),
(853, 853, 2, 'File ext. not allowed to upload!'),
(854, 854, 2, 'Language associate houses'),
(855, 855, 2, 'Language associate categories'),
(856, 856, 2, 'This property only for houses with language'),
(857, 857, 2, 'You have'),
(858, 858, 2, 'maximum count house for your group'),
(859, 859, 2, 'To add special prices, you must first save property !'),
(860, 860, 2, 'You have max photos. Limit for this users group'),
(861, 861, 2, 'You have no numeric PropertyId. Please change all PropertyID to numeric or set to <No> option'),
(862, 862, 2, 'Please enter a valid Number!'),
(863, 863, 2, 'File mime type not match file ext'),
(864, 864, 2, 'You can publish only'),
(865, 865, 2, 'Please login'),
(866, 866, 2, 'New house added'),
(867, 867, 2, 'New buying request added'),
(868, 868, 2, 'New house review added'),
(869, 869, 2, 'New rent request added'),
(870, 870, 2, 'Rent expire notice'),
(871, 871, 2, 'So houses rent expire soon'),
(872, 872, 2, 'Subcategories'),
(873, 873, 2, 'Apply'),
(874, 874, 2, 'Save category'),
(875, 875, 2, 'Delete Order'),
(876, 876, 2, 'You must return all houses from rent first!'),
(877, 877, 2, 'Order ID'),
(878, 878, 2, 'House title'),
(879, 879, 2, 'Email'),
(880, 880, 2, 'Date'),
(881, 881, 2, 'Status'),
(882, 882, 2, 'Price'),
(883, 883, 2, 'Paid'),
(884, 884, 2, 'Details'),
(885, 885, 2, 'User'),
(886, 886, 2, 'Username'),
(887, 887, 2, 'Accept type/info: '),
(888, 888, 2, 'Payment system: '),
(889, 889, 2, 'Payer email: '),
(890, 890, 2, 'Pending reason: '),
(891, 891, 2, 'In your request encountered an error, please contact the administrator!'),
(892, 892, 2, 'Load languages'),
(893, 893, 2, 'Owner ID:'),
(894, 894, 2, 'Users Booking History'),
(895, 895, 2, 'Rent history'),
(896, 896, 2, 'RealEstateManager : Rent Hisory'),
(897, 897, 2, 'RealEstateManager : Users Rent Hisory'),
(898, 898, 2, 'Currency in your house does not match administrator settings, maybe they have been changed. Please reselect  currency in your house !'),
(899, 899, 2, 'Please insert an track kind'),
(900, 900, 2, 'Please insert an track language'),
(901, 901, 2, 'Please insert an track title'),
(902, 902, 2, 'File uploads is off in your PHP settings.!'),
(903, 903, 2, 'Post max size in your PHP settings less than your video file.!'),
(904, 904, 2, 'Upload max file size in your PHP settings less than your video file.!'),
(905, 905, 2, 'Video'),
(906, 906, 2, 'Video source'),
(907, 907, 2, 'Delete video'),
(908, 908, 2, 'Add new video file'),
(909, 909, 2, 'Track for video'),
(910, 910, 2, 'Track download link'),
(911, 911, 2, 'Delete track'),
(912, 912, 2, 'Add new track'),
(913, 913, 2, 'Add alternative video'),
(914, 914, 2, 'Upload video'),
(915, 915, 2, 'Video download link'),
(916, 916, 2, 'Youtube code <br> (For example <br> OtPn6qDy5GU)'),
(917, 917, 2, '<p><font color="red">!!!</font>Youtube code has more priority. If you enter Youtube code you will see video in the frontend from youtube source</p><br/>'),
(918, 918, 2, 'Kind (Specifies the kind of text track)'),
(919, 919, 2, 'Src lang (language of the track)'),
(920, 920, 2, 'Label (Specifies the title of the text track)'),
(921, 921, 2, 'Error uploading video!'),
(922, 922, 2, 'Error uploading track!'),
(923, 923, 2, 'Upload track'),
(924, 924, 2, 'Video/Track Options'),
(925, 925, 2, 'Video and track support:'),
(926, 926, 2, 'Allowed Exts Video'),
(927, 927, 2, 'Allowed Exts Track'),
(928, 928, 2, 'Location of video'),
(929, 929, 2, 'Location of track'),
(930, 930, 2, 'Calendar of availability and rental rates per period'),
(931, 931, 2, 'Available date for rent'),
(932, 932, 2, 'Not available date for rent'),
(933, 933, 2, 'Address'),
(934, 934, 2, 'Range(km)'),
(935, 935, 2, 'Select Category'),
(936, 936, 2, 'Search'),
(937, 937, 2, 'RealEstateManager : Orders');
INSERT INTO `ya4mp_rem_const_languages` (`id`, `fk_constid`, `fk_languagesid`, `value_const`) VALUES
(938, 938, 2, 'Please do not press f5 again!!!'),
(939, 939, 2, 'Show Street View'),
(940, 940, 2, 'Show Street View'),
(941, 941, 2, 'Treb Options'),
(942, 942, 2, 'Login'),
(943, 943, 2, 'Password'),
(944, 944, 2, 'TREB XML'),
(945, 945, 2, 'Login and Password from rets.torontomls.net are required fields'),
(946, 946, 2, 'Update map'),
(947, 947, 2, 'Update map from all houses where latitude and longitude are undefined'),
(948, 948, 2, 'Display booking form captcha option in the frontend'),
(949, 949, 2, 'Display send message form captcha option in the frontend'),
(950, 950, 2, 'Show booking form captcha option'),
(951, 951, 2, 'Show send message form captcha option'),
(952, 952, 2, 'Google Map Options'),
(953, 953, 2, 'Field to enter google map api key'),
(954, 954, 2, 'Api key'),
(955, 955, 2, 'Google Maps API error: missing key map error!'),
(956, 956, 2, 'To get Google Maps API key follow below link'),
(957, 957, 2, 'Set Yes to show button "Add/Remove to Wish List" in the list houses on frontend'),
(958, 958, 2, 'Show button "Add/Remove to Wish List"'),
(959, 959, 2, 'Added to wish list!'),
(960, 960, 2, 'Add to wish list!'),
(961, 961, 2, 'Removed from wishlist!'),
(962, 962, 2, 'Remov from wishlist!'),
(963, 963, 2, 'Alredy in wish list!'),
(964, 964, 2, 'Alredy in wish list!'),
(965, 965, 2, 'Alredy in wish list!'),
(966, 966, 2, 'Settings Layout Search Results'),
(967, 967, 2, 'Show map for search results layout on the frontend!'),
(968, 968, 2, 'Show map for search results layout!'),
(969, 969, 2, 'Show order by form for layout search results on the frontend!'),
(970, 970, 2, 'Show order by form for layout search results!'),
(971, 971, 2, 'Options access to edit houses'),
(972, 972, 2, 'Users group who will have access to edit users houses'),
(973, 973, 2, 'Select options access to edit houses'),
(974, 2, 3, 'Community Builder/My Houses plugin settings'),
(975, 3, 3, 'Show my houses'),
(976, 4, 3, 'Show edit houses'),
(977, 5, 3, 'Show rent requests'),
(978, 6, 3, 'Show buy requests'),
(979, 7, 3, 'Show user rent history'),
(980, 8, 3, 'Show my houses to'),
(981, 9, 3, 'Show edit houses to'),
(982, 10, 3, 'Show rent requests to'),
(983, 11, 3, 'Show buy requests to'),
(984, 12, 3, 'Show user rent history to'),
(985, 13, 3, 'Show my houses'),
(986, 14, 3, 'Show edit houses'),
(987, 15, 3, 'Show rent requests'),
(988, 16, 3, 'Show buy requests'),
(989, 17, 3, 'Show user rent history'),
(990, 18, 3, 'Show button \'show my houses\' on CB plugin'),
(991, 19, 3, 'Show my houses'),
(992, 20, 3, 'Select user group for which will be show this button'),
(993, 21, 3, 'Show button \'edit my houses\' on CB plugin'),
(994, 22, 3, 'Show edit houses'),
(995, 23, 3, 'Show button \'rent requests\' on CB plugin'),
(996, 24, 3, 'Show rent requests'),
(997, 25, 3, 'Show button \'buy requsts\' on CB plugin'),
(998, 26, 3, 'Show buy requsts'),
(999, 27, 3, 'Show button \'my rent history\' on CB plugin'),
(1000, 28, 3, 'Show my rent history'),
(1001, 29, 3, 'Real Estate Manager'),
(1002, 30, 3, 'Unser Objektkatalog mit Miet- und Verkaufsobjekten.'),
(1003, 31, 3, 'Objekte durchsuchen'),
(1004, 32, 3, 'Objekte durchsuchen'),
(1005, 33, 3, 'no-img_eng.gif'),
(1006, 34, 3, 'Sie sind nicht berechtigt diese Aktion durchzuführen!'),
(1007, 35, 3, 'OK'),
(1008, 36, 3, 'Status'),
(1009, 37, 3, 'RealEstateManager : Import/Export'),
(1010, 38, 3, 'Sie müssen für diese Sektion erst eine Kategorie hinzufügen.'),
(1011, 39, 3, 'Bitte wählen Sie'),
(1012, 40, 3, 'CSV Datei'),
(1013, 41, 3, 'XML Datei'),
(1014, 42, 3, 'Sie müssen einen Typ für den Import auswählen!'),
(1015, 43, 3, 'Sie müssen eine Kategorie für den Import auswählen!'),
(1016, 44, 3, 'Sie müssen eine Datei für den Import auswählen!'),
(1017, 45, 3, 'Sie müssen einen Typ für den Export auswählen!'),
(1018, 46, 3, 'Import Typ'),
(1019, 47, 3, 'Wählen Sie ein Dateiformat'),
(1020, 48, 3, 'Wählen Sie ein Dateiformat'),
(1021, 49, 3, 'Kategorie'),
(1022, 50, 3, 'Kategorie'),
(1023, 51, 3, 'Wählen Sie eine Kategorie'),
(1024, 52, 3, 'Datei für den Import'),
(1025, 53, 3, 'Datei für den Import'),
(1026, 54, 3, 'Wählen Sie eine Datei für den Import'),
(1027, 55, 3, 'Im Moment wird folgendes CSV Format unterstützt:<br />ObjektID | Beschreibung | Link | Art der Auflistung |  Standort | Preis | Titel | ...'),
(1028, 56, 3, 'Export Typ'),
(1029, 57, 3, 'Wählen Sie ein Dateiformat'),
(1030, 58, 3, 'Wählen Sie ein Dateiformat'),
(1031, 59, 3, 'Kategorie'),
(1032, 60, 3, 'Kategorie'),
(1033, 61, 3, 'Wählen Sie eine Kategorie'),
(1034, 62, 3, 'Export Ergebnis'),
(1035, 63, 3, 'Sie können den angeforderten Export unter folgender Adresse herunterladen (Rechts-klick zum Speichern):'),
(1036, 64, 3, 'Bitte beachten Sie, dass die Dateien weiterhin auf dem Server gespeichert sind und Sie diese selbst löschen müssen.'),
(1037, 65, 3, 'RealEstateManager : Kategorien'),
(1038, 66, 3, 'Kategorie'),
(1039, 67, 3, 'Objekte'),
(1040, 68, 3, 'Veröffentlicht'),
(1041, 69, 3, 'Reorganisieren'),
(1042, 70, 3, 'Zugang'),
(1043, 71, 3, 'Ausgecheckt durch'),
(1044, 72, 3, 'Hinzufügen'),
(1045, 73, 3, 'Bearbeiten'),
(1046, 74, 3, 'Kategorie'),
(1047, 75, 3, 'Der Name der Kategorie darf nicht leer sein'),
(1048, 76, 3, 'Kategorien'),
(1049, 77, 3, '- Bild auswählen -'),
(1050, 78, 3, 'Top'),
(1051, 79, 3, 'Kategorie Alias'),
(1052, 80, 3, 'Kategorie Titel'),
(1053, 81, 3, 'Keine Vorschau verfügbar'),
(1054, 82, 3, 'Details'),
(1055, 83, 3, 'Image Position'),
(1056, 84, 3, 'Parent Item'),
(1057, 85, 3, 'Gelöscht'),
(1058, 86, 3, 'RealEstateManager - Ein Objekt vermieten'),
(1059, 87, 3, 'RealEstateManager - Mietauflösung'),
(1060, 88, 3, 'Import'),
(1061, 89, 3, 'Export'),
(1062, 90, 3, '- Alle Kategorien'),
(1063, 91, 3, 'Kategorien auswählen'),
(1064, 92, 3, 'Wählen Sie ein Objekt zum vermieten'),
(1065, 93, 3, '- Alle Objekte'),
(1066, 94, 3, 'Mieten'),
(1067, 95, 3, 'Nicht gemietet'),
(1068, 96, 3, '- All Users'),
(1069, 97, 3, 'Wähle veröffentlichte'),
(1070, 98, 3, '- Alle Objekte'),
(1071, 99, 3, 'Nicht veröffentlicht'),
(1072, 100, 3, 'Veröffentlicht'),
(1073, 101, 3, 'Objekte suchen'),
(1074, 102, 3, 'Nach Schlüsselwörtern suchen '),
(1075, 103, 3, 'Suchen'),
(1076, 104, 3, 'RealEstateManager : Objekte'),
(1077, 105, 3, 'Suche:'),
(1078, 106, 3, 'Sie müssen für diese Sektion erst eine Kategorie anlegen.'),
(1079, 107, 3, 'Objekt ID'),
(1080, 108, 3, 'Ergebnis'),
(1081, 109, 3, 'Beschreibung'),
(1082, 110, 3, 'Kategorie'),
(1083, 111, 3, '# Objekt'),
(1084, 112, 3, 'Ansicht'),
(1085, 113, 3, 'Land'),
(1086, 114, 3, 'Region'),
(1087, 115, 3, 'Stadt'),
(1088, 116, 3, 'Zipcode'),
(1089, 117, 3, 'Adresse'),
(1090, 118, 3, 'No location available'),
(1091, 119, 3, 'Titel'),
(1092, 120, 3, 'Baujahr'),
(1093, 121, 3, 'Objektart'),
(1094, 122, 3, 'Bewertung'),
(1095, 123, 3, 'Bild-Adresse'),
(1096, 124, 3, 'Bild'),
(1097, 125, 3, '[ Kaufen von ] link'),
(1098, 126, 3, 'Mieten für'),
(1099, 127, 3, 'Mieten von'),
(1100, 128, 3, 'Mieten bis'),
(1101, 129, 3, 'Mieten von - bis'),
(1102, 130, 3, 'unbekannt'),
(1103, 131, 3, 'Benutzer'),
(1104, 132, 3, 'Email'),
(1105, 133, 3, 'Postanschrift'),
(1106, 134, 3, 'Telefonnummer'),
(1107, 135, 3, 'Mieten bis: '),
(1108, 136, 3, 'Aufrufe'),
(1109, 137, 3, 'Reorganisieren'),
(1110, 138, 3, 'Vermieten'),
(1111, 139, 3, 'Veröffentlicht'),
(1112, 140, 3, 'Kontrolliert'),
(1113, 141, 3, 'Kommentardatum'),
(1114, 142, 3, 'Hauptfoto hochladen'),
(1115, 143, 3, 'Klicken um Fotos für die Objekt-Fotogallerie hochzuladen'),
(1116, 144, 3, 'Wenn Sie ein Bild hochladen wird die URL des momentanen Bildes gelöscht und zu den hochgeladenen Bildern zurückgesetzt.'),
(1117, 145, 3, 'Fehler beim Hochladen des Bildes! Bitte beachten Sie, dass nur Bild-Formate (jpg, png, gif) unterstützt werden'),
(1118, 146, 3, 'Kaufpreis'),
(1119, 147, 3, 'Mietinformationen'),
(1120, 148, 3, 'Derzeitiges eDokument'),
(1121, 149, 3, 'Lade eDokument hoch'),
(1122, 150, 3, 'Lade eDokument herunter'),
(1123, 151, 3, 'Lösche eDokument'),
(1124, 152, 3, 'eDokument'),
(1125, 153, 3, 'Fehler beim Hochladen des eDokument!'),
(1126, 154, 3, 'Status'),
(1127, 155, 3, 'Erforderlich'),
(1128, 156, 3, 'Kommentar hinzufügen'),
(1129, 157, 3, 'Kommentare'),
(1130, 158, 3, ' Speichern '),
(1131, 159, 3, ' Jetzt buchen! '),
(1132, 160, 3, ' Anfrage bestätigen '),
(1133, 161, 3, 'Kommentar'),
(1134, 162, 3, 'Titel'),
(1135, 163, 3, 'Bewertung'),
(1136, 164, 3, 'Kommentar'),
(1137, 165, 3, 'Anonym'),
(1138, 166, 3, 'Featured clicks'),
(1139, 167, 3, 'Featured shows'),
(1140, 168, 3, 'Bitte geben Sie einen Titel für Ihren Kommentar ein!'),
(1141, 169, 3, 'Bitte geben Sie einen Text für Ihren Kommentar ein!'),
(1142, 170, 3, 'Bitte geben Sie eine Bewertung für Ihren Kommentar ein!'),
(1143, 171, 3, 'Bitte geben Sie einen Namen für Ihre Anfrage ein!'),
(1144, 172, 3, 'Bitte geben Sie eine gültige Email Adresse für Ihre Anfrage ein!'),
(1145, 173, 3, 'Bitte geben Sie eine gültige Postanschrift für Ihre Anfrage ein!'),
(1146, 174, 3, 'Bitte geben Sie ein Antwortdatum für Ihre Anfrage ein!'),
(1147, 175, 3, 'Check out must be more Check in'),
(1148, 176, 3, 'Wrong date!'),
(1149, 177, 3, 'Nicht festgelegt'),
(1150, 178, 3, 'Brazilian Portuguese'),
(1151, 179, 3, 'Danish'),
(1152, 180, 3, 'Holländisch'),
(1153, 181, 3, 'Englisch'),
(1154, 182, 3, 'Farsi'),
(1155, 183, 3, 'Französisch'),
(1156, 184, 3, 'Deutsch'),
(1157, 185, 3, 'Italienisch'),
(1158, 186, 3, 'Portuguese'),
(1159, 187, 3, 'Romanian'),
(1160, 188, 3, 'Russisch'),
(1161, 189, 3, 'Spanisch'),
(1162, 190, 3, 'Swedish'),
(1163, 191, 3, 'NEIN'),
(1164, 192, 3, 'JA'),
(1165, 193, 3, 'Der Objekttitel wird momentan von einem anderen Administrator bearbeitet'),
(1166, 194, 3, 'Fehler beim Löschen des Objekts!'),
(1167, 195, 3, 'Einstellungen Frontend'),
(1168, 196, 3, 'Einstellungen Backend'),
(1169, 197, 3, 'ObjektID automatisch hochzählen'),
(1170, 198, 3, 'ObjektID automatisch hochzählen'),
(1171, 199, 3, 'JA wenn Sie die ObjektID automatisch hochzählen lassen wollen. NEIN wenn Sie die ObjektID manuell eingeben wollen'),
(1172, 200, 3, 'eDokument Support'),
(1173, 201, 3, 'eDokument Support'),
(1174, 202, 3, 'JA wenn Sie den eDokument Support für das Administrator Interface aktivieren wollen.'),
(1175, 203, 3, 'Speicherplatz der eDokumente'),
(1176, 204, 3, 'Speicherplatz der eDokumente'),
(1177, 205, 3, 'Der Speicherplatz der hochgeladenen eDokumente auf dem Server. Der Pfad ist relativ zum Joomla Verzeichnis und muss mit einem  /  beginnen und aufhören'),
(1178, 206, 3, 'Zeige den Download Link für die eDokumente'),
(1179, 207, 3, 'Zeige den Download für die eDokumente im Frontend'),
(1180, 208, 3, 'JA wenn Sie einen Download Link für die eDokumente im Frontend anzeigen lassen wollen.'),
(1181, 209, 3, 'Zeige Kommentare'),
(1182, 210, 3, 'Zeige Kommentare im Frontend'),
(1183, 211, 3, 'JA wenn Sie die Funktionalität zum Schreiben von Kommentaren für Benutzer auf Ihrer Webseite aktivieren wollen.'),
(1184, 212, 3, 'Kommentare erlauben'),
(1185, 213, 3, 'Kommentare erlauben'),
(1186, 214, 3, 'Kommentare im Frontend erlauben. Diese Funktion wird nur aktiviert wenn --Zeige Kommentare-- ebenfalls auf JA steht!'),
(1187, 215, 3, 'Zeige Mietstatus'),
(1188, 216, 3, 'Zeige Mietstatus im Frontend'),
(1189, 217, 3, 'JA wenn Sie den derzeitigen Mietstatus der Objekte im Frontend anzeigen lassen wollen.'),
(1190, 218, 3, 'Show houses status'),
(1191, 219, 3, 'Set Yes to show houses status on the page of all houses and single categories on frontend'),
(1192, 220, 3, 'Anfragen zulassen'),
(1193, 221, 3, 'Anfrage zulassen'),
(1194, 222, 3, 'Anfragen im Frontend zulassen. Diese Funktion wird nur aktiviert wenn --Zeige Mietstatus-- ebenfalls auf JA steht!'),
(1195, 223, 3, 'Zeige Preis'),
(1196, 224, 3, 'Zeige Preis'),
(1197, 225, 3, 'Zeigt den Preis des Objekts im Frontend'),
(1198, 226, 3, 'Objekte pro Seite.'),
(1199, 227, 3, 'Setzt die Anzahl der Objekte, die pro Seite angezeigt werden, fest.'),
(1200, 228, 3, 'Seitennummerierung.'),
(1201, 229, 3, 'Größe der Objektfotos'),
(1202, 230, 3, 'Größe der Objektfotos'),
(1203, 231, 3, 'Legen Sie die Fotogröße fest - Höhe/Breite in px'),
(1204, 232, 3, 'Artikel pro Seite'),
(1205, 233, 3, 'Artikel pro Seite'),
(1206, 234, 3, 'Eingabe der Anzahl der Objekte, die pro Seite angezeigt werden.'),
(1207, 235, 3, 'Kommentar Email'),
(1208, 236, 3, 'Kommentar Email'),
(1209, 237, 3, 'Wohin sollen Benachrichtigungen für einen neu hinzugefügten Kommentar gesendet werden? Sie können mehrere Email Adressen eingeben, wenn diese durch ein Komma getrennt werden.'),
(1210, 238, 3, 'Anfrage-Email'),
(1211, 239, 3, 'Anfrage-Email'),
(1212, 240, 3, 'Wohin sollen Benachrichtigungen für eine neu hinzugefügte Anfrage gesendet werden? You can enter multiple email addresses separated by a comma.'),
(1213, 241, 3, 'RealEstateManager : Anfragen'),
(1214, 242, 3, 'RealEstateManager : Über'),
(1215, 243, 3, 'Über'),
(1216, 244, 3, 'Releasenote'),
(1217, 245, 3, 'Changelog'),
(1218, 246, 3, 'Willkommen beim RealEstateManager'),
(1219, 247, 3, 'Vielen Danke für die Benutzung unserer Komponente!<br /><br />\r\nRealEstateManager erlaubt Ihnen die Verwaltung von großen Objektkatalogen. Er unterstützt sowohl Kategorien als auch Unterkategorien und Sie können eine ObjektID für Ihre interne Referenz hinzufügen. Eine Mietverwaltung mit der Möglichkeit zur Anfrage für Benutzer Ihrer Webseite ist mit eingebaut. RealEstateManager bietet ebenso die Möglichkeit von Objektkommentare durch Benutzer inklusive Kommentarverwaltung im Backend. Hinzu kommt ein eDokument support. Objektinformationen und -fotos können  manuell eingegeben werden. <br/ ><br />\r\nHINWEISE: <br/ >\r\n- damit der Download von Fotos auf Ihren Server funktioniert, müssen Sie PHP5 mit CURL Support erstellen<br />\r\n- damit der cvs Export funktioniert, müssen Sie PHP5 mit XSL Support erstellen<br/ >\r\n- damit CAPTCHA funktioniert, müssen Sie PHP5 mit GD Support erstellen<br />\r\n<br />\r\nAuf der Webseite <a href="http://www.ordasoft.com">www.ordasoft.com</a> können Sie Handbücher für RealEstateManager , zusätzliche Sprachdateien und Support Foren finden und ebenso zusätzliche Module und Plugins herunterladen.<br />\r\n<br />\r\nWir bieten kundenspezifischen Entwicklungen wenn Sie RealEstateManager ein neues Features hinzufügen wollen. Bitte mailen Sie uns Ihre genauen Bedürfnisse an <a href="mailto:sales@ordasoft.com">sales@ordasoft.com</a> und wir werden Ihnen ein Angebot zusenden. Wenn Sie eine bezahlte, kundenspezifische Anpassung in Auftrag geben, erhalten Sie die nächste PRO Version, die Ihr angepasstes Feature enthält.'),
(1220, 248, 3, 'Die untenstehenden Felder müssen nur dann manuell ausgefüllt werden wenn Sie dies so festgelegt haben.'),
(1221, 249, 3, '. ansonsten werden diese ignoriert.'),
(1222, 250, 3, 'Bitte geben Sie eine ObjektID für dieses Objekt ein!'),
(1223, 251, 3, 'Ein Objekt mit dieser ObjektID existiert bereits!'),
(1224, 252, 3, 'Sie müssen eine Kategorie für das Objekt auswählen!'),
(1225, 253, 3, 'Anfrage'),
(1226, 254, 3, 'Die Liste zeigt die Objekte, die zur Miete ausgewählt wurden.<br />Wenn diese leer ist, kontrollieren sie bitte nochmals Ihre Auswahl.'),
(1227, 255, 3, 'Ihr vollständiger Name'),
(1228, 256, 3, 'Email'),
(1229, 257, 3, 'Beschreibung'),
(1230, 258, 3, 'überprüfen'),
(1231, 259, 3, 'Einchecken '),
(1232, 260, 3, 'Ihre Anfrage wurde in unserer Datenbank gespeichert. Wir werden Ihre Anfrage überprüfen und Sie so bald wie möglich darüber informieren.<br />Vielen Dank, dass Sie unseren Service in Anspruch genommen haben.'),
(1233, 261, 3, 'Ihre Anfrage wurde in unserer Datenbank gespeichert. Wir werden Ihre Anfrage überprüfen und Sie so bald wie möglich darüber informieren.<br />Vielen Dank, dass Sie unseren Service in Anspruch genommen haben.'),
(1234, 262, 3, 'RealEstateManager: Anfrage akzeptiert'),
(1235, 263, 3, 'Das Objekt,'),
(1236, 264, 3, 'das von Ihnen angefragt wurde, ist bereit zur Vermietung.'),
(1237, 265, 3, 'Speichern'),
(1238, 266, 3, 'Mietobjekt'),
(1239, 267, 3, 'Mietbeendigung'),
(1240, 268, 3, 'Anfrage akzeptieren'),
(1241, 269, 3, 'Anfrage ablehnen'),
(1242, 270, 3, 'Importiere Objekte'),
(1243, 271, 3, 'Exportiere Objekte'),
(1244, 272, 3, 'Lösche Kommentar'),
(1245, 273, 3, 'Bearbeite Kommentar'),
(1246, 274, 3, 'Allgemeine Information:'),
(1247, 275, 3, 'Version:'),
(1248, 276, 3, 'Veröffentlichungsdatum:'),
(1249, 277, 3, 'Projektlink:'),
(1250, 278, 3, 'Projektleiter:'),
(1251, 279, 3, 'Lizenz:'),
(1252, 280, 3, 'Dieses Programm wird in der Hoffnung vertrieben, dass es auch brauchbar ist, jedoch ohne jegliche Garantie. Für mehr Details sehen Sie sich bitte die eingefügte LICENSE.TXT Datei an.'),
(1253, 281, 3, 'Entwickelt von:'),
(1254, 282, 3, 'Homepage'),
(1255, 283, 3, 'eDokument Download Link URL'),
(1256, 284, 3, 'Erlaube den Download von eDokumenten'),
(1257, 285, 3, 'Erlaube den Download von eDokumenten im Frontend. Diese Funktion wird nur aktiviert wenn --Zeige eDokumente Download Link-- ebenfalls auf JA gesetzt ist'),
(1258, 286, 3, 'Erlaube den Download von eDokumenten'),
(1259, 287, 3, 'Erlaube Preis:'),
(1260, 288, 3, 'Erlaube Preis im Frontend. Diese Funktion wird nur aktiviert wenn --Zeige Preis-- ebenfalls auf JA gesetzt ist!'),
(1261, 289, 3, 'Erlaube Preis'),
(1262, 290, 3, 'RealEstateManager : Kommentare'),
(1263, 291, 3, 'Objekt Adresse'),
(1264, 292, 3, 'Titel des Kommentars'),
(1265, 293, 3, 'Tippen Sie die Buchstaben, die Sie im Bild oberhalb sehen, in das untere Feld.'),
(1266, 294, 3, 'Drucken'),
(1267, 295, 3, 'Bitte wählen Sie die Spalten, die Sie ausdrucken wollen und klicken Sie dann auf [ Weiter ]!'),
(1268, 296, 3, 'Schriftgröße'),
(1269, 297, 3, 'Format'),
(1270, 298, 3, 'Zeige eDokument Download Lizenz'),
(1271, 299, 3, 'Zeige eDokument Download Lizenz annehmen/ablehnen bevor der eDokument Download vom Frontend aus erlaubt wird'),
(1272, 300, 3, 'Zeige eDokument Download Lizenz'),
(1273, 301, 3, 'Lizenzannahme'),
(1274, 302, 3, 'Annehmen?'),
(1275, 303, 3, 'Zeige Button [ Jetzt kaufen ]'),
(1276, 304, 3, 'Zeige Button [ Jetzt kaufen ]'),
(1277, 305, 3, 'Zeige Button [ Jetzt kaufen ] neben dem Objekt im Frontend'),
(1278, 306, 3, 'Erlaube Button [ Jetzt kaufen ]:'),
(1279, 307, 3, 'Zeige Button [ Jetzt kaufen ] im Frontend für die ausgewählten Kategorien. Diese Funktion wird nur aktiviert wenn --Zeige Button [ Jetzt kaufen ]-- ebenfalls auf JA gesetzt ist! Sie können mehrere Kategorien auswählen.'),
(1280, 308, 3, 'Erlaube Button [ Jetzt kaufen ]'),
(1281, 309, 3, 'Vollständiger Datenexport'),
(1282, 310, 3, 'Vollständiger Datenimport'),
(1283, 311, 3, 'Diese Operation löscht ALLE vorhandenen RealEstateManager Daten vor dem Import. Wollen Sie wirklich fortfahren?'),
(1284, 312, 3, '\r\n<strong>CSV&nbsp;IMPORT:</strong>\r\n<ul>\r\n	<li>Im Moment wird folgendes CSV Format unterstützt:&nbsp;&nbsp;ObjektID&nbsp;|&nbsp;Beschreibung&nbsp;|&nbsp;&nbsp;|&nbsp;Kategorie&nbsp;|&nbsp;Preis&nbsp;|&nbsp;Preisart&nbsp;|&nbsp;Titel&nbsp;|&nbsp;Adresse&nbsp;|&nbsp;...&nbsp;|</li>\r\n	<li>Felder müssen durch ein | getrennt werden (<strong>&nbsp;|&nbsp;</strong>)</li>\r\n	<li>Um z.B. eine komplette Liste nur mit der ObjektID zu importieren, müssen Sie die restlichen Felder leer lassen:&nbsp;&nbsp;ObjektID&nbsp;|&nbsp;<i>leer</i>&nbsp;|&nbsp;<i>leer</i>&nbsp;|&nbsp;<i>leer</i>&nbsp;|&nbsp;Preis&nbsp;|&nbsp;<i>leer</i>&nbsp;|&nbsp;Titel&nbsp;|&nbsp;<i>leer</i>&nbsp;|&nbsp;...&nbsp;|</li>\r\n	<li><strong>WARNUNG:</strong>&nbsp;Verwenden Sie den CSV Import nicht wenn Objektkommentare vorhanden sind, in diesem Fall benutzen Sie stattdessen bitte den vollständigen Datenimport!</li>\r\n</ul>\r\n<strong>XML&nbsp;IMPORT:</strong>\r\n<ul>\r\n	<li>Importieren der Daten im XML Format</li>\r\n	<li><strong>WARNUNG:</strong>&nbsp;Verwenden Sie den XML Import nicht wenn Objektkommentare vorhanden sind, in diesem Fall benutzen Sie bitte den kompletten Datenimport!</li>\r\n	<li><strong>WARNING:</strong>&nbsp;Assoziationen zwischen den Häusern werden nicht gespeichert!</li>\r\n        <li><strong>WARNING:</strong>&nbsp;Sie Bilder einzeln hochzuladen, werden keine Bilder gespeichert werden!</li>\r\n</ul>\r\n<strong>FULL&nbsp;DATA&nbsp;IMPORT:</strong>\r\n<ul>\r\n	<li>Dieser Import wird die kompletten RealEstateManager Daten importieren und alle Felder und Details wiederherstellen</li>\r\n	<li>Diese Option überschreibt ALLE vorhandenen Einträge, seien Sie vorsichtig bei der Benutzung!</li>\r\n  <li>Um alle Objektfotos wiederherzustellen, stellen Sie bitte alle vorher abgespeicherten Dateien aus dem folgenden Ordner wieder her: --components/com_realestatemanager/photos--!</li>\r\n  <li>Um alle Fahrzeug eDokumente wiederherzustellen, stellen Sie bitte alle vorher abgespeicherten Dateien aus dem Ordner, den Sie unter [ Back'),
(1285, 313, 3, ' \r\n<strong>CSV&nbsp;EXPORT:</strong>\r\n<ul>\r\n	<li>Der CSV Export enthält alle Felder für das spätere Bearbeiten in einem Text Editor oder Tabellenkalkulationsprogramm</li>\r\n	<li>Bitte beachten Sie, dass für den anschliessenden Import nur folgendes CSV Format unterstützt wird:&nbsp;&nbsp;ObjektID&nbsp;|&nbsp;Beschreibung&nbsp;|&nbsp;Link&nbsp;|&nbsp;Kategorie&nbsp;|&nbsp;Preis&nbsp;|&nbsp;Preisart&nbsp;|&nbsp;Titel&nbsp;|&nbsp;Adresse&nbsp;|&nbsp;...&nbsp;|</li>\r\n	<li><strong>WARNUNG:</strong> Wenn Sie später dazugehörende Objektkommentare importieren wollen, benutzen Sie stattdessen den vollständigen Datenexport!</li>\r\n</ul>\r\n<strong>XML&nbsp;EXPORT:</strong>\r\n<ul>\r\n	<li>Export Daten in XML</li>\r\n  <li><strong>WARNUNG:</strong> Wenn Sie später dazugehörende Objektkommentare importieren wollen, benutzen Sie stattdessen den vollständigen Datenexport!</li>\r\n  <li><strong>WARNING:</strong>&nbsp;Assoziationen zwischen den Häusern werden nicht gespeichert!</li>\r\n        <li><strong>WARNING:</strong>&nbsp;Sie Bilder einzeln hochzuladen, werden keine Bilder gespeichert werden!</li>\r\n	</ul>\r\n<strong>VOLLSTÄNDIGER&nbsp;DATEN&nbsp;EXPORT:</strong>\r\n<ul>\r\n	<li>Dieser Export exportiert alle RealEstateManager Daten und speichert alle Felder und Einträge</li>\r\n	<li>Sie können später diese SQL Dateien dazu benutzen, um ihre RealEstateManager Daten komplett wiederherzustellen</li>\r\n	<li>Dieser darauffolgende Import überschreibt ALLE vorhandenen Einträge, seien Sie deswegen vorsichtig bei der Benutzung!</li>\r\n  <li>Um alle Fahrzeugfotos wiederherzustellen, stellen Sie bitte alle Dateien aus folgendem Ordner wieder her: --components/com_realestatemanager/photos--!</li>\r\n  <li>Um alle Fahrzeug eDokumente wiederherzustellen, stellen Sie bitte alle Dateien aus dem Ordner, den Sie unter [ Backendeinstellungen ] -- [ Ort der eDokumente ] angegeben haben, wieder her</li>\r\n</ul>\r\n'),
(1286, 314, 3, 'Sende Kommentarbenachrichtigung'),
(1287, 315, 3, 'Sende Kommentarbenachrichtigung'),
(1288, 316, 3, 'Auf JA setzen wenn Sie per Email benachrichtigt werden wollen sobald ein Benutzer einen Objektkommentar hinzufügt. Benutzen Sie die Schaltfläche auf der rechten Seite, um anzugeben, wer diese Benachrichtigungen senden soll. Sie können die Eingangs-Emailadresse unter [ Backendkonfiguration ] einstellen.'),
(1289, 317, 3, 'Benutzergruppen, von denen Kommentarbenachrichtigungen gesendet werden'),
(1290, 318, 3, 'Benutzergruppen, von denen Kommentarbenachrichtigungen gesendet werden'),
(1291, 319, 3, 'Wählen Sie, welche Benutzergruppen Kommentarbenachrichtigungen senden sollen. Diese Funktion wird nur aktiviert wenn --Sende Kommentarbenachrichtigungen-- ebenfalls auf JA gesetzt ist!'),
(1292, 320, 3, 'Sende Anfragebenachrichtigung'),
(1293, 321, 3, 'Sende Anfragebenachrichtigung'),
(1294, 322, 3, 'Auf JA setzen wenn Sie per Email benachrichtigt werden wollen sobald ein Benutzer eine Anfrage stellt. Benutzen Sie die Schaltfläche auf der rechten Seite, um anzugeben, wer diese Benachrichtigungen senden soll. Sie können die Eingangs-Emailadresse unter [ Backendkonfiguration ] einstellen.'),
(1295, 323, 3, 'Benutzergruppen, von denen Anfragebenachrichtigungen gesendet werden'),
(1296, 324, 3, 'Benutzergruppen, von denen Anfragebenachrichtigungen gesendet werden'),
(1297, 325, 3, 'Wählen Sie, welche Benutzergruppen Anfragebenachrichtigungen senden sollen. Diese Funktion wird nur aktiviert wenn --Sende Anfragebenachrichtigung-- ebenfalls auf JA gesetzt ist!'),
(1298, 326, 3, 'Bewertungskommentar'),
(1299, 327, 3, 'Eigene Kategoriebilder'),
(1300, 328, 3, 'Wenn dieser Punkt auf JA gesetzt ist, können Sie statt dem Standard-Ordnersymbol jeder Kategorie ein eigenes Bild zuweisen. Danach können Sie die Kategoriebilder unter [ RealEstateManager ] - [ Verwalte&nbsp;Kategorien ] - [ Editieren ] - [ Wähle&nbsp;Bild ] anpassen'),
(1301, 332, 3, 'Sie können keine Mietbeendigung für ein Objekt abgeben, dass nicht vermietet wurde'),
(1302, 333, 3, 'Bitte wählen Sie aus der Liste der Mietobjekte'),
(1303, 334, 3, 'Bitte wählen Sie aus der Liste der Objekte zur Mietbeendigung'),
(1304, 335, 3, 'Bitte wählen Sie aus der Liste der akzeptierten Anfragen'),
(1305, 336, 3, 'Bitte wählen Sie aus der Liste der abgelehnten Anfragen'),
(1306, 337, 3, 'Sie müssen einen Typ für den Import auswählen!'),
(1307, 338, 3, 'Sie müssen einen Typ für den Export auswählen!'),
(1308, 339, 3, 'Sie müssen eine Kategorie für dieses Objekt wählen!'),
(1309, 340, 3, 'Bitte geben Sie eine Adresse für dieses Objekt ein!'),
(1310, 341, 3, 'Bitte geben Sie einen Preis für dieses Objekt ein!'),
(1311, 342, 3, 'Bitte geben Sie einen Titel für dieses Objekt ein!'),
(1312, 343, 3, 'Bitte geben Sie einen gültigen Wert für Zimmer ein!'),
(1313, 344, 3, 'Bitte geben Sie einen gültigen Wert für Badezimmer ein!'),
(1314, 345, 3, 'Bitte geben Sie ein gültiges Baujahr für dieses Objekt ein!'),
(1315, 346, 3, 'Bitte geben Sie eine gültige Wohnfläche für dieses Objekt ein!'),
(1316, 347, 3, 'Bitte geben Sie eine gültige Grundstücksgröße für dieses Objekt ein!'),
(1317, 348, 3, 'Bitte geben Sie den richtigen Bereich des Hauses!'),
(1318, 349, 3, 'Bitte geben Sie einen Namen für Ihre Anfrage ein!'),
(1319, 350, 3, 'Bitte geben Sie eine gültige E-Mail Adresse für Ihre Anfrage ein!'),
(1320, 351, 3, 'Bitte geben Sie eine gültige Telefonnummer für Ihre Anfrage ein!'),
(1321, 352, 3, 'Kategorie'),
(1322, 353, 3, 'Auflistungsstatus'),
(1323, 354, 3, 'Zimmer'),
(1324, 355, 3, 'Badezimmer'),
(1325, 356, 3, 'Vermittler'),
(1326, 357, 3, 'Anbieter kontaktieren'),
(1327, 358, 3, 'Immobilienmakler Profil'),
(1328, 359, 3, 'Fotos'),
(1329, 360, 3, 'Preis'),
(1330, 361, 3, 'Überblick'),
(1331, 362, 3, 'Komfort'),
(1332, 363, 3, 'Jetzt buchen'),
(1333, 364, 3, 'Ablaufdatum'),
(1334, 365, 3, 'Grundstücksgröße'),
(1335, 366, 3, 'Hausgröße'),
(1336, 367, 3, 'Garagen'),
(1337, 368, 3, 'Approved'),
(1338, 369, 3, 'Ihre Telefonnummer'),
(1339, 370, 3, 'Vorausgesetzte Felder'),
(1340, 371, 3, 'Empfohlene Felder'),
(1341, 372, 3, 'Adressfelder'),
(1342, 373, 3, 'Optionale Felder'),
(1343, 374, 3, 'Fotoverwaltung'),
(1344, 375, 3, 'Fotogallerie des Objekts'),
(1345, 376, 3, 'Advertisment'),
(1346, 377, 3, 'Kundeninformation '),
(1347, 378, 3, 'RealEstateManager : Verkaufs-Manager'),
(1348, 379, 3, ' Nachricht senden '),
(1349, 380, 3, 'Sende Anfragebenachrichtigung'),
(1350, 381, 3, 'Sende Anfragebenachrichtigung'),
(1351, 382, 3, 'Auf JA setzen wenn Sie per Email benachrichtigt werden wollen sobald ein Benutzer eine Anfrage abschickt. Benutzen Sie die Schaltfläche auf der rechten Seite um anzugeben, wer diese Benachrichtigungen sendet. Sie können die Empfänger-Emailadresse unter [ Backendkonfiguration ] einstellen.'),
(1352, 383, 3, 'Benutzergruppen von denen Anfragebenachrichtigungen gesendet werden'),
(1353, 384, 3, 'Benutzergruppen von denen Anfragebenachrichtigungen gesendet werden'),
(1354, 385, 3, 'Wählen Sie welche Benutzergruppen Anfragebenachrichtigungen senden. Diese Funktion wird nur aktiviert wenn --Sende Anfragebenachrichtigung-- ebenfalls auf JA gesetzt ist'),
(1355, 386, 3, 'Anfrage Email'),
(1356, 387, 3, 'RealEstateManager : Einstellungen'),
(1357, 388, 3, 'Entfernen'),
(1358, 389, 3, 'Foto '),
(1359, 390, 3, 'Objekt vermieten'),
(1360, 391, 3, 'Miete'),
(1361, 392, 3, 'Zu verkaufen'),
(1362, 393, 3, 'Mietrückgabe'),
(1363, 394, 3, 'Zeige Tab Standort'),
(1364, 395, 3, 'Zeige Tab Standort'),
(1365, 396, 3, 'Auf JA setzen wenn sie den Tab Standort anzeigen lassen wollen'),
(1366, 397, 3, 'Zeige Tab Kommentar'),
(1367, 398, 3, 'Zeige Tab Kommentar'),
(1368, 399, 3, 'Auf JA setzen wenn sie den Tab Kommentar anzeigen lassen wollen'),
(1369, 400, 3, ' Objekt hinzufügen '),
(1370, 401, 3, 'Publish'),
(1371, 402, 3, 'Unpublish'),
(1372, 403, 3, 'Delete'),
(1373, 404, 3, 'Return house from rent'),
(1374, 405, 3, 'Rent'),
(1375, 406, 3, 'Zeige Button [ Objekt hinzufügen ]'),
(1376, 407, 3, 'Zeige Button [ Objekt hinzufügen ]'),
(1377, 408, 3, 'Zeige Button [ Objekt hinzufügen ] in der Objektliste im Frontend'),
(1378, 409, 3, 'Erlaube Button [ Objekt hinzufügen ]'),
(1379, 410, 3, 'Erlaube Button [ Objekt hinzufügen ]'),
(1380, 411, 3, 'Erlaube Button [ Objekt hinzufügen ] im Frontend. Diese Funktion wird nur aktiviert wenn --Zeige Button [ Objekt hinzufügen ]-- ebenfalls auf JA gesetzt ist!'),
(1381, 412, 3, 'Kontakte'),
(1382, 413, 3, 'Zeige Kontakte'),
(1383, 414, 3, 'Zeige Kontakte'),
(1384, 415, 3, 'Zeige Kontakte im  \'Alle Informationen\' Tab'),
(1385, 416, 3, 'Speicherort der Fotos'),
(1386, 417, 3, 'Der Speicherort der hochgeladenen Fotos auf dem Server. Der Pfad ist relativ zum Joomla Hauptverzeichnis und muss mit einem / anfangen und enden'),
(1387, 418, 3, 'Speicherort der Fotos'),
(1388, 419, 3, 'Zeige Tab Kommentar'),
(1389, 420, 3, 'Zeige Tab Kommentar'),
(1390, 421, 3, 'Erlaube Tab Kommentar im Frontend. Diese Funktion wird nur aktiviert wenn --Zeige Tab Kommentar-- ebenfalls auf JA gesetzt ist!'),
(1391, 422, 3, 'Zeige Tab Standort'),
(1392, 423, 3, 'Zeige Tab Standort'),
(1393, 424, 3, 'Erlaube Tab Standort im Frontend. Diese Funktion wird nur aktiviert wenn --Zeige Tab Standort-- ebenfalls auf JA gesetzt ist!'),
(1394, 425, 3, 'Zeige Kontakte'),
(1395, 426, 3, 'Zeige Kontakte'),
(1396, 427, 3, 'Erlaube Kontakte im Frontend. Diese Funktion wird nur aktiviert wenn --Zeige Kontakte-- ebenfalls auf JA gesetzt ist!'),
(1397, 428, 3, 'Nicht verfügbar zur Miete'),
(1398, 429, 3, 'Ihr Real Estate wurde in unserer Datenbank gespeichert.<br />Vielen Dank, dass sie unseren Service nutzen'),
(1399, 430, 3, 'Verfügbar zur Vermietung'),
(1400, 431, 3, 'Verfügbar zur Miete bis'),
(1401, 432, 3, 'Nichts gefunden.'),
(1402, 433, 3, 'Beschreibung'),
(1403, 434, 3, 'Standort'),
(1404, 435, 3, 'Details'),
(1405, 436, 3, 'Kommentare'),
(1406, 437, 3, '---wählen---'),
(1407, 438, 3, 'haus zur miete'),
(1408, 439, 3, 'haus zum verkauf'),
(1409, 440, 3, 'Aktiv,Inaktiv,Vertrag,Geschlossen,Absage'),
(1410, 441, 3, 'Apartment,Gewerbe,Eigentumswohnung,Gemeinschaftsobjekt,Bauernhof,Grundstück,Industriegebäude,Mehrfamilienhaus,Farm,Einfamilienhaus,Baufällig,Stadthaus,Detached,Semi-Detached,Att/Row/Twnhouse,Multiplex,Commercial/Retail,Office,Store W/Apt/Office,Sale Of Business,Condo Apt,Co-Ownership Apt'),
(1411, 442, 3, 'Buy request answer'),
(1412, 443, 3, 'Buy request answer'),
(1413, 444, 3, 'Send email to user about buy request solution'),
(1414, 445, 3, 'Form for answer to buy request'),
(1415, 446, 3, 'Form for answer to buy request'),
(1416, 447, 3, 'Form for answer to buy request'),
(1417, 448, 3, 'propertyid'),
(1418, 449, 3, 'owner'),
(1419, 450, 3, 'exactly'),
(1420, 451, 3, 'Answer for your request'),
(1421, 452, 3, 'Form for answer to rent request'),
(1422, 453, 3, 'Form for answer to rent request'),
(1423, 454, 3, 'Form for answer to rent request'),
(1424, 455, 3, 'You can use: <br/>{title} - title of rent house\r\n          <br/>{answer} - declined or accepded<br/>{username} - the name of the user who requested a house<br/>\r\n          {owneremail} - the email of the owner house<br/>{ownername} - the name of the owner house<br/>'),
(1425, 456, 3, 'Rent request answer'),
(1426, 457, 3, 'Rent request answer'),
(1427, 458, 3, 'Send email to user about rent request solution'),
(1428, 459, 3, 'Accepted'),
(1429, 460, 3, 'Declined'),
(1430, 461, 3, 'Edit rent'),
(1431, 462, 3, 'Allow owners list'),
(1432, 463, 3, 'Allow owners list'),
(1433, 464, 3, 'Choose users, whom allow show owners list'),
(1434, 465, 3, 'Show owners list'),
(1435, 466, 3, 'Show owners list'),
(1436, 467, 3, 'If choose "yes" then show owners list in frontend'),
(1437, 468, 3, 'Show owner'),
(1438, 469, 3, 'Show owner'),
(1439, 470, 3, 'Show house owner or not'),
(1440, 471, 3, 'Allow RSS for'),
(1441, 472, 3, 'Allow RSS'),
(1442, 473, 3, 'Select users for whom allow RSS'),
(1443, 474, 3, 'Show RSS'),
(1444, 475, 3, 'Show RSS or not'),
(1445, 476, 3, 'Show RSS'),
(1446, 477, 3, 'list'),
(1447, 478, 3, 'gallery'),
(1448, 479, 3, 'User-selectable'),
(1449, 480, 3, 'View type'),
(1450, 481, 3, 'View type'),
(1451, 482, 3, 'Select view type for houses'),
(1452, 483, 3, 'Allow publish'),
(1453, 484, 3, 'Publish houses added from frontend'),
(1454, 485, 3, 'Publish added houseses'),
(1455, 486, 3, 'Publish added houses'),
(1456, 487, 3, 'Choose users whom allow approve houses from frontend'),
(1457, 488, 3, 'Allow approve'),
(1458, 489, 3, 'Allow approve'),
(1459, 490, 3, 'Approve houses added from frontend'),
(1460, 491, 3, 'Approve added houses'),
(1461, 492, 3, 'Approve added houses'),
(1462, 493, 3, 'Allow button<br />[ print PDF ]'),
(1463, 494, 3, 'Allow button<br />[ print PDF ]'),
(1464, 495, 3, 'Allow button [ print PDF ] in the frontend. This function will be activated only if --Show button [ print PDF ]-- is also set to YES!'),
(1465, 496, 3, 'Allow button<br />[ print View ]'),
(1466, 497, 3, 'Allow button<br />[ print View ]'),
(1467, 498, 3, 'Allow button [ print View ] in the frontend. This function will be activated only if --Show button [ print View ]-- is also set to YES!'),
(1468, 499, 3, 'Allow button<br />[ send Link ]'),
(1469, 500, 3, 'Allow button<br />[ send Link ]'),
(1470, 501, 3, 'Allow button [ send Link ] in the frontend. This function will be activated only if --Show button [ send Mail ]-- is also set to YES!'),
(1471, 502, 3, 'Show button<br />[ send Link ]'),
(1472, 503, 3, 'Show button<br />[ send Link ]'),
(1473, 504, 3, 'Shows button [ send Link ] in the House list in the frontend'),
(1474, 505, 3, 'Show button<br />[ print View ]'),
(1475, 506, 3, 'Show button<br />[ print View ]'),
(1476, 507, 3, 'Shows button [ print View ] in the House list in the frontend'),
(1477, 508, 3, 'Show button<br />[ print PDF ]'),
(1478, 509, 3, 'Show button<br />[ print PDF ]'),
(1479, 510, 3, 'Shows button [ print PDF ] in the House list in the frontend'),
(1480, 511, 3, 'User houses'),
(1481, 512, 3, 'Description'),
(1482, 513, 3, 'Year'),
(1483, 514, 3, 'Owner'),
(1484, 515, 3, 'There have not houses'),
(1485, 516, 3, 'You have not houses'),
(1486, 517, 3, 'Are you sure?'),
(1487, 518, 3, 'Please select houses first!'),
(1488, 519, 3, 'Houses'),
(1489, 520, 3, 'Owners'),
(1490, 521, 3, 'Sorry, you have not access to this page'),
(1491, 522, 3, 'Owners list'),
(1492, 523, 3, 'Owners list'),
(1493, 524, 3, 'Show my houses'),
(1494, 525, 3, 'My houses'),
(1495, 526, 3, 'Publish'),
(1496, 527, 3, 'Unpublish'),
(1497, 528, 3, 'Delete'),
(1498, 529, 3, 'Id'),
(1499, 530, 3, 'Edit'),
(1500, 531, 3, 'Full XML'),
(1501, 532, 3, 'RealestateManager - Edit house rent details'),
(1502, 533, 3, 'Send Add House Notification'),
(1503, 534, 3, 'Send Add House Notification'),
(1504, 535, 3, 'Set to YES if you want to be notified through email when a user adds a House. Use the panel on the right to set who will send these notifications. You can set the receiving email addresses in [ Configuration Backend ].'),
(1505, 536, 3, 'User groups from which Add House notifications will be sent'),
(1506, 537, 3, 'User groups from which Add House notifications will be sent'),
(1507, 538, 3, 'Choose which user groups will send Add House notifications. This function will be activated only if --Send Add House Notification-- is also set to YES'),
(1508, 539, 3, 'Show Buy status'),
(1509, 540, 3, 'Show Buy status in the frontend'),
(1510, 541, 3, 'YES if you want to show the current Buy status of houses in the frontend.'),
(1511, 542, 3, 'Allow Buy Requests'),
(1512, 543, 3, 'Allow Buy Request'),
(1513, 544, 3, 'Allow Buy Requests in the frontend. This function will be activated only if --Show Buy Status-- is also set to YES!'),
(1514, 545, 3, 'House main photos size'),
(1515, 546, 3, 'Set main photos size - width/height in px'),
(1516, 547, 3, 'House main photos size'),
(1517, 548, 3, 'House gallery photo size'),
(1518, 549, 3, 'House gallery photo size'),
(1519, 550, 3, 'Set gallery photo size - width/height in px'),
(1520, 551, 3, 'House upload photo size'),
(1521, 552, 3, 'House upload photo size'),
(1522, 553, 3, 'Set upload photo size - width/height in px'),
(1523, 554, 3, 'Crop image'),
(1524, 555, 3, 'Set Yes to crop images and No to scale images'),
(1525, 556, 3, 'Add House email'),
(1526, 557, 3, 'Add House email'),
(1527, 558, 3, 'Where to send notification messages for new House added. You can enter multiple email addresses separated by a comma.'),
(1528, 559, 3, 'Rent before end notify'),
(1529, 560, 3, 'Rent before end notify'),
(1530, 561, 3, 'Send email to admin before Rent end.<br /> For that you need create GRON job and connect to Cron check so URL:<br /> \'http://{yours site}/index.php?option=com_realestatemanager&Itemid={Yours ItemID}&task=rent_before_end_notify\'   with span - every day.<br /> Cron Jobs may look like:<br /> \'wget -q -O - http://localhost/~andrew/joomla_15/index.php?option=com_realestatemanager&Iteid=56&task=rent_before_end_notify /dev/null\' '),
(1531, 562, 3, 'Rent end days'),
(1532, 563, 3, 'Rent end days'),
(1533, 564, 3, 'How much days before rent end send notify email'),
(1534, 565, 3, 'Rent end email'),
(1535, 566, 3, 'Rent end email'),
(1536, 567, 3, 'Set emails for send notify email to user about Rent end. You may set set emails separated them with help coma.'),
(1537, 568, 3, 'Show location map'),
(1538, 569, 3, 'Location map'),
(1539, 570, 3, 'If choose "yes" then show location map '),
(1540, 571, 3, 'Update'),
(1541, 572, 3, 'Update'),
(1542, 573, 3, 'If choose "yes" then do not remove database'),
(1543, 574, 3, 'Check categories of houses'),
(1544, 575, 3, 'Rent request'),
(1545, 576, 3, 'You can\'t view this page because it not published'),
(1546, 577, 3, 'You can\'t view this page because it not approved by administrator'),
(1547, 578, 3, 'Edit House'),
(1548, 579, 3, 'Add House'),
(1549, 580, 3, 'You have not logined! If you want edit house in future, then login!'),
(1550, 581, 3, 'Click on the map to choose the house location:'),
(1551, 582, 3, 'Date'),
(1552, 583, 3, 'no-img_eng_big.gif'),
(1553, 584, 3, 'Edit house'),
(1554, 585, 3, 'You can use: <br/>{title} - title of buy house\r\n          <br/>{answer} - declined or accepded<br/>{username} - the name of the user who requested a house<br/>\r\n          {owneremail} - the email of the owner house<br/>{ownername} - the name of the owner house<br/>'),
(1555, 586, 3, 'Advanced<br />search'),
(1556, 587, 3, 'from'),
(1557, 588, 3, 'to'),
(1558, 589, 3, 'all'),
(1559, 590, 3, 'Available for rent'),
(1560, 591, 3, 'Year'),
(1561, 592, 3, 'until'),
(1562, 593, 3, 'Week'),
(1563, 594, 3, 'Weekend'),
(1564, 595, 3, 'Midweek'),
(1565, 596, 3, 'Year'),
(1566, 597, 3, 'Month'),
(1567, 598, 3, 'Calendar'),
(1568, 599, 3, 'Add price'),
(1569, 600, 3, 'Select price which are necessary to remove'),
(1570, 601, 3, 'New price rent'),
(1571, 602, 3, 'Add new price rent'),
(1572, 603, 3, 'Show Calendar tab'),
(1573, 604, 3, 'Show Calendar tab'),
(1574, 605, 3, 'Choose users, whom allow show Calendar tab'),
(1575, 606, 3, 'Show Calendar tab'),
(1576, 607, 3, 'Show Calendar tab'),
(1577, 608, 3, 'If choose "yes" then show calendar tab in frontend'),
(1578, 609, 3, 'Show owner'),
(1579, 610, 3, 'Show calendar'),
(1580, 611, 3, 'Show house calendar or not'),
(1581, 612, 3, 'Default price label for calendar'),
(1582, 613, 3, 'Default price labels for calendar (weekend, week, midweek)'),
(1583, 614, 3, 'Default price label for calendar'),
(1584, 615, 3, 'RealEstateManager : Language Manager'),
(1585, 616, 3, 'Lang tag'),
(1586, 617, 3, 'Constant'),
(1587, 618, 3, 'Value constant'),
(1588, 619, 3, 'Search by constant'),
(1589, 620, 3, 'Search by value constant'),
(1590, 621, 3, 'Sys type'),
(1591, 622, 3, 'Language'),
(1592, 623, 3, 'RealEstateManager : Features Manager'),
(1593, 624, 3, 'Features'),
(1594, 625, 3, 'Category'),
(1595, 626, 3, 'Published'),
(1596, 627, 3, 'Name Alias'),
(1597, 628, 3, 'Category Alias'),
(1598, 629, 3, 'Features manager'),
(1599, 630, 3, 'Image'),
(1600, 631, 3, 'Select photo if it is necessary to remove'),
(1601, 632, 3, 'Recommended image size 25 x 25 pixels'),
(1602, 633, 3, 'Categories for Manager Feature'),
(1603, 634, 3, 'Category must be entered, separated by commas'),
(1604, 635, 3, 'Categories for Manager Feature'),
(1605, 636, 3, 'Show Feature Icon'),
(1606, 637, 3, 'Show Feature Icon'),
(1607, 638, 3, 'If choose "yes" then show Icon for Manager Feature'),
(1608, 639, 3, 'Show title of Category Features'),
(1609, 640, 3, 'Show title of Category Features'),
(1610, 641, 3, 'If choose "yes" then show title categories for Manager Feature'),
(1611, 642, 3, 'Currency'),
(1612, 643, 3, 'If you want to use other currencies, enter the values as: USD = 1; EUR = 3.15; or USD=; EUR=; Available for paypal currencies: AUD, CAD, CZK, DKK, EUR, HKD, HUF, JPY, NOK, NZD, PLN, SGD, SEK, CHF, USD, RUB, ILS, MXN, PHP, GBP, THB .'),
(1613, 644, 3, 'Currency with coefficients'),
(1614, 645, 3, 'Show price sepaprator'),
(1615, 646, 3, 'Show price sepaprator'),
(1616, 647, 3, 'Show price sepaprator'),
(1617, 648, 3, 'Get geographic coordinates'),
(1618, 649, 3, 'Show Custom Text Field 1'),
(1619, 650, 3, 'Show Custom Text Field 2'),
(1620, 651, 3, 'Show Custom Text Field 3'),
(1621, 652, 3, 'Show Custom Text Field 4'),
(1622, 653, 3, 'Show Custom Text Field 5'),
(1623, 654, 3, 'Show Custom Dropdown Field 6'),
(1624, 655, 3, 'Show Custom Dropdown Field 7'),
(1625, 656, 3, 'Show Custom Dropdown Field 8'),
(1626, 657, 3, 'Show Custom Dropdown Field 9'),
(1627, 658, 3, 'Show Custom Dropdown Field 10'),
(1628, 659, 3, 'Custom Fields Manager'),
(1629, 660, 3, 'Custom Text 1'),
(1630, 661, 3, 'Custom Text 2'),
(1631, 662, 3, 'Custom Text 3'),
(1632, 663, 3, 'Custom Text 4'),
(1633, 664, 3, 'Custom Text 5'),
(1634, 665, 3, 'Custom Dropdown Field 6'),
(1635, 666, 3, 'Custom Dropdown Field 7'),
(1636, 667, 3, 'Custom Dropdown Field 8'),
(1637, 668, 3, 'Custom Dropdown Field 9'),
(1638, 669, 3, 'Custom Dropdown Field 10'),
(1639, 670, 3, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(1640, 671, 3, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(1641, 672, 3, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(1642, 673, 3, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(1643, 674, 3, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(1644, 675, 3, 'Allowed Exts eDocument'),
(1645, 676, 3, 'Allowed Exts Image'),
(1646, 677, 3, 'House Page Layout'),
(1647, 678, 3, 'All Houses Layout'),
(1648, 679, 3, 'Price Format'),
(1649, 680, 3, 'Choose format of price (point, comma or space) or enter your delimiter'),
(1650, 681, 3, 'Date format'),
(1651, 682, 3, 'Date format'),
(1652, 683, 3, 'Reorder date formats to set your date display format'),
(1653, 684, 3, 'Time format'),
(1654, 685, 3, '%Y - Year; %m - month;  %d - day'),
(1655, 686, 3, '%H - hours; %i - minutes; %s - seconds'),
(1656, 687, 3, 'Price unit show'),
(1657, 688, 3, 'After'),
(1658, 689, 3, 'Before'),
(1659, 690, 3, 'Select price ditlimer os set youre.'),
(1660, 691, 3, 'Show price unit before or affter price'),
(1661, 692, 3, 'Custom owneremail'),
(1662, 693, 3, 'Show adderess on map'),
(1663, 694, 3, 'Add new photo'),
(1664, 695, 3, 'Order By'),
(1665, 696, 3, 'Select photo if it is necessary to remove'),
(1666, 697, 3, 'Select photos which are necessary to remove from photo gallery'),
(1667, 698, 3, 'A short name to appear in FeatureMenus'),
(1668, 699, 3, 'A short name to appear in menus'),
(1669, 700, 3, 'A full name to appear in menus'),
(1670, 701, 3, 'General Info'),
(1671, 702, 3, 'Additional Info'),
(1672, 703, 3, 'Photos and Documents'),
(1673, 704, 3, 'Owner Contakts'),
(1674, 705, 3, 'Categories for Feature Manager'),
(1675, 706, 3, 'Feature List'),
(1676, 707, 3, 'House Page Settings'),
(1677, 708, 3, 'Category Page Settings'),
(1678, 709, 3, 'Email and Notification Settings'),
(1679, 710, 3, 'Administrator Settings'),
(1680, 711, 3, 'Plugins Settings'),
(1681, 712, 3, 'House Image Settings'),
(1682, 713, 3, 'Tabs Manager'),
(1683, 714, 3, 'Seller Contact Settings'),
(1684, 715, 3, 'Feature list settings'),
(1685, 716, 3, 'Extra Fields manager'),
(1686, 717, 3, 'eDocument Options'),
(1687, 718, 3, 'Button Options'),
(1688, 719, 3, 'Rent Request Options'),
(1689, 720, 3, 'Buy Request Options'),
(1690, 721, 3, '{title}\r\n          [PropertyID]: {id}<br>\r\n          A new house was added by {username}<br>\r\n          on {date} to category {category}.<br>\r\n          Please log on and approve or deny this item.<br>'),
(1691, 722, 3, 'User {username} has added a Review to house:<br>{house_title}<br>\r\n          Title Comment: {title}<br>\r\n          Label Rating: [{rating}]<br>\r\n          Review Comment:<br> {comment}<br>\r\n          Please log on and edit this review where necessary.'),
(1692, 723, 3, 'User {username} has submitted a Rent Request for:<br>\r\n          PropertyID: {hid_value}<br>\r\n          {house_title}<br>\r\n          Please log on and approve or deny this Rent Request'),
(1693, 724, 3, 'Answer for your request:<br>\r\n          Dear {username}!<br>\r\n          Your rent request for<br>\r\n          {title} {owneremail} {ownername}<br>\r\n          Answer: {answer}'),
(1694, 725, 3, '\r\n          User {username}  has submitted a Buying Request for:<br>\r\n          PropertyID: {hid_value}<br>\r\n          {house_title}<br>\r\n          Please log on and approve or deny this Buying Request'),
(1695, 726, 3, 'Dear {username}!<br>\r\n          Your buy request for<br>\r\n          {title} {owneremail} {ownername}<br>\r\n          Answer: {answer}<br>'),
(1696, 727, 3, 'Rent User: {username}({user_email})<br>\r\n      House: {house_title}<br>\r\n      House ID: {ID}<br>\r\n      PropertyID: {PropertyID}<br>'),
(1697, 728, 3, 'You can use this tags in your letter:<br>{house_title} - title of added house\r\n          <br>{username} - the name of the user who added a house\r\n          <br>{hid_value} - identification number of the house'),
(1698, 729, 3, 'Past particular tags in "Send Buy Request Notification",and you recive necessary data in your letter'),
(1699, 730, 3, 'Tags Description'),
(1700, 731, 3, 'You can use this tags in your letter:<br/>{house_title} - title of added house\r\n          <br>{username} - the name of the user who added a house <br>{user_email} - email of the user who rents the house\r\n          <br>{vid} - identification number of the house'),
(1701, 732, 3, 'Past particular tags in "Rent before end notify",and you recive necessary data in your letter'),
(1702, 733, 3, 'Tags Description'),
(1703, 734, 3, 'You can use this tags in your letter:<br>{house_title} - title of added house\r\n          <br>{username} - the name of the user who added a house\r\n          <br>{hid_value} - identification number of the house<br>'),
(1704, 735, 3, 'Past particular tags in "Send Rent Request Notification",and you recive necessary data in your letter'),
(1705, 736, 3, 'Tags Description'),
(1706, 737, 3, 'You can use this tags in your letter: <br>{title} - title of added house\r\n          {id} - identification number of the house\r\n          <br>{username} - the name of the user who added a house\r\n          <br>{date} - date when house was added<br>{category} - category which the house was added in'),
(1707, 738, 3, 'Past particular tags in "Send Add House Notification",and you recive necessary data in your letter'),
(1708, 739, 3, 'Tags Description'),
(1709, 740, 3, 'You can use this tags in your letter: <br>{username} - name of the user,what added a review\r\n          <br>{house_title} - title of review house\r\n          <br>{title} - title of the comment, {rating} - rating of the comment,\r\n          <br>{comment} - body of the comment'),
(1710, 741, 3, 'Past particular tags in "Send Review Notification",and you recive necessary data in your letter'),
(1711, 742, 3, 'Tags Description'),
(1712, 743, 3, 'show my houses'),
(1713, 744, 3, 'edit my houses'),
(1714, 745, 3, 'rent requests'),
(1715, 746, 3, 'buying requests'),
(1716, 747, 3, 'All Categories Layout'),
(1717, 748, 3, 'Single Category Layout'),
(1718, 749, 3, 'Search layout'),
(1719, 750, 3, 'Select which extra text fields, you want to display'),
(1720, 751, 3, 'Text field'),
(1721, 752, 3, 'Select which extra dropdown fields, you want to display'),
(1722, 753, 3, 'Dropdown field'),
(1723, 754, 3, 'Published'),
(1724, 755, 3, 'Approve review added'),
(1725, 756, 3, 'Chose YES if you want to publish added review automatically'),
(1726, 757, 3, 'Publish review added'),
(1727, 758, 3, 'Allow publish'),
(1728, 759, 3, 'Allow publish to usergroup'),
(1729, 760, 3, 'Chose the usergroup who can publish added review automatically'),
(1730, 761, 3, 'License text'),
(1731, 762, 3, 'Rent Requests'),
(1732, 763, 3, 'Sale Manager'),
(1733, 764, 3, 'Import/Export'),
(1734, 765, 3, 'Language Manager'),
(1735, 766, 3, 'Einstellungen'),
(1736, 767, 3, 'Group'),
(1737, 768, 3, 'Count of houses'),
(1738, 769, 3, 'How many houses users can publish from a specific group.'),
(1739, 770, 3, 'Show buy for booking'),
(1740, 771, 3, 'Allow PayPal buy'),
(1741, 772, 3, 'Show PayPal rent'),
(1742, 773, 3, 'Allow PayPal rent'),
(1743, 774, 3, 'Your PayPal email'),
(1744, 775, 3, 'Successful return url'),
(1745, 776, 3, 'After successful payment returns the buyer on your page.'),
(1746, 777, 3, 'Image url'),
(1747, 778, 3, 'Add image to PayPal page.'),
(1748, 779, 3, 'Cancel return url'),
(1749, 780, 3, 'If buyer press cancel in payment page, returns the buyer on your page.'),
(1750, 781, 3, 'Real(yes) or a test(no) PayPal account'),
(1751, 782, 3, 'If real go to www.paypal.com else go to www.sandbox.paypal.com'),
(1752, 783, 3, 'PayPal Options'),
(1753, 784, 3, 'Number of photos'),
(1754, 785, 3, 'How many photos in gallery users can publish from a specific group.'),
(1755, 786, 3, 'Total price: '),
(1756, 787, 3, 'Go now to PayPal'),
(1757, 788, 3, 'Payment plugin is not installed'),
(1758, 789, 3, 'Special price'),
(1759, 790, 3, 'Special price per day'),
(1760, 791, 3, 'Special price per night'),
(1761, 792, 3, 'Add new special price and save'),
(1762, 793, 3, 'From'),
(1763, 794, 3, 'To'),
(1764, 795, 3, 'Price per day'),
(1765, 796, 3, 'Сalculate'),
(1766, 797, 3, 'Special price and rent time'),
(1767, 798, 3, 'Special price per day("yes") or per night("no")'),
(1768, 799, 3, 'if per day calculation all day(example of 2014-02-10 from 2014-02-16 is 7 days) if per night calculation all night (example of 2014-02-10 from 2014-02-16 is 6 nights)'),
(1769, 800, 3, 'Nights'),
(1770, 801, 3, 'Images'),
(1771, 802, 3, 'Type the allowed extensions of eDocuments '),
(1772, 803, 3, 'Type the allowed extensions of Images'),
(1773, 804, 3, 'Pay'),
(1774, 805, 3, 'Language'),
(1775, 806, 3, 'Select Language');
INSERT INTO `ya4mp_rem_const_languages` (`id`, `fk_constid`, `fk_languagesid`, `value_const`) VALUES
(1776, 807, 3, 'Clone'),
(1777, 808, 3, 'Orders'),
(1778, 809, 3, '/images/marker-1.png,/images/marker-2.png,/images/marker-3.png,/images/marker-4.png,/images/marker-5.png,/images/marker-6.png,/images/marker-7.png,/images/marker-8.png,/images/marker-9.png,/images/marker-10.png,/images/marker-11.png,/images/marker-12.png,/images/marker-13.png'),
(1779, 810, 3, 'Message for unsuccessfull payment'),
(1780, 811, 3, 'Message for successfull payment'),
(1781, 812, 3, 'Insert the Message on page with notification about unsuccessfull payment'),
(1782, 813, 3, 'Insert the Message on page with notification about successfull payment'),
(1783, 818, 3, 'Email Notification Options'),
(1784, 819, 3, 'Review Notification Options'),
(1785, 820, 3, 'Price Options'),
(1786, 821, 3, 'Date Options'),
(1787, 822, 3, 'Groups Options'),
(1788, 823, 3, 'Extension Options'),
(1789, 824, 3, 'Update Options'),
(1790, 825, 3, 'Category Options'),
(1791, 826, 3, 'Eintrag weiterempfehlen'),
(1792, 827, 3, 'Fotogröße für die Vorschau Häuser'),
(1793, 828, 3, 'Stellen Sie die Bildgröße für Alle Häuser und einzelne Kategorien'),
(1794, 829, 3, 'Email address for notifications about sending messages.'),
(1795, 830, 3, 'Please select one item'),
(1796, 831, 3, 'House already returned'),
(1797, 832, 3, 'Error in rent, for associated'),
(1798, 833, 3, 'You cannot return houses that were not lent out'),
(1799, 834, 3, 'This house has assitiated house not for rent'),
(1800, 835, 3, 'This house is not for rent'),
(1801, 836, 3, 'Bad date format'),
(1802, 837, 3, 'You can not use paypal with this currencies, please set correct currencies or turn off paypal buttons '),
(1803, 838, 3, 'You can clon only one house'),
(1804, 839, 3, 'Please select one review for edit'),
(1805, 840, 3, 'Select a category to delete'),
(1806, 841, 3, 'You must select only one item for edit'),
(1807, 842, 3, 'Select an amenity to delete'),
(1808, 843, 3, 'You edit houses that were not lent out'),
(1809, 814, 3, 'You do success payment!'),
(1810, 815, 3, 'You do unsuccess payment!'),
(1811, 816, 3, 'Please install plugin of payment to enable payment feature'),
(1812, 817, 3, 'Plugin'),
(1813, 844, 3, 'Send email to admin before Booking end.<br /> For that you need create CRON job and connect to Cron check so URL:<br /> http://{yours site}/index.php?option=com_realestatemanager&Itemid={Yours ItemID}&task=rent_before_end_notify  with span - every day.<br /> Cron Jobs may look like:<br/> "wget -q -O - http://localhost/index.php?option=com_realestatemanager&Iteid=56&task=rent_before_end_notify /dev/null'),
(1814, 845, 3, 'Show captcha option'),
(1815, 846, 3, 'Show search'),
(1816, 847, 3, 'Display captcha option in the frontend'),
(1817, 848, 3, 'Display search block in the frontend'),
(1818, 849, 3, 'Sqrt'),
(1819, 329, 3, 'Show subcategory'),
(1820, 330, 3, 'Show subcategory'),
(1821, 331, 3, 'If set to YES, you will see subcategory for every category'),
(1822, 850, 3, 'Show buy for sale'),
(1823, 851, 3, 'Show buy form after sale request'),
(1824, 852, 3, 'Show buy form after book request'),
(1825, 853, 3, 'File ext. not allowed to upload!'),
(1826, 854, 3, 'Language associate houses'),
(1827, 855, 3, 'Language associate categories'),
(1828, 856, 3, 'This property only for houses with language'),
(1829, 857, 3, 'You have'),
(1830, 858, 3, 'maximum count house for your group'),
(1831, 859, 3, 'To add special prices, you must first save property !'),
(1832, 860, 3, 'You have max photos. Limit for this users group'),
(1833, 861, 3, 'You have no numeric PropertyId. Please change all PropertyID to numeric or set to <No> option'),
(1834, 862, 3, 'Please enter a valid Number!'),
(1835, 863, 3, 'File mime type not match file ext'),
(1836, 864, 3, 'You can publish only'),
(1837, 865, 3, 'Please login'),
(1838, 866, 3, 'New house added'),
(1839, 867, 3, 'New buying request added'),
(1840, 868, 3, 'New house review added'),
(1841, 869, 3, 'New rent request added'),
(1842, 870, 3, 'Rent expire notice'),
(1843, 871, 3, 'So houses rent expire soon'),
(1844, 872, 3, 'Subcategories'),
(1845, 873, 3, 'Apply'),
(1846, 874, 3, 'Save category'),
(1847, 875, 3, 'Delete Order'),
(1848, 876, 3, 'You must return all houses from rent first!'),
(1849, 877, 3, 'Order ID'),
(1850, 878, 3, 'House title'),
(1851, 879, 3, 'Email'),
(1852, 880, 3, 'Date'),
(1853, 881, 3, 'Status'),
(1854, 882, 3, 'Price'),
(1855, 883, 3, 'Paid'),
(1856, 884, 3, 'Details'),
(1857, 885, 3, 'User'),
(1858, 886, 3, 'Username'),
(1859, 887, 3, 'Accept type/info: '),
(1860, 888, 3, 'Payment system: '),
(1861, 889, 3, 'Payer email: '),
(1862, 890, 3, 'Pending reason: '),
(1863, 891, 3, 'In your request encountered an error, please contact the administrator!'),
(1864, 892, 3, 'Load languages'),
(1865, 893, 3, 'Owner ID:'),
(1866, 894, 3, 'Users Booking History'),
(1867, 895, 3, 'Rent history'),
(1868, 896, 3, 'RealEstateManager : Rent Hisory'),
(1869, 897, 3, 'RealEstateManager : Users Rent Hisory'),
(1870, 898, 3, 'Currency in your house does not match administrator settings, maybe they have been changed. Please reselect  currency in your house !'),
(1871, 899, 3, 'Please insert an track kind'),
(1872, 900, 3, 'Please insert an track language'),
(1873, 901, 3, 'Please insert an track title'),
(1874, 902, 3, 'File uploads is off in your PHP settings.!'),
(1875, 903, 3, 'Post max size in your PHP settings less than your video file.!'),
(1876, 904, 3, 'Upload max file size in your PHP settings less than your video file.!'),
(1877, 905, 3, 'Video'),
(1878, 906, 3, 'Video source'),
(1879, 907, 3, 'Delete video'),
(1880, 908, 3, 'Add new video file'),
(1881, 909, 3, 'Track for video'),
(1882, 910, 3, 'Track download link'),
(1883, 911, 3, 'Delete track'),
(1884, 912, 3, 'Add new track'),
(1885, 913, 3, 'Add alternative video'),
(1886, 914, 3, 'Upload video'),
(1887, 915, 3, 'Video download link'),
(1888, 916, 3, 'Youtube code <br> (For example <br> OtPn6qDy5GU)'),
(1889, 917, 3, '<p><font color="red">!!!</font>Youtube code has more priority. If you enter Youtube code you will see video in the frontend from youtube source</p><br/>'),
(1890, 918, 3, 'Kind (Specifies the kind of text track)'),
(1891, 919, 3, 'Src lang (language of the track)'),
(1892, 920, 3, 'Label (Specifies the title of the text track)'),
(1893, 921, 3, 'Error uploading video!'),
(1894, 922, 3, 'Error uploading track!'),
(1895, 923, 3, 'Upload track'),
(1896, 924, 3, 'Video/Track Options'),
(1897, 925, 3, 'Video and track support:'),
(1898, 926, 3, 'Allowed Exts Video'),
(1899, 927, 3, 'Allowed Exts Track'),
(1900, 928, 3, 'Location of video'),
(1901, 929, 3, 'Location of track'),
(1902, 930, 3, 'Calendar of availability and rental rates per period'),
(1903, 931, 3, 'Available date for rent'),
(1904, 932, 3, 'Not available date for rent'),
(1905, 933, 3, 'Address'),
(1906, 934, 3, 'Range(km)'),
(1907, 935, 3, 'Select Category'),
(1908, 936, 3, 'Search'),
(1909, 937, 3, 'RealEstateManager : Orders'),
(1910, 938, 3, 'Please do not press f5 again!!!'),
(1911, 939, 3, 'Show Street View'),
(1912, 940, 3, 'Show Street View'),
(1913, 941, 3, 'Treb Options'),
(1914, 942, 3, 'Login'),
(1915, 943, 3, 'Password'),
(1916, 944, 3, 'TREB XML'),
(1917, 945, 3, 'Login and Password from rets.torontomls.net are required fields'),
(1918, 946, 3, 'Update map'),
(1919, 947, 3, 'Update map from all houses where latitude and longitude are undefined'),
(1920, 948, 3, 'Display booking form captcha option in the frontend'),
(1921, 949, 3, 'Display send message form captcha option in the frontend'),
(1922, 950, 3, 'Show booking form captcha option'),
(1923, 951, 3, 'Show send message form captcha option');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_feature`
--

CREATE TABLE `ya4mp_rem_feature` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT '',
  `categories` varchar(250) DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `image_link` varchar(250) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_feature`
--

INSERT INTO `ya4mp_rem_feature` (`id`, `name`, `categories`, `published`, `image_link`) VALUES
(323, 'Fully Furnished', 'Interior', 1, ''),
(322, 'Pool', ' Specific', 1, ''),
(321, 'Yard', ' Exterior', 1, ''),
(320, 'Garden', ' Exterior', 1, ''),
(319, 'Patio', ' Exterior', 1, ''),
(324, 'Heating', 'Interior', 1, ''),
(325, 'Fireplace', 'Interior', 1, ''),
(326, 'Balcony', ' Specific', 1, ''),
(327, 'Gym', ' Specific', 1, ''),
(328, 'Garage', ' Exterior', 1, ''),
(329, 'Air Conditioning', 'Interior', 1, ''),
(330, 'Guest Quarters', ' Specific', 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_feature_houses`
--

CREATE TABLE `ya4mp_rem_feature_houses` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) NOT NULL DEFAULT '0',
  `fk_featureid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_feature_houses`
--

INSERT INTO `ya4mp_rem_feature_houses` (`id`, `fk_houseid`, `fk_featureid`) VALUES
(2, 2, 326),
(3, 2, 327),
(4, 2, 323),
(5, 2, 324),
(6, 2, 325),
(7, 2, 329),
(8, 3, 320),
(9, 3, 319),
(10, 3, 328),
(11, 3, 322),
(12, 3, 327),
(13, 3, 324),
(14, 3, 325),
(15, 4, 329);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_houses`
--

CREATE TABLE `ya4mp_rem_houses` (
  `id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `houseid` varchar(20) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `fk_rentid` int(11) DEFAULT '0',
  `associate_house` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `link` varchar(250) NOT NULL DEFAULT '',
  `listing_type` varchar(45) NOT NULL DEFAULT '',
  `price` varchar(14) NOT NULL DEFAULT '',
  `priceunit` varchar(14) NOT NULL DEFAULT '',
  `htitle` varchar(200) NOT NULL DEFAULT '',
  `hcountry` varchar(50) NOT NULL DEFAULT '',
  `hregion` varchar(50) NOT NULL DEFAULT '',
  `hcity` varchar(50) NOT NULL DEFAULT '',
  `hzipcode` varchar(50) NOT NULL DEFAULT '',
  `hlocation` varchar(100) NOT NULL DEFAULT '',
  `hlatitude` varchar(20) NOT NULL DEFAULT '',
  `hlongitude` varchar(20) NOT NULL DEFAULT '',
  `map_zoom` varchar(5) NOT NULL DEFAULT '',
  `rooms` int(11) DEFAULT '0',
  `bathrooms` int(11) DEFAULT '0',
  `contacts` varchar(250) DEFAULT '',
  `image_link` varchar(200) DEFAULT '',
  `listing_status` varchar(45) DEFAULT '',
  `property_type` varchar(45) DEFAULT '',
  `year` varchar(4) DEFAULT '',
  `agent` varchar(45) DEFAULT '',
  `area_unit` varchar(45) DEFAULT '',
  `land_area` varchar(45) DEFAULT '',
  `land_area_unit` varchar(45) DEFAULT '',
  `expiration_date` date DEFAULT '0000-00-00',
  `lot_size` varchar(45) DEFAULT '',
  `house_size` varchar(45) DEFAULT '',
  `garages` varchar(50) DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `edok_link` varchar(200) DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `owneremail` varchar(50) DEFAULT '',
  `featured_clicks` varchar(100) DEFAULT '',
  `featured_shows` varchar(100) DEFAULT '',
  `pixUpdtedDt` varchar(100) DEFAULT '',
  `extra1` varchar(250) DEFAULT '',
  `extra2` varchar(250) DEFAULT '',
  `extra3` varchar(250) DEFAULT '',
  `extra4` varchar(250) DEFAULT '',
  `extra5` varchar(250) DEFAULT '',
  `extra6` varchar(250) DEFAULT '',
  `extra7` varchar(250) DEFAULT '',
  `extra8` varchar(250) DEFAULT '',
  `extra9` varchar(250) DEFAULT '',
  `extra10` varchar(250) DEFAULT '',
  `language` varchar(250) DEFAULT '*',
  `owner_id` int(9) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_houses`
--

INSERT INTO `ya4mp_rem_houses` (`id`, `asset_id`, `houseid`, `catid`, `sid`, `fk_rentid`, `associate_house`, `description`, `link`, `listing_type`, `price`, `priceunit`, `htitle`, `hcountry`, `hregion`, `hcity`, `hzipcode`, `hlocation`, `hlatitude`, `hlongitude`, `map_zoom`, `rooms`, `bathrooms`, `contacts`, `image_link`, `listing_status`, `property_type`, `year`, `agent`, `area_unit`, `land_area`, `land_area_unit`, `expiration_date`, `lot_size`, `house_size`, `garages`, `checked_out`, `checked_out_time`, `ordering`, `date`, `hits`, `edok_link`, `published`, `approved`, `owneremail`, `featured_clicks`, `featured_shows`, `pixUpdtedDt`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `language`, `owner_id`) VALUES
(2, 62, '1', 0, 0, 0, 'a:2:{s:5:"en-GB";s:1:"0";s:1:"*";i:2;}', 'Boheme Apartments, set at the waterside gateway to CityVillage, offer the ultimate urban Gold City lifestyle allowing you to live life your way at the heart of the city. Boheme Apartments offer inspiring interior design and functional open plan layouts that flow seamlessly through to generous balconies, with charming Gold Coast City skyline or Hinterland vistas to enjoy. Robina Town Centre, Gold City\'s shopping, dining and entertainment destination is just a 450m walk away through landscaped, waterside walkways. Top private schools, medical precinct and Train Station & Bus Interchange are also within walking distance and Airport is just 20 minutes by car. There are five international golf courses within a few minutes drive and just a 10 minute drive takes you to the famous surfing and cafe destination Burleigh Heads ensuring you make the most of the summer.', '', '2', '610000', 'USD', 'Boheme Apartments at CityVillage', 'Austria', '', 'Vienna', '', 'Fleischmarkt 20', '48.2103471', '16.37762220000002', '14', 6, 2, '', '7D30FC3F-ECBB-6C5B-DAE2-133A1182F12C_5.jpg', '1', '1', '2012', 'Mr. Lawman', '', '', '', '0000-00-00', '', '115', '', 0, '0000-00-00 00:00:00', 0, '2015-02-26 11:39:42', 149, '', 1, 1, 'quickstart_j3@mail.com', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '*', 0),
(3, 63, '2', 0, 0, 504, '', 'This elegantly renovated period home is immaculate inside and out! Enviably situated this home comprises formal sitting and dining rooms which lead to a huge, beautifully bright living/dining which achieves indoor-outdoor brilliance and incorporates an open-plan kitchen of consummate quality. Main bedroom with study/retreat, walk-in robes, ensuite and sublime courtyard is complemented by a similarly luxurious second downstairs bedroom, also enjoying ensuite, walk-in robes and study/lounge space. Upstairs, two further bedrooms & modern bathroom surround generous children’s living and sunny balcony. Glorious gardens include solar/gas heated pool & spa, inviting entertaining areas,double carport & additional parking. A prestigious position offering quick access to many leading schools including Camberwell Grammar School, Fintona & Camberwell Girls. Close to transport & shops. Garden & Pool maintenance included.', '', '1', '2200', 'USD', 'Elegantly cottage in sunny California', 'USA', '', 'Los Angeles', '', '10777 Santa Monica Boulevard', '34.0526682', '-118.43334229999999', '14', 8, 3, '', 'CA80ECE7-AA10-0DE1-08C9-A22FA9AB9E8B_6.jpg', '1', '10', '2013', 'Mr. 	Mathews', '', '', '', '0000-00-00', '550', '400', '2', 0, '0000-00-00 00:00:00', 0, '2015-02-26 11:39:57', 203, '', 1, 1, 'quickstart_j3@mail.com', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '*', 0),
(4, 64, '3', 0, 0, 0, '', 'Masterfully renovated and extended to blend modern luxury and living zones with the rich original period highlights and grand dimensions, this appealing 5-bedroom home in a quiet tree-lined street offers exceptional accommodation for a large family. Savour the delights of indoor/outdoor living with a stunning gourmet kitchen of glossy black granite benchtops and premium appliances overlooking the generous light-filled informal meals and family room. Multiple sets of sliding doors flow out to an extensive deck, glistening in-ground solar-heated pool and private landscaped garden to create a dream setting for entertaining friends and family. The formal lounge and formal dining provide a second living zone, whilst the wide mezzanine landing offers a retreat area incorporating multiple study spaces. Includes 2 sparkling family bathrooms plus a powder room, gas ducted heating throughout, refrigerated cooling upstairs and reverse cycle heating/cooling downstairs, family sized laundry, under-stair and roof storage, workshop/shed and 4 off-street parking spaces. Enjoy fabulous eateries, shopping and cinemas at nearby Camberwell Junction, walk to tram, primary schools and secondary schools, all within easy reach of the Monash Freeway.', '', '2', '750000', 'EUR', 'Spacious and elegant family entertainer', 'Belgium', '', 'Gosselies', '6041', 'Rue Louis Bleriot ', '50.4735739', '4.4621790999999575', '14', 9, 2, '', 'C6365E27-99F9-68C9-4331-28206D00C921_4.jpg', '1', '12', '2014', 'Mr. Bradshaw', '', '', '', '0000-00-00', '440', '375', '2', 0, '0000-00-00 00:00:00', 0, '2015-02-26 11:39:32', 55, '', 1, 1, 'quickstart_j3@mail.com', '45', '0', '', '', '', '', '', '', '0', '0', '', '', '', '*', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_languages`
--

CREATE TABLE `ya4mp_rem_languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) DEFAULT NULL,
  `title` varchar(250) DEFAULT '',
  `sef` char(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_languages`
--

INSERT INTO `ya4mp_rem_languages` (`id`, `lang_code`, `title`, `sef`) VALUES
(2, 'en-GB', 'English', NULL),
(3, 'de-DE', 'German', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_main_categories`
--

CREATE TABLE `ya4mp_rem_main_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `associate_category` varchar(255) DEFAULT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `params2` text NOT NULL,
  `language` varchar(50) DEFAULT '*'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_main_categories`
--

INSERT INTO `ya4mp_rem_main_categories` (`id`, `parent_id`, `associate_category`, `asset_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`, `params2`, `language`) VALUES
(46, 0, 'a:1:{s:5:"en-GB";i:46;}', 57, 'Apartment', 'Apartment', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(47, 0, 'a:1:{s:5:"en-GB";s:3:"304";}', 58, 'Townhouse', 'Townhouse', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(48, 0, '', 59, 'Family House', 'Family House', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(49, 0, '', 60, 'Manufactured', 'Manufactured', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(50, 0, 'a:1:{s:1:"*";i:50;}', 61, 'Cottage ', 'Cottage ', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_mime_types`
--

CREATE TABLE `ya4mp_rem_mime_types` (
  `mime_ext` text,
  `mime_type` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_mime_types`
--

INSERT INTO `ya4mp_rem_mime_types` (`mime_ext`, `mime_type`) VALUES
('ez', 'application/andrew-inset'),
('aw', 'application/applixware'),
('atom', 'application/atom+xml'),
('atomcat', 'application/atomcat+xml'),
('atomsvc', 'application/atomsvc+xml'),
('ccxml', 'application/ccxml+xml'),
('cdmia', 'application/cdmi-capability'),
('cdmic', 'application/cdmi-container'),
('cdmid', 'application/cdmi-domain'),
('cdmio', 'application/cdmi-object'),
('cdmiq', 'application/cdmi-queue'),
('cu', 'application/cu-seeme'),
('davmount', 'application/davmount+xml'),
('dbk', 'application/docbook+xml'),
('dssc', 'application/dssc+der'),
('xdssc', 'application/dssc+xml'),
('ecma', 'application/ecmascript'),
('emma', 'application/emma+xml'),
('epub', 'application/epub+zip'),
('exi', 'application/exi'),
('pfr', 'application/font-tdpfr'),
('gml', 'application/gml+xml'),
('gpx', 'application/gpx+xml'),
('gxf', 'application/gxf'),
('stk', 'application/hyperstudio'),
('ink', 'application/inkml+xml'),
('inkml', 'application/inkml+xml'),
('ipfix', 'application/ipfix'),
('jar', 'application/java-archive'),
('ser', 'application/java-serialized-object'),
('class', 'application/java-vm'),
('js', 'application/javascript'),
('json', 'application/json'),
('jsonml', 'application/jsonml+json'),
('lostxml', 'application/lost+xml'),
('hqx', 'application/mac-binhex40'),
('cpt', 'application/mac-compactpro'),
('mads', 'application/mads+xml'),
('mrc', 'application/marc'),
('mrcx', 'application/marcxml+xml'),
('ma', 'application/mathematica'),
('nb', 'application/mathematica'),
('mb', 'application/mathematica'),
('mathml', 'application/mathml+xml'),
('mbox', 'application/mbox'),
('mscml', 'application/mediaservercontrol+xml'),
('metalink', 'application/metalink+xml'),
('meta4', 'application/metalink4+xml'),
('mets', 'application/mets+xml'),
('mods', 'application/mods+xml'),
('m21', 'application/mp21'),
('mp21', 'application/mp21'),
('mp4s', 'application/mp4'),
('doc', 'application/msword'),
('dot', 'application/msword'),
('mxf', 'application/mxf'),
('bin', 'application/octet-stream'),
('dms', 'application/octet-stream'),
('lrf', 'application/octet-stream'),
('mar', 'application/octet-stream'),
('so', 'application/octet-stream'),
('dist', 'application/octet-stream'),
('distz', 'application/octet-stream'),
('pkg', 'application/octet-stream'),
('bpk', 'application/octet-stream'),
('dump', 'application/octet-stream'),
('elc', 'application/octet-stream'),
('deploy', 'application/octet-stream'),
('oda', 'application/oda'),
('opf', 'application/oebps-package+xml'),
('ogx', 'application/ogg'),
('omdoc', 'application/omdoc+xml'),
('onetoc', 'application/onenote'),
('onetoc2', 'application/onenote'),
('onetmp', 'application/onenote'),
('onepkg', 'application/onenote'),
('oxps', 'application/oxps'),
('xer', 'application/patch-ops-error+xml'),
('pdf', 'application/pdf'),
('pgp', 'application/pgp-encrypted'),
('asc', 'application/pgp-signature'),
('sig', 'application/pgp-signature'),
('prf', 'application/pics-rules'),
('p10', 'application/pkcs10'),
('p7m', 'application/pkcs7-mime'),
('p7c', 'application/pkcs7-mime'),
('p7s', 'application/pkcs7-signature'),
('p8', 'application/pkcs8'),
('ac', 'application/pkix-attr-cert'),
('cer', 'application/pkix-cert'),
('crl', 'application/pkix-crl'),
('pkipath', 'application/pkix-pkipath'),
('pki', 'application/pkixcmp'),
('pls', 'application/pls+xml'),
('ai', 'application/postscript'),
('eps', 'application/postscript'),
('ps', 'application/postscript'),
('cww', 'application/prs.cww'),
('pskcxml', 'application/pskc+xml'),
('rdf', 'application/rdf+xml'),
('rif', 'application/reginfo+xml'),
('rnc', 'application/relax-ng-compact-syntax'),
('rl', 'application/resource-lists+xml'),
('rld', 'application/resource-lists-diff+xml'),
('rs', 'application/rls-services+xml'),
('gbr', 'application/rpki-ghostbusters'),
('mft', 'application/rpki-manifest'),
('roa', 'application/rpki-roa'),
('rsd', 'application/rsd+xml'),
('rss', 'application/rss+xml'),
('rtf', 'application/rtf'),
('sbml', 'application/sbml+xml'),
('scq', 'application/scvp-cv-request'),
('scs', 'application/scvp-cv-response'),
('spq', 'application/scvp-vp-request'),
('spp', 'application/scvp-vp-response'),
('sdp', 'application/sdp'),
('setpay', 'application/set-payment-initiation'),
('setreg', 'application/set-registration-initiation'),
('shf', 'application/shf+xml'),
('smi', 'application/smil+xml'),
('smil', 'application/smil+xml'),
('rq', 'application/sparql-query'),
('srx', 'application/sparql-results+xml'),
('gram', 'application/srgs'),
('grxml', 'application/srgs+xml'),
('sru', 'application/sru+xml'),
('ssdl', 'application/ssdl+xml'),
('ssml', 'application/ssml+xml'),
('tei', 'application/tei+xml'),
('teicorpus', 'application/tei+xml'),
('tfi', 'application/thraud+xml'),
('tsd', 'application/timestamped-data'),
('plb', 'application/vnd.3gpp.pic-bw-large'),
('psb', 'application/vnd.3gpp.pic-bw-small'),
('pvb', 'application/vnd.3gpp.pic-bw-var'),
('tcap', 'application/vnd.3gpp2.tcap'),
('pwn', 'application/vnd.3m.post-it-notes'),
('aso', 'application/vnd.accpac.simply.aso'),
('imp', 'application/vnd.accpac.simply.imp'),
('acu', 'application/vnd.acucobol'),
('atc', 'application/vnd.acucorp'),
('acutc', 'application/vnd.acucorp'),
('air', 'application/vnd.adobe.air-application-installer-package+zip'),
('fcdt', 'application/vnd.adobe.formscentral.fcdt'),
('fxp', 'application/vnd.adobe.fxp'),
('fxpl', 'application/vnd.adobe.fxp'),
('xdp', 'application/vnd.adobe.xdp+xml'),
('xfdf', 'application/vnd.adobe.xfdf'),
('ahead', 'application/vnd.ahead.space'),
('azf', 'application/vnd.airzip.filesecure.azf'),
('azs', 'application/vnd.airzip.filesecure.azs'),
('azw', 'application/vnd.amazon.ebook'),
('acc', 'application/vnd.americandynamics.acc'),
('ami', 'application/vnd.amiga.ami'),
('apk', 'application/vnd.android.package-archive'),
('cii', 'application/vnd.anser-web-certificate-issue-initiation'),
('fti', 'application/vnd.anser-web-funds-transfer-initiation'),
('atx', 'application/vnd.antix.game-component'),
('mpkg', 'application/vnd.apple.installer+xml'),
('m3u8', 'application/vnd.apple.mpegurl'),
('swi', 'application/vnd.aristanetworks.swi'),
('iota', 'application/vnd.astraea-software.iota'),
('aep', 'application/vnd.audiograph'),
('mpm', 'application/vnd.blueice.multipass'),
('bmi', 'application/vnd.bmi'),
('rep', 'application/vnd.businessobjects'),
('cdxml', 'application/vnd.chemdraw+xml'),
('mmd', 'application/vnd.chipnuts.karaoke-mmd'),
('cdy', 'application/vnd.cinderella'),
('cla', 'application/vnd.claymore'),
('rp9', 'application/vnd.cloanto.rp9'),
('c4g', 'application/vnd.clonk.c4group'),
('c4d', 'application/vnd.clonk.c4group'),
('c4f', 'application/vnd.clonk.c4group'),
('c4p', 'application/vnd.clonk.c4group'),
('c4u', 'application/vnd.clonk.c4group'),
('c11amc', 'application/vnd.cluetrust.cartomobile-config'),
('c11amz', 'application/vnd.cluetrust.cartomobile-config-pkg'),
('csp', 'application/vnd.commonspace'),
('cdbcmsg', 'application/vnd.contact.cmsg'),
('cmc', 'application/vnd.cosmocaller'),
('clkx', 'application/vnd.crick.clicker'),
('clkk', 'application/vnd.crick.clicker.keyboard'),
('clkp', 'application/vnd.crick.clicker.palette'),
('clkt', 'application/vnd.crick.clicker.template'),
('clkw', 'application/vnd.crick.clicker.wordbank'),
('wbs', 'application/vnd.criticaltools.wbs+xml'),
('pml', 'application/vnd.ctc-posml'),
('ppd', 'application/vnd.cups-ppd'),
('car', 'application/vnd.curl.car'),
('pcurl', 'application/vnd.curl.pcurl'),
('dart', 'application/vnd.dart'),
('rdz', 'application/vnd.data-vision.rdz'),
('uvf', 'application/vnd.dece.data'),
('uvvf', 'application/vnd.dece.data'),
('uvd', 'application/vnd.dece.data'),
('uvvd', 'application/vnd.dece.data'),
('uvt', 'application/vnd.dece.ttml+xml'),
('uvvt', 'application/vnd.dece.ttml+xml'),
('uvx', 'application/vnd.dece.unspecified'),
('uvvx', 'application/vnd.dece.unspecified'),
('uvz', 'application/vnd.dece.zip'),
('uvvz', 'application/vnd.dece.zip'),
('fe_launch', 'application/vnd.denovo.fcselayout-link'),
('dna', 'application/vnd.dna'),
('mlp', 'application/vnd.dolby.mlp'),
('dpg', 'application/vnd.dpgraph'),
('dfac', 'application/vnd.dreamfactory'),
('kpxx', 'application/vnd.ds-keypoint'),
('ait', 'application/vnd.dvb.ait'),
('svc', 'application/vnd.dvb.service'),
('geo', 'application/vnd.dynageo'),
('mag', 'application/vnd.ecowin.chart'),
('nml', 'application/vnd.enliven'),
('esf', 'application/vnd.epson.esf'),
('msf', 'application/vnd.epson.msf'),
('qam', 'application/vnd.epson.quickanime'),
('slt', 'application/vnd.epson.salt'),
('ssf', 'application/vnd.epson.ssf'),
('es3', 'application/vnd.eszigno3+xml'),
('et3', 'application/vnd.eszigno3+xml'),
('ez2', 'application/vnd.ezpix-album'),
('ez3', 'application/vnd.ezpix-package'),
('fdf', 'application/vnd.fdf'),
('mseed', 'application/vnd.fdsn.mseed'),
('seed', 'application/vnd.fdsn.seed'),
('dataless', 'application/vnd.fdsn.seed'),
('gph', 'application/vnd.flographit'),
('ftc', 'application/vnd.fluxtime.clip'),
('fm', 'application/vnd.framemaker'),
('frame', 'application/vnd.framemaker'),
('maker', 'application/vnd.framemaker'),
('book', 'application/vnd.framemaker'),
('fnc', 'application/vnd.frogans.fnc'),
('ltf', 'application/vnd.frogans.ltf'),
('fsc', 'application/vnd.fsc.weblaunch'),
('oas', 'application/vnd.fujitsu.oasys'),
('oa2', 'application/vnd.fujitsu.oasys2'),
('oa3', 'application/vnd.fujitsu.oasys3'),
('fg5', 'application/vnd.fujitsu.oasysgp'),
('bh2', 'application/vnd.fujitsu.oasysprs'),
('ddd', 'application/vnd.fujixerox.ddd'),
('xdw', 'application/vnd.fujixerox.docuworks'),
('xbd', 'application/vnd.fujixerox.docuworks.binder'),
('fzs', 'application/vnd.fuzzysheet'),
('txd', 'application/vnd.genomatix.tuxedo'),
('ggb', 'application/vnd.geogebra.file'),
('ggt', 'application/vnd.geogebra.tool'),
('gex', 'application/vnd.geometry-explorer'),
('gre', 'application/vnd.geometry-explorer'),
('gxt', 'application/vnd.geonext'),
('g2w', 'application/vnd.geoplan'),
('g3w', 'application/vnd.geospace'),
('gmx', 'application/vnd.gmx'),
('kml', 'application/vnd.google-earth.kml+xml'),
('kmz', 'application/vnd.google-earth.kmz'),
('gqf', 'application/vnd.grafeq'),
('gqs', 'application/vnd.grafeq'),
('gac', 'application/vnd.groove-account'),
('ghf', 'application/vnd.groove-help'),
('gim', 'application/vnd.groove-identity-message'),
('grv', 'application/vnd.groove-injector'),
('gtm', 'application/vnd.groove-tool-message'),
('tpl', 'application/vnd.groove-tool-template'),
('vcg', 'application/vnd.groove-vcard'),
('hal', 'application/vnd.hal+xml'),
('zmm', 'application/vnd.handheld-entertainment+xml'),
('hbci', 'application/vnd.hbci'),
('les', 'application/vnd.hhe.lesson-player'),
('hpgl', 'application/vnd.hp-hpgl'),
('hpid', 'application/vnd.hp-hpid'),
('hps', 'application/vnd.hp-hps'),
('jlt', 'application/vnd.hp-jlyt'),
('pcl', 'application/vnd.hp-pcl'),
('pclxl', 'application/vnd.hp-pclxl'),
('sfd', 'application/vnd.hydrostatix.sof-data'),
('mpy', 'application/vnd.ibm.minipay'),
('afp', 'application/vnd.ibm.modcap'),
('listafp', 'application/vnd.ibm.modcap'),
('list3820', 'application/vnd.ibm.modcap'),
('irm', 'application/vnd.ibm.rights-management'),
('sc', 'application/vnd.ibm.secure-container'),
('icc', 'application/vnd.iccprofile'),
('icm', 'application/vnd.iccprofile'),
('igl', 'application/vnd.igloader'),
('ivp', 'application/vnd.immervision-ivp'),
('ivu', 'application/vnd.immervision-ivu'),
('igm', 'application/vnd.insors.igm'),
('xpw', 'application/vnd.intercon.formnet'),
('xpx', 'application/vnd.intercon.formnet'),
('i2g', 'application/vnd.intergeo'),
('qbo', 'application/vnd.intu.qbo'),
('qfx', 'application/vnd.intu.qfx'),
('rcprofile', 'application/vnd.ipunplugged.rcprofile'),
('irp', 'application/vnd.irepository.package+xml'),
('xpr', 'application/vnd.is-xpr'),
('fcs', 'application/vnd.isac.fcs'),
('jam', 'application/vnd.jam'),
('rms', 'application/vnd.jcp.javame.midlet-rms'),
('jisp', 'application/vnd.jisp'),
('joda', 'application/vnd.joost.joda-archive'),
('ktz', 'application/vnd.kahootz'),
('ktr', 'application/vnd.kahootz'),
('karbon', 'application/vnd.kde.karbon'),
('chrt', 'application/vnd.kde.kchart'),
('kfo', 'application/vnd.kde.kformula'),
('flw', 'application/vnd.kde.kivio'),
('kon', 'application/vnd.kde.kontour'),
('kpr', 'application/vnd.kde.kpresenter'),
('kpt', 'application/vnd.kde.kpresenter'),
('ksp', 'application/vnd.kde.kspread'),
('kwd', 'application/vnd.kde.kword'),
('kwt', 'application/vnd.kde.kword'),
('htke', 'application/vnd.kenameaapp'),
('kia', 'application/vnd.kidspiration'),
('kne', 'application/vnd.kinar'),
('knp', 'application/vnd.kinar'),
('skp', 'application/vnd.koan'),
('skd', 'application/vnd.koan'),
('skt', 'application/vnd.koan'),
('skm', 'application/vnd.koan'),
('sse', 'application/vnd.kodak-descriptor'),
('lasxml', 'application/vnd.las.las+xml'),
('lbd', 'application/vnd.llamagraphics.life-balance.desktop'),
('lbe', 'application/vnd.llamagraphics.life-balance.exchange+xml'),
('123', 'application/vnd.lotus-1-2-3'),
('apr', 'application/vnd.lotus-approach'),
('pre', 'application/vnd.lotus-freelance'),
('nsf', 'application/vnd.lotus-notes'),
('org', 'application/vnd.lotus-organizer'),
('scm', 'application/vnd.lotus-screencam'),
('lwp', 'application/vnd.lotus-wordpro'),
('portpkg', 'application/vnd.macports.portpkg'),
('mcd', 'application/vnd.mcd'),
('mc1', 'application/vnd.medcalcdata'),
('cdkey', 'application/vnd.mediastation.cdkey'),
('mwf', 'application/vnd.mfer'),
('mfm', 'application/vnd.mfmp'),
('flo', 'application/vnd.micrografx.flo'),
('igx', 'application/vnd.micrografx.igx'),
('mif', 'application/vnd.mif'),
('daf', 'application/vnd.mobius.daf'),
('dis', 'application/vnd.mobius.dis'),
('mbk', 'application/vnd.mobius.mbk'),
('mqy', 'application/vnd.mobius.mqy'),
('msl', 'application/vnd.mobius.msl'),
('plc', 'application/vnd.mobius.plc'),
('txf', 'application/vnd.mobius.txf'),
('mpn', 'application/vnd.mophun.application'),
('mpc', 'application/vnd.mophun.certificate'),
('xul', 'application/vnd.mozilla.xul+xml'),
('cil', 'application/vnd.ms-artgalry'),
('cab', 'application/vnd.ms-cab-compressed'),
('xls', 'application/vnd.ms-excel'),
('xlm', 'application/vnd.ms-excel'),
('xla', 'application/vnd.ms-excel'),
('xlc', 'application/vnd.ms-excel'),
('xlt', 'application/vnd.ms-excel'),
('xlw', 'application/vnd.ms-excel'),
('xlam', 'application/vnd.ms-excel.addin.macroenabled.12'),
('xlsb', 'application/vnd.ms-excel.sheet.binary.macroenabled.12'),
('xlsm', 'application/vnd.ms-excel.sheet.macroenabled.12'),
('xltm', 'application/vnd.ms-excel.template.macroenabled.12'),
('eot', 'application/vnd.ms-fontobject'),
('chm', 'application/vnd.ms-htmlhelp'),
('ims', 'application/vnd.ms-ims'),
('lrm', 'application/vnd.ms-lrm'),
('thmx', 'application/vnd.ms-officetheme'),
('cat', 'application/vnd.ms-pki.seccat'),
('stl', 'application/vnd.ms-pki.stl'),
('ppt', 'application/vnd.ms-powerpoint'),
('pps', 'application/vnd.ms-powerpoint'),
('pot', 'application/vnd.ms-powerpoint'),
('ppam', 'application/vnd.ms-powerpoint.addin.macroenabled.12'),
('pptm', 'application/vnd.ms-powerpoint.presentation.macroenabled.12'),
('sldm', 'application/vnd.ms-powerpoint.slide.macroenabled.12'),
('ppsm', 'application/vnd.ms-powerpoint.slideshow.macroenabled.12'),
('potm', 'application/vnd.ms-powerpoint.template.macroenabled.12'),
('mpp', 'application/vnd.ms-project'),
('mpt', 'application/vnd.ms-project'),
('docm', 'application/vnd.ms-word.document.macroenabled.12'),
('dotm', 'application/vnd.ms-word.template.macroenabled.12'),
('wps', 'application/vnd.ms-works'),
('wks', 'application/vnd.ms-works'),
('wcm', 'application/vnd.ms-works'),
('wdb', 'application/vnd.ms-works'),
('wpl', 'application/vnd.ms-wpl'),
('xps', 'application/vnd.ms-xpsdocument'),
('mseq', 'application/vnd.mseq'),
('mus', 'application/vnd.musician'),
('msty', 'application/vnd.muvee.style'),
('taglet', 'application/vnd.mynfc'),
('nlu', 'application/vnd.neurolanguage.nlu'),
('ntf', 'application/vnd.nitf'),
('nitf', 'application/vnd.nitf'),
('nnd', 'application/vnd.noblenet-directory'),
('nns', 'application/vnd.noblenet-sealer'),
('nnw', 'application/vnd.noblenet-web'),
('ngdat', 'application/vnd.nokia.n-gage.data'),
('n', 'application/vnd.nokia.n-gage.symbian.install'),
('rpst', 'application/vnd.nokia.radio-preset'),
('rpss', 'application/vnd.nokia.radio-presets'),
('edm', 'application/vnd.novadigm.edm'),
('edx', 'application/vnd.novadigm.edx'),
('ext', 'application/vnd.novadigm.ext'),
('odc', 'application/vnd.oasis.opendocument.chart'),
('otc', 'application/vnd.oasis.opendocument.chart-template'),
('odb', 'application/vnd.oasis.opendocument.database'),
('odf', 'application/vnd.oasis.opendocument.formula'),
('odft', 'application/vnd.oasis.opendocument.formula-template'),
('odg', 'application/vnd.oasis.opendocument.graphics'),
('otg', 'application/vnd.oasis.opendocument.graphics-template'),
('odi', 'application/vnd.oasis.opendocument.image'),
('oti', 'application/vnd.oasis.opendocument.image-template'),
('odp', 'application/vnd.oasis.opendocument.presentation'),
('otp', 'application/vnd.oasis.opendocument.presentation-template'),
('ods', 'application/vnd.oasis.opendocument.spreadsheet'),
('ots', 'application/vnd.oasis.opendocument.spreadsheet-template'),
('odt', 'application/vnd.oasis.opendocument.text'),
('odm', 'application/vnd.oasis.opendocument.text-master'),
('ott', 'application/vnd.oasis.opendocument.text-template'),
('oth', 'application/vnd.oasis.opendocument.text-web'),
('xo', 'application/vnd.olpc-sugar'),
('dd2', 'application/vnd.oma.dd2+xml'),
('oxt', 'application/vnd.openofficeorg.extension'),
('pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation'),
('sldx', 'application/vnd.openxmlformats-officedocument.presentationml.slide'),
('ppsx', 'application/vnd.openxmlformats-officedocument.presentationml.slideshow'),
('potx', 'application/vnd.openxmlformats-officedocument.presentationml.template'),
('xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),
('xltx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.template'),
('docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),
('dotx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.template'),
('mgp', 'application/vnd.osgeo.mapguide.package'),
('dp', 'application/vnd.osgi.dp'),
('esa', 'application/vnd.osgi.subsystem'),
('pdb', 'application/vnd.palm'),
('pqa', 'application/vnd.palm'),
('oprc', 'application/vnd.palm'),
('paw', 'application/vnd.pawaafile'),
('str', 'application/vnd.pg.format'),
('ei6', 'application/vnd.pg.osasli'),
('efif', 'application/vnd.picsel'),
('wg', 'application/vnd.pmi.widget'),
('plf', 'application/vnd.pocketlearn'),
('pbd', 'application/vnd.powerbuilder6'),
('box', 'application/vnd.previewsystems.box'),
('mgz', 'application/vnd.proteus.magazine'),
('qps', 'application/vnd.publishare-delta-tree'),
('ptid', 'application/vnd.pvi.ptid1'),
('qxd', 'application/vnd.quark.quarkxpress'),
('qxt', 'application/vnd.quark.quarkxpress'),
('qwd', 'application/vnd.quark.quarkxpress'),
('qwt', 'application/vnd.quark.quarkxpress'),
('qxl', 'application/vnd.quark.quarkxpress'),
('qxb', 'application/vnd.quark.quarkxpress'),
('bed', 'application/vnd.realvnc.bed'),
('mxl', 'application/vnd.recordare.musicxml'),
('musicxml', 'application/vnd.recordare.musicxml+xml'),
('cryptonote', 'application/vnd.rig.cryptonote'),
('cod', 'application/vnd.rim.cod'),
('rm', 'application/vnd.rn-realmedia'),
('rmvb', 'application/vnd.rn-realmedia-vbr'),
('link66', 'application/vnd.route66.link66+xml'),
('st', 'application/vnd.sailingtracker.track'),
('see', 'application/vnd.seemail'),
('sema', 'application/vnd.sema'),
('semd', 'application/vnd.semd'),
('semf', 'application/vnd.semf'),
('ifm', 'application/vnd.shana.informed.formdata'),
('itp', 'application/vnd.shana.informed.formtemplate'),
('iif', 'application/vnd.shana.informed.interchange'),
('ipk', 'application/vnd.shana.informed.package'),
('twd', 'application/vnd.simtech-mindmapper'),
('twds', 'application/vnd.simtech-mindmapper'),
('mmf', 'application/vnd.smaf'),
('teacher', 'application/vnd.smart.teacher'),
('sdkm', 'application/vnd.solent.sdkm+xml'),
('sdkd', 'application/vnd.solent.sdkm+xml'),
('dxp', 'application/vnd.spotfire.dxp'),
('sfs', 'application/vnd.spotfire.sfs'),
('sdc', 'application/vnd.stardivision.calc'),
('sda', 'application/vnd.stardivision.draw'),
('sdd', 'application/vnd.stardivision.impress'),
('smf', 'application/vnd.stardivision.math'),
('sdw', 'application/vnd.stardivision.writer'),
('vor', 'application/vnd.stardivision.writer'),
('sgl', 'application/vnd.stardivision.writer-global'),
('smzip', 'application/vnd.stepmania.package'),
('sm', 'application/vnd.stepmania.stepchart'),
('sxc', 'application/vnd.sun.xml.calc'),
('stc', 'application/vnd.sun.xml.calc.template'),
('sxd', 'application/vnd.sun.xml.draw'),
('std', 'application/vnd.sun.xml.draw.template'),
('sxi', 'application/vnd.sun.xml.impress'),
('sti', 'application/vnd.sun.xml.impress.template'),
('sxm', 'application/vnd.sun.xml.math'),
('sxw', 'application/vnd.sun.xml.writer'),
('sxg', 'application/vnd.sun.xml.writer.global'),
('stw', 'application/vnd.sun.xml.writer.template'),
('sus', 'application/vnd.sus-calendar'),
('susp', 'application/vnd.sus-calendar'),
('svd', 'application/vnd.svd'),
('sis', 'application/vnd.symbian.install'),
('sisx', 'application/vnd.symbian.install'),
('xsm', 'application/vnd.syncml+xml'),
('bdm', 'application/vnd.syncml.dm+wbxml'),
('xdm', 'application/vnd.syncml.dm+xml'),
('tao', 'application/vnd.tao.intent-module-archive'),
('pcap', 'application/vnd.tcpdump.pcap'),
('cap', 'application/vnd.tcpdump.pcap'),
('dmp', 'application/vnd.tcpdump.pcap'),
('tmo', 'application/vnd.tmobile-livetv'),
('tpt', 'application/vnd.trid.tpt'),
('mxs', 'application/vnd.triscape.mxs'),
('tra', 'application/vnd.trueapp'),
('ufd', 'application/vnd.ufdl'),
('ufdl', 'application/vnd.ufdl'),
('utz', 'application/vnd.uiq.theme'),
('umj', 'application/vnd.umajin'),
('unityweb', 'application/vnd.unity'),
('uoml', 'application/vnd.uoml+xml'),
('vcx', 'application/vnd.vcx'),
('vsd', 'application/vnd.visio'),
('vst', 'application/vnd.visio'),
('vss', 'application/vnd.visio'),
('vsw', 'application/vnd.visio'),
('vis', 'application/vnd.visionary'),
('vsf', 'application/vnd.vsf'),
('wbxml', 'application/vnd.wap.wbxml'),
('wmlc', 'application/vnd.wap.wmlc'),
('wmlsc', 'application/vnd.wap.wmlscriptc'),
('wtb', 'application/vnd.webturbo'),
('nbp', 'application/vnd.wolfram.player'),
('wpd', 'application/vnd.wordperfect'),
('wqd', 'application/vnd.wqd'),
('stf', 'application/vnd.wt.stf'),
('xar', 'application/vnd.xara'),
('xfdl', 'application/vnd.xfdl'),
('hvd', 'application/vnd.yamaha.hv-dic'),
('hvs', 'application/vnd.yamaha.hv-script'),
('hvp', 'application/vnd.yamaha.hv-voice'),
('osf', 'application/vnd.yamaha.openscoreformat'),
('osfpvg', 'application/vnd.yamaha.openscoreformat.osfpvg+xml'),
('saf', 'application/vnd.yamaha.smaf-audio'),
('spf', 'application/vnd.yamaha.smaf-phrase'),
('cmp', 'application/vnd.yellowriver-custom-menu'),
('zir', 'application/vnd.zul'),
('zirz', 'application/vnd.zul'),
('zaz', 'application/vnd.zzazz.deck+xml'),
('vxml', 'application/voicexml+xml'),
('wgt', 'application/widget'),
('hlp', 'application/winhlp'),
('wsdl', 'application/wsdl+xml'),
('wspolicy', 'application/wspolicy+xml'),
('7z', 'application/x-7z-compressed'),
('abw', 'application/x-abiword'),
('ace', 'application/x-ace-compressed'),
('dmg', 'application/x-apple-diskimage'),
('aab', 'application/x-authorware-bin'),
('x32', 'application/x-authorware-bin'),
('u32', 'application/x-authorware-bin'),
('vox', 'application/x-authorware-bin'),
('aam', 'application/x-authorware-map'),
('aas', 'application/x-authorware-seg'),
('bcpio', 'application/x-bcpio'),
('torrent', 'application/x-bittorrent'),
('blb', 'application/x-blorb'),
('blorb', 'application/x-blorb'),
('bz', 'application/x-bzip'),
('bz2', 'application/x-bzip2'),
('boz', 'application/x-bzip2'),
('cbr', 'application/x-cbr'),
('cba', 'application/x-cbr'),
('cbt', 'application/x-cbr'),
('cbz', 'application/x-cbr'),
('cb7', 'application/x-cbr'),
('vcd', 'application/x-cdlink'),
('cfs', 'application/x-cfs-compressed'),
('chat', 'application/x-chat'),
('pgn', 'application/x-chess-pgn'),
('nsc', 'application/x-conference'),
('cpio', 'application/x-cpio'),
('csh', 'application/x-csh'),
('deb', 'application/x-debian-package'),
('udeb', 'application/x-debian-package'),
('dgc', 'application/x-dgc-compressed'),
('dir', 'application/x-director'),
('dcr', 'application/x-director'),
('dxr', 'application/x-director'),
('cst', 'application/x-director'),
('cct', 'application/x-director'),
('cxt', 'application/x-director'),
('w3d', 'application/x-director'),
('fgd', 'application/x-director'),
('swa', 'application/x-director'),
('wad', 'application/x-doom'),
('ncx', 'application/x-dtbncx+xml'),
('dtb', 'application/x-dtbook+xml'),
('res', 'application/x-dtbresource+xml'),
('dvi', 'application/x-dvi'),
('evy', 'application/x-envoy'),
('eva', 'application/x-eva'),
('bdf', 'application/x-font-bdf'),
('gsf', 'application/x-font-ghostscript'),
('psf', 'application/x-font-linux-psf'),
('otf', 'application/x-font-otf'),
('pcf', 'application/x-font-pcf'),
('snf', 'application/x-font-snf'),
('ttf', 'application/x-font-ttf'),
('ttc', 'application/x-font-ttf'),
('pfa', 'application/x-font-type1'),
('pfb', 'application/x-font-type1'),
('pfm', 'application/x-font-type1'),
('afm', 'application/x-font-type1'),
('woff', 'application/x-font-woff'),
('arc', 'application/x-freearc'),
('spl', 'application/x-futuresplash'),
('gca', 'application/x-gca-compressed'),
('ulx', 'application/x-glulx'),
('gnumeric', 'application/x-gnumeric'),
('gramps', 'application/x-gramps-xml'),
('gtar', 'application/x-gtar'),
('hdf', 'application/x-hdf'),
('install', 'application/x-install-instructions'),
('iso', 'application/x-iso9660-image'),
('jnlp', 'application/x-java-jnlp-file'),
('latex', 'application/x-latex'),
('lzh', 'application/x-lzh-compressed'),
('lha', 'application/x-lzh-compressed'),
('mie', 'application/x-mie'),
('prc', 'application/x-mobipocket-ebook'),
('mobi', 'application/x-mobipocket-ebook'),
('application', 'application/x-ms-application'),
('lnk', 'application/x-ms-shortcut'),
('wmd', 'application/x-ms-wmd'),
('wmz', 'application/x-msmetafile'),
('xbap', 'application/x-ms-xbap'),
('mdb', 'application/x-msaccess'),
('obd', 'application/x-msbinder'),
('crd', 'application/x-mscardfile'),
('clp', 'application/x-msclip'),
('exe', 'application/x-msdownload'),
('dll', 'application/x-msdownload'),
('com', 'application/x-msdownload'),
('bat', 'application/x-msdownload'),
('msi', 'application/x-msdownload'),
('mvb', 'application/x-msmediaview'),
('m13', 'application/x-msmediaview'),
('m14', 'application/x-msmediaview'),
('wmf', 'application/x-msmetafile'),
('emf', 'application/x-msmetafile'),
('emz', 'application/x-msmetafile'),
('mny', 'application/x-msmoney'),
('pub', 'application/x-mspublisher'),
('scd', 'application/x-msschedule'),
('trm', 'application/x-msterminal'),
('wri', 'application/x-mswrite'),
('nc', 'application/x-netcdf'),
('cdf', 'application/x-netcdf'),
('nzb', 'application/x-nzb'),
('p12', 'application/x-pkcs12'),
('pfx', 'application/x-pkcs12'),
('p7b', 'application/x-pkcs7-certificates'),
('spc', 'application/x-pkcs7-certificates'),
('p7r', 'application/x-pkcs7-certreqresp'),
('rar', 'application/x-rar-compressed'),
('ris', 'application/x-research-info-systems'),
('sh', 'application/x-sh'),
('shar', 'application/x-shar'),
('swf', 'application/x-shockwave-flash'),
('xap', 'application/x-silverlight-app'),
('sql', 'application/x-sql'),
('sit', 'application/x-stuffit'),
('sitx', 'application/x-stuffitx'),
('srt', 'application/x-subrip'),
('sv4cpio', 'application/x-sv4cpio'),
('sv4crc', 'application/x-sv4crc'),
('t3', 'application/x-t3vm-image'),
('gam', 'application/x-tads'),
('tar', 'application/x-tar'),
('tcl', 'application/x-tcl'),
('tex', 'application/x-tex'),
('tfm', 'application/x-tex-tfm'),
('texinfo', 'application/x-texinfo'),
('texi', 'application/x-texinfo'),
('obj', 'application/x-tgif'),
('ustar', 'application/x-ustar'),
('src', 'application/x-wais-source'),
('der', 'application/x-x509-ca-cert'),
('crt', 'application/x-x509-ca-cert'),
('fig', 'application/x-xfig'),
('xlf', 'application/x-xliff+xml'),
('xpi', 'application/x-xpinstall'),
('xz', 'application/x-xz'),
('z1', 'application/x-zmachine'),
('z2', 'application/x-zmachine'),
('z3', 'application/x-zmachine'),
('z4', 'application/x-zmachine'),
('z5', 'application/x-zmachine'),
('z6', 'application/x-zmachine'),
('z7', 'application/x-zmachine'),
('z8', 'application/x-zmachine'),
('xaml', 'application/xaml+xml'),
('xdf', 'application/xcap-diff+xml'),
('xenc', 'application/xenc+xml'),
('xhtml', 'application/xhtml+xml'),
('xht', 'application/xhtml+xml'),
('xml', 'application/xml'),
('xsl', 'application/xml'),
('dtd', 'application/xml-dtd'),
('xop', 'application/xop+xml'),
('xpl', 'application/xproc+xml'),
('xslt', 'application/xslt+xml'),
('xspf', 'application/xspf+xml'),
('mxml', 'application/xv+xml'),
('xhvml', 'application/xv+xml'),
('xvml', 'application/xv+xml'),
('xvm', 'application/xv+xml'),
('yang', 'application/yang'),
('yin', 'application/yin+xml'),
('zip', 'application/zip'),
('zip', 'application/x-zip'),
('adp', 'audio/adpcm'),
('au', 'audio/basic'),
('snd', 'audio/basic'),
('mid', 'audio/midi'),
('midi', 'audio/midi'),
('kar', 'audio/midi'),
('rmi', 'audio/midi'),
('mp4a', 'audio/mp4'),
('mpga', 'audio/mpeg'),
('mp2', 'audio/mpeg'),
('mp2a', 'audio/mpeg'),
('mp3', 'audio/mpeg'),
('m2a', 'audio/mpeg'),
('m3a', 'audio/mpeg'),
('oga', 'audio/ogg'),
('ogg', 'audio/ogg'),
('spx', 'audio/ogg'),
('s3m', 'audio/s3m'),
('sil', 'audio/silk'),
('uva', 'audio/vnd.dece.audio'),
('uvva', 'audio/vnd.dece.audio'),
('eol', 'audio/vnd.digital-winds'),
('dra', 'audio/vnd.dra'),
('dts', 'audio/vnd.dts'),
('dtshd', 'audio/vnd.dts.hd'),
('lvp', 'audio/vnd.lucent.voice'),
('pya', 'audio/vnd.ms-playready.media.pya'),
('ecelp4800', 'audio/vnd.nuera.ecelp4800'),
('ecelp7470', 'audio/vnd.nuera.ecelp7470'),
('ecelp9600', 'audio/vnd.nuera.ecelp9600'),
('rip', 'audio/vnd.rip'),
('weba', 'audio/webm'),
('aac', 'audio/x-aac'),
('aif', 'audio/x-aiff'),
('aiff', 'audio/x-aiff'),
('aifc', 'audio/x-aiff'),
('caf', 'audio/x-caf'),
('flac', 'audio/x-flac'),
('mka', 'audio/x-matroska'),
('m3u', 'audio/x-mpegurl'),
('wax', 'audio/x-ms-wax'),
('wma', 'audio/x-ms-wma'),
('ram', 'audio/x-pn-realaudio'),
('ra', 'audio/x-pn-realaudio'),
('rmp', 'audio/x-pn-realaudio-plugin'),
('wav', 'audio/x-wav'),
('xm', 'audio/xm'),
('cdx', 'chemical/x-cdx'),
('cif', 'chemical/x-cif'),
('cmdf', 'chemical/x-cmdf'),
('cml', 'chemical/x-cml'),
('csml', 'chemical/x-csml'),
('xyz', 'chemical/x-xyz'),
('bmp', 'image/bmp'),
('cgm', 'image/cgm'),
('g3', 'image/g3fax'),
('gif', 'image/gif'),
('ief', 'image/ief'),
('jpeg', 'image/jpeg'),
('jpg', 'image/jpeg'),
('jpe', 'image/jpeg'),
('ktx', 'image/ktx'),
('png', 'image/png'),
('btif', 'image/prs.btif'),
('sgi', 'image/sgi'),
('svg', 'image/svg+xml'),
('svgz', 'image/svg+xml'),
('tiff', 'image/tiff'),
('tif', 'image/tiff'),
('psd', 'image/vnd.adobe.photoshop'),
('uvi', 'image/vnd.dece.graphic'),
('uvvi', 'image/vnd.dece.graphic'),
('uvg', 'image/vnd.dece.graphic'),
('uvvg', 'image/vnd.dece.graphic'),
('sub', 'text/vnd.dvb.subtitle'),
('djvu', 'image/vnd.djvu'),
('djv', 'image/vnd.djvu'),
('dwg', 'image/vnd.dwg'),
('dxf', 'image/vnd.dxf'),
('fbs', 'image/vnd.fastbidsheet'),
('fpx', 'image/vnd.fpx'),
('fst', 'image/vnd.fst'),
('mmr', 'image/vnd.fujixerox.edmics-mmr'),
('rlc', 'image/vnd.fujixerox.edmics-rlc'),
('mdi', 'image/vnd.ms-modi'),
('wdp', 'image/vnd.ms-photo'),
('npx', 'image/vnd.net-fpx'),
('wbmp', 'image/vnd.wap.wbmp'),
('xif', 'image/vnd.xiff'),
('webp', 'image/webp'),
('3ds', 'image/x-3ds'),
('ras', 'image/x-cmu-raster'),
('cmx', 'image/x-cmx'),
('fh', 'image/x-freehand'),
('fhc', 'image/x-freehand'),
('fh4', 'image/x-freehand'),
('fh5', 'image/x-freehand'),
('fh7', 'image/x-freehand'),
('ico', 'image/x-icon'),
('sid', 'image/x-mrsid-image'),
('pcx', 'image/x-pcx'),
('pic', 'image/x-pict'),
('pct', 'image/x-pict'),
('pnm', 'image/x-portable-anymap'),
('pbm', 'image/x-portable-bitmap'),
('pgm', 'image/x-portable-graymap'),
('ppm', 'image/x-portable-pixmap'),
('rgb', 'image/x-rgb'),
('tga', 'image/x-tga'),
('xbm', 'image/x-xbitmap'),
('xpm', 'image/x-xpixmap'),
('xwd', 'image/x-xwindowdump'),
('eml', 'message/rfc822'),
('mime', 'message/rfc822'),
('igs', 'model/iges'),
('iges', 'model/iges'),
('msh', 'model/mesh'),
('mesh', 'model/mesh'),
('silo', 'model/mesh'),
('dae', 'model/vnd.collada+xml'),
('dwf', 'model/vnd.dwf'),
('gdl', 'model/vnd.gdl'),
('gtw', 'model/vnd.gtw'),
('mts', 'model/vnd.mts'),
('vtu', 'model/vnd.vtu'),
('wrl', 'model/vrml'),
('vrml', 'model/vrml'),
('x3db', 'model/x3d+binary'),
('x3dbz', 'model/x3d+binary'),
('x3dv', 'model/x3d+vrml'),
('x3dvz', 'model/x3d+vrml'),
('x3d', 'model/x3d+xml'),
('x3dz', 'model/x3d+xml'),
('appcache', 'text/cache-manifest'),
('ics', 'text/calendar'),
('ifb', 'text/calendar'),
('css', 'text/css'),
('csv', 'text/csv'),
('html', 'text/html'),
('htm', 'text/html'),
('n3', 'text/n3'),
('txt', 'text/plain'),
('text', 'text/plain'),
('conf', 'text/plain'),
('def', 'text/plain'),
('list', 'text/plain'),
('log', 'text/plain'),
('in', 'text/plain'),
('dsc', 'text/prs.lines.tag'),
('rtx', 'text/richtext'),
('sgml', 'text/sgml'),
('sgm', 'text/sgml'),
('tsv', 'text/tab-separated-values'),
('t', 'text/troff'),
('tr', 'text/troff'),
('roff', 'text/troff'),
('man', 'text/troff'),
('me', 'text/troff'),
('ms', 'text/troff'),
('ttl', 'text/turtle'),
('uri', 'text/uri-list'),
('uris', 'text/uri-list'),
('urls', 'text/uri-list'),
('vcard', 'text/vcard'),
('curl', 'text/vnd.curl'),
('dcurl', 'text/vnd.curl.dcurl'),
('scurl', 'text/vnd.curl.scurl'),
('mcurl', 'text/vnd.curl.mcurl'),
('fly', 'text/vnd.fly'),
('flx', 'text/vnd.fmi.flexstor'),
('gv', 'text/vnd.graphviz'),
('3dml', 'text/vnd.in3d.3dml'),
('spot', 'text/vnd.in3d.spot'),
('jad', 'text/vnd.sun.j2me.app-descriptor'),
('wml', 'text/vnd.wap.wml'),
('wmls', 'text/vnd.wap.wmlscript'),
('s', 'text/x-asm'),
('asm', 'text/x-asm'),
('c', 'text/x-c'),
('cc', 'text/x-c'),
('cxx', 'text/x-c'),
('cpp', 'text/x-c'),
('h', 'text/x-c'),
('hh', 'text/x-c'),
('dic', 'text/x-c'),
('f', 'text/x-fortran'),
('for', 'text/x-fortran'),
('f77', 'text/x-fortran'),
('f90', 'text/x-fortran'),
('java', 'text/x-java-source'),
('opml', 'text/x-opml'),
('p', 'text/x-pascal'),
('pas', 'text/x-pascal'),
('nfo', 'text/x-nfo'),
('etx', 'text/x-setext'),
('sfv', 'text/x-sfv'),
('uu', 'text/x-uuencode'),
('vcs', 'text/x-vcalendar'),
('vcf', 'text/x-vcard'),
('3gp', 'video/3gpp'),
('3g2', 'video/3gpp2'),
('h261', 'video/h261'),
('h263', 'video/h263'),
('h264', 'video/h264'),
('jpgv', 'video/jpeg'),
('jpm', 'video/jpm'),
('jpgm', 'video/jpm'),
('mj2', 'video/mj2'),
('mjp2', 'video/mj2'),
('mp4', 'video/mp4'),
('mp4v', 'video/mp4'),
('mpg4', 'video/mp4'),
('mpeg', 'video/mpeg'),
('mpg', 'video/mpeg'),
('mpe', 'video/mpeg'),
('m1v', 'video/mpeg'),
('m2v', 'video/mpeg'),
('ogv', 'video/ogg'),
('qt', 'video/quicktime'),
('mov', 'video/quicktime'),
('uvh', 'video/vnd.dece.hd'),
('uvvh', 'video/vnd.dece.hd'),
('uvm', 'video/vnd.dece.mobile'),
('uvvm', 'video/vnd.dece.mobile'),
('uvp', 'video/vnd.dece.pd'),
('uvvp', 'video/vnd.dece.pd'),
('uvs', 'video/vnd.dece.sd'),
('uvvs', 'video/vnd.dece.sd'),
('uvv', 'video/vnd.dece.video'),
('uvvv', 'video/vnd.dece.video'),
('dvb', 'video/vnd.dvb.file'),
('fvt', 'video/vnd.fvt'),
('mxu', 'video/vnd.mpegurl'),
('m4u', 'video/vnd.mpegurl'),
('pyv', 'video/vnd.ms-playready.media.pyv'),
('uvu', 'video/vnd.uvvu.mp4'),
('uvvu', 'video/vnd.uvvu.mp4'),
('viv', 'video/vnd.vivo'),
('webm', 'video/webm'),
('f4v', 'video/x-f4v'),
('fli', 'video/x-fli'),
('flv', 'video/x-flv'),
('m4v', 'video/x-m4v'),
('mkv', 'video/x-matroska'),
('mk3d', 'video/x-matroska'),
('mks', 'video/x-matroska'),
('mng', 'video/x-mng'),
('asf', 'video/x-ms-asf'),
('asx', 'video/x-ms-asf'),
('vob', 'video/x-ms-vob'),
('wm', 'video/x-ms-wm'),
('wmv', 'video/x-ms-wmv'),
('wmx', 'video/x-ms-wmx'),
('wvx', 'video/x-ms-wvx'),
('avi', 'video/x-msvideo'),
('movie', 'video/x-sgi-movie'),
('smv', 'video/x-smv'),
('ice', 'x-conference/x-cooltalk');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_orders`
--

CREATE TABLE `ya4mp_rem_orders` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `order_date` datetime DEFAULT NULL,
  `fk_house_id` int(11) DEFAULT NULL,
  `txn_type` varchar(255) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `payer_id` varchar(255) NOT NULL DEFAULT '',
  `payer_status` varchar(255) NOT NULL DEFAULT '',
  `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
  `order_price` int(11) DEFAULT NULL,
  `order_currency_code` varchar(255) NOT NULL DEFAULT '',
  `paypal_paykay` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_orders_details`
--

CREATE TABLE `ya4mp_rem_orders_details` (
  `id` int(11) NOT NULL,
  `fk_order_id` int(11) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `fk_houses_htitle` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `order_date` datetime DEFAULT NULL,
  `fk_house_id` int(11) DEFAULT NULL,
  `txn_type` varchar(255) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `payer_id` varchar(255) NOT NULL DEFAULT '',
  `payer_status` varchar(255) NOT NULL DEFAULT '',
  `order_calculated_price` varchar(255) NOT NULL DEFAULT '',
  `order_price` int(11) DEFAULT NULL,
  `order_currency_code` varchar(255) NOT NULL DEFAULT '',
  `payment_details` text NOT NULL,
  `paypal_paykay` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_photos`
--

CREATE TABLE `ya4mp_rem_photos` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) DEFAULT NULL,
  `thumbnail_img` varchar(250) DEFAULT '',
  `main_img` varchar(250) DEFAULT '',
  `img_ordering` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_photos`
--

INSERT INTO `ya4mp_rem_photos` (`id`, `fk_houseid`, `thumbnail_img`, `main_img`, `img_ordering`) VALUES
(2, 2, '', 'FFD33823-A82D-C486-2592-502D451C198D_1.jpg', NULL),
(3, 2, '', 'B6C80CB2-D3BD-6C60-A9E3-3FB7F4882EA2_2.jpg', NULL),
(4, 2, '', 'A13DD64B-7784-E44A-6AF3-919A3AA9525E_3.jpg', NULL),
(5, 3, '', '232AED61-D9CA-BE46-E286-4251C065F087_2.jpg', NULL),
(6, 3, '', '1C273AF4-0D1F-4329-455E-B06E72A569E2_4.jpg', NULL),
(7, 3, '', '4C04751A-3A40-A6A6-19EA-4710911CB594_3.jpg', NULL),
(8, 4, '', 'B2616054-EFFA-DA6B-78EA-2609B685E56E_2.jpg', NULL),
(9, 4, '', '60AB72C7-A4EB-493E-FB64-020A979A2D20_3.jpg', NULL),
(10, 4, '', 'DACAE234-9367-1ACD-AA6F-09345E217F56_6.jpg', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_rent`
--

CREATE TABLE `ya4mp_rem_rent` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) NOT NULL DEFAULT '0',
  `fk_userid` int(11) DEFAULT NULL,
  `rent_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rent_until` datetime DEFAULT NULL,
  `rent_return` datetime DEFAULT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mailing` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_rent_request`
--

CREATE TABLE `ya4mp_rem_rent_request` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) NOT NULL DEFAULT '0',
  `fk_userid` int(11) DEFAULT NULL,
  `rent_from` date NOT NULL DEFAULT '0000-00-00',
  `rent_until` date DEFAULT NULL,
  `rent_request` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mailing` text,
  `status` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_rent_sal`
--

CREATE TABLE `ya4mp_rem_rent_sal` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) DEFAULT NULL,
  `monthW` int(4) NOT NULL DEFAULT '0',
  `yearW` int(4) NOT NULL DEFAULT '0',
  `week` varchar(1250) DEFAULT '',
  `weekend` varchar(1250) DEFAULT '',
  `midweek` varchar(1250) DEFAULT '',
  `price_from` date NOT NULL,
  `price_to` date NOT NULL,
  `special_price` float NOT NULL,
  `comment_price` varchar(1000) NOT NULL,
  `priceunit` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_review`
--

CREATE TABLE `ya4mp_rem_review` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) NOT NULL DEFAULT '0',
  `fk_userid` int(11) DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` int(2) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_review`
--

INSERT INTO `ya4mp_rem_review` (`id`, `fk_houseid`, `fk_userid`, `user_name`, `user_email`, `date`, `rating`, `title`, `comment`, `published`) VALUES
(2, 2, NULL, '', '', '2014-12-15 15:57:13', 8, 'Fantastic place', 'Apartment in the heart of South Melbourne are perfect - well equipped and a good size. The bed is very comfortable (soft), the heating is excellent and the apartment is clean and clair. The location is really good - 5 minutes walk from the central shopping street and from a range of good restaurants.', 1),
(3, 3, NULL, 'admin', 'quickstart_j3@mail.com', '2014-12-15 15:59:18', 9, 'Really wonderful stay', 'The house had plenty of space for our family, a fully equipped kitchen, a charming pool and of course a magnificent view. I would recommend this house to any family that is searching for a nice home.', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_track_source`
--

CREATE TABLE `ya4mp_rem_track_source` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_house_id` int(11) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `scrlang` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_users_wishlist`
--

CREATE TABLE `ya4mp_rem_users_wishlist` (
  `id` int(11) NOT NULL,
  `fk_houseid` int(11) DEFAULT NULL,
  `fk_userid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_version`
--

CREATE TABLE `ya4mp_rem_version` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(11) NOT NULL DEFAULT '0',
  `number` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ya4mp_rem_version`
--

INSERT INTO `ya4mp_rem_version` (`id`, `version`, `number`) VALUES
(2, '3.9', 'Free');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_rem_video_source`
--

CREATE TABLE `ya4mp_rem_video_source` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_house_id` int(11) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_schemas`
--

CREATE TABLE `ya4mp_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_schemas`
--

INSERT INTO `ya4mp_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_session`
--

CREATE TABLE `ya4mp_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_session`
--

INSERT INTO `ya4mp_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('2hqp5m2311t2m9dldbvfc2f9t2', 1, 0, '1481107037', 'joomla|s:1336:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMjtzOjU6InRva2VuIjtzOjMyOiJOUzV1VGtZdTlnYXVEQXl4TmR6UXRtUXFNQkhQQllKcSI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDgxMTA2NTQ4O3M6NDoibGFzdCI7aToxNDgxMTA3MDMzO3M6Mzoibm93IjtpOjE0ODExMDcwMzc7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6ODg7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjozOntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNjA4Ijt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 608, 'admin'),
('9gkg2rupj1biv8hr6ghn0gild4', 0, 1, '1481107041', 'joomla|s:716:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0ODEwOTkyODk7czo0OiJsYXN0IjtpOjE0ODExMDYyMDE7czozOiJub3ciO2k6MTQ4MTEwNzA0MTt9czo1OiJ0b2tlbiI7czozMjoic3Yyc251V0NpWFBBS1Z1TE44aEY2QkhxUXl3bmV4OVMiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_tags`
--

CREATE TABLE `ya4mp_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_tags`
--

INSERT INTO `ya4mp_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 608, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_template_styles`
--

CREATE TABLE `ya4mp_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_template_styles`
--

INSERT INTO `ya4mp_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'meet_gavern', 0, '0', 'meet_gavern - Default', '{"max_page_width":"1200","logo_type":"image","logo_image":"","logo_text":"","logo_slogan":"","favicon_image":"","ogfb_image":"","show_category_details":"0","framework_logo":"1","webmaster_contact_type":"1","webmaster_contact":"webmaster@gavick.com","google_analytics_type":"old","menu_animation":"width_height_opacity","menu_speed":"fast","submenu_width":"200","social_pos":"left","fb_api_id":"","fb_lang":"en_US","fb_login":"1","fb_like":"0","fb_like_send":"0","fb_like_layout":"standard","fb_like_show_faces":"true","fb_like_width":"500","fb_like_action":"like","fb_like_font":"arial","fb_like_colorscheme":"light","google_plus":"1","google_plus_count":"1","google_plus_size":"medium","google_plus_lang":"en-GB","google_plus_share":"1","google_plus_share_annotation":"vertical-bubble","google_plus_share_size":"20","tweet_btn":"0","tweet_btn_data_count":"vertical","tweet_btn_data_via":"","tweet_btn_data_lang":"en","pinterest_btn":"0","pinterest_btn_style":"horizontal","excluded_cats":"","cookie_consent":"0","consenttype":"explicit","cookie_latest_version":"0","cookie_use_ssl":"0","banner_position":"bottom","banner_tag_placement":"bottom-right","cookie_style":"light","refreshOnConsent":"0","cookiecss":"1","recompile_css":"0","recompile_bootstrap":"0","usernameless_login":"0","css_cache":"0","css_compression":"0","css_override":"0","css_prefixer":"0","js_compression":"0","chrome_frame_support":"0"}'),
(12, 'simonbs2', 0, '0', 'SimonBS2 - Default', '{"runless":"1"}'),
(13, 'simonbs', 0, '0', 'Simon BS - Default', '{}'),
(14, 'spacesharing', 0, '1', 'Spacesharing - Standard', '{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_ucm_base`
--

CREATE TABLE `ya4mp_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_ucm_content`
--

CREATE TABLE `ya4mp_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_ucm_history`
--

CREATE TABLE `ya4mp_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_ucm_history`
--

INSERT INTO `ya4mp_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2016-11-28 10:48:44', 608, 2292, 'd94046fdefd3c41253dc2a6144c11436a5ac177f', '{"id":1,"asset_id":55,"title":"Testartikel","alias":"testartikel","introtext":"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-11-28 10:48:44","created_by":"608","created_by_alias":"","modified":"2016-11-28 10:48:44","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-11-28 10:48:44","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_updates`
--

CREATE TABLE `ya4mp_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Daten für Tabelle `ya4mp_updates`
--

INSERT INTO `ya4mp_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.4.2', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(35, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(36, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(37, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(38, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(39, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(40, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(41, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(42, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(43, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(44, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(45, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(46, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(47, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(48, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(49, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(50, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(51, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(52, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(53, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(54, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(55, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(56, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(57, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(58, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(59, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(60, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(61, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(62, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(63, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(64, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(65, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(66, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(67, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(68, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(69, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(70, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(71, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(72, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_update_sites`
--

CREATE TABLE `ya4mp_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Daten für Tabelle `ya4mp_update_sites`
--

INSERT INTO `ya4mp_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1481104127, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1481104127, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1481104133, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1481104134, ''),
(5, 'Meet Gavern Updates', 'template', 'https://www.gavick.com/update_server/joomla3/meet_gavern.xml', 1, 1481104134, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_update_sites_extensions`
--

CREATE TABLE `ya4mp_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Daten für Tabelle `ya4mp_update_sites_extensions`
--

INSERT INTO `ya4mp_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(3, 10003),
(4, 28),
(5, 10000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_usergroups`
--

CREATE TABLE `ya4mp_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_usergroups`
--

INSERT INTO `ya4mp_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 10, 17, 'Registered'),
(3, 2, 11, 16, 'Author'),
(4, 3, 12, 15, 'Editor'),
(5, 4, 13, 14, 'Publisher'),
(6, 1, 4, 9, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(9, 1, 2, 3, 'Guest'),
(10, 6, 7, 8, 'Anbieter');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_users`
--

CREATE TABLE `ya4mp_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_users`
--

INSERT INTO `ya4mp_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(608, 'Super User', 'admin', 'prtmaster@web.de', '$2y$10$XEri1C1fOlqEPesKUmuI3.IA2XJbu/OQq3/rdAbW457UPaN9N7msC', 0, 1, '2016-11-24 10:54:10', '2016-12-07 10:29:09', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(609, 'Anbieter1', 'a1', 'adfasdfdsaf@web.de', '$2y$10$3fg0hP6e0JxB/6CDpdRm.OXFPg8GMkkjiK0BXfj4nFNQTfBZCkd5i', 0, 0, '2016-12-07 07:44:33', '2016-12-07 07:45:29', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_user_keys`
--

CREATE TABLE `ya4mp_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_user_notes`
--

CREATE TABLE `ya4mp_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_user_profiles`
--

CREATE TABLE `ya4mp_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_user_usergroup_map`
--

CREATE TABLE `ya4mp_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_user_usergroup_map`
--

INSERT INTO `ya4mp_user_usergroup_map` (`user_id`, `group_id`) VALUES
(608, 8),
(609, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_utf8_conversion`
--

CREATE TABLE `ya4mp_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_utf8_conversion`
--

INSERT INTO `ya4mp_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ya4mp_viewlevels`
--

CREATE TABLE `ya4mp_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `ya4mp_viewlevels`
--

INSERT INTO `ya4mp_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ya4mp_assets`
--
ALTER TABLE `ya4mp_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indizes für die Tabelle `ya4mp_associations`
--
ALTER TABLE `ya4mp_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indizes für die Tabelle `ya4mp_banners`
--
ALTER TABLE `ya4mp_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `ya4mp_banner_clients`
--
ALTER TABLE `ya4mp_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indizes für die Tabelle `ya4mp_banner_tracks`
--
ALTER TABLE `ya4mp_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indizes für die Tabelle `ya4mp_categories`
--
ALTER TABLE `ya4mp_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `ya4mp_contact_details`
--
ALTER TABLE `ya4mp_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indizes für die Tabelle `ya4mp_content`
--
ALTER TABLE `ya4mp_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indizes für die Tabelle `ya4mp_contentitem_tag_map`
--
ALTER TABLE `ya4mp_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indizes für die Tabelle `ya4mp_content_frontpage`
--
ALTER TABLE `ya4mp_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indizes für die Tabelle `ya4mp_content_rating`
--
ALTER TABLE `ya4mp_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indizes für die Tabelle `ya4mp_content_types`
--
ALTER TABLE `ya4mp_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indizes für die Tabelle `ya4mp_extensions`
--
ALTER TABLE `ya4mp_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indizes für die Tabelle `ya4mp_finder_filters`
--
ALTER TABLE `ya4mp_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indizes für die Tabelle `ya4mp_finder_links`
--
ALTER TABLE `ya4mp_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms0`
--
ALTER TABLE `ya4mp_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms1`
--
ALTER TABLE `ya4mp_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms2`
--
ALTER TABLE `ya4mp_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms3`
--
ALTER TABLE `ya4mp_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms4`
--
ALTER TABLE `ya4mp_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms5`
--
ALTER TABLE `ya4mp_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms6`
--
ALTER TABLE `ya4mp_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms7`
--
ALTER TABLE `ya4mp_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms8`
--
ALTER TABLE `ya4mp_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_terms9`
--
ALTER TABLE `ya4mp_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_termsa`
--
ALTER TABLE `ya4mp_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_termsb`
--
ALTER TABLE `ya4mp_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_termsc`
--
ALTER TABLE `ya4mp_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_termsd`
--
ALTER TABLE `ya4mp_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_termse`
--
ALTER TABLE `ya4mp_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_links_termsf`
--
ALTER TABLE `ya4mp_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `ya4mp_finder_taxonomy`
--
ALTER TABLE `ya4mp_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indizes für die Tabelle `ya4mp_finder_taxonomy_map`
--
ALTER TABLE `ya4mp_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indizes für die Tabelle `ya4mp_finder_terms`
--
ALTER TABLE `ya4mp_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indizes für die Tabelle `ya4mp_finder_terms_common`
--
ALTER TABLE `ya4mp_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indizes für die Tabelle `ya4mp_finder_tokens`
--
ALTER TABLE `ya4mp_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indizes für die Tabelle `ya4mp_finder_tokens_aggregate`
--
ALTER TABLE `ya4mp_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indizes für die Tabelle `ya4mp_finder_types`
--
ALTER TABLE `ya4mp_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indizes für die Tabelle `ya4mp_languages`
--
ALTER TABLE `ya4mp_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indizes für die Tabelle `ya4mp_menu`
--
ALTER TABLE `ya4mp_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `ya4mp_menu_types`
--
ALTER TABLE `ya4mp_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indizes für die Tabelle `ya4mp_messages`
--
ALTER TABLE `ya4mp_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indizes für die Tabelle `ya4mp_messages_cfg`
--
ALTER TABLE `ya4mp_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indizes für die Tabelle `ya4mp_modules`
--
ALTER TABLE `ya4mp_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `ya4mp_modules_menu`
--
ALTER TABLE `ya4mp_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indizes für die Tabelle `ya4mp_newsfeeds`
--
ALTER TABLE `ya4mp_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indizes für die Tabelle `ya4mp_overrider`
--
ALTER TABLE `ya4mp_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ya4mp_postinstall_messages`
--
ALTER TABLE `ya4mp_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indizes für die Tabelle `ya4mp_redirect_links`
--
ALTER TABLE `ya4mp_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indizes für die Tabelle `ya4mp_rem_buying_request`
--
ALTER TABLE `ya4mp_rem_buying_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `ya4mp_rem_categories`
--
ALTER TABLE `ya4mp_rem_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iditem` (`iditem`),
  ADD KEY `idcat` (`idcat`);

--
-- Indizes für die Tabelle `ya4mp_rem_const`
--
ALTER TABLE `ya4mp_rem_const`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `const` (`const`);

--
-- Indizes für die Tabelle `ya4mp_rem_const_languages`
--
ALTER TABLE `ya4mp_rem_const_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_constid` (`fk_constid`,`fk_languagesid`),
  ADD KEY `fk_languagesid` (`fk_languagesid`);

--
-- Indizes für die Tabelle `ya4mp_rem_feature`
--
ALTER TABLE `ya4mp_rem_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ya4mp_rem_feature_houses`
--
ALTER TABLE `ya4mp_rem_feature_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_featureid` (`fk_featureid`),
  ADD KEY `fk_houseid` (`fk_houseid`,`fk_featureid`);

--
-- Indizes für die Tabelle `ya4mp_rem_houses`
--
ALTER TABLE `ya4mp_rem_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indizes für die Tabelle `ya4mp_rem_languages`
--
ALTER TABLE `ya4mp_rem_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lang_code` (`lang_code`);

--
-- Indizes für die Tabelle `ya4mp_rem_main_categories`
--
ALTER TABLE `ya4mp_rem_main_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indizes für die Tabelle `ya4mp_rem_orders`
--
ALTER TABLE `ya4mp_rem_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ya4mp_rem_orders_details`
--
ALTER TABLE `ya4mp_rem_orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ya4mp_rem_photos`
--
ALTER TABLE `ya4mp_rem_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `ya4mp_rem_rent`
--
ALTER TABLE `ya4mp_rem_rent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `ya4mp_rem_rent_request`
--
ALTER TABLE `ya4mp_rem_rent_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `ya4mp_rem_rent_sal`
--
ALTER TABLE `ya4mp_rem_rent_sal`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ya4mp_rem_review`
--
ALTER TABLE `ya4mp_rem_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `ya4mp_rem_track_source`
--
ALTER TABLE `ya4mp_rem_track_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_house_id` (`fk_house_id`);

--
-- Indizes für die Tabelle `ya4mp_rem_users_wishlist`
--
ALTER TABLE `ya4mp_rem_users_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_houseid` (`fk_houseid`),
  ADD KEY `fk_userid` (`fk_userid`);

--
-- Indizes für die Tabelle `ya4mp_rem_version`
--
ALTER TABLE `ya4mp_rem_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `ya4mp_rem_video_source`
--
ALTER TABLE `ya4mp_rem_video_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_house_id` (`fk_house_id`);

--
-- Indizes für die Tabelle `ya4mp_schemas`
--
ALTER TABLE `ya4mp_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indizes für die Tabelle `ya4mp_session`
--
ALTER TABLE `ya4mp_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indizes für die Tabelle `ya4mp_tags`
--
ALTER TABLE `ya4mp_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `ya4mp_template_styles`
--
ALTER TABLE `ya4mp_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indizes für die Tabelle `ya4mp_ucm_base`
--
ALTER TABLE `ya4mp_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indizes für die Tabelle `ya4mp_ucm_content`
--
ALTER TABLE `ya4mp_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indizes für die Tabelle `ya4mp_ucm_history`
--
ALTER TABLE `ya4mp_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indizes für die Tabelle `ya4mp_updates`
--
ALTER TABLE `ya4mp_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indizes für die Tabelle `ya4mp_update_sites`
--
ALTER TABLE `ya4mp_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indizes für die Tabelle `ya4mp_update_sites_extensions`
--
ALTER TABLE `ya4mp_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indizes für die Tabelle `ya4mp_usergroups`
--
ALTER TABLE `ya4mp_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indizes für die Tabelle `ya4mp_users`
--
ALTER TABLE `ya4mp_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indizes für die Tabelle `ya4mp_user_keys`
--
ALTER TABLE `ya4mp_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `ya4mp_user_notes`
--
ALTER TABLE `ya4mp_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indizes für die Tabelle `ya4mp_user_profiles`
--
ALTER TABLE `ya4mp_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indizes für die Tabelle `ya4mp_user_usergroup_map`
--
ALTER TABLE `ya4mp_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indizes für die Tabelle `ya4mp_viewlevels`
--
ALTER TABLE `ya4mp_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ya4mp_assets`
--
ALTER TABLE `ya4mp_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_banners`
--
ALTER TABLE `ya4mp_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_banner_clients`
--
ALTER TABLE `ya4mp_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_categories`
--
ALTER TABLE `ya4mp_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_contact_details`
--
ALTER TABLE `ya4mp_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_content`
--
ALTER TABLE `ya4mp_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_content_types`
--
ALTER TABLE `ya4mp_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_extensions`
--
ALTER TABLE `ya4mp_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10033;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_finder_filters`
--
ALTER TABLE `ya4mp_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_finder_links`
--
ALTER TABLE `ya4mp_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_finder_taxonomy`
--
ALTER TABLE `ya4mp_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_finder_terms`
--
ALTER TABLE `ya4mp_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_finder_types`
--
ALTER TABLE `ya4mp_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_languages`
--
ALTER TABLE `ya4mp_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_menu`
--
ALTER TABLE `ya4mp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_menu_types`
--
ALTER TABLE `ya4mp_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_messages`
--
ALTER TABLE `ya4mp_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_modules`
--
ALTER TABLE `ya4mp_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_newsfeeds`
--
ALTER TABLE `ya4mp_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_overrider`
--
ALTER TABLE `ya4mp_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT für Tabelle `ya4mp_postinstall_messages`
--
ALTER TABLE `ya4mp_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_redirect_links`
--
ALTER TABLE `ya4mp_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_buying_request`
--
ALTER TABLE `ya4mp_rem_buying_request`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_categories`
--
ALTER TABLE `ya4mp_rem_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_const`
--
ALTER TABLE `ya4mp_rem_const`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_const_languages`
--
ALTER TABLE `ya4mp_rem_const_languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1924;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_feature`
--
ALTER TABLE `ya4mp_rem_feature`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_feature_houses`
--
ALTER TABLE `ya4mp_rem_feature_houses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_houses`
--
ALTER TABLE `ya4mp_rem_houses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_languages`
--
ALTER TABLE `ya4mp_rem_languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_main_categories`
--
ALTER TABLE `ya4mp_rem_main_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_orders`
--
ALTER TABLE `ya4mp_rem_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_orders_details`
--
ALTER TABLE `ya4mp_rem_orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_photos`
--
ALTER TABLE `ya4mp_rem_photos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_rent`
--
ALTER TABLE `ya4mp_rem_rent`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_rent_request`
--
ALTER TABLE `ya4mp_rem_rent_request`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_rent_sal`
--
ALTER TABLE `ya4mp_rem_rent_sal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_review`
--
ALTER TABLE `ya4mp_rem_review`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_track_source`
--
ALTER TABLE `ya4mp_rem_track_source`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_users_wishlist`
--
ALTER TABLE `ya4mp_rem_users_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_version`
--
ALTER TABLE `ya4mp_rem_version`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_rem_video_source`
--
ALTER TABLE `ya4mp_rem_video_source`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_tags`
--
ALTER TABLE `ya4mp_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_template_styles`
--
ALTER TABLE `ya4mp_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_ucm_content`
--
ALTER TABLE `ya4mp_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_ucm_history`
--
ALTER TABLE `ya4mp_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_updates`
--
ALTER TABLE `ya4mp_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_update_sites`
--
ALTER TABLE `ya4mp_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_usergroups`
--
ALTER TABLE `ya4mp_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_users`
--
ALTER TABLE `ya4mp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_user_keys`
--
ALTER TABLE `ya4mp_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_user_notes`
--
ALTER TABLE `ya4mp_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ya4mp_viewlevels`
--
ALTER TABLE `ya4mp_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
