-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Jan 2017 um 14:46
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `spacesharing_neu`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_assets`
--

DROP TABLE IF EXISTS `joomla_assets`;
CREATE TABLE `joomla_assets` (
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
-- Daten für Tabelle `joomla_assets`
--

INSERT INTO `joomla_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 159, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1,"10":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 30, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 31, 32, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 33, 34, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 35, 36, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 37, 38, 1, 'com_login', 'com_login', '{}'),
(13, 1, 39, 40, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 41, 42, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 43, 44, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 45, 54, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 55, 56, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 57, 102, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 103, 106, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 107, 108, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 109, 110, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 111, 112, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 113, 114, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":{"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 115, 118, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 119, 120, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 104, 105, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 116, 117, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 121, 122, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 123, 124, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 125, 126, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 127, 128, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 129, 130, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 131, 132, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 58, 59, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 60, 61, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 62, 63, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 64, 65, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 66, 67, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 68, 69, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 70, 71, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 72, 73, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 74, 75, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 76, 77, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 78, 79, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 80, 81, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 82, 83, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 84, 85, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 86, 87, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 46, 47, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 1, 133, 134, 1, 'com_gantry', 'Gantry', '{}'),
(56, 18, 88, 89, 2, 'com_modules.module.87', 'Testnavigation', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(57, 16, 48, 49, 2, 'com_menus.menu.2', 'Test', '{}'),
(58, 1, 135, 136, 1, 'com_jomres', 'com_jomres', '{}'),
(59, 27, 19, 20, 3, 'com_content.article.1', 'Testinhalt', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(60, 1, 137, 138, 1, 'com_templateck', 'com_templateck', '{"core.manage":{"10":0}}'),
(61, 8, 26, 29, 2, 'com_content.category.8', 'Forschung', '{}'),
(62, 61, 27, 28, 3, 'com_content.article.2', 'Erster Beitrag', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(64, 1, 139, 140, 1, '#__rem_main_categories.46', '#__rem_main_categories.46', '{}'),
(65, 1, 141, 142, 1, '#__rem_main_categories.47', '#__rem_main_categories.47', '{}'),
(66, 1, 143, 144, 1, '#__rem_main_categories.48', '#__rem_main_categories.48', '{}'),
(67, 1, 145, 146, 1, '#__rem_main_categories.49', '#__rem_main_categories.49', '{}'),
(68, 1, 147, 148, 1, '#__rem_main_categories.50', '#__rem_main_categories.50', '{}'),
(69, 1, 149, 150, 1, '#__rem_houses.2', '#__rem_houses.2', '{}'),
(70, 1, 151, 152, 1, '#__rem_houses.3', '#__rem_houses.3', '{}'),
(71, 1, 153, 154, 1, '#__rem_houses.4', '#__rem_houses.4', '{}'),
(72, 1, 155, 156, 1, 'com_akeeba', 'Akeeba', '{}'),
(73, 18, 90, 91, 2, 'com_modules.module.88', 'RealEstateManager Featured Free', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(74, 18, 92, 93, 2, 'com_modules.module.89', 'Real Estate Manager Location Map Free', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(75, 18, 94, 95, 2, 'com_modules.module.90', 'RealEstateManager Search Free', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(76, 1, 157, 158, 1, 'com_realestatemanager', 'RealEstateManager', '{}'),
(77, 16, 50, 51, 2, 'com_menus.menu.3', 'Spacesharing', '{}'),
(78, 18, 96, 97, 2, 'com_modules.module.91', 'Fußzeile', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(79, 16, 52, 53, 2, 'com_menus.menu.4', 'Footer Menü', '{}'),
(80, 27, 21, 22, 3, 'com_content.article.3', 'Impressum', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(81, 18, 98, 99, 2, 'com_modules.module.92', 'Impressum', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(82, 18, 100, 101, 2, 'com_modules.module.93', 'Impressum', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(83, 27, 23, 24, 3, 'com_content.article.4', 'AGB', '{"core.admin":{"7":1},"core.manage":{"6":1,"10":0},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_associations`
--

DROP TABLE IF EXISTS `joomla_associations`;
CREATE TABLE `joomla_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_banners`
--

DROP TABLE IF EXISTS `joomla_banners`;
CREATE TABLE `joomla_banners` (
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
-- Tabellenstruktur für Tabelle `joomla_banner_clients`
--

DROP TABLE IF EXISTS `joomla_banner_clients`;
CREATE TABLE `joomla_banner_clients` (
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
-- Tabellenstruktur für Tabelle `joomla_banner_tracks`
--

DROP TABLE IF EXISTS `joomla_banner_tracks`;
CREATE TABLE `joomla_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_categories`
--

DROP TABLE IF EXISTS `joomla_categories`;
CREATE TABLE `joomla_categories` (
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
-- Daten für Tabelle `joomla_categories`
--

INSERT INTO `joomla_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 513, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 513, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 513, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 513, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 513, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 513, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 61, 1, 11, 12, 1, 'forschung', 'com_content', 'Forschung', 'forschung', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 513, '2016-11-29 18:37:41', 0, '2016-11-29 18:37:41', 0, '*', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_contact_details`
--

DROP TABLE IF EXISTS `joomla_contact_details`;
CREATE TABLE `joomla_contact_details` (
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
-- Tabellenstruktur für Tabelle `joomla_content`
--

DROP TABLE IF EXISTS `joomla_content`;
CREATE TABLE `joomla_content` (
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
-- Daten für Tabelle `joomla_content`
--

INSERT INTO `joomla_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 59, 'Testinhalt', 'testinhalt', '<p>teafdfasdf<span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span><span style="font-size: 12.16px;">teafdfasdf</span></p>\r\n<p> </p>\r\n<p><span style="font-size: 12.16px;">teafdfasdf</span></p>', '', 1, 2, '2016-11-22 20:21:23', 513, '', '2016-11-22 20:21:23', 0, 0, '0000-00-00 00:00:00', '2016-11-22 20:21:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 33, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 62, 'Erster Beitrag', 'erster-beitrag', '<p>AFasdfasdfdasf<span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span><span style="font-size: 12.16px;">AFasdfasdfdasf</span></p>', '', 1, 8, '2016-11-29 18:38:07', 513, '', '2016-11-29 18:41:41', 513, 0, '0000-00-00 00:00:00', '2016-11-29 18:38:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"0","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 80, 'Impressum', 'impressum', '<p>lalallala</p>', '', 1, 2, '2017-01-04 12:36:59', 513, '', '2017-01-04 12:36:59', 0, 0, '0000-00-00 00:00:00', '2017-01-04 12:36:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 83, 'AGB', 'agb', '<p>afsdfertererere</p>', '', 1, 2, '2017-01-04 12:39:21', 513, '', '2017-01-04 13:16:15', 513, 0, '0000-00-00 00:00:00', '2017-01-04 12:39:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_contentitem_tag_map`
--

DROP TABLE IF EXISTS `joomla_contentitem_tag_map`;
CREATE TABLE `joomla_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_content_frontpage`
--

DROP TABLE IF EXISTS `joomla_content_frontpage`;
CREATE TABLE `joomla_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_content_rating`
--

DROP TABLE IF EXISTS `joomla_content_rating`;
CREATE TABLE `joomla_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_content_types`
--

DROP TABLE IF EXISTS `joomla_content_types`;
CREATE TABLE `joomla_content_types` (
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
-- Daten für Tabelle `joomla_content_types`
--

INSERT INTO `joomla_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
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
-- Tabellenstruktur für Tabelle `joomla_core_log_searches`
--

DROP TABLE IF EXISTS `joomla_core_log_searches`;
CREATE TABLE `joomla_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_extensions`
--

DROP TABLE IF EXISTS `joomla_extensions`;
CREATE TABLE `joomla_extensions` (
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
-- Daten für Tabelle `joomla_extensions`
--

INSERT INTO `joomla_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"de-DE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"3db72a6b56fae9019fc6f99e4b6ed7f1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
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
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `joomla_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
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
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1483518017}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1479832962,"unique_id":"0ac8fbad5e6f378887f44575bbf22e1574485138","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
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
(10000, 'GermanDE', 'language', 'de-DE', '', 0, 1, 0, 0, '{"name":"German (DE)","type":"language","creationDate":"25.10.2016","author":"J!German","copyright":"Copyright (C) 2008 - 2016 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.6.4.1","description":"\\n\\t  <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Frontend (Website)-\\u00dcbersetzung f\\u00fcr Joomla! 3.6.4\\n\\t  <br \\/>\\n\\t  <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Frontend (Website) translation for Joomla! 3.6.4\\n\\t","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'GermanDE', 'language', 'de-DE', '', 1, 1, 0, 0, '{"name":"German (DE)","type":"language","creationDate":"25.10.2016","author":"J!German","copyright":"Copyright (C) 2008 - 2016 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.6.4.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Backend (Administrator)-\\u00dcbersetzung f\\u00fcr Joomla! 3.6.4\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Backend (Administrator) translation for Joomla! 3.6.4\\n    ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'German (Germany) Language Pack', 'package', 'pkg_de-DE', '', 0, 1, 1, 0, '{"name":"German (Germany) Language Pack","type":"package","creationDate":"25.10.2016","author":"J!German","copyright":"","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.6.4.1","description":"\\n    <div style=\\"text-align: center;\\">\\n      <h2>Deutsches \\u201eFull\\u201c-Sprachpaket f\\u00fcr Joomla! 3.6.4 von <a title=\\"J!German\\" href=\\"http:\\/\\/www.jgerman.de\\" target=\\"_blank\\">J!German<\\/a><\\/h2>\\n      <h3><span style=\\"color: #008000;\\">\\u00dcbersetzungsversion: 3.6.4v1<\\/span><\\/h3>\\n      <hr \\/>\\n      <table rules=\\"all\\" frame=\\"border\\" style=\\"width: 90%; border-color: #000000; border-width: 1px; border-style: solid;\\" align=\\"center\\" border=\\"1\\">\\n      <colgroup> <col width=\\"30%\\" \\/> <col width=\\"60\\" \\/> <\\/colgroup>\\n      <tbody>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Frontend (Website)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td rowspan=\\"2\\">\\n            <ul>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Legen Sie die deutsche Sprache unter <a title=\\"Language(s)\\" href=\\"index.php?option=com_languages\\" target=\\"_blank\\">\\u201eExtensions\\u201c \\u2192 \\u201eLanguage(s)\\u201c<\\/a> als Standardsprache (\\u201eDefault\\u201c), sowohl f\\u00fcr die Website (\\u201eInstalled - Site\\u201c) als auch f\\u00fcr die Administration (\\u201eInstalled - Administrator\\u201c), fest.\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Aktualisierung:<\\/span>\\n                <br \\/>\\n                Es sind keine weiteren Schritte erforderlich.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Backend (Administrator)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n      <\\/tbody>\\n      <\\/table>\\n      <br \\/>\\n      <span style=\\"text-decoration: underline;\\">Hinweis:<\\/span> Dieses Paket unterst\\u00fctzt die Joomla! eigene <a title=\\"Joomla!-Aktualisierungsfunktion\\" href=\\"index.php?option=com_installer&amp;view=update\\" target=\\"_blank\\">Aktualisierungsfunktion<\\/a>!\\n    <\\/div>\\n    ","group":"","filename":"pkg_de-DE"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'JD Atlanta', 'file', 'kunena_tmpl_atlanta', '', 0, 1, 0, 0, '{"name":"JD Atlanta","type":"file","creationDate":"August 2016","author":"Joomdev","copyright":"(C) 2008 - 2015 JoomDev. All rights reserved.","authorEmail":"info@joomdev.com","authorUrl":"https:\\/\\/www.joomdev.com","version":"1.0","description":"","group":"","filename":"kunena_tmpl_atlanta"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"name":"Gantry","type":"library","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"lib_gantry"}', '{}', '{"last_update":1479838563}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"name":"Gantry","type":"component","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"name":"System - Gantry","type":"plugin","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry System Plugin for Joomla","group":"","filename":"gantry"}', '{"debugloglevel":"63"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10008, 'jd_atlanta', 'template', 'jd_atlanta', '', 0, 1, 1, 0, '{"name":"jd_atlanta","type":"template","creationDate":"April, 2016","author":"JoomDev","copyright":"(C) 2008 - 2016 JoomDev. All rights reserved.","authorEmail":"info@joomdev.com","authorUrl":"http:\\/\\/www.joomdev.com","version":"1.3","description":"JD ATLANTA Template build by www.joomdev.com","group":"","filename":"templateDetails"}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"name":"System - RokExtender","type":"plugin","creationDate":"October 31, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"System - Gantry","group":"","filename":"rokextender"}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10010, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"name":"RokNavMenu","type":"module","creationDate":"February 24, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.8","description":"RocketTheme Customizable Navigation Menu","group":"","filename":"mod_roknavmenu"}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'com_jomres', 'component', 'com_jomres', '', 1, 1, 0, 0, '{"name":"com_jomres","type":"component","creationDate":"October 2016","author":"Vince Wooll","copyright":"Copyright (C) 2005-2016 Vince Wooll. All rights reserved.","authorEmail":"sales@jomres.net","authorUrl":"https:\\/\\/www.jomres.net","version":"9.8.18","description":"Jomres - Complete Online Booking and Property Management Solution","group":"","filename":"jomres"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'com_templateck', 'component', 'com_templateck', '', 1, 1, 0, 0, '{"name":"com_templateck","type":"component","creationDate":"April 2013","author":"Cedric Keiflin","copyright":"Copyright (C) 2013. All rights reserved.","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.template-creator.com","version":"3.3.10","description":"CK_TEMPLATECK_DESC","group":"","filename":"templateck"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'templatecreatorck', 'template', 'templatecreatorck', '', 0, 1, 1, 0, '{"name":"templatecreatorck","type":"template","creationDate":"Septembre 2011","author":"C\\u00e9dric KEIFLIN","copyright":"Copyright (C) 2013 C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.template-creator.com","version":"3.0.0","description":"Empty template for Template Creator","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Template Creator Package', 'package', 'pkg_templatecreatorck', '', 0, 1, 1, 0, '{"name":"Template Creator Package","type":"package","creationDate":"Avril 2013","author":"C\\u00e9dric KEIFLIN","copyright":"Copyright (C) 2013. All rights reserved.","authorEmail":"","authorUrl":"","version":"3.3.10","description":"Template Creator CK 3 Installer Package : The component Template Creator CK and the preview template have been installed successfully.","group":"","filename":"pkg_templatecreatorck"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'de-DE.com_templateck', 'file', 'install', '', 0, 1, 0, 0, '{"name":"de-DE.com_templateck","type":"file","creationDate":"August 2013","author":"Bernhard Flemming ","copyright":"Copyright (C) 2013. All rights reserved.","authorEmail":"","authorUrl":"","version":"3.0.13","description":"German translation for Template Creator CK","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'simon', 'template', 'simon', '', 0, 1, 1, 0, '{"name":"simon","type":"template","creationDate":"23.11.2016","author":"Simon","copyright":"Simon","authorEmail":"Simon","authorUrl":"Simon","version":"v1","description":"Simon","group":"","filename":"templateDetails"}', '{"bannerlogo_logoimgsrc":"templates\\/simon\\/images\\/logo_fake.png","bannerlogo_logoheight":"53","bannerlogo_logowidth":"216","bannerlogo_logolink":"","bannerlogo_logotitle":"","bannerlogo_logodescription":"","usecsspie":"1","useresponsive":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'meet_gavern', 'template', 'meet_gavern', '', 0, 1, 1, 0, '{"name":"meet_gavern","type":"template","creationDate":"30 Oct 2014","author":"GavickPro","copyright":"Copyright (C) 2014 GavickPro. All rights reserved.","authorEmail":"info@gavick.com","authorUrl":"","version":"1.4.1","description":"\\n                    <link rel=\\"stylesheet\\" type=\\"text\\/css\\" href=\\"..\\/templates\\/meet_gavern\\/admin\\/style.css\\" \\/>\\n                              <style type=\\"text\\/css\\" media=\\"all\\">\\n                              <!--\\n                              #wrap1 {padding: 0 30px 30px; font-size: 14px; line-height: 24px; color: #666}\\n                              #wrap1 h1 {clear:both;font: 300 38px\\/24px \\"Helvetica Neue\\",Helvetica,Arial,sans-serif;margin:30px 20px 12px 0;padding:0;color:#222;  }\\n                              #wrap1 h4 { border-bottom: 1px solid #e5e5e5; margin: 0 0 40px; padding: 0 0 16px; font: 300 17px\\/28px \\"Helvetica Neue\\",Helvetica,Arial,sans-serif; color: #555; }\\n                              #wrap1 sup { font-style: italic; font-size: }\\n                              .livedemo { margin-top: 28px; }\\n                              -->\\n                              <\\/style>\\t\\n                              <div id=\\"preloaderWrap\\"><div id=\\"preloader\\"><\\/div><\\/div>\\n                              <div id=\\"wrap1\\">\\n                              <h1>Meet Gavern<\\/h1>\\n                              \\n                              <h4>Responsive, bootstrap-based, free Joomla 3 template<\\/h4>\\n                              <p>We are happy to announce the availability of a free Joomla 3 template called Meet Gavern. Based upon a brand-new version of our Gavern Framework, this template has a few interesting features you should check out.\\n                              <p>First, it has been designed exclusively for use with Joomla! 3. Further, Meet Gavern features built-in support for Bootstrap.<\\/p>\\n                              <p>Finally, this wonderful no-cost template was built with support for Responsive Web Design, which means it is more flexible and powerful. This is surely a must-have template for Joomla users!<\\/p>\\n                              <p>With the anticipated release of the production version of Joomla 3, the enhanced version of the Gavern Framework will become the basis for all future GavickPro template releases.<\\/p>\\n                              <p class=\\"livedemo\\">View Meet Gavern template in action <a href=\\"http:\\/\\/joomla30.gavick.com\\" target=\\"_blank\\">here<\\/a>...<\\/p>\\n                              <small>Gavern v.1.4.1<\\/small>\\n                              \\n                              <\\/div> \\n          ","group":"","filename":"templateDetails"}', '{"max_page_width":"1200","logo_type":"image","logo_image":"","logo_text":"","logo_slogan":"","favicon_image":"","ogfb_image":"","show_category_details":"0","framework_logo":"1","webmaster_contact_type":"1","webmaster_contact":"webmaster@gavick.com","google_analytics_type":"old","menu_animation":"width_height_opacity","menu_speed":"fast","submenu_width":"200","social_pos":"left","fb_api_id":"","fb_lang":"en_US","fb_login":"1","fb_like":"0","fb_like_send":"0","fb_like_layout":"standard","fb_like_show_faces":"true","fb_like_width":"500","fb_like_action":"like","fb_like_font":"arial","fb_like_colorscheme":"light","google_plus":"1","google_plus_count":"1","google_plus_size":"medium","google_plus_lang":"en-GB","google_plus_share":"1","google_plus_share_annotation":"vertical-bubble","google_plus_share_size":"20","tweet_btn":"0","tweet_btn_data_count":"vertical","tweet_btn_data_via":"","tweet_btn_data_lang":"en","pinterest_btn":"0","pinterest_btn_style":"horizontal","excluded_cats":"","cookie_consent":"0","consenttype":"explicit","cookie_latest_version":"0","cookie_use_ssl":"0","banner_position":"bottom","banner_tag_placement":"bottom-right","cookie_style":"light","refreshOnConsent":"0","cookiecss":"1","recompile_css":"0","recompile_bootstrap":"0","usernameless_login":"0","css_cache":"0","css_compression":"0","css_override":"0","css_prefixer":"0","js_compression":"0","chrome_frame_support":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'frontend', 'template', 'frontend', '', 0, 1, 1, 0, '{"name":"frontend","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Simon BS', 'template', 'simonbs', '', 0, 1, 1, 0, '{"name":"Simon BS","type":"template","creationDate":"xxxx-xx-xx","author":"Simon","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'SimonBS2', 'template', 'simonbs2', '', 0, 1, 1, 0, '{"name":"SimonBS2","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{"runless":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'Master Bootstrap', 'template', 'masterbootstrap', '', 0, 1, 1, 0, '{"name":"Master Bootstrap","type":"template","creationDate":"05 APR 2016","author":"Gonzalo Suez","copyright":"Copyright \\u00a9 2013 - 2016 gsuez.cl","authorEmail":"info@gsuez.cl","authorUrl":"http:\\/\\/www.gsuez.cl","version":"Stable 1.2.2","description":"\\n\\t\\t<h1>Master Bootstrap for Joomla! 3.5<\\/h1>\\n\\t\\t<p>Un template para trabajar desde 0 con todas las ventajas de Bootstrap v.3.3.5<\\/p>\\n\\t\\t<p>A template to work from scratch, with all the advantages of Bootstrap v.3.3.5.<\\/p>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.gsuez.cl\\" target=\\"_blank\\">Gonzalo Suez <\\/a><\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{"leftColumnWidth":"3","rightColumnWidth":"3","frontpageshow":"1","modernizr":"0","fontawesome":"0","pie":"0","materialdesign":"0","compile_sass":"0","logo_link":"index.php","logo_width":"173","logo_height":"26","layout":"full","pattern":"default"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Spacesharing', 'template', 'spacesharing', '', 0, 1, 1, 0, '{"name":"Spacesharing","type":"template","creationDate":"24 Nov 2016","author":"SpaceSharing Team","copyright":"Copyright \\u00a9 2016 SpaceSharing Team","authorEmail":"","authorUrl":"","version":"Developer 1.0","description":"\\n\\t\\t<p>Created by SpaceSharing Team<\\/a><\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'COM_COALAWEBCONTACT', 'component', 'com_coalawebcontact', '', 1, 1, 1, 0, '{"name":"COM_COALAWEBCONTACT","type":"component","creationDate":"2016-11-17","author":"Steven Palmer","copyright":"Copyright (c) 2016 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"1.0.9","description":"COM_COALAWEBCONTACT_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'Gantry', 'component', 'com_gantry', '', 1, 1, 1, 0, '{"name":"Gantry","type":"component","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'FOF30', 'library', 'lib_fof30', '', 0, 1, 1, 0, '{"name":"FOF30","type":"library","creationDate":"2016-10-04 19:03:23","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"3.0.15","description":"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t","group":"","filename":"lib_fof30"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'MOD_COALAWEBCONTACT', 'module', 'mod_coalawebcontact', '', 0, 1, 1, 0, '{"name":"MOD_COALAWEBCONTACT","type":"module","creationDate":"2016-11-17","author":"Steven Palmer","copyright":"Copyright (c) 2014 Steven Palmer All rights reserved","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"1.0.9","description":"MOD_COALAWEBCONTACT_DESC","group":"","filename":"mod_coalawebcontact"}', '{"basic_info":"","recipients":"","recipient":"","email_subject":"","display_email":"","display_name":"","display_subject":"","display_message":"","display_copyme":"","display_asterisk_msg":"","redirect_url":"","form_theme":"","form_width":"","submit_btn_style":"","submit_btn_custom":"","submit_btn":"","custom_info":"","display_c_input1":"","which_captcha":"","display_captcha_title":"","bcaptcha_question":"","bcaptcha_answer":"","cache":"0","cache_time":"900","cachemode":"itemid","version_info":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'plg_quickicon_akeebabackup', 'plugin', 'akeebabackup', 'quickicon', 0, 0, 1, 0, '{"name":"plg_quickicon_akeebabackup","type":"plugin","creationDate":"2012-09-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.0","description":"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION","group":"","filename":"akeebabackup"}', '{"context":"mod_quickicon","enablewarning":"1","warnfailed":"1","maxbackupperiod":"24","profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE', 'plugin', 'akeebaupdatecheck', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE","type":"plugin","creationDate":"2011-05-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2009-2016 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.1","description":"PLG_AKEEBAUPDATECHECK_DESCRIPTION2","group":"","filename":"akeebaupdatecheck"}', '{"email":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `joomla_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10047, 'PLG_CWGEARS', 'plugin', 'cwgears', 'system', 0, 0, 1, 0, '{"name":"PLG_CWGEARS","type":"plugin","creationDate":"2016-10-04","author":"Steven Palmer","copyright":"Copyright (c) 2016 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"0.2.6","description":"PLG_CWGEARS_DESC","group":"","filename":"cwgears"}', '{"zoo_editor_tweak":"0","sys_msg_demo":"0","gzip_help":"0","recap_compact":"0","jquery_on":"0","jquery_server":"0","jquery_library":"2.0.2","jquery_noconflict":"0","jquery_migrate":"0","async":"1","defer":"0","script_list":"\\/\\/www.xing-share.com\\/js\\/external\\/share.js,\\/\\/platform.twitter.com\\/widgets.js,\\/\\/apis.google.com\\/js\\/plusone.js,\\/\\/cdnjs.cloudflare.com\\/ajax\\/libs\\/jquery-easing\\/1.3\\/jquery.easing.min.js,\\/\\/connect.facebook.net\\/en_GB\\/all.js#xfbml=1,\\/\\/assets.pinterest.com\\/js\\/pinit.js,\\/\\/platform.stumbleupon.com\\/1\\/widgets.js","uikit_add":"1","uikit_theme":"flat","ccss_add":"0","ccss_minimize":"1","ccss_full_paths":"0","ccss_remove_comments":"1","ccss_code":"","cjs_add":"0","cjs_minimize":"1","cjs_remove_comments":"1","cjs_code":"","cache_off":"0","rules":"option=com_content","dbclean_info":"","db_clean":"1","locktime":"1440","updates_info":"","downloadid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'PLG_CWMAILCHECK', 'plugin', 'cwmailcheck', 'system', 0, 0, 1, 0, '{"name":"PLG_CWMAILCHECK","type":"plugin","creationDate":"2016-11-17","author":"Steven Palmer","copyright":"Copyright (c) 2016 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"1.0.9","description":"PLG_CWMAILCHECK_DESCRIPTION","group":"","filename":"cwmailcheck"}', '{"basic_info":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'dream_house', 'template', 'dream_house', '', 0, 1, 1, 0, '{"name":"dream_house","type":"template","creationDate":"Creation Date","author":"Your name","copyright":"Your copyrights","authorEmail":"Your email","authorUrl":"Link to Your website","version":"3.5.1","description":"\\n\\t\\n\\t      <link href=''http:\\/\\/fonts.googleapis.com\\/css?family=Quicksand:400,700,300'' rel=''stylesheet'' type=''text\\/css''>\\n\\t      <br>\\n\\t      <h1 class=\\"temph1\\">The OS Framework<\\/h1>\\n\\t      <h4 class=\\"temph4\\">Beautiful Fast & Light joomla framework<\\/h4>\\n\\t      <p class=\\"text_propery\\">Powerfull admin area allow easy control templeate elements like fonts, logo, colors etc. Fully responsive grid based on Twitter Bootstrap, looking great on all screen sizes and platforms.<\\/p>\\n\\t      <br>\\n\\t      <div id=\\"down_pictures\\">\\n\\t\\t    <a href=\\"http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\\" onclick=\\"window.open(''http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be'',''OrdaSoft Joomla Template Features'',''width=635,height=610,left=''+(screen.availWidth\\/2-317.5)+'',top=''+(screen.availHeight\\/2-305)+'''');return false;\\" target=\\"_blank\\"><img style=\\"width:400px; height:306px;\\" src=\\"..\\/templates\\/dream_house\\/joomla_template_features_video.jpg\\"\\/><\\/a>\\n\\t\\t    <div style=\\"clear:both;\\"><\\/div>\\n\\t\\t    <div class=\\"sepp_div\\"><\\/div>\\n\\t\\t    <a href=\\"http:\\/\\/ordasoft.com\\/membership-page.html\\" target=\\"_blank\\"><img src=\\"..\\/templates\\/dream_house\\/button_become_member.jpg\\"\\/><\\/a>\\n\\t      <\\/div>\\n\\t\\n\\t","group":"","filename":"templateDetails"}', '{"body_color":"#f8f8f8","logo_link":"index.php","logo_width":"173","logo_height":"26","body_link_color":"#92999E","body_link_hover_color":"#12ABFF","body_underline":"none","body_hover_underline":"underline","top_menu_color":"#92999E","top_menu_hover_color":"#000000","top_menu_underline":"none","top_menu_hover_underline":"none","main_menu_color":"#92999E","main_menu_hover_color":"#000000","main_menu_underline":"none","main_menu_hover_underline":"none","menu_footer_color":"#92999E","menu_footer_hover_color":"#000000","menu_footer_underline":"none","menu_footer_hover_underline":"none","body_font":"PT Sans Narrow","links_font":"PT Sans Narrow","top_menu_font":"PT Sans Narrow","main_menu_font":"PT Sans Narrow","footer_menu_font":"PT Sans Narrow","h1_font":"PT Sans Narrow","h2_font":"PT Sans Narrow","h3_font":"PT Sans Narrow","h4_font":"PT Sans Narrow","h5_font":"PT Sans Narrow","h6_font":"PT Sans Narrow","twitter":"","facebook":"","flickr":"","linkedin":"","youtube":"","pinterest":"","google":"","dribbble":"","vimeo":"","instagram":"","vk":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'os-basetemplate', 'template', 'os-basetemplate', '', 0, 1, 1, 0, '{"name":"os-basetemplate","type":"template","creationDate":"Creation Date","author":"Your name","copyright":"Your copyrights","authorEmail":"Your email","authorUrl":"Link to Your website","version":"3.4.4","description":" \\n\\t\\n\\t      <link href=''http:\\/\\/fonts.googleapis.com\\/css?family=Quicksand:400,700,300'' rel=''stylesheet'' type=''text\\/css''>\\n\\t      <br>\\n\\t      <h1 class=\\"temph1\\">The OS Framework<\\/h1>\\n\\t      <h4 class=\\"temph4\\">Fast & Light Joomla Framework<\\/h4>\\n\\t      <p class=\\"text_propery\\">Joomla Blank Template includes amazing interface and powerful admin area. OS Joomla Framework has HTML5, Bootstrap and LESS at core. Joomla Blank Template supports Font Awesome. The new version of  OS Joomla Framework includes last version VirtueMart, K2 blog, OS Simple Membership, OS Touch Slider, OS Responsive Image Gallery, Forms from Balbooa team, awesome custom pages and nice Joomla content.<\\/p>\\n\\t      <br>\\n\\t      <div id=\\"down_pictures\\"> \\n\\t\\t    <a href=\\"http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\\" onclick=\\"window.open(''http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be'',''OrdaSoft Joomla Template Features'',''width=635,height=610,left=''+(screen.availWidth\\/2-317.5)+'',top=''+(screen.availHeight\\/2-305)+'''');return false;\\" target=\\"_blank\\"><img style=\\"width:400px; height:306px;\\" src=\\"..\\/templates\\/os-basetemplate\\/joomla_template_features_video.jpg\\"\\/><\\/a>\\n\\t\\t    <div style=\\"clear:both;\\"><\\/div>\\n\\t\\t    <div class=\\"sepp_div\\"><\\/div>\\n\\t\\t    <a href=\\"http:\\/\\/ordasoft.com\\/membership-page.html\\" target=\\"_blank\\"><img src=\\"..\\/templates\\/os-basetemplate\\/button_become_member.jpg\\"\\/><\\/a> \\n\\t      <\\/div>\\n\\t\\n\\t","group":"","filename":"templateDetails"}', '{"body_color":"#f8f8f8","logo_file":"templates\\/os-basetemplate\\/ordasoft_template_logo.png","logo_link":"index.php","logo_width":"226","logo_height":"60","body_link_color":"#92999E","body_link_hover_color":"#12ABFF","body_underline":"none","body_hover_underline":"underline","top_menu_color":"#92999E","top_menu_hover_color":"#000000","top_menu_underline":"none","top_menu_hover_underline":"none","main_menu_color":"#92999E","main_menu_hover_color":"#000000","main_menu_underline":"none","main_menu_hover_underline":"none","menu_footer_color":"#92999E","menu_footer_hover_color":"#000000","menu_footer_underline":"none","menu_footer_hover_underline":"none","body_font":"PT Sans Narrow","links_font":"PT Sans Narrow","top_menu_font":"PT Sans Narrow","main_menu_font":"PT Sans Narrow","footer_menu_font":"PT Sans Narrow","h1_font":"PT Sans Narrow","h2_font":"PT Sans Narrow","h3_font":"PT Sans Narrow","h4_font":"PT Sans Narrow","h5_font":"PT Sans Narrow","h6_font":"PT Sans Narrow","twitter":"","facebook":"","flickr":"","linkedin":"","youtube":"","pinterest":"","google":"","dribbble":"","vimeo":"","instagram":"","vk":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'com_akeeba', 'component', 'com_akeeba', '', 1, 1, 1, 0, '{"name":"Akeeba","type":"component","creationDate":"2016-10-28","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2016 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"5.2.4","description":"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.","group":"","filename":"akeeba"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10053, 'mod_custom_facebook_display', 'module', 'mod_custom_facebook_display', '', 0, 1, 1, 0, '{"name":"Custom Facebook Display","type":"module","creationDate":"May 2013","author":"Nick","copyright":"Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.","authorEmail":"info@phpseo.net","authorUrl":"www.phpseo.net","version":"1.0.0","description":"\\n\\n\\t\\t \\n\\n\\t\\t Custom Facebook Display for Joomla 2.5 & 3\\n\\n\\t\\t<br\\/>\\n\\n\\t\\t<p>\\n\\n\\t\\t\\n\\n\\t","group":"","filename":"mod_custom_facebook_display"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10054, 'mod_fblikeboxslider', 'module', 'mod_fblikeboxslider', '', 0, 1, 1, 0, '{"name":" Facebook Like Box Slider","type":"module","creationDate":"June 2014","author":"Shahedur Rahman","copyright":"All rights reserved by JoomExperts.COM.","authorEmail":"shahed@joomexperts.com","authorUrl":"www.joomexperts.com","version":"1.0","description":"Thanks for installing Facebook Like Box Slider","group":"","filename":"mod_fblikeboxslider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10055, 'freeestate', 'template', 'freeestate', '', 0, 1, 1, 0, '{"name":"freeestate","type":"template","creationDate":"Creation Date","author":"Your name","copyright":"Your copyrights","authorEmail":"Your email","authorUrl":"Link to Your website","version":"2.5.0","description":" \\n\\t\\n\\t      <link href=''http:\\/\\/fonts.googleapis.com\\/css?family=Quicksand:400,700,300'' rel=''stylesheet'' type=''text\\/css''>\\n\\t      <br>\\n\\t      <h1 class=\\"temph1\\">The OS Framework<\\/h1>\\n\\t      <h4 class=\\"temph4\\">Beautiful Fast & Light joomla framework<\\/h4>\\n\\t      <p class=\\"text_propery\\">Powerfull admin area allow easy control templeate elements like fonts, logo, colors etc. Fully responsive grid based on Twitter Bootstrap, looking great on all screen sizes and platforms.<\\/p>\\n\\t      <br>\\n\\t      <div id=\\"down_pictures\\"> \\n\\t\\t    <a href=\\"http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\\" onclick=\\"window.open(''http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be'',''OrdaSoft Joomla Template Features'',''width=635,height=610,left=''+(screen.availWidth\\/2-317.5)+'',top=''+(screen.availHeight\\/2-305)+'''');return false;\\" target=\\"_blank\\"><img style=\\"width:400px; height:306px;\\" src=\\"..\\/templates\\/freeestate\\/joomla_template_features_video.jpg\\"\\/><\\/a>\\n\\t\\t    <div style=\\"clear:both;\\"><\\/div>\\n\\t\\t    <div class=\\"sepp_div\\"><\\/div>\\n\\t\\t    <a href=\\"http:\\/\\/ordasoft.com\\/membership-page.html\\" target=\\"_blank\\"><img src=\\"..\\/templates\\/freeestate\\/button_become_member.jpg\\"\\/><\\/a> \\n\\t      <\\/div>\\n\\t\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10056, 'RealEstateManager Featured Free', 'module', 'mod_realestatemanager_featured_free_j3', '', 0, 1, 0, 0, '{"name":"RealEstateManager Featured Free","type":"module","creationDate":"November 2016","author":"Andrey Kvasnevskiy","copyright":"(C) 2016 OrdaSoft - Andrey Kvasnevskiy","authorEmail":"akbet@mail.ru","authorUrl":"www.ordasoft.com","version":"2.3.1 Free","description":"Displays a selected list of categories or choose houses from the component.","group":"","filename":"mod_realestatemanager_featured_free_j3"}', '{"sortnewby":"0","optBedrooms":"0","optCategory":"0","optCity":"0","displaytype":"Vertical","image":"1","image_width":"150","image_height":"150","status":"1","location":"1","categories":"1","features":"1","hits":"1","description":"1","words":"","price":"1","view_listing":"1","count":"5","image_source_type":"0","moduleclass_sfx":"","ItemId":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'Real Estate Manager Location Map Free', 'module', 'mod_realestatemanager_location_map', '', 0, 1, 0, 0, '{"name":"Real Estate Manager Location Map Free","type":"module","creationDate":"September 2016","author":" 2012 Andrey Kvasnevskiy-OrdaSoft(akbet@mail.ru)","copyright":"OrdaSoft 2016","authorEmail":"akbet@ordasoft.com","authorUrl":"","version":"3.8 Free","description":"Location Map module for Real estate manager component.\\n\\t  You can add markers of your estates on the map . You can then load these modules in your content pages using {loadposition position}.","group":"","filename":"mod_realestatemanager_location_map"}', '{"map_width":"400","map_height":"250","menu_map":"1","control_map":"1","new_target":"1","estates":"5","cat_id":"","estate_id":"","moduleclass_sfx":"","ItemId":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'RealEstateManager Search Free', 'module', 'mod_realestatemanagersearch_j3', '', 0, 1, 0, 0, '{"name":"RealEstateManager Search Free","type":"module","creationDate":"Updated on June 2013","author":"Andrey Kvasnevskiy","copyright":"(C) 2012 OrdaSoft ","authorEmail":"akbet@ordasoft.com","authorUrl":"http:\\/\\/www.ordasoft.com","version":"3.1 Free","description":"\\n        Search Pro module for RealEstate Manager component.\\n    ","group":"","filename":"mod_realestatemanagersearch_j3"}', '{"rent":"0","price":"0","listing_status_list":"0","listing_type_list":"0","moduleclass_sfx":"","ItemId":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 'RealEstateManager', 'component', 'com_realestatemanager', '', 1, 1, 0, 0, '{"name":"RealEstateManager","type":"component","creationDate":"November 2016","author":"Rob de Cleen, Andrey Kvasnevskiy","copyright":"ordasoft - Andrey Kvasnevskiy ","authorEmail":"rob@decleen.com; akbet@mail.ru; ","authorUrl":"http:\\/\\/www.ordasoft.com","version":"3.9.3 Free","description":"RealEstateManager - component for sale and rent houses","group":"","filename":"realestatemanager"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_filters`
--

DROP TABLE IF EXISTS `joomla_finder_filters`;
CREATE TABLE `joomla_finder_filters` (
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
-- Tabellenstruktur für Tabelle `joomla_finder_links`
--

DROP TABLE IF EXISTS `joomla_finder_links`;
CREATE TABLE `joomla_finder_links` (
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
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms0`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms0`;
CREATE TABLE `joomla_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms1`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms1`;
CREATE TABLE `joomla_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms2`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms2`;
CREATE TABLE `joomla_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms3`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms3`;
CREATE TABLE `joomla_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms4`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms4`;
CREATE TABLE `joomla_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms5`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms5`;
CREATE TABLE `joomla_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms6`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms6`;
CREATE TABLE `joomla_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms7`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms7`;
CREATE TABLE `joomla_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms8`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms8`;
CREATE TABLE `joomla_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_terms9`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms9`;
CREATE TABLE `joomla_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_termsa`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsa`;
CREATE TABLE `joomla_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_termsb`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsb`;
CREATE TABLE `joomla_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_termsc`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsc`;
CREATE TABLE `joomla_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_termsd`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsd`;
CREATE TABLE `joomla_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_termse`
--

DROP TABLE IF EXISTS `joomla_finder_links_termse`;
CREATE TABLE `joomla_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_links_termsf`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsf`;
CREATE TABLE `joomla_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_taxonomy`
--

DROP TABLE IF EXISTS `joomla_finder_taxonomy`;
CREATE TABLE `joomla_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `joomla_finder_taxonomy`
--

INSERT INTO `joomla_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `joomla_finder_taxonomy_map`;
CREATE TABLE `joomla_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_finder_terms`
--

DROP TABLE IF EXISTS `joomla_finder_terms`;
CREATE TABLE `joomla_finder_terms` (
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
-- Tabellenstruktur für Tabelle `joomla_finder_terms_common`
--

DROP TABLE IF EXISTS `joomla_finder_terms_common`;
CREATE TABLE `joomla_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `joomla_finder_terms_common`
--

INSERT INTO `joomla_finder_terms_common` (`term`, `language`) VALUES
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
('aren''t', 'en'),
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
('isn''t', 'en'),
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
-- Tabellenstruktur für Tabelle `joomla_finder_tokens`
--

DROP TABLE IF EXISTS `joomla_finder_tokens`;
CREATE TABLE `joomla_finder_tokens` (
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
-- Tabellenstruktur für Tabelle `joomla_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `joomla_finder_tokens_aggregate`;
CREATE TABLE `joomla_finder_tokens_aggregate` (
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
-- Tabellenstruktur für Tabelle `joomla_finder_types`
--

DROP TABLE IF EXISTS `joomla_finder_types`;
CREATE TABLE `joomla_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_cron`
--

DROP TABLE IF EXISTS `joomla_jomcomp_cron`;
CREATE TABLE `joomla_jomcomp_cron` (
  `id` int(11) NOT NULL,
  `job` char(100) DEFAULT NULL,
  `schedule` char(2) NOT NULL,
  `last_ran` int(12) NOT NULL,
  `parameters` varchar(255) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomcomp_cron`
--

INSERT INTO `joomla_jomcomp_cron` (`id`, `job`, `schedule`, `last_ran`, `parameters`, `locked`) VALUES
(1, 'error_logs_cleanup', 'D', 1482420046, '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_cronlog`
--

DROP TABLE IF EXISTS `joomla_jomcomp_cronlog`;
CREATE TABLE `joomla_jomcomp_cronlog` (
  `id` int(11) NOT NULL,
  `log_details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_extrasmodels_models`
--

DROP TABLE IF EXISTS `joomla_jomcomp_extrasmodels_models`;
CREATE TABLE `joomla_jomcomp_extrasmodels_models` (
  `id` int(11) NOT NULL,
  `extra_id` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `force` tinyint(1) NOT NULL DEFAULT '0',
  `property_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_mufavourites`
--

DROP TABLE IF EXISTS `joomla_jomcomp_mufavourites`;
CREATE TABLE `joomla_jomcomp_mufavourites` (
  `id` int(11) NOT NULL,
  `my_id` int(11) DEFAULT NULL,
  `property_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_notes`
--

DROP TABLE IF EXISTS `joomla_jomcomp_notes`;
CREATE TABLE `joomla_jomcomp_notes` (
  `id` int(11) NOT NULL,
  `contract_uid` int(11) DEFAULT NULL,
  `note` text,
  `timestamp` datetime DEFAULT NULL,
  `property_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_tarifftypes`
--

DROP TABLE IF EXISTS `joomla_jomcomp_tarifftypes`;
CREATE TABLE `joomla_jomcomp_tarifftypes` (
  `id` int(11) NOT NULL,
  `name` char(255) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `property_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomcomp_tarifftype_rate_xref`
--

DROP TABLE IF EXISTS `joomla_jomcomp_tarifftype_rate_xref`;
CREATE TABLE `joomla_jomcomp_tarifftype_rate_xref` (
  `id` int(11) NOT NULL,
  `tarifftype_id` int(11) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  `roomclass_uid` int(11) NOT NULL,
  `property_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_bookings`
--

DROP TABLE IF EXISTS `joomla_jomresportal_bookings`;
CREATE TABLE `joomla_jomresportal_bookings` (
  `id` int(11) NOT NULL,
  `property_uid` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `affiliate_id` varchar(255) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT '0',
  `booking_total` float DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `archived_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_c_rates`
--

DROP TABLE IF EXISTS `joomla_jomresportal_c_rates`;
CREATE TABLE `joomla_jomresportal_c_rates` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `currencycode` char(3) NOT NULL DEFAULT 'GBP',
  `created` datetime DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `archived_date` datetime DEFAULT NULL,
  `tax_rate` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomresportal_c_rates`
--

INSERT INTO `joomla_jomresportal_c_rates` (`id`, `title`, `type`, `value`, `currencycode`, `created`, `archived`, `archived_date`, `tax_rate`) VALUES
(1, 'default', 2, 10, 'GBP', '2009-05-04 13:07:51', 0, '1970-01-01 00:00:01', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_invoices`
--

DROP TABLE IF EXISTS `joomla_jomresportal_invoices`;
CREATE TABLE `joomla_jomresportal_invoices` (
  `id` int(11) NOT NULL,
  `cms_user_id` int(11) NOT NULL DEFAULT '0',
  `guest_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `raised_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `paid` datetime DEFAULT NULL,
  `subscription` tinyint(1) NOT NULL DEFAULT '0',
  `init_total` float NOT NULL DEFAULT '0',
  `recur_total` float NOT NULL DEFAULT '0',
  `recur_frequency` tinyint(4) NOT NULL DEFAULT '0',
  `recur_dayofmonth` tinyint(4) NOT NULL DEFAULT '1',
  `currencycode` char(3) DEFAULT NULL,
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `contract_id` int(11) DEFAULT NULL,
  `property_uid` int(11) DEFAULT '0',
  `is_commission` int(11) DEFAULT '0',
  `vat_will_be_charged` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_invoices_transactions`
--

DROP TABLE IF EXISTS `joomla_jomresportal_invoices_transactions`;
CREATE TABLE `joomla_jomresportal_invoices_transactions` (
  `id` int(10) NOT NULL,
  `invoice_id` int(10) NOT NULL DEFAULT '0',
  `transaction_id` int(10) NOT NULL DEFAULT '0',
  `time_added` datetime DEFAULT NULL,
  `gateway_id` varchar(20) NOT NULL DEFAULT '',
  `payment_result` text,
  `payment_currency` varchar(20) NOT NULL DEFAULT '',
  `payment_amount` float NOT NULL DEFAULT '0',
  `payment_fees` float NOT NULL DEFAULT '0',
  `payment_ref` varchar(100) NOT NULL DEFAULT '',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_lineitems`
--

DROP TABLE IF EXISTS `joomla_jomresportal_lineitems`;
CREATE TABLE `joomla_jomresportal_lineitems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `init_price` float NOT NULL DEFAULT '0',
  `init_qty` float NOT NULL DEFAULT '0',
  `init_discount` float NOT NULL DEFAULT '0',
  `init_total` float NOT NULL DEFAULT '0',
  `init_total_inclusive` float NOT NULL DEFAULT '0',
  `tax_code` char(10) DEFAULT NULL,
  `tax_description` char(200) DEFAULT NULL,
  `tax_rate` float NOT NULL DEFAULT '0',
  `inv_id` int(11) NOT NULL COMMENT 'Invoice ID',
  `is_payment` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_properties_crates_xref`
--

DROP TABLE IF EXISTS `joomla_jomresportal_properties_crates_xref`;
CREATE TABLE `joomla_jomresportal_properties_crates_xref` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `crate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_sms_clickatell_messages`
--

DROP TABLE IF EXISTS `joomla_jomresportal_sms_clickatell_messages`;
CREATE TABLE `joomla_jomresportal_sms_clickatell_messages` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `number` varchar(25) NOT NULL DEFAULT '',
  `message` varchar(160) NOT NULL DEFAULT '',
  `property_uid` int(10) NOT NULL DEFAULT '0',
  `send_time` datetime DEFAULT NULL,
  `ack` int(3) DEFAULT '0',
  `apiMsgid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_subscriptions`
--

DROP TABLE IF EXISTS `joomla_jomresportal_subscriptions`;
CREATE TABLE `joomla_jomresportal_subscriptions` (
  `id` int(10) NOT NULL,
  `cms_user_id` int(11) NOT NULL DEFAULT '0',
  `package_id` int(11) DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `raised_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `expiration_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `invoice_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_subscriptions_packages`
--

DROP TABLE IF EXISTS `joomla_jomresportal_subscriptions_packages`;
CREATE TABLE `joomla_jomresportal_subscriptions_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `frequency` int(5) DEFAULT '365',
  `full_amount` float DEFAULT NULL,
  `tax_code_id` int(11) NOT NULL DEFAULT '0',
  `currencycode` varchar(3) NOT NULL DEFAULT 'GBP',
  `renewal_price` float DEFAULT NULL,
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_taxrates`
--

DROP TABLE IF EXISTS `joomla_jomresportal_taxrates`;
CREATE TABLE `joomla_jomresportal_taxrates` (
  `id` int(11) NOT NULL,
  `code` char(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `is_eu_country` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomresportal_taxrates`
--

INSERT INTO `joomla_jomresportal_taxrates` (`id`, `code`, `description`, `rate`, `is_eu_country`) VALUES
(1, '01', 'VAT', 20, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomresportal_users`
--

DROP TABLE IF EXISTS `joomla_jomresportal_users`;
CREATE TABLE `joomla_jomresportal_users` (
  `id` int(11) NOT NULL,
  `manager_uid` int(11) DEFAULT NULL,
  `jos_id` int(11) DEFAULT NULL,
  `portal_booking_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_access_control`
--

DROP TABLE IF EXISTS `joomla_jomres_access_control`;
CREATE TABLE `joomla_jomres_access_control` (
  `id` int(11) NOT NULL,
  `scriptname` varchar(255) DEFAULT NULL,
  `access_level` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_audit`
--

DROP TABLE IF EXISTS `joomla_jomres_audit`;
CREATE TABLE `joomla_jomres_audit` (
  `uid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `op` varchar(100) DEFAULT NULL,
  `args` text,
  `property_uid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_audit_archive`
--

DROP TABLE IF EXISTS `joomla_jomres_audit_archive`;
CREATE TABLE `joomla_jomres_audit_archive` (
  `uid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `op` varchar(100) DEFAULT NULL,
  `args` text,
  `property_uid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_booking_data_archive`
--

DROP TABLE IF EXISTS `joomla_jomres_booking_data_archive`;
CREATE TABLE `joomla_jomres_booking_data_archive` (
  `id` int(11) NOT NULL,
  `data` text,
  `date` datetime DEFAULT NULL,
  `contract_uid` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_contracts`
--

DROP TABLE IF EXISTS `joomla_jomres_contracts`;
CREATE TABLE `joomla_jomres_contracts` (
  `contract_uid` int(11) NOT NULL,
  `arrival` char(10) DEFAULT NULL,
  `departure` char(10) DEFAULT NULL,
  `rates_uid` int(11) DEFAULT NULL,
  `guest_uid` int(11) DEFAULT NULL,
  `rate_rules` text,
  `rooms_tariffs` varchar(255) DEFAULT NULL,
  `deposit_paid` tinyint(1) DEFAULT NULL,
  `contract_total` double DEFAULT '0',
  `deposit_ref` text,
  `payment_ref` text,
  `special_reqs` text,
  `deposit_required` text,
  `newsletters` tinyint(1) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `date_range_string` text,
  `booked_in` tinyint(4) NOT NULL DEFAULT '0',
  `booked_out` tinyint(4) NOT NULL DEFAULT '0',
  `true_arrival` varchar(10) DEFAULT NULL,
  `property_uid` int(11) DEFAULT NULL,
  `cot_required` tinyint(4) NOT NULL DEFAULT '0',
  `single_person_suppliment` varchar(11) DEFAULT '0',
  `multi_room_booking` tinyint(4) NOT NULL DEFAULT '0',
  `extras` text,
  `extrasquantities` varchar(255) DEFAULT NULL,
  `extrasvalue` double DEFAULT NULL,
  `tax` double(11,2) NOT NULL DEFAULT '0.00',
  `tag` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `room_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `cancelled` tinyint(4) NOT NULL DEFAULT '0',
  `cancelled_timestamp` datetime DEFAULT NULL,
  `cancelled_reason` char(255) DEFAULT NULL,
  `discount_details` text,
  `username` varchar(50) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `bookedout` tinyint(1) NOT NULL DEFAULT '0',
  `bookedout_timestamp` datetime DEFAULT NULL,
  `invoice_uid` int(11) DEFAULT NULL,
  `channel_manager_booking` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `booking_data_archive_id` int(11) NOT NULL DEFAULT '0',
  `secret_key` char(100) DEFAULT NULL,
  `secret_key_used` tinyint(4) NOT NULL DEFAULT '0',
  `booking_language` char(5) NOT NULL DEFAULT 'en-GB',
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `referrer` varchar(255) DEFAULT 'Jomres'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_countries`
--

DROP TABLE IF EXISTS `joomla_jomres_countries`;
CREATE TABLE `joomla_jomres_countries` (
  `id` int(11) NOT NULL,
  `countrycode` varchar(2) DEFAULT NULL,
  `countryname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_countries`
--

INSERT INTO `joomla_jomres_countries` (`id`, `countrycode`, `countryname`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'Am. Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'IO', 'B. Ind. Oc. Tr.'),
(17, 'BS', 'Bahamas'),
(18, 'BH', 'Bahrain'),
(19, 'BD', 'Bangladesh'),
(20, 'BB', 'Barbados'),
(21, 'BY', 'Belarus'),
(22, 'BE', 'Belgium'),
(23, 'BZ', 'Belize'),
(24, 'BJ', 'Benin'),
(25, 'BM', 'Bermuda'),
(26, 'BT', 'Bhutan'),
(27, 'BO', 'Bolivia'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(29, 'BA', 'Bosnia Herz'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Is.'),
(32, 'BR', 'Brazil'),
(33, 'BN', 'Brunei'),
(34, 'BG', 'Bulgaria'),
(35, 'BF', 'Burkina Faso'),
(36, 'BI', 'Burundi'),
(37, 'KH', 'Cambodia'),
(38, 'CM', 'Cameroon'),
(39, 'CA', 'Canada'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Is.'),
(42, 'CF', 'Central Af. R.'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Is.'),
(47, 'CC', 'Cocos  Is.'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CD', 'Congo D. R.'),
(52, 'CK', 'Cook Is.'),
(53, 'CR', 'Costa Rica'),
(54, 'CI', 'Cote D&#39;Ivoire'),
(55, 'HR', 'Croatia'),
(56, 'CU', 'Cuba'),
(57, 'CW', 'Curaçao'),
(58, 'CY', 'Cyprus'),
(59, 'CZ', 'Czech R.ublic'),
(60, 'DK', 'Denmark'),
(61, 'DJ', 'Djibouti'),
(62, 'DM', 'Dominica'),
(63, 'DO', 'Dominican R.'),
(64, 'TP', 'East Timor'),
(65, 'EC', 'Ecuador'),
(66, 'EG', 'Egypt'),
(67, 'SV', 'El Salvador'),
(68, 'GQ', 'Eq. Guinea'),
(69, 'ER', 'Eritrea'),
(70, 'EE', 'Estonia'),
(71, 'ET', 'Ethiopia'),
(72, 'FK', 'Falkland Is.'),
(73, 'FO', 'Faroe Is.'),
(74, 'FJ', 'Fiji'),
(75, 'FI', 'Finland'),
(76, 'GF', 'Fr. Guiana'),
(77, 'PF', 'Fr. Polynesia'),
(78, 'TF', 'Fr. S. Tr.'),
(79, 'FR', 'France'),
(80, 'FX', 'France, Metro.'),
(81, 'GA', 'Gabon'),
(82, 'GM', 'Gambia'),
(83, 'GE', 'Georgia'),
(84, 'DE', 'Germany'),
(85, 'GH', 'Ghana'),
(86, 'GI', 'Gibraltar'),
(87, 'GR', 'Greece'),
(88, 'GL', 'Greenland'),
(89, 'GD', 'Grenada'),
(90, 'GP', 'Guadeloupe'),
(91, 'GU', 'Guam'),
(92, 'GT', 'Guatemala'),
(93, 'GN', 'Guinea'),
(94, 'GW', 'Guinea-Bissau'),
(95, 'GY', 'Guyana'),
(96, 'HT', 'Haiti'),
(97, 'HM', 'Heard Is.'),
(98, 'HN', 'Honduras'),
(99, 'HK', 'Hong Kong'),
(100, 'HU', 'Hungary'),
(101, 'IS', 'Iceland'),
(102, 'IN', 'India'),
(103, 'ID', 'Indonesia'),
(104, 'IR', 'Iran'),
(105, 'IQ', 'Iraq'),
(106, 'IE', 'Ireland'),
(107, 'IL', 'Israel'),
(108, 'IT', 'Italy'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, D. R.'),
(116, 'KR', 'Korea, R.'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao P.D. R.'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan A. J.'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Is.'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'YT', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia'),
(143, 'MD', 'Moldova'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'MP', 'N. Mariana Is.'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'AN', 'Neth. Ant.'),
(155, 'NL', 'Netherlands'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Is.'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PS', 'Palestinian Tr.'),
(168, 'PA', 'Panama'),
(169, 'PG', 'Pap. N. Guinea'),
(170, 'PY', 'Paraguay'),
(171, 'PE', 'Peru'),
(172, 'PH', 'Philippines'),
(173, 'PN', 'Pitcairn'),
(174, 'PL', 'Poland'),
(175, 'PT', 'Portugal'),
(176, 'PR', 'Puerto Rico'),
(177, 'QA', 'Qatar'),
(178, 'RE', 'Reunion'),
(179, 'RO', 'Romania'),
(180, 'RU', 'Russian Fed.'),
(181, 'RW', 'Rwanda'),
(182, 'ZA', 'S. Africa'),
(183, 'GS', 'S. Georgia'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Is.'),
(196, 'SO', 'Somalia'),
(197, 'ES', 'Spain'),
(198, 'LK', 'Sri Lanka'),
(199, 'SH', 'St. Helena'),
(200, 'KN', 'St. Kitts and Nevis'),
(201, 'LC', 'St. Lucia'),
(202, 'PM', 'St. Pierre'),
(203, 'VC', 'St. Vincent'),
(204, 'SD', 'Sudan'),
(205, 'SR', 'Suriname'),
(206, 'SJ', 'Svalbard JM'),
(207, 'SZ', 'Swaziland'),
(208, 'SE', 'Sweden'),
(209, 'CH', 'Switzerland'),
(210, 'SY', 'Syria'),
(211, 'TW', 'Taiwan'),
(212, 'TJ', 'Tajikistan'),
(213, 'TZ', 'Tanzania'),
(214, 'TH', 'Thailand'),
(215, 'TG', 'Togo'),
(216, 'TK', 'Tokelau'),
(217, 'TO', 'Tonga'),
(218, 'TT', 'Trinidad Tob.'),
(219, 'TN', 'Tunisia'),
(220, 'TR', 'Turkey'),
(221, 'TM', 'Turkmenistan'),
(222, 'TC', 'Turks Caicos Is.'),
(223, 'TV', 'Tuvalu'),
(224, 'UM', 'U. States Out. Is.'),
(225, 'UG', 'Uganda'),
(226, 'UA', 'Ukraine'),
(227, 'AE', 'United A. Emir.'),
(228, 'GB', 'United Kingdom'),
(229, 'US', 'United States'),
(230, 'UY', 'Uruguay'),
(231, 'UZ', 'Uzbekistan'),
(232, 'VU', 'Vanuatu'),
(233, 'VA', 'Vatican City'),
(234, 'VE', 'Venezuela'),
(235, 'VN', 'Vietnam'),
(236, 'VG', 'Virgin Is., British'),
(237, 'VI', 'Virgin Is., U.S.'),
(238, 'EH', 'W. Sahara'),
(239, 'WF', 'Wallis'),
(240, 'YE', 'Yemen'),
(241, 'ZR', 'Zaire'),
(242, 'ZM', 'Zambia'),
(243, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_coupons`
--

DROP TABLE IF EXISTS `joomla_jomres_coupons`;
CREATE TABLE `joomla_jomres_coupons` (
  `coupon_id` int(11) NOT NULL,
  `property_uid` int(11) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `is_percentage` tinyint(1) DEFAULT NULL,
  `rooms_only` tinyint(1) DEFAULT NULL,
  `booking_valid_from` date DEFAULT NULL,
  `booking_valid_to` date DEFAULT NULL,
  `guest_uid` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_customertypes`
--

DROP TABLE IF EXISTS `joomla_jomres_customertypes`;
CREATE TABLE `joomla_jomres_customertypes` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `maximum` varchar(255) DEFAULT NULL,
  `is_percentage` int(11) NOT NULL DEFAULT '0',
  `posneg` int(11) NOT NULL DEFAULT '0',
  `variance` double DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `property_uid` varchar(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `is_child` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_custom_fields`
--

DROP TABLE IF EXISTS `joomla_jomres_custom_fields`;
CREATE TABLE `joomla_jomres_custom_fields` (
  `uid` int(11) NOT NULL,
  `fieldname` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `ptype_xref` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_custom_templates`
--

DROP TABLE IF EXISTS `joomla_jomres_custom_templates`;
CREATE TABLE `joomla_jomres_custom_templates` (
  `uid` int(11) NOT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `value` text,
  `ptype_id` int(11) NOT NULL DEFAULT '0',
  `last_edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_custom_text`
--

DROP TABLE IF EXISTS `joomla_jomres_custom_text`;
CREATE TABLE `joomla_jomres_custom_text` (
  `uid` int(11) NOT NULL,
  `constant` varchar(255) DEFAULT NULL,
  `customtext` text,
  `property_uid` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `reserved` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_extras`
--

DROP TABLE IF EXISTS `joomla_jomres_extras`;
CREATE TABLE `joomla_jomres_extras` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` text,
  `price` double DEFAULT '0',
  `auto_select` int(11) DEFAULT '0',
  `tax_rate` int(11) DEFAULT '0',
  `maxquantity` int(5) DEFAULT '1',
  `chargabledaily` tinyint(1) DEFAULT '0',
  `published` tinyint(4) DEFAULT '1',
  `property_uid` varchar(11) DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL,
  `include_in_property_lists` tinyint(1) NOT NULL DEFAULT '1',
  `limited_to_room_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_extraservices`
--

DROP TABLE IF EXISTS `joomla_jomres_extraservices`;
CREATE TABLE `joomla_jomres_extraservices` (
  `extraservice_uid` int(11) NOT NULL,
  `service_description` varchar(255) DEFAULT NULL,
  `service_value` varchar(255) DEFAULT NULL,
  `contract_uid` varchar(11) DEFAULT NULL,
  `property_uid` varchar(11) DEFAULT NULL,
  `tax_rate_val` char(10) DEFAULT '0',
  `tax_code` char(10) DEFAULT '0',
  `service_qty` float NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_guests`
--

DROP TABLE IF EXISTS `joomla_jomres_guests`;
CREATE TABLE `joomla_jomres_guests` (
  `guests_uid` int(11) NOT NULL,
  `contracts_contract_uid` text,
  `mos_userid` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `tel_landline` varchar(255) DEFAULT NULL,
  `tel_mobile` varchar(255) DEFAULT NULL,
  `tel_fax` varchar(255) DEFAULT NULL,
  `preferences` text,
  `car_regno` varchar(20) DEFAULT NULL,
  `ccard_no` blob,
  `ccard_issued` blob,
  `ccard_expiry` blob,
  `ccard_iss_no` blob,
  `ccard_name` blob,
  `ccv` blob,
  `type` blob,
  `property_uid` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `discount` int(2) NOT NULL DEFAULT '0',
  `vat_number` char(25) NOT NULL DEFAULT '',
  `vat_number_validated` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number_validation_response` text,
  `partner_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_guests`
--

INSERT INTO `joomla_jomres_guests` (`guests_uid`, `contracts_contract_uid`, `mos_userid`, `firstname`, `surname`, `house`, `street`, `town`, `county`, `country`, `postcode`, `tel_landline`, `tel_mobile`, `tel_fax`, `preferences`, `car_regno`, `ccard_no`, `ccard_issued`, `ccard_expiry`, `ccard_iss_no`, `ccard_name`, `ccv`, `type`, `property_uid`, `email`, `discount`, `vat_number`, `vat_number_validated`, `vat_number_validation_response`, `partner_id`) VALUES
(1, '0', NULL, 'Major', 'Gowen', 'Watery Fowls', 'a Street', 'a Region', 'a Town', NULL, 'XXNN NXX', '01000 123456', '01777 123456', '01000 654321', 'A newspaper with uptodate cricket scores', '', '', '', '', '', '', NULL, NULL, '1', 'example@example.com', 0, '', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_guest_profile`
--

DROP TABLE IF EXISTS `joomla_jomres_guest_profile`;
CREATE TABLE `joomla_jomres_guest_profile` (
  `id` int(11) NOT NULL,
  `cms_user_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `tel_landline` varchar(255) DEFAULT NULL,
  `tel_mobile` varchar(255) DEFAULT NULL,
  `tel_fax` varchar(255) DEFAULT NULL,
  `preferences` text,
  `car_regno` varchar(20) DEFAULT NULL,
  `ccard_no` blob,
  `ccard_issued` blob,
  `ccard_expiry` blob,
  `ccard_iss_no` blob,
  `ccard_name` blob,
  `ccv` blob,
  `type` blob,
  `email` varchar(100) DEFAULT NULL,
  `vat_number` char(25) NOT NULL DEFAULT '',
  `vat_number_validated` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number_validation_response` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_hotel_features`
--

DROP TABLE IF EXISTS `joomla_jomres_hotel_features`;
CREATE TABLE `joomla_jomres_hotel_features` (
  `hotel_features_uid` int(11) NOT NULL,
  `hotel_feature_abbv` varchar(20) DEFAULT NULL,
  `hotel_feature_full_desc` text,
  `image` text,
  `property_uid` varchar(11) DEFAULT NULL,
  `ptype_xref` text,
  `cat_id` varchar(244) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_hotel_features`
--

INSERT INTO `joomla_jomres_hotel_features` (`hotel_features_uid`, `hotel_feature_abbv`, `hotel_feature_full_desc`, `image`, `property_uid`, `ptype_xref`, `cat_id`) VALUES
(3, 'Airport', 'Close to the airport', 'airport_nearby.png', '0', '0', '0'),
(4, 'Minibar', 'Minibar in room', 'air_conditioning.png', '0', '1', '0'),
(6, 'Family Friendly', 'Children Welcome', 'baby_friendly.png', '0', '1', '0'),
(7, 'Balcony', 'Some rooms have balconies', 'balcony.png', '0', '1', '0'),
(8, 'Waiter', 'Waiter Service', 'bar.png', '0', '1', '0'),
(9, 'Bar', 'Licensed bar on premises', 'bar2.png', '0', '1', '0'),
(10, 'Bath', 'Bath in every room', 'bath_tub.png', '0', '1', '0'),
(11, 'Fireplace', 'Enjoy the ambiance of a natural fire', 'bbq_facilities.png', '0', '1', '0'),
(12, 'Beach', 'Close to the beach', 'beach.png', '0', '0', '0'),
(13, 'Birdwatching', 'Bird hide onsite or nearby', 'bird_hide.png', '0', '0', '0'),
(15, 'Campfires', 'Campfires allowed', 'campfire.png', '0', '4', '0'),
(17, 'Canoeing', 'Canoeing/Kayaking', 'canoeing.png', '0', '0', '0'),
(18, 'Caravans', 'Caravanning facilities', 'caravan.png', '0', '4', '0'),
(20, 'Casino', 'Casino on premesis', 'casino.png', '0', '1', '0'),
(21, 'Clubbing', 'Nightclub onsite or nearby', 'CDplayer.png', '0', '1', '0'),
(22, 'Safe', 'Safe available', 'hotel_safe.png', '0', '1', '0'),
(23, 'Conference', 'Conference facilities', 'conference_facilities.png', '0', '1', '0'),
(24, 'Cycle path', 'Cycle paths nearby', 'cycle_paths.png', '0', '0', '0'),
(25, 'Disabled access', 'Disabled facilites available', 'disabled_access.png', '0', '1', '0'),
(26, 'Disabled toilet faci', 'Disabled WC available', 'disabled_facilities.png', '0', '0', '0'),
(27, 'No dogs', 'Dogs not welcome', 'dogs_not_permitted.png', '0', '0', '0'),
(28, 'Dogs welcome', 'Dog friendly ', 'dogs_permitted.png', '0', '0', '0'),
(29, 'DVD', 'Rooms have DVD players', 'DVDVideo.png', '0', '1', '0'),
(30, 'Elevator', 'Elevator', 'elevator.png', '0', '1', '0'),
(32, '24hr service', '24hr Room service', '24hour.png', '0', '1', '0'),
(33, 'Bureau de change', 'Bureau de change available onsite', 'fees.png', '0', '1', '0'),
(34, 'Bureau de change', 'Bureau de change available onsite', 'fees_euro.png', '0', '1', '0'),
(35, 'Bureau de change', 'Bureau de change available onsite', 'fees_pound.png', '0', '1', '0'),
(36, 'Fishing', 'Fishing available onsite or nearby', 'fishing.png', '0', '0', '0'),
(37, 'Gourmet Restaurant', 'Gourmet Restraunt onsite', 'gastronomicrestaurant.png', '0', '1', '0'),
(38, 'Golf', 'Golf course on site or nearby', 'golf.png', '0', '0', '0'),
(39, 'Tours', 'Tours depart from this location', 'guided_tours.png', '0', '0', '0'),
(40, 'Gym', 'Gymnasium onsite', 'gym2.png', '0', '1', '0'),
(41, 'Hairdresser', 'Hairdresser onsite', 'hairdresser.png', '0', '1', '0'),
(42, 'Hairdryer', 'Hair dryer in every room', 'hairdryer.png', '0', '1', '0'),
(44, 'Helipad', 'Helicopter pad', 'helicopterpad.png', '0', '1', '0'),
(45, 'Hiking', 'Popular hiking area', 'hiking.png', '0', '0', '0'),
(46, 'Information', 'Information services available onsite', 'info2.png', '0', '0', '0'),
(47, 'WWW', 'Internet access available', 'internet.png', '0', '1', '0'),
(48, 'Beverages', 'Beverages in all rooms', 'in_room_teacoffee.png', '0', '1', '0'),
(49, 'Iron', 'Iron in every room', 'iron.png', '0', '1', '0'),
(50, 'Jacuzzi', 'Jacuzzi onsite', 'jacuzzi.png', '0', '1', '0'),
(52, 'No smoking', 'Smoke free establishment', 'no_smoking.png', '0', '0', '0'),
(53, 'Owner managed', 'Owner managed property', 'Ownermanaged.png', '0', '0', '0'),
(54, 'Parking', 'Parking available', 'parking.png', '0', '1', '0'),
(55, 'Pets welcome', 'Pet friendly', 'pets_welcome.png', '0', '0', '0'),
(56, 'Picnic area', 'Picnicers welcome', 'picnic_area.png', '0', '0', '0'),
(58, 'Pool', 'Swiming', 'pool.png', '0', '0', '0'),
(60, 'Ranger', 'Ranger station here', 'ranger.png', '0', '0', '0'),
(61, 'Restaurant', 'Restraunt onsite', 'restraunt2.png', '0', '1', '0'),
(64, 'Water sports', 'Water sport facilities onsite or nearby', 'sailing.png', '0', '0', '0'),
(65, 'Scuba', 'Scuba diving arranged', 'scuba.png', '0', '0', '0'),
(67, 'Showers', 'showers in every room', 'shower_only.png', '0', '1', '0'),
(68, 'Shuttle', 'Shuttle service to airport and nightclub district available', 'shuttle_service.png', '0', '1', '0'),
(69, 'Winter Sports', 'Winter Sports facilities available', 'Skionsite.png', '0', '1', '0'),
(70, 'Smoking', 'Smokers welcome', 'smokers_welcome.png', '0', '0', '0'),
(71, 'Snorkelling', 'Snorkelling suitable here', 'snorkelling.png', '0', '0', '0'),
(73, 'Tennis courts', 'Tennis court onsite or nearby', 'tennis.png', '0', '0', '0'),
(74, 'Television', 'Television in every room', 'tv_in_room.png', '0', '1', '0'),
(75, 'Weddings', 'Weddings catered for', 'weddings.png', '0', '1', '0'),
(76, 'Whales', 'Whale watching', 'whalewatching.png', '0', '0', '0'),
(77, 'Wifi', 'Wifi available', 'wifi.png', '0', '1', '0'),
(78, 'Christmas', 'Christmas parties catered for', 'xmas_partys.png', '0', '1', '0'),
(79, 'Zodiac Excursions', 'Zodiac excursions can be arranged from these premesis', 'zodiacexcursions.png', '0', '0', '0'),
(80, 'Private Garden', 'Private garden for your enjoyment', 'garden.png', '0', '0', '0'),
(81, 'Microwave', 'Property has a microwave that can be used by the residents', 'microwaves.png', '0', '1', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_hotel_features_categories`
--

DROP TABLE IF EXISTS `joomla_jomres_hotel_features_categories`;
CREATE TABLE `joomla_jomres_hotel_features_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_hotel_features_categories`
--

INSERT INTO `joomla_jomres_hotel_features_categories` (`id`, `title`) VALUES
(1, 'Activities'),
(2, 'Amenities'),
(3, 'Accessibility'),
(4, 'Views'),
(5, 'Living Area'),
(6, 'Media & Technology'),
(7, 'Food & Drink'),
(8, 'Parking'),
(9, 'Services'),
(10, 'Bathroom');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_invoice_payment_ref`
--

DROP TABLE IF EXISTS `joomla_jomres_invoice_payment_ref`;
CREATE TABLE `joomla_jomres_invoice_payment_ref` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `gateway` char(255) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_managers`
--

DROP TABLE IF EXISTS `joomla_jomres_managers`;
CREATE TABLE `joomla_jomres_managers` (
  `manager_uid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `property_uid` int(11) DEFAULT NULL,
  `access_level` int(2) DEFAULT NULL,
  `currentproperty` int(11) NOT NULL DEFAULT '0',
  `pu` int(1) DEFAULT '0',
  `apikey` char(255) DEFAULT NULL,
  `suspended` tinyint(1) DEFAULT '0',
  `simple_configuration` tinyint(1) DEFAULT '1',
  `users_timezone` char(100) DEFAULT 'Europe/Berlin',
  `last_active` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_managers`
--

INSERT INTO `joomla_jomres_managers` (`manager_uid`, `userid`, `username`, `property_uid`, `access_level`, `currentproperty`, `pu`, `apikey`, `suspended`, `simple_configuration`, `users_timezone`, `last_active`) VALUES
(1, 513, 'admin', 0, 2, 1, 1, NULL, 0, 1, 'Europe/Berlin', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_managers_propertys_xref`
--

DROP TABLE IF EXISTS `joomla_jomres_managers_propertys_xref`;
CREATE TABLE `joomla_jomres_managers_propertys_xref` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `property_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_partners`
--

DROP TABLE IF EXISTS `joomla_jomres_partners`;
CREATE TABLE `joomla_jomres_partners` (
  `id` int(11) NOT NULL,
  `cms_userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_partners_discounts`
--

DROP TABLE IF EXISTS `joomla_jomres_partners_discounts`;
CREATE TABLE `joomla_jomres_partners_discounts` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `discount` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_partner_bookings`
--

DROP TABLE IF EXISTS `joomla_jomres_partner_bookings`;
CREATE TABLE `joomla_jomres_partner_bookings` (
  `id` int(11) NOT NULL,
  `contract_uid` int(11) NOT NULL DEFAULT '0',
  `partner_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_pcounter`
--

DROP TABLE IF EXISTS `joomla_jomres_pcounter`;
CREATE TABLE `joomla_jomres_pcounter` (
  `count` int(11) DEFAULT NULL,
  `p_uid` int(11) NOT NULL,
  `p_view` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_pcounter`
--

INSERT INTO `joomla_jomres_pcounter` (`count`, `p_uid`, `p_view`) VALUES
(1, 1, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_pluginsettings`
--

DROP TABLE IF EXISTS `joomla_jomres_pluginsettings`;
CREATE TABLE `joomla_jomres_pluginsettings` (
  `id` int(11) NOT NULL,
  `prid` int(11) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `setting` text,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_pluginsettings`
--

INSERT INTO `joomla_jomres_pluginsettings` (`id`, `prid`, `plugin`, `setting`, `value`) VALUES
(1, 0, 'jomcompcronjobs', 'method', 'Minicomponent'),
(2, 0, 'jomcompcronjobs', 'displaylogging', '0'),
(3, 0, 'jomcompcronjobs', 'logging', '0'),
(4, 0, 'jomcompcronjobs', 'verbose', '0'),
(5, 0, 'backend_paypal_settings', 'usesandbox', '1'),
(6, 0, 'backend_paypal_settings', 'currencycode', 'EUR'),
(7, 0, 'backend_paypal_settings', 'email', ''),
(8, 0, 'backend_paypal_settings', 'override', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_propertys`
--

DROP TABLE IF EXISTS `joomla_jomres_propertys`;
CREATE TABLE `joomla_jomres_propertys` (
  `propertys_uid` int(11) NOT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `property_street` varchar(255) DEFAULT NULL,
  `property_town` varchar(255) DEFAULT NULL,
  `property_region` varchar(255) DEFAULT NULL,
  `property_country` varchar(255) DEFAULT NULL,
  `property_postcode` varchar(20) DEFAULT NULL,
  `property_tel` varchar(255) DEFAULT NULL,
  `property_fax` varchar(255) DEFAULT NULL,
  `property_email` varchar(255) DEFAULT NULL,
  `property_features` varchar(255) DEFAULT NULL,
  `property_mappinglink` text,
  `property_description` text,
  `property_checkin_times` text,
  `property_area_activities` text,
  `property_driving_directions` text,
  `property_airports` text,
  `property_othertransport` text,
  `property_policies_disclaimers` text,
  `property_key` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `stars` int(11) DEFAULT NULL,
  `superior` tinyint(1) NOT NULL DEFAULT '0',
  `ptype_id` int(11) NOT NULL DEFAULT '0',
  `apikey` char(255) DEFAULT NULL,
  `lat` varchar(12) DEFAULT NULL,
  `long` varchar(12) DEFAULT NULL,
  `metatitle` varchar(150) DEFAULT NULL,
  `metadescription` varchar(150) DEFAULT NULL,
  `metakeywords` text,
  `timestamp` datetime DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `property_site_id` varchar(255) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `permit_number` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_propertys`
--

INSERT INTO `joomla_jomres_propertys` (`propertys_uid`, `property_name`, `property_street`, `property_town`, `property_region`, `property_country`, `property_postcode`, `property_tel`, `property_fax`, `property_email`, `property_features`, `property_mappinglink`, `property_description`, `property_checkin_times`, `property_area_activities`, `property_driving_directions`, `property_airports`, `property_othertransport`, `property_policies_disclaimers`, `property_key`, `published`, `stars`, `superior`, `ptype_id`, `apikey`, `lat`, `long`, `metatitle`, `metadescription`, `metakeywords`, `timestamp`, `approved`, `property_site_id`, `last_changed`, `permit_number`) VALUES
(1, 'Hotel Valle', 'Asheldon Rd', 'Torquay', 'Devon', 'GB', 'TQ1 2QS', '01000 123456', '01000 654321', '', '3,4,6,7,8,9,10,11,12', 'http://www.map24.com', 'My property description', 'Any time from 2pm onwards', 'Surfing, rock climbing, fishing & lazing in the sun.', 'Second star to the right and straight on till morning.', 'None for miles and miles and miles.', 'Local buses once a day, taxis and if you''re lucky a donkey.', 'Requests for bed type and smoking preferences will be submitted to the hotel but are not guaranteed.', NULL, 1, 1, 3, 1, NULL, '51.5006800', '-0.1431700', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-22 20:06:22', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_ptypes`
--

DROP TABLE IF EXISTS `joomla_jomres_ptypes`;
CREATE TABLE `joomla_jomres_ptypes` (
  `id` int(11) NOT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `ptype_desc` varchar(255) DEFAULT NULL,
  `published` tinyint(4) DEFAULT '1',
  `order` int(11) DEFAULT '0',
  `mrp_srp_flag` tinyint(4) DEFAULT '2',
  `marker` varchar(255) DEFAULT 'free-map-marker-icon-red.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_ptypes`
--

INSERT INTO `joomla_jomres_ptypes` (`id`, `ptype`, `ptype_desc`, `published`, `order`, `mrp_srp_flag`, `marker`) VALUES
(1, 'Hotel', 'propertyrental', 1, 0, 0, 'free-map-marker-icon-red.png'),
(2, 'Yacht', 'yacht', 1, 0, 1, 'free-map-marker-icon-red.png'),
(3, 'Car', 'car', 1, 0, 1, 'free-map-marker-icon-red.png'),
(4, 'Camp Site', 'campsite', 1, 0, 0, 'free-map-marker-icon-red.png'),
(5, 'Bed and Breakfast', 'propertyrental', 1, 0, 0, 'free-map-marker-icon-red.png'),
(6, 'Villa', 'propertyrental', 1, 0, 1, 'free-map-marker-icon-red.png'),
(7, 'Apartment', 'propertyrental', 1, 0, 1, 'free-map-marker-icon-red.png'),
(8, 'Cottage', 'propertyrental', 1, 0, 1, 'free-map-marker-icon-red.png'),
(9, 'Tour', 'tour', 1, 0, 3, 'free-map-marker-icon-red.png'),
(10, 'For Sale', 'realestate', 1, 0, 4, 'free-map-marker-icon-red.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_rates`
--

DROP TABLE IF EXISTS `joomla_jomres_rates`;
CREATE TABLE `joomla_jomres_rates` (
  `rates_uid` int(11) NOT NULL,
  `rate_title` varchar(255) DEFAULT NULL,
  `rate_description` text,
  `validfrom` varchar(10) DEFAULT NULL,
  `validto` varchar(10) DEFAULT NULL,
  `roomrateperday` double DEFAULT '0',
  `mindays` int(11) DEFAULT NULL,
  `maxdays` int(11) DEFAULT NULL,
  `minpeople` int(11) DEFAULT NULL,
  `maxpeople` int(11) DEFAULT NULL,
  `roomclass_uid` varchar(10) DEFAULT NULL,
  `ignore_pppn` tinyint(1) DEFAULT NULL,
  `allow_ph` tinyint(1) NOT NULL DEFAULT '1',
  `allow_we` tinyint(1) NOT NULL DEFAULT '1',
  `weekendonly` tinyint(1) NOT NULL DEFAULT '0',
  `validfrom_ts` date DEFAULT NULL,
  `validto_ts` date DEFAULT NULL,
  `dayofweek` int(1) NOT NULL DEFAULT '7',
  `minrooms_alreadyselected` int(3) NOT NULL DEFAULT '0',
  `maxrooms_alreadyselected` int(3) NOT NULL DEFAULT '100',
  `property_uid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_rates`
--

INSERT INTO `joomla_jomres_rates` (`rates_uid`, `rate_title`, `rate_description`, `validfrom`, `validto`, `roomrateperday`, `mindays`, `maxdays`, `minpeople`, `maxpeople`, `roomclass_uid`, `ignore_pppn`, `allow_ph`, `allow_we`, `weekendonly`, `validfrom_ts`, `validto_ts`, `dayofweek`, `minrooms_alreadyselected`, `maxrooms_alreadyselected`, `property_uid`) VALUES
(5, NULL, 'Double rooms', '2014/04/28', '2024/04/28', 110, 1, 1000, 1, 4, '3', 0, 1, 1, 0, NULL, NULL, 7, 0, 100, '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_regions`
--

DROP TABLE IF EXISTS `joomla_jomres_regions`;
CREATE TABLE `joomla_jomres_regions` (
  `id` int(11) NOT NULL,
  `countrycode` varchar(2) DEFAULT NULL,
  `regionname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_regions`
--

INSERT INTO `joomla_jomres_regions` (`id`, `countrycode`, `regionname`) VALUES
(1, 'AD', 'Canillo'),
(2, 'AD', 'Encamp'),
(3, 'AD', 'La Massana'),
(4, 'AD', 'Ordino'),
(5, 'AD', 'Sant Julia de Loria'),
(6, 'AD', 'Andorra la Vella'),
(7, 'AD', 'Escaldes-Engordany'),
(8, 'AE', 'Abu Dhabi'),
(9, 'AE', 'Dubai'),
(10, 'AE', 'Ajman'),
(11, 'AE', 'Fujairah'),
(12, 'AE', 'Ras al-Khaimah'),
(13, 'AE', 'Sharjah'),
(14, 'AE', 'Umm al-Quwain'),
(15, 'AF', 'Badakhshan'),
(16, 'AF', 'Badghis'),
(17, 'AF', 'Baghlan'),
(18, 'AF', 'Bamian'),
(19, 'AF', 'Farah'),
(20, 'AF', 'Faryab'),
(21, 'AF', 'Ghazni'),
(22, 'AF', 'Ghowr'),
(23, 'AF', 'Helmand'),
(24, 'AF', 'Herat'),
(25, 'AF', 'Kabol'),
(26, 'AF', 'Kapisa'),
(27, 'AF', 'Konar'),
(28, 'AF', 'Laghman'),
(29, 'AF', 'Lowgar'),
(30, 'AF', 'Nangarhar'),
(31, 'AF', 'Nimruz'),
(32, 'AF', 'Oruzgan'),
(33, 'AF', 'Paktia'),
(34, 'AF', 'Parvan'),
(35, 'AF', 'Kandahar'),
(36, 'AF', 'Kondoz'),
(37, 'AF', 'Takhar'),
(38, 'AF', 'Vardak'),
(39, 'AF', 'Zabol'),
(40, 'AF', 'Paktika'),
(41, 'AF', 'Balkh'),
(42, 'AF', 'Jowzjan'),
(43, 'AF', 'Samangan'),
(44, 'AF', 'Sar-e Pol'),
(45, 'AG', 'Barbuda'),
(46, 'AG', 'St. George'),
(47, 'AG', 'St. John'),
(48, 'AG', 'St. Mary'),
(49, 'AG', 'St. Paul'),
(50, 'AG', 'St. Peter'),
(51, 'AG', 'St. Philip'),
(52, 'AL', 'Berat'),
(53, 'AL', 'Diber'),
(54, 'AL', 'Durres'),
(55, 'AL', 'Elbasan'),
(56, 'AL', 'Fier'),
(57, 'AL', 'Gjirokaster'),
(58, 'AL', 'Gramsh'),
(59, 'AL', 'Kolonje'),
(60, 'AL', 'Korce'),
(61, 'AL', 'Kruje'),
(62, 'AL', 'Kukes'),
(63, 'AL', 'Lezhe'),
(64, 'AL', 'Librazhd'),
(65, 'AL', 'Lushnje'),
(66, 'AL', 'Mat'),
(67, 'AL', 'Mirdite'),
(68, 'AL', 'Permet'),
(69, 'AL', 'Pogradec'),
(70, 'AL', 'Puke'),
(71, 'AL', 'Sarande'),
(72, 'AL', 'Shkoder'),
(73, 'AL', 'Skrapar'),
(74, 'AL', 'Tepelene'),
(75, 'AL', 'Tropoje'),
(76, 'AL', 'Vlore'),
(77, 'AL', 'Tirane'),
(78, 'AL', 'Bulqize'),
(79, 'AL', 'Delvine'),
(80, 'AL', 'Devoll'),
(81, 'AL', 'Has'),
(82, 'AL', 'Kavaje'),
(83, 'AL', 'Kucove'),
(84, 'AL', 'Kurbin'),
(85, 'AL', 'Malesi e Madhe'),
(86, 'AL', 'Mallakaster'),
(87, 'AL', 'Peqin'),
(88, 'AL', 'Tirane'),
(89, 'AM', 'Aragatsotn'),
(90, 'AM', 'Ararat'),
(91, 'AM', 'Armavir'),
(92, 'AM', 'Geghark&#39;unik&#39;'),
(93, 'AM', 'Kotayk&#39;'),
(94, 'AM', 'Lorri'),
(95, 'AM', 'Shirak'),
(96, 'AM', 'Syunik&#39;'),
(97, 'AM', 'Tavush'),
(98, 'AM', 'Vayots&#39; Dzor'),
(99, 'AM', 'Yerevan'),
(100, 'AO', 'Benguela'),
(101, 'AO', 'Bie'),
(102, 'AO', 'Cabinda'),
(103, 'AO', 'Cuando Cubango'),
(104, 'AO', 'Cuanza Norte'),
(105, 'AO', 'Cuanza Sul'),
(106, 'AO', 'Cunene'),
(107, 'AO', 'Huambo'),
(108, 'AO', 'Huila'),
(109, 'AO', 'Malanje'),
(110, 'AO', 'Moxico'),
(111, 'AO', 'Uige'),
(112, 'AO', 'Zaire'),
(113, 'AO', 'Lunda Norte'),
(114, 'AO', 'Lunda Sul'),
(115, 'AO', 'Bengo'),
(116, 'AO', 'Luanda'),
(117, 'AR', 'Buenos Aires'),
(118, 'AR', 'Catamarca'),
(119, 'AR', 'Chaco'),
(120, 'AR', 'Chubut'),
(121, 'AR', 'Cordoba'),
(122, 'AR', 'Corrientes'),
(123, 'AR', 'Distrito Federal'),
(124, 'AR', 'Entre Rios'),
(125, 'AR', 'Formosa'),
(126, 'AR', 'Jujuy'),
(127, 'AR', 'La Pampa'),
(128, 'AR', 'La Rioja'),
(129, 'AR', 'Mendoza'),
(130, 'AR', 'Misiones'),
(131, 'AR', 'Neuquen'),
(132, 'AR', 'Rio Negro'),
(133, 'AR', 'Salta'),
(134, 'AR', 'San Juan'),
(135, 'AR', 'San Luis'),
(136, 'AR', 'Santa Cruz'),
(137, 'AR', 'Santa Fe'),
(138, 'AR', 'Santiago del Estero'),
(139, 'AR', 'Tierra del Fuego'),
(140, 'AR', 'Tucuman'),
(141, 'AT', 'Burgenland'),
(142, 'AT', 'Karnten'),
(143, 'AT', 'Niederosterreich'),
(144, 'AT', 'Oberosterreich'),
(145, 'AT', 'Salzburg'),
(146, 'AT', 'Steiermark'),
(147, 'AT', 'Tirol'),
(148, 'AT', 'Vorarlberg'),
(149, 'AT', 'Wien'),
(150, 'AU', 'Australian Capital Territory'),
(151, 'AU', 'New S. Wales'),
(152, 'AU', 'N. Territory'),
(153, 'AU', 'Queensland'),
(154, 'AU', 'S. Australia'),
(155, 'AU', 'Tasmania'),
(156, 'AU', 'Victoria'),
(157, 'AU', 'W. Australia'),
(158, 'AZ', 'Abseron'),
(159, 'AZ', 'Agcabadi'),
(160, 'AZ', 'Agdam'),
(161, 'AZ', 'Agdas'),
(162, 'AZ', 'Agstafa'),
(163, 'AZ', 'Agsu'),
(164, 'AZ', 'Ali Bayramli'),
(165, 'AZ', 'Astara'),
(166, 'AZ', 'Baki'),
(167, 'AZ', 'Balakan'),
(168, 'AZ', 'Barda'),
(169, 'AZ', 'Beylaqan'),
(170, 'AZ', 'Bilasuvar'),
(171, 'AZ', 'Cabrayil'),
(172, 'AZ', 'Calilabad'),
(173, 'AZ', 'Daskasan'),
(174, 'AZ', 'Davaci'),
(175, 'AZ', 'Fuzuli'),
(176, 'AZ', 'Gadabay'),
(177, 'AZ', 'Ganca'),
(178, 'AZ', 'Goranboy'),
(179, 'AZ', 'Goycay'),
(180, 'AZ', 'Haciqabul'),
(181, 'AZ', 'Imisli'),
(182, 'AZ', 'Ismayilli'),
(183, 'AZ', 'Kalbacar'),
(184, 'AZ', 'Kurdamir'),
(185, 'AZ', 'Lacin'),
(186, 'AZ', 'Lankaran'),
(187, 'AZ', 'Lankaran'),
(188, 'AZ', 'Lerik'),
(189, 'AZ', 'Masalli'),
(190, 'AZ', 'Mingacevir'),
(191, 'AZ', 'Naftalan'),
(192, 'AZ', 'Naxcivan'),
(193, 'AZ', 'Neftcala'),
(194, 'AZ', 'Oguz'),
(195, 'AZ', 'Qabala'),
(196, 'AZ', 'Qax'),
(197, 'AZ', 'Qazax'),
(198, 'AZ', 'Qobustan'),
(199, 'AZ', 'Quba'),
(200, 'AZ', 'Qubadli'),
(201, 'AZ', 'Qusar'),
(202, 'AZ', 'Saatli'),
(203, 'AZ', 'Sabirabad'),
(204, 'AZ', 'Saki'),
(205, 'AZ', 'Saki'),
(206, 'AZ', 'Salyan'),
(207, 'AZ', 'Samaxi'),
(208, 'AZ', 'Samkir'),
(209, 'AZ', 'Samux'),
(210, 'AZ', 'Siyazan'),
(211, 'AZ', 'Sumqayit'),
(212, 'AZ', 'Susa'),
(213, 'AZ', 'Tartar'),
(214, 'AZ', 'Tovuz'),
(215, 'AZ', 'Ucar'),
(216, 'AZ', 'Xacmaz'),
(217, 'AZ', 'Xankandi'),
(218, 'AZ', 'Xanlar'),
(219, 'AZ', 'Xizi'),
(220, 'AZ', 'Xocali'),
(221, 'AZ', 'Xocavand'),
(222, 'AZ', 'Yardimli'),
(223, 'AZ', 'Yevlax'),
(224, 'AZ', 'Yevlax'),
(225, 'AZ', 'Zangilan'),
(226, 'AZ', 'Zaqatala'),
(227, 'AZ', 'Zardab'),
(228, 'BA', 'Federation of Bosnia Herz'),
(229, 'BA', 'R.ublika Srpska'),
(230, 'BB', 'Christ Church'),
(231, 'BB', 'St. Andrew'),
(232, 'BB', 'St. George'),
(233, 'BB', 'St. James'),
(234, 'BB', 'St. John'),
(235, 'BB', 'St. Joseph'),
(236, 'BB', 'St. Lucy'),
(237, 'BB', 'St. Michael'),
(238, 'BB', 'St. Peter'),
(239, 'BB', 'St. Philip'),
(240, 'BB', 'St. Thomas'),
(241, 'BD', 'Barisal'),
(242, 'BD', 'Bandarban'),
(243, 'BD', 'Comilla'),
(244, 'BD', 'Mymensingh'),
(245, 'BD', 'Noakhali'),
(246, 'BD', 'Patuakhali'),
(247, 'BD', 'Bagerhat'),
(248, 'BD', 'Bhola'),
(249, 'BD', 'Bogra'),
(250, 'BD', 'Barguna'),
(251, 'BD', 'Brahmanbaria'),
(252, 'BD', 'Chandpur'),
(253, 'BD', 'Chapai Nawabganj'),
(254, 'BD', 'Chattagram'),
(255, 'BD', 'Chuadanga'),
(256, 'BD', 'Cox&#39;s Bazar'),
(257, 'BD', 'Dhaka'),
(258, 'BD', 'Dinajpur'),
(259, 'BD', 'Faridpur'),
(260, 'BD', 'Feni'),
(261, 'BD', 'Gaibandha'),
(262, 'BD', 'Gazipur'),
(263, 'BD', 'Gopalganj'),
(264, 'BD', 'Habiganj'),
(265, 'BD', 'Jaipurhat'),
(266, 'BD', 'Jamalpur'),
(267, 'BD', 'Jessore'),
(268, 'BD', 'Jhalakati'),
(269, 'BD', 'Jhenaidah'),
(270, 'BD', 'Khagrachari'),
(271, 'BD', 'Khulna'),
(272, 'BD', 'Kishorganj'),
(273, 'BD', 'Kurigram'),
(274, 'BD', 'Kushtia'),
(275, 'BD', 'Laksmipur'),
(276, 'BD', 'Lalmonirhat'),
(277, 'BD', 'Madaripur'),
(278, 'BD', 'Magura'),
(279, 'BD', 'Manikganj'),
(280, 'BD', 'Meherpur'),
(281, 'BD', 'Moulavibazar'),
(282, 'BD', 'Munshiganj'),
(283, 'BD', 'Naogaon'),
(284, 'BD', 'Narail'),
(285, 'BD', 'Narayanganj'),
(286, 'BD', 'Narsingdi'),
(287, 'BD', 'Nator'),
(288, 'BD', 'Netrakona'),
(289, 'BD', 'Nilphamari'),
(290, 'BD', 'Pabna'),
(291, 'BD', 'Panchagar'),
(292, 'BD', 'Parbattya Chattagram'),
(293, 'BD', 'Pirojpur'),
(294, 'BD', 'Rajbari'),
(295, 'BD', 'Rajshahi'),
(296, 'BD', 'Rangpur'),
(297, 'BD', 'Satkhira'),
(298, 'BD', 'Shariyatpur'),
(299, 'BD', 'Sherpur'),
(300, 'BD', 'Sirajganj'),
(301, 'BD', 'Sunamganj'),
(302, 'BD', 'Sylhet'),
(303, 'BD', 'Tangail'),
(304, 'BD', 'Thakurgaon'),
(305, 'BE', 'Antwerpen'),
(306, 'BE', 'Brabant'),
(307, 'BE', 'Hainaut'),
(308, 'BE', 'Liege'),
(309, 'BE', 'Limburg'),
(310, 'BE', 'Luxembourg'),
(311, 'BE', 'Namur'),
(312, 'BE', 'Oost-Vlaanderen'),
(313, 'BE', 'West-Vlaanderen'),
(314, 'BE', 'Brabant Wallon'),
(315, 'BE', 'Brussels Hoofdstedelijk Gewest'),
(316, 'BE', 'Vlaams-Brabant'),
(317, 'BF', 'Bam'),
(318, 'BF', 'Bazega'),
(319, 'BF', 'Bougouriba'),
(320, 'BF', 'Boulgou'),
(321, 'BF', 'Boulkiemde'),
(322, 'BF', 'Ganzourgou'),
(323, 'BF', 'Gnagna'),
(324, 'BF', 'Gourma'),
(325, 'BF', 'Houet'),
(326, 'BF', 'Kadiogo'),
(327, 'BF', 'Kenedougou'),
(328, 'BF', 'Komoe'),
(329, 'BF', 'Kossi'),
(330, 'BF', 'Kouritenga'),
(331, 'BF', 'Mouhoun'),
(332, 'BF', 'Namentenga'),
(333, 'BF', 'Naouri'),
(334, 'BF', 'Oubritenga'),
(335, 'BF', 'Oudalan'),
(336, 'BF', 'Passore'),
(337, 'BF', 'Poni'),
(338, 'BF', 'Sanguie'),
(339, 'BF', 'Sanmatenga'),
(340, 'BF', 'Seno'),
(341, 'BF', 'Sissili'),
(342, 'BF', 'Soum'),
(343, 'BF', 'Sourou'),
(344, 'BF', 'Tapoa'),
(345, 'BF', 'Yatenga'),
(346, 'BF', 'Zoundweogo'),
(347, 'BG', 'Mikhaylovgrad'),
(348, 'BG', 'Blagoevgrad'),
(349, 'BG', 'Burgas'),
(350, 'BG', 'Dobrich'),
(351, 'BG', 'Gabrovo'),
(352, 'BG', 'Grad Sofiya'),
(353, 'BG', 'Khaskovo'),
(354, 'BG', 'Kurdzhali'),
(355, 'BG', 'Kyustendil'),
(356, 'BG', 'Lovech'),
(357, 'BG', 'Montana'),
(358, 'BG', 'Pazardzhik'),
(359, 'BG', 'Pernik'),
(360, 'BG', 'Pleven'),
(361, 'BG', 'Plovdiv'),
(362, 'BG', 'Razgrad'),
(363, 'BG', 'Ruse'),
(364, 'BG', 'Shumen'),
(365, 'BG', 'Silistra'),
(366, 'BG', 'Sliven'),
(367, 'BG', 'Smolyan'),
(368, 'BG', 'Sofiya'),
(369, 'BG', 'Stara Zagora'),
(370, 'BG', 'Turgovishte'),
(371, 'BG', 'Varna'),
(372, 'BG', 'Veliko Turnovo'),
(373, 'BG', 'Vidin'),
(374, 'BG', 'Vratsa'),
(375, 'BG', 'Yambol'),
(376, 'BH', 'Al Hadd'),
(377, 'BH', 'Al Manamah'),
(378, 'BH', 'Al Muharraq'),
(379, 'BH', 'Jidd Hafs'),
(380, 'BH', 'Sitrah'),
(381, 'BH', 'Al Mintaqah al Gharbiyah'),
(382, 'BH', 'Mintaqat Juzur Hawar'),
(383, 'BH', 'Al Mintaqah ash Shamaliyah'),
(384, 'BH', 'Al Mintaqah al Wusta'),
(385, 'BH', 'Madinat'),
(386, 'BH', 'Ar Rifa'),
(387, 'BH', 'Madinat Hamad'),
(388, 'BI', 'Bujumbura'),
(389, 'BI', 'Bubanza'),
(390, 'BI', 'Bururi'),
(391, 'BI', 'Cankuzo'),
(392, 'BI', 'Cibitoke'),
(393, 'BI', 'Gitega'),
(394, 'BI', 'Karuzi'),
(395, 'BI', 'Kayanza'),
(396, 'BI', 'Kirundo'),
(397, 'BI', 'Makamba'),
(398, 'BI', 'Muyinga'),
(399, 'BI', 'Ngozi'),
(400, 'BI', 'Rutana'),
(401, 'BI', 'Ruyigi'),
(402, 'BI', 'Muramvya'),
(403, 'BI', 'Mwaro'),
(404, 'BJ', 'Atakora'),
(405, 'BJ', 'Atlantique'),
(406, 'BJ', 'Borgou'),
(407, 'BJ', 'Mono'),
(408, 'BJ', 'Oueme'),
(409, 'BJ', 'Zou'),
(410, 'BM', 'Devonshire'),
(411, 'BM', 'Hamilton'),
(412, 'BM', 'Hamilton'),
(413, 'BM', 'Paget'),
(414, 'BM', 'Pembroke'),
(415, 'BM', 'St. George'),
(416, 'BM', 'St. George&#39;s'),
(417, 'BM', 'Sandys'),
(418, 'BM', 'Smiths'),
(419, 'BM', 'S.ampton'),
(420, 'BM', 'Warwick'),
(421, 'BN', 'Belait'),
(422, 'BN', 'Brunei and Muara'),
(423, 'BN', 'Temburong'),
(424, 'BN', 'Tutong'),
(425, 'BO', 'Chuquisaca'),
(426, 'BO', 'Cochabamba'),
(427, 'BO', 'El Beni'),
(428, 'BO', 'La Paz'),
(429, 'BO', 'Oruro'),
(430, 'BO', 'Pando'),
(431, 'BO', 'Potosi'),
(432, 'BO', 'Santa Cruz'),
(433, 'BO', 'Tarija'),
(434, 'BR', 'Acre'),
(435, 'BR', 'Alagoas'),
(436, 'BR', 'Amapa'),
(437, 'BR', 'Amazonas'),
(438, 'BR', 'Bahia'),
(439, 'BR', 'Ceara'),
(440, 'BR', 'Distrito Federal'),
(441, 'BR', 'Espirito Santo'),
(442, 'BR', 'Mato Grosso do Sul'),
(443, 'BR', 'Maranhao'),
(444, 'BR', 'Mato Grosso'),
(445, 'BR', 'Minas Gerais'),
(446, 'BR', 'Para'),
(447, 'BR', 'Paraiba'),
(448, 'BR', 'Parana'),
(449, 'BR', 'Piaui'),
(450, 'BR', 'Rio de Janeiro'),
(451, 'BR', 'Rio Grande do Norte'),
(452, 'BR', 'Rio Grande do Sul'),
(453, 'BR', 'Rondonia'),
(454, 'BR', 'Roraima'),
(455, 'BR', 'Santa Catarina'),
(456, 'BR', 'Sao Paulo'),
(457, 'BR', 'Sergipe'),
(458, 'BR', 'Goias'),
(459, 'BR', 'Pernambuco'),
(460, 'BR', 'Tocantins'),
(461, 'BS', 'Bimini'),
(462, 'BS', 'Cat Is.'),
(463, 'BS', 'Exuma'),
(464, 'BS', 'Inagua'),
(465, 'BS', 'Long Is.'),
(466, 'BS', 'Mayaguana'),
(467, 'BS', 'Ragged Is.'),
(468, 'BS', 'Harbour Is.'),
(469, 'BS', 'New Providence'),
(470, 'BS', 'Acklins and Crooked Is.'),
(471, 'BS', 'Freeport'),
(472, 'BS', 'Fresh Creek'),
(473, 'BS', 'Governor&#39;s Harbour'),
(474, 'BS', 'Green Turtle Cay'),
(475, 'BS', 'High Rock'),
(476, 'BS', 'Kemps Bay'),
(477, 'BS', 'Marsh Harbour'),
(478, 'BS', 'Nichollstown and Berry Is.'),
(479, 'BS', 'Rock Sound'),
(480, 'BS', 'Sandy Point'),
(481, 'BS', 'San Salvador and Rum Cay'),
(482, 'BT', 'Bumthang'),
(483, 'BT', 'Chhukha'),
(484, 'BT', 'Chirang'),
(485, 'BT', 'Daga'),
(486, 'BT', 'Geylegphug'),
(487, 'BT', 'Ha'),
(488, 'BT', 'Lhuntshi'),
(489, 'BT', 'Mongar'),
(490, 'BT', 'Paro'),
(491, 'BT', 'Pemagatsel'),
(492, 'BT', 'Punakha'),
(493, 'BT', 'Samchi'),
(494, 'BT', 'Samdrup'),
(495, 'BT', 'Shemgang'),
(496, 'BT', 'Tashigang'),
(497, 'BT', 'Thimphu'),
(498, 'BT', 'Tongsa'),
(499, 'BT', 'Wangdi Phodrang'),
(500, 'BW', 'Central'),
(501, 'BW', 'Chobe'),
(502, 'BW', 'Ghanzi'),
(503, 'BW', 'Kgalagadi'),
(504, 'BW', 'Kgatleng'),
(505, 'BW', 'Kweneng'),
(506, 'BW', 'Ngamiland'),
(507, 'BW', 'North-East'),
(508, 'BW', 'S.-East'),
(509, 'BW', 'S.ern'),
(510, 'BY', 'Brestskaya Voblasts&#39;'),
(511, 'BY', 'Homyel&#39;skaya Voblasts&#39;'),
(512, 'BY', 'Hrodzyenskaya Voblasts&#39;'),
(513, 'BY', 'Minsk'),
(514, 'BY', 'Minskaya Voblasts&#39;'),
(515, 'BY', 'Mahilyowskaya Voblasts&#39;'),
(516, 'BY', 'Vitsyebskaya Voblasts&#39;'),
(517, 'BZ', 'Belize'),
(518, 'BZ', 'Cayo'),
(519, 'BZ', 'Corozal'),
(520, 'BZ', 'Orange Walk'),
(521, 'BZ', 'Stann Creek'),
(522, 'BZ', 'Toledo'),
(523, 'CA', 'Alberta'),
(524, 'CA', 'British Columbia'),
(525, 'CA', 'Manitoba'),
(526, 'CA', 'New Brunswick'),
(527, 'CA', 'Newfoundland'),
(528, 'CA', 'Nova Scotia'),
(529, 'CA', 'Nunavut'),
(530, 'CA', 'Ontario'),
(531, 'CA', 'Prince Edward Is.'),
(532, 'CA', 'Quebec'),
(533, 'CA', 'Saskatchewan'),
(534, 'CA', 'Northwest Territories'),
(535, 'CA', 'Yukon Territory'),
(536, 'CF', 'Bamingui-Bangoran'),
(537, 'CF', 'Basse-Kotto'),
(538, 'CF', 'Haute-Kotto'),
(539, 'CF', 'Haute-Sangha'),
(540, 'CF', 'Haut-Mbomou'),
(541, 'CF', 'Kemo-Gribingui'),
(542, 'CF', 'Lobaye'),
(543, 'CF', 'Mbomou'),
(544, 'CF', 'Nana-Mambere'),
(545, 'CF', 'Ouaka'),
(546, 'CF', 'Ouham'),
(547, 'CF', 'Ouham-Pende'),
(548, 'CF', 'Vakaga'),
(549, 'CF', 'Gribingui'),
(550, 'CF', 'Sangha'),
(551, 'CF', 'Ombella-Mpoko'),
(552, 'CF', 'Bangui'),
(553, 'CG', 'Bouenza'),
(554, 'CG', 'Cuvette'),
(555, 'CG', 'Kouilou'),
(556, 'CG', 'Lekoumou'),
(557, 'CG', 'Likouala'),
(558, 'CG', 'Niari'),
(559, 'CG', 'Plateaux'),
(560, 'CG', 'Sangha'),
(561, 'CG', 'Pool'),
(562, 'CG', 'Brazzaville'),
(563, 'CH', 'Aargau'),
(564, 'CH', 'Ausser-Rhoden'),
(565, 'CH', 'Basel-Landschaft'),
(566, 'CH', 'Basel-Stadt'),
(567, 'CH', 'Bern'),
(568, 'CH', 'Fribourg'),
(569, 'CH', 'Geneve'),
(570, 'CH', 'Glarus'),
(571, 'CH', 'Graubunden'),
(572, 'CH', 'Inner-Rhoden'),
(573, 'CH', 'Luzern'),
(574, 'CH', 'Neuchatel'),
(575, 'CH', 'Nidwalden'),
(576, 'CH', 'Obwalden'),
(577, 'CH', 'Sankt Gallen'),
(578, 'CH', 'Schaffhausen'),
(579, 'CH', 'Schwyz'),
(580, 'CH', 'Solothurn'),
(581, 'CH', 'Thurgau'),
(582, 'CH', 'Ticino'),
(583, 'CH', 'Uri'),
(584, 'CH', 'Valais'),
(585, 'CH', 'Vaud'),
(586, 'CH', 'Zug'),
(587, 'CH', 'Zurich'),
(588, 'CH', 'Jura'),
(589, 'CI', 'Abengourou'),
(590, 'CI', 'Dabakala'),
(591, 'CI', 'Adzope'),
(592, 'CI', 'Agboville'),
(593, 'CI', 'Biankouma'),
(594, 'CI', 'Bouna'),
(595, 'CI', 'Boundiali'),
(596, 'CI', 'Danane'),
(597, 'CI', 'Divo'),
(598, 'CI', 'Ferkessedougou'),
(599, 'CI', 'Gagnoa'),
(600, 'CI', 'Katiola'),
(601, 'CI', 'Korhogo'),
(602, 'CI', 'Odienne'),
(603, 'CI', 'Seguela'),
(604, 'CI', 'Touba'),
(605, 'CI', 'Bongouanou'),
(606, 'CI', 'Issia'),
(607, 'CI', 'Lakota'),
(608, 'CI', 'Mankono'),
(609, 'CI', 'Oume'),
(610, 'CI', 'Soubre'),
(611, 'CI', 'Tingrela'),
(612, 'CI', 'Zuenoula'),
(613, 'CI', 'Bangolo'),
(614, 'CI', 'Beoumi'),
(615, 'CI', 'Bondoukou'),
(616, 'CI', 'Bouafle'),
(617, 'CI', 'Bouake'),
(618, 'CI', 'Daloa'),
(619, 'CI', 'Daoukro'),
(620, 'CI', 'Duekoue'),
(621, 'CI', 'Grand-Lahou'),
(622, 'CI', 'Man'),
(623, 'CI', 'Mbahiakro'),
(624, 'CI', 'Sakassou'),
(625, 'CI', 'San Pedro'),
(626, 'CI', 'Sassandra'),
(627, 'CI', 'Sinfra'),
(628, 'CI', 'Tabou'),
(629, 'CI', 'Tanda'),
(630, 'CI', 'Tiassale'),
(631, 'CI', 'Toumodi'),
(632, 'CI', 'Vavoua'),
(633, 'CI', 'Abidjan'),
(634, 'CI', 'Aboisso'),
(635, 'CI', 'Adiake'),
(636, 'CI', 'Alepe'),
(637, 'CI', 'Bocanda'),
(638, 'CI', 'Dabou'),
(639, 'CI', 'Dimbokro'),
(640, 'CI', 'Grand-Bassam'),
(641, 'CI', 'Guiglo'),
(642, 'CI', 'Jacqueville'),
(643, 'CI', 'Tiebissou'),
(644, 'CI', 'Toulepleu'),
(645, 'CI', 'Yamoussoukro'),
(646, 'CL', 'Valparaiso'),
(647, 'CL', 'Aisen del General Carlos Ibanez del Campo'),
(648, 'CL', 'Antofagasta'),
(649, 'CL', 'Araucania'),
(650, 'CL', 'Atacama'),
(651, 'CL', 'Bio-Bio'),
(652, 'CL', 'Coquimbo'),
(653, 'CL', 'Libertador General Bernardo O&#39;Higgins'),
(654, 'CL', 'Los Lagos'),
(655, 'CL', 'Magallanes y de la Antartica Chilena'),
(656, 'CL', 'Maule'),
(657, 'CL', 'Region Metropolitana'),
(658, 'CL', 'Tarapaca'),
(659, 'CM', 'Est'),
(660, 'CM', 'Littoral'),
(661, 'CM', 'Nord-Ouest'),
(662, 'CM', 'Ouest'),
(663, 'CM', 'Sud-Ouest'),
(664, 'CM', 'Adamaoua'),
(665, 'CM', 'Centre'),
(666, 'CM', 'Extreme-Nord'),
(667, 'CM', 'Nord'),
(668, 'CM', 'Sud'),
(669, 'CN', 'Anhui'),
(670, 'CN', 'Zhejiang'),
(671, 'CN', 'Jiangxi'),
(672, 'CN', 'Jiangsu'),
(673, 'CN', 'Jilin'),
(674, 'CN', 'Qinghai'),
(675, 'CN', 'Fujian'),
(676, 'CN', 'Heilongjiang'),
(677, 'CN', 'Henan'),
(678, 'CN', 'Hebei'),
(679, 'CN', 'Hunan'),
(680, 'CN', 'Hubei'),
(681, 'CN', 'Xinjiang'),
(682, 'CN', 'Xizang'),
(683, 'CN', 'Gansu'),
(684, 'CN', 'Guangxi'),
(685, 'CN', 'Guizhou'),
(686, 'CN', 'Liaoning'),
(687, 'CN', 'Nei Mongol'),
(688, 'CN', 'Ningxia'),
(689, 'CN', 'Beijing'),
(690, 'CN', 'Shanghai'),
(691, 'CN', 'Shanxi'),
(692, 'CN', 'Shandong'),
(693, 'CN', 'Shaanxi'),
(694, 'CN', 'Sichuan'),
(695, 'CN', 'Tianjin'),
(696, 'CN', 'Yunnan'),
(697, 'CN', 'Guangdong'),
(698, 'CN', 'Hainan'),
(699, 'CO', 'Amazonas'),
(700, 'CO', 'Antioquia'),
(701, 'CO', 'Arauca'),
(702, 'CO', 'Atlantico'),
(703, 'CO', 'Caqueta'),
(704, 'CO', 'Cauca'),
(705, 'CO', 'Cesar'),
(706, 'CO', 'Choco'),
(707, 'CO', 'Cordoba'),
(708, 'CO', 'Guaviare'),
(709, 'CO', 'Guainia'),
(710, 'CO', 'Huila'),
(711, 'CO', 'La Guajira'),
(712, 'CO', 'Meta'),
(713, 'CO', 'Narino'),
(714, 'CO', 'Norte de Santander'),
(715, 'CO', 'Putumayo'),
(716, 'CO', 'Quindio'),
(717, 'CO', 'Risaralda'),
(718, 'CO', 'San Andres y Providencia'),
(719, 'CO', 'Santander'),
(720, 'CO', 'Sucre'),
(721, 'CO', 'Tolima'),
(722, 'CO', 'Valle del Cauca'),
(723, 'CO', 'Vaupes'),
(724, 'CO', 'Vichada'),
(725, 'CO', 'Casanare'),
(726, 'CO', 'Cundinamarca'),
(727, 'CO', 'Distrito Especial'),
(728, 'CO', 'Bolivar'),
(729, 'CO', 'Boyaca'),
(730, 'CO', 'Caldas'),
(731, 'CO', 'Magdalena'),
(732, 'CR', 'Alajuela'),
(733, 'CR', 'Cartago'),
(734, 'CR', 'Guanacaste'),
(735, 'CR', 'Heredia'),
(736, 'CR', 'Limon'),
(737, 'CR', 'Puntarenas'),
(738, 'CR', 'San Jose'),
(739, 'CU', 'Pinar del Rio'),
(740, 'CU', 'Ciudad de la Habana'),
(741, 'CU', 'Matanzas'),
(742, 'CU', 'Isla de la Juventud'),
(743, 'CU', 'Camaguey'),
(744, 'CU', 'Ciego de Avila'),
(745, 'CU', 'Cienfuegos'),
(746, 'CU', 'Granma'),
(747, 'CU', 'Guantanamo'),
(748, 'CU', 'La Habana'),
(749, 'CU', 'Holguin'),
(750, 'CU', 'Las Tunas'),
(751, 'CU', 'Sancti Spiritus'),
(752, 'CU', 'Santiago de Cuba'),
(753, 'CU', 'Villa Clara'),
(754, 'CV', 'Boa Vista'),
(755, 'CV', 'Brava'),
(756, 'CV', 'Fogo'),
(757, 'CV', 'Maio'),
(758, 'CV', 'Paul'),
(759, 'CV', 'Praia'),
(760, 'CV', 'Ribeira Grande'),
(761, 'CV', 'Sal'),
(762, 'CV', 'Santa Catarina'),
(763, 'CV', 'Sao Nicolau'),
(764, 'CV', 'Sao Vicente'),
(765, 'CV', 'Tarrafal'),
(766, 'CY', 'Famagusta'),
(767, 'CY', 'Kyrenia'),
(768, 'CY', 'Larnaca'),
(769, 'CY', 'Nicosia'),
(770, 'CY', 'Limassol'),
(771, 'CY', 'Paphos'),
(772, 'CZ', 'Hlavni Mesto Praha'),
(773, 'CZ', 'Jihomoravsky Kraj'),
(774, 'CZ', 'Jihocesky Kraj'),
(775, 'CZ', 'Vysocina'),
(776, 'CZ', 'Karlovarsky Kraj'),
(777, 'CZ', 'Kralovehradecky Kraj'),
(778, 'CZ', 'Liberecky Kraj'),
(779, 'CZ', 'Olomoucky Kraj'),
(780, 'CZ', 'Moravskoslezsky Kraj'),
(781, 'CZ', 'Pardubicky Kraj'),
(782, 'CZ', 'Plzensky Kraj'),
(783, 'CZ', 'Stredocesky Kraj'),
(784, 'CZ', 'Ustecky Kraj'),
(785, 'CZ', 'Zlinsky Kraj'),
(786, 'DE', 'Baden-Wurttemberg'),
(787, 'DE', 'Bayern'),
(788, 'DE', 'Bremen'),
(789, 'DE', 'Hamburg'),
(790, 'DE', 'Hessen'),
(791, 'DE', 'Niedersachsen'),
(792, 'DE', 'Nordrhein-Westfalen'),
(793, 'DE', 'Rheinland-Pfalz'),
(794, 'DE', 'Saarland'),
(795, 'DE', 'Schleswig-Holstein'),
(796, 'DE', 'Brandenburg'),
(797, 'DE', 'Mecklenburg-Vorpommern'),
(798, 'DE', 'Sachsen'),
(799, 'DE', 'Sachsen-Anhalt'),
(800, 'DE', 'Thuringen'),
(801, 'DE', 'Berlin'),
(802, 'DJ', 'Dikhil'),
(803, 'DJ', 'Djibouti'),
(804, 'DJ', 'Obock'),
(805, 'DJ', 'Tadjoura'),
(806, 'DK', 'Arhus'),
(807, 'DK', 'Bornholm'),
(808, 'DK', 'Frederiksborg'),
(809, 'DK', 'Fyn'),
(810, 'DK', 'Kobenhavn'),
(811, 'DK', 'Staden Kobenhavn'),
(812, 'DK', 'Nordjylland'),
(813, 'DK', 'Ribe'),
(814, 'DK', 'Ringkobing'),
(815, 'DK', 'Roskilde'),
(816, 'DK', 'Sonderjylland'),
(817, 'DK', 'Storstrom'),
(818, 'DK', 'Vejle'),
(819, 'DK', 'Vestsjalland'),
(820, 'DK', 'Viborg'),
(821, 'DM', 'St. Andrew'),
(822, 'DM', 'St. David'),
(823, 'DM', 'St. George'),
(824, 'DM', 'St. John'),
(825, 'DM', 'St. Joseph'),
(826, 'DM', 'St. Luke'),
(827, 'DM', 'St. Mark'),
(828, 'DM', 'St. Patrick'),
(829, 'DM', 'St. Paul'),
(830, 'DM', 'St. Peter'),
(831, 'DO', 'Azua'),
(832, 'DO', 'Baoruco'),
(833, 'DO', 'Barahona'),
(834, 'DO', 'Dajabon'),
(835, 'DO', 'Distrito Nacional'),
(836, 'DO', 'Duarte'),
(837, 'DO', 'Espaillat'),
(838, 'DO', 'Independencia'),
(839, 'DO', 'La Altagracia'),
(840, 'DO', 'Elias Pina'),
(841, 'DO', 'La Romana'),
(842, 'DO', 'Maria Trinidad Sanchez'),
(843, 'DO', 'Monte Cristi'),
(844, 'DO', 'Pedernales'),
(845, 'DO', 'Peravia'),
(846, 'DO', 'Puerto Plata'),
(847, 'DO', 'Salcedo'),
(848, 'DO', 'Samana'),
(849, 'DO', 'Sanchez Ramirez'),
(850, 'DO', 'San Juan'),
(851, 'DO', 'San Pedro De Macoris'),
(852, 'DO', 'Santiago'),
(853, 'DO', 'Santiago Rodriguez'),
(854, 'DO', 'Valverde'),
(855, 'DO', 'El Seibo'),
(856, 'DO', 'Hato Mayor'),
(857, 'DO', 'La Vega'),
(858, 'DO', 'Monsenor Nouel'),
(859, 'DO', 'Monte Plata'),
(860, 'DO', 'San Cristobal'),
(861, 'DZ', 'Alger'),
(862, 'DZ', 'Batna'),
(863, 'DZ', 'Constantine'),
(864, 'DZ', 'Medea'),
(865, 'DZ', 'Mostaganem'),
(866, 'DZ', 'Oran'),
(867, 'DZ', 'Saida'),
(868, 'DZ', 'Setif'),
(869, 'DZ', 'Tiaret'),
(870, 'DZ', 'Tizi Ouzou'),
(871, 'DZ', 'Tlemcen'),
(872, 'DZ', 'Bejaia'),
(873, 'DZ', 'Biskra'),
(874, 'DZ', 'Blida'),
(875, 'DZ', 'Bouira'),
(876, 'DZ', 'Djelfa'),
(877, 'DZ', 'Guelma'),
(878, 'DZ', 'Jijel'),
(879, 'DZ', 'Laghouat'),
(880, 'DZ', 'Mascara'),
(881, 'DZ', 'M&#39;sila'),
(882, 'DZ', 'Oum el Bouaghi'),
(883, 'DZ', 'Sidi Bel Abbes'),
(884, 'DZ', 'Skikda'),
(885, 'DZ', 'Tebessa'),
(886, 'DZ', 'Adrar'),
(887, 'DZ', 'Ain Defla'),
(888, 'DZ', 'Ain Temouchent'),
(889, 'DZ', 'Annaba'),
(890, 'DZ', 'Bechar'),
(891, 'DZ', 'Bordj Bou Arreridj'),
(892, 'DZ', 'Boumerdes'),
(893, 'DZ', 'Chlef'),
(894, 'DZ', 'El Bayadh'),
(895, 'DZ', 'El Oued'),
(896, 'DZ', 'El Tarf'),
(897, 'DZ', 'Ghardaia'),
(898, 'DZ', 'Illizi'),
(899, 'DZ', 'Khenchela'),
(900, 'DZ', 'Mila'),
(901, 'DZ', 'Naama'),
(902, 'DZ', 'Ouargla'),
(903, 'DZ', 'Relizane'),
(904, 'DZ', 'Souk Ahras'),
(905, 'DZ', 'Tamanghasset'),
(906, 'DZ', 'Tindouf'),
(907, 'DZ', 'Tipaza'),
(908, 'DZ', 'Tissemsilt'),
(909, 'EC', 'Galapagos'),
(910, 'EC', 'Azuay'),
(911, 'EC', 'Bolivar'),
(912, 'EC', 'Canar'),
(913, 'EC', 'Carchi'),
(914, 'EC', 'Chimborazo'),
(915, 'EC', 'Cotopaxi'),
(916, 'EC', 'El Oro'),
(917, 'EC', 'Esmeraldas'),
(918, 'EC', 'Guayas'),
(919, 'EC', 'Imbabura'),
(920, 'EC', 'Loja'),
(921, 'EC', 'Los Rios'),
(922, 'EC', 'Manabi'),
(923, 'EC', 'Morona-Santiago'),
(924, 'EC', 'Pastaza'),
(925, 'EC', 'Pichincha'),
(926, 'EC', 'Tungurahua'),
(927, 'EC', 'Zamora-Chinchipe'),
(928, 'EC', 'Sucumbios'),
(929, 'EC', 'Napo'),
(930, 'EC', 'Orellana'),
(931, 'EE', 'Harjumaa'),
(932, 'EE', 'Hiiumaa'),
(933, 'EE', 'Ida-Virumaa'),
(934, 'EE', 'Jarvamaa'),
(935, 'EE', 'Jogevamaa'),
(936, 'EE', 'Kohtla-Jarve'),
(937, 'EE', 'Laanemaa'),
(938, 'EE', 'Laane-Virumaa'),
(939, 'EE', 'Narva'),
(940, 'EE', 'Parnu'),
(941, 'EE', 'Parnumaa'),
(942, 'EE', 'Polvamaa'),
(943, 'EE', 'Raplamaa'),
(944, 'EE', 'Saaremaa'),
(945, 'EE', 'Sillamae'),
(946, 'EE', 'Tallinn'),
(947, 'EE', 'Tartu'),
(948, 'EE', 'Tartumaa'),
(949, 'EE', 'Valgamaa'),
(950, 'EE', 'Viljandimaa'),
(951, 'EE', 'Vorumaa'),
(952, 'EG', 'Ad Daqahliyah'),
(953, 'EG', 'Al Bahr al Ahmar'),
(954, 'EG', 'Al Buhayrah'),
(955, 'EG', 'Al Fayyum'),
(956, 'EG', 'Al Gharbiyah'),
(957, 'EG', 'Al Iskandariyah'),
(958, 'EG', 'Al Isma&#39;iliyah'),
(959, 'EG', 'Al Jizah'),
(960, 'EG', 'Al Minufiyah'),
(961, 'EG', 'Al Minya'),
(962, 'EG', 'Al Qahirah'),
(963, 'EG', 'Al Qalyubiyah'),
(964, 'EG', 'Al Wadi al Jadid'),
(965, 'EG', 'Ash Sharqiyah'),
(966, 'EG', 'As Suways'),
(967, 'EG', 'Aswan'),
(968, 'EG', 'Asyut'),
(969, 'EG', 'Bani Suwayf'),
(970, 'EG', 'Bur Sa&#39;id'),
(971, 'EG', 'Dumyat'),
(972, 'EG', 'Kafr ash Shaykh'),
(973, 'EG', 'Matruh'),
(974, 'EG', 'Qina'),
(975, 'EG', 'Suhaj'),
(976, 'EG', 'Janub Sina&#39;'),
(977, 'EG', 'Shamal Sina&#39;'),
(978, 'ES', 'Islas Baleares'),
(979, 'ES', 'La Rioja'),
(980, 'ES', 'Madrid'),
(981, 'ES', 'Murcia'),
(982, 'ES', 'Navarra'),
(983, 'ES', 'Asturias'),
(984, 'ES', 'Cantabria'),
(985, 'ES', 'Andalucia'),
(986, 'ES', 'Aragon'),
(987, 'ES', 'Canarias'),
(988, 'ES', 'Castilla-La Mancha'),
(989, 'ES', 'Castilla y Leon'),
(990, 'ES', 'Cataluna'),
(991, 'ES', 'Extremadura'),
(992, 'ES', 'Galicia'),
(993, 'ES', 'Pais Vasco'),
(994, 'ES', 'Valenciana'),
(995, 'ET', 'Amhara'),
(996, 'ET', 'Somali'),
(997, 'ET', 'Gambella'),
(998, 'ET', 'Addis Ababa'),
(999, 'ET', 'S.ern'),
(1000, 'ET', 'Tigray'),
(1001, 'ET', 'Benishangul'),
(1002, 'ET', 'Afar'),
(1003, 'ET', 'Adis Abeba'),
(1004, 'ET', 'Afar'),
(1005, 'ET', 'Amara'),
(1006, 'ET', 'Binshangul Gumuz'),
(1007, 'ET', 'Dire Dawa'),
(1008, 'ET', 'Gambela Hizboch'),
(1009, 'ET', 'Hareri Hizb'),
(1010, 'ET', 'Oromiya'),
(1011, 'ET', 'Sumale'),
(1012, 'ET', 'Tigray'),
(1013, 'ET', 'YeDebub Biheroch Bihereseboch na Hizboch'),
(1014, 'FI', 'Ã?land'),
(1015, 'FI', 'Lapland'),
(1016, 'FI', 'Oulu'),
(1017, 'FI', 'S.ern Finland'),
(1018, 'FI', 'Eastern Finland'),
(1019, 'FI', 'W. Finland'),
(1020, 'FJ', 'Central'),
(1021, 'FJ', 'Eastern'),
(1022, 'FJ', 'N.'),
(1023, 'FJ', 'Rotuma'),
(1024, 'FJ', 'W.'),
(1025, 'FM', 'Kosrae'),
(1026, 'FM', 'Pohnpei'),
(1027, 'FM', 'Chuuk'),
(1028, 'FM', 'Yap'),
(1029, 'FR', 'Aquitaine'),
(1030, 'FR', 'Auvergne'),
(1031, 'FR', 'Basse-Normandie'),
(1032, 'FR', 'Bourgogne'),
(1033, 'FR', 'Bretagne'),
(1034, 'FR', 'Centre'),
(1035, 'FR', 'Champagne-Ardenne'),
(1036, 'FR', 'Corse'),
(1037, 'FR', 'Franche-Comte'),
(1038, 'FR', 'Haute-Normandie'),
(1039, 'FR', 'Ile-de-France'),
(1040, 'FR', 'Languedoc-Roussillon'),
(1041, 'FR', 'Limousin'),
(1042, 'FR', 'Lorraine'),
(1043, 'FR', 'Midi-Pyrenees'),
(1044, 'FR', 'Nord-Pas-de-Calais'),
(1045, 'FR', 'Pays de la Loire'),
(1046, 'FR', 'Picardie'),
(1047, 'FR', 'Poitou-Charentes'),
(1048, 'FR', 'Provence-Alpes-Cote d&#39;Azur'),
(1049, 'FR', 'Rhone-Alpes'),
(1050, 'FR', 'Alsace'),
(1051, 'GA', 'Estuaire'),
(1052, 'GA', 'Haut-Ogooue'),
(1053, 'GA', 'Moyen-Ogooue'),
(1054, 'GA', 'Ngounie'),
(1055, 'GA', 'Nyanga'),
(1056, 'GA', 'Ogooue-Ivindo'),
(1057, 'GA', 'Ogooue-Lolo'),
(1058, 'GA', 'Ogooue-Maritime'),
(1059, 'GA', 'Woleu-Ntem'),
(1060, 'GB', 'Avon'),
(1061, 'GB', 'Berkshire'),
(1062, 'GB', 'Cleveland'),
(1063, 'GB', 'Cornwall'),
(1064, 'GB', 'Cumbria'),
(1065, 'GB', 'Greater London'),
(1066, 'GB', 'Greater Manchester'),
(1067, 'GB', 'Hereford and Worcester'),
(1068, 'GB', 'Humberside'),
(1069, 'GB', 'Merseyside'),
(1070, 'GB', 'S. Yorkshire'),
(1071, 'GB', 'Tyne and Wear'),
(1072, 'GB', 'West Midlands'),
(1073, 'GB', 'West Yorkshire'),
(1074, 'GB', 'Central'),
(1075, 'GB', 'Grampian'),
(1076, 'GB', 'Lothian'),
(1077, 'GB', 'Strathclyde'),
(1078, 'GB', 'Tayside'),
(1079, 'GB', 'Clwyd'),
(1080, 'GB', 'Dyfed'),
(1081, 'GB', 'Gwent'),
(1082, 'GB', 'Mid Glamorgan'),
(1083, 'GB', 'S. Glamorgan'),
(1084, 'GB', 'West Glamorgan'),
(1085, 'GB', 'Barking and Dagenham'),
(1086, 'GB', 'Barnet'),
(1087, 'GB', 'Barnsley'),
(1088, 'GB', 'Bath and North East Somerset'),
(1089, 'GB', 'Bedfordshire'),
(1090, 'GB', 'Bexley'),
(1091, 'GB', 'Birmingham'),
(1092, 'GB', 'Blackburn with Darwen'),
(1093, 'GB', 'Blackpool'),
(1094, 'GB', 'Bolton'),
(1095, 'GB', 'Bournemouth'),
(1096, 'GB', 'Bracknell Forest'),
(1097, 'GB', 'Bradford'),
(1098, 'GB', 'Brent'),
(1099, 'GB', 'Brighton and Hove'),
(1100, 'GB', 'Bristol, City of'),
(1101, 'GB', 'Bromley'),
(1102, 'GB', 'Buckinghamshire'),
(1103, 'GB', 'Bury'),
(1104, 'GB', 'Calderdale'),
(1105, 'GB', 'Cambridgeshire'),
(1106, 'GB', 'Camden'),
(1107, 'GB', 'Cheshire'),
(1108, 'GB', 'Coventry'),
(1109, 'GB', 'Croydon'),
(1110, 'GB', 'Darlington'),
(1111, 'GB', 'Derby'),
(1112, 'GB', 'Derbyshire'),
(1113, 'GB', 'Devon'),
(1114, 'GB', 'Doncaster'),
(1115, 'GB', 'Dorset'),
(1116, 'GB', 'Dudley'),
(1117, 'GB', 'Durham'),
(1118, 'GB', 'Ealing'),
(1119, 'GB', 'East Riding of Yorkshire'),
(1120, 'GB', 'East Sussex'),
(1121, 'GB', 'Enfield'),
(1122, 'GB', 'Essex'),
(1123, 'GB', 'Gateshead'),
(1124, 'GB', 'Gloucestershire'),
(1125, 'GB', 'Greenwich'),
(1126, 'GB', 'Hackney'),
(1127, 'GB', 'Halton'),
(1128, 'GB', 'Hammersmith and Fulham'),
(1129, 'GB', 'Hampshire'),
(1130, 'GB', 'Haringey'),
(1131, 'GB', 'Harrow'),
(1132, 'GB', 'Hartlepool'),
(1133, 'GB', 'Havering'),
(1134, 'GB', 'Herefordshire'),
(1135, 'GB', 'Hertford'),
(1136, 'GB', 'Hillingdon'),
(1137, 'GB', 'Hounslow'),
(1138, 'GB', 'Isle of Wight'),
(1139, 'GB', 'Islington'),
(1140, 'GB', 'Kensington and Chelsea'),
(1141, 'GB', 'Kent'),
(1142, 'GB', 'Kingston upon Hull, City of'),
(1143, 'GB', 'Kingston upon Thames'),
(1144, 'GB', 'Kirklees'),
(1145, 'GB', 'Knowsley'),
(1146, 'GB', 'Lambeth'),
(1147, 'GB', 'Lancashire'),
(1148, 'GB', 'Leeds'),
(1149, 'GB', 'Leicester'),
(1150, 'GB', 'Leicestershire'),
(1151, 'GB', 'Lewisham'),
(1152, 'GB', 'Lincolnshire'),
(1153, 'GB', 'Liverpool'),
(1154, 'GB', 'London, City of'),
(1155, 'GB', 'Luton'),
(1156, 'GB', 'Manchester'),
(1157, 'GB', 'Medway'),
(1158, 'GB', 'Merton'),
(1159, 'GB', 'Middlesbrough'),
(1160, 'GB', 'Milton Keynes'),
(1161, 'GB', 'Newcastle upon Tyne'),
(1162, 'GB', 'Newham'),
(1163, 'GB', 'Norfolk'),
(1164, 'GB', 'Northamptonshire'),
(1165, 'GB', 'North East Lincolnshire'),
(1166, 'GB', 'North Lincolnshire'),
(1167, 'GB', 'North Somerset'),
(1168, 'GB', 'North Tyneside'),
(1169, 'GB', 'Northumberland'),
(1170, 'GB', 'North Yorkshire'),
(1171, 'GB', 'Nottingham'),
(1172, 'GB', 'Nottinghamshire'),
(1173, 'GB', 'Oldham'),
(1174, 'GB', 'Oxfordshire'),
(1175, 'GB', 'Peterborough'),
(1176, 'GB', 'Plymouth'),
(1177, 'GB', 'Poole'),
(1178, 'GB', 'Portsmouth'),
(1179, 'GB', 'Reading'),
(1180, 'GB', 'Redbridge'),
(1181, 'GB', 'Redcar and Cleveland'),
(1182, 'GB', 'Richmond upon Thames'),
(1183, 'GB', 'Rochdale'),
(1184, 'GB', 'Rotherham'),
(1185, 'GB', 'Rutland'),
(1186, 'GB', 'Salford'),
(1187, 'GB', 'Shropshire'),
(1188, 'GB', 'Sandwell'),
(1189, 'GB', 'Sefton'),
(1190, 'GB', 'Sheffield'),
(1191, 'GB', 'Slough'),
(1192, 'GB', 'Solihull'),
(1193, 'GB', 'Somerset'),
(1194, 'GB', 'S.ampton'),
(1195, 'GB', 'S.end-on-Sea'),
(1196, 'GB', 'S. Gloucestershire'),
(1197, 'GB', 'S. Tyneside'),
(1198, 'GB', 'S.wark'),
(1199, 'GB', 'Staffordshire'),
(1200, 'GB', 'St. Helens'),
(1201, 'GB', 'Stockport'),
(1202, 'GB', 'Stockton-on-Tees'),
(1203, 'GB', 'Stoke-on-Trent'),
(1204, 'GB', 'Suffolk'),
(1205, 'GB', 'Sunderland'),
(1206, 'GB', 'Surrey'),
(1207, 'GB', 'Sutton'),
(1208, 'GB', 'Swindon'),
(1209, 'GB', 'Tameside'),
(1210, 'GB', 'Telford and Wrekin'),
(1211, 'GB', 'Thurrock'),
(1212, 'GB', 'Torbay'),
(1213, 'GB', 'Tower Hamlets'),
(1214, 'GB', 'Trafford'),
(1215, 'GB', 'Wakefield'),
(1216, 'GB', 'Walsall'),
(1217, 'GB', 'Waltham Forest'),
(1218, 'GB', 'Wandsworth'),
(1219, 'GB', 'Warrington'),
(1220, 'GB', 'Warwickshire'),
(1221, 'GB', 'West Berkshire'),
(1222, 'GB', 'Westminster'),
(1223, 'GB', 'West Sussex'),
(1224, 'GB', 'Wigan'),
(1225, 'GB', 'Wiltshire'),
(1226, 'GB', 'Windsor and Maidenhead'),
(1227, 'GB', 'Wirral'),
(1228, 'GB', 'Wokingham'),
(1229, 'GB', 'Wolverhampton'),
(1230, 'GB', 'Worcestershire'),
(1231, 'GB', 'York'),
(1232, 'GB', 'Antrim'),
(1233, 'GB', 'Ards'),
(1234, 'GB', 'Armagh'),
(1235, 'GB', 'Ballymena'),
(1236, 'GB', 'Ballymoney'),
(1237, 'GB', 'Banbridge'),
(1238, 'GB', 'Belfast'),
(1239, 'GB', 'Carrickfergus'),
(1240, 'GB', 'Castlereagh'),
(1241, 'GB', 'Coleraine'),
(1242, 'GB', 'Cookstown'),
(1243, 'GB', 'Craigavon'),
(1244, 'GB', 'Down'),
(1245, 'GB', 'Dungannon'),
(1246, 'GB', 'Fermanagh'),
(1247, 'GB', 'Larne'),
(1248, 'GB', 'Limavady'),
(1249, 'GB', 'Lisburn'),
(1250, 'GB', 'Derry'),
(1251, 'GB', 'Magherafelt'),
(1252, 'GB', 'Moyle'),
(1253, 'GB', 'Newry and Mourne'),
(1254, 'GB', 'Newtownabbey'),
(1255, 'GB', 'North Down'),
(1256, 'GB', 'Omagh'),
(1257, 'GB', 'Strabane'),
(1258, 'GB', 'Aberdeen City'),
(1259, 'GB', 'Aberdeenshire'),
(1260, 'GB', 'Angus'),
(1261, 'GB', 'Argyll and Bute'),
(1262, 'GB', 'Scottish Borders, The'),
(1263, 'GB', 'Clackmannanshire'),
(1264, 'GB', 'Dumfries and Galloway'),
(1265, 'GB', 'Dundee City'),
(1266, 'GB', 'East Ayrshire'),
(1267, 'GB', 'East Dunbartonshire'),
(1268, 'GB', 'East Lothian'),
(1269, 'GB', 'East Renfrewshire'),
(1270, 'GB', 'Edinburgh, City of'),
(1271, 'GB', 'Falkirk'),
(1272, 'GB', 'Fife'),
(1273, 'GB', 'Glasgow City'),
(1274, 'GB', 'Highland'),
(1275, 'GB', 'Inverclyde'),
(1276, 'GB', 'Midlothian'),
(1277, 'GB', 'Moray'),
(1278, 'GB', 'North Ayrshire'),
(1279, 'GB', 'North Lanarkshire'),
(1280, 'GB', 'Orkney'),
(1281, 'GB', 'Perth and Kinross'),
(1282, 'GB', 'Renfrewshire'),
(1283, 'GB', 'Shetland Is.'),
(1284, 'GB', 'S. Ayrshire'),
(1285, 'GB', 'S. Lanarkshire'),
(1286, 'GB', 'Stirling'),
(1287, 'GB', 'West Dunbartonshire'),
(1288, 'GB', 'Eilean Siar'),
(1289, 'GB', 'West Lothian'),
(1290, 'GB', 'Isle of Anglesey'),
(1291, 'GB', 'Blaenau Gwent'),
(1292, 'GB', 'Bridgend'),
(1293, 'GB', 'Caerphilly'),
(1294, 'GB', 'Cardiff'),
(1295, 'GB', 'Ceredigion'),
(1296, 'GB', 'Carmarthenshire'),
(1297, 'GB', 'Conwy'),
(1298, 'GB', 'Denbighshire'),
(1299, 'GB', 'Flintshire'),
(1300, 'GB', 'Gwynedd'),
(1301, 'GB', 'Merthyr Tydfil'),
(1302, 'GB', 'Monmouthshire'),
(1303, 'GB', 'Neath Port Talbot'),
(1304, 'GB', 'Newport'),
(1305, 'GB', 'Pembrokeshire'),
(1306, 'GB', 'Powys'),
(1307, 'GB', 'Rhondda Cynon Taff'),
(1308, 'GB', 'Swansea'),
(1309, 'GB', 'Torfaen'),
(1310, 'GB', 'Vale of Glamorgan, The'),
(1311, 'GB', 'Wrexham'),
(1312, 'GD', 'St. Andrew'),
(1313, 'GD', 'St. David'),
(1314, 'GD', 'St. George'),
(1315, 'GD', 'St. John'),
(1316, 'GD', 'St. Mark'),
(1317, 'GD', 'St. Patrick'),
(1318, 'GE', 'Abashis Raioni'),
(1319, 'GE', 'Abkhazia'),
(1320, 'GE', 'Adigenis Raioni'),
(1321, 'GE', 'Ajaria'),
(1322, 'GE', 'Akhalgoris Raioni'),
(1323, 'GE', 'Akhalk&#39;alak&#39;is Raioni'),
(1324, 'GE', 'Akhalts&#39;ikhis Raioni'),
(1325, 'GE', 'Akhmetis Raioni'),
(1326, 'GE', 'Ambrolauris Raioni'),
(1327, 'GE', 'Aspindzis Raioni'),
(1328, 'GE', 'Baghdat&#39;is Raioni'),
(1329, 'GE', 'Bolnisis Raioni'),
(1330, 'GE', 'Borjomis Raioni'),
(1331, 'GE', 'Chiat&#39;ura'),
(1332, 'GE', 'Ch&#39;khorotsqus Raioni'),
(1333, 'GE', 'Ch&#39;okhatauris Raioni'),
(1334, 'GE', 'Dedop&#39;listsqaros Raioni'),
(1335, 'GE', 'Dmanisis Raioni'),
(1336, 'GE', 'Dushet&#39;is Raioni'),
(1337, 'GE', 'Gardabanis Raioni'),
(1338, 'GE', 'Gori'),
(1339, 'GE', 'Goris Raioni'),
(1340, 'GE', 'Gurjaanis Raioni'),
(1341, 'GE', 'Javis Raioni'),
(1342, 'GE', 'K&#39;arelis Raioni'),
(1343, 'GE', 'Kaspis Raioni'),
(1344, 'GE', 'Kharagaulis Raioni'),
(1345, 'GE', 'Khashuris Raioni'),
(1346, 'GE', 'Khobis Raioni'),
(1347, 'GE', 'Khonis Raioni'),
(1348, 'GE', 'K&#39;ut&#39;aisi'),
(1349, 'GE', 'Lagodekhis Raioni'),
(1350, 'GE', 'Lanch&#39;khut&#39;is Raioni'),
(1351, 'GE', 'Lentekhis Raioni'),
(1352, 'GE', 'Marneulis Raioni'),
(1353, 'GE', 'Martvilis Raioni'),
(1354, 'GE', 'Mestiis Raioni'),
(1355, 'GE', 'Mts&#39;khet&#39;is Raioni'),
(1356, 'GE', 'Ninotsmindis Raioni'),
(1357, 'GE', 'Onis Raioni'),
(1358, 'GE', 'Ozurget&#39;is Raioni'),
(1359, 'GE', 'P&#39;ot&#39;i'),
(1360, 'GE', 'Qazbegis Raioni'),
(1361, 'GE', 'Qvarlis Raioni'),
(1362, 'GE', 'Rust&#39;avi'),
(1363, 'GE', 'Sach&#39;kheris Raioni'),
(1364, 'GE', 'Sagarejos Raioni'),
(1365, 'GE', 'Samtrediis Raioni'),
(1366, 'GE', 'Senakis Raioni'),
(1367, 'GE', 'Sighnaghis Raioni'),
(1368, 'GE', 'T&#39;bilisi'),
(1369, 'GE', 'T&#39;elavis Raioni'),
(1370, 'GE', 'T&#39;erjolis Raioni'),
(1371, 'GE', 'T&#39;et&#39;ritsqaros Raioni'),
(1372, 'GE', 'T&#39;ianet&#39;is Raioni'),
(1373, 'GE', 'Tqibuli'),
(1374, 'GE', 'Ts&#39;ageris Raioni'),
(1375, 'GE', 'Tsalenjikhis Raioni'),
(1376, 'GE', 'Tsalkis Raioni'),
(1377, 'GE', 'Tsqaltubo'),
(1378, 'GE', 'Vanis Raioni'),
(1379, 'GE', 'Zestap&#39;onis Raioni'),
(1380, 'GE', 'Zugdidi'),
(1381, 'GE', 'Zugdidis Raioni'),
(1382, 'GH', 'Greater Accra'),
(1383, 'GH', 'Ashanti'),
(1384, 'GH', 'Brong-Ahafo'),
(1385, 'GH', 'Central'),
(1386, 'GH', 'Eastern'),
(1387, 'GH', 'N.'),
(1388, 'GH', 'Volta'),
(1389, 'GH', 'W.'),
(1390, 'GH', 'Upper East'),
(1391, 'GH', 'Upper West'),
(1392, 'GL', 'Nordgronland'),
(1393, 'GL', 'Ostgronland'),
(1394, 'GL', 'Vestgronland'),
(1395, 'GM', 'Banjul'),
(1396, 'GM', 'Lower River'),
(1397, 'GM', 'MacCarthy Is.'),
(1398, 'GM', 'Upper River'),
(1399, 'GM', 'W.'),
(1400, 'GM', 'North Bank'),
(1401, 'GN', 'Beyla'),
(1402, 'GN', 'Boffa'),
(1403, 'GN', 'Boke'),
(1404, 'GN', 'Conakry'),
(1405, 'GN', 'Dabola'),
(1406, 'GN', 'Dalaba'),
(1407, 'GN', 'Dinguiraye'),
(1408, 'GN', 'Faranah'),
(1409, 'GN', 'Forecariah'),
(1410, 'GN', 'Fria'),
(1411, 'GN', 'Gaoual'),
(1412, 'GN', 'Gueckedou'),
(1413, 'GN', 'Kerouane'),
(1414, 'GN', 'Kindia'),
(1415, 'GN', 'Kissidougou'),
(1416, 'GN', 'Koundara'),
(1417, 'GN', 'Kouroussa'),
(1418, 'GN', 'Macenta'),
(1419, 'GN', 'Mali'),
(1420, 'GN', 'Mamou'),
(1421, 'GN', 'Pita'),
(1422, 'GN', 'Telimele'),
(1423, 'GN', 'Tougue'),
(1424, 'GN', 'Yomou'),
(1425, 'GN', 'Coyah'),
(1426, 'GN', 'Dubreka'),
(1427, 'GN', 'Kankan'),
(1428, 'GN', 'Koubia'),
(1429, 'GN', 'Labe'),
(1430, 'GN', 'Lelouma'),
(1431, 'GN', 'Lola'),
(1432, 'GN', 'Mandiana'),
(1433, 'GN', 'Nzerekore'),
(1434, 'GN', 'Siguiri'),
(1435, 'GQ', 'Annobon'),
(1436, 'GQ', 'Bioko Norte'),
(1437, 'GQ', 'Bioko Sur'),
(1438, 'GQ', 'Centro Sur'),
(1439, 'GQ', 'Kie-Ntem'),
(1440, 'GQ', 'Litoral'),
(1441, 'GQ', 'Wele-Nzas'),
(1442, 'GR', 'Evros'),
(1443, 'GR', 'Rodos'),
(1444, 'GR', 'Rhodes'),
(1445, 'GR', 'Tilos'),
(1446, 'GR', 'Kos'),
(1447, 'GR', 'Kalymnos'),
(1448, 'GR', 'Karpathos'),
(1449, 'GR', 'Leros'),
(1450, 'GR', 'Patmos'),
(1451, 'GR', 'Lipsi'),
(1452, 'GR', 'Nissiros'),
(1453, 'GR', 'Kastelorizo'),
(1454, 'GR', 'Symi'),
(1455, 'GR', 'Halki'),
(1456, 'GR', 'Amorgos'),
(1457, 'GR', 'Santorini'),
(1458, 'GR', 'Paros'),
(1459, 'GR', 'Siros'),
(1460, 'GR', 'Mikonos'),
(1461, 'GR', 'Tinos'),
(1462, 'GR', 'Andros'),
(1463, 'GR', 'Naxos'),
(1464, 'GR', 'Hios'),
(1465, 'GR', 'Lesvos'),
(1466, 'GR', 'Ikaria'),
(1467, 'GR', 'Samos'),
(1468, 'GR', 'Kalinos'),
(1469, 'GR', 'Nissilos'),
(1470, 'GR', 'Karpothos'),
(1471, 'GR', 'Kassos'),
(1472, 'GR', 'Eosos'),
(1473, 'GR', 'Astipalea'),
(1474, 'GR', 'Kea'),
(1475, 'GR', 'Kithnos'),
(1476, 'GR', 'Serisos'),
(1477, 'GR', 'Milos'),
(1478, 'GR', 'Creta'),
(1479, 'GR', 'Crete'),
(1480, 'GR', 'Kithira'),
(1481, 'GR', 'Salamina'),
(1482, 'GR', 'Egina'),
(1483, 'GR', 'Spetsas'),
(1484, 'GR', 'Idra'),
(1485, 'GR', 'Poros'),
(1486, 'GR', 'Skiros'),
(1487, 'GR', 'Skopolos'),
(1488, 'GR', 'Skiathos'),
(1489, 'GR', 'Kalonissos'),
(1490, 'GR', 'Limnos'),
(1491, 'GR', 'Samothraki'),
(1492, 'GR', 'Thasos'),
(1493, 'GR', 'Kefalonia'),
(1494, 'GR', 'Ithaki'),
(1495, 'GR', 'Lefkaea'),
(1496, 'GR', 'Corfu'),
(1497, 'GR', 'Paxi'),
(1498, 'GR', 'Sifnos'),
(1499, 'GR', 'Rodhopi'),
(1500, 'GR', 'Xanthi'),
(1501, 'GR', 'Drama'),
(1502, 'GR', 'Serrai'),
(1503, 'GR', 'Kilkis'),
(1504, 'GR', 'Pella'),
(1505, 'GR', 'Florina'),
(1506, 'GR', 'Kastoria'),
(1507, 'GR', 'Grevena'),
(1508, 'GR', 'Kozani'),
(1509, 'GR', 'Imathia'),
(1510, 'GR', 'Thessaloniki'),
(1511, 'GR', 'Kavala'),
(1512, 'GR', 'Khalkidhiki'),
(1513, 'GR', 'Pieria'),
(1514, 'GR', 'Ioannina'),
(1515, 'GR', 'Thesprotia'),
(1516, 'GR', 'Preveza'),
(1517, 'GR', 'Arta'),
(1518, 'GR', 'Larisa'),
(1519, 'GR', 'Trikala'),
(1520, 'GR', 'Kardhitsa'),
(1521, 'GR', 'Magnisia'),
(1522, 'GR', 'Kerkira'),
(1523, 'GR', 'Levkas'),
(1524, 'GR', 'Kefallinia'),
(1525, 'GR', 'Zakinthos'),
(1526, 'GR', 'Fthiotis'),
(1527, 'GR', 'Evritania'),
(1528, 'GR', 'Aitolia kai Akarnania'),
(1529, 'GR', 'Fokis'),
(1530, 'GR', 'Voiotia'),
(1531, 'GR', 'Evvoia'),
(1532, 'GR', 'Attiki'),
(1533, 'GR', 'Argolis'),
(1534, 'GR', 'Korinthia'),
(1535, 'GR', 'Akhaia'),
(1536, 'GR', 'Ilia'),
(1537, 'GR', 'Messinia'),
(1538, 'GR', 'Arkadhia'),
(1539, 'GR', 'Lakonia'),
(1540, 'GR', 'Khania'),
(1541, 'GR', 'Rethimni'),
(1542, 'GR', 'Iraklion'),
(1543, 'GR', 'Lasithi'),
(1544, 'GR', 'Dhodhekanisos'),
(1545, 'GR', 'Samos'),
(1546, 'GR', 'Kikladhes'),
(1547, 'GR', 'Khios'),
(1548, 'GR', 'Lesvos'),
(1549, 'GT', 'Alta Verapaz'),
(1550, 'GT', 'Baja Verapaz'),
(1551, 'GT', 'Chimaltenango'),
(1552, 'GT', 'Chiquimula'),
(1553, 'GT', 'El Progreso'),
(1554, 'GT', 'Escuintla'),
(1555, 'GT', 'Guatemala'),
(1556, 'GT', 'Huehuetenango'),
(1557, 'GT', 'Izabal'),
(1558, 'GT', 'Jalapa'),
(1559, 'GT', 'Jutiapa'),
(1560, 'GT', 'Peten'),
(1561, 'GT', 'Quetzaltenango'),
(1562, 'GT', 'Quiche'),
(1563, 'GT', 'Retalhuleu'),
(1564, 'GT', 'Sacatepequez'),
(1565, 'GT', 'San Marcos'),
(1566, 'GT', 'Santa Rosa'),
(1567, 'GT', 'Solola'),
(1568, 'GT', 'Suchitepequez'),
(1569, 'GT', 'Totonicapan'),
(1570, 'GT', 'Zacapa'),
(1571, 'GW', 'Bafata'),
(1572, 'GW', 'Quinara'),
(1573, 'GW', 'Oio'),
(1574, 'GW', 'Bolama'),
(1575, 'GW', 'Cacheu'),
(1576, 'GW', 'Tombali'),
(1577, 'GW', 'Gabu'),
(1578, 'GW', 'Bissau'),
(1579, 'GW', 'Biombo'),
(1580, 'GY', 'Barima-Waini'),
(1581, 'GY', 'Cuyuni-Mazaruni'),
(1582, 'GY', 'Demerara-Mahaica'),
(1583, 'GY', 'East Berbice-Corentyne'),
(1584, 'GY', 'Essequibo Is.-West Demerara'),
(1585, 'GY', 'Mahaica-Berbice'),
(1586, 'GY', 'Pomeroon-Supenaam'),
(1587, 'GY', 'Potaro-Siparuni'),
(1588, 'GY', 'Upper Demerara-Berbice'),
(1589, 'GY', 'Upper Takutu-Upper Essequibo'),
(1590, 'HN', 'Atlantida'),
(1591, 'HN', 'Choluteca'),
(1592, 'HN', 'Colon'),
(1593, 'HN', 'Comayagua'),
(1594, 'HN', 'Copan'),
(1595, 'HN', 'Cortes'),
(1596, 'HN', 'El Paraiso'),
(1597, 'HN', 'Francisco Morazan'),
(1598, 'HN', 'Gracias a Dios'),
(1599, 'HN', 'Intibuca'),
(1600, 'HN', 'Islas de la Bahia'),
(1601, 'HN', 'La Paz'),
(1602, 'HN', 'Lempira'),
(1603, 'HN', 'Ocotepeque'),
(1604, 'HN', 'Olancho'),
(1605, 'HN', 'Santa Barbara'),
(1606, 'HN', 'Valle'),
(1607, 'HN', 'Yoro'),
(1608, 'HR', 'Bjelovarsko-Bilogorska'),
(1609, 'HR', 'Brodsko-Posavska'),
(1610, 'HR', 'Dubrovacko-Neretvanska'),
(1611, 'HR', 'Istarska'),
(1612, 'HR', 'Karlovacka'),
(1613, 'HR', 'Koprivnicko-Krizevacka'),
(1614, 'HR', 'Krapinsko-Zagorska'),
(1615, 'HR', 'Licko-Senjska'),
(1616, 'HR', 'Medimurska'),
(1617, 'HR', 'Osjecko-Baranjska'),
(1618, 'HR', 'Pozesko-Slavonska'),
(1619, 'HR', 'Primorsko-Goranska'),
(1620, 'HR', 'Sibensko-Kninska'),
(1621, 'HR', 'Sisacko-Moslavacka'),
(1622, 'HR', 'Splitsko-Dalmatinska'),
(1623, 'HR', 'Varazdinska'),
(1624, 'HR', 'Viroviticko-Podravska'),
(1625, 'HR', 'Vukovarsko-Srijemska'),
(1626, 'HR', 'Zadarska'),
(1627, 'HR', 'Zagrebacka'),
(1628, 'HR', 'Grad Zagreb'),
(1629, 'HT', 'Nord-Ouest'),
(1630, 'HT', 'Artibonite'),
(1631, 'HT', 'Centre'),
(1632, 'HT', 'Grand&#39; Anse'),
(1633, 'HT', 'Nord'),
(1634, 'HT', 'Nord-Est'),
(1635, 'HT', 'Ouest'),
(1636, 'HT', 'Sud'),
(1637, 'HT', 'Sud-Est'),
(1638, 'HU', 'Bacs-Kiskun'),
(1639, 'HU', 'Baranya'),
(1640, 'HU', 'Bekes'),
(1641, 'HU', 'Borsod-Abauj-Zemplen'),
(1642, 'HU', 'Budapest'),
(1643, 'HU', 'Csongrad'),
(1644, 'HU', 'Debrecen'),
(1645, 'HU', 'Fejer'),
(1646, 'HU', 'Gyor-Moson-Sopron'),
(1647, 'HU', 'Hajdu-Bihar'),
(1648, 'HU', 'Heves'),
(1649, 'HU', 'Komarom-Esztergom'),
(1650, 'HU', 'Miskolc'),
(1651, 'HU', 'Nograd'),
(1652, 'HU', 'Pecs'),
(1653, 'HU', 'Pest'),
(1654, 'HU', 'Somogy'),
(1655, 'HU', 'Szabolcs-Szatmar-Bereg'),
(1656, 'HU', 'Szeged'),
(1657, 'HU', 'Jasz-Nagykun-Szolnok'),
(1658, 'HU', 'Tolna'),
(1659, 'HU', 'Vas'),
(1660, 'HU', 'Veszprem'),
(1661, 'HU', 'Zala'),
(1662, 'HU', 'Gyor'),
(1663, 'HU', 'Bekescsaba'),
(1664, 'HU', 'Dunaujvaros'),
(1665, 'HU', 'Eger'),
(1666, 'HU', 'Hodmezovasarhely'),
(1667, 'HU', 'Kaposvar'),
(1668, 'HU', 'Kecskemet'),
(1669, 'HU', 'Nagykanizsa'),
(1670, 'HU', 'Nyiregyhaza'),
(1671, 'HU', 'Sopron'),
(1672, 'HU', 'Szekesfehervar'),
(1673, 'HU', 'Szolnok'),
(1674, 'HU', 'Szombathely'),
(1675, 'HU', 'Tatabanya'),
(1676, 'HU', 'Veszprem'),
(1677, 'HU', 'Zalaegerszeg'),
(1678, 'ID', 'Aceh'),
(1679, 'ID', 'Bali'),
(1680, 'ID', 'Bengkulu'),
(1681, 'ID', 'Jakarta Raya'),
(1682, 'ID', 'Jambi'),
(1683, 'ID', 'Jawa Tengah'),
(1684, 'ID', 'Jawa Timur'),
(1685, 'ID', 'Papua'),
(1686, 'ID', 'Yogyakarta'),
(1687, 'ID', 'Kalimantan Barat'),
(1688, 'ID', 'Kalimantan Selatan'),
(1689, 'ID', 'Kalimantan Tengah'),
(1690, 'ID', 'Kalimantan Timur'),
(1691, 'ID', 'Lampung'),
(1692, 'ID', 'Nusa Tenggara Barat'),
(1693, 'ID', 'Nusa Tenggara Timur'),
(1694, 'ID', 'Riau'),
(1695, 'ID', 'Sulawesi Selatan'),
(1696, 'ID', 'Sulawesi Tengah'),
(1697, 'ID', 'Sulawesi Tenggara'),
(1698, 'ID', 'Sumatera Barat'),
(1699, 'ID', 'Sumatera Utara'),
(1700, 'ID', 'Timor Timur'),
(1701, 'ID', 'Maluku'),
(1702, 'ID', 'Maluku Utara'),
(1703, 'ID', 'Jawa Barat'),
(1704, 'ID', 'Sulawesi Utara'),
(1705, 'ID', 'Sumatera Selatan'),
(1706, 'ID', 'Banten'),
(1707, 'ID', 'Gorontalo'),
(1708, 'ID', 'Kepulauan Bangka Belitung'),
(1709, 'IE', 'Carlow'),
(1710, 'IE', 'Cavan'),
(1711, 'IE', 'Clare'),
(1712, 'IE', 'Cork'),
(1713, 'IE', 'Donegal'),
(1714, 'IE', 'Dublin'),
(1715, 'IE', 'Galway'),
(1716, 'IE', 'Kerry'),
(1717, 'IE', 'Kildare'),
(1718, 'IE', 'Kilkenny'),
(1719, 'IE', 'Leitrim'),
(1720, 'IE', 'Laois'),
(1721, 'IE', 'Limerick'),
(1722, 'IE', 'Longford'),
(1723, 'IE', 'Louth'),
(1724, 'IE', 'Mayo'),
(1725, 'IE', 'Meath'),
(1726, 'IE', 'Monaghan'),
(1727, 'IE', 'Offaly'),
(1728, 'IE', 'Roscommon'),
(1729, 'IE', 'Sligo'),
(1730, 'IE', 'Tipperary'),
(1731, 'IE', 'Waterford'),
(1732, 'IE', 'Westmeath'),
(1733, 'IE', 'Wexford'),
(1734, 'IE', 'Wicklow'),
(1735, 'IL', 'HaDarom'),
(1736, 'IL', 'HaMerkaz'),
(1737, 'IL', 'HaZafon'),
(1738, 'IL', 'Hefa'),
(1739, 'IL', 'Tel Aviv'),
(1740, 'IL', 'Yerushalayim'),
(1741, 'IN', 'Andaman and Nicobar Is.'),
(1742, 'IN', 'Andhra Pradesh'),
(1743, 'IN', 'Assam'),
(1744, 'IN', 'Chandigarh'),
(1745, 'IN', 'Dadra and Nagar Haveli'),
(1746, 'IN', 'Delhi'),
(1747, 'IN', 'Gujarat'),
(1748, 'IN', 'Haryana'),
(1749, 'IN', 'Himachal Pradesh'),
(1750, 'IN', 'Jammu and Kashmir'),
(1751, 'IN', 'Kerala'),
(1752, 'IN', 'Lakshadweep'),
(1753, 'IN', 'Maharashtra'),
(1754, 'IN', 'Manipur'),
(1755, 'IN', 'Meghalaya'),
(1756, 'IN', 'Karnataka'),
(1757, 'IN', 'Nagaland'),
(1758, 'IN', 'Orissa'),
(1759, 'IN', 'Pondicherry'),
(1760, 'IN', 'Punjab'),
(1761, 'IN', 'Rajasthan'),
(1762, 'IN', 'Tamil Nadu'),
(1763, 'IN', 'Tripura'),
(1764, 'IN', 'West Bengal'),
(1765, 'IN', 'Sikkim'),
(1766, 'IN', 'Arunachal Pradesh'),
(1767, 'IN', 'Mizoram'),
(1768, 'IN', 'Daman and Diu'),
(1769, 'IN', 'Goa'),
(1770, 'IN', 'Bihar'),
(1771, 'IN', 'Madhya Pradesh'),
(1772, 'IN', 'Uttar Pradesh'),
(1773, 'IN', 'Chhattisgarh'),
(1774, 'IN', 'Jharkhand'),
(1775, 'IN', 'Uttaranchal'),
(1776, 'IQ', 'Al Anbar'),
(1777, 'IQ', 'Al Basrah'),
(1778, 'IQ', 'Al Muthanna'),
(1779, 'IQ', 'Al Qadisiyah'),
(1780, 'IQ', 'As Sulaymaniyah'),
(1781, 'IQ', 'Babil'),
(1782, 'IQ', 'Baghdad'),
(1783, 'IQ', 'Dahuk'),
(1784, 'IQ', 'Dhi Qar'),
(1785, 'IQ', 'Diyala'),
(1786, 'IQ', 'Arbil'),
(1787, 'IQ', 'Karbala&#39;'),
(1788, 'IQ', 'At Ta&#39;mim'),
(1789, 'IQ', 'Maysan'),
(1790, 'IQ', 'Ninawa'),
(1791, 'IQ', 'Wasit'),
(1792, 'IQ', 'An Najaf'),
(1793, 'IQ', 'Salah ad Din'),
(1794, 'IR', 'Azarbayjan-e Bakhtari'),
(1795, 'IR', 'Azarbayjan-e Khavari'),
(1796, 'IR', 'Chahar Mahall va Bakhtiari'),
(1797, 'IR', 'Sistan va Baluchestan'),
(1798, 'IR', 'Kohkiluyeh va Buyer Ahmadi'),
(1799, 'IR', 'Fars'),
(1800, 'IR', 'Gilan'),
(1801, 'IR', 'Hamadan'),
(1802, 'IR', 'Ilam'),
(1803, 'IR', 'Hormozgan'),
(1804, 'IR', 'Bakhtaran'),
(1805, 'IR', 'Khuzestan'),
(1806, 'IR', 'Kordestan'),
(1807, 'IR', 'Bushehr'),
(1808, 'IR', 'Lorestan'),
(1809, 'IR', 'Semnan'),
(1810, 'IR', 'Tehran'),
(1811, 'IR', 'Esfahan'),
(1812, 'IR', 'Kerman'),
(1813, 'IR', 'Khorasan'),
(1814, 'IR', 'Yazd'),
(1815, 'IR', 'Markazi'),
(1816, 'IR', 'Mazandaran'),
(1817, 'IR', 'Zanjan'),
(1818, 'IR', 'Golestan'),
(1819, 'IR', 'Qazvin'),
(1820, 'IR', 'Qom'),
(1821, 'IS', 'Akranes'),
(1822, 'IS', 'Akureyri'),
(1823, 'IS', 'Arnessysla'),
(1824, 'IS', 'Austur-Bardastrandarsysla'),
(1825, 'IS', 'Austur-Hunavatnssysla'),
(1826, 'IS', 'Austur-Skaftafellssysla'),
(1827, 'IS', 'Borgarfjardarsysla'),
(1828, 'IS', 'Dalasysla'),
(1829, 'IS', 'Eyjafjardarsysla'),
(1830, 'IS', 'Gullbringusysla'),
(1831, 'IS', 'Hafnarfjordur'),
(1832, 'IS', 'Husavik'),
(1833, 'IS', 'Isafjordur'),
(1834, 'IS', 'Keflavik'),
(1835, 'IS', 'Kjosarsysla'),
(1836, 'IS', 'Kopavogur'),
(1837, 'IS', 'Myrasysla'),
(1838, 'IS', 'Neskaupstadur'),
(1839, 'IS', 'Nordur-Isafjardarsysla'),
(1840, 'IS', 'Nordur-Mulasysla'),
(1841, 'IS', 'Nordur-Tingeyjarsysla'),
(1842, 'IS', 'Olafsfjordur'),
(1843, 'IS', 'Rangarvallasysla'),
(1844, 'IS', 'Reykjavik'),
(1845, 'IS', 'Saudarkrokur'),
(1846, 'IS', 'Seydisfjordur'),
(1847, 'IS', 'Siglufjordur'),
(1848, 'IS', 'Skagafjardarsysla'),
(1849, 'IS', 'Snafellsnes- og Hnappadalssysla'),
(1850, 'IS', 'Strandasysla'),
(1851, 'IS', 'Sudur-Mulasysla'),
(1852, 'IS', 'Sudur-Tingeyjarsysla'),
(1853, 'IS', 'Vestmannaeyjar'),
(1854, 'IS', 'Vestur-Bardastrandarsysla'),
(1855, 'IS', 'Vestur-Hunavatnssysla'),
(1856, 'IS', 'Vestur-Isafjardarsysla'),
(1857, 'IS', 'Vestur-Skaftafellssysla'),
(1858, 'IT', 'Abruzzo'),
(1859, 'IT', 'Basilicata'),
(1860, 'IT', 'Calabria'),
(1861, 'IT', 'Campania'),
(1862, 'IT', 'Emilia-Romagna'),
(1863, 'IT', 'Friuli-Venezia Giulia'),
(1864, 'IT', 'Lazio'),
(1865, 'IT', 'Liguria'),
(1866, 'IT', 'Lombardia'),
(1867, 'IT', 'Marche'),
(1868, 'IT', 'Molise'),
(1869, 'IT', 'Piemonte'),
(1870, 'IT', 'Puglia'),
(1871, 'IT', 'Sardegna'),
(1872, 'IT', 'Sicilia'),
(1873, 'IT', 'Toscana'),
(1874, 'IT', 'Trentino-Alto Adige'),
(1875, 'IT', 'Umbria'),
(1876, 'IT', 'Valle d&#39;Aosta'),
(1877, 'IT', 'Veneto'),
(1878, 'JM', 'Clarendon'),
(1879, 'JM', 'Hanover'),
(1880, 'JM', 'Manchester'),
(1881, 'JM', 'Portland'),
(1882, 'JM', 'St. Andrew'),
(1883, 'JM', 'St. Ann'),
(1884, 'JM', 'St. Catherine'),
(1885, 'JM', 'St. Elizabeth'),
(1886, 'JM', 'St. James'),
(1887, 'JM', 'St. Mary'),
(1888, 'JM', 'St. Thomas'),
(1889, 'JM', 'Trelawny'),
(1890, 'JM', 'Westmoreland'),
(1891, 'JM', 'Kingston'),
(1892, 'JO', 'Al Balqa&#39;'),
(1893, 'JO', 'Ma'),
(1894, 'JO', 'Al Karak'),
(1895, 'JO', 'Al Mafraq'),
(1896, 'JO', 'At Tafilah'),
(1897, 'JO', 'Az Zarqa'),
(1898, 'JO', 'Irbid'),
(1899, 'JP', 'Aichi'),
(1900, 'JP', 'Akita'),
(1901, 'JP', 'Aomori'),
(1902, 'JP', 'Chiba'),
(1903, 'JP', 'Ehime'),
(1904, 'JP', 'Fukui'),
(1905, 'JP', 'Fukuoka'),
(1906, 'JP', 'Fukushima'),
(1907, 'JP', 'Gifu'),
(1908, 'JP', 'Gumma'),
(1909, 'JP', 'Hiroshima'),
(1910, 'JP', 'Hokkaido'),
(1911, 'JP', 'Hyogo'),
(1912, 'JP', 'Ibaraki'),
(1913, 'JP', 'Ishikawa'),
(1914, 'JP', 'Iwate'),
(1915, 'JP', 'Kagawa'),
(1916, 'JP', 'Kagoshima'),
(1917, 'JP', 'Kanagawa'),
(1918, 'JP', 'Kochi'),
(1919, 'JP', 'Kumamoto'),
(1920, 'JP', 'Kyoto'),
(1921, 'JP', 'Mie'),
(1922, 'JP', 'Miyagi'),
(1923, 'JP', 'Miyazaki'),
(1924, 'JP', 'Nagano'),
(1925, 'JP', 'Nagasaki'),
(1926, 'JP', 'Nara'),
(1927, 'JP', 'Niigata'),
(1928, 'JP', 'Oita'),
(1929, 'JP', 'Okayama'),
(1930, 'JP', 'Osaka'),
(1931, 'JP', 'Saga'),
(1932, 'JP', 'Saitama'),
(1933, 'JP', 'Shiga'),
(1934, 'JP', 'Shimane'),
(1935, 'JP', 'Shizuoka'),
(1936, 'JP', 'Tochigi'),
(1937, 'JP', 'Tokushima'),
(1938, 'JP', 'Tokyo'),
(1939, 'JP', 'Tottori'),
(1940, 'JP', 'Toyama'),
(1941, 'JP', 'Wakayama'),
(1942, 'JP', 'Yamagata'),
(1943, 'JP', 'Yamaguchi'),
(1944, 'JP', 'Yamanashi'),
(1945, 'JP', 'Okinawa'),
(1946, 'KE', 'Central'),
(1947, 'KE', 'Coast'),
(1948, 'KE', 'Eastern'),
(1949, 'KE', 'Nairobi Area'),
(1950, 'KE', 'North-Eastern'),
(1951, 'KE', 'Nyanza'),
(1952, 'KE', 'Rift Valley'),
(1953, 'KE', 'W.'),
(1954, 'KG', 'Batken'),
(1955, 'KH', 'Kampong Cham'),
(1956, 'KH', 'Kampong Chhnang'),
(1957, 'KH', 'Kampong Spoe'),
(1958, 'KH', 'Kampong Thum'),
(1959, 'KH', 'Kampot'),
(1960, 'KH', 'Kandal'),
(1961, 'KH', 'Kaoh Kong'),
(1962, 'KH', 'Kracheh'),
(1963, 'KH', 'Mondol Kiri'),
(1964, 'KH', 'Phnum Penh'),
(1965, 'KH', 'Pouthisat'),
(1966, 'KH', 'Preah Vihear'),
(1967, 'KH', 'Prey Veng'),
(1968, 'KH', 'Rotanokiri'),
(1969, 'KH', 'Siemreab-Otdar Meanchey'),
(1970, 'KH', 'Stoeng Treng'),
(1971, 'KH', 'Svay Rieng'),
(1972, 'KH', 'Takev'),
(1973, 'KH', 'Batdambang'),
(1974, 'KH', 'Pailin'),
(1975, 'KI', 'Gilbert Is.'),
(1976, 'KI', 'Line Is.'),
(1977, 'KI', 'Phoenix Is.'),
(1978, 'KM', 'Anjouan'),
(1979, 'KM', 'Grande Comore'),
(1980, 'KM', 'Moheli'),
(1981, 'KN', 'Christ Church Nichola Town'),
(1982, 'KN', 'St. Anne Sandy Point'),
(1983, 'KN', 'St. George Basseterre'),
(1984, 'KN', 'St. George Gingerland'),
(1985, 'KN', 'St. James Windward'),
(1986, 'KN', 'St. John Capisterre'),
(1987, 'KN', 'St. John Figtree'),
(1988, 'KN', 'St. Mary Cayon'),
(1989, 'KN', 'St. Paul Capisterre'),
(1990, 'KN', 'St. Paul Charlestown'),
(1991, 'KN', 'St. Peter Basseterre'),
(1992, 'KN', 'St. Thomas Lowland'),
(1993, 'KN', 'St. Thomas Middle Is.'),
(1994, 'KN', 'Trinity Palmetto Point'),
(1995, 'KP', 'Chagang-do'),
(1996, 'KP', 'Hamgyong-namdo'),
(1997, 'KP', 'Hwanghae-namdo'),
(1998, 'KP', 'Hwanghae-bukto'),
(1999, 'KP', 'Kaesong-si'),
(2000, 'KP', 'Kangwon-do'),
(2001, 'KP', 'P&#39;yongan-bukto'),
(2002, 'KP', 'P&#39;yongyang-si');
INSERT INTO `joomla_jomres_regions` (`id`, `countrycode`, `regionname`) VALUES
(2003, 'KP', 'Yanggang-do'),
(2004, 'KP', 'Namp&#39;o-si'),
(2005, 'KP', 'P&#39;yongan-namdo'),
(2006, 'KP', 'Hamgyong-bukto'),
(2007, 'KP', 'Najin Sonbong-si'),
(2008, 'KR', 'Cheju-do'),
(2009, 'KR', 'Cholla-bukto'),
(2010, 'KR', 'Ch&#39;ungch&#39;ong-bukto'),
(2011, 'KR', 'Kangwon-do'),
(2012, 'KR', 'Pusan-jikhalsi'),
(2013, 'KR', 'Soul-t&#39;ukpyolsi'),
(2014, 'KR', 'Inch&#39;on-jikhalsi'),
(2015, 'KR', 'Kyonggi-do'),
(2016, 'KR', 'Kyongsang-bukto'),
(2017, 'KR', 'Taegu-jikhalsi'),
(2018, 'KR', 'Cholla-namdo'),
(2019, 'KR', 'Ch&#39;ungch&#39;ong-namdo'),
(2020, 'KR', 'Kwangju-jikhalsi'),
(2021, 'KR', 'Taejon-jikhalsi'),
(2022, 'KR', 'Kyongsang-namdo'),
(2023, 'KR', 'Ulsan-gwangyoksi'),
(2024, 'KW', 'Al Ahmadi'),
(2025, 'KW', 'Al Kuwayt'),
(2026, 'KW', 'Hawalli'),
(2027, 'KY', 'Creek'),
(2028, 'KY', 'Eastern'),
(2029, 'KY', 'Midland'),
(2030, 'KY', 'S. Town'),
(2031, 'KY', 'Spot Bay'),
(2032, 'KY', 'Stake Bay'),
(2033, 'KY', 'West End'),
(2034, 'KY', 'W.'),
(2035, 'KZ', 'Almaty'),
(2036, 'KZ', 'Almaty City'),
(2037, 'KZ', 'Aqmola'),
(2038, 'KZ', 'AqtÃ¶be'),
(2039, 'KZ', 'Astana'),
(2040, 'KZ', 'Atyrau'),
(2041, 'KZ', 'West Kazakhstan'),
(2042, 'KZ', 'Bayqonyr'),
(2043, 'KZ', 'Mangghystau'),
(2044, 'KZ', 'S. Kazakhstan'),
(2045, 'KZ', 'Pavlodar'),
(2046, 'KZ', 'Qaraghandy'),
(2047, 'KZ', 'Qostanay'),
(2048, 'KZ', 'Qyzylorda'),
(2049, 'KZ', 'East Kazakhstan'),
(2050, 'KZ', 'North Kazakhstan'),
(2051, 'KZ', 'Zhambyl'),
(2052, 'LA', 'Attapu'),
(2053, 'LA', 'Champasak'),
(2054, 'LA', 'Houaphan'),
(2055, 'LA', 'Khammouan'),
(2056, 'LA', 'Louang Namtha'),
(2057, 'LA', 'Louangphrabang'),
(2058, 'LA', 'Oudomxai'),
(2059, 'LA', 'Phongsali'),
(2060, 'LA', 'Saravan'),
(2061, 'LA', 'Savannakhet'),
(2062, 'LA', 'Vientiane'),
(2063, 'LA', 'Xaignabouri'),
(2064, 'LA', 'Xiangkhoang'),
(2065, 'LB', 'Beqaa'),
(2066, 'LB', 'Liban-Nord'),
(2067, 'LB', 'Beyrouth'),
(2068, 'LB', 'Mont-Liban'),
(2069, 'LB', 'Liban-Sud'),
(2070, 'LB', 'Nabatiye'),
(2071, 'LC', 'Anse-la-Raye'),
(2072, 'LC', 'Dauphin'),
(2073, 'LC', 'Castries'),
(2074, 'LC', 'Choiseul'),
(2075, 'LC', 'Dennery'),
(2076, 'LC', 'Gros-Islet'),
(2077, 'LC', 'Laborie'),
(2078, 'LC', 'Micoud'),
(2079, 'LC', 'Soufriere'),
(2080, 'LC', 'Vieux-Fort'),
(2081, 'LC', 'Praslin'),
(2082, 'LI', 'Balzers'),
(2083, 'LI', 'Eschen'),
(2084, 'LI', 'Gamprin'),
(2085, 'LI', 'Mauren'),
(2086, 'LI', 'Planken'),
(2087, 'LI', 'Ruggell'),
(2088, 'LI', 'Schaan'),
(2089, 'LI', 'Schellenberg'),
(2090, 'LI', 'Triesen'),
(2091, 'LI', 'Triesenberg'),
(2092, 'LI', 'Vaduz'),
(2093, 'LK', 'Amparai'),
(2094, 'LK', 'Anuradhapura'),
(2095, 'LK', 'Badulla'),
(2096, 'LK', 'Batticaloa'),
(2097, 'LK', 'Galle'),
(2098, 'LK', 'Hambantota'),
(2099, 'LK', 'Kalutara'),
(2100, 'LK', 'Kandy'),
(2101, 'LK', 'Kegalla'),
(2102, 'LK', 'Kurunegala'),
(2103, 'LK', 'Matale'),
(2104, 'LK', 'Matara'),
(2105, 'LK', 'Moneragala'),
(2106, 'LK', 'Nuwara Eliya'),
(2107, 'LK', 'Polonnaruwa'),
(2108, 'LK', 'Puttalam'),
(2109, 'LK', 'Ratnapura'),
(2110, 'LK', 'Trincomalee'),
(2111, 'LK', 'Colombo'),
(2112, 'LK', 'Gampaha'),
(2113, 'LK', 'Jaffna'),
(2114, 'LK', 'Mannar'),
(2115, 'LK', 'Mullaittivu'),
(2116, 'LK', 'Vavuniya'),
(2117, 'LR', 'Bong'),
(2118, 'LR', 'Grand Jide'),
(2119, 'LR', 'Grand Bassa'),
(2120, 'LR', 'Grand Cape Mount'),
(2121, 'LR', 'Lofa'),
(2122, 'LR', 'Maryland'),
(2123, 'LR', 'Monrovia'),
(2124, 'LR', 'Montserrado'),
(2125, 'LR', 'Nimba'),
(2126, 'LR', 'Sino'),
(2127, 'LS', 'Berea'),
(2128, 'LS', 'Butha-Buthe'),
(2129, 'LS', 'Leribe'),
(2130, 'LS', 'Mafeteng'),
(2131, 'LS', 'Maseru'),
(2132, 'LS', 'Mohales Hoek'),
(2133, 'LS', 'Mokhotlong'),
(2134, 'LS', 'Qachas Nek'),
(2135, 'LS', 'Quthing'),
(2136, 'LS', 'Thaba-Tseka'),
(2137, 'LT', 'Alytaus Apskritis'),
(2138, 'LT', 'Kauno Apskritis'),
(2139, 'LT', 'Klaipedos Apskritis'),
(2140, 'LT', 'Marijampoles Apskritis'),
(2141, 'LT', 'Panevezio Apskritis'),
(2142, 'LT', 'Siauliu Apskritis'),
(2143, 'LT', 'Taurages Apskritis'),
(2144, 'LT', 'Telsiu Apskritis'),
(2145, 'LT', 'Utenos Apskritis'),
(2146, 'LT', 'Vilniaus Apskritis'),
(2147, 'LU', 'Diekirch'),
(2148, 'LU', 'Grevenmacher'),
(2149, 'LU', 'Luxembourg'),
(2150, 'LV', 'Aglona Municipality'),
(2151, 'LV', 'Aizkraukle Municipality'),
(2152, 'LV', 'Aizpute Municipality'),
(2153, 'LV', 'Akniste Municipality'),
(2154, 'LV', 'Aloja Municipality'),
(2155, 'LV', 'Alsunga Municipality'),
(2156, 'LV', 'Aluksne Municipality'),
(2157, 'LV', 'Amata Municipality'),
(2158, 'LV', 'Ape Municipality'),
(2159, 'LV', 'Auce Municipality'),
(2160, 'LV', 'Adazi Municipality'),
(2161, 'LV', 'Babite Municipality'),
(2162, 'LV', 'Baldone Municipality'),
(2163, 'LV', 'Baltinava Municipality'),
(2164, 'LV', 'Balvi Municipality'),
(2165, 'LV', 'Bauska Municipality'),
(2166, 'LV', 'Beverina Municipality'),
(2167, 'LV', 'Broceni Municipality'),
(2168, 'LV', 'Burtnieki Municipality'),
(2169, 'LV', 'Carnikava Municipality'),
(2170, 'LV', 'Cesis Municipality'),
(2171, 'LV', 'Cesvaine Municipality'),
(2172, 'LV', 'Cibla Municipality'),
(2173, 'LV', 'Dagda Municipality'),
(2174, 'LV', 'Daugavpils city'),
(2175, 'LV', 'Daugavpils Municipality'),
(2176, 'LV', 'Dobele Municipality'),
(2177, 'LV', 'Dundaga Municipality'),
(2178, 'LV', 'Durbe Municipality'),
(2179, 'LV', 'Engure Municipality'),
(2180, 'LV', 'Ergli Municipality'),
(2181, 'LV', 'Garkalne Municipality'),
(2182, 'LV', 'Grobina Municipality'),
(2183, 'LV', 'Gulbene Municipality'),
(2184, 'LV', 'Iecava Municipality'),
(2185, 'LV', 'Ikskile Municipality'),
(2186, 'LV', 'Incukalns Municipality'),
(2187, 'LV', 'Ilukste Municipality'),
(2188, 'LV', 'Jaunjelgava Municipality'),
(2189, 'LV', 'Jaunpiebalga Municipality'),
(2190, 'LV', 'Jaunpils Municipality'),
(2191, 'LV', 'Jekabpils city'),
(2192, 'LV', 'Jekabpils Municipality'),
(2193, 'LV', 'Jelgava city'),
(2194, 'LV', 'Jelgava Municipality'),
(2195, 'LV', 'Jurmala city'),
(2196, 'LV', 'Kandava Municipality'),
(2197, 'LV', 'Karsava Municipality'),
(2198, 'LV', 'Koknese Municipality'),
(2199, 'LV', 'Kraslava Municipality'),
(2200, 'LV', 'Krimulda Municipality'),
(2201, 'LV', 'Krustpils Municipality'),
(2202, 'LV', 'Kuldiga Municipality'),
(2203, 'LV', 'Kegums Municipality'),
(2204, 'LV', 'Kekava Municipality'),
(2205, 'LV', 'Lielvarde Municipality'),
(2206, 'LV', 'Liepaja city'),
(2207, 'LV', 'Ligatne Municipality'),
(2208, 'LV', 'Limbazi Municipality'),
(2209, 'LV', 'Livani Municipality'),
(2210, 'LV', 'Lubana Municipality'),
(2211, 'LV', 'Ludza Municipality'),
(2212, 'LV', 'Madona Municipality'),
(2213, 'LV', 'Malpils Municipality'),
(2214, 'LV', 'Marupe Municipality'),
(2215, 'LV', 'Mazsalaca Municipality'),
(2216, 'LV', 'Naukseni Municipality'),
(2217, 'LV', 'Nereta Municipality'),
(2218, 'LV', 'Nica Municipality'),
(2219, 'LV', 'Ogre Municipality'),
(2220, 'LV', 'Olaine Municipality'),
(2221, 'LV', 'Ozolnieki Municipality'),
(2222, 'LV', 'Pargauja Municipality'),
(2223, 'LV', 'Pavilosta Municipality'),
(2224, 'LV', 'Plavinas Municipality'),
(2225, 'LV', 'Preili Municipality'),
(2226, 'LV', 'Priekule Municipality'),
(2227, 'LV', 'Priekuli Municipality'),
(2228, 'LV', 'Rauna Municipality'),
(2229, 'LV', 'Rezekne city'),
(2230, 'LV', 'Rezekne Municipality'),
(2231, 'LV', 'Riebini Municipality'),
(2232, 'LV', 'Riga city'),
(2233, 'LV', 'Roja Municipality'),
(2234, 'LV', 'Ropazi Municipality'),
(2235, 'LV', 'Rucava Municipality'),
(2236, 'LV', 'Rugaji Municipality'),
(2237, 'LV', 'Rundale Municipality'),
(2238, 'LV', 'Rujiena Municipality'),
(2239, 'LV', 'Salacgriva Municipality'),
(2240, 'LV', 'Sala Municipality'),
(2241, 'LV', 'Salaspils Municipality'),
(2242, 'LV', 'Saldus Municipality'),
(2243, 'LV', 'Saulkrasti Municipality'),
(2244, 'LV', 'Seja Municipality'),
(2245, 'LV', 'Sigulda Municipality'),
(2246, 'LV', 'Skriveri Municipality'),
(2247, 'LV', 'Skrunda Municipality'),
(2248, 'LV', 'Smiltene Municipality'),
(2249, 'LV', 'Stopini Municipality'),
(2250, 'LV', 'Strenci Municipality'),
(2251, 'LV', 'Talsi Municipality'),
(2252, 'LV', 'Tervete Municipality'),
(2253, 'LV', 'Tukums Municipality'),
(2254, 'LV', 'Vainode Municipality'),
(2255, 'LV', 'Valka Municipality'),
(2256, 'LV', 'Valmiera Municipality'),
(2257, 'LV', 'Varaklani Municipality'),
(2258, 'LV', 'Varkava Municipality'),
(2259, 'LV', 'Vecpiebalga Municipality'),
(2260, 'LV', 'Vecumnieki Municipality'),
(2261, 'LV', 'Ventspils city'),
(2262, 'LV', 'Ventspils Municipality'),
(2263, 'LV', 'Viesite Municipality'),
(2264, 'LV', 'Vilaka Municipality'),
(2265, 'LV', 'Vilani Municipality'),
(2266, 'LV', 'Zilupe Municipality'),
(2267, 'LY', 'Al'),
(2268, 'LY', 'Al Jufrah'),
(2269, 'LY', 'Al Kufrah'),
(2270, 'LY', 'Ash Shati&#39;'),
(2271, 'LY', 'Murzuq'),
(2272, 'LY', 'Sabha'),
(2273, 'LY', 'Tarhunah'),
(2274, 'LY', 'Tubruq'),
(2275, 'LY', 'Zlitan'),
(2276, 'LY', 'Ajdabiya'),
(2277, 'LY', 'Al Fatih'),
(2278, 'LY', 'Al Jabal al Akhdar'),
(2279, 'LY', 'Al Khums'),
(2280, 'LY', 'An Nuqat al Khams'),
(2281, 'LY', 'Awbari'),
(2282, 'LY', 'Az Zawiyah'),
(2283, 'LY', 'Banghazi'),
(2284, 'LY', 'Darnah'),
(2285, 'LY', 'Ghadamis'),
(2286, 'LY', 'Gharyan'),
(2287, 'LY', 'Misratah'),
(2288, 'LY', 'Sawfajjin'),
(2289, 'LY', 'Surt'),
(2290, 'LY', 'Tarabulus'),
(2291, 'LY', 'Yafran'),
(2292, 'MA', 'Agadir'),
(2293, 'MA', 'Al Hoceima'),
(2294, 'MA', 'Azilal'),
(2295, 'MA', 'Ben Slimane'),
(2296, 'MA', 'Beni Mellal'),
(2297, 'MA', 'Boulemane'),
(2298, 'MA', 'Casablanca'),
(2299, 'MA', 'Chaouen'),
(2300, 'MA', 'El Jadida'),
(2301, 'MA', 'El Kelaa des Srarhna'),
(2302, 'MA', 'Er Rachidia'),
(2303, 'MA', 'Essaouira'),
(2304, 'MA', 'Fes'),
(2305, 'MA', 'Figuig'),
(2306, 'MA', 'Kenitra'),
(2307, 'MA', 'Khemisset'),
(2308, 'MA', 'Khenifra'),
(2309, 'MA', 'Khouribga'),
(2310, 'MA', 'Marrakech'),
(2311, 'MA', 'Meknes'),
(2312, 'MA', 'Nador'),
(2313, 'MA', 'Ouarzazate'),
(2314, 'MA', 'Oujda'),
(2315, 'MA', 'Rabat-Sale'),
(2316, 'MA', 'Safi'),
(2317, 'MA', 'Settat'),
(2318, 'MA', 'Tanger'),
(2319, 'MA', 'Tata'),
(2320, 'MA', 'Taza'),
(2321, 'MA', 'Tiznit'),
(2322, 'MA', 'Guelmim'),
(2323, 'MA', 'Ifrane'),
(2324, 'MA', 'Laayoune'),
(2325, 'MA', 'Tan-Tan'),
(2326, 'MA', 'Taounate'),
(2327, 'MA', 'Sidi Kacem'),
(2328, 'MA', 'Taroudannt'),
(2329, 'MA', 'Tetouan'),
(2330, 'MA', 'Larache'),
(2331, 'MC', 'La Condamine'),
(2332, 'MC', 'Monaco'),
(2333, 'MC', 'Monte-Carlo'),
(2334, 'MD', 'Balti'),
(2335, 'MD', 'Cahul'),
(2336, 'MD', 'Chisinau'),
(2337, 'MD', 'Stinga Nistrului'),
(2338, 'MD', 'Edinet'),
(2339, 'MD', 'Gagauzia'),
(2340, 'MD', 'Lapusna'),
(2341, 'MD', 'Orhei'),
(2342, 'MD', 'Soroca'),
(2343, 'MD', 'Tighina'),
(2344, 'MD', 'Ungheni'),
(2345, 'MG', 'Antsiranana'),
(2346, 'MG', 'Fianarantsoa'),
(2347, 'MG', 'Mahajanga'),
(2348, 'MG', 'Toamasina'),
(2349, 'MG', 'Antananarivo'),
(2350, 'MG', 'Toliara'),
(2351, 'MK', 'Aracinovo'),
(2352, 'MK', 'Bac'),
(2353, 'MK', 'Belcista'),
(2354, 'MK', 'Berovo'),
(2355, 'MK', 'Bistrica'),
(2356, 'MK', 'Bitola'),
(2357, 'MK', 'Blatec'),
(2358, 'MK', 'Bogdanci'),
(2359, 'MK', 'Bogomila'),
(2360, 'MK', 'Bogovinje'),
(2361, 'MK', 'Bosilovo'),
(2362, 'MK', 'Brvenica'),
(2363, 'MK', 'Cair'),
(2364, 'MK', 'Capari'),
(2365, 'MK', 'Caska'),
(2366, 'MK', 'Cegrane'),
(2367, 'MK', 'Centar'),
(2368, 'MK', 'Centar Zupa'),
(2369, 'MK', 'Cesinovo'),
(2370, 'MK', 'Cucer-Sandevo'),
(2371, 'MK', 'Debar'),
(2372, 'MK', 'Delcevo'),
(2373, 'MK', 'Delogozdi'),
(2374, 'MK', 'Demir Hisar'),
(2375, 'MK', 'Demir Kapija'),
(2376, 'MK', 'Dobrusevo'),
(2377, 'MK', 'Dolna Banjica'),
(2378, 'MK', 'Dolneni'),
(2379, 'MK', 'Dorce Petrov'),
(2380, 'MK', 'Drugovo'),
(2381, 'MK', 'Dzepciste'),
(2382, 'MK', 'Gazi Baba'),
(2383, 'MK', 'Gevgelija'),
(2384, 'MK', 'Gostivar'),
(2385, 'MK', 'Gradsko'),
(2386, 'MK', 'Ilinden'),
(2387, 'MK', 'Izvor'),
(2388, 'MK', 'Jegunovce'),
(2389, 'MK', 'Kamenjane'),
(2390, 'MK', 'Karbinci'),
(2391, 'MK', 'Karpos'),
(2392, 'MK', 'Kavadarci'),
(2393, 'MK', 'Kicevo'),
(2394, 'MK', 'Kisela Voda'),
(2395, 'MK', 'Klecevce'),
(2396, 'MK', 'Kocani'),
(2397, 'MK', 'Konce'),
(2398, 'MK', 'Kondovo'),
(2399, 'MK', 'Konopiste'),
(2400, 'MK', 'Kosel'),
(2401, 'MK', 'Kratovo'),
(2402, 'MK', 'Kriva Palanka'),
(2403, 'MK', 'Krivogastani'),
(2404, 'MK', 'Krusevo'),
(2405, 'MK', 'Kuklis'),
(2406, 'MK', 'Kukurecani'),
(2407, 'MK', 'Kumanovo'),
(2408, 'MK', 'Labunista'),
(2409, 'MK', 'Lipkovo'),
(2410, 'MK', 'Lozovo'),
(2411, 'MK', 'Lukovo'),
(2412, 'MK', 'Makedonska Kamenica'),
(2413, 'MK', 'Makedonski Brod'),
(2414, 'MK', 'Mavrovi Anovi'),
(2415, 'MK', 'Meseista'),
(2416, 'MK', 'Miravci'),
(2417, 'MK', 'Mogila'),
(2418, 'MK', 'Murtino'),
(2419, 'MK', 'Negotino'),
(2420, 'MK', 'Negotino-Polosko'),
(2421, 'MK', 'Novaci'),
(2422, 'MK', 'Novo Selo'),
(2423, 'MK', 'Oblesevo'),
(2424, 'MK', 'Ohrid'),
(2425, 'MK', 'Orasac'),
(2426, 'MK', 'Orizari'),
(2427, 'MK', 'Oslomej'),
(2428, 'MK', 'Pehcevo'),
(2429, 'MK', 'Petrovec'),
(2430, 'MK', 'Plasnica'),
(2431, 'MK', 'Podares'),
(2432, 'MK', 'Prilep'),
(2433, 'MK', 'Probistip'),
(2434, 'MK', 'Radovis'),
(2435, 'MK', 'Rankovce'),
(2436, 'MK', 'Resen'),
(2437, 'MK', 'Rosoman'),
(2438, 'MK', 'Rostusa'),
(2439, 'MK', 'Samokov'),
(2440, 'MK', 'Saraj'),
(2441, 'MK', 'Sipkovica'),
(2442, 'MK', 'Sopiste'),
(2443, 'MK', 'Sopotnica'),
(2444, 'MK', 'Srbinovo'),
(2445, 'MK', 'Staravina'),
(2446, 'MK', 'Star Dojran'),
(2447, 'MK', 'Staro Nagoricane'),
(2448, 'MK', 'Stip'),
(2449, 'MK', 'Struga'),
(2450, 'MK', 'Strumica'),
(2451, 'MK', 'Studenicani'),
(2452, 'MK', 'Suto Orizari'),
(2453, 'MK', 'Sveti Nikole'),
(2454, 'MK', 'Tearce'),
(2455, 'MK', 'Tetovo'),
(2456, 'MK', 'Topolcani'),
(2457, 'MK', 'Valandovo'),
(2458, 'MK', 'Vasilevo'),
(2459, 'MK', 'Veles'),
(2460, 'MK', 'Velesta'),
(2461, 'MK', 'Vevcani'),
(2462, 'MK', 'Vinica'),
(2463, 'MK', 'Vitoliste'),
(2464, 'MK', 'Vranestica'),
(2465, 'MK', 'Vrapciste'),
(2466, 'MK', 'Vratnica'),
(2467, 'MK', 'Vrutok'),
(2468, 'MK', 'Zajas'),
(2469, 'MK', 'Zelenikovo'),
(2470, 'MK', 'Zelino'),
(2471, 'MK', 'Zitose'),
(2472, 'MK', 'Zletovo'),
(2473, 'MK', 'Zrnovci'),
(2474, 'ML', 'Bamako'),
(2475, 'ML', 'Gao'),
(2476, 'ML', 'Kayes'),
(2477, 'ML', 'Mopti'),
(2478, 'ML', 'Segou'),
(2479, 'ML', 'Sikasso'),
(2480, 'ML', 'Koulikoro'),
(2481, 'ML', 'Tombouctou'),
(2482, 'MM', 'Rakhine State'),
(2483, 'MM', 'Chin State'),
(2484, 'MM', 'Irrawaddy'),
(2485, 'MM', 'Kachin State'),
(2486, 'MM', 'Karan State'),
(2487, 'MM', 'Kayah State'),
(2488, 'MM', 'Magwe'),
(2489, 'MM', 'Mandalay'),
(2490, 'MM', 'Pegu'),
(2491, 'MM', 'Sagaing'),
(2492, 'MM', 'Shan State'),
(2493, 'MM', 'Tenasserim'),
(2494, 'MM', 'Mon State'),
(2495, 'MM', 'Rangoon'),
(2496, 'MN', 'Andrijevica'),
(2497, 'MN', 'Bar'),
(2498, 'MN', 'Berane'),
(2499, 'MN', 'Bijelo Polje'),
(2500, 'MN', 'Budva'),
(2501, 'MN', 'Cetinje'),
(2502, 'MN', 'Danilovgrad'),
(2503, 'MN', 'Herceg Novi'),
(2504, 'MN', 'Kolašin'),
(2505, 'MN', 'Kotor'),
(2506, 'MN', 'Mojkovac'),
(2507, 'MN', 'Nikšić'),
(2508, 'MN', 'Plav'),
(2509, 'MN', 'Plužine'),
(2510, 'MN', 'Pljevlja'),
(2511, 'MN', 'Podgorica'),
(2512, 'MN', 'Golubovci'),
(2513, 'MN', 'Tuzi'),
(2514, 'MN', 'Rožaje'),
(2515, 'MN', 'Šavnik'),
(2516, 'MN', 'Tivat'),
(2517, 'MN', 'Ulcinj'),
(2518, 'MN', 'Žabljak'),
(2519, 'MO', 'Ilhas'),
(2520, 'MO', 'Macau'),
(2521, 'MR', 'Hodh Ech Chargui'),
(2522, 'MR', 'Hodh El Gharbi'),
(2523, 'MR', 'Assaba'),
(2524, 'MR', 'Gorgol'),
(2525, 'MR', 'Brakna'),
(2526, 'MR', 'Trarza'),
(2527, 'MR', 'Adrar'),
(2528, 'MR', 'Dakhlet Nouadhibou'),
(2529, 'MR', 'Tagant'),
(2530, 'MR', 'Guidimaka'),
(2531, 'MR', 'Tiris Zemmour'),
(2532, 'MR', 'Inchiri'),
(2533, 'MS', 'St. Anthony'),
(2534, 'MS', 'St. Georges'),
(2535, 'MS', 'St. Peter'),
(2536, 'MU', 'Black River'),
(2537, 'MU', 'Flacq'),
(2538, 'MU', 'Grand Port'),
(2539, 'MU', 'Moka'),
(2540, 'MU', 'Pamplemousses'),
(2541, 'MU', 'Plaines Wilhems'),
(2542, 'MU', 'Port Louis'),
(2543, 'MU', 'Riviere du Rempart'),
(2544, 'MU', 'Savanne'),
(2545, 'MU', 'Agalega Is.'),
(2546, 'MU', 'Cargados Carajos'),
(2547, 'MU', 'Rodrigues'),
(2548, 'MV', 'Seenu'),
(2549, 'MV', 'Aliff'),
(2550, 'MV', 'Laviyani'),
(2551, 'MV', 'Waavu'),
(2552, 'MV', 'Laamu'),
(2553, 'MV', 'Haa Aliff'),
(2554, 'MV', 'Thaa'),
(2555, 'MV', 'Meemu'),
(2556, 'MV', 'Raa'),
(2557, 'MV', 'Faafu'),
(2558, 'MV', 'Daalu'),
(2559, 'MV', 'Baa'),
(2560, 'MV', 'Haa Daalu'),
(2561, 'MV', 'Shaviyani'),
(2562, 'MV', 'Noonu'),
(2563, 'MV', 'Kaafu'),
(2564, 'MV', 'Gaafu Aliff'),
(2565, 'MV', 'Gaafu Daalu'),
(2566, 'MV', 'Naviyani'),
(2567, 'MW', 'Chikwawa'),
(2568, 'MW', 'Chiradzulu'),
(2569, 'MW', 'Chitipa'),
(2570, 'MW', 'Thyolo'),
(2571, 'MW', 'Dedza'),
(2572, 'MW', 'Dowa'),
(2573, 'MW', 'Karonga'),
(2574, 'MW', 'Kasungu'),
(2575, 'MW', 'Machinga'),
(2576, 'MW', 'Lilongwe'),
(2577, 'MW', 'Mangochi'),
(2578, 'MW', 'Mchinji'),
(2579, 'MW', 'Mulanje'),
(2580, 'MW', 'Mzimba'),
(2581, 'MW', 'Ntcheu'),
(2582, 'MW', 'Nkhata Bay'),
(2583, 'MW', 'Nkhotakota'),
(2584, 'MW', 'Nsanje'),
(2585, 'MW', 'Ntchisi'),
(2586, 'MW', 'Rumphi'),
(2587, 'MW', 'Salima'),
(2588, 'MW', 'Zomba'),
(2589, 'MW', 'Blantyre'),
(2590, 'MW', 'Mwanza'),
(2591, 'MX', 'Aguascalientes'),
(2592, 'MX', 'Baja California'),
(2593, 'MX', 'Baja California Sur'),
(2594, 'MX', 'Campeche'),
(2595, 'MX', 'Chiapas'),
(2596, 'MX', 'Chihuahua'),
(2597, 'MX', 'Coahuila de Zaragoza'),
(2598, 'MX', 'Colima'),
(2599, 'MX', 'Distrito Federal'),
(2600, 'MX', 'Durango'),
(2601, 'MX', 'Guanajuato'),
(2602, 'MX', 'Guerrero'),
(2603, 'MX', 'Hidalgo'),
(2604, 'MX', 'Jalisco'),
(2605, 'MX', 'Mexico'),
(2606, 'MX', 'Michoacan de Ocampo'),
(2607, 'MX', 'Morelos'),
(2608, 'MX', 'Nayarit'),
(2609, 'MX', 'Nuevo Leon'),
(2610, 'MX', 'Oaxaca'),
(2611, 'MX', 'Puebla'),
(2612, 'MX', 'Queretaro de Arteaga'),
(2613, 'MX', 'Quintana Roo'),
(2614, 'MX', 'San Luis Potosi'),
(2615, 'MX', 'Sinaloa'),
(2616, 'MX', 'Sonora'),
(2617, 'MX', 'Tabasco'),
(2618, 'MX', 'Tamaulipas'),
(2619, 'MX', 'Tlaxcala'),
(2620, 'MX', 'Veracruz-Llave'),
(2621, 'MX', 'Yucatan'),
(2622, 'MX', 'Zacatecas'),
(2623, 'MY', 'Johor'),
(2624, 'MY', 'Kedah'),
(2625, 'MY', 'Kelantan'),
(2626, 'MY', 'Melaka'),
(2627, 'MY', 'Negeri Sembilan'),
(2628, 'MY', 'Pahang'),
(2629, 'MY', 'Perak'),
(2630, 'MY', 'Perlis'),
(2631, 'MY', 'Pulau Pinang'),
(2632, 'MY', 'Sarawak'),
(2633, 'MY', 'Selangor'),
(2634, 'MY', 'Terengganu'),
(2635, 'MY', 'Wilayah Persekutuan'),
(2636, 'MY', 'Labuan'),
(2637, 'MY', 'Sabah'),
(2638, 'MZ', 'Cabo Delgado'),
(2639, 'MZ', 'Gaza'),
(2640, 'MZ', 'Inhambane'),
(2641, 'MZ', 'Maputo'),
(2642, 'MZ', 'Sofala'),
(2643, 'MZ', 'Nampula'),
(2644, 'MZ', 'Niassa'),
(2645, 'MZ', 'Tete'),
(2646, 'MZ', 'Zambezia'),
(2647, 'MZ', 'Manica'),
(2648, 'NA', 'Bethanien'),
(2649, 'NA', 'Caprivi Oos'),
(2650, 'NA', 'Boesmanland'),
(2651, 'NA', 'Gobabis'),
(2652, 'NA', 'Grootfontein'),
(2653, 'NA', 'Kaokoland'),
(2654, 'NA', 'Karibib'),
(2655, 'NA', 'Keetmanshoop'),
(2656, 'NA', 'Luderitz'),
(2657, 'NA', 'Maltahohe'),
(2658, 'NA', 'Okahandja'),
(2659, 'NA', 'Omaruru'),
(2660, 'NA', 'Otjiwarongo'),
(2661, 'NA', 'Outjo'),
(2662, 'NA', 'Owambo'),
(2663, 'NA', 'Rehoboth'),
(2664, 'NA', 'Swakopmund'),
(2665, 'NA', 'Tsumeb'),
(2666, 'NA', 'Karasburg'),
(2667, 'NA', 'Windhoek'),
(2668, 'NA', 'Damaraland'),
(2669, 'NA', 'Hereroland Oos'),
(2670, 'NA', 'Hereroland Wes'),
(2671, 'NA', 'Kavango'),
(2672, 'NA', 'Mariental'),
(2673, 'NA', 'Namaland'),
(2674, 'NE', 'Agadez'),
(2675, 'NE', 'Diffa'),
(2676, 'NE', 'Dosso'),
(2677, 'NE', 'Maradi'),
(2678, 'NE', 'Niamey'),
(2679, 'NE', 'Tahoua'),
(2680, 'NE', 'Zinder'),
(2681, 'NG', 'Lagos'),
(2682, 'NG', 'Abuja Capital Territory'),
(2683, 'NG', 'Ogun'),
(2684, 'NG', 'Akwa Ibom'),
(2685, 'NG', 'Cross River'),
(2686, 'NG', 'Kaduna'),
(2687, 'NG', 'Katsina'),
(2688, 'NG', 'Anambra'),
(2689, 'NG', 'Benue'),
(2690, 'NG', 'Borno'),
(2691, 'NG', 'Imo'),
(2692, 'NG', 'Kano'),
(2693, 'NG', 'Kwara'),
(2694, 'NG', 'Niger'),
(2695, 'NG', 'Oyo'),
(2696, 'NG', 'Adamawa'),
(2697, 'NG', 'Delta'),
(2698, 'NG', 'Edo'),
(2699, 'NG', 'Jigawa'),
(2700, 'NG', 'Kebbi'),
(2701, 'NG', 'Kogi'),
(2702, 'NG', 'Osun'),
(2703, 'NG', 'Taraba'),
(2704, 'NG', 'Yobe'),
(2705, 'NG', 'Abia'),
(2706, 'NG', 'Bauchi'),
(2707, 'NG', 'Enugu'),
(2708, 'NG', 'Ondo'),
(2709, 'NG', 'Plateau'),
(2710, 'NG', 'Rivers'),
(2711, 'NG', 'Sokoto'),
(2712, 'NG', 'Bayelsa'),
(2713, 'NG', 'Ebonyi'),
(2714, 'NG', 'Ekiti'),
(2715, 'NG', 'Gombe'),
(2716, 'NG', 'Nassarawa'),
(2717, 'NG', 'Zamfara'),
(2718, 'NI', 'Boaco'),
(2719, 'NI', 'Carazo'),
(2720, 'NI', 'Chinandega'),
(2721, 'NI', 'Chontales'),
(2722, 'NI', 'Esteli'),
(2723, 'NI', 'Granada'),
(2724, 'NI', 'Jinotega'),
(2725, 'NI', 'Leon'),
(2726, 'NI', 'Madriz'),
(2727, 'NI', 'Managua'),
(2728, 'NI', 'Masaya'),
(2729, 'NI', 'Matagalpa'),
(2730, 'NI', 'Nueva Segovia'),
(2731, 'NI', 'Rio San Juan'),
(2732, 'NI', 'Rivas'),
(2733, 'NI', 'Zelaya'),
(2734, 'NL', 'Drenthe'),
(2735, 'NL', 'Friesland'),
(2736, 'NL', 'Gelderland'),
(2737, 'NL', 'Groningen'),
(2738, 'NL', 'Limburg'),
(2739, 'NL', 'Noord-Brabant'),
(2740, 'NL', 'Noord-Holland'),
(2741, 'NL', 'Overijssel'),
(2742, 'NL', 'Utrecht'),
(2743, 'NL', 'Zeeland'),
(2744, 'NL', 'Zuid-Holland'),
(2745, 'NL', 'Dronten'),
(2746, 'NL', 'Zuidelijke IJsselmeerpolders'),
(2747, 'NL', 'Lelystad'),
(2748, 'NL', 'Overijssel'),
(2749, 'NL', 'Flevoland'),
(2750, 'NO', 'Akershus'),
(2751, 'NO', 'Aust-Agder'),
(2752, 'NO', 'Buskerud'),
(2753, 'NO', 'Finnmark'),
(2754, 'NO', 'Hedmark'),
(2755, 'NO', 'Hordaland'),
(2756, 'NO', 'More og Romsdal'),
(2757, 'NO', 'Nordland'),
(2758, 'NO', 'Nord-Trondelag'),
(2759, 'NO', 'Oppland'),
(2760, 'NO', 'Oslo'),
(2761, 'NO', 'Ostfold'),
(2762, 'NO', 'Rogaland'),
(2763, 'NO', 'Sogn og Fjordane'),
(2764, 'NO', 'Sor-Trondelag'),
(2765, 'NO', 'Telemark'),
(2766, 'NO', 'Troms'),
(2767, 'NO', 'Vest-Agder'),
(2768, 'NO', 'Vestfold'),
(2769, 'NP', 'Bagmati'),
(2770, 'NP', 'Bheri'),
(2771, 'NP', 'Dhawalagiri'),
(2772, 'NP', 'Gandaki'),
(2773, 'NP', 'Janakpur'),
(2774, 'NP', 'Karnali'),
(2775, 'NP', 'Kosi'),
(2776, 'NP', 'Lumbini'),
(2777, 'NP', 'Mahakali'),
(2778, 'NP', 'Mechi'),
(2779, 'NP', 'Narayani'),
(2780, 'NP', 'Rapti'),
(2781, 'NP', 'Sagarmatha'),
(2782, 'NP', 'Seti'),
(2783, 'NR', 'Aiwo'),
(2784, 'NR', 'Anabar'),
(2785, 'NR', 'Anetan'),
(2786, 'NR', 'Anibare'),
(2787, 'NR', 'Baiti'),
(2788, 'NR', 'Boe'),
(2789, 'NR', 'Buada'),
(2790, 'NR', 'Denigomodu'),
(2791, 'NR', 'Ewa'),
(2792, 'NR', 'Ijuw'),
(2793, 'NR', 'Meneng'),
(2794, 'NR', 'Nibok'),
(2795, 'NR', 'Uaboe'),
(2796, 'NR', 'Yaren'),
(2797, 'NZ', 'Northland'),
(2798, 'NZ', 'Auckland'),
(2799, 'NZ', 'Waikato'),
(2800, 'NZ', 'Bay of Plenty'),
(2801, 'NZ', 'East Cape'),
(2802, 'NZ', 'Hawke&#39;s Bay'),
(2803, 'NZ', 'Taranaki'),
(2804, 'NZ', 'Manawatu-Wanganui'),
(2805, 'NZ', 'Wellington'),
(2806, 'NZ', 'Tasman'),
(2807, 'NZ', 'Nelson'),
(2808, 'NZ', 'Marlborough'),
(2809, 'NZ', 'West Coast'),
(2810, 'NZ', 'Canterbury'),
(2811, 'NZ', 'Otago'),
(2812, 'NZ', 'Southland'),
(2813, 'OM', 'Ad Dakhiliyah'),
(2814, 'OM', 'Al Batinah'),
(2815, 'OM', 'Al Wusta'),
(2816, 'OM', 'Ash Sharqiyah'),
(2817, 'OM', 'Az Zahirah'),
(2818, 'OM', 'Masqat'),
(2819, 'OM', 'Musandam'),
(2820, 'OM', 'Zufar'),
(2821, 'PA', 'Bocas del Toro'),
(2822, 'PA', 'Chiriqui'),
(2823, 'PA', 'Cocle'),
(2824, 'PA', 'Colon'),
(2825, 'PA', 'Darien'),
(2826, 'PA', 'Herrera'),
(2827, 'PA', 'Los Santos'),
(2828, 'PA', 'Panama'),
(2829, 'PA', 'San Blas'),
(2830, 'PA', 'Veraguas'),
(2831, 'PE', 'Amazonas'),
(2832, 'PE', 'Ancash'),
(2833, 'PE', 'Apurimac'),
(2834, 'PE', 'Arequipa'),
(2835, 'PE', 'Ayacucho'),
(2836, 'PE', 'Cajamarca'),
(2837, 'PE', 'Callao'),
(2838, 'PE', 'Cusco'),
(2839, 'PE', 'Huancavelica'),
(2840, 'PE', 'Huanuco'),
(2841, 'PE', 'Ica'),
(2842, 'PE', 'Junin'),
(2843, 'PE', 'La Libertad'),
(2844, 'PE', 'Lambayeque'),
(2845, 'PE', 'Lima'),
(2846, 'PE', 'Loreto'),
(2847, 'PE', 'Madre de Dios'),
(2848, 'PE', 'Moquegua'),
(2849, 'PE', 'Pasco'),
(2850, 'PE', 'Piura'),
(2851, 'PE', 'Puno'),
(2852, 'PE', 'San Martin'),
(2853, 'PE', 'Tacna'),
(2854, 'PE', 'Tumbes'),
(2855, 'PE', 'Ucayali'),
(2856, 'PG', 'Central'),
(2857, 'PG', 'Gulf'),
(2858, 'PG', 'Milne Bay'),
(2859, 'PG', 'N.'),
(2860, 'PG', 'S.ern Highlands'),
(2861, 'PG', 'W.'),
(2862, 'PG', 'North Solomons'),
(2863, 'PG', 'Chimbu'),
(2864, 'PG', 'Eastern Highlands'),
(2865, 'PG', 'East New Britain'),
(2866, 'PG', 'East Sepik'),
(2867, 'PG', 'Madang'),
(2868, 'PG', 'Manus'),
(2869, 'PG', 'Morobe'),
(2870, 'PG', 'New Ireland'),
(2871, 'PG', 'W. Highlands'),
(2872, 'PG', 'West New Britain'),
(2873, 'PG', 'Sandaun'),
(2874, 'PG', 'Enga'),
(2875, 'PG', 'National Capital'),
(2876, 'PH', 'Abra'),
(2877, 'PH', 'Agusan del Norte'),
(2878, 'PH', 'Agusan del Sur'),
(2879, 'PH', 'Aklan'),
(2880, 'PH', 'Albay'),
(2881, 'PH', 'Antique'),
(2882, 'PH', 'Bataan'),
(2883, 'PH', 'Batanes'),
(2884, 'PH', 'Batangas'),
(2885, 'PH', 'Benguet'),
(2886, 'PH', 'Bohol'),
(2887, 'PH', 'Bukidnon'),
(2888, 'PH', 'Bulacan'),
(2889, 'PH', 'Cagayan'),
(2890, 'PH', 'Camarines Norte'),
(2891, 'PH', 'Camarines Sur'),
(2892, 'PH', 'Camiguin'),
(2893, 'PH', 'Capiz'),
(2894, 'PH', 'Catanduanes'),
(2895, 'PH', 'Cavite'),
(2896, 'PH', 'Cebu'),
(2897, 'PH', 'Basilan'),
(2898, 'PH', 'Eastern Samar'),
(2899, 'PH', 'Davao'),
(2900, 'PH', 'Davao del Sur'),
(2901, 'PH', 'Davao Oriental'),
(2902, 'PH', 'Ifugao'),
(2903, 'PH', 'Ilocos Norte'),
(2904, 'PH', 'Ilocos Sur'),
(2905, 'PH', 'Iloilo'),
(2906, 'PH', 'Isabela'),
(2907, 'PH', 'Kalinga-Apayao'),
(2908, 'PH', 'Laguna'),
(2909, 'PH', 'Lanao del Norte'),
(2910, 'PH', 'Lanao del Sur'),
(2911, 'PH', 'La Union'),
(2912, 'PH', 'Leyte'),
(2913, 'PH', 'Marinduque'),
(2914, 'PH', 'Masbate'),
(2915, 'PH', 'Mindoro Occidental'),
(2916, 'PH', 'Mindoro Oriental'),
(2917, 'PH', 'Misamis Occidental'),
(2918, 'PH', 'Misamis Oriental'),
(2919, 'PH', 'Mountain'),
(2920, 'PH', 'Negros Oriental'),
(2921, 'PH', 'Nueva Ecija'),
(2922, 'PH', 'Nueva Vizcaya'),
(2923, 'PH', 'Palawan'),
(2924, 'PH', 'Pampanga'),
(2925, 'PH', 'Pangasinan'),
(2926, 'PH', 'Rizal'),
(2927, 'PH', 'Romblon'),
(2928, 'PH', 'Samar'),
(2929, 'PH', 'Maguindanao'),
(2930, 'PH', 'North Cotabato'),
(2931, 'PH', 'Sorsogon'),
(2932, 'PH', 'S.ern Leyte'),
(2933, 'PH', 'Sulu'),
(2934, 'PH', 'Surigao del Norte'),
(2935, 'PH', 'Surigao del Sur'),
(2936, 'PH', 'Tarlac'),
(2937, 'PH', 'Zambales'),
(2938, 'PH', 'Zamboanga del Norte'),
(2939, 'PH', 'Zamboanga del Sur'),
(2940, 'PH', 'N. Samar'),
(2941, 'PH', 'Quirino'),
(2942, 'PH', 'Siquijor'),
(2943, 'PH', 'S. Cotabato'),
(2944, 'PH', 'Sultan Kudarat'),
(2945, 'PH', 'Tawitawi'),
(2946, 'PH', 'Angeles'),
(2947, 'PH', 'Bacolod'),
(2948, 'PH', 'Bago'),
(2949, 'PH', 'Baguio'),
(2950, 'PH', 'Bais'),
(2951, 'PH', 'Basilan City'),
(2952, 'PH', 'Batangas City'),
(2953, 'PH', 'Butuan'),
(2954, 'PH', 'Cabanatuan'),
(2955, 'PH', 'Cadiz'),
(2956, 'PH', 'Cagayan de Oro'),
(2957, 'PH', 'Calbayog'),
(2958, 'PH', 'Caloocan'),
(2959, 'PH', 'Canlaon'),
(2960, 'PH', 'Cavite City'),
(2961, 'PH', 'Cebu City'),
(2962, 'PH', 'Cotabato'),
(2963, 'PH', 'Dagupan'),
(2964, 'PH', 'Danao'),
(2965, 'PH', 'Dapitan'),
(2966, 'PH', 'Davao City'),
(2967, 'PH', 'Dipolog'),
(2968, 'PH', 'Dumaguete'),
(2969, 'PH', 'General Santos'),
(2970, 'PH', 'Gingoog'),
(2971, 'PH', 'Iligan'),
(2972, 'PH', 'Iloilo City'),
(2973, 'PH', 'Iriga'),
(2974, 'PH', 'La Carlota'),
(2975, 'PH', 'Laoag'),
(2976, 'PH', 'Lapu-Lapu'),
(2977, 'PH', 'Legaspi'),
(2978, 'PH', 'Lipa'),
(2979, 'PH', 'Lucena'),
(2980, 'PH', 'Mandaue'),
(2981, 'PH', 'Manila'),
(2982, 'PH', 'Marawi'),
(2983, 'PH', 'Naga'),
(2984, 'PH', 'Olongapo'),
(2985, 'PH', 'Ormoc'),
(2986, 'PH', 'Oroquieta'),
(2987, 'PH', 'Ozamis'),
(2988, 'PH', 'Pagadian'),
(2989, 'PH', 'Palayan'),
(2990, 'PH', 'Pasay'),
(2991, 'PH', 'Puerto Princesa'),
(2992, 'PH', 'Quezon City'),
(2993, 'PH', 'Roxas'),
(2994, 'PH', 'San Carlos'),
(2995, 'PH', 'San Jose'),
(2996, 'PH', 'San Pablo'),
(2997, 'PH', 'Silay'),
(2998, 'PH', 'Surigao'),
(2999, 'PH', 'Tacloban'),
(3000, 'PH', 'Tagaytay'),
(3001, 'PH', 'Tagbilaran'),
(3002, 'PH', 'Tangub'),
(3003, 'PH', 'Toledo'),
(3004, 'PH', 'Trece Martires'),
(3005, 'PH', 'Zamboanga'),
(3006, 'PH', 'Aurora'),
(3007, 'PH', 'Quezon'),
(3008, 'PH', 'Negros Occidental'),
(3009, 'PK', 'Federally Administered Tribal Areas'),
(3010, 'PK', 'Balochistan'),
(3011, 'PK', 'North-West Frontier'),
(3012, 'PK', 'Punjab'),
(3013, 'PK', 'Sindh'),
(3014, 'PK', 'Azad Kashmir'),
(3015, 'PK', 'N. Areas'),
(3016, 'PK', 'Islamabad'),
(3017, 'PL', 'Dolnośląskie'),
(3018, 'PL', 'Kujawsko-pomorskie'),
(3019, 'PL', 'Lubelskie'),
(3020, 'PL', 'Lubuskie'),
(3021, 'PL', 'Łódzkie'),
(3022, 'PL', 'Małopolskie'),
(3023, 'PL', 'Mazowieckie'),
(3024, 'PL', 'Opolskie'),
(3025, 'PL', 'Podkarpackie'),
(3026, 'PL', 'Podlaskie'),
(3027, 'PL', 'Pomorskie'),
(3028, 'PL', 'Śląskie'),
(3029, 'PL', 'Świętokrzyskie'),
(3030, 'PL', 'Warmińsko-mazurskie'),
(3031, 'PL', 'Wielkopolskie'),
(3032, 'PL', 'Zachodniopomorskie'),
(3033, 'PT', 'Algarve'),
(3034, 'PT', 'Alto Alentejo'),
(3035, 'PT', 'Baixo Alentejo'),
(3036, 'PT', 'Beira Alta'),
(3037, 'PT', 'Beira Baixa'),
(3038, 'PT', 'Beira Litoral'),
(3039, 'PT', 'Douro Litoral'),
(3040, 'PT', 'Estremadura'),
(3041, 'PT', 'Minho'),
(3042, 'PT', 'Ribatejo'),
(3043, 'PT', 'Trás-os-Montes e Alto Douro'),
(3044, 'PY', 'Alto Parana'),
(3045, 'PY', 'Amambay'),
(3046, 'PY', 'Boqueron'),
(3047, 'PY', 'Caaguazu'),
(3048, 'PY', 'Caazapa'),
(3049, 'PY', 'Central'),
(3050, 'PY', 'Concepcion'),
(3051, 'PY', 'Cordillera'),
(3052, 'PY', 'Guaira'),
(3053, 'PY', 'Itapua'),
(3054, 'PY', 'Misiones'),
(3055, 'PY', 'Neembucu'),
(3056, 'PY', 'Paraguari'),
(3057, 'PY', 'Presidente Hayes'),
(3058, 'PY', 'San Pedro'),
(3059, 'PY', 'Alto Paraguay'),
(3060, 'PY', 'Canindeyu'),
(3061, 'PY', 'Chaco'),
(3062, 'PY', 'Nueva Asuncion'),
(3063, 'QA', 'Ad Dawhah'),
(3064, 'QA', 'Al Ghuwariyah'),
(3065, 'QA', 'Al Jumaliyah'),
(3066, 'QA', 'Al Khawr'),
(3067, 'QA', 'Al Wakrah'),
(3068, 'QA', 'Ar Rayyan'),
(3069, 'QA', 'Jariyan al Batnah'),
(3070, 'QA', 'Madinat ach Shamal'),
(3071, 'QA', 'Umm Salal'),
(3072, 'RO', 'Alba'),
(3073, 'RO', 'Arad'),
(3074, 'RO', 'Arges'),
(3075, 'RO', 'Bacau'),
(3076, 'RO', 'Bihor'),
(3077, 'RO', 'Bistrita-Nasaud'),
(3078, 'RO', 'Botosani'),
(3079, 'RO', 'Braila'),
(3080, 'RO', 'Brasov'),
(3081, 'RO', 'Bucuresti'),
(3082, 'RO', 'Buzau'),
(3083, 'RO', 'Caras-Severin'),
(3084, 'RO', 'Cluj'),
(3085, 'RO', 'Constanta'),
(3086, 'RO', 'Covasna'),
(3087, 'RO', 'Dambovita'),
(3088, 'RO', 'Dolj'),
(3089, 'RO', 'Galati'),
(3090, 'RO', 'Gorj'),
(3091, 'RO', 'Harghita'),
(3092, 'RO', 'Hunedoara'),
(3093, 'RO', 'Ialomita'),
(3094, 'RO', 'Iasi'),
(3095, 'RO', 'Maramures'),
(3096, 'RO', 'Mehedinti'),
(3097, 'RO', 'Mures'),
(3098, 'RO', 'Neamt'),
(3099, 'RO', 'Olt'),
(3100, 'RO', 'Prahova'),
(3101, 'RO', 'Salaj'),
(3102, 'RO', 'Satu Mare'),
(3103, 'RO', 'Sibiu'),
(3104, 'RO', 'Suceava'),
(3105, 'RO', 'Teleorman'),
(3106, 'RO', 'Timis'),
(3107, 'RO', 'Tulcea'),
(3108, 'RO', 'Vaslui'),
(3109, 'RO', 'Valcea'),
(3110, 'RO', 'Vrancea'),
(3111, 'RO', 'Calarasi'),
(3112, 'RO', 'Giurgiu'),
(3113, 'RU', 'Adygey'),
(3114, 'RU', 'Aga Buryat'),
(3115, 'RU', 'Gorno-Altay'),
(3116, 'RU', 'Altay'),
(3117, 'RU', 'Amur'),
(3118, 'RU', 'Arkhangel&#39;sk'),
(3119, 'RU', 'Astrakhan&#39;'),
(3120, 'RU', 'Bashkortostan'),
(3121, 'RU', 'Belgorod'),
(3122, 'RU', 'Bryansk'),
(3123, 'RU', 'Buryat'),
(3124, 'RU', 'Chechnya'),
(3125, 'RU', 'Chelyabinsk'),
(3126, 'RU', 'Chita'),
(3127, 'RU', 'Chukot'),
(3128, 'RU', 'Chuvash'),
(3129, 'RU', 'Dagestan'),
(3130, 'RU', 'Evenk'),
(3131, 'RU', 'Ingush'),
(3132, 'RU', 'Irkutsk'),
(3133, 'RU', 'Ivanovo'),
(3134, 'RU', 'Kabardin-Balkar'),
(3135, 'RU', 'Kaliningrad'),
(3136, 'RU', 'Kalmyk'),
(3137, 'RU', 'Kaluga'),
(3138, 'RU', 'Kamchatka'),
(3139, 'RU', 'Karachay-Cherkess'),
(3140, 'RU', 'Karelia'),
(3141, 'RU', 'Kemerovo'),
(3142, 'RU', 'Khabarovsk'),
(3143, 'RU', 'Khakass'),
(3144, 'RU', 'Khanty-Mansiy'),
(3145, 'RU', 'Kirov'),
(3146, 'RU', 'Komi'),
(3147, 'RU', 'Komi-Permyak'),
(3148, 'RU', 'Koryak'),
(3149, 'RU', 'Kostroma'),
(3150, 'RU', 'Krasnodar'),
(3151, 'RU', 'Krasnoyarsk'),
(3152, 'RU', 'Kurgan'),
(3153, 'RU', 'Kursk'),
(3154, 'RU', 'Leningrad'),
(3155, 'RU', 'Lipetsk'),
(3156, 'RU', 'Magadan'),
(3157, 'RU', 'Mariy-El'),
(3158, 'RU', 'Mordovia'),
(3159, 'RU', 'Moskva'),
(3160, 'RU', 'Moscow City'),
(3161, 'RU', 'Murmansk'),
(3162, 'RU', 'Nenets'),
(3163, 'RU', 'Nizhegorod'),
(3164, 'RU', 'Novgorod'),
(3165, 'RU', 'Novosibirsk'),
(3166, 'RU', 'Omsk'),
(3167, 'RU', 'Orenburg'),
(3168, 'RU', 'Orel'),
(3169, 'RU', 'Penza'),
(3170, 'RU', 'Perm&#39;'),
(3171, 'RU', 'Primor&#39;ye'),
(3172, 'RU', 'Pskov'),
(3173, 'RU', 'Rostov'),
(3174, 'RU', 'Ryazan&#39;'),
(3175, 'RU', 'Sakha'),
(3176, 'RU', 'Sakhalin'),
(3177, 'RU', 'Samara'),
(3178, 'RU', 'St. Petersburg City'),
(3179, 'RU', 'Saratov'),
(3180, 'RU', 'North Ossetia'),
(3181, 'RU', 'Smolensk'),
(3182, 'RU', 'Stavropol&#39;'),
(3183, 'RU', 'Sverdlovsk'),
(3184, 'RU', 'Tambov'),
(3185, 'RU', 'Tatarstan'),
(3186, 'RU', 'Taymyr'),
(3187, 'RU', 'Tomsk'),
(3188, 'RU', 'Tula'),
(3189, 'RU', 'Tver&#39;'),
(3190, 'RU', 'Tyumen&#39;'),
(3191, 'RU', 'Tuva'),
(3192, 'RU', 'Udmurt'),
(3193, 'RU', 'Ul&#39;yanovsk'),
(3194, 'RU', 'Ust-Orda Buryat'),
(3195, 'RU', 'Vladimir'),
(3196, 'RU', 'Volgograd'),
(3197, 'RU', 'Vologda'),
(3198, 'RU', 'Voronezh'),
(3199, 'RU', 'Yamal-Nenets'),
(3200, 'RU', 'Yaroslavl&#39;'),
(3201, 'RU', 'Yevrey'),
(3202, 'RW', 'Butare'),
(3203, 'RW', 'Byumba'),
(3204, 'RW', 'Cyangugu'),
(3205, 'RW', 'Gikongoro'),
(3206, 'RW', 'Gisenyi'),
(3207, 'RW', 'Gitarama'),
(3208, 'RW', 'Kibungo'),
(3209, 'RW', 'Kibuye'),
(3210, 'RW', 'Kigali'),
(3211, 'RW', 'Ruhengeri'),
(3212, 'SA', 'Al Bahah'),
(3213, 'SA', 'Al Jawf'),
(3214, 'SA', 'Al Madinah'),
(3215, 'SA', 'Ash Sharqiyah'),
(3216, 'SA', 'Al Qasim'),
(3217, 'SA', 'Al Qurayyat'),
(3218, 'SA', 'Ar Riyad'),
(3219, 'SA', 'Ha&#39;il'),
(3220, 'SA', 'Makkah'),
(3221, 'SA', 'Al Hudud ash Shamaliyah'),
(3222, 'SA', 'Najran'),
(3223, 'SA', 'Jizan'),
(3224, 'SA', 'Tabuk'),
(3225, 'SB', 'Malaita'),
(3226, 'SB', 'W.'),
(3227, 'SB', 'Central'),
(3228, 'SB', 'Guadalcanal'),
(3229, 'SB', 'Isabel'),
(3230, 'SB', 'Makira'),
(3231, 'SB', 'Temotu'),
(3232, 'SC', 'Anse aux Pins'),
(3233, 'SC', 'Anse Boileau'),
(3234, 'SC', 'Anse Etoile'),
(3235, 'SC', 'Anse Louis'),
(3236, 'SC', 'Anse Royale'),
(3237, 'SC', 'Baie Lazare'),
(3238, 'SC', 'Baie St.e Anne'),
(3239, 'SC', 'Beau Vallon'),
(3240, 'SC', 'Bel Air'),
(3241, 'SC', 'Bel Ombre'),
(3242, 'SC', 'Cascade'),
(3243, 'SC', 'Glacis'),
(3244, 'SC', 'Grand&#39; Anse'),
(3245, 'SC', 'Grand&#39; Anse'),
(3246, 'SC', 'La Digue'),
(3247, 'SC', 'La Riviere Anglaise'),
(3248, 'SC', 'Mont Buxton'),
(3249, 'SC', 'Mont Fleuri'),
(3250, 'SC', 'Plaisance'),
(3251, 'SC', 'Pointe La Rue'),
(3252, 'SC', 'Port Glaud'),
(3253, 'SC', 'St. Louis'),
(3254, 'SC', 'Takamaka'),
(3255, 'SD', 'Al Wusta'),
(3256, 'SD', 'Al Istiwa&#39;iyah'),
(3257, 'SD', 'Al Khartum'),
(3258, 'SD', 'Ash Shamaliyah'),
(3259, 'SD', 'Ash Sharqiyah'),
(3260, 'SD', 'Bahr al Ghazal'),
(3261, 'SD', 'Darfur'),
(3262, 'SD', 'Kurdufan'),
(3263, 'SE', 'Alvsborgs Lan'),
(3264, 'SE', 'Blekinge Lan'),
(3265, 'SE', 'Gavleborgs Lan'),
(3266, 'SE', 'Goteborgs och Bohus Lan'),
(3267, 'SE', 'Gotlands Lan'),
(3268, 'SE', 'Hallands Lan'),
(3269, 'SE', 'Jamtlands Lan'),
(3270, 'SE', 'Jonkopings Lan'),
(3271, 'SE', 'Kalmar Lan'),
(3272, 'SE', 'Kopparbergs Lan'),
(3273, 'SE', 'Kristianstads Lan'),
(3274, 'SE', 'Kronobergs Lan'),
(3275, 'SE', 'Malmohus Lan'),
(3276, 'SE', 'Norrbottens Lan'),
(3277, 'SE', 'Orebro Lan'),
(3278, 'SE', 'Ostergotlands Lan'),
(3279, 'SE', 'Skaraborgs Lan'),
(3280, 'SE', 'Sodermanlands Lan'),
(3281, 'SE', 'Uppsala Lan'),
(3282, 'SE', 'Varmlands Lan'),
(3283, 'SE', 'Vasterbottens Lan'),
(3284, 'SE', 'Vasternorrlands Lan'),
(3285, 'SE', 'Vastmanlands Lan'),
(3286, 'SE', 'Stockholms Lan'),
(3287, 'SE', 'Skane Lan'),
(3288, 'SE', 'Vastra Gotaland'),
(3289, 'SH', 'Ascension'),
(3290, 'SH', 'St. Helena'),
(3291, 'SH', 'Tristan da Cunha'),
(3292, 'SK', 'Banska Bystrica'),
(3293, 'SK', 'Bratislava'),
(3294, 'SK', 'Kosice'),
(3295, 'SK', 'Nitra'),
(3296, 'SK', 'Presov'),
(3297, 'SK', 'Trencin'),
(3298, 'SK', 'Trnava'),
(3299, 'SK', 'Zilina'),
(3300, 'SL', 'Eastern'),
(3301, 'SL', 'N.'),
(3302, 'SL', 'S.ern'),
(3303, 'SL', 'W. Area'),
(3304, 'SM', 'Acquaviva'),
(3305, 'SM', 'Chiesanuova'),
(3306, 'SM', 'Domagnano'),
(3307, 'SM', 'Faetano'),
(3308, 'SM', 'Fiorentino'),
(3309, 'SM', 'Borgo Maggiore'),
(3310, 'SM', 'San Marino'),
(3311, 'SM', 'Monte Giardino'),
(3312, 'SM', 'Serravalle'),
(3313, 'SN', 'Dakar'),
(3314, 'SN', 'Diourbel'),
(3315, 'SN', 'St.-Louis'),
(3316, 'SN', 'Tambacounda'),
(3317, 'SN', 'Thies'),
(3318, 'SN', 'Louga'),
(3319, 'SN', 'Fatick'),
(3320, 'SN', 'Kaolack'),
(3321, 'SN', 'Kolda'),
(3322, 'SN', 'Ziguinchor'),
(3323, 'SO', 'Bakool'),
(3324, 'SO', 'Banaadir'),
(3325, 'SO', 'Bari'),
(3326, 'SO', 'Bay'),
(3327, 'SO', 'Galguduud'),
(3328, 'SO', 'Gedo'),
(3329, 'SO', 'Hiiraan'),
(3330, 'SO', 'Jubbada Dhexe'),
(3331, 'SO', 'Jubbada Hoose'),
(3332, 'SO', 'Mudug'),
(3333, 'SO', 'Nugaal'),
(3334, 'SO', 'Sanaag'),
(3335, 'SO', 'Shabeellaha Dhexe'),
(3336, 'SO', 'Shabeellaha Hoose'),
(3337, 'SO', 'Togdheer'),
(3338, 'SO', 'Woqooyi Galbeed'),
(3339, 'SR', 'Brokopondo'),
(3340, 'SR', 'Commewijne'),
(3341, 'SR', 'Coronie'),
(3342, 'SR', 'Marowijne'),
(3343, 'SR', 'Nickerie'),
(3344, 'SR', 'Para'),
(3345, 'SR', 'Paramaribo'),
(3346, 'SR', 'Saramacca'),
(3347, 'SR', 'Sipaliwini'),
(3348, 'SR', 'Wanica'),
(3349, 'ST', 'Principe'),
(3350, 'ST', 'Sao Tome'),
(3351, 'SV', 'Ahuachapan'),
(3352, 'SV', 'Cabanas'),
(3353, 'SV', 'Chalatenango'),
(3354, 'SV', 'Cuscatlan'),
(3355, 'SV', 'La Libertad'),
(3356, 'SV', 'La Paz'),
(3357, 'SV', 'La Union'),
(3358, 'SV', 'Morazan'),
(3359, 'SV', 'San Miguel'),
(3360, 'SV', 'San Salvador'),
(3361, 'SV', 'Santa Ana'),
(3362, 'SV', 'San Vicente'),
(3363, 'SV', 'Sonsonate'),
(3364, 'SV', 'Usulutan'),
(3365, 'SY', 'Al Hasakah'),
(3366, 'SY', 'Al Ladhiqiyah'),
(3367, 'SY', 'Al Qunaytirah'),
(3368, 'SY', 'Ar Raqqah'),
(3369, 'SY', 'As Suwayda&#39;'),
(3370, 'SY', 'Dar'),
(3371, 'SY', 'Dayr az Zawr'),
(3372, 'SY', 'Rif Dimashq'),
(3373, 'SY', 'Halab'),
(3374, 'SY', 'Hamah'),
(3375, 'SY', 'Hims'),
(3376, 'SY', 'Idlib'),
(3377, 'SY', 'Dimashq'),
(3378, 'SY', 'Tartus'),
(3379, 'SZ', 'Hhohho'),
(3380, 'SZ', 'Lubombo'),
(3381, 'SZ', 'Manzini'),
(3382, 'SZ', 'Shiselweni'),
(3383, 'SZ', 'Praslin'),
(3384, 'TD', 'Batha'),
(3385, 'TD', 'Biltine'),
(3386, 'TD', 'Borkou-Ennedi-Tibesti'),
(3387, 'TD', 'Chari-Baguirmi'),
(3388, 'TD', 'Guera'),
(3389, 'TD', 'Kanem'),
(3390, 'TD', 'Lac'),
(3391, 'TD', 'Logone Occidental'),
(3392, 'TD', 'Logone Oriental'),
(3393, 'TD', 'Mayo-Kebbi'),
(3394, 'TD', 'Moyen-Chari'),
(3395, 'TD', 'Ouaddai'),
(3396, 'TD', 'Salamat'),
(3397, 'TD', 'Tandjile'),
(3398, 'TG', 'Amlame'),
(3399, 'TG', 'Aneho'),
(3400, 'TG', 'Atakpame'),
(3401, 'TG', 'Bafilo'),
(3402, 'TG', 'Bassar'),
(3403, 'TG', 'Dapaong'),
(3404, 'TG', 'Kante'),
(3405, 'TG', 'Klouto'),
(3406, 'TG', 'Lama-Kara'),
(3407, 'TG', 'Lome'),
(3408, 'TG', 'Mango'),
(3409, 'TG', 'Niamtougou'),
(3410, 'TG', 'Notse'),
(3411, 'TG', 'Kpagouda'),
(3412, 'TG', 'Badou'),
(3413, 'TG', 'Sotouboua'),
(3414, 'TG', 'Tabligbo'),
(3415, 'TG', 'Tsevie'),
(3416, 'TG', 'Tchamba'),
(3417, 'TG', 'Tchaoudjo'),
(3418, 'TG', 'Vogan'),
(3419, 'TH', 'Mae Hong Son'),
(3420, 'TH', 'Chiang Mai'),
(3421, 'TH', 'Chiang Rai'),
(3422, 'TH', 'Nan'),
(3423, 'TH', 'Lamphun'),
(3424, 'TH', 'Lampang'),
(3425, 'TH', 'Phrae'),
(3426, 'TH', 'Tak'),
(3427, 'TH', 'Sukhothai'),
(3428, 'TH', 'Uttaradit'),
(3429, 'TH', 'Kamphaeng Phet'),
(3430, 'TH', 'Phitsanulok'),
(3431, 'TH', 'Phichit'),
(3432, 'TH', 'Phetchabun'),
(3433, 'TH', 'Uthai Thani'),
(3434, 'TH', 'Nakhon Sawan'),
(3435, 'TH', 'Nong Khai'),
(3436, 'TH', 'Loei'),
(3437, 'TH', 'Udon Thani'),
(3438, 'TH', 'Sakon Nakhon'),
(3439, 'TH', 'Nakhon Phanom'),
(3440, 'TH', 'Khon Kaen'),
(3441, 'TH', 'Kalasin'),
(3442, 'TH', 'Maha Sarakham'),
(3443, 'TH', 'Roi Et'),
(3444, 'TH', 'Chaiyaphum'),
(3445, 'TH', 'Nakhon Ratchasima'),
(3446, 'TH', 'Buriram'),
(3447, 'TH', 'Surin'),
(3448, 'TH', 'Sisaket'),
(3449, 'TH', 'Narathiwat'),
(3450, 'TH', 'Chai Nat'),
(3451, 'TH', 'Sing Buri'),
(3452, 'TH', 'Lop Buri'),
(3453, 'TH', 'Ang Thong'),
(3454, 'TH', 'Phra Nakhon Si Ayutthaya'),
(3455, 'TH', 'Saraburi'),
(3456, 'TH', 'Nonthaburi'),
(3457, 'TH', 'Pathum Thani'),
(3458, 'TH', 'Krung Thep'),
(3459, 'TH', 'Phayao'),
(3460, 'TH', 'Samut Prakan'),
(3461, 'TH', 'Nakhon Nayok'),
(3462, 'TH', 'Chachoengsao'),
(3463, 'TH', 'Prachin Buri'),
(3464, 'TH', 'Chon Buri'),
(3465, 'TH', 'Rayong'),
(3466, 'TH', 'Chanthaburi'),
(3467, 'TH', 'Trat'),
(3468, 'TH', 'Kanchanaburi'),
(3469, 'TH', 'Suphan Buri'),
(3470, 'TH', 'Ratchaburi'),
(3471, 'TH', 'Nakhon Pathom'),
(3472, 'TH', 'Samut Songkhram'),
(3473, 'TH', 'Samut Sakhon'),
(3474, 'TH', 'Phetchaburi'),
(3475, 'TH', 'Prachuap Khiri Khan'),
(3476, 'TH', 'Chumphon'),
(3477, 'TH', 'Ranong'),
(3478, 'TH', 'Surat Thani'),
(3479, 'TH', 'Phangnga'),
(3480, 'TH', 'Phuket'),
(3481, 'TH', 'Krabi'),
(3482, 'TH', 'Nakhon Si Thammarat'),
(3483, 'TH', 'Trang'),
(3484, 'TH', 'Phatthalung'),
(3485, 'TH', 'Satun'),
(3486, 'TH', 'Songkhla'),
(3487, 'TH', 'Pattani'),
(3488, 'TH', 'Yala'),
(3489, 'TH', 'Ubon Ratchathani'),
(3490, 'TH', 'Yasothon'),
(3491, 'TM', 'Ahal'),
(3492, 'TM', 'Balkan'),
(3493, 'TM', 'Dashoguz'),
(3494, 'TM', 'Lebap'),
(3495, 'TM', 'Mary'),
(3496, 'TN', 'El Kef'),
(3497, 'TN', 'Mahdia'),
(3498, 'TN', 'Mounastir'),
(3499, 'TN', 'Kasserine'),
(3500, 'TN', 'Kairouan'),
(3501, 'TN', 'Ariana'),
(3502, 'TN', 'Beja'),
(3503, 'TN', 'Bizerte'),
(3504, 'TN', 'Jendouba'),
(3505, 'TN', 'Mednine'),
(3506, 'TN', 'Nabeul'),
(3507, 'TN', 'Gabes'),
(3508, 'TN', 'Gafsa'),
(3509, 'TN', 'Guebelli'),
(3510, 'TN', 'Sfax'),
(3511, 'TN', 'Sidi Bouzid'),
(3512, 'TN', 'Siliana'),
(3513, 'TN', 'Sousse'),
(3514, 'TN', 'Tataouin'),
(3515, 'TN', 'Tozeur'),
(3516, 'TN', 'Zaghouen'),
(3517, 'TO', 'Ha'),
(3518, 'TO', 'Tongatapu'),
(3519, 'TO', 'Vava'),
(3520, 'TR', 'Adiyaman'),
(3521, 'TR', 'Afyon'),
(3522, 'TR', 'Agri'),
(3523, 'TR', 'Amasya'),
(3524, 'TR', 'Antalya'),
(3525, 'TR', 'Artvin'),
(3526, 'TR', 'Aydin'),
(3527, 'TR', 'Balikesir'),
(3528, 'TR', 'Bilecik'),
(3529, 'TR', 'Bingol'),
(3530, 'TR', 'Bitlis'),
(3531, 'TR', 'Bolu'),
(3532, 'TR', 'Burdur'),
(3533, 'TR', 'Bursa'),
(3534, 'TR', 'Canakkale'),
(3535, 'TR', 'Corum'),
(3536, 'TR', 'Denizli'),
(3537, 'TR', 'Diyarbakir'),
(3538, 'TR', 'Edirne'),
(3539, 'TR', 'Elazig'),
(3540, 'TR', 'Erzincan'),
(3541, 'TR', 'Erzurum'),
(3542, 'TR', 'Eskisehir'),
(3543, 'TR', 'Giresun'),
(3544, 'TR', 'Hatay'),
(3545, 'TR', 'Icel'),
(3546, 'TR', 'Isparta'),
(3547, 'TR', 'Istanbul'),
(3548, 'TR', 'Izmir'),
(3549, 'TR', 'Kastamonu'),
(3550, 'TR', 'Kayseri'),
(3551, 'TR', 'Kirklareli'),
(3552, 'TR', 'Kirsehir'),
(3553, 'TR', 'Kocaeli'),
(3554, 'TR', 'Kutahya'),
(3555, 'TR', 'Malatya'),
(3556, 'TR', 'Manisa'),
(3557, 'TR', 'Kahramanmaras'),
(3558, 'TR', 'Mugla'),
(3559, 'TR', 'Mus'),
(3560, 'TR', 'Nevsehir'),
(3561, 'TR', 'Ordu'),
(3562, 'TR', 'Rize'),
(3563, 'TR', 'Sakarya'),
(3564, 'TR', 'Samsun'),
(3565, 'TR', 'Sinop'),
(3566, 'TR', 'Sivas'),
(3567, 'TR', 'Tekirdag'),
(3568, 'TR', 'Tokat'),
(3569, 'TR', 'Trabzon'),
(3570, 'TR', 'Tunceli'),
(3571, 'TR', 'Sanliurfa'),
(3572, 'TR', 'Usak'),
(3573, 'TR', 'Van'),
(3574, 'TR', 'Yozgat'),
(3575, 'TR', 'Ankara'),
(3576, 'TR', 'Gumushane'),
(3577, 'TR', 'Hakkari'),
(3578, 'TR', 'Konya'),
(3579, 'TR', 'Mardin'),
(3580, 'TR', 'Nigde'),
(3581, 'TR', 'Siirt'),
(3582, 'TR', 'Aksaray'),
(3583, 'TR', 'Batman'),
(3584, 'TR', 'Bayburt'),
(3585, 'TR', 'Karaman'),
(3586, 'TR', 'Kirikkale'),
(3587, 'TR', 'Sirnak'),
(3588, 'TR', 'Adana'),
(3589, 'TR', 'Cankiri'),
(3590, 'TR', 'Gaziantep'),
(3591, 'TR', 'Kars'),
(3592, 'TR', 'Zonguldak'),
(3593, 'TR', 'Ardahan'),
(3594, 'TR', 'Bartin'),
(3595, 'TR', 'Igdir'),
(3596, 'TR', 'Karabuk'),
(3597, 'TR', 'Kilis'),
(3598, 'TR', 'Osmaniye'),
(3599, 'TR', 'Yalova'),
(3600, 'TT', 'Arima'),
(3601, 'TT', 'Caroni'),
(3602, 'TT', 'Mayaro'),
(3603, 'TT', 'Nariva'),
(3604, 'TT', 'Port-of-Spain'),
(3605, 'TT', 'St. Andrew'),
(3606, 'TT', 'St. David'),
(3607, 'TT', 'St. George'),
(3608, 'TT', 'St. Patrick'),
(3609, 'TT', 'San Fernando'),
(3610, 'TT', 'Tobago'),
(3611, 'TT', 'Victoria'),
(3612, 'TW', 'Fu-chien'),
(3613, 'TW', 'Kao-hsiung'),
(3614, 'TW', 'T&#39;ai-pei'),
(3615, 'TW', 'T&#39;ai-wan'),
(3616, 'TZ', 'Arusha'),
(3617, 'TZ', 'Pwani'),
(3618, 'TZ', 'Dodoma'),
(3619, 'TZ', 'Iringa'),
(3620, 'TZ', 'Kigoma'),
(3621, 'TZ', 'Kilimanjaro'),
(3622, 'TZ', 'Lindi'),
(3623, 'TZ', 'Mara'),
(3624, 'TZ', 'Mbeya'),
(3625, 'TZ', 'Morogoro'),
(3626, 'TZ', 'Mtwara'),
(3627, 'TZ', 'Mwanza'),
(3628, 'TZ', 'Pemba North'),
(3629, 'TZ', 'Ruvuma'),
(3630, 'TZ', 'Shinyanga'),
(3631, 'TZ', 'Singida'),
(3632, 'TZ', 'Tabora'),
(3633, 'TZ', 'Tanga'),
(3634, 'TZ', 'Kagera'),
(3635, 'TZ', 'Pemba S.'),
(3636, 'TZ', 'Zanzibar Central'),
(3637, 'TZ', 'Zanzibar North'),
(3638, 'TZ', 'Dar es Salaam'),
(3639, 'TZ', 'Rukwa'),
(3640, 'TZ', 'Zanzibar Urban'),
(3641, 'UA', 'Cherkas&#39;ka Oblast&#39;'),
(3642, 'UA', 'Chernihivs&#39;ka Oblast&#39;'),
(3643, 'UA', 'Chernivets&#39;ka Oblast&#39;'),
(3644, 'UA', 'Dnipropetrovs&#39;ka Oblast&#39;'),
(3645, 'UA', 'Donets&#39;ka Oblast&#39;'),
(3646, 'UA', 'Ivano-Frankivs&#39;ka Oblast&#39;'),
(3647, 'UA', 'Kharkivs&#39;ka Oblast&#39;'),
(3648, 'UA', 'Khersons&#39;ka Oblast&#39;'),
(3649, 'UA', 'Khmel&#39;nyts&#39;ka Oblast&#39;'),
(3650, 'UA', 'Kirovohrads&#39;ka Oblast&#39;'),
(3651, 'UA', 'Krym'),
(3652, 'UA', 'Kyyiv'),
(3653, 'UA', 'Kyyivs&#39;ka Oblast&#39;'),
(3654, 'UA', 'Luhans&#39;ka Oblast&#39;'),
(3655, 'UA', 'L&#39;vivs&#39;ka Oblast&#39;'),
(3656, 'UA', 'Mykolayivs&#39;ka Oblast&#39;'),
(3657, 'UA', 'Odes&#39;ka Oblast&#39;'),
(3658, 'UA', 'Poltavs&#39;ka Oblast&#39;'),
(3659, 'UA', 'Rivnens&#39;ka Oblast&#39;'),
(3660, 'UA', 'Sevastopol&#39;'),
(3661, 'UA', 'Sums&#39;ka Oblast&#39;'),
(3662, 'UA', 'Ternopil&#39;s&#39;ka Oblast&#39;'),
(3663, 'UA', 'Vinnyts&#39;ka Oblast&#39;'),
(3664, 'UA', 'Volyns&#39;ka Oblast&#39;'),
(3665, 'UA', 'Zakarpats&#39;ka Oblast&#39;'),
(3666, 'UA', 'Zaporiz&#39;ka Oblast&#39;'),
(3667, 'UA', 'Zhytomyrs&#39;ka Oblast&#39;'),
(3668, 'UG', 'Busoga'),
(3669, 'UG', 'Karamoja'),
(3670, 'UG', 'S. Buganda'),
(3671, 'UG', 'Central'),
(3672, 'UG', 'Eastern'),
(3673, 'UG', 'Nile'),
(3674, 'UG', 'North Buganda'),
(3675, 'UG', 'N.'),
(3676, 'UG', 'S.ern'),
(3677, 'UG', 'W.'),
(3678, 'UG', 'Adjumani'),
(3679, 'UG', 'Bugiri'),
(3680, 'UG', 'Busia'),
(3681, 'UG', 'Katakwi'),
(3682, 'UG', 'Nakasongola'),
(3683, 'UG', 'Sembabule'),
(3684, 'US', 'Alabama'),
(3685, 'US', 'Alaska'),
(3686, 'US', 'Arizona'),
(3687, 'US', 'Arkansas'),
(3688, 'US', 'California'),
(3689, 'US', 'Colorado'),
(3690, 'US', 'Connecticut'),
(3691, 'US', 'Delaware'),
(3692, 'US', 'District of Columbia'),
(3693, 'US', 'Florida'),
(3694, 'US', 'Georgia'),
(3695, 'US', 'Hawaii'),
(3696, 'US', 'Idaho'),
(3697, 'US', 'Illinois'),
(3698, 'US', 'Indiana'),
(3699, 'US', 'Iowa'),
(3700, 'US', 'Kansas'),
(3701, 'US', 'Kentucky'),
(3702, 'US', 'Louisiana'),
(3703, 'US', 'Maine'),
(3704, 'US', 'Maryland'),
(3705, 'US', 'Massachusetts'),
(3706, 'US', 'Michigan'),
(3707, 'US', 'Minnesota'),
(3708, 'US', 'Mississippi'),
(3709, 'US', 'Missouri'),
(3710, 'US', 'Montana'),
(3711, 'US', 'Nebraska'),
(3712, 'US', 'Nevada'),
(3713, 'US', 'New Hampshire'),
(3714, 'US', 'New Jersey'),
(3715, 'US', 'New Mexico'),
(3716, 'US', 'New York'),
(3717, 'US', 'North Carolina'),
(3718, 'US', 'North Dakota'),
(3719, 'US', 'Ohio'),
(3720, 'US', 'Oklahoma'),
(3721, 'US', 'Oregon'),
(3722, 'US', 'Pennyslvania'),
(3723, 'US', 'Rhode Is.'),
(3724, 'US', 'S. Carolina'),
(3725, 'US', 'S. Dakota'),
(3726, 'US', 'Tennessee'),
(3727, 'US', 'Texas'),
(3728, 'US', 'Utah'),
(3729, 'US', 'Vermont'),
(3730, 'US', 'Virginia'),
(3731, 'US', 'Washington'),
(3732, 'US', 'West Virginia'),
(3733, 'US', 'Wisconsin'),
(3734, 'US', 'Wyoming'),
(3735, 'UY', 'Artigas'),
(3736, 'UY', 'Canelones'),
(3737, 'UY', 'Cerro Largo'),
(3738, 'UY', 'Colonia'),
(3739, 'UY', 'Durazno'),
(3740, 'UY', 'Flores'),
(3741, 'UY', 'Florida'),
(3742, 'UY', 'Lavalleja'),
(3743, 'UY', 'Maldonado'),
(3744, 'UY', 'Montevideo'),
(3745, 'UY', 'Paysandu'),
(3746, 'UY', 'Rio Negro'),
(3747, 'UY', 'Rivera'),
(3748, 'UY', 'Rocha'),
(3749, 'UY', 'Salto'),
(3750, 'UY', 'San Jose'),
(3751, 'UY', 'Soriano'),
(3752, 'UY', 'Tacuarembo'),
(3753, 'UY', 'Treinta y Tres'),
(3754, 'UZ', 'Andijon'),
(3755, 'UZ', 'Bukhoro'),
(3756, 'UZ', 'Farghona'),
(3757, 'UZ', 'Jizzakh'),
(3758, 'UZ', 'Khorazm'),
(3759, 'UZ', 'Namangan'),
(3760, 'UZ', 'Nawoiy'),
(3761, 'UZ', 'Qashqadaryo'),
(3762, 'UZ', 'Qoraqalpoghiston'),
(3763, 'UZ', 'Samarqand'),
(3764, 'UZ', 'Sirdaryo'),
(3765, 'UZ', 'Surkhondaryo'),
(3766, 'UZ', 'Toshkent'),
(3767, 'UZ', 'Toshkent'),
(3768, 'VC', 'Charlotte'),
(3769, 'VC', 'St. Andrew'),
(3770, 'VC', 'St. David'),
(3771, 'VC', 'St. George'),
(3772, 'VC', 'St. Patrick'),
(3773, 'VC', 'Grenadines'),
(3774, 'VE', 'Amazonas'),
(3775, 'VE', 'Anzoategui'),
(3776, 'VE', 'Apure'),
(3777, 'VE', 'Aragua'),
(3778, 'VE', 'Barinas'),
(3779, 'VE', 'Bolivar'),
(3780, 'VE', 'Carabobo'),
(3781, 'VE', 'Cojedes'),
(3782, 'VE', 'Delta Amacuro'),
(3783, 'VE', 'Falcon'),
(3784, 'VE', 'Guarico'),
(3785, 'VE', 'Lara'),
(3786, 'VE', 'Merida'),
(3787, 'VE', 'Miranda'),
(3788, 'VE', 'Monagas'),
(3789, 'VE', 'Nueva Esparta'),
(3790, 'VE', 'Portuguesa'),
(3791, 'VE', 'Sucre'),
(3792, 'VE', 'Tachira'),
(3793, 'VE', 'Trujillo'),
(3794, 'VE', 'Yaracuy'),
(3795, 'VE', 'Zulia'),
(3796, 'VE', 'Territorio Insular Francisco de Miranda'),
(3797, 'VE', 'Distrito Federal'),
(3798, 'VE', 'Vargas'),
(3799, 'VN', 'Bac Thai'),
(3800, 'VN', 'Ben Tre'),
(3801, 'VN', 'Cao Bang'),
(3802, 'VN', 'Ha Bac'),
(3803, 'VN', 'Hai Hung'),
(3804, 'VN', 'Hai Phong'),
(3805, 'VN', 'Lai Chau'),
(3806, 'VN', 'Lam Dong'),
(3807, 'VN', 'Long An'),
(3808, 'VN', 'Quang Nam-Da Nang'),
(3809, 'VN', 'Quang Ninh'),
(3810, 'VN', 'Son La'),
(3811, 'VN', 'Tay Ninh'),
(3812, 'VN', 'Thanh Hoa'),
(3813, 'VN', 'Thai Binh'),
(3814, 'VN', 'Tien Giang'),
(3815, 'VN', 'Lang Son'),
(3816, 'VN', 'An Giang'),
(3817, 'VN', 'Dac Lac'),
(3818, 'VN', 'Dong Nai'),
(3819, 'VN', 'Dong Thap'),
(3820, 'VN', 'Kien Giang'),
(3821, 'VN', 'Minh Hai'),
(3822, 'VN', 'Song Be'),
(3823, 'VN', 'Vinh Phu'),
(3824, 'VN', 'Ha Noi'),
(3825, 'VN', 'Ho Chi Minh'),
(3826, 'VN', 'Ba Ria-Vung Tau'),
(3827, 'VN', 'Binh Dinh'),
(3828, 'VN', 'Binh Thuan'),
(3829, 'VN', 'Can Tho'),
(3830, 'VN', 'Gia Lai'),
(3831, 'VN', 'Ha Giang'),
(3832, 'VN', 'Ha Tay'),
(3833, 'VN', 'Ha Tinh'),
(3834, 'VN', 'Hoa Binh'),
(3835, 'VN', 'Khanh Hoa'),
(3836, 'VN', 'Kon Tum'),
(3837, 'VN', 'Lao Cai'),
(3838, 'VN', 'Nam Ha'),
(3839, 'VN', 'Nghe An'),
(3840, 'VN', 'Ninh Binh'),
(3841, 'VN', 'Ninh Thuan'),
(3842, 'VN', 'Phu Yen'),
(3843, 'VN', 'Quang Binh'),
(3844, 'VN', 'Quang Ngai'),
(3845, 'VN', 'Quang Tri'),
(3846, 'VN', 'Soc Trang'),
(3847, 'VN', 'Thua Thien'),
(3848, 'VN', 'Tra Vinh'),
(3849, 'VN', 'Tuyen Quang'),
(3850, 'VN', 'Vinh Long'),
(3851, 'VN', 'Yen Bai'),
(3852, 'VU', 'Ambrym'),
(3853, 'VU', 'Aoba'),
(3854, 'VU', 'Banks'),
(3855, 'VU', 'Efate'),
(3856, 'VU', 'Epi'),
(3857, 'VU', 'Malakula'),
(3858, 'VU', 'Paama'),
(3859, 'VU', 'Pentecote'),
(3860, 'VU', 'Santo'),
(3861, 'VU', 'Shepherd'),
(3862, 'VU', 'Tafea'),
(3863, 'WS', 'Aiga-i-le-Tai'),
(3864, 'WS', 'Atua'),
(3865, 'WS', 'Fa'),
(3866, 'WS', 'Gaga'),
(3867, 'WS', 'Va'),
(3868, 'WS', 'Gagaifomauga'),
(3869, 'WS', 'Palauli'),
(3870, 'WS', 'Satupa'),
(3871, 'WS', 'Tuamasaga'),
(3872, 'WS', 'Vaisigano'),
(3873, 'YE', 'Abyan'),
(3874, 'YE', 'Al Mahrah'),
(3875, 'YE', 'Hadramawt'),
(3876, 'YE', 'Shabwah'),
(3877, 'YE', 'Lahij'),
(3878, 'YE', 'Al Bayda&#39;'),
(3879, 'YE', 'Al Hudaydah'),
(3880, 'YE', 'Al Jawf'),
(3881, 'YE', 'Al Mahwit'),
(3882, 'YE', 'Dhamar'),
(3883, 'YE', 'Hajjah'),
(3884, 'YE', 'Ibb'),
(3885, 'YE', 'Ma&#39;rib'),
(3886, 'YE', 'Sa'),
(3887, 'YE', 'San'),
(3888, 'YE', 'Ta'),
(3889, 'ZA', 'W. Cape'),
(3890, 'ZA', 'N. Cape'),
(3891, 'ZA', 'Eastern Cape'),
(3892, 'ZA', 'Free State'),
(3893, 'ZA', 'Limpopo'),
(3894, 'ZA', 'North West'),
(3895, 'ZA', 'KwaZulu-Natal'),
(3896, 'ZA', 'Gauteng'),
(3897, 'ZA', 'Mpumalanga'),
(3898, 'ZM', 'W.'),
(3899, 'ZM', 'Central'),
(3900, 'ZM', 'Eastern'),
(3901, 'ZM', 'Luapula'),
(3902, 'ZM', 'N.'),
(3903, 'ZM', 'North-W.'),
(3904, 'ZM', 'S.ern'),
(3905, 'ZM', 'Copperbelt'),
(3906, 'ZM', 'Lusaka'),
(3907, 'ZR', 'Bandundu'),
(3908, 'ZR', 'Equateur'),
(3909, 'ZR', 'Kasai-Occidental'),
(3910, 'ZR', 'Kasai-Oriental'),
(3911, 'ZR', 'Shaba'),
(3912, 'ZR', 'Kinshasa'),
(3913, 'ZR', 'Kivu'),
(3914, 'ZR', 'Bas-Zaire'),
(3915, 'ZR', 'Haut-Zaire'),
(3916, 'ZW', 'Manicaland'),
(3917, 'ZW', 'Midlands'),
(3918, 'ZW', 'Mashonaland Central'),
(3919, 'ZW', 'Mashonaland East'),
(3920, 'ZW', 'Mashonaland West'),
(3921, 'ZW', 'Matabeleland North'),
(3922, 'ZW', 'Matabeleland S.'),
(3923, 'ZW', 'Masvingo'),
(3924, 'ZW', 'Bulawayo'),
(3925, 'ZW', 'Harare'),
(3926, 'CW', 'Curaçao'),
(3927, 'AW', 'Aruba'),
(3928, 'BQ', 'Bonaire, Sint Eustatius and Saba');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_reviews_ratings`
--

DROP TABLE IF EXISTS `joomla_jomres_reviews_ratings`;
CREATE TABLE `joomla_jomres_reviews_ratings` (
  `rating_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review_title` varchar(255) DEFAULT NULL,
  `review_description` text,
  `pros` text,
  `cons` text,
  `rating` tinyint(4) DEFAULT NULL,
  `rating_ip` varchar(20) DEFAULT NULL,
  `rating_date` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_reviews_ratings_confirm`
--

DROP TABLE IF EXISTS `joomla_jomres_reviews_ratings_confirm`;
CREATE TABLE `joomla_jomres_reviews_ratings_confirm` (
  `confirm_rating_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `confirm_user_id` int(11) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `confirm_ip` varchar(20) DEFAULT NULL,
  `confirm_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_reviews_ratings_detail`
--

DROP TABLE IF EXISTS `joomla_jomres_reviews_ratings_detail`;
CREATE TABLE `joomla_jomres_reviews_ratings_detail` (
  `detail_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `detail_rating` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_reviews_reports`
--

DROP TABLE IF EXISTS `joomla_jomres_reviews_reports`;
CREATE TABLE `joomla_jomres_reviews_reports` (
  `report_id` int(11) NOT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `report` text,
  `report_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_rooms`
--

DROP TABLE IF EXISTS `joomla_jomres_rooms`;
CREATE TABLE `joomla_jomres_rooms` (
  `room_uid` int(11) NOT NULL,
  `room_classes_uid` int(11) DEFAULT NULL,
  `propertys_uid` int(11) DEFAULT NULL,
  `room_features_uid` varchar(255) DEFAULT NULL,
  `room_name` text,
  `room_number` varchar(255) DEFAULT NULL,
  `room_floor` varchar(10) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `singleperson_suppliment` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_rooms`
--

INSERT INTO `joomla_jomres_rooms` (`room_uid`, `room_classes_uid`, `propertys_uid`, `room_features_uid`, `room_name`, `room_number`, `room_floor`, `max_people`, `singleperson_suppliment`) VALUES
(1, 3, 1, '1,2', 'The Pitt', '11', '1', 2, 0),
(2, 3, 1, '1,2', 'The hole', '21', '2', 4, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_roomtypes_propertytypes_xref`
--

DROP TABLE IF EXISTS `joomla_jomres_roomtypes_propertytypes_xref`;
CREATE TABLE `joomla_jomres_roomtypes_propertytypes_xref` (
  `id` int(11) NOT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `propertytype_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_roomtypes_propertytypes_xref`
--

INSERT INTO `joomla_jomres_roomtypes_propertytypes_xref` (`id`, `roomtype_id`, `propertytype_id`) VALUES
(1, 11, 4),
(2, 12, 4),
(3, 13, 4),
(4, 14, 4),
(5, 15, 4),
(6, 21, 4),
(7, 24, 2),
(8, 25, 2),
(9, 16, 3),
(10, 17, 3),
(11, 19, 3),
(12, 20, 3),
(13, 22, 2),
(14, 23, 2),
(15, 18, 3),
(16, 4, 1),
(17, 4, 5),
(18, 1, 1),
(19, 1, 5),
(20, 3, 1),
(21, 3, 5),
(22, 2, 1),
(23, 2, 5),
(24, 5, 6),
(25, 5, 7),
(26, 5, 8),
(27, 6, 6),
(28, 6, 7),
(29, 6, 8),
(30, 7, 6),
(31, 7, 7),
(32, 7, 8),
(33, 8, 6),
(34, 8, 7),
(35, 8, 8),
(36, 9, 6),
(37, 9, 7),
(38, 9, 8),
(39, 10, 6),
(40, 10, 7),
(41, 10, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_room_bookings`
--

DROP TABLE IF EXISTS `joomla_jomres_room_bookings`;
CREATE TABLE `joomla_jomres_room_bookings` (
  `room_bookings_uid` int(11) NOT NULL,
  `room_uid` int(11) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `contract_uid` int(11) DEFAULT NULL,
  `black_booking` tinyint(1) DEFAULT NULL,
  `reception_booking` tinyint(1) DEFAULT NULL,
  `internet_booking` tinyint(1) DEFAULT NULL,
  `property_uid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_room_classes`
--

DROP TABLE IF EXISTS `joomla_jomres_room_classes`;
CREATE TABLE `joomla_jomres_room_classes` (
  `room_classes_uid` int(11) NOT NULL,
  `room_class_abbv` varchar(255) DEFAULT NULL,
  `room_class_full_desc` varchar(255) DEFAULT NULL,
  `image` text,
  `property_uid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_room_classes`
--

INSERT INTO `joomla_jomres_room_classes` (`room_classes_uid`, `room_class_abbv`, `room_class_full_desc`, `image`, `property_uid`) VALUES
(1, 'Room Double beds', '', 'double.png', '0'),
(2, 'Room Twin beds', '', 'twin.png', '0'),
(3, 'Room Single', '', 'single.png', '0'),
(4, 'Room 4 Poster bed', '', 'fourposter.png', '0'),
(5, '1 Bedroom', '', '1bedroom.png', '0'),
(6, '2 Bedrooms', '', '2bedrooms.png', '0'),
(7, '3 Bedrooms', '', '3bedrooms.png', '0'),
(8, '4 Bedrooms', '', '4bedrooms.png', '0'),
(9, '5 Bedrooms', '', '5bedrooms.png', '0'),
(10, '6+ Bedrooms', '', '6plusbedrooms.png', '0'),
(11, 'Tent pitch 1 person ', '', 'camping_1bivi_pitch.png', '0'),
(12, 'Tent pitch 2 person ', '', 'camping_2_man_tent_pitch.png', '0'),
(13, 'Tent pitch 3 person ', '', 'camping_3_man_tent_pitch.png', '0'),
(14, 'Tent pitch 4 person ', '', 'camping_4_man_tent_pitch.png', '0'),
(15, 'Tent pitch 6+ person', '', 'camping_6_man_tent_pitch.png', '0'),
(16, 'Car rental Hatchback', '', 'car_rental_hatchback.png', '0'),
(17, 'Car rental Luxury', '', 'car_rental_luxury.png', '0'),
(18, 'Car rental Minivan', '', 'car_rental_peoplecarrier.png', '0'),
(19, 'Car rental Saloon', '', 'car_rental_saloon.png', '0'),
(20, 'Car rental Sportscar', '', 'car_rental_sportscar.png', '0'),
(21, 'Tent pitch Caravan', '', 'camping_caravan_pitch.png', '0'),
(22, 'Yacht 2 berth', '', 'yacht_2_berth.png', '0'),
(23, 'Yacht 4 berth', '', 'yacht_4_berth.png', '0'),
(24, 'Yacht 6 berth', '', 'yacht_6_berth.png', '0'),
(25, 'Yacht 8+ berth', '', 'yacht_8_berth.png', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_room_features`
--

DROP TABLE IF EXISTS `joomla_jomres_room_features`;
CREATE TABLE `joomla_jomres_room_features` (
  `room_features_uid` int(11) NOT NULL,
  `feature_description` text,
  `property_uid` varchar(11) DEFAULT NULL,
  `ptype_xref` text,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_room_features`
--

INSERT INTO `joomla_jomres_room_features` (`room_features_uid`, `feature_description`, `property_uid`, `ptype_xref`, `image`) VALUES
(1, 'En-suite Bathroom', '1', NULL, NULL),
(2, 'Tea & Coffee Making facilities', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_settings`
--

DROP TABLE IF EXISTS `joomla_jomres_settings`;
CREATE TABLE `joomla_jomres_settings` (
  `uid` int(11) NOT NULL,
  `property_uid` int(11) DEFAULT NULL,
  `akey` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_jomres_settings`
--

INSERT INTO `joomla_jomres_settings` (`uid`, `property_uid`, `akey`, `value`) VALUES
(1, 0, 'version', '9.8.18'),
(2, 0, 'newTariffModels', '2'),
(3, 0, 'singlePersonSuppliment', '0'),
(4, 0, 'singlePersonSupplimentCost', '10'),
(5, 0, 'perPersonPerNight', '0'),
(6, 0, 'depositIsPercentage', '1'),
(7, 0, 'depositValue', '20'),
(8, 0, 'errorChecking', '0'),
(9, 0, 'errorCheckingShowSQL', '0'),
(10, 0, 'jomresdotnet', 'www.jomres.net'),
(11, 0, 'visitorscanbookonline', '1'),
(12, 0, 'fixedPeriodBookings', '0'),
(13, 0, 'fixedPeriodBookingsNumberOfDays', '7'),
(14, 0, 'numberofFixedPeriods', '4'),
(15, 0, 'singleRoomProperty', '0'),
(16, 0, 'fixedArrivalDateYesNo', '0'),
(17, 0, 'fixedArrivalDay', '0'),
(18, 0, 'showAvailabilityCalendar', '1'),
(19, 0, 'avlcal_todaycolor', '#CC0000'),
(20, 0, 'avlcal_inmonthface', '#000000'),
(21, 0, 'avlcal_outmonface', '#666666'),
(22, 0, 'avlcal_inbgcolour', '#6AFB92'),
(23, 0, 'avlcal_outbgcolour', '#FFCCFF'),
(24, 0, 'avlcal_occupiedcolour', '#FF0000'),
(25, 0, 'avlcal_provisionalcolour', '#FFFC17'),
(26, 0, 'showRoomsListingLink', '1'),
(27, 0, 'cformat', '2'),
(28, 0, 'weekenddays', '5,6'),
(29, 0, 'avlcal_black', '#BEBEBE'),
(30, 0, 'avlcal_booking', 'green'),
(31, 0, 'avlcal_pastcolour', '#BEBEBE'),
(32, 0, 'avlcal_weekendborder', '#BEBEBE'),
(33, 0, 'cal_output', 'jS M Y'),
(34, 0, 'cal_input', '%d/%m/%Y'),
(35, 0, 'fixedPeriodBookingsShortYesNo', '0'),
(36, 0, 'fixedPeriodBookingsShortNumberOfDays', '4'),
(37, 0, 'showExtras', '1'),
(38, 0, 'limitAdvanceBookingsYesNo', '0'),
(39, 0, 'advanceBookingsLimit', '90'),
(40, 0, 'roomTaxYesNo', '0'),
(41, 0, 'roomTaxFixed', '0'),
(42, 0, 'roomTaxPercentage', '0'),
(43, 0, 'euroTaxYesNo', '0'),
(44, 0, 'euroTaxPercentage', '0'),
(45, 0, 'editingOn', '0'),
(46, 0, 'depAmount', '0'),
(47, 0, 'CalendarMonthsToShow', '12'),
(48, 0, 'encKey', ''),
(49, 0, 'editiconsize', 'small'),
(50, 0, 'showTariffsLink', '0'),
(51, 0, 'showdepartureinput', '1'),
(52, 0, 'ratemultiplier', '1'),
(53, 0, 'dateFormatStyle', '1'),
(54, 0, 'showSlideshowLink', '0'),
(55, 0, 'showSlideshowInline', '1'),
(56, 0, 'showTariffsInline', '1'),
(57, 0, 'inputBoxErrorBackground', '#fce31d'),
(58, 0, 'defaultcountry', 'GB'),
(59, 0, 'calstartfrombeginningofyear', '0'),
(60, 0, 'showGoogleCurrencyLink', '1'),
(61, 0, 'currencyCodes', ''),
(62, 0, 'showRoomsInPropertyDetails', '1'),
(63, 0, 'showOnlyAvailabilityCalendar', '0'),
(64, 0, 'minimuminterval', '1'),
(65, 0, 'mindaysbeforearrival', '1'),
(66, 0, 'defaultNumberOfFirstGuesttype', '2'),
(67, 0, 'registeredUsersOnlyCanBook', '0'),
(68, 0, 'roundupDepositYesNo', '0'),
(69, 0, 'chargeDepositYesNo', '1'),
(70, 0, 'tariffChargesStoredWeeklyYesNo', '0'),
(71, 0, 'fixedArrivalDatesRecurring', '12'),
(72, 0, 'inputBoxOktobookBackground', '#11ff22'),
(73, 0, 'supplimentChargeIsPercentage', '0'),
(74, 0, 'returnRoomsLimit', '1'),
(75, 0, 'tariffmode', '0'),
(76, 0, 'roomslistinpropertydetails', '1'),
(77, 0, 'verbosetariffinfo', '0'),
(78, 0, 'bookingform_roomlist_showroomno', '1'),
(79, 0, 'bookingform_roomlist_showroomname', '0'),
(80, 0, 'bookingform_roomlist_showtarifftitle', '0'),
(81, 0, 'bookingform_overlib_tariff_title_show', '1'),
(82, 0, 'bookingform_overlib_tariff_desc_show', '1'),
(83, 0, 'bookingform_overlib_tariff_rate_show', '1'),
(84, 0, 'bookingform_overlib_tariff_starts_show', '0'),
(85, 0, 'bookingform_overlib_tariff_ends_show', '0'),
(86, 0, 'bookingform_overlib_tariff_mindays_show', '0'),
(87, 0, 'bookingform_overlib_tariff_maxdays_show', '0'),
(88, 0, 'bookingform_overlib_tariff_minpeeps_show', '0'),
(89, 0, 'bookingform_overlib_tariff_maxpeeps_show', '0'),
(90, 0, 'bookingform_overlib_room_number_show', '1'),
(91, 0, 'bookingform_overlib_room_name_show', '0'),
(92, 0, 'bookingform_overlib_room_type_show', '1'),
(93, 0, 'bookingform_overlib_room_floor_show', '0'),
(94, 0, 'bookingform_overlib_room_maxpeople_show', '1'),
(95, 0, 'bookingform_overlib_room_features_show', '1'),
(96, 0, 'bookingform_requiredfields_name', '1'),
(97, 0, 'bookingform_requiredfields_surname', '1'),
(98, 0, 'bookingform_requiredfields_houseno', '1'),
(99, 0, 'bookingform_requiredfields_street', '1'),
(100, 0, 'bookingform_requiredfields_town', '1'),
(101, 0, 'bookingform_requiredfields_postcode', '1'),
(102, 0, 'bookingform_requiredfields_region', '1'),
(103, 0, 'bookingform_requiredfields_country', '1'),
(104, 0, 'bookingform_requiredfields_tel', '1'),
(105, 0, 'bookingform_requiredfields_mobile', '1'),
(106, 0, 'bookingform_requiredfields_email', '1'),
(107, 0, 'bookingform_roomlist_showdisabled', '1'),
(108, 0, 'bookingform_roomlist_showmaxpeople', '1'),
(109, 0, 'accommodation_tax_code', '1'),
(110, 0, 'use_variable_deposits', '0'),
(111, 0, 'variable_deposit_threashold', '60'),
(112, 0, 'is_real_estate_listing', '0'),
(113, 0, 'property_currencycode', 'EUR'),
(114, 0, 'prices_inclusive', '0'),
(115, 0, 'booking_form_rooms_list_style', '2'),
(116, 0, 'booking_form_daily_weekly_monthly', 'D'),
(117, 0, 'showRoomImageInBookingFormOverlib', '2'),
(118, 0, 'tariffsenhanceddefault', '100'),
(119, 0, 'tariffsenhancedyearstoshow', '2'),
(120, 0, 'wholeday_booking', '0'),
(121, 0, 'cancellation_threashold', '14'),
(122, 0, 'depositIsOneNight', '0'),
(123, 0, 'auto_detect_country_for_booking_form', '1'),
(124, 0, 'property_language', 'en-GB'),
(125, 0, 'property_vat_number', ''),
(126, 0, 'property_vat_number_validated', '0'),
(127, 0, 'vat_number_validation_response', ''),
(128, 0, 'requireApproval', '0'),
(129, 0, 'showPfeaturesCategories', '1'),
(130, 0, 'currency_symbol_swap', '0'),
(131, 0, 'facebook_page', ''),
(132, 0, 'bookingform_overlib_room_disabledaccess_show', '1'),
(133, 0, 'bookingform_overlib_room_smoking_show', '0'),
(134, 0, 'defaultSmokingOption', '2'),
(135, 0, 'showSmoking', '0'),
(136, 0, 'useOnlinepayment', '0'),
(137, 0, 'minimum_deposit_percentage', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_jomres_tax_rules`
--

DROP TABLE IF EXISTS `joomla_jomres_tax_rules`;
CREATE TABLE `joomla_jomres_tax_rules` (
  `id` int(11) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_languages`
--

DROP TABLE IF EXISTS `joomla_languages`;
CREATE TABLE `joomla_languages` (
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
-- Daten für Tabelle `joomla_languages`
--

INSERT INTO `joomla_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_menu`
--

DROP TABLE IF EXISTS `joomla_menu`;
CREATE TABLE `joomla_menu` (
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
-- Daten für Tabelle `joomla_menu`
--

INSERT INTO `joomla_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 89, 0, '*', 0),
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
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
(102, 'mainmenu', 'Beitrag erstellen', 'beitrag-erstellen', '', 'beitrag-erstellen', 'index.php?option=com_content&view=form&layout=edit', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 41, 42, 0, '*', 0),
(103, 'mainmenu', 'Abmelden', 'abmelden', '', 'abmelden', 'index.php?option=com_users&view=login&layout=logout&task=user.menulogout', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"logout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 43, 44, 0, '*', 0),
(104, 'mainmenu', 'Anmeldeformular', 'anmeldeformular', '', 'anmeldeformular', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"loginredirectchoice":"1","login_redirect_url":"","login_redirect_menuitem":"","logindescription_show":"1","login_description":"","login_image":"","logoutredirectchoice":"1","logout_redirect_url":"","logout_redirect_menuitem":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"-1","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"17","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"-1","splitmenu_customclass":""}', 45, 46, 0, '*', 0),
(106, 'main', 'COM_JOMRES', 'com-jomres', '', 'com-jomres', 'index.php?option=com_jomres', 'component', 0, 1, 1, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'jomres/images/jrhouse.png', 0, '{}', 47, 48, 0, '', 1),
(107, 'mainmenu', 'Testbeitrag', 'testbeitrag', '', 'testbeitrag', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(108, 'main', 'COM_TEMPLATECK', 'com-templateck', '', 'com-templateck', 'index.php?option=com_templateck', 'component', 0, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 51, 52, 0, '', 1),
(109, 'test', 'testmenueintrgag1', 'testmenueintrgag1', '', 'testmenueintrgag1', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(110, 'mainmenu', 'Patrick', 'patrick', '', 'patrick', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(122, 'main', 'COM_AKEEBA', 'com-akeeba', '', 'com-akeeba', 'index.php?option=com_akeeba', 'component', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_akeeba/icons/akeeba-16.png', 0, '{}', 57, 58, 0, '', 1),
(123, 'main', 'RealEstateManager', 'RealEstateManager', '', 'realestatemanager', 'index.php?option=com_realestatemanager', 'component', 0, 1, 1, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 59, 78, 0, '', 1),
(124, 'main', 'Houses', 'Houses', '', 'realestatemanager/houses', 'index.php?option=com_realestatemanager', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:module', 0, '{}', 60, 61, 0, '', 1),
(125, 'main', 'Categories', 'Categories', '', 'realestatemanager/categories', 'index.php?option=com_realestatemanager&section=categories', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 62, 63, 0, '', 1),
(126, 'main', 'Amenities Manager', 'Amenities Manager', '', 'realestatemanager/amenities-manager', 'index.php?option=com_realestatemanager&section=featured_manager', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 64, 65, 0, '', 1),
(127, 'main', 'Booking Manager', 'Booking Manager', '', 'realestatemanager/booking-manager', 'index.php?option=com_realestatemanager&task=rent_requests', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 66, 67, 0, '', 1),
(128, 'main', 'Booking History', 'Booking History', '', 'realestatemanager/booking-history', 'index.php?option=com_realestatemanager&task=users_rent_history', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 68, 69, 0, '', 1),
(129, 'main', 'Sale Manager', 'Sale Manager', '', 'realestatemanager/sale-manager', 'index.php?option=com_realestatemanager&task=buying_requests', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 70, 71, 0, '', 1),
(130, 'main', 'Language Manager', 'Language Manager', '', 'realestatemanager/language-manager', 'index.php?option=com_realestatemanager&section=language_manager', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:writemess', 0, '{}', 72, 73, 0, '', 1),
(131, 'main', 'Settings', 'Settings', '', 'realestatemanager/settings', 'index.php?option=com_realestatemanager&task=config', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:config', 0, '{}', 74, 75, 0, '', 1),
(132, 'main', 'About', 'About', '', 'realestatemanager/about', 'index.php?option=com_realestatemanager&task=about', 'component', 0, 123, 2, 10059, 0, '0000-00-00 00:00:00', 0, 1, 'class:info', 0, '{}', 76, 77, 0, '', 1),
(133, 'mainmenu', 'Buchungsplattform', 'real-estate', '', 'real-estate', 'index.php?option=com_realestatemanager&view=all_categories&layout=allcategories', 'component', 1, 1, 1, 10059, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"allcategorylayout":"","categorylayout":"","viewhouselayout":"","back_button":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(134, 'mainmenu', 'TEST', 'kategorie', '', 'kategorie', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","display_num":"10","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(135, 'mainmenu', 'Test', 'test', '', 'test', 'index.php?option=com_realestatemanager&view=all_categories&layout=allcategories', 'component', -2, 1, 1, 10059, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"allcategorylayout":"","categorylayout":"","viewhouselayout":"","back_button":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(136, 'footer-menue', 'Impressum', 'impressum', '', 'impressum', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(137, 'footer-menue', 'AGB', 'agb', '', 'agb', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_menu_types`
--

DROP TABLE IF EXISTS `joomla_menu_types`;
CREATE TABLE `joomla_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_menu_types`
--

INSERT INTO `joomla_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 57, 'test', 'Test', 'test'),
(3, 77, 'spacesharing', 'Spacesharing', 'Footer Menü1'),
(4, 79, 'footer-menue', 'Footer Menü', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_messages`
--

DROP TABLE IF EXISTS `joomla_messages`;
CREATE TABLE `joomla_messages` (
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
-- Tabellenstruktur für Tabelle `joomla_messages_cfg`
--

DROP TABLE IF EXISTS `joomla_messages_cfg`;
CREATE TABLE `joomla_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_modules`
--

DROP TABLE IF EXISTS `joomla_modules`;
CREATE TABLE `joomla_modules` (
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
-- Daten für Tabelle `joomla_modules`
--

INSERT INTO `joomla_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"mainmenu","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
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
(16, 50, 'Login Form', '', '', 1, 'loginarea', 0, '0000-00-00 00:00:00', '2016-12-21 11:06:08', '0000-00-00 00:00:00', 0, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 56, 'Testnavigation', '', '', 1, 'Footer1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"test","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 73, 'RealEstateManager Featured Free', '', '', 1, 'ContentTop1', 513, '2016-12-22 08:52:51', '2016-12-21 08:25:13', '0000-00-00 00:00:00', 1, 'mod_realestatemanager_featured_free_j3', 1, 0, '{"sortnewby":"0","optBedrooms":"0","optCategory":"0","optCity":"0","displaytype":"0","image":"1","image_width":"150","image_height":"150","status":"1","location":"1","categories":"1","features":"1","hits":"1","description":"1","words":"","price":"1","view_listing":"1","count":"5","image_source_type":"0","layout":"_:default","moduleclass_sfx":"","ItemId":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 74, 'Real Estate Manager Location Map Free', '', '', 1, 'map', 513, '2016-12-22 14:01:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_realestatemanager_location_map', 1, 0, '{"map_width":"100","map_height":"307","menu_map":"1","control_map":"1","new_target":"1","estates":"5","cat_id":"","estate_id":"","moduleclass_sfx":"","layout":"_:default","ItemId":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 75, 'RealEstateManager Search Free', '', '', 1, 'roomsearch', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_realestatemanagersearch_j3', 1, 0, '{"rent":"0","price":"0","listing_status_list":"0","listing_type_list":"0","layout":"_:default","moduleclass_sfx":"","ItemId":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 78, 'Fußzeile', '', '', 1, 'copyright', 513, '2017-01-04 10:25:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 81, 'Impressum', '', '', 1, 'Footer4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"spacesharing","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 82, 'Impressum', '', '', 1, 'footermenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"footer-menue","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"footer-menu","class_sfx":"footer-test","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_modules_menu`
--

DROP TABLE IF EXISTS `joomla_modules_menu`;
CREATE TABLE `joomla_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_modules_menu`
--

INSERT INTO `joomla_modules_menu` (`moduleid`, `menuid`) VALUES
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
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 101),
(89, 101),
(90, 101),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_newsfeeds`
--

DROP TABLE IF EXISTS `joomla_newsfeeds`;
CREATE TABLE `joomla_newsfeeds` (
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
-- Tabellenstruktur für Tabelle `joomla_overrider`
--

DROP TABLE IF EXISTS `joomla_overrider`;
CREATE TABLE `joomla_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_postinstall_messages`
--

DROP TABLE IF EXISTS `joomla_postinstall_messages`;
CREATE TABLE `joomla_postinstall_messages` (
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
-- Daten für Tabelle `joomla_postinstall_messages`
--

INSERT INTO `joomla_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_redirect_links`
--

DROP TABLE IF EXISTS `joomla_redirect_links`;
CREATE TABLE `joomla_redirect_links` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_buying_request`
--

DROP TABLE IF EXISTS `joomla_rem_buying_request`;
CREATE TABLE `joomla_rem_buying_request` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_categories`
--

DROP TABLE IF EXISTS `joomla_rem_categories`;
CREATE TABLE `joomla_rem_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `iditem` int(11) NOT NULL DEFAULT '0',
  `idcat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_categories`
--

INSERT INTO `joomla_rem_categories` (`id`, `iditem`, `idcat`) VALUES
(2, 2, 46),
(12, 3, 50),
(4, 4, 47);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_const`
--

DROP TABLE IF EXISTS `joomla_rem_const`;
CREATE TABLE `joomla_rem_const` (
  `id` int(11) UNSIGNED NOT NULL,
  `const` varchar(250) DEFAULT '',
  `sys_type` varchar(250) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_const`
--

INSERT INTO `joomla_rem_const` (`id`, `const`, `sys_type`) VALUES
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
(345, '_REALESTATE_MANAGER_INFOTEXT_JS_BEDROOMS', 'Realestate Manager'),
(346, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_YEAR', 'Realestate Manager'),
(347, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_AREA', 'Realestate Manager'),
(348, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_LOT_SIZE', 'Realestate Manager'),
(349, '_REALESTATE_MANAGER_INFOTEXT_JS_BUILD_HOUSE_SIZE', 'Realestate Manager'),
(350, '_REALESTATE_MANAGER_INFOTEXT_JS_BUY_REQ_NAME', 'Realestate Manager'),
(351, '_REALESTATE_MANAGER_INFOTEXT_JS_BUY_REQ_EMAIL', 'Realestate Manager'),
(352, '_REALESTATE_MANAGER_INFOTEXT_JS_BUY_REQ_PHONE', 'Realestate Manager'),
(353, '_REALESTATE_MANAGER_LABEL_LISTING_TYPE', 'Realestate Manager'),
(354, '_REALESTATE_MANAGER_LABEL_LISTING_STATUS', 'Realestate Manager'),
(355, '_REALESTATE_MANAGER_LABEL_ROOMS', 'Realestate Manager'),
(356, '_REALESTATE_MANAGER_LABEL_BATHROOMS', 'Realestate Manager'),
(357, '_REALESTATE_MANAGER_LABEL_BEDROOMS', 'Realestate Manager'),
(358, '_REALESTATE_MANAGER_LABEL_AGENT', 'Realestate Manager'),
(359, '_REALESTATE_MANAGER_LABEL_CONTACT_AGENT', 'Realestate Manager'),
(360, '_REALESTATE_MANAGER_LABEL_AGENT_INFO', 'Realestate Manager'),
(361, '_REALESTATE_MANAGER_LABEL_PHOTOS', 'Realestate Manager'),
(362, '_REALESTATE_MANAGER_LABEL_PRICING', 'Realestate Manager'),
(363, '_REALESTATE_MANAGER_LABEL_OVERVIEW', 'Realestate Manager'),
(364, '_REALESTATE_MANAGER_LABEL_AMENITIES', 'Realestate Manager'),
(365, '_REALESTATE_MANAGER_LABEL_BOOK_NOW', 'Realestate Manager'),
(366, '_REALESTATE_MANAGER_LABEL_EXPIRATION_DATE', 'Realestate Manager'),
(367, '_REALESTATE_MANAGER_LABEL_LOT_SIZE', 'Realestate Manager'),
(368, '_REALESTATE_MANAGER_LABEL_HOUSE_SIZE', 'Realestate Manager'),
(369, '_REALESTATE_MANAGER_LABEL_GARAGES', 'Realestate Manager'),
(370, '_REALESTATE_MANAGER_LABEL_APPROVED', 'Realestate Manager'),
(371, '_REALESTATE_MANAGER_REQUEST_PHONE', 'Realestate Manager'),
(372, '_REALESTATE_MANAGER_HEADER_REQUIREMENT_FIELDS', 'Realestate Manager'),
(373, '_REALESTATE_MANAGER_HEADER_RECOMMENDED_FIELDS', 'Realestate Manager'),
(374, '_REALESTATE_MANAGER_HEADER_ADDRESS_FIELDS', 'Realestate Manager'),
(375, '_REALESTATE_MANAGER_HEADER_OPTIONAL_FIELDS', 'Realestate Manager'),
(376, '_REALESTATE_MANAGER_HEADER_PHOTO_MANAGE', 'Realestate Manager'),
(377, '_REALESTATE_MANAGER_HEADER_PHOTOGALERY', 'Realestate Manager'),
(378, '_REALESTATE_MANAGER_HEADER_ADVERTISMENT', 'Realestate Manager'),
(379, '_REALESTATE_MANAGER_LABEL_BUYING', 'Realestate Manager'),
(380, '_REALESTATE_MANAGER_ADMIN_SALE_MANAGER', 'Realestate Manager'),
(381, '_REALESTATE_MANAGER_LABEL_BUTTON_SEND_MESSAGE', 'Realestate Manager'),
(382, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND', 'Realestate Manager'),
(383, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND_TT_HEAD', 'Realestate Manager'),
(384, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND_TT_BODY', 'Realestate Manager'),
(385, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL', 'Realestate Manager'),
(386, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(387, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(388, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL', 'Realestate Manager'),
(389, '_REALESTATE_MANAGER_ADMIN_CONFIG', 'Realestate Manager'),
(390, '_REALESTATE_MANAGER_ADMIN_REMOVE_MAIN_PHOTO', 'Realestate Manager'),
(391, '_REALESTATE_MANAGER_ADMIN_NEW_PHOTO', 'Realestate Manager'),
(392, '_REALESTATE_MANAGER_HOUSE_RENT_OUT', 'Realestate Manager'),
(393, '_REALESTATE_MANAGER_LABEL_ACCESSED_FOR_RENT', 'Realestate Manager'),
(394, '_REALESTATE_MANAGER_LABEL_ACCESSED_FOR_SALE', 'Realestate Manager'),
(395, '_REALESTATE_MANAGER_LABEL_RENT_RETURN', 'Realestate Manager'),
(396, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB', 'Realestate Manager'),
(397, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_TT_HEAD', 'Realestate Manager'),
(398, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_TT_BODY', 'Realestate Manager'),
(399, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEW_TAB', 'Realestate Manager'),
(400, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEW_TAB_TT_HEAD', 'Realestate Manager'),
(401, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEW_TAB_TT_BODY', 'Realestate Manager'),
(402, '_REALESTATE_MANAGER_LABEL_BUTTON_ADD_HOUSE', 'Realestate Manager'),
(403, '_REALESTATE_MANAGER_LABEL_BUTTON_PUBLISH', 'Realestate Manager'),
(404, '_REALESTATE_MANAGER_LABEL_BUTTON_UNPUBLISH', 'Realestate Manager'),
(405, '_REALESTATE_MANAGER_LABEL_BUTTON_DELETE', 'Realestate Manager'),
(406, '_REALESTATE_MANAGER_LABEL_BUTTON_RETURN_HOUSE_FROM_RENT', 'Realestate Manager'),
(407, '_REALESTATE_MANAGER_LABEL_BUTTON_RENT', 'Realestate Manager'),
(408, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_SHOW', 'Realestate Manager'),
(409, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_SHOW_TT_HEAD', 'Realestate Manager'),
(410, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_SHOW_TT_BODY', 'Realestate Manager'),
(411, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_REGISTRATIONLEVEL', 'Realestate Manager'),
(412, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(413, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(414, '_REALESTATE_MANAGER_LABEL_CONTACTS', 'Realestate Manager'),
(415, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS', 'Realestate Manager'),
(416, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_TT_HEAD', 'Realestate Manager'),
(417, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_TT_BODY', 'Realestate Manager'),
(418, '_REALESTATE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(419, '_REALESTATE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION_TT_BODY', 'Realestate Manager'),
(420, '_REALESTATE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION_TT_HEAD', 'Realestate Manager'),
(421, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEWS_TAB_REGISTRATIONLEVEL', 'Realestate Manager'),
(422, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEWS_TAB_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(423, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_REVIEWS_TAB_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(424, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_REGISTRATIONLEVEL', 'Realestate Manager'),
(425, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(426, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_TAB_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(427, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_REGISTRATIONLEVEL', 'Realestate Manager'),
(428, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(429, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CONTACTS_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(430, '_REALESTATE_MANAGER_LABEL_UNAVAILABLE_FOR_RENT', 'Realestate Manager'),
(431, '_REALESTATE_MANAGER_LABEL_REAL_ESTATE_THANKS', 'Realestate Manager'),
(432, '_REALESTATE_MANAGER_LABEL_AVAILABLE_FOR_RENT_FROM', 'Realestate Manager'),
(433, '_REALESTATE_MANAGER_LABEL_AVAILABLE_FOR_RENT_UNTIL', 'Realestate Manager'),
(434, '_REALESTATE_MANAGER_LABEL_SEARCH_NOTHING_FOUND', 'Realestate Manager'),
(435, '_REALESTATE_MANAGER_TAB_DESCRIPTION', 'Realestate Manager'),
(436, '_REALESTATE_MANAGER_TAB_LOCATION', 'Realestate Manager'),
(437, '_REALESTATE_MANAGER_TAB_ALL', 'Realestate Manager'),
(438, '_REALESTATE_MANAGER_TAB_REVIEWS', 'Realestate Manager'),
(439, '_REALESTATE_MANAGER_OPTION_SELECT', 'Realestate Manager'),
(440, '_REALESTATE_MANAGER_OPTION_FOR_RENT', 'Realestate Manager'),
(441, '_REALESTATE_MANAGER_OPTION_FOR_SALE', 'Realestate Manager'),
(442, '_REALESTATE_MANAGER_OPTION_LISTING_STATUS', 'Listing Status'),
(443, '_REALESTATE_MANAGER_OPTION_PROPERTY_TYPE', 'Property type'),
(444, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_ANSWER', 'Realestate Manager'),
(445, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_TT_HEAD', 'Realestate Manager'),
(446, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_TT_BODY', 'Realestate Manager'),
(447, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM', 'Realestate Manager'),
(448, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM_TT_BODY', 'Realestate Manager'),
(449, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM_TT_HEAD', 'Realestate Manager'),
(450, '_REALESTATE_MANAGER_SHOW_SEARCH_HOUSEID', 'Realestate Manager'),
(451, '_REALESTATE_MANAGER_SHOW_SEARCH_OWNER', 'Realestate Manager'),
(452, '_REALESTATE_MANAGER_SHOW_SEARCH_EXACTLY', 'Realestate Manager'),
(453, '_REALESTATE_MANAGER_EMAIL_RENT_ANSWER_SUBJECT', 'Realestate Manager'),
(454, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM', 'Realestate Manager'),
(455, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM_TT_BODY', 'Realestate Manager'),
(456, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM_TT_HEAD', 'Realestate Manager'),
(457, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_FORM_DESCTIPTION', 'Realestate Manager'),
(458, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER', 'Realestate Manager'),
(459, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_TT_HEAD', 'Realestate Manager'),
(460, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_TT_BODY', 'Realestate Manager'),
(461, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_ACCEPTED', 'Realestate Manager'),
(462, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_DECLINED', 'Realestate Manager'),
(463, '_REALESTATE_MANAGER_TOOLBAR_ADMIN_EDIT_RENT', 'Realestate Manager'),
(464, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL', 'Realestate Manager'),
(465, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(466, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(467, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_SHOW', 'Realestate Manager'),
(468, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_HEAD', 'Realestate Manager'),
(469, '_REALESTATE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_BODY', 'Realestate Manager'),
(470, '_REALESTATE_MANAGER_CONFIG_OWNER_SHOW', 'Realestate Manager'),
(471, '_REALESTATE_MANAGER_CONFIG_OWNER_SHOW_TT_HEAD', 'Realestate Manager'),
(472, '_REALESTATE_MANAGER_CONFIG_OWNER_SHOW_TT_BODY', 'Realestate Manager'),
(473, '_REALESTATE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL', 'Realestate Manager'),
(474, '_REALESTATE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(475, '_REALESTATE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(476, '_REALESTATE_MANAGER_CONFIG_RSS_SHOW', 'Realestate Manager'),
(477, '_REALESTATE_MANAGER_CONFIG_RSS_SHOW_TT_BODY', 'Realestate Manager'),
(478, '_REALESTATE_MANAGER_CONFIG_RSS_SHOW_TT_HEAD', 'Realestate Manager'),
(479, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_LIST', 'Realestate Manager'),
(480, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_GALLERY', 'Realestate Manager'),
(481, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_LIST_GALLERY', 'Realestate Manager'),
(482, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE', 'Realestate Manager'),
(483, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_TT_HEAD', 'Realestate Manager'),
(484, '_REALESTATE_MANAGER_CONFIG_VIEW_TYPE_TT_BODY', 'Realestate Manager'),
(485, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REGISTRATIONLEVEL', 'Realestate Manager'),
(486, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD_TT_BODY', 'Realestate Manager'),
(487, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD', 'Realestate Manager'),
(488, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD_TT_HEAD', 'Realestate Manager'),
(489, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(490, '_REALESTATE_MANAGER_CONFIG_APPROVE_REGISTRATIONLEVEL', 'Realestate Manager'),
(491, '_REALESTATE_MANAGER_CONFIG_APPROVE_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(492, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD_TT_BODY', 'Realestate Manager'),
(493, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD', 'Realestate Manager'),
(494, '_REALESTATE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD_TT_HEAD', 'Realestate Manager'),
(495, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL', 'Realestate Manager'),
(496, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(497, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(498, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL', 'Realestate Manager'),
(499, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(500, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(501, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL', 'Realestate Manager'),
(502, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(503, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(504, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW', 'Realestate Manager'),
(505, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW_TT_HEAD', 'Realestate Manager'),
(506, '_REALESTATE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW_TT_BODY', 'Realestate Manager'),
(507, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW', 'Realestate Manager'),
(508, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW_TT_HEAD', 'Realestate Manager'),
(509, '_REALESTATE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW_TT_BODY', 'Realestate Manager'),
(510, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW', 'Realestate Manager'),
(511, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW_TT_HEAD', 'Realestate Manager'),
(512, '_REALESTATE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW_TT_BODY', 'Realestate Manager'),
(513, '_REALESTATE_MANAGER_LABEL_TITLE_USER_HOUSES', 'Realestate Manager'),
(514, '_REALESTATE_MANAGER_LABEL_DESCRIPTION', 'Realestate Manager'),
(515, '_REALESTATE_MANAGER_LABEL_YEAR', 'Realestate Manager'),
(516, '_REALESTATE_MANAGER_LABEL_OWNER', 'Realestate Manager'),
(517, '_REALESTATE_MANAGER_ERROR_HAVENOT_HOUSES_RSS', 'Realestate Manager'),
(518, '_REALESTATE_MANAGER_HAVENOT_HOUSES', 'Realestate Manager'),
(519, '_REALESTATE_MANAGER_DELETE_HOUSES', 'Realestate Manager'),
(520, '_REALESTATE_MANAGER_ERROR_NOT_SELECTED', 'Realestate Manager'),
(521, '_REALESTATE_MANAGER_NUMBER_HOUSES', 'Realestate Manager'),
(522, '_REALESTATE_MANAGER_LABEL_OWNERS', 'Realestate Manager'),
(523, '_REALESTATE_MANAGER_ERROR_ACCESS_PAGE', 'Realestate Manager'),
(524, '_REALESTATE_MANAGER_LABEL_TITLE_OWNERSLIST', 'Realestate Manager'),
(525, '_REALESTATE_MANAGER_LABEL_BUTTON_OWNERSLIST', 'Realestate Manager'),
(526, '_REALESTATE_MANAGER_LABEL_SHOW_MY_HOUSES', 'Realestate Manager'),
(527, '_REALESTATE_MANAGER_LABEL_TITLE_MY_HOUSES', 'Realestate Manager'),
(528, '_REALESTATE_MANAGER_LABEL_PUBLISH', 'Realestate Manager'),
(529, '_REALESTATE_MANAGER_LABEL_UNPUBLISH', 'Realestate Manager'),
(530, '_REALESTATE_MANAGER_LABEL_DELETE', 'Realestate Manager'),
(531, '_REALESTATE_MANAGER_LABEL_ID', 'Realestate Manager'),
(532, '_REALESTATE_MANAGER_LABEL_EDIT', 'Realestate Manager'),
(533, '_REALESTATE_MANAGER_ADMIN_FULL_XML', 'Realestate Manager'),
(534, '_REALESTATE_MANAGER_SHOW_RENT_EDIT', 'Realestate Manager'),
(535, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_SEND', 'Realestate Manager'),
(536, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_SEND_TT_HEAD', 'Realestate Manager'),
(537, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_SEND_TT_BODY', 'Realestate Manager'),
(538, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_REGISTRATIONLEVEL', 'Realestate Manager'),
(539, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(540, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(541, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW', 'Realestate Manager'),
(542, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW_TT_HEAD', 'Realestate Manager'),
(543, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW_TT_BODY', 'Realestate Manager'),
(544, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL', 'Realestate Manager'),
(545, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(546, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(547, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE', 'Realestate Manager'),
(548, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE_TT_BODY', 'Realestate Manager'),
(549, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE_TT_HEAD', 'Realestate Manager'),
(550, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE', 'Realestate Manager'),
(551, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE_TT_HEAD', 'Realestate Manager'),
(552, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE_TT_BODY', 'Realestate Manager'),
(553, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE', 'Realestate Manager'),
(554, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE_TT_HEAD', 'Realestate Manager'),
(555, '_REALESTATE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE_TT_BODY', 'Realestate Manager'),
(556, '_REALESTATE_MANAGER_HOUSE_THUMBNAIL_SETTINGS', 'Realestate Manager'),
(557, '_REALESTATE_MANAGER_ADMIN_THUMBNAIL_TT_BODY', 'Realestate Manager'),
(558, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL', 'Realestate Manager'),
(559, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_TT_HEAD', 'Realestate Manager'),
(560, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADDHOUSE_EMAIL_TT_BODY', 'Realestate Manager'),
(561, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY', 'Realestate Manager'),
(562, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_TT_HEAD', 'Realestate Manager'),
(563, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_TT_BODY', 'Realestate Manager'),
(564, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS', 'Realestate Manager'),
(565, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS_TT_HEAD', 'Realestate Manager'),
(566, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS_TT_BODY', 'Realestate Manager'),
(567, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL', 'Realestate Manager'),
(568, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL_TT_HEAD', 'Realestate Manager'),
(569, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL_TT_BODY', 'Realestate Manager'),
(570, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP', 'Realestate Manager'),
(571, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP_TT_HEAD', 'Realestate Manager'),
(572, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP_TT_BODY', 'Realestate Manager'),
(573, '_REALESTATE_MANAGER_ADMIN_UPDATE', 'Realestate Manager'),
(574, '_REALESTATE_MANAGER_ADMIN_UPDATE_TT_HEAD', 'Realestate Manager'),
(575, '_REALESTATE_MANAGER_ADMIN_UPDATE_TT_BODY', 'Realestate Manager'),
(576, '_REALESTATE_MANAGER_ERROR_CATEGORIES', 'Realestate Manager'),
(577, '_REALESTATE_MANAGER_LABEL_TITLE_RENT_REQUEST', 'Realestate Manager'),
(578, '_REALESTATE_MANAGER_ERROR_HOUSE_NOT_PUBLISHED', 'Realestate Manager'),
(579, '_REALESTATE_MANAGER_ERROR_HOUSE_NOT_APPROVED', 'Realestate Manager'),
(580, '_REALESTATE_MANAGER_LABEL_TITLE_EDIT_HOUSE', 'Realestate Manager'),
(581, '_REALESTATE_MANAGER_LABEL_TITLE_ADD_HOUSE', 'Realestate Manager'),
(582, '_REALESTATE_MANAGER_WARNING_NO_LOGIN', 'Realestate Manager'),
(583, '_REALESTATE_MANAGER_LABEL_CLICKMAP', 'Realestate Manager'),
(584, '_REALESTATE_MANAGER_LABEL_DATE', 'Realestate Manager'),
(585, '_REALESTATE_MANAGER_NO_PICTURE_BIG', 'Realestate Manager'),
(586, '_REALESTATE_MANAGER_LABEL_BUTTON_EDIT_HOUSE', 'Realestate Manager'),
(587, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_FORM_DESCTIPTION', 'Realestate Manager'),
(588, '_REALESTATE_MANAGER_LABEL_ADVANCED_SEARCH', 'Realestate Manager'),
(589, '_REALESTATE_MANAGER_LABEL_FROM', 'Realestate Manager'),
(590, '_REALESTATE_MANAGER_LABEL_TO', 'Realestate Manager'),
(591, '_REALESTATE_MANAGER_LABEL_ALL', 'Realestate Manager'),
(592, '_REALESTATE_MANAGER_LABEL_AVAILABLE_FOR_RENT', 'Realestate Manager'),
(593, '_REALESTATE_MANAGER_SHOW_SEARCH_YEAR', 'Realestate Manager'),
(594, '_REALESTATE_MANAGER_SHOW_SEARCH_UNTIL', 'Realestate Manager'),
(595, '_REALESTATE_MANAGER_LABEL_CALENDAR_WEEK', 'Realestate Manager'),
(596, '_REALESTATE_MANAGER_LABEL_CALENDAR_WEEKEND', 'Realestate Manager'),
(597, '_REALESTATE_MANAGER_LABEL_CALENDAR_MIDWEEK', 'Realestate Manager'),
(598, '_REALESTATE_MANAGER_LABEL_CALENDAR_YEAR', 'Realestate Manager'),
(599, '_REALESTATE_MANAGER_LABEL_CALENDAR_MONTH', 'Realestate Manager'),
(600, '_REALESTATE_MANAGER_LABEL_CALENDAR_CALENDAR', 'Realestate Manager'),
(601, '_REALESTATE_MANAGER_LABEL_CALENDAR_ADD_PRICE', 'Realestate Manager'),
(602, '_REALESTATE_MANAGER_LABEL_CALENDAR_SELECT_DELETE', 'Realestate Manager'),
(603, '_REALESTATE_MANAGER_LABEL_CALENDAR_NEW_PRICE', 'Realestate Manager'),
(604, '_REALESTATE_MANAGER_BUTTON_CALENDAR_ADD_NEW_PRICE', 'Realestate Manager'),
(605, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL', 'Realestate Manager'),
(606, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(607, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(608, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_SHOW', 'Realestate Manager'),
(609, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_SHOW_TT_HEAD', 'Realestate Manager'),
(610, '_REALESTATE_MANAGER_CONFIG_CALENDARLIST_SHOW_TT_BODY', 'Realestate Manager'),
(611, '_REALESTATE_MANAGER_CONFIG_CALENDAR_SHOW', 'Realestate Manager'),
(612, '_REALESTATE_MANAGER_CONFIG_CALENDAR_SHOW_TT_HEAD', 'Realestate Manager'),
(613, '_REALESTATE_MANAGER_CONFIG_CALENDAR_SHOW_TT_BODY', 'Realestate Manager'),
(614, '_REALESTATE_MANAGER_ADMIN_CONFIG_PLACEHOLDER', 'Realestate Manager'),
(615, '_REALESTATE_MANAGER_ADMIN_CONFIG_PLACEHOLDER_TT_BODY', 'Realestate Manager'),
(616, '_REALESTATE_MANAGER_ADMIN_CONFIG_PLACEHOLDER_TT_HEAD', 'Realestate Manager'),
(617, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER', 'Realestate Manager'),
(618, '_REALESTATE_MANAGER_LABEL_LANGUAGE_MANAGER_LANG_TAG', 'Realestate Manager'),
(619, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_CONST', 'Realestate Manager'),
(620, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_VALUE_CONST', 'Realestate Manager'),
(621, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_SEARCH_CONST', 'Realestate Manager'),
(622, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_SEARCH_VALUE_CONST', 'Realestate Manager'),
(623, '_REALESTATE_MANAGER_ADMIN_LANGUAGE_MANAGER_SYS_TYPE', 'Realestate Manager'),
(624, '_REALESTATE_MANAGER_LABEL_LANGUAGE', 'Realestate Manager'),
(625, '_REALESTATE_MANAGER_ADMIN_FEATURED_MANAGER', 'Realestate Manager'),
(626, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE', 'Realestate Manager'),
(627, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_CATEGORY', 'Realestate Manager'),
(628, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_PUBLISHED', 'Realestate Manager'),
(629, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_NAME_ALIAS', 'Realestate Manager'),
(630, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_CATEGORY_ALIAS', 'Realestate Manager'),
(631, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE_MANAGER', 'Realestate Manager'),
(632, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_IMAGE', 'Realestate Manager'),
(633, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_REMOVE', 'Realestate Manager'),
(634, '_REALESTATE_MANAGER_LABEL_FEATURED_MANAGER_RECOMMENDED_IMAGE', 'Realestate Manager'),
(635, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES', 'Realestate Manager'),
(636, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_TT_BODY', 'Realestate Manager'),
(637, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_TT_HEAD', 'Realestate Manager'),
(638, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE', 'Realestate Manager'),
(639, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE_TT_BODY', 'Realestate Manager'),
(640, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE_TT_HEAD', 'Realestate Manager'),
(641, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW', 'Realestate Manager'),
(642, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW_TT_BODY', 'Realestate Manager'),
(643, '_REALESTATE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW_TT_HEAD', 'Realestate Manager'),
(644, '_REALESTATE_MANAGER_ADMIN_CONFIG_CURRENCY', 'Realestate Manager'),
(645, '_REALESTATE_MANAGER_ADMIN_CONFIG_CURRENCY_TT_BODY', 'Realestate Manager'),
(646, '_REALESTATE_MANAGER_ADMIN_CONFIG_CURRENCY_TT_HEAD', 'Realestate Manager'),
(647, '_REALESTATE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW', 'Realestate Manager'),
(648, '_REALESTATE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW_TT_BODY', 'Realestate Manager'),
(649, '_REALESTATE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW_TT_HEAD', 'Realestate Manager'),
(650, '_REALESTATE_MANAGER_LABEL_GEOCOOR', 'Realestate Manager'),
(651, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA1_SHOW', 'Realestate Manager'),
(652, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA2_SHOW', 'Realestate Manager'),
(653, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA3_SHOW', 'Realestate Manager'),
(654, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA4_SHOW', 'Realestate Manager'),
(655, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA5_SHOW', 'Realestate Manager'),
(656, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA6_SHOW', 'Realestate Manager'),
(657, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA7_SHOW', 'Realestate Manager'),
(658, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA8_SHOW', 'Realestate Manager'),
(659, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA9_SHOW', 'Realestate Manager'),
(660, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA10_SHOW', 'Realestate Manager'),
(661, '_REALESTATE_MANAGER_LABEL_EXTRA', 'Realestate Manager'),
(662, '_REALESTATE_MANAGER_LABEL_EXTRA1', 'Realestate Manager');
INSERT INTO `joomla_rem_const` (`id`, `const`, `sys_type`) VALUES
(663, '_REALESTATE_MANAGER_LABEL_EXTRA2', 'Realestate Manager'),
(664, '_REALESTATE_MANAGER_LABEL_EXTRA3', 'Realestate Manager'),
(665, '_REALESTATE_MANAGER_LABEL_EXTRA4', 'Realestate Manager'),
(666, '_REALESTATE_MANAGER_LABEL_EXTRA5', 'Realestate Manager'),
(667, '_REALESTATE_MANAGER_LABEL_EXTRA6', 'Realestate Manager'),
(668, '_REALESTATE_MANAGER_LABEL_EXTRA7', 'Realestate Manager'),
(669, '_REALESTATE_MANAGER_LABEL_EXTRA8', 'Realestate Manager'),
(670, '_REALESTATE_MANAGER_LABEL_EXTRA9', 'Realestate Manager'),
(671, '_REALESTATE_MANAGER_LABEL_EXTRA10', 'Realestate Manager'),
(672, '_REALESTATE_MANAGER_EXTRA6_SELECTLIST', 'Extra Select'),
(673, '_REALESTATE_MANAGER_EXTRA7_SELECTLIST', 'Extra Select'),
(674, '_REALESTATE_MANAGER_EXTRA8_SELECTLIST', 'Extra Select'),
(675, '_REALESTATE_MANAGER_EXTRA9_SELECTLIST', 'Extra Select'),
(676, '_REALESTATE_MANAGER_EXTRA10_SELECTLIST', 'Extra Select'),
(677, '_REALESTATE_MANAGER_ALLOWED_EXTS', 'Realestate Manager'),
(678, '_REALESTATE_MANAGER_ALLOWED_EXTS_IMG', 'Realestate Manager'),
(679, '_REALESTATE_MANAGER_ADMIN_HOUSE_PAGE_LAYOUT', 'Realestate Manager'),
(680, '_REALESTATE_MANAGER_ADMIN_ALL_HOUSES_LAYOUT', 'Realestate Manager'),
(681, '_REALESTATE_MANAGER_PRICE_FORMAT', 'Realestate Manager'),
(682, '_REALESTATE_MANAGER_PRICE_FORMAT_TT_BODY', 'Realestate Manager'),
(683, '_REALESTATE_MANAGER_DATE_TIME_FORMAT', 'Realestate Manager'),
(684, '_REALESTATE_MANAGER_DATE_FORMAT', 'Realestate Manager'),
(685, '_REALESTATE_MANAGER_DATE_FORMAT_INFO', 'Realestate Manager'),
(686, '_REALESTATE_MANAGER_TIME_FORMAT', 'Realestate Manager'),
(687, '_REALESTATE_MANAGER_DATE', 'Realestate Manager'),
(688, '_REALESTATE_MANAGER_TIME', 'Realestate Manager'),
(689, '_REALESTATE_PRICE_UNIT_SHOW', 'Realestate Manager'),
(690, '_REALESTATE_PRICE_UNIT_SHOW_AFTER', 'Realestate Manager'),
(691, '_REALESTATE_PRICE_UNIT_SHOW_BEFORE', 'Realestate Manager'),
(692, '_REALESTATE_MANAGER_PRICE_FORMAT_INFO', 'Realestate Manager'),
(693, '_REALESTATE_PRICE_UNIT_SHOW_INFO', 'Realestate Manager'),
(694, '_REALESTATE_MANAGER_CUSTOM_OWNER_EMAIL', 'Realestate Manager'),
(695, '_REALESTATE_MANAGER_BUTTON_SHOW_ADDRESS', 'Realestate Manager'),
(696, '_REALESTATE_MANAGER_BUTTON_ADD_NEW_PHOTO', 'Realestate Manager'),
(697, '_REALESTATE_MANAGER_LABEL_ORDER_BY', 'Realestate Manager'),
(698, '_REALESTATE_MANAGER_LABEL_SELECT_PHOTO_TO_REMOVE', 'Realestate Manager'),
(699, '_REALESTATE_MANAGER_LABEL_SELECT_PHOTO_FROM_GALLERY', 'Realestate Manager'),
(700, '_REALESTATE_MANAGER_TITLE_TO_TEXTAREA_FOR_ADDFEATURE', 'Realestate Manager'),
(701, '_REALESTATE_MANAGER_TITLE_TO_TEXTAREA_1_FOR_ADDCATEGORY', 'Realestate Manager'),
(702, '_REALESTATE_MANAGER_TITLE_TO_TEXTAREA_2_FOR_ADDCATEGORY', 'Realestate Manager'),
(703, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_GENERAL_INFO', 'Realestate Manager'),
(704, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_ADDITIONAL_INFO', 'Realestate Manager'),
(705, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_PHOTOS_AND_DOCUMENTS', 'Realestate Manager'),
(706, '_REALESTATE_MANAGER_ADMIN_HOUSE_TAB_OWNER_CONTACTS', 'Realestate Manager'),
(707, '_REALESTATE_MANAGER_ADMIN_LABEL_FEATURE_TAB_1', 'Realestate Manager'),
(708, '_REALESTATE_MANAGER_ADMIN_LABEL_FEATURE_TAB_2', 'Realestate Manager'),
(709, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_1', 'Realestate Manager'),
(710, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_2', 'Realestate Manager'),
(711, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_3', 'Realestate Manager'),
(712, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_4', 'Realestate Manager'),
(713, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS_TAB_5', 'Realestate Manager'),
(714, '_REALESTATE_MANAGER_HOUSE_IMAGE_HEADER_SETTINGS', 'Realestate Manager'),
(715, '_REALESTATE_MANAGER_TABS_MANAGER_HEADER_SETTINGS', 'Realestate Manager'),
(716, '_REALESTATE_MANAGER_HEADER_LABEL_SELLER_CONTACT_SETTINGS', 'Realestate Manager'),
(717, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_FEATURE_LIST_SETTINGS', 'Realestate Manager'),
(718, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_EXTRA_FIELDS_MANAGER', 'Realestate Manager'),
(719, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_EDOCUMENT_OPTIONS', 'Realestate Manager'),
(720, '_REALESTATE_MANAGER_SETTINGS_COMMON_SETTINGS', 'Realestate Manager'),
(721, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_RENT_REQUEST_OPTIONS', 'Realestate Manager'),
(722, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_BUY_REQUEST_OPTIONS', 'Realestate Manager'),
(723, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_ADD_HOUSE', 'Email Notification'),
(724, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_REVIEW', 'Email Notification'),
(725, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_RENT_REQUEST', 'Email Notification'),
(726, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_RENT_REQUEST_ANSWER', 'Email Notification'),
(727, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_BUYING_REQUEST', 'Email Notification'),
(728, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_BUYING_REQUEST_ANSWER', 'Email Notification'),
(729, '_REALESTATE_MANAGER_EMAIL_NOTIFICATION_RENT_BEFORE_END', 'Email Notification'),
(730, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_DESCRIPTION', 'Realestate Manager'),
(731, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_DESCRIPTION_TT_BODY', 'Realestate Manager'),
(732, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_DESCRIPTION_TT_HEAD', 'Realestate Manager'),
(733, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DESCRIPTION', 'Realestate Manager'),
(734, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DESCRIPTION_TT_BODY', 'Realestate Manager'),
(735, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DESCRIPTION_TT_HEAD', 'Realestate Manager'),
(736, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_REQUEST_DESCRIPTION', 'Realestate Manager'),
(737, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_REQUEST_TT_BODY', 'Realestate Manager'),
(738, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_REQUEST_TT_HEAD', 'Realestate Manager'),
(739, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_DESCRIPTION', 'Realestate Manager'),
(740, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_TT_BODY', 'Realestate Manager'),
(741, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_HOUSE_TT_HEAD', 'Realestate Manager'),
(742, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_REVIEW_DESCRIPTION', 'Realestate Manager'),
(743, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_REVIEW_TT_BODY', 'Realestate Manager'),
(744, '_REALESTATE_MANAGER_ADMIN_CONFIG_ADD_REVIEW_TT_HEAD', 'Realestate Manager'),
(745, '_REALESTATE_MANAGER_SHOW_TABS_SHOW_MY_HOUSES', 'Realestate Manager'),
(746, '_REALESTATE_MANAGER_SHOW_TABS_EDIT_MY_HOUSES', 'Realestate Manager'),
(747, '_REALESTATE_MANAGER_SHOW_TABS_RENT_REQUESTS', 'Realestate Manager'),
(748, '_REALESTATE_MANAGER_SHOW_TABS_BUYING_REQUESTS', 'Realestate Manager'),
(749, '_REALESTATE_MANAGER_ADMIN_ALL_CATEGORIES_LAYOUT_TT_HEAD', 'Realestate Manager'),
(750, '_REALESTATE_MANAGER_ADMIN_SINGLE_CATEGORY_LAYOUT_TT_HEAD', 'Realestate Manager'),
(751, '_REALESTATE_MANAGER_ADMIN_SEARCH_LAYOUT_TT_HEAD', 'Realestate Manager'),
(752, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_TEXT_TT_BODY', 'Realestate Manager'),
(753, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_TEXT_TT_HEAD', 'Realestate Manager'),
(754, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_DROPDOWN_TT_BODY', 'Realestate Manager'),
(755, '_REALESTATE_MANAGER_ADMIN_CONFIG_EXTRA_DROPDOWN_TT_HEAD', 'Realestate Manager'),
(756, '_REALESTATE_MANAGER_REVIEW_LABEL_PUBLISHED', 'Realestate Manager'),
(757, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_ON_ADD', 'Realestate Manager'),
(758, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_ON_ADD_TT_BODY', 'Realestate Manager'),
(759, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_ON_ADD_TT_HEAD', 'Realestate Manager'),
(760, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_REGISTRATIONLEVEL', 'Realestate Manager'),
(761, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_REGISTRATIONLEVEL_TT_BODY', 'Realestate Manager'),
(762, '_REALESTATE_MANAGER_ADMIN_CONFIG_PUBLISH_REVIEW_REGISTRATIONLEVEL_TT_HEAD', 'Realestate Manager'),
(763, '_REALESTATE_MANAGER_ADMIN_CONFIG_LICENSE_TEXT', 'Realestate Manager'),
(764, '_REALESTATE_MANAGER_ADMIN_RENT_REQUESTS', 'Realestate Manager'),
(765, '_REALESTATE_MANAGER_ADMIN_SALE_MANAGER_MENU', 'Realestate Manager'),
(766, '_REALESTATE_MANAGER_ADMIN_IMPORT_EXPORT', 'Realestate Manager'),
(767, '_REALESTATE_MANAGER_LABEL_LANGUAGE_MENU', 'Realestate Manager'),
(768, '_REALESTATE_MANAGER_ADMIN_LABEL_SETTINGS', 'Realestate Manager'),
(769, '_REALESTATE_MANAGER_ADMIN_GROUP', 'Group'),
(770, '_REALESTATE_MANAGER_ADMIN_COUNT_OF_ITEMS', 'Count of houses'),
(771, '_REALESTATE_MANAGER_ADMIN_COUNT_OF_ITEMS_HELP', 'How many houses users can publish from a specific group.'),
(772, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY', 'Show buy'),
(773, '_REALESTATE_MANAGER_ADMIN_ALLOW_PAYPAL_BUY', 'Allow PayPal buy'),
(774, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_RENT', 'Show PayPal rent'),
(775, '_REALESTATE_MANAGER_ADMIN_ALLOW_PAYPAL_RENT', 'Allow PayPal rent'),
(776, '_REALESTATE_MANAGER_ADMIN_YOUR_PAY_PAL_EMAIL', 'Your PayPal email'),
(777, '_REALESTATE_MANAGER_ADMIN_SUCCESSFUL_RETURN', 'Successful return url'),
(778, '_REALESTATE_MANAGER_ADMIN_AFTER_SUCCESSFUL_RETURN', 'After successful payment returns the buyer on your page.'),
(779, '_REALESTATE_MANAGER_ADMIN_IMAGE_URL_PAYPAL', 'Image url'),
(780, '_REALESTATE_MANAGER_ADMIN_AFTER_IMAGE_URL_PAYPAL', 'Add image to PayPal page.'),
(781, '_REALESTATE_MANAGER_ADMIN_CANCEL_RETURN_URL', 'Cancel return url'),
(782, '_REALESTATE_MANAGER_ADMIN_AFTER_CANCEL_RETURN_URL', 'If buyer press cancel in payment page, returns the buyer on your page.'),
(783, '_REALESTATE_MANAGER_ADMIN_REAL_OF_TEST', 'Real(yes) or a test(no) PayPal account'),
(784, '_REALESTATE_MANAGER_ADMIN_REAL_OF_TEST_LABLE', 'If real go to www.paypal.com else go to www.sandbox.paypal.com'),
(785, '_REALESTATE_MANAGER_ADMIN_PAYPAL_LABLE', 'PayPal Options'),
(786, '_REALESTATE_MANAGER_ADMIN_NUMBER_OF_PHOTOS', 'Number of photos'),
(787, '_REALESTATE_MANAGER_ADMIN_NUMBER_OF_PHOTOS_HELP', 'How many photos in gallery users can publish from a specific group.'),
(788, '_REALESTATE_MANAGER_TOTAL_PRICE', 'Total price: '),
(789, '_REALESTATE_MANAGER_RENT_NOW_BY_PAYPAL', 'Go now to PayPal'),
(790, '_REALESTATE_MANAGER_RENT_INSTALL_PAYPAL', 'Payment plugin is not installed'),
(791, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE', 'Special price'),
(792, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_PER_DAY', 'Price per day'),
(793, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_PER_NIGHT', 'Price per night'),
(794, '_REALESTATE_MANAGER_RENT_ADD_SPECIAL_PRICE', 'Add special price'),
(795, '_REALESTATE_MANAGER_FROM', 'From'),
(796, '_REALESTATE_MANAGER_TO', 'To'),
(797, '_REALESTATE_MANAGER_RENT_PRICE_PER_DAY', 'Price per day'),
(798, '_REALESTATE_MANAGER_RENT_CALCULATE', 'Сalculate'),
(799, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_AND_RENT_TIME', 'Special price and rent time'),
(800, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_YES_NO', 'Special price per day("yes") or per night("no")'),
(801, '_REALESTATE_MANAGER_RENT_SPECIAL_PRICE_YES_NO_HELP', 'if per day calculation all day(example of 2014-02-10 from 2014-02-16 is 7 days) if per night calculation all night (example of 2014-02-10 from 2014-02-16 is 6 nights)'),
(802, '_REALESTATE_MANAGER_RENT_PER_NIGHT', 'Realestate Manager'),
(803, '_REALESTATE_MANAGER_IMAGES', 'Realestate Manager'),
(804, '_REALESTATE_MANAGER_ALLOWED_EXT_DOC', 'TRealestate Manager '),
(805, '_REALESTATE_MANAGER_ALLOWED_EXT_IMAGES', 'Realestate Manager'),
(806, '_REALESTATE_MANAGER_SETTINGS_TAB_LABEL_PRICE', 'Pay'),
(807, '_REALESTATE_MANAGER_LABEL_LANGUAGE_NAME', 'Language'),
(808, '_REALESTATE_MANAGER_LABEL_SELECT_LANGUAGE', 'Select Language'),
(809, '_REALESTATE_MANAGER_ADMIN_LABEL_CLON', 'Clone'),
(810, '_REALESTATE_MANAGER_ADMIN_ABOUT_ORDERS', 'Orders'),
(811, '_REALESTATE_MANAGER_HOUSE_MARKER', '/images/marker-1.png,/images/marker-2.png,/images/marker-3.png,/images/marker-4.png,/images/marker-5.png,/images/marker-6.png,/images/marker-7.png,/images/marker-8.png,/images/marker-9.png,/images/marker-10.png,/images/marker-11.png,/images/marker-12'),
(812, '_REALESTATE_MANAGER_CANCEL_URL_TEXT', 'Message for unsuccessfull payment'),
(813, '_REALESTATE_MANAGER_SUCCESSES_URL_TEXT', 'Message for successfull payment'),
(814, '_REALESTATE_MANAGER_CANCEL_URL_TEXT_TT_BODY', 'Insert the Message on page with notification about unsuccessfull payment'),
(815, '_REALESTATE_MANAGER_SUCCESSES_URL_TEXT_TT_BODY', 'Insert the Message on page with notification about successfull payment'),
(816, '_REALESTATE_MANAGER_MESSAGE_SUCCESSFULL_PAYMENT', 'You do success payment!'),
(817, '_REALESTATE_MANAGER_MESSAGE_UNSUCCESSFULL_PAYMENT', 'You do unsuccess payment!'),
(818, '_REALESTATE_MANAGER_MESSAGE_INSTALL_PLUGIN', 'Please install plugin of payment to enable payment feature'),
(819, '_REALESTATE_MANAGER_LABEL_PLUGIN', 'Plugin'),
(820, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_EMAIL_NOTIFICATION_OPTIONS', 'Email Notification Options'),
(821, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_REVIEW_NOTIFICATION_OPTIONS', 'Review Notification Options'),
(822, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_PRICE_OPTIONS', 'Price Options'),
(823, '_REALESTATE_MANAGER_SETTINGS_HEADER_DATE_TIME_OPTIONS', 'Date&Time Options'),
(824, '_REALESTATE_MANAGER_SETTINGS_GROUP_SETTINGS', 'Realestate Manager'),
(825, '_REALESTATE_MANAGER_SETTINGS_EXTENSIONS_SETTINGS', 'Extension Options'),
(826, '_REALESTATE_MANAGER_SETTINGS_UPDATE_SETTINGS', 'Update Options'),
(827, '_REALESTATE_MANAGER_SETTINGS_HEADER_CATEGORY_OPTIONS', 'Category Options'),
(828, '_REALESTATE_MANAGER_LABEL_VIEW_LISTING', 'Realestate Manager'),
(829, '_REALESTATE_MANAGER_ADMIN_CONFIG_CATEGORY_PHOTO_SIZE', 'Category Options'),
(830, '_REALESTATE_MANAGER_ADMIN_CONFIG_CATEGORY_PHOTO_SIZE_TT_BODY', 'Category Options'),
(831, '_REALESTATE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_TT_BODY', 'Realestate Manager'),
(832, '_REALESTATE_MANAGER_ADMIN_SELECT_ONE_ITEM', 'Realestate Manager'),
(833, '_REALESTATE_MANAGER_ADMIN_RENT_ALERT_RETURNED', 'Realestate Manager'),
(834, '_REALESTATE_MANAGER_ADMIN_RENT_ASSOCIATED', 'Realestate Manager'),
(835, '_REALESTATE_MANAGER_ADMIN_ALERT_NOT_IN_RENT', 'Realestate Manager'),
(836, '_REALESTATE_MANAGER_ADMIN_NOT_FOR_RENT_ASOC', 'Realestate Manager'),
(837, '_REALESTATE_MANAGER_ADMIN_NOT_FOR_RENT', 'Realestate Manager'),
(838, '_REALESTATE_MANAGER_ADMIN_BAD_DATE_ALERT', 'Realestate Manager'),
(839, '_REALESTATE_MANAGER_ADMIN_NOT_CORRECT_CURRENCY', 'Realestate Manager'),
(840, '_REALESTATE_MANAGER_ADMIN_CLON_ALERT', 'Realestate Manager'),
(841, '_REALESTATE_MANAGER_ADMIN_ONE_REVIEW_ALERT', 'Realestate Manager'),
(842, '_REALESTATE_MANAGER_ADMIN_ONE_CTEGORY_ALERT', 'Realestate Manager'),
(843, '_REALESTATE_MANAGER_ADMIN_ONE_ITEM_ALERT', 'Realestate Manager'),
(844, '_REALESTATE_MANAGER_ADMIN_ONE_AMENITY_ALERT', 'Realestate Manager'),
(845, '_REALESTATE_MANAGER_ADMIN_HOUSE_NOT_IN_RENT', 'Realestate Manager'),
(846, '_REALESTATE_MANAGER_ADMIN_CONFIG_RENT_URL', 'Realestate Manager'),
(847, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA', 'Realestate Manager'),
(848, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_SEARCH', 'Realestate Manager'),
(849, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_TT_BODY', 'Realestate Manager'),
(850, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_SEARCH_TT_BODY', 'Realestate Manager'),
(851, '_REALESTATE_MANAGER_LABEL_SIZE_SUFFIX', 'Realestate Manager'),
(852, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY_SALE', 'Realestate Manager'),
(853, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY_SALE_TT_BODY', 'Realestate Manager'),
(854, '_REALESTATE_MANAGER_ADMIN_SHOW_PAYPAL_BUY_TT_BODY', 'Realestate Manager'),
(855, '_REALESTATE_MANAGER_LABEL_PICTURE_FILE_NOT_ALLOWED', 'Realestate Manager'),
(856, '_REALESTATE_MANAGER_LANG_ASSOCIATE_HOUSES', 'Realestate Manager'),
(857, '_REALESTATE_MANAGER_LANG_ASSOCIATE_CATEGORIES', 'Realestate Manager'),
(858, '_REALESTATE_MANAGER_FOR_HOUSES_WITH_LANG', 'Realestate Manager'),
(859, '_REALESTATE_MANAGER_YOU_HAVE', 'Realestate Manager'),
(860, '_REALESTATE_MANAGER_MAXIMUM_COUNT_HOUSE_FOR_YOUR', 'Realestate Manager'),
(861, '_REALESTATE_MANAGER_TO_ADD_SPRICE_YOU_NEED', 'Realestate Manager'),
(862, '_REALESTATE_MANAGER_MAX_PHOTOS_LIMIT', 'Realestate Manager'),
(863, '_REALESTATE_MANAGER_NO_NUMERIC_PROPERTYID_WARNING', 'Realestate Manager'),
(864, '_REALESTATE_MANAGER_INFOTEXT_JS_INVALID_NUMBER', 'Realestate Manager'),
(865, '_REALESTATE_MANAGER_FILE_MIME_TYPE_NOT_MATCH', 'Realestate Manager'),
(866, '_REALESTATE_MANAGER_YOU_CAN_PUBLISH_ONLY', 'Realestate Manager'),
(867, '_REALESTATE_MANAGER_PLEASE_LOGIN', 'Realestate Manager'),
(868, '_REALESTATE_MANAGER_NEW_HOUSE_ADDED', 'Realestate Manager'),
(869, '_REALESTATE_MANAGER_BUYING_REQUEST_ADDED', 'Realestate Manager'),
(870, '_REALESTATE_MANAGER_NEW_REVIEW_ADDED', 'Realestate Manager'),
(871, '_REALESTATE_MANAGER_NEW_RENT_REQUEST_ADDED', 'Realestate Manager'),
(872, '_REALESTATE_MANAGER_RENT_EXPIRE_NOTICE', 'Realestate Manager'),
(873, '_REALESTATE_MANAGER_HOUSES_EXPIRE_NOTICE', 'Realestate Manager'),
(874, '_REALESTATE_MANAGER_LABEL_FETCHED_SUBCATEGORIES', 'Realestate Manager'),
(875, '_REALESTATE_MANAGER_LABEL_APPLY', 'Realestate Manager'),
(876, '_REALESTATE_MANAGER_LABEL_SAVE_CATEGORY', 'Realestate Manager'),
(877, '_REALESTATE_MANAGER_LABEL_DELETE_ORDER', 'Realestate Manager'),
(878, '_REALESTATE_MANAGER_MUST_RETURN_HOUSES_FROM_RENT', 'Realestate Manager'),
(879, '_REALESTATE_MANAGER_ORDERS_ID', 'Orders'),
(880, '_REALESTATE_MANAGER_ORDERS_TITLE', 'Orders'),
(881, '_REALESTATE_MANAGER_ORDERS_EMAIL', 'Orders'),
(882, '_REALESTATE_MANAGER_ORDERS_DATE', 'Orders'),
(883, '_REALESTATE_MANAGER_ORDERS_STATUS', 'Orders'),
(884, '_REALESTATE_MANAGER_ORDERS_PRICE', 'Orders'),
(885, '_REALESTATE_MANAGER_ORDERS_PAID', 'Orders'),
(886, '_REALESTATE_MANAGER_ORDERS_DETAILS', 'Orders'),
(887, '_REALESTATE_MANAGER_ORDERS_USER', 'Orders'),
(888, '_REALESTATE_MANAGER_ORDERS_USER_NAME', 'Orders'),
(889, '_REALESTATE_MANAGER_ORDERS_DET_ACCEPT', 'Orders'),
(890, '_REALESTATE_MANAGER_ORDERS_DET_SYSTEM', 'Orders'),
(891, '_REALESTATE_MANAGER_ORDERS_DET_EMAIL', 'Orders'),
(892, '_REALESTATE_MANAGER_ORDERS_DET_REASON', 'Orders'),
(893, '_REALESTATE_MANAGER_PAYPAL_ERROR', 'Realestate Manager'),
(894, '_REALESTATE_MANAGER_LOAD_LANGUAGE', 'Realestate Manager'),
(895, '_REALESTATE_MANAGER_LABEL_OWNER_ID', 'Realestate Manager'),
(896, '_REALESTATE_MANAGER_ADMIN_RENT_HISTORY', 'Realestate Manager'),
(897, '_REALESTATE_MANAGER_BUTTON_RENT_HISTORY', 'Realestate Manager'),
(898, '_REALESTATE_MANAGER_ADMIN_REQUEST_RENT_HISTORY', 'Realestate Manager'),
(899, '_REALESTATE_MANAGER_ADMIN_USER_RENT_HISTORY', 'Realestate Manager'),
(900, '_REALESTATE_MANAGER_CURRENCY_ERROR', 'Realestate Manager'),
(901, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_TRACK_KIND', 'Realestate Manager'),
(902, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_TRACK_LANGUAGE', 'Realestate Manager'),
(903, '_REALESTATE_MANAGER_ADMIN_INFOTEXT_JS_TRACK_TITLE', 'Realestate Manager'),
(904, '_REALESTATE_MANAGER_SETTINGS_VIDEO_ERROR_UPLOAD_OFF', 'Realestate Manager'),
(905, '_REALESTATE_MANAGER_SETTINGS_VIDEO_ERROR_POST_MAX_SIZE', 'Realestate Manager'),
(906, '_REALESTATE_MANAGER_SETTINGS_VIDEO_ERROR_UPLOAD_MAX_SIZE', 'Realestate Manager'),
(907, '_REALESTATE_MANAGER_LABEL_VIDEO', 'Realestate Manager'),
(908, '_REALESTATE_MANAGER_LABEL_VIDEO_ATTRIBUTE', 'Realestate Manager'),
(909, '_REALESTATE_MANAGER_LABEL_VIDEO_DELETE', 'Realestate Manager'),
(910, '_REALESTATE_MANAGER_LABEL_ADD_NEW_VIDEO_FILE', 'Realestate Manager'),
(911, '_REALESTATE_MANAGER_LABEL_TRACK', 'Realestate Manager'),
(912, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_URL', 'Realestate Manager'),
(913, '_REALESTATE_MANAGER_LABEL_TRACK_DELETE', 'Realestate Manager'),
(914, '_REALESTATE_MANAGER_LABEL_ADD_NEW_TRACK', 'Realestate Manager'),
(915, '_REALESTATE_MANAGER_LABEL_VIDEO_ADD_ALTERNATIVE_VIDEO', 'Realestate Manager'),
(916, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD', 'Realestate Manager'),
(917, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD_URL', 'Realestate Manager'),
(918, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD_YOUTUBE_CODE', 'Realestate Manager'),
(919, '_REALESTATE_MANAGER_LABEL_PRIOTITY', 'Realestate Manager'),
(920, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_KIND', 'Realestate Manager'),
(921, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_SCRLANG', 'Realestate Manager'),
(922, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_LABEL', 'Realestate Manager'),
(923, '_REALESTATE_MANAGER_LABEL_VIDEO_UPLOAD_ERROR', 'Realestate Manager'),
(924, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD_ERROR', 'Realestate Manager'),
(925, '_REALESTATE_MANAGER_LABEL_TRACK_UPLOAD', 'Realestate Manager'),
(926, '_REALESTATE_MANAGER_SETTINGS_HEADER_LABEL_VIDEOTRATCK_OPTIONS', 'Realestate Manager'),
(927, '_REALESTATE_MANAGER_ADMIN_CONFIG_VIDEO', 'Realestate Manager'),
(928, '_REALESTATE_MANAGER_ALLOWED_EXTS_VIDEO', 'Realestate Manager'),
(929, '_REALESTATE_MANAGER_ALLOWED_EXTS_TRACK', 'Realestate Manager'),
(930, '_REALESTATE_MANAGER_ADMIN_CONFIG_VIDEOS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(931, '_REALESTATE_MANAGER_ADMIN_CONFIG_TRACKS_DOWNLOAD_LOCATION', 'Realestate Manager'),
(932, '_REALESTATE_MANAGER_LABEL_CALENDAR_TITLE', 'Realestate Manager'),
(933, '_REALESTATE_MANAGER_LABEL_CALENDAR_AVAILABLE', 'Realestate Manager'),
(934, '_REALESTATE_MANAGER_LABEL_CALENDAR_NOT_AVAILABLE', 'Realestate Manager'),
(935, '_REALESTATE_MANAGER_LABEL_MOD_MAP_SEARCH_ADDRESS_PLACEHOLDER', 'Realestate Manager'),
(936, '_REALESTATE_MANAGER_LABEL_MOD_MAP_SEARCH_RANGE', 'Realestate Manager'),
(937, '_REALESTATE_MANAGER_LABEL_MOD_SEARCH_CAT_PLACEHOLDER', 'Realestate Manager'),
(938, '_REALESTATE_MANAGER_LABEL_MOD_MAP_SEARCH_BUTTON', 'Realestate Manager'),
(939, '_REALESTATE_MANAGER_SHOW_ORDERS_MANAGER', 'Realestate Manager'),
(940, '_REALESTATE_MANAGER_PAYPAL_F5_ERROR', 'Realestate Manager'),
(941, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_STREET_VIEW_TT_BODY', 'Realestate Manager'),
(942, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_STREET_VIEW', 'Realestate Manager'),
(943, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_OPTIONS', 'Realestate Manager'),
(944, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_LOGIN', 'Realestate Manager'),
(945, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_PASSWORD', 'Realestate Manager'),
(946, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_IMPORT', 'Realestate Manager'),
(947, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_IMPORT_REQUIRED_FIELD', 'Realestate Manager'),
(948, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_UPDATE_MAP', 'Realestate Manager'),
(949, '_REALESTATE_MANAGER_ADMIN_CONFIG_TREB_UPDATE_MAP_DESCRIPTION', 'Realestate Manager'),
(950, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_BOOKING_TT_BODY', 'Realestate Manager'),
(951, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_SENDMESSAGE_TT_BODY', 'Realestate Manager'),
(952, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_BOOKING', 'Realestate Manager'),
(953, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_CAPTCHA_SENDMESSAGE', 'Realestate Manager'),
(954, '_REALESTATE_MANAGER_SETTINGS_GOOGLE_MAP', 'Realestate Manager'),
(955, '_REALESTATE_MANAGER_GOOGLEMAP_API_KEY', 'Realestate Manager'),
(956, '_REALESTATE_MANAGER_LABEL_GOOGLEMAP_API_KEY', 'Realestate Manager'),
(957, '_REALESTATE_MANAGER_GOOGLEMAP_API_KEY_ERROR', 'Realestate Manager'),
(958, '_REALESTATE_MANAGER_GOOGLEMAP_API_KEY_LINK_MESSAGE', 'Realestate Manager'),
(959, '_REALESTATE_MANAGER_CONFIG_WISHLIST_SHOW_TT_BODY', 'Realestate Manager'),
(960, '_REALESTATE_MANAGER_CONFIG_WISHLIST_SHOW', 'Realestate Manager'),
(961, '_REALESTATE_MANAGER_LABEL_WISHLIST_ADDED', 'Realestate Manager'),
(962, '_REALESTATE_MANAGER_LABEL_WISHLIST_ADD', 'Realestate Manager'),
(963, '_REALESTATE_MANAGER_LABEL_WISHLIST_REMOVED', 'Realestate Manager'),
(964, '_REALESTATE_MANAGER_LABEL_WISHLIST_REMOVE', 'Realestate Manager'),
(965, '_REALESTATE_MANAGER_LABEL_WISHLIST_ALREDY_IN', 'Realestate Manager'),
(966, '_REALESTATE_MANAGER_LABEL_WISHLIST_ERROR_ADDING', 'Realestate Manager'),
(967, '_REALESTATE_MANAGER_LABEL_WISHLIST_ERROR_DELETE', 'Realestate Manager'),
(968, '_REALESTATE_MANAGER_SETTINGS_SEARCH_RESULT_LAYOUT', 'Realestate Manager'),
(969, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_MAP_SEARCH_RESULT_LAYOUT_TT_BODY', 'Realestate Manager'),
(970, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_MAP_SEARCH_RESULT_LAYOUT', 'Realestate Manager'),
(971, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_ORDER_BY_SEARCH_RESULT_LAYOUT_TT_BODY', 'Realestate Manager'),
(972, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_ORDER_BY_SEARCH_RESULT_LAYOUT', 'Realestate Manager'),
(973, '_REALESTATE_MANAGER_SETTINGS_GROUP_ACCESS_TO_EDIT', 'Realestate Manager'),
(974, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_GROUP_ACCESS_EDIT_TT_BODY', 'Realestate Manager'),
(975, '_REALESTATE_MANAGER_ADMIN_CONFIG_SHOW_GROUP_ACCESS_EDIT', 'Realestate Manager');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_const_languages`
--

DROP TABLE IF EXISTS `joomla_rem_const_languages`;
CREATE TABLE `joomla_rem_const_languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_constid` int(11) NOT NULL DEFAULT '0',
  `fk_languagesid` int(11) NOT NULL DEFAULT '0',
  `value_const` varchar(2000) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_const_languages`
--

INSERT INTO `joomla_rem_const_languages` (`id`, `fk_constid`, `fk_languagesid`, `value_const`) VALUES
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
(18, 18, 2, 'Show button ''show my houses'' on CB plugin'),
(19, 19, 2, 'Show my houses'),
(20, 20, 2, 'Select user group for which will be show this button'),
(21, 21, 2, 'Show button ''edit my houses'' on CB plugin'),
(22, 22, 2, 'Show edit houses'),
(23, 23, 2, 'Show button ''rent requests'' on CB plugin'),
(24, 24, 2, 'Show rent requests'),
(25, 25, 2, 'Show button ''buy requsts'' on CB plugin'),
(26, 26, 2, 'Show buy requsts'),
(27, 27, 2, 'Show button ''my rent history'' on CB plugin'),
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
(247, 247, 2, 'Thank you for using our component!<br /><br />\nRealEstateManager allows you to manage large house catalogues. It comes with category and subcategory support and you can add a PropertyID for your internal reference. Rent management is built-in, with a rent request possibility for users of your website. RealEstateManager also offers the possibility of house reviews by users, with review management in the backend. Edocument support is built-in. House information and house photos can be entered manually. <br/ ><br />\nNOTES: <br/ >\n- for download photos to your server to work, you need to compile PHP5 with CURL support<br />\n- for csv export to work, you need to compile PHP5 with XSL support<br/ >\n- for CAPTCHA to work, you need to compile PHP5 with GD support<br />\n<br />\nOn the website <a href="http://www.ordasoft.com">www.ordasoft.com</a> you can find RealEstateManager Manuals, additional Language files, Support Forums and also download additional modules and plugins.<br />\n<br />\nWe are available for Custom Development if you want a new feature added to RealEstateManager. Please mail your exact requirements to <a href="mailto:sales@ordasoft.com">sales@ordasoft.com</a> and we will get back to you with a quote. When you order a paid Customisation, you will receive the next PRO version with your custom feature added.'),
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
(312, 312, 2, '\n<strong>CSV&nbsp;IMPORT:</strong>\n<ul>\n	<li>At the moment the following CSV format is supported:&nbsp;&nbsp;PropertyID&nbsp;|&nbsp;Description&nbsp;|&nbsp;&nbsp;|&nbsp;Listing type&nbsp;|&nbsp;Price&nbsp;|&nbsp;Price type&nbsp;|&nbsp;Title&nbsp;|&nbsp;Address&nbsp;|&nbsp;...&nbsp;|</li>\n	<li>Fields are separated by a pipe character (<strong>&nbsp;|&nbsp;</strong>)</li>\n	<li>You must import a whole list with just PropertyID by leaving the other fields empty, for example:&nbsp;&nbsp;PropertyID&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;Price&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;Title&nbsp;|&nbsp;<i>empty</i>&nbsp;|&nbsp;...&nbsp;|</li>\n	<li><strong>WARNING:</strong>&nbsp;do not use CSV import if there are House Reviews present, in that case use Full data import instead!</li>\n</ul>\n<strong>XML&nbsp;IMPORT:</strong>\n<ul>\n	<li>import data in XML format</li>\n	<li><strong>WARNING:</strong>&nbsp;do not use XML import if there are House Reviews present, in that case use full data import!</li>\n	<li><strong>WARNING:</strong>&nbsp;associations between houses will not be saved!</li>\n	<li><strong>WARNING:</strong>&nbsp;you have to upload images singly, no photos will be saved!</li>\n</ul>\n<strong>FULL&nbsp;DATA&nbsp;IMPORT:</strong>\n<ul>\n	<li>This import will import all RealEstateManager data and restore all fields and details</li>\n	<li>This option will overwrite ALL existing entries, so be careful when using it!</li>\n  <li>For restore all Houses photos, please restore all files saved before from folder: --components/com_realestatemanager/photos--!</li>\n  <li>For restore all Houses eDocuments, please restore all files saved before from folder what you set in  setting backend --Location of edocuments--!</li>\n</ul>\n'),
(313, 313, 2, '\n<strong>CSV&nbsp;EXPORT:</strong>\n<ul>\n	<li>CSV export will contain all fields for further editing in a text editor or spreadsheet application</li>\n	<li>Please note that for subsequent import, only the following CSV format is supported:&nbsp;&nbsp;PropertyID&nbsp;|&nbsp;Description&nbsp;|&nbsp;Link&nbsp;|&nbsp;Listing type&nbsp;|&nbsp;Price&nbsp;|&nbsp;Price type&nbsp;|&nbsp;Title&nbsp;|&nbsp;Address&nbsp;|&nbsp;...&nbsp;|</li>\n	<li><strong>WARNING:</strong> if you want to import later including House Reviews, use Full data export instead!</li>\n</ul>\n<strong>XML&nbsp;EXPORT:</strong>\n<ul>\n	<li>Export data in XML</li>\n  <li><strong>WARNING:</strong> if you want to import later including House Reviews, use Full data export instead!</li>\n  <li><strong>WARNING:</strong>&nbsp;associations between houses will not be saved!</li>\n        <li><strong>WARNING:</strong>&nbsp;you have to upload images singly, no photos will be saved!</li>\n	</ul>\n<strong>FULL&nbsp;DATA&nbsp;EXPORT:</strong>\n<ul>\n	<li>This export will export all RealEstateManager data and save all fields and entries</li>\n	<li>You can later use these sql files to restore your RealEstateManager data in full</li>\n	<li>This subsequent import will overwrite ALL existing entries, so be careful when using it!</li>\n  <li>To restore all house photos, please restore all files from folder: --components/com_realestatemanager/photos--!</li>\n  <li>To restore all houses eDocuments, please restore all files from the folder you have set in [Settings Backend] -- [Location of edocuments]</li>\n</ul>\n'),
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
(342, 345, 2, 'Please enter a valid number of Bedrooms!'),
(343, 346, 2, 'Please enter a valid Build year for this house!'),
(344, 347, 2, 'Please enter a valid Area for this house!'),
(345, 348, 2, 'Please enter a valid Lot size for this house!'),
(346, 349, 2, 'Please enter a valid size for this house!'),
(347, 350, 2, 'Please enter a Name for your buying request!'),
(348, 351, 2, 'Please enter a valid e-mail address for your buying request!'),
(349, 352, 2, 'Please enter a valid Phone Number for your buying request!'),
(350, 353, 2, 'Listing type'),
(351, 354, 2, 'Listing status'),
(352, 355, 2, 'Rooms'),
(353, 356, 2, 'Bathrooms'),
(354, 357, 2, 'Bedrooms'),
(355, 358, 2, 'Agent name'),
(356, 359, 2, 'Contact agent'),
(357, 360, 2, 'Agent info'),
(358, 361, 2, 'Photos'),
(359, 362, 2, 'Pricing'),
(360, 363, 2, 'Overview'),
(361, 364, 2, 'Amenities'),
(362, 365, 2, 'Book now'),
(363, 366, 2, 'Expiration date'),
(364, 367, 2, 'Lot size'),
(365, 368, 2, 'House size'),
(366, 369, 2, 'Garages'),
(367, 370, 2, 'Approved'),
(368, 371, 2, 'Phone'),
(369, 372, 2, 'Required fields'),
(370, 373, 2, 'Recommended fields'),
(371, 374, 2, 'Address fields'),
(372, 375, 2, 'Optional fields'),
(373, 376, 2, 'Photo manage'),
(374, 377, 2, 'Gallery'),
(375, 378, 2, 'Advertisment'),
(376, 379, 2, 'Customer''s information '),
(377, 380, 2, 'RealEstateManager : Sale Manager'),
(378, 381, 2, 'Send message'),
(379, 382, 2, 'Send Buying Request  Notification'),
(380, 383, 2, 'Send Buying Request  Notification'),
(381, 384, 2, 'Set Yes if you want to be notified through email when a user sends message.'),
(382, 385, 2, 'User groups from which Buying Request notifications will be sent'),
(383, 386, 2, 'User groups from which Buying Request notifications will be sent'),
(384, 387, 2, 'Choose which user groups will send Buying Request notifications. This function will be activated only if --Send Buying Request Notification-- is also set to YES'),
(385, 388, 2, 'Buying Request email'),
(386, 389, 2, 'RealEstateManager : Settings'),
(387, 390, 2, 'Remove'),
(388, 391, 2, 'Photo '),
(389, 392, 2, 'House rent out'),
(390, 393, 2, 'For rent'),
(391, 394, 2, 'For sale'),
(392, 395, 2, 'Rent return'),
(393, 396, 2, 'Show Location tab'),
(394, 397, 2, 'Show Location tab'),
(395, 398, 2, 'Set YES to display Location tab'),
(396, 399, 2, 'Show Reviews tab'),
(397, 400, 2, 'Show Reviews tab'),
(398, 401, 2, 'Set YES to display Reviews tab'),
(399, 402, 2, ' Add House '),
(400, 403, 2, 'Publish'),
(401, 404, 2, 'Unpublish'),
(402, 405, 2, 'Delete'),
(403, 406, 2, 'Return house from rent'),
(404, 407, 2, 'Rent'),
(405, 408, 2, 'Show button "Add House"'),
(406, 409, 2, 'Show button "Add House"'),
(407, 410, 2, 'Set Yes to show button "Add House" in the list houses on frontend'),
(408, 411, 2, 'Allow button "Add House" ]'),
(409, 412, 2, 'Allow button "Add House"'),
(410, 413, 2, 'Allow button "Add House" in the frontend. This function will be activated only if --Show button [ Add House ]-- is also set to YES!'),
(411, 414, 2, 'Contacts'),
(412, 415, 2, 'Show contacts'),
(413, 416, 2, 'Show Contacts'),
(414, 417, 2, 'Set Yes to show owner contacts'),
(415, 418, 2, 'Location of photos'),
(416, 419, 2, 'The location of the uploaded photos on the server. The path is relative to the main Joomla directory and must start and end with a /'),
(417, 420, 2, 'Photos location'),
(418, 421, 2, 'Show Reviews tab'),
(419, 422, 2, 'Show Reviews tab'),
(420, 423, 2, 'Allow Reviews tab in the frontend. This function will be activated only if --Show Reviews tab-- is also set to YES!'),
(421, 424, 2, 'Show Location tab'),
(422, 425, 2, 'Show Location tab'),
(423, 426, 2, 'Allow location tab in the frontend. This function will be activated only if --Show location tab-- is also set to YES!'),
(424, 427, 2, 'Show Contacts'),
(425, 428, 2, 'Show Contacts'),
(426, 429, 2, 'Allow Contacts in the frontend. This function will be activated only if --Show Contacts-- is also set to YES!'),
(427, 430, 2, 'Unavailable for rent'),
(428, 431, 2, 'Your Real Estate was stored in our database.<br />Thank you for using our service'),
(429, 432, 2, 'Available for rent from'),
(430, 433, 2, 'Available for rent until'),
(431, 434, 2, 'Nothing found.'),
(432, 435, 2, 'Description'),
(433, 436, 2, 'Location'),
(434, 437, 2, 'All information'),
(435, 438, 2, 'Reviews'),
(436, 439, 2, '---select---'),
(437, 440, 2, 'House for rent'),
(438, 441, 2, 'House for sale'),
(439, 442, 2, 'Active,Offer,Contract,Closed,Withdrawn'),
(440, 443, 2, 'Apartment,Commercial,Condo,Coop,Farm,Land,Manufactured,Multifamily,Ranch,Single family,Tic,Townhouse,Detached,Semi-Detached,Att/Row/Twnhouse,Multiplex,Commercial/Retail,Office,Store W/Apt/Office,Sale Of Business,Condo Apt,Co-Ownership Apt'),
(441, 444, 2, 'Send answer to user'),
(442, 445, 2, 'Buy request answer'),
(443, 446, 2, 'Set Yes if you want to notify user about accepting or declining request.'),
(444, 447, 2, 'Form for answer to buy request'),
(445, 448, 2, 'Past particular tags in "Buy request answer",and you recive necessary data in your letter'),
(446, 449, 2, 'Tags Description'),
(447, 450, 2, 'propertyid'),
(448, 451, 2, 'Owner'),
(449, 452, 2, 'Exactly to all'),
(450, 453, 2, 'Answer for your request'),
(451, 454, 2, 'Form for answer to rent request'),
(452, 455, 2, 'Past particular tags in "Rent request answer",and you recive necessary data in your letter'),
(453, 456, 2, 'Tags Description'),
(454, 457, 2, 'You can use this tags in your letter: <br/>{title} - title of rent house\n          <br/>{answer} - declined or accepded<br/>{username} - the name of the user who requested a house<br/>\n          {owneremail} - the email of the owner house<br/>{ownername} - the name of the owner house<br/>'),
(455, 458, 2, 'Send answer to user'),
(456, 459, 2, 'Rent request answer'),
(457, 460, 2, 'Set Yes if you want to notify user about accepting or declining of booking.'),
(458, 461, 2, 'Accepted'),
(459, 462, 2, 'Declined'),
(460, 463, 2, 'Edit rent'),
(461, 464, 2, 'Allow owners list'),
(462, 465, 2, 'Allow owners list'),
(463, 466, 2, 'Choose users, whom allow show owners list'),
(464, 467, 2, 'Show owners list'),
(465, 468, 2, 'Show owners list'),
(466, 469, 2, 'If choose "yes" then show owners list in frontend'),
(467, 470, 2, 'Show owner'),
(468, 471, 2, 'Show owner'),
(469, 472, 2, 'Set Yes to show house owner'),
(470, 473, 2, 'Allow RSS for'),
(471, 474, 2, 'Allow RSS'),
(472, 475, 2, 'Select users for whom allow RSS'),
(473, 476, 2, 'Show button "RSS"'),
(474, 477, 2, 'Set Yes to show button "RSS" in the list houses on frontend'),
(475, 478, 2, 'Show RSS'),
(476, 479, 2, 'list'),
(477, 480, 2, 'gallery'),
(478, 481, 2, 'User-selectable'),
(479, 482, 2, 'View type'),
(480, 483, 2, 'View type'),
(481, 484, 2, 'Select view type for houses'),
(482, 485, 2, 'Allow publish'),
(483, 486, 2, 'Set Yes to allow publish houses from frontend'),
(484, 487, 2, 'Publish added houses'),
(485, 488, 2, 'Publish added houses'),
(486, 489, 2, 'Choose users whom allow approve houses from frontend'),
(487, 490, 2, 'Allow approve'),
(488, 491, 2, 'Allow approve'),
(489, 492, 2, 'Set Yes to allow approve houses from frontend'),
(490, 493, 2, 'Approve added houses'),
(491, 494, 2, 'Approve added houses'),
(492, 495, 2, 'Allow button "Print PDF"'),
(493, 496, 2, 'Allow button "Print PDF"'),
(494, 497, 2, 'Allow button "Print PDF" in the frontend. This function will be activated only if --Show button [ print PDF ]-- is also set to YES!'),
(495, 498, 2, 'Allow button "Print View"'),
(496, 499, 2, 'Allow button "Print View"'),
(497, 500, 2, 'Allow button "Print View" in the frontend. This function will be activated only if --Show button [ print View ]-- is also set to YES!'),
(498, 501, 2, 'Allow button "Send Link"'),
(499, 502, 2, 'Allow button "Send Link"'),
(500, 503, 2, 'Allow button "Send Link" in the frontend. This function will be activated only if --Show button [ send Mail ]-- is also set to YES!'),
(501, 504, 2, 'Show button "Send Link"'),
(502, 505, 2, 'Show button "Send Link"'),
(503, 506, 2, 'Set Yes to show button "Send Link" in the list houses on frontend'),
(504, 507, 2, 'Show button "Print View"'),
(505, 508, 2, 'Show button "Print View"'),
(506, 509, 2, 'Set Yes to show button "Print View" in the list houses on frontend'),
(507, 510, 2, 'Show button "Print PDF"'),
(508, 511, 2, 'Show button "Print PDF"'),
(509, 512, 2, 'Set Yes to show button "Print PDF" in the list houses on frontend'),
(510, 513, 2, 'User houses'),
(511, 514, 2, 'Description'),
(512, 515, 2, 'Year'),
(513, 516, 2, 'Username'),
(514, 517, 2, 'There have not houses'),
(515, 518, 2, 'You have not houses'),
(516, 519, 2, 'Are you sure?'),
(517, 520, 2, 'Please select houses first!'),
(518, 521, 2, 'Houses'),
(519, 522, 2, 'Owners'),
(520, 523, 2, 'Sorry, you have not access to this page'),
(521, 524, 2, 'Owners list'),
(522, 525, 2, 'Owners list'),
(523, 526, 2, 'Show my houses'),
(524, 527, 2, 'My houses'),
(525, 528, 2, 'Publish'),
(526, 529, 2, 'Unpublish'),
(527, 530, 2, 'Delete'),
(528, 531, 2, 'Id'),
(529, 532, 2, 'Edit'),
(530, 533, 2, 'Full XML'),
(531, 534, 2, 'RealestateManager - Edit house rent details'),
(532, 535, 2, 'Send Notification'),
(533, 536, 2, 'Send Add House Notification'),
(534, 537, 2, 'Set Yes if you want to be notified through email when a user adds house.'),
(535, 538, 2, 'User groups from which Add House notifications will be sent'),
(536, 539, 2, 'User groups from which Add House notifications will be sent'),
(537, 540, 2, 'Choose which user groups will send Add House notifications. This function will be activated only if --Send Add House Notification-- is also set to YES'),
(538, 541, 2, 'Show form "Send Message"'),
(539, 542, 2, 'Show Buy status in the frontend'),
(540, 543, 2, 'Set Yes to show form "Send Message" on the page of house for sale on frontend'),
(541, 544, 2, 'Allow Buy Requests'),
(542, 545, 2, 'Allow Buy Request'),
(543, 546, 2, 'Allow Buy Requests in the frontend. This function will be activated only if --Show Buy Status-- is also set to YES!'),
(544, 547, 2, 'Main image size, px'),
(545, 548, 2, 'Set size of main images- width/height in px'),
(546, 549, 2, 'House main photos size'),
(547, 550, 2, 'Thumbnail size, px'),
(548, 551, 2, 'Photo size in house gallery'),
(549, 552, 2, 'Set size of thumbnails - width/height in px'),
(550, 553, 2, 'House upload photo size'),
(551, 554, 2, 'House upload photo size'),
(552, 555, 2, 'Set upload photo size - width/height in px'),
(553, 556, 2, 'Crop image'),
(554, 557, 2, 'Set Yes to crop images and No to scale images'),
(555, 558, 2, 'Email'),
(556, 559, 2, 'Add House email'),
(557, 560, 2, 'Email address for notifications about adding houses.'),
(558, 561, 2, 'Booking Expiration'),
(559, 562, 2, 'Rent before end notify'),
(560, 563, 2, 'Set Yes if you want to be notified through email when booking expires.'),
(561, 564, 2, 'Days'),
(562, 565, 2, 'Rent end days'),
(563, 566, 2, 'Number of days before booking expiration to get notification.'),
(564, 567, 2, 'Rent end email'),
(565, 568, 2, 'Rent end email'),
(566, 569, 2, 'Email address for notifications about booking expiration.'),
(567, 570, 2, 'Show location map'),
(568, 571, 2, 'Location map'),
(569, 572, 2, 'Set Yes to show location map'),
(570, 573, 2, 'Save databases when updating'),
(571, 574, 2, 'Save databases when updating'),
(572, 575, 2, 'Set Yes to update component with saving databases and No to update component with removing databases'),
(573, 576, 2, 'Check categories of houses'),
(574, 577, 2, 'Rent request'),
(575, 578, 2, 'You can''t view this page because it not published'),
(576, 579, 2, 'You can''t view this page because it not approved by administrator'),
(577, 580, 2, 'Edit House'),
(578, 581, 2, 'Add House'),
(579, 582, 2, 'You are not logged in! If you want edit house in future, please log in!'),
(580, 583, 2, 'Click on the map to choose the house location:'),
(581, 584, 2, 'Date'),
(582, 585, 2, 'no-img_eng_big.gif'),
(583, 586, 2, 'Edit house'),
(584, 587, 2, 'You can use this tags in your letter: <br/>{title} - title of buy house\n          <br/>{answer} - declined or accepded<br/>{username} - the name of the user who requested a house<br/>\n          {owneremail} - the email of the owner house<br/>{ownername} - the name of the owner house<br/>'),
(585, 588, 2, 'Advanced<br />search'),
(586, 589, 2, 'from'),
(587, 590, 2, 'to'),
(588, 591, 2, 'all'),
(589, 592, 2, 'Available for rent'),
(590, 593, 2, 'Year'),
(591, 594, 2, 'until'),
(592, 595, 2, 'Week'),
(593, 596, 2, 'Weekend'),
(594, 597, 2, 'Midweek'),
(595, 598, 2, 'Year'),
(596, 599, 2, 'Month'),
(597, 600, 2, 'Calendar'),
(598, 601, 2, 'Add price'),
(599, 602, 2, 'Select to remove'),
(600, 603, 2, 'New price rent'),
(601, 604, 2, 'Add new price rent'),
(602, 605, 2, 'Show Calendar tab'),
(603, 606, 2, 'Show Calendar tab'),
(604, 607, 2, 'Choose users, whom allow show Calendar tab'),
(605, 608, 2, 'Show Calendar tab'),
(606, 609, 2, 'Show Calendar tab'),
(607, 610, 2, 'If choose "yes" then show calendar tab in frontend'),
(608, 611, 2, 'Show owner'),
(609, 612, 2, 'Show calendar'),
(610, 613, 2, 'Show house calendar or not'),
(611, 614, 2, 'Default price label for calendar'),
(612, 615, 2, 'Default price labels for calendar (weekend, week, midweek)'),
(613, 616, 2, 'Default price label for calendar'),
(614, 617, 2, 'RealEstateManager : Language Manager'),
(615, 618, 2, 'Lang tag'),
(616, 619, 2, 'Constant'),
(617, 620, 2, 'Value constant'),
(618, 621, 2, 'Search by constant'),
(619, 622, 2, 'Search by value constant'),
(620, 623, 2, 'Sys type'),
(621, 624, 2, 'Language'),
(622, 625, 2, 'RealEstateManager : Amenities Manager'),
(623, 626, 2, 'Amenities'),
(624, 627, 2, 'Category'),
(625, 628, 2, 'Published'),
(626, 629, 2, 'Name'),
(627, 630, 2, 'Category'),
(628, 631, 2, 'Amenities Manager'),
(629, 632, 2, 'Image'),
(630, 633, 2, 'Select photo if it is necessary to remove'),
(631, 634, 2, 'Recommended image size 25 x 25 pixels'),
(632, 635, 2, 'Categories for Manager Amenities'),
(633, 636, 2, 'Category must be entered, separated by commas'),
(634, 637, 2, 'Categories for Manager Amenities'),
(635, 638, 2, 'Show Feature Icon'),
(636, 639, 2, 'Show Feature Icon'),
(637, 640, 2, 'If choose "yes" then show Icon for Manager Feature'),
(638, 641, 2, 'Show title of category'),
(639, 642, 2, 'Show title of Category Features'),
(640, 643, 2, 'Set Yes to display title of category amenities'),
(641, 644, 2, 'Currency'),
(642, 645, 2, 'If you want to use other currencies, enter the values as: USD = 1; EUR = 3.15; or USD=; EUR=; Available for paypal currencies: AUD, CAD, CZK, DKK, EUR, HKD, HUF, JPY, NOK, NZD, PLN, SGD, SEK, CHF, USD, RUB, ILS, MXN, PHP, GBP, THB .'),
(643, 646, 2, 'Currency with coefficients'),
(644, 647, 2, 'Show price separator'),
(645, 648, 2, 'Show price separator'),
(646, 649, 2, 'Set Yes to show separator of price'),
(647, 650, 2, 'Get geographic coordinates'),
(648, 651, 2, 'Show Custom Text Field 1'),
(649, 652, 2, 'Show Custom Text Field 2'),
(650, 653, 2, 'Show Custom Text Field 3'),
(651, 654, 2, 'Show Custom Text Field 4'),
(652, 655, 2, 'Show Custom Text Field 5'),
(653, 656, 2, 'Show Custom Dropdown Field 6'),
(654, 657, 2, 'Show Custom Dropdown Field 7'),
(655, 658, 2, 'Show Custom Dropdown Field 8'),
(656, 659, 2, 'Show Custom Dropdown Field 9'),
(657, 660, 2, 'Show Custom Dropdown Field 10'),
(658, 661, 2, 'Custom Fields Manager'),
(659, 662, 2, 'Custom Text 1'),
(660, 663, 2, 'Custom Text 2'),
(661, 664, 2, 'Custom Text 3'),
(662, 665, 2, 'Custom Text 4'),
(663, 666, 2, 'Custom Text 5'),
(664, 667, 2, 'Custom Dropdown Field 6'),
(665, 668, 2, 'Custom Dropdown Field 7'),
(666, 669, 2, 'Custom Dropdown Field 8'),
(667, 670, 2, 'Custom Dropdown Field 9'),
(668, 671, 2, 'Custom Dropdown Field 10'),
(669, 672, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(670, 673, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(671, 674, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(672, 675, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(673, 676, 2, 'Extra1,Extra2,Extra3,Extra4,Extra5'),
(674, 677, 2, 'Allowed Exts eDocument'),
(675, 678, 2, 'Allowed Exts Image'),
(676, 679, 2, 'House Page Layout'),
(677, 680, 2, 'All Houses Layout'),
(678, 681, 2, 'Price Format'),
(679, 682, 2, 'Choose format of price (point, comma or space) or enter your delimiter'),
(680, 683, 2, 'Date format'),
(681, 684, 2, 'Date format'),
(682, 685, 2, 'Reorder date formats to set your date display format'),
(683, 686, 2, 'Time format'),
(684, 687, 2, '%Y - Year; %m - month;  %d - day'),
(685, 688, 2, '%H - hours; %i - minutes; %s - seconds'),
(686, 689, 2, 'Show price unit'),
(687, 690, 2, 'After'),
(688, 691, 2, 'Before'),
(689, 692, 2, 'Select price ditlimer os set youre.'),
(690, 693, 2, 'Set After to show unit of prices affter price or Before to show unit of prices before prices'),
(691, 694, 2, 'Custom owner email'),
(692, 695, 2, 'Show address on map'),
(693, 696, 2, 'Add new photo'),
(694, 697, 2, 'Order By'),
(695, 698, 2, 'Select photo if it is necessary to remove'),
(696, 699, 2, 'Select photos which are necessary to remove from photo gallery'),
(697, 700, 2, 'A short name to appear in FeatureMenus'),
(698, 701, 2, 'A short name to appear in menus'),
(699, 702, 2, 'A full name to appear in menus'),
(700, 703, 2, 'General Info'),
(701, 704, 2, 'Additional Info'),
(702, 705, 2, 'Photos and Documents'),
(703, 706, 2, 'Owner Contacts'),
(704, 707, 2, 'Categories for Amenities Manager'),
(705, 708, 2, 'Amenities List'),
(706, 709, 2, 'House Page Settings'),
(707, 710, 2, 'Category Page Settings'),
(708, 711, 2, 'Email Notification Settings'),
(709, 712, 2, 'Administrator Settings'),
(710, 713, 2, 'Plugins Settings'),
(711, 714, 2, 'Image Settings'),
(712, 715, 2, 'Tab Settings'),
(713, 716, 2, 'Seller Contact Settings'),
(714, 717, 2, 'Amenities Settings'),
(715, 718, 2, 'Extra Fields Settings'),
(716, 719, 2, 'eDocument Options'),
(717, 720, 2, 'Button Options'),
(718, 721, 2, 'Booking'),
(719, 722, 2, 'Send message'),
(720, 723, 2, '{title}\n        [PropertyID]: {id}<br>\n        A new house was added by {username}\n        on {date} to category {category}.<br>\n        Please log on and approve or deny this item.<br>'),
(721, 724, 2, 'User {username} has added a Review to house:<br>{house_title}<br>\n        Title Comment: {title}<br>\n        Label Rating: [{rating}]<br>\n        Review Comment: {comment}<br>\n        Please log on and edit this review where necessary.'),
(722, 725, 2, 'User {username} has submitted a booking for:<br>\n        Customer name: {user_name}<br>\n        Email: {user_email}<br>\n        User mailing: {user_mailing}<br>\n        Rent from: {rent_from}<br>\n        Rent until: {rent_until}<br>\n        PropertyID: {hid_value}<br>\n        {house_title}<br>\n        Please log on and approve or deny this booking'),
(723, 726, 2, 'Answer for your request:<br>\n        Dear {username}!<br>\n        Your booking for<br>\n        {title} {owneremail} {ownername}<br>\n        Answer: {answer}'),
(724, 727, 2, '\n        User {username}  has submitted a message for:<br>\n        Customer name: {customer_name}<br>\n        Customer email: {customer_email}<br>\n        Customer phone: {customer_phone}<br>\n        Customer comment: {customer_comment}<br>\n        PropertyID: {hid_value}<br>\n        {house_title}<br>\n        Please log on and approve or deny this message'),
(725, 728, 2, 'Dear {username}!<br>\n        Your message for<br>\n        {title} {owneremail} {ownername}<br>\n        Answer: {answer}<br>'),
(726, 729, 2, 'Rent User: {username}({user_email})<br>\n      House: {house_title}<br>\n      House ID: {ID}<br>\n      PropertyID: {PropertyID}<br>'),
(727, 730, 2, 'You can use this tags in your letter:<br>{house_title} - title of added house\n        <br>{username} - the name of the user who added a house\n        <br>{hid_value} - identification number of the house'),
(728, 731, 2, 'Past particular tags in "Send Buy Request Notification",and you recive necessary data in your letter'),
(729, 732, 2, 'Tags Description'),
(730, 733, 2, 'You can use this tags in your letter:<br/>{house_title} - title of added house\n          <br>{username} - the name of the user who added a house <br>{user_email} - email of the user who rents the house\n          <br>{vid} - identification number of the house'),
(731, 734, 2, 'Past particular tags in "Rent before end notify",and you recive necessary data in your letter'),
(732, 735, 2, 'Tags Description'),
(733, 736, 2, 'You can use this tags in your letter:<br>{house_title} - title of added house\n          <br>{username} - the name of the user who added a house\n          <br>{hid_value} - identification number of the house<br>'),
(734, 737, 2, 'Past particular tags in "Send Rent Request Notification",and you recive necessary data in your letter'),
(735, 738, 2, 'Tags Description'),
(736, 739, 2, 'You can use this tags in your letter: <br>{title} - title of added house\n          <br>{id} - identification number of the house\n          <br>{username} - the name of the user who added a house\n          <br>{date} - date when house was added<br>{category} - category which the house was added in'),
(737, 740, 2, 'Past particular tags in "Send Add House Notification",and you recive necessary data in your letter'),
(738, 741, 2, 'Tags Description'),
(739, 742, 2, 'You can use this tags in your letter: <br>{username} - name of the user,what added a review\n          <br>{house_title} - title of review house\n          <br>{title} - title of the comment, {rating} - rating of the comment,\n          <br>{comment} - body of the comment'),
(740, 743, 2, 'Past particular tags in "Send Review Notification",and you recive necessary data in your letter'),
(741, 744, 2, 'Tags Description'),
(742, 745, 2, 'show my houses'),
(743, 746, 2, 'edit my houses'),
(744, 747, 2, 'rent requests'),
(745, 748, 2, 'buying requests'),
(746, 749, 2, 'All Categories Layout'),
(747, 750, 2, 'Single Category Layout'),
(748, 751, 2, 'Search layout'),
(749, 752, 2, 'Set Yes to display extra field'),
(750, 753, 2, 'Text field'),
(751, 754, 2, 'Select which extra dropdown fields, you want to display'),
(752, 755, 2, 'Dropdown field'),
(753, 756, 2, 'Published'),
(754, 757, 2, 'Publish reviews'),
(755, 758, 2, 'Set Yes to publish added reviews automatically'),
(756, 759, 2, 'Publish review added'),
(757, 760, 2, 'Allow publish'),
(758, 761, 2, 'Allow publish to usergroup'),
(759, 762, 2, 'Chose the usergroup who can publish added review automatically'),
(760, 763, 2, 'License text'),
(761, 764, 2, 'Booking Manager'),
(762, 765, 2, 'Sale Manager'),
(763, 766, 2, 'Import/Export'),
(764, 767, 2, 'Language Manager'),
(765, 768, 2, 'Settings'),
(766, 769, 2, 'Group'),
(767, 770, 2, 'Number of houses'),
(768, 771, 2, 'How many houses users can publish from a specific group.'),
(769, 772, 2, 'Show buy for booking'),
(770, 773, 2, 'Allow PayPal buy'),
(771, 774, 2, 'Show PayPal rent'),
(772, 775, 2, 'Allow PayPal rent'),
(773, 776, 2, 'Your PayPal email'),
(774, 777, 2, 'Successful return url'),
(775, 778, 2, 'After successful payment returns the buyer on your page.'),
(776, 779, 2, 'Image url'),
(777, 780, 2, 'Add image to PayPal page.'),
(778, 781, 2, 'Cancel return url'),
(779, 782, 2, 'If buyer press cancel in payment page, returns the buyer on your page.'),
(780, 783, 2, 'Real(yes) or a test(no) PayPal account'),
(781, 784, 2, 'If real go to www.paypal.com else go to www.sandbox.paypal.com'),
(782, 785, 2, 'Payment Options'),
(783, 786, 2, 'Number of photos'),
(784, 787, 2, 'How many photos in gallery users can publish from a specific group.'),
(785, 788, 2, 'Total price: '),
(786, 789, 2, 'Go now to PayPal'),
(787, 790, 2, 'Payment plugin is not installed'),
(788, 791, 2, 'Special price'),
(789, 792, 2, 'Price per day'),
(790, 793, 2, 'Price per night'),
(791, 794, 2, 'Add special price'),
(792, 795, 2, 'From'),
(793, 796, 2, 'To'),
(794, 797, 2, 'Price per day'),
(795, 798, 2, 'Ð¡alculate'),
(796, 799, 2, 'Time of rent and special price'),
(797, 800, 2, 'Calculate'),
(798, 801, 2, 'if per day calculation all day(example of 2014-02-10 from 2014-02-16 is 7 days) if per night calculation all night (example of 2014-02-10 from 2014-02-16 is 6 nights)'),
(799, 802, 2, 'Nights'),
(800, 803, 2, 'Images'),
(801, 804, 2, 'Type the allowed extensions of eDocuments '),
(802, 805, 2, 'Type the allowed extensions of Images'),
(803, 806, 2, 'Payment settings'),
(804, 807, 2, 'Language'),
(805, 808, 2, 'Select Language'),
(806, 809, 2, 'Clone'),
(807, 810, 2, 'Orders'),
(808, 811, 2, '/images/marker-1.png,/images/marker-2.png,/images/marker-3.png,/images/marker-4.png,/images/marker-5.png,/images/marker-6.png,/images/marker-7.png,/images/marker-8.png,/images/marker-9.png,/images/marker-10.png,/images/marker-11.png,/images/marker-12.png,/images/marker-13.png'),
(809, 812, 2, 'Message for unsuccessfull payment'),
(810, 813, 2, 'Message for successfull payment'),
(811, 814, 2, 'Insert the Message on page with notification about unsuccessfull payment'),
(812, 815, 2, 'Insert the Message on page with notification about successfull payment'),
(813, 820, 2, 'Add House'),
(814, 821, 2, 'Review'),
(815, 822, 2, 'Price Options'),
(816, 823, 2, 'Date Options'),
(817, 824, 2, 'Groups Options'),
(818, 825, 2, 'Extension Options'),
(819, 826, 2, 'Update Options'),
(820, 827, 2, 'Category Settings'),
(821, 828, 2, 'View listing'),
(822, 829, 2, 'Thumbnails, gallery view '),
(823, 830, 2, 'Set size of images for gallery view - width/height in px'),
(824, 831, 2, 'Email address for notifications about sending messages.'),
(825, 832, 2, 'Please select one item'),
(826, 833, 2, 'House already returned'),
(827, 834, 2, 'Error in rent, for associated'),
(828, 835, 2, 'You cannot return houses that were not lent out'),
(829, 836, 2, 'This house has assitiated house not for rent'),
(830, 837, 2, 'This house is not for rent'),
(831, 838, 2, 'Bad date format'),
(832, 839, 2, 'You can not use paypal with this currencies, please set correct currencies or turn off paypal buttons '),
(833, 840, 2, 'You can clon only one house'),
(834, 841, 2, 'Please select one review for edit'),
(835, 842, 2, 'Select a category to delete'),
(836, 843, 2, 'You must select only one item for edit'),
(837, 844, 2, 'Select an amenity to delete'),
(838, 845, 2, 'You edit houses that were not lent out'),
(839, 816, 2, 'You do success payment!'),
(840, 817, 2, 'You do unsuccess payment!'),
(841, 818, 2, 'Please install plugin of payment to enable payment feature'),
(842, 819, 2, 'Plugin'),
(843, 846, 2, 'Send email to admin before Booking end.<br /> For that you need create CRON job and connect to Cron check so URL:<br /> http://{yours site}/index.php?option=com_realestatemanager&Itemid={Yours ItemID}&task=rent_before_end_notify  with span - every day.<br /> Cron Jobs may look like:<br/> "wget -q -O - http://localhost/index.php?option=com_realestatemanager&Iteid=56&task=rent_before_end_notify /dev/null'),
(844, 847, 2, 'Show captcha option'),
(845, 848, 2, 'Show search'),
(846, 849, 2, 'Display captcha option in the frontend'),
(847, 850, 2, 'Display search block in the frontend'),
(848, 851, 2, 'Sqrt'),
(849, 329, 2, 'Show subcategory'),
(850, 330, 2, 'Show subcategory'),
(851, 331, 2, 'If set to YES, you will see subcategory for every category'),
(852, 852, 2, 'Show buy for sale'),
(853, 853, 2, 'Show buy form after sale request'),
(854, 854, 2, 'Show buy form after book request'),
(855, 855, 2, 'File ext. not allowed to upload!'),
(856, 856, 2, 'Language associate houses'),
(857, 857, 2, 'Language associate categories'),
(858, 858, 2, 'This property only for houses with language'),
(859, 859, 2, 'You have'),
(860, 860, 2, 'maximum count house for your group'),
(861, 861, 2, 'To add special prices, you must first save property !'),
(862, 862, 2, 'You have max photos. Limit for this users group'),
(863, 863, 2, 'You have no numeric PropertyId. Please change all PropertyID to numeric or set to <No> option'),
(864, 864, 2, 'Please enter a valid Number!'),
(865, 865, 2, 'File mime type not match file ext'),
(866, 866, 2, 'You can publish only'),
(867, 867, 2, 'Please login'),
(868, 868, 2, 'New house added'),
(869, 869, 2, 'New buying request added'),
(870, 870, 2, 'New house review added'),
(871, 871, 2, 'New rent request added'),
(872, 872, 2, 'Rent expire notice'),
(873, 873, 2, 'So houses rent expire soon'),
(874, 874, 2, 'Subcategories'),
(875, 875, 2, 'Apply'),
(876, 876, 2, 'Save category'),
(877, 877, 2, 'Delete Order'),
(878, 878, 2, 'You must return all houses from rent first!'),
(879, 879, 2, 'Order ID'),
(880, 880, 2, 'House title'),
(881, 881, 2, 'Email'),
(882, 882, 2, 'Date'),
(883, 883, 2, 'Status'),
(884, 884, 2, 'Price'),
(885, 885, 2, 'Paid'),
(886, 886, 2, 'Details'),
(887, 887, 2, 'User'),
(888, 888, 2, 'Username'),
(889, 889, 2, 'Accept type/info: '),
(890, 890, 2, 'Payment system: '),
(891, 891, 2, 'Payer email: '),
(892, 892, 2, 'Pending reason: '),
(893, 893, 2, 'In your request encountered an error, please contact the administrator!'),
(894, 894, 2, 'Load languages'),
(895, 895, 2, 'Owner ID:'),
(896, 896, 2, 'Users Booking History'),
(897, 897, 2, 'Rent history'),
(898, 898, 2, 'RealEstateManager : Rent Hisory'),
(899, 899, 2, 'RealEstateManager : Users Rent Hisory'),
(900, 900, 2, 'Currency in your house does not match administrator settings, maybe they have been changed. Please reselect  currency in your house !'),
(901, 901, 2, 'Please insert an track kind'),
(902, 902, 2, 'Please insert an track language'),
(903, 903, 2, 'Please insert an track title'),
(904, 904, 2, 'File uploads is off in your PHP settings.!'),
(905, 905, 2, 'Post max size in your PHP settings less than your video file.!'),
(906, 906, 2, 'Upload max file size in your PHP settings less than your video file.!'),
(907, 907, 2, 'Video'),
(908, 908, 2, 'Video source'),
(909, 909, 2, 'Delete video'),
(910, 910, 2, 'Add new video file'),
(911, 911, 2, 'Track for video'),
(912, 912, 2, 'Track download link'),
(913, 913, 2, 'Delete track'),
(914, 914, 2, 'Add new track'),
(915, 915, 2, 'Add alternative video'),
(916, 916, 2, 'Upload video'),
(917, 917, 2, 'Video download link'),
(918, 918, 2, 'Youtube code <br> (For example <br> OtPn6qDy5GU)'),
(919, 919, 2, '<p><font color="red">!!!</font>Youtube code has more priority. If you enter Youtube code you will see video in the frontend from youtube source</p><br/>'),
(920, 920, 2, 'Kind (Specifies the kind of text track)'),
(921, 921, 2, 'Src lang (language of the track)'),
(922, 922, 2, 'Label (Specifies the title of the text track)'),
(923, 923, 2, 'Error uploading video!'),
(924, 924, 2, 'Error uploading track!'),
(925, 925, 2, 'Upload track'),
(926, 926, 2, 'Video/Track Options'),
(927, 927, 2, 'Video and track support:'),
(928, 928, 2, 'Allowed Exts Video'),
(929, 929, 2, 'Allowed Exts Track'),
(930, 930, 2, 'Location of video'),
(931, 931, 2, 'Location of track'),
(932, 932, 2, 'Calendar of availability and rental rates per period'),
(933, 933, 2, 'Available date for rent'),
(934, 934, 2, 'Not available date for rent'),
(935, 935, 2, 'Address'),
(936, 936, 2, 'Range(km)'),
(937, 937, 2, 'Select Category'),
(938, 938, 2, 'Search'),
(939, 939, 2, 'RealEstateManager : Orders'),
(940, 940, 2, 'Please do not press f5 again!!!'),
(941, 941, 2, 'Show Street View'),
(942, 942, 2, 'Show Street View'),
(943, 943, 2, 'Treb Options'),
(944, 944, 2, 'Login');
INSERT INTO `joomla_rem_const_languages` (`id`, `fk_constid`, `fk_languagesid`, `value_const`) VALUES
(945, 945, 2, 'Password'),
(946, 946, 2, 'TREB XML'),
(947, 947, 2, 'Login and Password from rets.torontomls.net are required fields'),
(948, 948, 2, 'Update map'),
(949, 949, 2, 'Update map from all houses where latitude and longitude are undefined'),
(950, 950, 2, 'Display booking form captcha option in the frontend'),
(951, 951, 2, 'Display send message form captcha option in the frontend'),
(952, 952, 2, 'Show booking form captcha option'),
(953, 953, 2, 'Show send message form captcha option'),
(954, 954, 2, 'Google Map Options'),
(955, 955, 2, 'Field to enter google map api key'),
(956, 956, 2, 'Api key'),
(957, 957, 2, 'Google Maps API error: missing key map error!'),
(958, 958, 2, 'To get Google Maps API key follow below link'),
(959, 959, 2, 'Set Yes to show button "Add/Remove to Wish List" in the list houses on frontend'),
(960, 960, 2, 'Show button "Add/Remove to Wish List"'),
(961, 961, 2, 'Added to wish list!'),
(962, 962, 2, 'Add to wish list!'),
(963, 963, 2, 'Removed from wishlist!'),
(964, 964, 2, 'Remov from wishlist!'),
(965, 965, 2, 'Alredy in wish list!'),
(966, 966, 2, 'Alredy in wish list!'),
(967, 967, 2, 'Alredy in wish list!'),
(968, 968, 2, 'Settings Layout Search Results'),
(969, 969, 2, 'Show map for search results layout on the frontend!'),
(970, 970, 2, 'Show map for search results layout!'),
(971, 971, 2, 'Show order by form for layout search results on the frontend!'),
(972, 972, 2, 'Show order by form for layout search results!'),
(973, 973, 2, 'Options access to edit houses'),
(974, 974, 2, 'Users group who will have access to edit users houses'),
(975, 975, 2, 'Select options access to edit houses');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_feature`
--

DROP TABLE IF EXISTS `joomla_rem_feature`;
CREATE TABLE `joomla_rem_feature` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT '',
  `categories` varchar(250) DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `image_link` varchar(250) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_feature`
--

INSERT INTO `joomla_rem_feature` (`id`, `name`, `categories`, `published`, `image_link`) VALUES
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
-- Tabellenstruktur für Tabelle `joomla_rem_feature_houses`
--

DROP TABLE IF EXISTS `joomla_rem_feature_houses`;
CREATE TABLE `joomla_rem_feature_houses` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) NOT NULL DEFAULT '0',
  `fk_featureid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_feature_houses`
--

INSERT INTO `joomla_rem_feature_houses` (`id`, `fk_houseid`, `fk_featureid`) VALUES
(2, 2, 326),
(3, 2, 327),
(4, 2, 323),
(5, 2, 324),
(6, 2, 325),
(7, 2, 329),
(71, 3, 325),
(70, 3, 324),
(69, 3, 327),
(68, 3, 322),
(67, 3, 328),
(66, 3, 319),
(65, 3, 320),
(15, 4, 329);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_houses`
--

DROP TABLE IF EXISTS `joomla_rem_houses`;
CREATE TABLE `joomla_rem_houses` (
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
  `bedrooms` int(11) DEFAULT '0',
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
-- Daten für Tabelle `joomla_rem_houses`
--

INSERT INTO `joomla_rem_houses` (`id`, `asset_id`, `houseid`, `catid`, `sid`, `fk_rentid`, `associate_house`, `description`, `link`, `listing_type`, `price`, `priceunit`, `htitle`, `hcountry`, `hregion`, `hcity`, `hzipcode`, `hlocation`, `hlatitude`, `hlongitude`, `map_zoom`, `rooms`, `bathrooms`, `bedrooms`, `contacts`, `image_link`, `listing_status`, `property_type`, `year`, `agent`, `area_unit`, `land_area`, `land_area_unit`, `expiration_date`, `lot_size`, `house_size`, `garages`, `checked_out`, `checked_out_time`, `ordering`, `date`, `hits`, `edok_link`, `published`, `approved`, `owneremail`, `featured_clicks`, `featured_shows`, `pixUpdtedDt`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `language`, `owner_id`) VALUES
(2, 69, '1', 0, 0, 0, 'a:2:{s:5:"en-GB";s:1:"0";s:1:"*";i:2;}', 'Boheme Apartments, set at the waterside gateway to CityVillage, offer the ultimate urban Gold City lifestyle allowing you to live life your way at the heart of the city. Boheme Apartments offer inspiring interior design and functional open plan layouts that flow seamlessly through to generous balconies, with charming Gold Coast City skyline or Hinterland vistas to enjoy. Robina Town Centre, Gold City''s shopping, dining and entertainment destination is just a 450m walk away through landscaped, waterside walkways. Top private schools, medical precinct and Train Station & Bus Interchange are also within walking distance and Airport is just 20 minutes by car. There are five international golf courses within a few minutes drive and just a 10 minute drive takes you to the famous surfing and cafe destination Burleigh Heads ensuring you make the most of the summer.', '', '2', '610000', 'USD', 'Boheme Apartments at CityVillage', 'Austria', '', 'Vienna', '', 'Fleischmarkt 20', '48.2103471', '16.37762220000002', '14', 6, 2, 4, '', '7D30FC3F-ECBB-6C5B-DAE2-133A1182F12C_5.jpg', '1', '1', '2012', 'Mr. Lawman', '', '', '', '0000-00-00', '', '115', '', 0, '0000-00-00 00:00:00', 0, '2015-02-26 11:39:42', 161, '', 1, 1, 'quickstart_j3@mail.com', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '*', 0),
(3, 70, '2', 0, 0, 504, '', '<p>testetstetetst<span style="font-size: 12.16px;">testetstetetst</span><span style="font-size: 12.16px;">testetstetetst</span><span style="font-size: 12.16px;">testetstetetst</span><span style="font-size: 12.16px;">testetstetetst</span><span style="font-size: 12.16px;">testetstetetst </span>beautifully bright living/dining which achieves indoor-outdoor brilliance and incorporates an open-plan kitchen of consummate quality. Main bedroom with study/retreat, walk-in robes, ensuite and sublime courtyard is complemented by a similarly luxurious second downstairs bedroom, also enjoying ensuite, walk-in robes and study/lounge space. Upstairs, two further bedrooms & modern bathroom surround generous children’s living and sunny balcony. Glorious gardens include solar/gas heated pool & spa, inviting entertaining areas,double carport & additional parking. A prestigious position offering quick access to many leading schools including Camberwell Grammar School, Fintona & Camberwell Girls. Close to transport & shops. Garden & Pool maintenance included.</p>', '', '1', '2200', 'USD', 'Elegantly cottage in sunny California', 'USA', '', 'Los Angeles', '', '10777 Santa Monica Boulevard', '34.0526682', '-118.43334229999999', '14', 8, 3, 4, '', 'CA80ECE7-AA10-0DE1-08C9-A22FA9AB9E8B_6.jpg', '1', '10', '2013', 'Mr. 	Mathews', '', '', '', '0000-00-00', '550', '400', '2', 0, '0000-00-00 00:00:00', 0, '2016-12-22 09:55:40', 203, '', 1, 1, 'quickstart_j3@mail.com', '0', '0', '', '', '', '', '', '', '0', '0', '', '', '', '*', 0),
(4, 71, '3', 0, 0, 0, '', 'Masterfully renovated and extended to blend modern luxury and living zones with the rich original period highlights and grand dimensions, this appealing 5-bedroom home in a quiet tree-lined street offers exceptional accommodation for a large family. Savour the delights of indoor/outdoor living with a stunning gourmet kitchen of glossy black granite benchtops and premium appliances overlooking the generous light-filled informal meals and family room. Multiple sets of sliding doors flow out to an extensive deck, glistening in-ground solar-heated pool and private landscaped garden to create a dream setting for entertaining friends and family. The formal lounge and formal dining provide a second living zone, whilst the wide mezzanine landing offers a retreat area incorporating multiple study spaces. Includes 2 sparkling family bathrooms plus a powder room, gas ducted heating throughout, refrigerated cooling upstairs and reverse cycle heating/cooling downstairs, family sized laundry, under-stair and roof storage, workshop/shed and 4 off-street parking spaces. Enjoy fabulous eateries, shopping and cinemas at nearby Camberwell Junction, walk to tram, primary schools and secondary schools, all within easy reach of the Monash Freeway.', '', '2', '750000', 'EUR', 'Spacious and elegant family entertainer', 'Belgium', '', 'Gosselies', '6041', 'Rue Louis Bleriot ', '50.4735739', '4.4621790999999575', '14', 9, 2, 5, '', 'C6365E27-99F9-68C9-4331-28206D00C921_4.jpg', '1', '12', '2014', 'Mr. Bradshaw', '', '', '', '0000-00-00', '440', '375', '2', 0, '0000-00-00 00:00:00', 0, '2015-02-26 11:39:32', 94, '', 1, 1, 'quickstart_j3@mail.com', '6', '0', '', '', '', '', '', '', '0', '0', '', '', '', '*', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_languages`
--

DROP TABLE IF EXISTS `joomla_rem_languages`;
CREATE TABLE `joomla_rem_languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) DEFAULT NULL,
  `title` varchar(250) DEFAULT '',
  `sef` char(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_languages`
--

INSERT INTO `joomla_rem_languages` (`id`, `lang_code`, `title`, `sef`) VALUES
(2, 'en-GB', 'English', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_main_categories`
--

DROP TABLE IF EXISTS `joomla_rem_main_categories`;
CREATE TABLE `joomla_rem_main_categories` (
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
-- Daten für Tabelle `joomla_rem_main_categories`
--

INSERT INTO `joomla_rem_main_categories` (`id`, `parent_id`, `associate_category`, `asset_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`, `params2`, `language`) VALUES
(46, 0, 'a:1:{s:1:"*";s:2:"46";}', 64, 'Apartment', 'Apartment', '', 'screencapture-localhost-SpaceSharing-index-php-1482418770189.png', 'com_realestatemanager', '', '', 1, 513, '2016-12-23 09:04:25', NULL, 5, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(47, 0, 'a:1:{s:5:"en-GB";s:3:"304";}', 65, 'Townhouse', 'Townhouse', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(48, 0, '', 66, 'Family House', 'Family House', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(49, 0, '', 67, 'Manufactured', 'Manufactured', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*'),
(50, 0, 'a:1:{s:1:"*";i:50;}', 68, 'Cottage ', 'Cottage ', '', '', 'com_realestatemanager', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, '-2', 'O:8:"stdClass":0:{}', '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_mime_types`
--

DROP TABLE IF EXISTS `joomla_rem_mime_types`;
CREATE TABLE `joomla_rem_mime_types` (
  `mime_ext` text,
  `mime_type` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_mime_types`
--

INSERT INTO `joomla_rem_mime_types` (`mime_ext`, `mime_type`) VALUES
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
-- Tabellenstruktur für Tabelle `joomla_rem_orders`
--

DROP TABLE IF EXISTS `joomla_rem_orders`;
CREATE TABLE `joomla_rem_orders` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_orders_details`
--

DROP TABLE IF EXISTS `joomla_rem_orders_details`;
CREATE TABLE `joomla_rem_orders_details` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_photos`
--

DROP TABLE IF EXISTS `joomla_rem_photos`;
CREATE TABLE `joomla_rem_photos` (
  `id` int(11) UNSIGNED NOT NULL,
  `fk_houseid` int(11) DEFAULT NULL,
  `thumbnail_img` varchar(250) DEFAULT '',
  `main_img` varchar(250) DEFAULT '',
  `img_ordering` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_photos`
--

INSERT INTO `joomla_rem_photos` (`id`, `fk_houseid`, `thumbnail_img`, `main_img`, `img_ordering`) VALUES
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
-- Tabellenstruktur für Tabelle `joomla_rem_rent`
--

DROP TABLE IF EXISTS `joomla_rem_rent`;
CREATE TABLE `joomla_rem_rent` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_rent_request`
--

DROP TABLE IF EXISTS `joomla_rem_rent_request`;
CREATE TABLE `joomla_rem_rent_request` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_rent_sal`
--

DROP TABLE IF EXISTS `joomla_rem_rent_sal`;
CREATE TABLE `joomla_rem_rent_sal` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_review`
--

DROP TABLE IF EXISTS `joomla_rem_review`;
CREATE TABLE `joomla_rem_review` (
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
-- Daten für Tabelle `joomla_rem_review`
--

INSERT INTO `joomla_rem_review` (`id`, `fk_houseid`, `fk_userid`, `user_name`, `user_email`, `date`, `rating`, `title`, `comment`, `published`) VALUES
(2, 2, NULL, '', '', '2014-12-15 15:57:13', 8, 'Fantastic place', 'Apartment in the heart of South Melbourne are perfect - well equipped and a good size. The bed is very comfortable (soft), the heating is excellent and the apartment is clean and clair. The location is really good - 5 minutes walk from the central shopping street and from a range of good restaurants.', 1),
(3, 3, NULL, 'admin', 'quickstart_j3@mail.com', '2014-12-15 15:59:18', 9, 'Really wonderful stay', 'The house had plenty of space for our family, a fully equipped kitchen, a charming pool and of course a magnificent view. I would recommend this house to any family that is searching for a nice home.', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_track_source`
--

DROP TABLE IF EXISTS `joomla_rem_track_source`;
CREATE TABLE `joomla_rem_track_source` (
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
-- Tabellenstruktur für Tabelle `joomla_rem_users_wishlist`
--

DROP TABLE IF EXISTS `joomla_rem_users_wishlist`;
CREATE TABLE `joomla_rem_users_wishlist` (
  `id` int(11) NOT NULL,
  `fk_houseid` int(11) DEFAULT NULL,
  `fk_userid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_version`
--

DROP TABLE IF EXISTS `joomla_rem_version`;
CREATE TABLE `joomla_rem_version` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(11) NOT NULL DEFAULT '0',
  `number` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_rem_version`
--

INSERT INTO `joomla_rem_version` (`id`, `version`, `number`) VALUES
(2, '3.9', 'Free');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_rem_video_source`
--

DROP TABLE IF EXISTS `joomla_rem_video_source`;
CREATE TABLE `joomla_rem_video_source` (
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
-- Tabellenstruktur für Tabelle `joomla_schemas`
--

DROP TABLE IF EXISTS `joomla_schemas`;
CREATE TABLE `joomla_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_schemas`
--

INSERT INTO `joomla_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_session`
--

DROP TABLE IF EXISTS `joomla_session`;
CREATE TABLE `joomla_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_session`
--

INSERT INTO `joomla_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('1tuntmgtbl3cf7lthfdenkspe4', 0, 1, '1483537531', 'joomla|s:668:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxNzE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDgzNTMxODYwO3M6NDoibGFzdCI7aToxNDgzNTM3NDg4O3M6Mzoibm93IjtpOjE0ODM1Mzc1MzE7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjU6ImFycmF5IjtpOjE7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, ''),
('eihvvrh0qh7aga8lt2uohg0bb6', 1, 0, '1483536517', 'joomla|s:2104:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNTU7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDgzNTI4MjU2O3M6NDoibGFzdCI7aToxNDgzNTM2NTEzO3M6Mzoibm93IjtpOjE0ODM1MzY1MTc7fXM6NToidG9rZW4iO3M6MzI6Imp6enVCaktadWt3ejNFZmozcHI5UThpQUFtcGdoWkpkIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6MTM6ImNvbV90ZW1wbGF0ZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJzdHlsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoibWVudSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX1zOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO3M6MjoiaWQiO2E6MDp7fX19czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJtZW51dHlwZSI7czoxMjoiZm9vdGVyLW1lbnVlIjtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fXM6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoibWVudXR5cGUiO3M6MTI6ImZvb3Rlci1tZW51ZSI7fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiI1MTMiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 513, 'admin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_tags`
--

DROP TABLE IF EXISTS `joomla_tags`;
CREATE TABLE `joomla_tags` (
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
-- Daten für Tabelle `joomla_tags`
--

INSERT INTO `joomla_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 513, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_templateck_fonts`
--

DROP TABLE IF EXISTS `joomla_templateck_fonts`;
CREATE TABLE `joomla_templateck_fonts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `styles` text NOT NULL,
  `fontfamilies` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_templateck_templates`
--

DROP TABLE IF EXISTS `joomla_templateck_templates`;
CREATE TABLE `joomla_templateck_templates` (
  `id` int(11) NOT NULL,
  `joomlaversion` text NOT NULL,
  `name` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `creationdate` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `authoremail` varchar(255) NOT NULL,
  `authorurl` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `htmlcode` longtext NOT NULL,
  `theme` text NOT NULL,
  `cssparams` text NOT NULL,
  `options` text NOT NULL,
  `htmlcode_responsive` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joomla_templateck_templates`
--

INSERT INTO `joomla_templateck_templates` (`id`, `joomlaversion`, `name`, `ordering`, `published`, `creationdate`, `author`, `authoremail`, `authorurl`, `copyright`, `license`, `version`, `description`, `htmlcode`, `theme`, `cssparams`, `options`, `htmlcode_responsive`) VALUES
(1, 'j3', 'templatecreator_blank', 0, 1, '08/03/13', 'Cedric KEIFLIN', '', 'http://www.joomlack.fr', 'Cedric KEIFLIN', 'GNU/GPL', '1.0.0', 'Demo template for Template Creator CK v3', '', '', '', '', ''),
(2, 'j3', 'simon', 0, 1, '23.11.2016', 'Simon', 'Simon', 'Simon', 'Simon', 'Simon', 'v1', 'Simon', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_template_styles`
--

DROP TABLE IF EXISTS `joomla_template_styles`;
CREATE TABLE `joomla_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_template_styles`
--

INSERT INTO `joomla_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'jd_atlanta', 0, '0', 'jd-atlanta - Default', '{"presets":"preset1","master":"true","current_id":"true","template_full_name":"Gantry","grid_system":"12","template_prefix":"gantry-","cookie_time":"31536000","override_set":"2.5","name":"Preset1","copy_lang_files_if_diff":"1","logo":{"enabled":"1","position":"header-a","type":"gantry","custom":{"image":""}},"headerstyle":"dark","linkcolor":"#2698de","font":{"family":"s:helvetica","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","dropdownmenu-priority":"18","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","webfonts-priority":"27","styledeclaration-enabled":"1","date":{"enabled":"0","position":"top-d","clientside":"0","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"feature-b"},"branding":{"enabled":"0","position":"copyright-a"},"copyright":{"enabled":"0","position":"copyright-a","text":"Designed by RocketTheme","layout":"3,3,3,3","showall":"0","showmax":"6"},"totop":{"enabled":"1","position":"scroll","text":"Back to Top"},"systemmessages":{"enabled":"1","position":"drawer"},"resetsettings":{"enabled":"1","position":"copyright-d","text":"Reset Settings"},"analytics":{"enabled":"0","code":"","position":"analytics"},"menu":{"enabled":"1","type":"dropdownmenu","dropdownmenu":{"theme":"gantry-dropdown","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","menutype":"mainmenu","position":"header-b","responsive-menu":"panel","enable-current-id":"0","module_cache":"1"},"splitmenu":{"mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","cache":"0","menutype":"mainmenu","theme":"gantry-splitmenu","mainmenu-position":"header-b","submenu-position":"sidebar-a","submenu-title":"1","submenu-class_sfx":"","submenu-module_sfx":"","responsive-menu":"panel","roknavmenu_dropdown_enable-current-id":"0","module_cache":"1"}},"top":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"header":{"layout":"3,9","showall":"0","showmax":"2"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"3,6,3","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"extension":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"layout-mode":"responsive","loadtransition":"0","component-enabled":"1","mainbody-enabled":"1","rtl-enabled":"1","pagesuffix-enabled":"0","selectivizr-enabled":"0","less":{"compression":"1","compilewait":"2","debugheader":"0"},"positiontop":{"topimage":"","topcolor":"transparent"},"positionheader":{"headerimage":"","headercolor":"transparent"},"positionslider":{"sliderimage":"","slidercolor":"transparent"},"positiondrawer":{"drawerimage":"","drawercolor":"transparent"},"positionshowcase":{"showcaseimage":"","showcasecolor":"transparent"},"positionfeature":{"featureimage":"","featurecolor":"transparent"},"positionutility":{"utilityimage":"","utilitycolor":"transparent"},"positionbreadcrumbs":{"breadcrumbsimage":"","breadcrumbscolor":"transparent"},"positionmaintop":{"maintopimage":"","maintopcolor":"transparent"},"positionfullwidth":{"fullwidthimage":"","fullwidthcolor":"transparent"},"positionmainbottom":{"mainbottomimage":"","mainbottomcolor":"transparent"},"positionextension":{"extensionimage":"","extensioncolor":"transparent"},"positionjdposition1":{"jdposition1image":"","jdposition1color":"transparent"},"positionjdposition2":{"jdposition2image":"","jdposition2color":"transparent"},"positionjdposition3":{"jdposition3image":"","jdposition3color":"transparent"},"positionbottom":{"bottomimage":"","bottomcolor":"transparent"},"positionfooter":{"footerimage":"","footercolor":"transparent"},"positioncopyright":{"copyrightimage":"","copyrightcolor":"transparent"}}'),
(11, 'templatecreatorck', 0, '0', 'templatecreatorck - Standard', '{}'),
(12, 'simon', 0, '0', 'simon - Standard', '{"bannerlogo_logoimgsrc":"templates\\/simon\\/images\\/logo_fake.png","bannerlogo_logoheight":"53","bannerlogo_logowidth":"216","bannerlogo_logolink":"","bannerlogo_logotitle":"","bannerlogo_logodescription":"","usecsspie":"1","useresponsive":"1"}'),
(14, 'meet_gavern', 0, '0', 'meet_gavern - Standard', '{"max_page_width":"1205","layout_manager":"[{\\"position\\":\\"top-wrapper\\",\\"type\\":\\"wrapper\\",\\"width\\":\\"row-fluid\\",\\"childs\\":[{\\"position\\":\\"logo\\",\\"type\\":\\"locked\\",\\"width\\":\\"span3\\"},{\\"position\\":\\"mainmenu\\",\\"type\\":\\"locked\\",\\"width\\":\\"span9\\"}],\\"level\\":0,\\"pCid\\":\\"root\\",\\"pID\\":\\"layoutManager\\"},{\\"position\\":\\"header\\",\\"type\\":\\"locked\\",\\"width\\":\\"row-fluid\\",\\"level\\":0,\\"pCid\\":\\"root\\",\\"pID\\":\\"layoutManager\\"},{\\"position\\":\\"top\\",\\"type\\":\\"module\\",\\"width\\":\\"row-fluid\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"modules\\":[{\\"width_desktop\\":\\"6\\",\\"width_tablet\\":\\"6\\",\\"width_mobile\\":\\"6\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"6\\",\\"width_mobile\\":\\"6\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"4\\",\\"width_mobile\\":\\"6\\"},{\\"width_desktop\\":\\"6\\",\\"width_tablet\\":\\"4\\",\\"width_mobile\\":\\"6\\"},{\\"width_desktop\\":\\"6\\",\\"width_tablet\\":\\"4\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"12\\",\\"width_tablet\\":\\"12\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"}],\\"level\\":0,\\"pCid\\":\\"root\\",\\"pID\\":\\"layoutManager\\"},{\\"position\\":\\"content-wrapper\\",\\"type\\":\\"wrapper\\",\\"width\\":\\"row-fluid\\",\\"childs\\":[{\\"position\\":\\"mainbody-wrapper\\",\\"type\\":\\"wrapper\\",\\"width\\":\\"span9\\",\\"childs\\":[{\\"position\\":\\"breadcrumb\\",\\"type\\":\\"module\\",\\"width\\":\\"row-fluid\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"modules\\":[{\\"width_desktop\\":\\"12\\",\\"width_tablet\\":\\"12\\",\\"width_mobile\\":\\"12\\"}]},{\\"position\\":\\"mainbody_top\\",\\"type\\":\\"module\\",\\"width\\":\\"row-fluid\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"modules\\":[{\\"width_desktop\\":\\"6\\",\\"width_tablet\\":\\"12\\",\\"width_mobile\\":\\"12\\"}]},{\\"position\\":\\"mainbody\\",\\"type\\":\\"locked\\",\\"width\\":\\"row-fluid\\"},{\\"position\\":\\"mainbody_bottom\\",\\"type\\":\\"module\\",\\"width\\":\\"row-fluid\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"modules\\":[{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"3\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"}]}]},{\\"position\\":\\"sidebar\\",\\"type\\":\\"module\\",\\"float\\":\\"right\\",\\"width\\":\\"span3\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"sibling\\":\\"mainbody-wrapper\\"}],\\"level\\":0,\\"pCid\\":\\"root\\",\\"pID\\":\\"layoutManager\\"},{\\"position\\":\\"bottom\\",\\"type\\":\\"module\\",\\"width\\":\\"row-fluid\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"modules\\":[{\\"width_desktop\\":\\"2\\",\\"width_tablet\\":\\"4\\",\\"width_mobile\\":\\"4\\"},{\\"width_desktop\\":\\"2\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"2\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"2\\",\\"width_tablet\\":\\"2\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"2\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"2\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"6\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"},{\\"width_desktop\\":\\"6\\",\\"width_tablet\\":\\"3\\",\\"width_mobile\\":\\"3\\"}],\\"level\\":0,\\"pCid\\":\\"root\\",\\"pID\\":\\"layoutManager\\"},{\\"position\\":\\"footer\\",\\"type\\":\\"module\\",\\"width\\":\\"span8\\",\\"default_width\\":\\"5\\",\\"advanced\\":\\"0\\",\\"modules\\":[{\\"width_desktop\\":\\"12\\",\\"width_tablet\\":\\"9\\",\\"width_mobile\\":\\"9\\"}],\\"level\\":0,\\"pCid\\":\\"root\\",\\"pID\\":\\"layoutManager\\"}]","font_name_group1":"standard;Verdana, Geneva, sans-serif","font_rules_group1":"body","font_name_group2":"squirrel;Colaborate","font_rules_group2":"h1,\\r\\nh2,\\r\\nh3,\\r\\nh4,\\r\\nh5,\\r\\nh6,\\r\\n.gk-blue-button,\\r\\n.gk-yellow-button ","font_name_group3":"google;own;http:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:400,300,700;Open Sans","font_rules_group3":"#gk-content h2 small","font_name_group4":"standard;Arial, Helvetica, sans-serif","font_rules_group4":"","logo_type":"css","logo_image":"","logo_text":"Meet Gavern","logo_slogan":"Free Joomla! 3.0 Template","favicon_image":"","show_category_details":"1","framework_logo":"1","copyrights":"","webmaster_contact_type":"email","webmaster_contact":"webmaster@gavick.com","google_analytics":"","menu_animation":"width_height_opacity","menu_speed":"fast","submenu_width":"200","social_pos":"right","fb_api_id":"","fb_lang":"en_US","fb_login":"1","fb_like":"1","fb_like_send":"1","fb_like_layout":"standard","fb_like_show_faces":"true","fb_like_width":"400","fb_like_action":"like","fb_like_font":"arial","fb_like_colorscheme":"light","google_plus":"1","google_plus_count":"1","google_plus_size":"medium","google_plus_lang":"en-GB","google_plus_share":"1","google_plus_share_annotation":"vertical-bubble","google_plus_share_size":"20","tweet_btn":"1","tweet_btn_data_count":"vertical","tweet_btn_data_via":"","tweet_btn_data_lang":"en","pinterest_btn":"1","pinterest_btn_style":"horizontal","excluded_arts":"","cookie_consent":"0","consenttype":"explicit","cookie_latest_version":"0","cookie_use_ssl":"0","banner_position":"bottom","banner_tag_placement":"bottom-right","cookie_style":"dark","refreshOnConsent":"0","cookiecss":"1","recompile_css":"1","recompile_bootstrap":"0","usernameless_login":"1","css_cache":"0","css_compression":"0","css_override":"1","css_prefixer":"0","js_compression":"0","css_custom":"","chrome_frame_support":"1"}'),
(15, 'frontend', 0, '0', 'frontend - Standard', '{}'),
(16, 'simonbs', 0, '0', 'Simon BS - Standard', '{}'),
(17, 'simonbs2', 0, '0', 'SimonBS2 - Standard', '{"runless":"1"}'),
(18, 'masterbootstrap', 0, '0', 'Master Bootstrap - Standard', '{"leftColumnWidth":"3","rightColumnWidth":"3","frontpageshow":"1","modernizr":"0","fontawesome":"0","pie":"0","materialdesign":"0","compile_sass":"0","logo_link":"index.php","logo_width":"173","logo_height":"26","layout":"full","pattern":"default"}'),
(23, 'spacesharing', 0, '1', 'Spacesharing - Standard', '{"logo":"images\\/2014-04-23_RL_Logo_final.jpg","ftext":"Test Fu\\u00dfzeile","Name":"1","SuH":"2","PLZ":"3","Ort":"4","Telefon":"5","Mail":"6"}'),
(24, 'dream_house', 0, '0', 'dream_house - Standard', '{"body_color":"#f8f8f8","logo_link":"index.php","logo_width":"173","logo_height":"26","body_link_color":"#92999E","body_link_hover_color":"#12ABFF","body_underline":"none","body_hover_underline":"underline","top_menu_color":"#92999E","top_menu_hover_color":"#000000","top_menu_underline":"none","top_menu_hover_underline":"none","main_menu_color":"#92999E","main_menu_hover_color":"#000000","main_menu_underline":"none","main_menu_hover_underline":"none","menu_footer_color":"#92999E","menu_footer_hover_color":"#000000","menu_footer_underline":"none","menu_footer_hover_underline":"none","body_font":"PT Sans Narrow","links_font":"PT Sans Narrow","top_menu_font":"PT Sans Narrow","main_menu_font":"PT Sans Narrow","footer_menu_font":"PT Sans Narrow","h1_font":"PT Sans Narrow","h2_font":"PT Sans Narrow","h3_font":"PT Sans Narrow","h4_font":"PT Sans Narrow","h5_font":"PT Sans Narrow","h6_font":"PT Sans Narrow","twitter":"","facebook":"","flickr":"","linkedin":"","youtube":"","pinterest":"","google":"","dribbble":"","vimeo":"","instagram":"","vk":""}'),
(25, 'dream_house', 0, '0', 'dream_house - Standard', '{"body_color":"#f8f8f8","logo_link":"index.php","logo_width":"173","logo_height":"26","body_link_color":"#92999E","body_link_hover_color":"#12ABFF","body_underline":"none","body_hover_underline":"underline","top_menu_color":"#92999E","top_menu_hover_color":"#000000","top_menu_underline":"none","top_menu_hover_underline":"none","main_menu_color":"#92999E","main_menu_hover_color":"#000000","main_menu_underline":"none","main_menu_hover_underline":"none","menu_footer_color":"#92999E","menu_footer_hover_color":"#000000","menu_footer_underline":"none","menu_footer_hover_underline":"none","body_font":"PT Sans Narrow","links_font":"PT Sans Narrow","top_menu_font":"PT Sans Narrow","main_menu_font":"PT Sans Narrow","footer_menu_font":"PT Sans Narrow","h1_font":"PT Sans Narrow","h2_font":"PT Sans Narrow","h3_font":"PT Sans Narrow","h4_font":"PT Sans Narrow","h5_font":"PT Sans Narrow","h6_font":"PT Sans Narrow","twitter":"","facebook":"","flickr":"","linkedin":"","youtube":"","pinterest":"","google":"","dribbble":"","vimeo":"","instagram":"","vk":""}'),
(26, 'os-basetemplate', 0, '0', 'os-basetemplate - Standard', '{"body_color":"#f8f8f8","logo_file":"templates\\/os-basetemplate\\/ordasoft_template_logo.png","logo_link":"index.php","logo_width":"226","logo_height":"60","body_link_color":"#92999E","body_link_hover_color":"#12ABFF","body_underline":"none","body_hover_underline":"underline","top_menu_color":"#92999E","top_menu_hover_color":"#000000","top_menu_underline":"none","top_menu_hover_underline":"none","main_menu_color":"#92999E","main_menu_hover_color":"#000000","main_menu_underline":"none","main_menu_hover_underline":"none","menu_footer_color":"#92999E","menu_footer_hover_color":"#000000","menu_footer_underline":"none","menu_footer_hover_underline":"none","body_font":"PT Sans Narrow","links_font":"PT Sans Narrow","top_menu_font":"PT Sans Narrow","main_menu_font":"PT Sans Narrow","footer_menu_font":"PT Sans Narrow","h1_font":"PT Sans Narrow","h2_font":"PT Sans Narrow","h3_font":"PT Sans Narrow","h4_font":"PT Sans Narrow","h5_font":"PT Sans Narrow","h6_font":"PT Sans Narrow","twitter":"","facebook":"","flickr":"","linkedin":"","youtube":"","pinterest":"","google":"","dribbble":"","vimeo":"","instagram":"","vk":""}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_ucm_base`
--

DROP TABLE IF EXISTS `joomla_ucm_base`;
CREATE TABLE `joomla_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_ucm_content`
--

DROP TABLE IF EXISTS `joomla_ucm_content`;
CREATE TABLE `joomla_ucm_content` (
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
-- Tabellenstruktur für Tabelle `joomla_ucm_history`
--

DROP TABLE IF EXISTS `joomla_ucm_history`;
CREATE TABLE `joomla_ucm_history` (
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
-- Daten für Tabelle `joomla_ucm_history`
--

INSERT INTO `joomla_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2016-11-22 20:21:23', 513, 2657, '88cbd73465f07faf070544681383c3c21575b046', '{"id":1,"asset_id":59,"title":"Testinhalt","alias":"testinhalt","introtext":"<p>teafdfasdf<span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">teafdfasdf<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-11-22 20:21:23","created_by":"513","created_by_alias":"","modified":"2016-11-22 20:21:23","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-11-22 20:21:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 8, 5, '', '2016-11-29 18:37:41', 513, 555, '22ac750c385403467175822942be4b513d00395b', '{"id":8,"asset_id":61,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Forschung","alias":"forschung","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"513","created_time":"2016-11-29 18:37:41","modified_user_id":null,"modified_time":"2016-11-29 18:37:41","hits":"0","language":"*","version":null}', 0),
(3, 2, 1, '', '2016-11-29 18:38:07', 513, 2417, '570957e21c770802a6e873d1181ee5f34e78ae3e', '{"id":2,"asset_id":62,"title":"Erster Beitrag","alias":"erster-beitrag","introtext":"<p>AFasdfasdfdasf<span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-11-29 18:38:07","created_by":"513","created_by_alias":"","modified":"2016-11-29 18:38:07","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-11-29 18:38:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 2, 1, '', '2016-11-29 18:40:55', 513, 2437, 'e4c4a90bd7224746a32abaf853a8950b410bd51e', '{"id":2,"asset_id":"62","title":"Erster Beitrag","alias":"erster-beitrag","introtext":"<p>AFasdfasdfdasf<span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-11-29 18:38:07","created_by":"513","created_by_alias":"","modified":"2016-11-29 18:40:55","modified_by":"513","checked_out":"513","checked_out_time":"2016-11-29 18:40:28","publish_up":"2016-11-29 18:38:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 2, 1, '', '2016-11-29 18:41:22', 513, 2439, '63721b59500a2257257febe1e75a6fb189dfb638', '{"id":2,"asset_id":"62","title":"Erster Beitrag","alias":"erster-beitrag","introtext":"<p>AFasdfasdfdasf<span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-11-29 18:38:07","created_by":"513","created_by_alias":"","modified":"2016-11-29 18:41:22","modified_by":"513","checked_out":"513","checked_out_time":"2016-11-29 18:41:13","publish_up":"2016-11-29 18:38:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2016-11-29 18:41:41', 513, 2440, 'f78ec43f06f8cf954617690dab48632e59878a2a', '{"id":2,"asset_id":"62","title":"Erster Beitrag","alias":"erster-beitrag","introtext":"<p>AFasdfasdfdasf<span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><span style=\\"font-size: 12.16px;\\">AFasdfasdfdasf<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-11-29 18:38:07","created_by":"513","created_by_alias":"","modified":"2016-11-29 18:41:41","modified_by":"513","checked_out":"513","checked_out_time":"2016-11-29 18:41:29","publish_up":"2016-11-29 18:38:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 3, 1, '', '2017-01-04 12:36:59', 513, 1706, 'b9a697a675d28ff66feafae36a9b7a5544b2eee4', '{"id":3,"asset_id":80,"title":"Impressum","alias":"impressum","introtext":"<p>lalallala<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-01-04 12:36:59","created_by":"513","created_by_alias":"","modified":"2017-01-04 12:36:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-01-04 12:36:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 4, 1, '', '2017-01-04 12:39:21', 513, 1700, 'ac1929b53279d3b37bec99ffef9a88c52a281834', '{"id":4,"asset_id":83,"title":"AGB","alias":"agb","introtext":"<p>afsdfertererere<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-01-04 12:39:21","created_by":"513","created_by_alias":"","modified":"2017-01-04 12:39:21","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-01-04 12:39:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 4, 1, '', '2017-01-04 13:15:25', 513, 1737, '647ff2c4d47bf844b9b1d694d322bf940195ba01', '{"id":4,"asset_id":"83","title":"AGB","alias":"agb","introtext":"<p>afsdfertererere<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-01-04 12:39:21","created_by":"513","created_by_alias":"","modified":"2017-01-04 13:15:25","modified_by":"513","checked_out":"513","checked_out_time":"2017-01-04 13:13:56","publish_up":"2017-01-04 12:39:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 4, 1, '', '2017-01-04 13:15:46', 513, 1738, '140eae78dea0b448e727d28f87420d2e460b4e96', '{"id":4,"asset_id":"83","title":"AGB","alias":"agb","introtext":"<p>afsdfertererere<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-01-04 12:39:21","created_by":"513","created_by_alias":"","modified":"2017-01-04 13:15:46","modified_by":"513","checked_out":"513","checked_out_time":"2017-01-04 13:15:38","publish_up":"2017-01-04 12:39:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 4, 1, '', '2017-01-04 13:16:15', 513, 1741, 'e5714563bc4aa618823d552b31be54516ea825fc', '{"id":4,"asset_id":"83","title":"AGB","alias":"agb","introtext":"<p>afsdfertererere<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-01-04 12:39:21","created_by":"513","created_by_alias":"","modified":"2017-01-04 13:16:15","modified_by":"513","checked_out":"513","checked_out_time":"2017-01-04 13:15:46","publish_up":"2017-01-04 12:39:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"0\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"14","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_updates`
--

DROP TABLE IF EXISTS `joomla_updates`;
CREATE TABLE `joomla_updates` (
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
-- Daten für Tabelle `joomla_updates`
--

INSERT INTO `joomla_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(2, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(3, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(4, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(5, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(6, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(7, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(8, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(9, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(10, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.6.5', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(11, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(12, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(13, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(14, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(15, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(16, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(17, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(18, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(19, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(20, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(21, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(22, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(23, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(24, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(25, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(26, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(27, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(28, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(29, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(30, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(31, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(32, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(33, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(34, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(35, 3, 10002, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(36, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(37, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(38, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(39, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(40, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(41, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(42, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(43, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(44, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(45, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(46, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(47, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(48, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(49, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(50, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(51, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(52, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(53, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(54, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(55, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(56, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(57, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(58, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(59, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(60, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(61, 5, 10005, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.32', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry.org', ''),
(62, 6, 0, 'RokSprocket Module', '', 'mod_roksprocket', 'module', '', 0, '2.1.17', '0802', 'http://updates.rockettheme.com/joomla/138/b61e70db', '', ''),
(63, 6, 0, 'RokGallery Extension', '', 'mod_rokgallery', 'module', '', 0, '2.42', '0802', 'http://updates.rockettheme.com/joomla/286/21ffe006', '', ''),
(64, 6, 0, 'RokBooster Plugin', '', 'rokbooster', 'plugin', 'system', 0, '1.1.16', '0802', 'http://updates.rockettheme.com/joomla/287/cb577720', '', ''),
(65, 6, 0, 'RokAjaxSearch Module', '', 'mod_rokajaxsearch', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/290/1d5a0af1', '', ''),
(66, 6, 0, 'RokWeather Module', '', 'mod_rokweather', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/292/a0cbba72', '', ''),
(67, 6, 0, 'RokStock Module', '', 'mod_rokstock', 'module', '', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/295/87c1121c', '', ''),
(68, 6, 0, 'RokMiniEvents3 Module', '', 'mod_rokminievents3', 'module', '', 0, '3.0.2', '0802', 'http://updates.rockettheme.com/joomla/297/1686051690', '', ''),
(69, 6, 0, 'RokQuickCart Extension', '', 'com_rokquickcart', 'component', '', 1, '2.1.5', '0802', 'http://updates.rockettheme.com/joomla/298/ddfa10eb', '', ''),
(70, 6, 0, 'RokPad Plugin', '', 'rokpad', 'plugin', 'editors', 0, '2.1.9', '0802', 'http://updates.rockettheme.com/joomla/299/e07875c9', '', ''),
(71, 6, 0, 'RokBox Plugin', '', 'rokbox', 'plugin', 'system', 0, '2.0.13', '0802', 'http://updates.rockettheme.com/joomla/301/dfc993d8', '', ''),
(72, 6, 0, 'RokCandy Extension', '', 'rokcandy', 'plugin', 'system', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/302/2df8a4e2', '', ''),
(73, 6, 0, 'RokComments Plugin', '', 'rokcomments', 'plugin', 'content', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/303/d1fd7b76', '', ''),
(74, 6, 0, 'RokSocialButtons Plugin', '', 'roksocialbuttons', 'plugin', 'content', 0, '1.5.3', '0802', 'http://updates.rockettheme.com/joomla/381/269989291', '', ''),
(75, 7, 10011, 'Jomres', 'Jomres', 'com_jomres', 'component', '', 1, '9.8.24', '', 'http://updates.jomres4.net/jomres_updates.xml', 'http://www.jomres.net/', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_update_sites`
--

DROP TABLE IF EXISTS `joomla_update_sites`;
CREATE TABLE `joomla_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Daten für Tabelle `joomla_update_sites`
--

INSERT INTO `joomla_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1483519854, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1483519854, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1483519856, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1483519856, ''),
(5, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1483519857, ''),
(6, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1483519858, ''),
(7, 'Jomres Update', 'extension', 'http://updates.jomres4.net/jomres_updates.xml', 1, 1483519859, ''),
(9, 'Meet Gavern Updates', 'template', 'https://www.gavick.com/update_server/joomla3/meet_gavern.xml', 1, 1483519859, ''),
(10, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1483519859, ''),
(11, 'FOF 3.x', 'extension', 'http://cdn.akeebabackup.com/updates/fof3.xml', 1, 1483519859, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_update_sites_extensions`
--

DROP TABLE IF EXISTS `joomla_update_sites_extensions`;
CREATE TABLE `joomla_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Daten für Tabelle `joomla_update_sites_extensions`
--

INSERT INTO `joomla_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(3, 10002),
(4, 28),
(5, 10005),
(6, 10010),
(7, 10011),
(9, 10018),
(10, 10028),
(11, 10043);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_usergroups`
--

DROP TABLE IF EXISTS `joomla_usergroups`;
CREATE TABLE `joomla_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_usergroups`
--

INSERT INTO `joomla_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 8, 17, 'Registered'),
(3, 2, 11, 16, 'Author'),
(4, 3, 12, 15, 'Editor'),
(5, 4, 13, 14, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(9, 1, 2, 3, 'Guest'),
(10, 2, 9, 10, 'Anbieter');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_users`
--

DROP TABLE IF EXISTS `joomla_users`;
CREATE TABLE `joomla_users` (
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
-- Daten für Tabelle `joomla_users`
--

INSERT INTO `joomla_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(513, 'Super User', 'admin', 'wi14305@lehre.dhbw-stuttgart.de', '$2y$10$Lviuq8M8YpMtNa/LShAcAetFHKOSMePI6dizrKEu2hXkl2F88nxKa', 0, 1, '2016-11-22 16:37:33', '2017-01-04 11:10:58', '0', '{"admin_style":"","admin_language":"de-DE","language":"de-DE","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(514, 'Anbieter1', 'a1', 'prtmaster@web.de', '$2y$10$BSEB6mm/1s6xHYY7mnSxLuS4Gn4.xyAXBIY4ZGCfO0q2RSOxIzEpy', 0, 0, '2016-12-06 19:54:35', '2016-12-06 20:00:16', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_user_keys`
--

DROP TABLE IF EXISTS `joomla_user_keys`;
CREATE TABLE `joomla_user_keys` (
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
-- Tabellenstruktur für Tabelle `joomla_user_notes`
--

DROP TABLE IF EXISTS `joomla_user_notes`;
CREATE TABLE `joomla_user_notes` (
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
-- Tabellenstruktur für Tabelle `joomla_user_profiles`
--

DROP TABLE IF EXISTS `joomla_user_profiles`;
CREATE TABLE `joomla_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_user_usergroup_map`
--

DROP TABLE IF EXISTS `joomla_user_usergroup_map`;
CREATE TABLE `joomla_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_user_usergroup_map`
--

INSERT INTO `joomla_user_usergroup_map` (`user_id`, `group_id`) VALUES
(513, 8),
(514, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_utf8_conversion`
--

DROP TABLE IF EXISTS `joomla_utf8_conversion`;
CREATE TABLE `joomla_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_utf8_conversion`
--

INSERT INTO `joomla_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joomla_viewlevels`
--

DROP TABLE IF EXISTS `joomla_viewlevels`;
CREATE TABLE `joomla_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `joomla_viewlevels`
--

INSERT INTO `joomla_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]'),
(7, 'Anbieter', 0, '[10]');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `joomla_assets`
--
ALTER TABLE `joomla_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indizes für die Tabelle `joomla_associations`
--
ALTER TABLE `joomla_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indizes für die Tabelle `joomla_banners`
--
ALTER TABLE `joomla_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `joomla_banner_clients`
--
ALTER TABLE `joomla_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indizes für die Tabelle `joomla_banner_tracks`
--
ALTER TABLE `joomla_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indizes für die Tabelle `joomla_categories`
--
ALTER TABLE `joomla_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `joomla_contact_details`
--
ALTER TABLE `joomla_contact_details`
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
-- Indizes für die Tabelle `joomla_content`
--
ALTER TABLE `joomla_content`
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
-- Indizes für die Tabelle `joomla_contentitem_tag_map`
--
ALTER TABLE `joomla_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indizes für die Tabelle `joomla_content_frontpage`
--
ALTER TABLE `joomla_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indizes für die Tabelle `joomla_content_rating`
--
ALTER TABLE `joomla_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indizes für die Tabelle `joomla_content_types`
--
ALTER TABLE `joomla_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indizes für die Tabelle `joomla_extensions`
--
ALTER TABLE `joomla_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indizes für die Tabelle `joomla_finder_filters`
--
ALTER TABLE `joomla_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indizes für die Tabelle `joomla_finder_links`
--
ALTER TABLE `joomla_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms0`
--
ALTER TABLE `joomla_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms1`
--
ALTER TABLE `joomla_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms2`
--
ALTER TABLE `joomla_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms3`
--
ALTER TABLE `joomla_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms4`
--
ALTER TABLE `joomla_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms5`
--
ALTER TABLE `joomla_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms6`
--
ALTER TABLE `joomla_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms7`
--
ALTER TABLE `joomla_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms8`
--
ALTER TABLE `joomla_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_terms9`
--
ALTER TABLE `joomla_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_termsa`
--
ALTER TABLE `joomla_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_termsb`
--
ALTER TABLE `joomla_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_termsc`
--
ALTER TABLE `joomla_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_termsd`
--
ALTER TABLE `joomla_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_termse`
--
ALTER TABLE `joomla_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_links_termsf`
--
ALTER TABLE `joomla_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indizes für die Tabelle `joomla_finder_taxonomy`
--
ALTER TABLE `joomla_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indizes für die Tabelle `joomla_finder_taxonomy_map`
--
ALTER TABLE `joomla_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indizes für die Tabelle `joomla_finder_terms`
--
ALTER TABLE `joomla_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indizes für die Tabelle `joomla_finder_terms_common`
--
ALTER TABLE `joomla_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indizes für die Tabelle `joomla_finder_tokens`
--
ALTER TABLE `joomla_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indizes für die Tabelle `joomla_finder_tokens_aggregate`
--
ALTER TABLE `joomla_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indizes für die Tabelle `joomla_finder_types`
--
ALTER TABLE `joomla_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indizes für die Tabelle `joomla_jomcomp_cron`
--
ALTER TABLE `joomla_jomcomp_cron`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomcomp_cronlog`
--
ALTER TABLE `joomla_jomcomp_cronlog`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomcomp_extrasmodels_models`
--
ALTER TABLE `joomla_jomcomp_extrasmodels_models`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomcomp_mufavourites`
--
ALTER TABLE `joomla_jomcomp_mufavourites`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomcomp_notes`
--
ALTER TABLE `joomla_jomcomp_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_uid` (`property_uid`),
  ADD KEY `contract_uid` (`contract_uid`);

--
-- Indizes für die Tabelle `joomla_jomcomp_tarifftypes`
--
ALTER TABLE `joomla_jomcomp_tarifftypes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomcomp_tarifftype_rate_xref`
--
ALTER TABLE `joomla_jomcomp_tarifftype_rate_xref`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_bookings`
--
ALTER TABLE `joomla_jomresportal_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_c_rates`
--
ALTER TABLE `joomla_jomresportal_c_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_invoices`
--
ALTER TABLE `joomla_jomresportal_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_uid` (`property_uid`);

--
-- Indizes für die Tabelle `joomla_jomresportal_invoices_transactions`
--
ALTER TABLE `joomla_jomresportal_invoices_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_lineitems`
--
ALTER TABLE `joomla_jomresportal_lineitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inv_id` (`inv_id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_properties_crates_xref`
--
ALTER TABLE `joomla_jomresportal_properties_crates_xref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `property_id` (`property_id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_sms_clickatell_messages`
--
ALTER TABLE `joomla_jomresportal_sms_clickatell_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_subscriptions`
--
ALTER TABLE `joomla_jomresportal_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_subscriptions_packages`
--
ALTER TABLE `joomla_jomresportal_subscriptions_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_taxrates`
--
ALTER TABLE `joomla_jomresportal_taxrates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomresportal_users`
--
ALTER TABLE `joomla_jomresportal_users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_access_control`
--
ALTER TABLE `joomla_jomres_access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_audit`
--
ALTER TABLE `joomla_jomres_audit`
  ADD PRIMARY KEY (`uid`);

--
-- Indizes für die Tabelle `joomla_jomres_audit_archive`
--
ALTER TABLE `joomla_jomres_audit_archive`
  ADD PRIMARY KEY (`uid`);

--
-- Indizes für die Tabelle `joomla_jomres_booking_data_archive`
--
ALTER TABLE `joomla_jomres_booking_data_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_uid` (`contract_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_contracts`
--
ALTER TABLE `joomla_jomres_contracts`
  ADD PRIMARY KEY (`contract_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_countries`
--
ALTER TABLE `joomla_jomres_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_coupons`
--
ALTER TABLE `joomla_jomres_coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indizes für die Tabelle `joomla_jomres_customertypes`
--
ALTER TABLE `joomla_jomres_customertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_custom_fields`
--
ALTER TABLE `joomla_jomres_custom_fields`
  ADD PRIMARY KEY (`uid`);

--
-- Indizes für die Tabelle `joomla_jomres_custom_templates`
--
ALTER TABLE `joomla_jomres_custom_templates`
  ADD PRIMARY KEY (`uid`);

--
-- Indizes für die Tabelle `joomla_jomres_custom_text`
--
ALTER TABLE `joomla_jomres_custom_text`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `property_uid` (`property_uid`),
  ADD KEY `language` (`language`);

--
-- Indizes für die Tabelle `joomla_jomres_extras`
--
ALTER TABLE `joomla_jomres_extras`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `property_uid` (`property_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_extraservices`
--
ALTER TABLE `joomla_jomres_extraservices`
  ADD PRIMARY KEY (`extraservice_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_guests`
--
ALTER TABLE `joomla_jomres_guests`
  ADD PRIMARY KEY (`guests_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_guest_profile`
--
ALTER TABLE `joomla_jomres_guest_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_user_id` (`cms_user_id`);

--
-- Indizes für die Tabelle `joomla_jomres_hotel_features`
--
ALTER TABLE `joomla_jomres_hotel_features`
  ADD PRIMARY KEY (`hotel_features_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_hotel_features_categories`
--
ALTER TABLE `joomla_jomres_hotel_features_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_invoice_payment_ref`
--
ALTER TABLE `joomla_jomres_invoice_payment_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_managers`
--
ALTER TABLE `joomla_jomres_managers`
  ADD PRIMARY KEY (`manager_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_managers_propertys_xref`
--
ALTER TABLE `joomla_jomres_managers_propertys_xref`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_partners`
--
ALTER TABLE `joomla_jomres_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_partners_discounts`
--
ALTER TABLE `joomla_jomres_partners_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_partner_bookings`
--
ALTER TABLE `joomla_jomres_partner_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_pcounter`
--
ALTER TABLE `joomla_jomres_pcounter`
  ADD PRIMARY KEY (`p_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_pluginsettings`
--
ALTER TABLE `joomla_jomres_pluginsettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prid` (`prid`);

--
-- Indizes für die Tabelle `joomla_jomres_propertys`
--
ALTER TABLE `joomla_jomres_propertys`
  ADD PRIMARY KEY (`propertys_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_ptypes`
--
ALTER TABLE `joomla_jomres_ptypes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_rates`
--
ALTER TABLE `joomla_jomres_rates`
  ADD PRIMARY KEY (`rates_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_regions`
--
ALTER TABLE `joomla_jomres_regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countrycode` (`countrycode`);

--
-- Indizes für die Tabelle `joomla_jomres_reviews_ratings`
--
ALTER TABLE `joomla_jomres_reviews_ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indizes für die Tabelle `joomla_jomres_reviews_ratings_confirm`
--
ALTER TABLE `joomla_jomres_reviews_ratings_confirm`
  ADD PRIMARY KEY (`confirm_rating_id`);

--
-- Indizes für die Tabelle `joomla_jomres_reviews_ratings_detail`
--
ALTER TABLE `joomla_jomres_reviews_ratings_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indizes für die Tabelle `joomla_jomres_reviews_reports`
--
ALTER TABLE `joomla_jomres_reviews_reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indizes für die Tabelle `joomla_jomres_rooms`
--
ALTER TABLE `joomla_jomres_rooms`
  ADD PRIMARY KEY (`room_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_roomtypes_propertytypes_xref`
--
ALTER TABLE `joomla_jomres_roomtypes_propertytypes_xref`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_jomres_room_bookings`
--
ALTER TABLE `joomla_jomres_room_bookings`
  ADD PRIMARY KEY (`room_bookings_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_room_classes`
--
ALTER TABLE `joomla_jomres_room_classes`
  ADD PRIMARY KEY (`room_classes_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_room_features`
--
ALTER TABLE `joomla_jomres_room_features`
  ADD PRIMARY KEY (`room_features_uid`);

--
-- Indizes für die Tabelle `joomla_jomres_settings`
--
ALTER TABLE `joomla_jomres_settings`
  ADD PRIMARY KEY (`uid`);

--
-- Indizes für die Tabelle `joomla_jomres_tax_rules`
--
ALTER TABLE `joomla_jomres_tax_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_languages`
--
ALTER TABLE `joomla_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indizes für die Tabelle `joomla_menu`
--
ALTER TABLE `joomla_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `joomla_menu_types`
--
ALTER TABLE `joomla_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indizes für die Tabelle `joomla_messages`
--
ALTER TABLE `joomla_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indizes für die Tabelle `joomla_messages_cfg`
--
ALTER TABLE `joomla_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indizes für die Tabelle `joomla_modules`
--
ALTER TABLE `joomla_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `joomla_modules_menu`
--
ALTER TABLE `joomla_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indizes für die Tabelle `joomla_newsfeeds`
--
ALTER TABLE `joomla_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indizes für die Tabelle `joomla_overrider`
--
ALTER TABLE `joomla_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_postinstall_messages`
--
ALTER TABLE `joomla_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indizes für die Tabelle `joomla_redirect_links`
--
ALTER TABLE `joomla_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indizes für die Tabelle `joomla_rem_buying_request`
--
ALTER TABLE `joomla_rem_buying_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `joomla_rem_categories`
--
ALTER TABLE `joomla_rem_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iditem` (`iditem`),
  ADD KEY `idcat` (`idcat`);

--
-- Indizes für die Tabelle `joomla_rem_const`
--
ALTER TABLE `joomla_rem_const`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `const` (`const`);

--
-- Indizes für die Tabelle `joomla_rem_const_languages`
--
ALTER TABLE `joomla_rem_const_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_constid` (`fk_constid`,`fk_languagesid`),
  ADD KEY `fk_languagesid` (`fk_languagesid`);

--
-- Indizes für die Tabelle `joomla_rem_feature`
--
ALTER TABLE `joomla_rem_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_rem_feature_houses`
--
ALTER TABLE `joomla_rem_feature_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_featureid` (`fk_featureid`),
  ADD KEY `fk_houseid` (`fk_houseid`,`fk_featureid`);

--
-- Indizes für die Tabelle `joomla_rem_houses`
--
ALTER TABLE `joomla_rem_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indizes für die Tabelle `joomla_rem_languages`
--
ALTER TABLE `joomla_rem_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lang_code` (`lang_code`);

--
-- Indizes für die Tabelle `joomla_rem_main_categories`
--
ALTER TABLE `joomla_rem_main_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indizes für die Tabelle `joomla_rem_orders`
--
ALTER TABLE `joomla_rem_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_rem_orders_details`
--
ALTER TABLE `joomla_rem_orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_rem_photos`
--
ALTER TABLE `joomla_rem_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `joomla_rem_rent`
--
ALTER TABLE `joomla_rem_rent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `joomla_rem_rent_request`
--
ALTER TABLE `joomla_rem_rent_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `joomla_rem_rent_sal`
--
ALTER TABLE `joomla_rem_rent_sal`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_rem_review`
--
ALTER TABLE `joomla_rem_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`fk_userid`),
  ADD KEY `fk_houseid` (`fk_houseid`);

--
-- Indizes für die Tabelle `joomla_rem_track_source`
--
ALTER TABLE `joomla_rem_track_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_house_id` (`fk_house_id`);

--
-- Indizes für die Tabelle `joomla_rem_users_wishlist`
--
ALTER TABLE `joomla_rem_users_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_houseid` (`fk_houseid`),
  ADD KEY `fk_userid` (`fk_userid`);

--
-- Indizes für die Tabelle `joomla_rem_version`
--
ALTER TABLE `joomla_rem_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `joomla_rem_video_source`
--
ALTER TABLE `joomla_rem_video_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_house_id` (`fk_house_id`);

--
-- Indizes für die Tabelle `joomla_schemas`
--
ALTER TABLE `joomla_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indizes für die Tabelle `joomla_session`
--
ALTER TABLE `joomla_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indizes für die Tabelle `joomla_tags`
--
ALTER TABLE `joomla_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indizes für die Tabelle `joomla_templateck_fonts`
--
ALTER TABLE `joomla_templateck_fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_templateck_templates`
--
ALTER TABLE `joomla_templateck_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `joomla_template_styles`
--
ALTER TABLE `joomla_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indizes für die Tabelle `joomla_ucm_base`
--
ALTER TABLE `joomla_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indizes für die Tabelle `joomla_ucm_content`
--
ALTER TABLE `joomla_ucm_content`
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
-- Indizes für die Tabelle `joomla_ucm_history`
--
ALTER TABLE `joomla_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indizes für die Tabelle `joomla_updates`
--
ALTER TABLE `joomla_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indizes für die Tabelle `joomla_update_sites`
--
ALTER TABLE `joomla_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indizes für die Tabelle `joomla_update_sites_extensions`
--
ALTER TABLE `joomla_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indizes für die Tabelle `joomla_usergroups`
--
ALTER TABLE `joomla_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indizes für die Tabelle `joomla_users`
--
ALTER TABLE `joomla_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indizes für die Tabelle `joomla_user_keys`
--
ALTER TABLE `joomla_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `joomla_user_notes`
--
ALTER TABLE `joomla_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indizes für die Tabelle `joomla_user_profiles`
--
ALTER TABLE `joomla_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indizes für die Tabelle `joomla_user_usergroup_map`
--
ALTER TABLE `joomla_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indizes für die Tabelle `joomla_viewlevels`
--
ALTER TABLE `joomla_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `joomla_assets`
--
ALTER TABLE `joomla_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT für Tabelle `joomla_banners`
--
ALTER TABLE `joomla_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_banner_clients`
--
ALTER TABLE `joomla_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_categories`
--
ALTER TABLE `joomla_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `joomla_contact_details`
--
ALTER TABLE `joomla_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_content`
--
ALTER TABLE `joomla_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `joomla_content_types`
--
ALTER TABLE `joomla_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `joomla_extensions`
--
ALTER TABLE `joomla_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10060;
--
-- AUTO_INCREMENT für Tabelle `joomla_finder_filters`
--
ALTER TABLE `joomla_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_finder_links`
--
ALTER TABLE `joomla_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_finder_taxonomy`
--
ALTER TABLE `joomla_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_finder_terms`
--
ALTER TABLE `joomla_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_finder_types`
--
ALTER TABLE `joomla_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_cron`
--
ALTER TABLE `joomla_jomcomp_cron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_cronlog`
--
ALTER TABLE `joomla_jomcomp_cronlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_extrasmodels_models`
--
ALTER TABLE `joomla_jomcomp_extrasmodels_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_mufavourites`
--
ALTER TABLE `joomla_jomcomp_mufavourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_notes`
--
ALTER TABLE `joomla_jomcomp_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_tarifftypes`
--
ALTER TABLE `joomla_jomcomp_tarifftypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomcomp_tarifftype_rate_xref`
--
ALTER TABLE `joomla_jomcomp_tarifftype_rate_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_bookings`
--
ALTER TABLE `joomla_jomresportal_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_c_rates`
--
ALTER TABLE `joomla_jomresportal_c_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_invoices`
--
ALTER TABLE `joomla_jomresportal_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_invoices_transactions`
--
ALTER TABLE `joomla_jomresportal_invoices_transactions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_lineitems`
--
ALTER TABLE `joomla_jomresportal_lineitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_properties_crates_xref`
--
ALTER TABLE `joomla_jomresportal_properties_crates_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_sms_clickatell_messages`
--
ALTER TABLE `joomla_jomresportal_sms_clickatell_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_subscriptions`
--
ALTER TABLE `joomla_jomresportal_subscriptions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_subscriptions_packages`
--
ALTER TABLE `joomla_jomresportal_subscriptions_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_taxrates`
--
ALTER TABLE `joomla_jomresportal_taxrates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomresportal_users`
--
ALTER TABLE `joomla_jomresportal_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_access_control`
--
ALTER TABLE `joomla_jomres_access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_audit`
--
ALTER TABLE `joomla_jomres_audit`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_audit_archive`
--
ALTER TABLE `joomla_jomres_audit_archive`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_booking_data_archive`
--
ALTER TABLE `joomla_jomres_booking_data_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_contracts`
--
ALTER TABLE `joomla_jomres_contracts`
  MODIFY `contract_uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_countries`
--
ALTER TABLE `joomla_jomres_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_coupons`
--
ALTER TABLE `joomla_jomres_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_customertypes`
--
ALTER TABLE `joomla_jomres_customertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_custom_fields`
--
ALTER TABLE `joomla_jomres_custom_fields`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_custom_templates`
--
ALTER TABLE `joomla_jomres_custom_templates`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_custom_text`
--
ALTER TABLE `joomla_jomres_custom_text`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_extras`
--
ALTER TABLE `joomla_jomres_extras`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_extraservices`
--
ALTER TABLE `joomla_jomres_extraservices`
  MODIFY `extraservice_uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_guests`
--
ALTER TABLE `joomla_jomres_guests`
  MODIFY `guests_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_guest_profile`
--
ALTER TABLE `joomla_jomres_guest_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_hotel_features`
--
ALTER TABLE `joomla_jomres_hotel_features`
  MODIFY `hotel_features_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_hotel_features_categories`
--
ALTER TABLE `joomla_jomres_hotel_features_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_invoice_payment_ref`
--
ALTER TABLE `joomla_jomres_invoice_payment_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_managers`
--
ALTER TABLE `joomla_jomres_managers`
  MODIFY `manager_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_managers_propertys_xref`
--
ALTER TABLE `joomla_jomres_managers_propertys_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_partners`
--
ALTER TABLE `joomla_jomres_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_partners_discounts`
--
ALTER TABLE `joomla_jomres_partners_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_partner_bookings`
--
ALTER TABLE `joomla_jomres_partner_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_pluginsettings`
--
ALTER TABLE `joomla_jomres_pluginsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_propertys`
--
ALTER TABLE `joomla_jomres_propertys`
  MODIFY `propertys_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_ptypes`
--
ALTER TABLE `joomla_jomres_ptypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_rates`
--
ALTER TABLE `joomla_jomres_rates`
  MODIFY `rates_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_regions`
--
ALTER TABLE `joomla_jomres_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3929;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_reviews_ratings`
--
ALTER TABLE `joomla_jomres_reviews_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_reviews_ratings_confirm`
--
ALTER TABLE `joomla_jomres_reviews_ratings_confirm`
  MODIFY `confirm_rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_reviews_ratings_detail`
--
ALTER TABLE `joomla_jomres_reviews_ratings_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_reviews_reports`
--
ALTER TABLE `joomla_jomres_reviews_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_rooms`
--
ALTER TABLE `joomla_jomres_rooms`
  MODIFY `room_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_roomtypes_propertytypes_xref`
--
ALTER TABLE `joomla_jomres_roomtypes_propertytypes_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_room_bookings`
--
ALTER TABLE `joomla_jomres_room_bookings`
  MODIFY `room_bookings_uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_room_classes`
--
ALTER TABLE `joomla_jomres_room_classes`
  MODIFY `room_classes_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_room_features`
--
ALTER TABLE `joomla_jomres_room_features`
  MODIFY `room_features_uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_settings`
--
ALTER TABLE `joomla_jomres_settings`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT für Tabelle `joomla_jomres_tax_rules`
--
ALTER TABLE `joomla_jomres_tax_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_languages`
--
ALTER TABLE `joomla_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_menu`
--
ALTER TABLE `joomla_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT für Tabelle `joomla_menu_types`
--
ALTER TABLE `joomla_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `joomla_messages`
--
ALTER TABLE `joomla_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_modules`
--
ALTER TABLE `joomla_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT für Tabelle `joomla_newsfeeds`
--
ALTER TABLE `joomla_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_overrider`
--
ALTER TABLE `joomla_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT für Tabelle `joomla_postinstall_messages`
--
ALTER TABLE `joomla_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `joomla_redirect_links`
--
ALTER TABLE `joomla_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_buying_request`
--
ALTER TABLE `joomla_rem_buying_request`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_categories`
--
ALTER TABLE `joomla_rem_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_const`
--
ALTER TABLE `joomla_rem_const`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=976;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_const_languages`
--
ALTER TABLE `joomla_rem_const_languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=976;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_feature`
--
ALTER TABLE `joomla_rem_feature`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_feature_houses`
--
ALTER TABLE `joomla_rem_feature_houses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_houses`
--
ALTER TABLE `joomla_rem_houses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_languages`
--
ALTER TABLE `joomla_rem_languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_main_categories`
--
ALTER TABLE `joomla_rem_main_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_orders`
--
ALTER TABLE `joomla_rem_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_orders_details`
--
ALTER TABLE `joomla_rem_orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_photos`
--
ALTER TABLE `joomla_rem_photos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_rent`
--
ALTER TABLE `joomla_rem_rent`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_rent_request`
--
ALTER TABLE `joomla_rem_rent_request`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_rent_sal`
--
ALTER TABLE `joomla_rem_rent_sal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_review`
--
ALTER TABLE `joomla_rem_review`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_track_source`
--
ALTER TABLE `joomla_rem_track_source`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_users_wishlist`
--
ALTER TABLE `joomla_rem_users_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_version`
--
ALTER TABLE `joomla_rem_version`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `joomla_rem_video_source`
--
ALTER TABLE `joomla_rem_video_source`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_tags`
--
ALTER TABLE `joomla_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `joomla_templateck_fonts`
--
ALTER TABLE `joomla_templateck_fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_templateck_templates`
--
ALTER TABLE `joomla_templateck_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `joomla_template_styles`
--
ALTER TABLE `joomla_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT für Tabelle `joomla_ucm_content`
--
ALTER TABLE `joomla_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_ucm_history`
--
ALTER TABLE `joomla_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `joomla_updates`
--
ALTER TABLE `joomla_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT für Tabelle `joomla_update_sites`
--
ALTER TABLE `joomla_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `joomla_usergroups`
--
ALTER TABLE `joomla_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `joomla_users`
--
ALTER TABLE `joomla_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;
--
-- AUTO_INCREMENT für Tabelle `joomla_user_keys`
--
ALTER TABLE `joomla_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_user_notes`
--
ALTER TABLE `joomla_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `joomla_viewlevels`
--
ALTER TABLE `joomla_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
