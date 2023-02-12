-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 22-Set-2015 às 14:48
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'https://wordpress.org/', '', '2015-08-13 13:38:30', '2015-08-13 13:38:30', 'Olá, Isto é um comentário.\nPara excluir um comentário, faça o login e veja os comentários de posts. Lá você terá a opção de editá-los ou excluí-los.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=269 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Fãs do Rosa de Saron', 'yes'),
(4, 'blogdescription', 'Dedicado aos fãs Rosarianos!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nada@nada.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:"ml-slider/ml-slider.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'sparkling', 'yes'),
(42, 'stylesheet', 'sparkling', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '2', 'yes'),
(85, 'page_on_front', '4', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'pt_BR', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:6:"Busca:";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";}s:13:"home-widget-1";a:0:{}s:13:"home-widget-2";a:0:{}s:13:"home-widget-3";a:0:{}s:15:"footer-widget-1";a:0:{}s:15:"footer-widget-2";a:0:{}s:15:"footer-widget-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1442948580;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442972312;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1443015526;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1443015738;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_random_seed', '2d7fc124edaf2111d718ac7561852165', 'yes'),
(112, 'can_compress_scripts', '1', 'yes'),
(117, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(125, 'theme_mods_twentyfifteen', 'a:5:{s:16:"background_color";s:6:"919191";s:17:"sidebar_textcolor";s:7:"#ddbb85";s:23:"header_background_color";s:7:"#444444";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1440078650;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(129, 'rewrite_rules', 'a:72:{s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:30:"index.php/(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(140, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(141, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(151, '_site_transient_timeout_wporg_theme_feature_list', '1440089244', 'yes'),
(152, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(154, 'ml-slider_children', 'a:0:{}', 'yes'),
(157, 'widget_metaslider_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(158, 'widget_restimpodefault', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'widget_sparkling-cats', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_sparkling_popular_posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'widget_sparkling-social', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(165, 'current_theme', 'Sparkling', 'yes'),
(166, 'theme_mods_sparkling', 'a:9:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:12:"footer-links";i:2;}s:16:"header_textcolor";s:6:"dadada";s:16:"background_color";s:6:"ddd2af";s:16:"background_image";s:49:"http://localhost/wp-content/uploads/2015/08/5.jpg";s:17:"background_repeat";s:8:"repeat-x";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";}', 'yes'),
(167, 'theme_switched', '', 'yes'),
(168, 'theme_switched_via_customizer', '', 'yes'),
(195, 'category_children', 'a:0:{}', 'yes'),
(212, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:64:"http://downloads.wordpress.org/release/pt_BR/wordpress-4.3.1.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:64:"http://downloads.wordpress.org/release/pt_BR/wordpress-4.3.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1442930204;s:15:"version_checked";s:5:"4.2.3";s:12:"translations";a:0:{}}', 'yes'),
(237, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1442930208;s:7:"checked";a:5:{s:8:"restimpo";s:5:"1.4.5";s:9:"sparkling";s:5:"1.9.3";s:13:"twentyfifteen";s:3:"1.2";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:4:{s:8:"restimpo";a:4:{s:5:"theme";s:8:"restimpo";s:11:"new_version";s:5:"1.4.6";s:3:"url";s:38:"https://wordpress.org/themes/restimpo/";s:7:"package";s:55:"http://downloads.wordpress.org/theme/restimpo.1.4.6.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.3.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.1.5.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentythirteen.1.6.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(238, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1442930317;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"3.1.1";s:9:"hello.php";s:3:"1.6";s:23:"ml-slider/ml-slider.php";s:7:"3.3.4.1";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"38583";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:5:"3.3.5";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/ml-slider.3.3.5.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(239, '_site_transient_timeout_browser_101c078b0b5647eb5e3a4fe7093c83da', '1443535016', 'yes'),
(240, '_site_transient_browser_101c078b0b5647eb5e3a4fe7093c83da', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"33.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(241, '_transient_timeout_plugin_slugs', '1443016718', 'no'),
(242, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:23:"ml-slider/ml-slider.php";}', 'no'),
(243, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1442973420', 'no'),
(244, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não há  transportes HTTP disponíveis para completar o pedido solicitado.</p></div><div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não há  transportes HTTP disponíveis para completar o pedido solicitado.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(263, '_site_transient_timeout_theme_roots', '1442934436', 'yes'),
(264, '_site_transient_theme_roots', 'a:5:{s:8:"restimpo";s:7:"/themes";s:9:"sparkling";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(268, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=165 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1442932959:1'),
(6, 9, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(7, 10, '_wp_attached_file', '2015/08/img2.jpg'),
(8, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:16:"2015/08/img2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img2-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img2-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"img2-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(9, 11, '_wp_attached_file', '2015/08/img3.jpg'),
(10, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:16:"2015/08/img3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img3-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img3-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"img3-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(11, 12, '_wp_attached_file', '2015/08/img4.jpg'),
(12, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:16:"2015/08/img4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img4-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img4-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"img4-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(13, 12, 'ml-slider_type', 'image'),
(14, 11, 'ml-slider_type', 'image'),
(15, 10, 'ml-slider_type', 'image'),
(16, 12, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:53:"C:wampwww/wp-content/uploads/2015/08/img4-700x300.jpg";s:4:"file";s:16:"img4-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(17, 11, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:53:"C:wampwww/wp-content/uploads/2015/08/img3-700x300.jpg";s:4:"file";s:16:"img3-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(18, 10, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:53:"C:wampwww/wp-content/uploads/2015/08/img2-700x300.jpg";s:4:"file";s:16:"img2-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(19, 12, 'ml-slider_crop_position', 'center-center'),
(20, 12, '_wp_attachment_image_alt', ''),
(21, 11, 'ml-slider_crop_position', 'center-center'),
(22, 11, '_wp_attachment_image_alt', ''),
(23, 10, 'ml-slider_crop_position', 'center-center'),
(24, 10, '_wp_attachment_image_alt', ''),
(27, 15, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"700";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"7000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:4:"4000";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:4:"true";s:9:"smartCrop";s:5:"false";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(28, 16, '_wp_attached_file', '2015/08/images2.jpg'),
(29, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:311;s:6:"height";i:162;s:4:"file";s:19:"2015/08/images2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"images2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"images2-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(30, 17, '_wp_attached_file', '2015/08/4-e1442932544858.jpg'),
(31, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:166;s:4:"file";s:28:"2015/08/4-e1442932544858.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(32, 18, '_wp_attached_file', '2015/08/5.jpg'),
(33, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:168;s:4:"file";s:13:"2015/08/5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(34, 19, '_wp_attached_file', '2015/08/6.jpg'),
(35, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:227;s:6:"height";i:222;s:4:"file";s:13:"2015/08/6.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(36, 20, '_wp_attached_file', '2015/08/images.jpg'),
(37, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:304;s:6:"height";i:166;s:4:"file";s:18:"2015/08/images.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"images-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"images-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(38, 16, 'ml-slider_type', 'image'),
(39, 17, 'ml-slider_type', 'image'),
(40, 18, 'ml-slider_type', 'image'),
(41, 19, 'ml-slider_type', 'image'),
(42, 20, 'ml-slider_type', 'image'),
(43, 16, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-700x300";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images2-700x300.jpg";s:4:"file";s:19:"images2-700x300.jpg";s:5:"width";i:311;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-311x133";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images2-311x133.jpg";s:4:"file";s:19:"images2-311x133.jpg";s:5:"width";i:311;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:16:"resized-1000x400";a:5:{s:4:"path";s:57:"C:wampwww/wp-content/uploads/2015/08/images2-1000x400.jpg";s:4:"file";s:20:"images2-1000x400.jpg";s:5:"width";i:311;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x300";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images2-400x300.jpg";s:4:"file";s:19:"images2-400x300.jpg";s:5:"width";i:311;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x700";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images2-700x700.jpg";s:4:"file";s:19:"images2-700x700.jpg";s:5:"width";i:311;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}}'),
(44, 17, '_wp_attachment_backup_sizes', 'a:7:{s:15:"resized-700x300";a:5:{s:4:"path";s:65:"C:wampwww/wp-content/uploads/2015/08/4-e1442932544858-700x300.jpg";s:4:"file";s:28:"4-e1442932544858-700x300.jpg";s:5:"width";i:230;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-264x113";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/4-264x113.jpg";s:4:"file";s:13:"4-264x113.jpg";s:5:"width";i:264;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:16:"resized-1000x400";a:5:{s:4:"path";s:51:"C:wampwww/wp-content/uploads/2015/08/4-1000x400.jpg";s:4:"file";s:14:"4-1000x400.jpg";s:5:"width";i:264;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x300";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/4-400x300.jpg";s:4:"file";s:13:"4-400x300.jpg";s:5:"width";i:264;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}s:9:"full-orig";a:3:{s:5:"width";i:264;s:6:"height";i:191;s:4:"file";s:5:"4.jpg";}s:15:"resized-150x150";a:5:{s:4:"path";s:65:"C:wampwww/wp-content/uploads/2015/08/4-e1442932544858-150x150.jpg";s:4:"file";s:28:"4-e1442932544858-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x700";a:5:{s:4:"path";s:65:"C:wampwww/wp-content/uploads/2015/08/4-e1442932544858-700x700.jpg";s:4:"file";s:28:"4-e1442932544858-700x700.jpg";s:5:"width";i:230;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}}'),
(45, 18, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-700x300";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/5-700x300.jpg";s:4:"file";s:13:"5-700x300.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-300x128";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/5-300x128.jpg";s:4:"file";s:13:"5-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:16:"resized-1000x400";a:5:{s:4:"path";s:51:"C:wampwww/wp-content/uploads/2015/08/5-1000x400.jpg";s:4:"file";s:14:"5-1000x400.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x300";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/5-400x300.jpg";s:4:"file";s:13:"5-400x300.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x700";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/5-700x700.jpg";s:4:"file";s:13:"5-700x700.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}}'),
(46, 19, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-700x300";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/6-700x300.jpg";s:4:"file";s:13:"6-700x300.jpg";s:5:"width";i:227;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:14:"resized-227x97";a:5:{s:4:"path";s:49:"C:wampwww/wp-content/uploads/2015/08/6-227x97.jpg";s:4:"file";s:12:"6-227x97.jpg";s:5:"width";i:227;s:6:"height";i:97;s:9:"mime-type";s:10:"image/jpeg";}s:16:"resized-1000x400";a:5:{s:4:"path";s:51:"C:wampwww/wp-content/uploads/2015/08/6-1000x400.jpg";s:4:"file";s:14:"6-1000x400.jpg";s:5:"width";i:227;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x300";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/6-400x300.jpg";s:4:"file";s:13:"6-400x300.jpg";s:5:"width";i:227;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x700";a:5:{s:4:"path";s:50:"C:wampwww/wp-content/uploads/2015/08/6-700x700.jpg";s:4:"file";s:13:"6-700x700.jpg";s:5:"width";i:227;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}}'),
(47, 20, '_wp_attachment_backup_sizes', 'a:5:{s:15:"resized-700x300";a:5:{s:4:"path";s:55:"C:wampwww/wp-content/uploads/2015/08/images-700x300.jpg";s:4:"file";s:18:"images-700x300.jpg";s:5:"width";i:304;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-304x130";a:5:{s:4:"path";s:55:"C:wampwww/wp-content/uploads/2015/08/images-304x130.jpg";s:4:"file";s:18:"images-304x130.jpg";s:5:"width";i:304;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:16:"resized-1000x400";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images-1000x400.jpg";s:4:"file";s:19:"images-1000x400.jpg";s:5:"width";i:304;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x300";a:5:{s:4:"path";s:55:"C:wampwww/wp-content/uploads/2015/08/images-400x300.jpg";s:4:"file";s:18:"images-400x300.jpg";s:5:"width";i:304;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x700";a:5:{s:4:"path";s:55:"C:wampwww/wp-content/uploads/2015/08/images-700x700.jpg";s:4:"file";s:18:"images-700x700.jpg";s:5:"width";i:304;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}}'),
(48, 16, 'ml-slider_crop_position', 'center-center'),
(49, 16, '_wp_attachment_image_alt', ''),
(50, 17, 'ml-slider_crop_position', 'center-center'),
(51, 17, '_wp_attachment_image_alt', ''),
(52, 18, 'ml-slider_crop_position', 'center-center'),
(53, 18, '_wp_attachment_image_alt', ''),
(54, 19, 'ml-slider_crop_position', 'center-center'),
(55, 19, '_wp_attachment_image_alt', ''),
(56, 20, 'ml-slider_crop_position', 'center-center'),
(57, 20, '_wp_attachment_image_alt', ''),
(58, 22, '_menu_item_type', 'post_type'),
(59, 22, '_menu_item_menu_item_parent', '0'),
(60, 22, '_menu_item_object_id', '4'),
(61, 22, '_menu_item_object', 'page'),
(62, 22, '_menu_item_target', ''),
(63, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 22, '_menu_item_xfn', ''),
(65, 22, '_menu_item_url', ''),
(67, 23, '_menu_item_type', 'post_type'),
(68, 23, '_menu_item_menu_item_parent', '0'),
(69, 23, '_menu_item_object_id', '2'),
(70, 23, '_menu_item_object', 'page'),
(71, 23, '_menu_item_target', ''),
(72, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 23, '_menu_item_xfn', ''),
(74, 23, '_menu_item_url', ''),
(76, 24, '_menu_item_type', 'custom'),
(77, 24, '_menu_item_menu_item_parent', '0'),
(78, 24, '_menu_item_object_id', '24'),
(79, 24, '_menu_item_object', 'custom'),
(80, 24, '_menu_item_target', ''),
(81, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 24, '_menu_item_xfn', ''),
(83, 24, '_menu_item_url', 'http://www.rosadesaron.com.br'),
(89, 27, '_wp_attached_file', '2015/08/cropped-5.jpg'),
(90, 27, '_wp_attachment_context', 'custom-header'),
(91, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:954;s:6:"height";i:1300;s:4:"file";s:21:"2015/08/cropped-5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cropped-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cropped-5-220x300.jpg";s:5:"width";i:220;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"cropped-5-751x1024.jpg";s:5:"width";i:751;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"cropped-5-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(92, 27, '_wp_attachment_custom_header_last_used_sparkling', '1440078570'),
(93, 27, '_wp_attachment_is_custom_header', 'sparkling'),
(94, 29, '_wp_attached_file', '2015/08/images1.jpg'),
(95, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:317;s:6:"height";i:159;s:4:"file";s:19:"2015/08/images1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"images1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"images1-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:17:"images1-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(96, 29, '_wp_attachment_is_custom_background', 'sparkling'),
(97, 30, '_wp_attached_file', '2015/08/Índice.jpg'),
(98, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:19:"2015/08/Índice.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Índice-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:17:"Índice-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(99, 30, '_wp_attachment_is_custom_background', 'sparkling'),
(100, 18, '_wp_attachment_is_custom_background', 'sparkling'),
(101, 29, 'ml-slider_type', 'image'),
(102, 29, '_wp_attachment_backup_sizes', 'a:2:{s:15:"resized-700x300";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images1-700x300.jpg";s:4:"file";s:19:"images1-700x300.jpg";s:5:"width";i:317;s:6:"height";i:159;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-700x700";a:5:{s:4:"path";s:56:"C:wampwww/wp-content/uploads/2015/08/images1-700x700.jpg";s:4:"file";s:19:"images1-700x700.jpg";s:5:"width";i:317;s:6:"height";i:159;s:9:"mime-type";s:10:"image/jpeg";}}'),
(103, 29, 'ml-slider_crop_position', 'center-center'),
(104, 29, '_wp_attachment_image_alt', ''),
(105, 2, '_edit_lock', '1442930261:1'),
(106, 2, '_edit_last', '1'),
(107, 4, '_wp_page_template', 'default'),
(108, 34, '_edit_last', '1'),
(109, 34, '_edit_lock', '1440681940:1'),
(110, 35, '_wp_attached_file', '2015/08/news21.jpg'),
(111, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:570;s:4:"file";s:18:"2015/08/news21.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"news21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"news21-211x300.jpg";s:5:"width";i:211;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparkling-featured";a:4:{s:4:"file";s:18:"news21-400x410.jpg";s:5:"width";i:400;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:16:"news21-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(114, 39, '_edit_last', '1'),
(115, 39, '_edit_lock', '1440682555:1'),
(116, 40, '_wp_attached_file', '2015/08/FOTO-29-600x400-e1442932311808.jpg'),
(117, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:42:"2015/08/FOTO-29-600x400-e1442932311808.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"FOTO-29-600x400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"FOTO-29-600x400-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:25:"FOTO-29-600x400-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(120, 42, '_wp_attached_file', '2015/08/facebook_icon.png'),
(121, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:56;s:6:"height";i:53;s:4:"file";s:25:"2015/08/facebook_icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(122, 44, '_wp_attached_file', '2015/08/facebook_icon1.png'),
(123, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:54;s:6:"height";i:53;s:4:"file";s:26:"2015/08/facebook_icon1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(124, 50, '_edit_last', '1'),
(125, 50, '_edit_lock', '1442932487:1'),
(126, 50, '_wp_page_template', 'default'),
(127, 51, '_menu_item_type', 'post_type'),
(128, 51, '_menu_item_menu_item_parent', '0'),
(129, 51, '_menu_item_object_id', '50'),
(130, 51, '_menu_item_object', 'page'),
(131, 51, '_menu_item_target', ''),
(132, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 51, '_menu_item_xfn', ''),
(134, 51, '_menu_item_url', ''),
(135, 53, '_edit_last', '1'),
(136, 53, '_edit_lock', '1442933085:1'),
(137, 53, '_oembed_c8fb4e7db23ba94f501b6989a9962627', '{{unknown}}'),
(138, 54, '_wp_attached_file', '2015/09/elite.jpg'),
(139, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:160;s:6:"height";i:160;s:4:"file";s:17:"2015/09/elite.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"elite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:15:"elite-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(140, 55, '_wp_attached_file', '2015/09/LogoNR.jpg'),
(141, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:160;s:6:"height";i:160;s:4:"file";s:18:"2015/09/LogoNR.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"LogoNR-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:16:"LogoNR-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(142, 56, '_wp_attached_file', '2015/09/RDSE.jpg'),
(143, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:180;s:4:"file";s:16:"2015/09/RDSE.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"RDSE-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:14:"RDSE-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(144, 53, '_thumbnail_id', '40'),
(145, 53, '_wp_page_template', 'default'),
(146, 57, '_menu_item_type', 'post_type'),
(147, 57, '_menu_item_menu_item_parent', '0'),
(148, 57, '_menu_item_object_id', '53'),
(149, 57, '_menu_item_object', 'page'),
(150, 57, '_menu_item_target', ''),
(151, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 57, '_menu_item_xfn', ''),
(153, 57, '_menu_item_url', ''),
(154, 59, '_wp_attached_file', '2015/08/8.jpg'),
(155, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:53;s:6:"height";i:53;s:4:"file";s:13:"2015/08/8.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(156, 60, '_wp_attached_file', '2015/08/images3.jpg'),
(157, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:19:"2015/08/images3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"images3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:17:"images3-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(158, 61, '_wp_attached_file', '2015/08/61.jpg'),
(159, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:14:"2015/08/61.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"61-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tab-small";a:4:{s:4:"file";s:12:"61-60x60.jpg";s:5:"width";i:60;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(160, 40, '_wp_attachment_backup_sizes', 'a:2:{s:9:"full-orig";a:3:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:19:"FOTO-29-600x400.jpg";}s:18:"full-1442932311808";a:3:{s:5:"width";i:400;s:6:"height";i:267;s:4:"file";s:34:"FOTO-29-600x400-e1442932261285.jpg";}}'),
(161, 50, '_thumbnail_id', '17'),
(162, 1, '_wp_trash_meta_status', 'publish'),
(163, 1, '_wp_trash_meta_time', '1442933008'),
(164, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=72 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-13 13:38:30', '2015-08-13 13:38:30', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo', '', '', '2015-09-22 14:43:28', '2015-09-22 14:43:28', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2015-08-13 13:38:30', '2015-08-13 13:38:30', 'Estaremos postando0 notícias e eventos da caminhada dos Rosarianos e também da nossa Banda cristã.', 'Blog', '', 'publish', 'open', 'open', '', 'pagina-exemplo', '', '', '2015-09-22 13:59:32', '2015-09-22 13:59:32', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-08-13 13:44:43', '2015-08-13 13:44:43', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<a href="www.facebook.com\\bandarosadesaron"><img class=" wp-image-44  alignright" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="50" height="49" /></a> <a href="https://instagram.com/bandarosadesaron/"><img class="  alignright wp-image-59" src="http://localhost/wp-content/uploads/2015/08/8.jpg" alt="8" width="50" height="50" /></a> <a href="https://twitter.com/rosadesaron"><img class="  alignright wp-image-60" src="http://localhost/wp-content/uploads/2015/08/images3.jpg" alt="images" width="46" height="46" /></a><a href="https://www.youtube.com/user/BandaRosaDeSaron"><img class="  alignright wp-image-61" src="http://localhost/wp-content/uploads/2015/08/61.jpg" alt="6" width="45" height="45" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home', '', 'publish', 'open', 'open', '', 'home-page', '', '', '2015-09-22 14:41:36', '2015-09-22 14:41:36', '', 0, 'http://localhost/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-08-13 13:44:43', '2015-08-13 13:44:43', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron".', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-13 13:44:43', '2015-08-13 13:44:43', '', 4, 'http://localhost/index.php/2015/08/13/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2015-09-22 14:20:14', '2015-09-22 14:20:14', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\n\n<hr />\n\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\n\n- E.C\n\n<a href="www.facebook.com\\bandarosadesaron"><img class=" wp-image-44 size-full alignright" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="54" height="53" /></a> <a href="http://localhost/wp-content/uploads/2015/08/8.jpg"><img class="  wp-image-59 alignright" src="http://localhost/wp-content/uploads/2015/08/8.jpg" alt="8" width="50" height="50" /></a> <a href="https://twitter.com/rosadesaron"><img class="  alignright wp-image-60" src="http://localhost/wp-content/uploads/2015/08/images3.jpg" alt="images" width="46" height="46" /></a>\n\n&nbsp;\n<h3>                                                     "Rosa de Saron !"</h3>\n[metaslider id=15]\n\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-autosave-v1', '', '', '2015-09-22 14:20:14', '2015-09-22 14:20:14', '', 4, 'http://localhost/index.php/2015/08/17/4-autosave-v1/', 0, 'revision', '', 0),
(7, 1, '2015-08-17 12:28:04', '2015-08-17 12:28:04', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-17 12:28:04', '2015-08-17 12:28:04', '', 4, 'http://localhost/index.php/2015/08/17/4-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-08-17 12:30:22', '2015-08-17 12:30:22', '', 'Slide - Principal', '', 'trash', 'open', 'open', '', 'nova-apresentacao', '', '', '2015-08-20 13:28:14', '2015-08-20 13:28:14', '', 0, 'http://localhost/?post_type=ml-slider&#038;p=9', 0, 'ml-slider', '', 0),
(10, 1, '2015-08-17 12:30:59', '2015-08-17 12:30:59', '', 'img2', '', 'inherit', 'open', 'open', '', 'img2', '', '', '2015-08-17 12:31:39', '2015-08-17 12:31:39', '', 0, 'http://localhost/wp-content/uploads/2015/08/img2.jpg', 2, 'attachment', 'image/jpeg', 0),
(11, 1, '2015-08-17 12:31:02', '2015-08-17 12:31:02', '', 'img3', '', 'inherit', 'open', 'open', '', 'img3', '', '', '2015-08-17 12:31:39', '2015-08-17 12:31:39', '', 0, 'http://localhost/wp-content/uploads/2015/08/img3.jpg', 1, 'attachment', 'image/jpeg', 0),
(12, 1, '2015-08-17 12:31:05', '2015-08-17 12:31:05', '', 'img4', '', 'inherit', 'open', 'open', '', 'img4', '', '', '2015-08-17 12:31:39', '2015-08-17 12:31:39', '', 0, 'http://localhost/wp-content/uploads/2015/08/img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2015-08-17 12:32:00', '2015-08-17 12:32:00', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n&nbsp;\r\n\r\n[metaslider id=9]', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-17 12:32:00', '2015-08-17 12:32:00', '', 4, 'http://localhost/index.php/2015/08/17/4-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-08-20 13:28:18', '2015-08-20 13:28:18', '', 'Rosa', '', 'publish', 'open', 'open', '', 'nova-apresentacao-2', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/?post_type=ml-slider&#038;p=15', 0, 'ml-slider', '', 0),
(16, 1, '2015-08-20 13:29:59', '2015-08-20 13:29:59', '', 'images2', 'Agora e o Eterno', 'inherit', 'open', 'open', '', 'images2', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/wp-content/uploads/2015/08/images2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-08-20 13:30:01', '2015-08-20 13:30:01', '', '4', 'em Desenho u-u', 'inherit', 'open', 'open', '', '4', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/wp-content/uploads/2015/08/4.jpg', 1, 'attachment', 'image/jpeg', 0),
(18, 1, '2015-08-20 13:30:02', '2015-08-20 13:30:02', '', '5', 'Agora e o Eterno', 'inherit', 'open', 'open', '', '5', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/wp-content/uploads/2015/08/5.jpg', 2, 'attachment', 'image/jpeg', 0),
(19, 1, '2015-08-20 13:30:03', '2015-08-20 13:30:03', '', '6', 'Logo e símbolo da banda.', 'inherit', 'open', 'open', '', '6', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/wp-content/uploads/2015/08/6.jpg', 3, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-08-20 13:30:04', '2015-08-20 13:30:04', '', 'images', 'integrantes', 'inherit', 'open', 'open', '', 'images', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/wp-content/uploads/2015/08/images.jpg', 4, 'attachment', 'image/jpeg', 0),
(21, 1, '2015-08-20 13:33:00', '2015-08-20 13:33:00', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n&nbsp;\r\n\r\n[metaslider id=15]', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-20 13:33:00', '2015-08-20 13:33:00', '', 4, 'http://localhost/index.php/2015/08/20/4-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-08-20 13:38:08', '2015-08-20 13:38:08', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2015-09-22 14:15:49', '2015-09-22 14:15:49', '', 0, 'http://localhost/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2015-08-20 13:38:08', '2015-08-20 13:38:08', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2015-09-22 14:15:49', '2015-09-22 14:15:49', '', 0, 'http://localhost/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2015-08-20 13:38:08', '2015-08-20 13:38:08', '', 'Site Oficial', '', 'publish', 'open', 'open', '', 'site-oficial', '', '', '2015-09-22 14:15:49', '2015-09-22 14:15:49', '', 0, 'http://localhost/?p=24', 5, 'nav_menu_item', '', 0),
(27, 1, '2015-08-20 13:49:25', '2015-08-20 13:49:25', 'http://localhost/wp-content/uploads/2015/08/cropped-5.jpg', 'cropped-5.jpg', '', 'inherit', 'open', 'open', '', 'cropped-5-jpg', '', '', '2015-08-20 13:49:25', '2015-08-20 13:49:25', '', 0, 'http://localhost/wp-content/uploads/2015/08/cropped-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2015-08-24 12:15:14', '2015-08-24 12:15:14', '', 'images', 'Os feras u-u', 'inherit', 'open', 'open', '', 'images-2', '', '', '2015-09-22 14:47:16', '2015-09-22 14:47:16', '', 0, 'http://localhost/wp-content/uploads/2015/08/images1.jpg', 5, 'attachment', 'image/jpeg', 0),
(30, 1, '2015-08-24 12:16:56', '2015-08-24 12:16:56', '', 'Índice', '', 'inherit', 'open', 'open', '', 'indice', '', '', '2015-08-24 12:16:56', '2015-08-24 12:16:56', '', 0, 'http://localhost/wp-content/uploads/2015/08/Índice.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2015-08-24 12:35:27', '2015-08-24 12:35:27', 'Estaremos postando0 notícias e eventos da caminhada dos Rosarianos e também da n', 'Posts', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2015-08-24 12:35:27', '2015-08-24 12:35:27', '', 2, 'http://localhost/index.php/2015/08/24/2-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2015-08-24 12:35:48', '2015-08-24 12:35:48', 'Estaremos postando0 notícias e eventos da caminhada dos Rosarianos e também da nossa Banda cristã.', 'Posts', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-08-24 12:35:48', '2015-08-24 12:35:48', '', 2, 'http://localhost/index.php/2015/08/24/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-08-24 12:38:05', '2015-08-24 12:38:05', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n&nbsp;\r\n<h3>                                                    "Rosa de Saron !"</h3>\r\n[metaslider id=15]', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-24 12:38:05', '2015-08-24 12:38:05', '', 4, 'http://localhost/index.php/2015/08/24/4-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-08-27 13:27:04', '2015-08-27 13:27:04', 'Rosa News é uma publicação 100% produzida pelos fãs do Rosa de Saron, sem interferência ou participação direta da banda, contando apenas com a divulgação da mesma.\r\n\r\n<center>"Veja a Revista!"\r\n\r\n\r\n<a href="http://issuu.com/revistarosanews/docs/revista_rosa_news_edicao_22_especia"> <img class="alignnone size-medium wp-image-35" src="http://localhost/wp-content/uploads/2015/08/news21-211x300.jpg" alt="news21" width="211" height="300" /></a></center>', 'EDIÇÃO Nº22 DA REVISTA ROSA NEWS ESTÁ NO AR!', '', 'publish', 'open', 'open', '', 'edicao-no22-da-revista-rosa-news-esta-no-ar', '', '', '2015-08-27 13:27:04', '2015-08-27 13:27:04', '', 0, 'http://localhost/?p=34', 0, 'post', '', 0),
(35, 1, '2015-08-27 13:24:36', '2015-08-27 13:24:36', '', 'news21', '', 'inherit', 'open', 'open', '', 'news21', '', '', '2015-08-27 13:24:36', '2015-08-27 13:24:36', '', 34, 'http://localhost/wp-content/uploads/2015/08/news21.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2015-08-27 13:27:04', '2015-08-27 13:27:04', 'Rosa News é uma publicação 100% produzida pelos fãs do Rosa de Saron, sem interferência ou participação direta da banda, contando apenas com a divulgação da mesma.\r\n\r\n<center>"Veja a Revista!"\r\n\r\n\r\n<a href="http://issuu.com/revistarosanews/docs/revista_rosa_news_edicao_22_especia"> <img class="alignnone size-medium wp-image-35" src="http://localhost/wp-content/uploads/2015/08/news21-211x300.jpg" alt="news21" width="211" height="300" /></a></center>', 'EDIÇÃO Nº22 DA REVISTA ROSA NEWS ESTÁ NO AR!', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-08-27 13:27:04', '2015-08-27 13:27:04', '', 34, 'http://localhost/index.php/2015/08/27/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-08-27 13:28:33', '2015-08-27 13:28:33', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n&nbsp;\r\n<h3>                                                    "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-27 13:28:33', '2015-08-27 13:28:33', '', 4, 'http://localhost/index.php/2015/08/27/4-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-08-27 13:32:14', '2015-08-27 13:32:14', 'Estaremos postando0 notícias e eventos da caminhada dos Rosarianos e também da nossa Banda cristã.', 'Notícias', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-08-27 13:32:14', '2015-08-27 13:32:14', '', 2, 'http://localhost/index.php/2015/08/27/2-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-08-27 13:36:14', '2015-08-27 13:36:14', '<center><a href="http://localhost/wp-content/uploads/2015/08/FOTO-29-600x400.jpg"><img class="alignnone size-medium wp-image-40" src="http://localhost/wp-content/uploads/2015/08/FOTO-29-600x400-300x200.jpg" alt="FOTO-29-600x400" width="300" height="200" /></a>\r\n</center>\r\n<b>Precisamos de algumas horas para conseguir olhar com calma para o que foi o dia 8 de julho em nossas vidas. Abrimos o coração e deixamos o sentimento aflorar. E em meio a tantas palavras bonitas e formalidades, a única coisa que conseguimos fazer é agradecer.</b>\r\n\r\n<b>Agradecer a Deus por nos ter dado a missão de levar a sua palavra às pessoas em formas de canções inundadas de fé, esperança e amor. Agradecer por Ele ter nos permitido viver esse dia junto aos nossos fãs, amigos e familiares.</b>\r\n\r\n<b>A gravação do DVD Rosa de Saron Acústico e Ao Vivo 2/3 foi um marco em nossa carreira. Não que os outros trabalhos tenham sido menos especiais, mas esse… Ah, esse teve um gostinho de desafio, um olhar mais aguçado e a vontade de presentear quem nos acompanha há mais de 27 anos com uma produção diferente, mais intimista, mais humana, mais perto de Deus.</b>\r\n\r\n<b>Obrigado a todos que lotaram as duas sessões! Foi lindo de ver a animação do público cantando e nos apoiando com paciência durante as pausas necessárias em um processo de gravação como esse. Vocês, nossos fãs, nos motivam sempre a querer ser melhores e ir mais longe.</b>\r\n\r\n<b>Obrigado ao Padre Fábio de Melo, Lucas Lima e Jonathan Corrêa pelas participações mais que especiais! Vocês trouxeram alma e nos ajudaram a deixar o DVD ainda mais bonito!</b>\r\n\r\n<b>Obrigado a toda equipe Rosa de Saron e Rede Século 21 por trabalharem incansavelmente com amor e paciência para fazer esse dia acontecer. Vocês foram incríveis!</b>\r\n\r\n<b>Vamos em frente, com fé em Deus e a certeza de que trabalho continua. </b>\r\n\r\n<b>Estamos ansiosos para ver esse DVD pronto e lançar para vocês! Se tudo der certo, até novembro vamos ver juntos o resultado desse dia incrível!</b>\r\n\r\n<b>Obrigado, mais uma vez!</b>\r\n\r\n<b>Ainda estamos juntos aqui!</b>', 'Mensagem da Banda para seus Fâns sobre o DVD Acústico 2/3', '', 'publish', 'open', 'open', '', 'mensagem-da-banda-para-seus-fans-sobre-o-dvd-acustico-23', '', '', '2015-08-27 13:36:14', '2015-08-27 13:36:14', '', 0, 'http://localhost/?p=39', 0, 'post', '', 0),
(40, 1, '2015-08-27 13:35:31', '2015-08-27 13:35:31', '', 'FOTO-29-600x400', '', 'inherit', 'open', 'open', '', 'foto-29-600x400', '', '', '2015-08-27 13:35:31', '2015-08-27 13:35:31', '', 39, 'http://localhost/wp-content/uploads/2015/08/FOTO-29-600x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2015-08-27 13:36:14', '2015-08-27 13:36:14', '<center><a href="http://localhost/wp-content/uploads/2015/08/FOTO-29-600x400.jpg"><img class="alignnone size-medium wp-image-40" src="http://localhost/wp-content/uploads/2015/08/FOTO-29-600x400-300x200.jpg" alt="FOTO-29-600x400" width="300" height="200" /></a>\r\n</center>\r\n<b>Precisamos de algumas horas para conseguir olhar com calma para o que foi o dia 8 de julho em nossas vidas. Abrimos o coração e deixamos o sentimento aflorar. E em meio a tantas palavras bonitas e formalidades, a única coisa que conseguimos fazer é agradecer.</b>\r\n\r\n<b>Agradecer a Deus por nos ter dado a missão de levar a sua palavra às pessoas em formas de canções inundadas de fé, esperança e amor. Agradecer por Ele ter nos permitido viver esse dia junto aos nossos fãs, amigos e familiares.</b>\r\n\r\n<b>A gravação do DVD Rosa de Saron Acústico e Ao Vivo 2/3 foi um marco em nossa carreira. Não que os outros trabalhos tenham sido menos especiais, mas esse… Ah, esse teve um gostinho de desafio, um olhar mais aguçado e a vontade de presentear quem nos acompanha há mais de 27 anos com uma produção diferente, mais intimista, mais humana, mais perto de Deus.</b>\r\n\r\n<b>Obrigado a todos que lotaram as duas sessões! Foi lindo de ver a animação do público cantando e nos apoiando com paciência durante as pausas necessárias em um processo de gravação como esse. Vocês, nossos fãs, nos motivam sempre a querer ser melhores e ir mais longe.</b>\r\n\r\n<b>Obrigado ao Padre Fábio de Melo, Lucas Lima e Jonathan Corrêa pelas participações mais que especiais! Vocês trouxeram alma e nos ajudaram a deixar o DVD ainda mais bonito!</b>\r\n\r\n<b>Obrigado a toda equipe Rosa de Saron e Rede Século 21 por trabalharem incansavelmente com amor e paciência para fazer esse dia acontecer. Vocês foram incríveis!</b>\r\n\r\n<b>Vamos em frente, com fé em Deus e a certeza de que trabalho continua. </b>\r\n\r\n<b>Estamos ansiosos para ver esse DVD pronto e lançar para vocês! Se tudo der certo, até novembro vamos ver juntos o resultado desse dia incrível!</b>\r\n\r\n<b>Obrigado, mais uma vez!</b>\r\n\r\n<b>Ainda estamos juntos aqui!</b>', 'Mensagem da Banda para seus Fâns sobre o DVD Acústico 2/3', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-08-27 13:36:14', '2015-08-27 13:36:14', '', 39, 'http://localhost/index.php/2015/08/27/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-08-27 13:49:53', '2015-08-27 13:49:53', '', 'facebook_icon', '', 'inherit', 'open', 'open', '', 'facebook_icon', '', '', '2015-08-27 13:49:53', '2015-08-27 13:49:53', '', 4, 'http://localhost/wp-content/uploads/2015/08/facebook_icon.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2015-08-27 13:50:04', '2015-08-27 13:50:04', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C<a href="http://localhost/wp-content/uploads/2015/08/facebook_icon.png"><img src="http://localhost/wp-content/uploads/2015/08/facebook_icon.png" alt="facebook_icon" width="56" height="53" class="alignnone size-full wp-image-42" /></a>\r\n<a class="replace facebook-rs" href="http://www.facebook.com/bandarosadesaron" target="_blank">Facebook</a>\r\n<h3>                                                    "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-27 13:50:04', '2015-08-27 13:50:04', '', 4, 'http://localhost/index.php/2015/08/27/4-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-08-29 03:53:13', '2015-08-29 03:53:13', '', 'facebook_icon', '', 'inherit', 'open', 'open', '', 'facebook_icon-2', '', '', '2015-08-29 03:53:13', '2015-08-29 03:53:13', '', 4, 'http://localhost/wp-content/uploads/2015/08/facebook_icon1.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2015-08-29 03:56:19', '2015-08-29 03:56:19', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<a href="www.facebook.com\\bandarosadesaron"><img class="alignright wp-image-44 size-full" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="54" height="53" /></a>\r\n<h3></h3>\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-29 03:56:19', '2015-08-29 03:56:19', '', 4, 'http://localhost/index.php/2015/08/29/4-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-08-29 03:57:42', '2015-08-29 03:57:42', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<p><a href="www.facebook.com\\bandarosadesaron"><img class="alignright wp-image-44 size-full" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="54" height="53" /></a>\r\n</p><br>\r\n\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-29 03:57:42', '2015-08-29 03:57:42', '', 4, 'http://localhost/index.php/2015/08/29/4-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-08-29 03:58:24', '2015-08-29 03:58:24', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<a href="www.facebook.com\\bandarosadesaron"><img class="alignright wp-image-44 size-full" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="54" height="53" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-08-29 03:58:24', '2015-08-29 03:58:24', '', 4, 'http://localhost/index.php/2015/08/29/4-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-09-22 13:56:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-22 13:56:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=48', 0, 'post', '', 0),
(49, 1, '2015-09-22 13:59:32', '2015-09-22 13:59:32', 'Estaremos postando0 notícias e eventos da caminhada dos Rosarianos e também da nossa Banda cristã.', 'Blog', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-09-22 13:59:32', '2015-09-22 13:59:32', '', 2, 'http://localhost/index.php/2015/09/22/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-09-22 14:05:11', '2015-09-22 14:05:11', '<h2 style="text-align: center;"></h2>\r\n<h2 style="text-align: justify;"></h2>\r\n<h2 style="text-align: center;"><span style="color: #000000;">Nossa Equipe!</span></h2>\r\n<p style="text-align: center;">Somos todos fãs da banda "Rosa de Saron"</p>\r\n<p style="text-align: center;">e dediquemos esse site para sintonizar e tentar</p>\r\n<p style="text-align: center;">aproximar os fãs da banda em um só lugar</p>\r\n<p style="text-align: center;">aqui mesmo no nosso site.</p>\r\n\r\n<h5 style="text-align: justify;"></h5>\r\n<h5 style="text-align: justify;"><span style="text-decoration: underline; color: #000000;">Obrigado</span></h5>', 'Forum', '', 'publish', 'open', 'open', '', 'forum', '', '', '2015-09-22 14:35:52', '2015-09-22 14:35:52', '', 0, 'http://localhost/?page_id=50', 0, 'page', '', 0),
(51, 1, '2015-09-22 14:05:11', '2015-09-22 14:05:11', ' ', '', '', 'publish', 'open', 'open', '', '51', '', '', '2015-09-22 14:15:49', '2015-09-22 14:15:49', '', 0, 'http://localhost/index.php/2015/09/22/51/', 4, 'nav_menu_item', '', 0),
(52, 1, '2015-09-22 14:05:11', '2015-09-22 14:05:11', '<h2 style="text-align: center;"></h2>\r\n<h2 style="text-align: justify;"></h2>\r\n<h2 style="text-align: center;"><span style="color: #000000;">Nossa Equipe!</span></h2>\r\n<p style="text-align: center;">Somos todos fãs da banda "Rosa de Saron"</p>\r\n<p style="text-align: center;">e dediquemos esse site para sintonizar e tentar</p>\r\n<p style="text-align: center;">aproximar os fãs da banda em um só lugar</p>\r\n<p style="text-align: center;">aqui mesmo no nosso site.</p>\r\n\r\n<h5 style="text-align: justify;"></h5>\r\n<h5 style="text-align: justify;"><span style="text-decoration: underline; color: #000000;">Obrigado</span></h5>', 'Forum', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-09-22 14:05:11', '2015-09-22 14:05:11', '', 50, 'http://localhost/index.php/2015/09/22/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-09-22 14:14:51', '2015-09-22 14:14:51', '&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   </span><strong>"Nação Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>\r\n&nbsp;', 'Fã Clubes', '', 'publish', 'open', 'open', '', 'fa-clubes', '', '', '2015-09-22 14:33:50', '2015-09-22 14:33:50', '', 0, 'http://localhost/?page_id=53', 0, 'page', '', 0),
(54, 1, '2015-09-22 14:08:39', '2015-09-22 14:08:39', '', 'elite', '', 'inherit', 'open', 'open', '', 'elite', '', '', '2015-09-22 14:08:39', '2015-09-22 14:08:39', '', 53, 'http://localhost/wp-content/uploads/2015/09/elite.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2015-09-22 14:08:41', '2015-09-22 14:08:41', '', 'LogoNR', '', 'inherit', 'open', 'open', '', 'logonr', '', '', '2015-09-22 14:08:41', '2015-09-22 14:08:41', '', 53, 'http://localhost/wp-content/uploads/2015/09/LogoNR.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2015-09-22 14:08:42', '2015-09-22 14:08:42', '', 'RDSE', '', 'inherit', 'open', 'open', '', 'rdse', '', '', '2015-09-22 14:08:42', '2015-09-22 14:08:42', '', 53, 'http://localhost/wp-content/uploads/2015/09/RDSE.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2015-09-22 14:14:51', '2015-09-22 14:14:51', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2015-09-22 14:15:49', '2015-09-22 14:15:49', '', 0, 'http://localhost/index.php/2015/09/22/57/', 3, 'nav_menu_item', '', 0),
(58, 1, '2015-09-22 14:14:51', '2015-09-22 14:14:51', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   "<strong>Nação Rosariana"</strong></span>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n\r\nFã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle\r\n\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n<h5>  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a></h5>\r\n<h5>  Email: eliterosariana.adm@gmail.com</h5>\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:14:51', '2015-09-22 14:14:51', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-09-22 14:17:45', '2015-09-22 14:17:45', '', '8', '', 'inherit', 'open', 'open', '', '8', '', '', '2015-09-22 14:17:45', '2015-09-22 14:17:45', '', 4, 'http://localhost/wp-content/uploads/2015/08/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2015-09-22 14:17:46', '2015-09-22 14:17:46', '', 'images', '', 'inherit', 'open', 'open', '', 'images-3', '', '', '2015-09-22 14:17:46', '2015-09-22 14:17:46', '', 4, 'http://localhost/wp-content/uploads/2015/08/images3.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2015-09-22 14:20:42', '2015-09-22 14:20:42', '', '6', '', 'inherit', 'open', 'open', '', '6-2', '', '', '2015-09-22 14:20:42', '2015-09-22 14:20:42', '', 4, 'http://localhost/wp-content/uploads/2015/08/61.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2015-09-22 14:21:59', '2015-09-22 14:21:59', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<a href="www.facebook.com\\bandarosadesaron"><img class=" wp-image-44  alignright" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="50" height="49" /></a> <a href="https://instagram.com/bandarosadesaron/"><img class="  alignright wp-image-59" src="http://localhost/wp-content/uploads/2015/08/8.jpg" alt="8" width="50" height="50" /></a> <a href="https://twitter.com/rosadesaron"><img class="  alignright wp-image-60" src="http://localhost/wp-content/uploads/2015/08/images3.jpg" alt="images" width="46" height="46" /></a><a href="https://www.youtube.com/user/BandaRosaDeSaron"><img class="  alignright wp-image-61" src="http://localhost/wp-content/uploads/2015/08/61.jpg" alt="6" width="45" height="45" /></a>\r\n\r\n&nbsp;\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-09-22 14:21:59', '2015-09-22 14:21:59', '', 4, 'http://localhost/index.php/2015/09/22/4-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-09-22 14:22:21', '2015-09-22 14:22:21', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<a href="www.facebook.com\\bandarosadesaron"><img class=" wp-image-44  alignright" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="50" height="49" /></a> <a href="https://instagram.com/bandarosadesaron/"><img class="  alignright wp-image-59" src="http://localhost/wp-content/uploads/2015/08/8.jpg" alt="8" width="50" height="50" /></a> <a href="https://twitter.com/rosadesaron"><img class="  alignright wp-image-60" src="http://localhost/wp-content/uploads/2015/08/images3.jpg" alt="images" width="46" height="46" /></a><a href="https://www.youtube.com/user/BandaRosaDeSaron"><img class="  alignright wp-image-61" src="http://localhost/wp-content/uploads/2015/08/61.jpg" alt="6" width="45" height="45" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home Page', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-09-22 14:22:21', '2015-09-22 14:22:21', '', 4, 'http://localhost/index.php/2015/09/22/4-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-09-22 14:24:46', '2015-09-22 14:24:46', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   "<strong>Nação Rosariana"</strong></span>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:24:46', '2015-09-22 14:24:46', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-09-22 14:25:19', '2015-09-22 14:25:19', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   "<strong>Nação Rosariana"</strong></span>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:25:19', '2015-09-22 14:25:19', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-09-22 14:25:45', '2015-09-22 14:25:45', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   "<strong>Nação Rosariana"</strong></span>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>\r\n&nbsp;', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:25:45', '2015-09-22 14:25:45', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-09-22 14:32:42', '2015-09-22 14:32:42', '&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   "<strong>Nação Rosariana"</strong></span></h4>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>\r\n&nbsp;', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:32:42', '2015-09-22 14:32:42', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2015-09-22 14:33:17', '2015-09-22 14:33:17', '&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   </span><strong>"Nação Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>\r\n&nbsp;', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:33:17', '2015-09-22 14:33:17', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2015-09-22 14:33:50', '2015-09-22 14:33:50', '&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg"><img class=" size-full wp-image-55 alignleft" src="http://localhost/wp-content/uploads/2015/09/LogoNR.jpg" alt="LogoNR" width="160" height="160" /></a><span style="color: #000000;">   </span><strong>"Nação Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n   Website: <a href="http://www.facebook.com/nacaorosariana" target="_blank">http://www.facebook.com/nacaorosariana</a>\r\n\r\nEmail: nacao@rosadesaron.com.br\r\n<div class="fa-clube-desc">\r\n<h5>   Fã Clube Nacional\r\nPresidente: Karina</h5>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/RDSE.jpg"><img class=" size-full wp-image-56 alignleft" src="http://localhost/wp-content/uploads/2015/09/RDSE.jpg" alt="RDSE" width="180" height="180" /></a><strong>  "Família Rosa de Saron Eternamente"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FRDSRIOPRETO" target="_blank">https://www.facebook.com/FRDSRIOPRETO</a>\r\n\r\nEmail: rosa_de_saronbrasil@hotmail.com\r\n<h5>Fã Clube de São José do Rio Preto-SP\r\nPresidente: Michelle</h5>\r\n</div>\r\n<h5></h5>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h4><a href="http://localhost/wp-content/uploads/2015/09/elite.jpg"><img class=" size-full wp-image-54 alignleft" src="http://localhost/wp-content/uploads/2015/09/elite.jpg" alt="elite" width="160" height="160" /></a><strong>  "Elite Rosariana"</strong></h4>\r\n<div class="fa-clube-info">\r\n\r\n  Website: <a href="https://www.facebook.com/FcOficialEliteRosariana?fref=ts" target="_blank">https://www.facebook.com/FcOficialEliteRosariana?fref=ts</a>\r\n\r\nEmail: eliterosariana.adm@gmail.com\r\n<div class="fa-clube-desc">\r\n<h5>  Fã Clube do Rio de Janeiro-RJ\r\nPresidente: Thaís Marques</h5>\r\n</div>\r\n</div>\r\n&nbsp;', 'Fã Clubes', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-09-22 14:33:50', '2015-09-22 14:33:50', '', 53, 'http://localhost/index.php/2015/09/22/53-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2015-09-22 14:41:36', '2015-09-22 14:41:36', '<h1 style="text-align: center;"><span style="text-decoration: underline;"><span style="color: #ff9900; text-decoration: underline;">Sejam Bem Vindo!</span></span></h1>\r\n\r\n<hr />\r\n\r\nPágina para os Fãs Rosarianos que gostam e curte a banda "Rosa de Saron" do seu trabalho musical que tem 27 anos, de estrada por todo o Brasil, foram eles que começaram com gênero Rock Cristão, que vem fazendo sucesso na "América Latina", sim, são conhecidos na América onde já chegaram fazer show nos países da língua espanhola na América.\r\n\r\n- E.C\r\n\r\n<a href="www.facebook.com\\bandarosadesaron"><img class=" wp-image-44  alignright" src="http://localhost/wp-content/uploads/2015/08/facebook_icon1.png" alt="facebook_icon" width="50" height="49" /></a> <a href="https://instagram.com/bandarosadesaron/"><img class="  alignright wp-image-59" src="http://localhost/wp-content/uploads/2015/08/8.jpg" alt="8" width="50" height="50" /></a> <a href="https://twitter.com/rosadesaron"><img class="  alignright wp-image-60" src="http://localhost/wp-content/uploads/2015/08/images3.jpg" alt="images" width="46" height="46" /></a><a href="https://www.youtube.com/user/BandaRosaDeSaron"><img class="  alignright wp-image-61" src="http://localhost/wp-content/uploads/2015/08/61.jpg" alt="6" width="45" height="45" /></a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h3>                                                     "Rosa de Saron !"</h3>\r\n[metaslider id=15]\r\n\r\nObs: Galeria.', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-09-22 14:41:36', '2015-09-22 14:41:36', '', 4, 'http://localhost/index.php/2015/09/22/4-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2015-09-22 14:43:28', '2015-09-22 14:43:28', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-09-22 14:43:28', '2015-09-22 14:43:28', '', 1, 'http://localhost/index.php/2015/09/22/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu', 'menu', 0),
(3, '9', '9', 0),
(4, '15', '15', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 3, 0),
(11, 3, 0),
(12, 3, 0),
(16, 4, 0),
(17, 4, 0),
(18, 4, 0),
(19, 4, 0),
(20, 4, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(29, 4, 0),
(34, 1, 0),
(39, 1, 0),
(51, 2, 0),
(57, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'ml-slider', '', 0, 0),
(4, 4, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=26 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Coro'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(16, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse&mfold=o&urlbutton=custom'),
(17, 1, 'wp_user-settings-time', '1440820700'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Coro', '$P$B9EPTPm9z9.ksBaEeFHlAC8vwDQ8q.0', 'coro', 'nada@nada.com', '', '2015-08-13 13:38:30', '', 0, 'Coro');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
