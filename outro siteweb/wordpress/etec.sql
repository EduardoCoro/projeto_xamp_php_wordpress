-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 03-Nov-2015 às 13:25
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `etec`
--
CREATE DATABASE IF NOT EXISTS `etec` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etec`;

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
(1, 1, 'Sr. WordPress', '', 'https://wordpress.org/', '', '2015-10-26 11:07:40', '2015-10-26 11:07:40', 'Olá, Isto é um comentário.\nPara excluir um comentário, faça o login e veja os comentários de posts. Lá você terá a opção de editá-los ou excluí-los.', 0, '1', '', '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=165 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Etec Dans', 'yes'),
(4, 'blogdescription', '&quot;Escola de Qualidade&quot;', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ahahaet@hoaga.com', 'yes'),
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
(33, 'active_plugins', 'a:2:{i:0;s:23:"ml-slider/ml-slider.php";i:1;s:44:"social-media-widgets/social-media-widget.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:4:{i:0;s:45:"C:\\wamp\\www/wp-content/themes/cubby/style.css";i:1;s:50:"C:\\wamp\\www/wp-content/plugins/akismet/akismet.php";i:2;s:75:"C:\\wamp\\www/wp-content/plugins/social-media-widgets/social-media-widget.php";i:3;s:0:"";}', 'no'),
(41, 'template', 'cubby', 'yes'),
(42, 'stylesheet', 'cubby', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
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
(79, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '11', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'WPLANG', 'pt_BR', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:13:{s:19:"wp_inactive_widgets";a:0:{}s:13:"First_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";a:1:{i:0;s:11:"calendar-13";}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";N;s:9:"sidebar-6";N;s:9:"sidebar-7";N;s:9:"sidebar-8";a:0:{}s:9:"sidebar-9";N;s:10:"sidebar-10";a:0:{}s:10:"sidebar-11";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'cron', 'a:7:{i:1446563844;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"3e5b9d87ec9acb6b0f0f88eb6019ab77";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:61;}}}}i:1446564009;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"3cba02404b28511a5438290dad5d447d";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:62;}}}}i:1446577560;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1446592062;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1446635316;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1446636319;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_random_seed', 'c6a61050fcc06107caa8e2b45320af79', 'yes'),
(110, 'can_compress_scripts', '1', 'yes'),
(116, '_site_transient_timeout_wporg_theme_feature_list', '1445868532', 'yes'),
(117, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1445858058;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(119, 'current_theme', 'Cubby', 'yes'),
(120, 'theme_mods_cubby', 'a:9:{i:0;b:0;s:16:"header_textcolor";s:6:"000000";s:16:"background_color";s:6:"ddaaaa";s:12:"header_image";s:13:"remove-header";s:16:"background_image";s:0:"";s:17:"background_repeat";s:9:"no-repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:11:"footer_menu";i:2;}}', 'yes'),
(121, 'theme_switched', '', 'yes'),
(122, 'cubby_optionsframework', 'a:1:{s:2:"id";s:5:"cubby";}', 'yes'),
(123, 'cubby', 'a:51:{s:16:"top_contact_info";s:40:"Contact +01 2345 6789 | info@example.com";s:16:"menu_fonts_color";a:4:{s:4:"size";s:4:"16px";s:4:"face";s:5:"Arial";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:21:"breadcrumb_background";a:5:{s:5:"color";s:0:"";s:5:"image";s:0:"";s:6:"repeat";s:6:"repeat";s:8:"position";s:10:"top center";s:10:"attachment";s:6:"scroll";}s:11:"header_code";s:17:"body{margin:0px;}";s:18:"social_google_plus";s:0:"";s:10:"social_rss";s:32:"http://localhost/index.php/feed/";s:18:"content_typography";a:4:{s:4:"size";s:4:"15px";s:4:"face";s:7:"inherit";s:5:"style";s:6:"normal";s:5:"color";s:7:"#666666";}s:16:"enable_home_page";i:1;s:19:"cubby_slide_image_1";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-banner-1.jpg";s:19:"cubby_slide_title_1";s:7:"Title 1";s:18:"cubby_slide_text_1";s:172:"Hic modo aliquid, ut infra ius textus amet tincidunt imago sedere involvent opportune. Usque essent omnia spatiosa satis sedeat. Yeah ... Sic. Nunquam tanta esse bonum est.";s:19:"cubby_slide_image_2";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-banner-2.jpg";s:19:"cubby_slide_title_2";s:7:"Title 2";s:18:"cubby_slide_text_2";s:172:"Hic modo aliquid, ut infra ius textus amet tincidunt imago sedere involvent opportune. Usque essent omnia spatiosa satis sedeat. Yeah ... Sic. Nunquam tanta esse bonum est.";s:15:"slogan_author_1";s:5:"Aimee";s:16:"slogan_content_1";s:134:"Respondit, quod bene propositum / industria adaptat ad perfectum in omnibus mobilibus, sicut et ratio, decernere, tabulis et desktops.";s:15:"slogan_author_2";s:6:"Reagan";s:16:"slogan_content_2";s:98:"Pone, tincidunt ope simplicis tantum trahendo et distillans eget. Quis non coding artes exiguntur.";s:15:"slogan_author_3";s:6:"Ishara";s:16:"slogan_content_3";s:116:"Curabitur a full width respondit, et labor lapsus est, cum effectus vident, et interim retinet, vel tuum, SEO ipsum.";s:15:"slogan_author_4";s:6:"Jessie";s:16:"slogan_content_4";s:99:"Magna cum re, sicut hodierna navigatores Incendia Chrome Safari, Penitus Rimor VIII Opera, X et IX.";s:15:"slogan_author_5";s:4:"Lucy";s:16:"slogan_content_5";s:74:"In C + et creare pulchra et fortis Shortcodes amet elit volutpat faucibus.";s:23:"content_slideshow_title";s:8:"Features";s:28:"cubby_features_slide_image_1";s:67:"http://localhost/wp-content/themes/cubby/images/cubby-features1.png";s:28:"cubby_features_slide_title_1";s:7:"Title 1";s:28:"cubby_features_slide_image_2";s:67:"http://localhost/wp-content/themes/cubby/images/cubby-features2.png";s:28:"cubby_features_slide_title_2";s:7:"Title 2";s:17:"latest_news_title";s:11:"Latest News";s:11:"latest_news";s:0:"";s:14:"static_content";s:0:"";s:13:"home_purchase";s:40:"Like it ? <a href="#">Purchase Now</a> !";s:15:"portfolio_title";s:12:"Our Products";s:11:"portfolio_1";s:0:"";s:11:"portfolio_2";s:0:"";s:11:"portfolio_3";s:0:"";s:11:"portfolio_4";s:0:"";s:21:"bottom_carousel_title";s:12:"Our Partners";s:28:"cubby_carousel_slide_image_1";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_title_1";s:7:"Title 1";s:28:"cubby_carousel_slide_image_2";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_title_2";s:7:"Title 2";s:28:"cubby_carousel_slide_image_3";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_image_4";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_image_5";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_image_6";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_image_7";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:28:"cubby_carousel_slide_image_8";s:66:"http://localhost/wp-content/themes/cubby/images/cubby-partners.png";s:24:"footer_widget_background";a:5:{s:5:"color";s:7:"#CCCCCC";s:5:"image";s:0:"";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:17:"cubby_footer_text";s:66:"Cubby WordPress theme, Copyright &copy; 2014. All Rights Reserved.";}', 'yes'),
(125, 'widget_cubby_contact', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(126, 'widget_popularpost-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(127, 'widget_recentpost-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(128, 'widget_calendar', 'a:14:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:0:{}i:4;a:0:{}i:5;a:0:{}i:6;a:0:{}i:8;a:0:{}i:9;a:0:{}i:10;a:0:{}i:11;a:0:{}i:12;a:0:{}i:13;a:1:{s:5:"title";s:6:"Agenda";}i:15;a:0:{}i:16;a:0:{}}', 'yes'),
(129, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(130, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(131, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'site_icon', '9', 'yes'),
(136, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(137, 'rewrite_rules', 'a:72:{s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:30:"index.php/(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(146, '_site_transient_timeout_browser_101c078b0b5647eb5e3a4fe7093c83da', '1447158945', 'yes'),
(147, '_site_transient_browser_101c078b0b5647eb5e3a4fe7093c83da', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"33.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(148, '_transient_timeout_plugin_slugs', '1446643297', 'no'),
(149, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:23:"ml-slider/ml-slider.php";i:3;s:44:"social-media-widgets/social-media-widget.php";}', 'no'),
(150, '_transient_timeout_dash_01e18dead815ce736e3b9cccfbd773a5', '1446597350', 'no'),
(151, '_transient_dash_01e18dead815ce736e3b9cccfbd773a5', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não há  transportes HTTP disponíveis para completar o pedido solicitado.</p></div><div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não há  transportes HTTP disponíveis para completar o pedido solicitado.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(153, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1446565377', 'yes'),
(154, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5512";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3452";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3416";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2910";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2653";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2110";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2090";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1945";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1909";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1892";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1880";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1831";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1741";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1548";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1461";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1421";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1252";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1251";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1236";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1204";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1098";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1036";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"999";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"955";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"913";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"890";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"858";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"847";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"835";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"835";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"821";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"781";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"745";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"716";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"710";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"709";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"703";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"701";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"687";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"684";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"683";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"665";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"664";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"657";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"628";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"617";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"613";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"609";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"607";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"606";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"585";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"585";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"572";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"568";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"560";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"560";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"557";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"557";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"548";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"546";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"533";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"514";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"509";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"506";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"502";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"498";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"494";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"486";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"485";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"480";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"462";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"459";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"450";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"437";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"434";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"433";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"419";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"415";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"411";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"394";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"394";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"393";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"393";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"392";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"382";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"381";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"380";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"379";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"378";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"372";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"370";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"370";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"367";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"365";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"364";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"362";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"361";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"360";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"360";}}', 'yes'),
(155, '_site_transient_timeout_theme_roots', '1446557950', 'yes'),
(156, '_site_transient_theme_roots', 'a:4:{s:5:"cubby";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(160, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1446556815;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"3.1.3";s:9:"hello.php";s:3:"1.6";s:23:"ml-slider/ml-slider.php";s:5:"3.3.5";s:44:"social-media-widgets/social-media-widget.php";s:3:"1.0";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.5";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.5.zip";s:14:"upgrade_notice";s:78:"Version 3.1.5 contains security fixes and is highly recommended for all users.";s:10:"autoupdate";b:1;}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"38583";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:5:"3.3.5";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/ml-slider.3.3.5.zip";}s:44:"social-media-widgets/social-media-widget.php";O:8:"stdClass":6:{s:2:"id";s:5:"64315";s:4:"slug";s:20:"social-media-widgets";s:6:"plugin";s:44:"social-media-widgets/social-media-widget.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:51:"https://wordpress.org/plugins/social-media-widgets/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/social-media-widgets.1.0.zip";}}}', 'yes'),
(161, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:64:"http://downloads.wordpress.org/release/pt_BR/wordpress-4.3.1.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:64:"http://downloads.wordpress.org/release/pt_BR/wordpress-4.3.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1446556817;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-16 14:15:14";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pt_BR.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(162, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1446556818;s:7:"checked";a:4:{s:5:"cubby";s:5:"1.1.1";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentyfourteen";s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"1.5";s:7:"updated";s:19:"2015-07-27 22:21:24";s:7:"package";s:77:"http://downloads.wordpress.org/translation/theme/twentyfourteen/1.5/pt_BR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentythirteen";s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"1.6";s:7:"updated";s:19:"2015-07-27 22:21:22";s:7:"package";s:77:"http://downloads.wordpress.org/translation/theme/twentythirteen/1.6/pt_BR.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(163, 'widget_metaslider_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'widget_social_media_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=207 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 6, '_wp_attached_file', '2015/10/Índice1.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:296;s:6:"height";i:120;s:4:"file";s:20:"2015/10/Índice1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Índice1-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-news";a:4:{s:4:"file";s:19:"Índice1-110x70.jpg";s:5:"width";i:110;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:13:"home-carousel";a:4:{s:4:"file";s:20:"Índice1-205x120.jpg";s:5:"width";i:205;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:13:"sidebar-posts";a:4:{s:4:"file";s:18:"Índice1-60x45.jpg";s:5:"width";i:60;s:6:"height";i:45;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(8, 7, '_wp_attached_file', '2015/10/es.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:374;s:6:"height";i:135;s:4:"file";s:14:"2015/10/es.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"es-150x135.jpg";s:5:"width";i:150;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"es-300x108.jpg";s:5:"width";i:300;s:6:"height";i:108;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-news";a:4:{s:4:"file";s:13:"es-110x70.jpg";s:5:"width";i:110;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:13:"home-carousel";a:4:{s:4:"file";s:14:"es-205x135.jpg";s:5:"width";i:205;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:13:"sidebar-posts";a:4:{s:4:"file";s:12:"es-60x45.jpg";s:5:"width";i:60;s:6:"height";i:45;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(10, 7, '_wp_attachment_custom_header_last_used_cubby', '1445858404'),
(11, 7, '_wp_attachment_is_custom_header', 'cubby'),
(12, 8, '_wp_attached_file', '2015/10/rw.jpg'),
(13, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:296;s:6:"height";i:120;s:4:"file";s:14:"2015/10/rw.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"rw-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-news";a:4:{s:4:"file";s:13:"rw-110x70.jpg";s:5:"width";i:110;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:13:"home-carousel";a:4:{s:4:"file";s:14:"rw-205x120.jpg";s:5:"width";i:205;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:13:"sidebar-posts";a:4:{s:4:"file";s:12:"rw-60x45.jpg";s:5:"width";i:60;s:6:"height";i:45;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14, 9, '_wp_attached_file', '2015/10/cropped-rw.jpg'),
(15, 9, '_wp_attachment_context', 'site-icon'),
(16, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:22:"2015/10/cropped-rw.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cropped-rw-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cropped-rw-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"home-news";a:4:{s:4:"file";s:21:"cropped-rw-110x70.jpg";s:5:"width";i:110;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:13:"home-carousel";a:4:{s:4:"file";s:22:"cropped-rw-205x150.jpg";s:5:"width";i:205;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"sidebar-posts";a:4:{s:4:"file";s:20:"cropped-rw-60x45.jpg";s:5:"width";i:60;s:6:"height";i:45;s:9:"mime-type";s:10:"image/jpeg";}s:9:"portfolio";a:4:{s:4:"file";s:22:"cropped-rw-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:22:"cropped-rw-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:22:"cropped-rw-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:22:"cropped-rw-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:20:"cropped-rw-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(17, 7, '_wp_attachment_is_custom_background', 'cubby'),
(18, 2, '_edit_lock', '1445858710:1'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1445858712'),
(21, 11, '_edit_last', '1'),
(22, 11, '_edit_lock', '1446556956:1'),
(23, 11, '_cubby_show_breadcrumb', '1'),
(24, 11, '_cubby_right_sidebar', '1'),
(25, 13, '_edit_last', '1'),
(26, 13, '_edit_lock', '1446556381:1'),
(27, 13, '_cubby_show_breadcrumb', '1'),
(28, 13, '_cubby_right_sidebar', '1'),
(29, 15, '_edit_last', '1'),
(30, 15, '_edit_lock', '1445858680:1'),
(31, 15, '_cubby_show_breadcrumb', '1'),
(32, 15, '_cubby_right_sidebar', '1'),
(33, 17, '_edit_last', '1'),
(34, 17, '_edit_lock', '1445858702:1'),
(35, 17, '_cubby_show_breadcrumb', '1'),
(36, 17, '_cubby_right_sidebar', '1'),
(37, 19, '_edit_last', '1'),
(38, 19, '_edit_lock', '1445858732:1'),
(39, 19, '_cubby_show_breadcrumb', '1'),
(40, 19, '_cubby_right_sidebar', '1'),
(41, 21, '_menu_item_type', 'post_type'),
(42, 21, '_menu_item_menu_item_parent', '0'),
(43, 21, '_menu_item_object_id', '19'),
(44, 21, '_menu_item_object', 'page'),
(45, 21, '_menu_item_target', ''),
(46, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 21, '_menu_item_xfn', ''),
(48, 21, '_menu_item_url', ''),
(50, 22, '_menu_item_type', 'post_type'),
(51, 22, '_menu_item_menu_item_parent', '0'),
(52, 22, '_menu_item_object_id', '17'),
(53, 22, '_menu_item_object', 'page'),
(54, 22, '_menu_item_target', ''),
(55, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 22, '_menu_item_xfn', ''),
(57, 22, '_menu_item_url', ''),
(59, 23, '_menu_item_type', 'post_type'),
(60, 23, '_menu_item_menu_item_parent', '0'),
(61, 23, '_menu_item_object_id', '15'),
(62, 23, '_menu_item_object', 'page'),
(63, 23, '_menu_item_target', ''),
(64, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 23, '_menu_item_xfn', ''),
(66, 23, '_menu_item_url', ''),
(68, 24, '_menu_item_type', 'post_type'),
(69, 24, '_menu_item_menu_item_parent', '0'),
(70, 24, '_menu_item_object_id', '13'),
(71, 24, '_menu_item_object', 'page'),
(72, 24, '_menu_item_target', ''),
(73, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 24, '_menu_item_xfn', ''),
(75, 24, '_menu_item_url', ''),
(77, 25, '_menu_item_type', 'post_type'),
(78, 25, '_menu_item_menu_item_parent', '0'),
(79, 25, '_menu_item_object_id', '11'),
(80, 25, '_menu_item_object', 'page'),
(81, 25, '_menu_item_target', ''),
(82, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 25, '_menu_item_xfn', ''),
(84, 25, '_menu_item_url', ''),
(86, 26, '_edit_last', '1'),
(87, 26, '_cubby_show_breadcrumb', '1'),
(88, 26, '_cubby_right_sidebar', '1'),
(89, 26, '_edit_lock', '1445858847:1'),
(90, 28, '_edit_last', '1'),
(91, 28, '_cubby_show_breadcrumb', '1'),
(92, 28, '_cubby_right_sidebar', '1'),
(93, 28, '_edit_lock', '1445858863:1'),
(94, 30, '_edit_last', '1'),
(95, 30, '_cubby_show_breadcrumb', '1'),
(96, 30, '_cubby_right_sidebar', '1'),
(97, 30, '_edit_lock', '1445858879:1'),
(98, 32, '_edit_last', '1'),
(99, 32, '_cubby_show_breadcrumb', '1'),
(100, 32, '_cubby_right_sidebar', '1'),
(101, 32, '_edit_lock', '1445858896:1'),
(102, 34, '_edit_last', '1'),
(103, 34, '_edit_lock', '1445858923:1'),
(104, 34, '_cubby_show_breadcrumb', '1'),
(105, 34, '_cubby_right_sidebar', '1'),
(106, 36, '_menu_item_type', 'post_type'),
(107, 36, '_menu_item_menu_item_parent', '24'),
(108, 36, '_menu_item_object_id', '34'),
(109, 36, '_menu_item_object', 'page'),
(110, 36, '_menu_item_target', ''),
(111, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(112, 36, '_menu_item_xfn', ''),
(113, 36, '_menu_item_url', ''),
(115, 37, '_menu_item_type', 'post_type'),
(116, 37, '_menu_item_menu_item_parent', '24'),
(117, 37, '_menu_item_object_id', '32'),
(118, 37, '_menu_item_object', 'page'),
(119, 37, '_menu_item_target', ''),
(120, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(121, 37, '_menu_item_xfn', ''),
(122, 37, '_menu_item_url', ''),
(124, 38, '_menu_item_type', 'post_type'),
(125, 38, '_menu_item_menu_item_parent', '24'),
(126, 38, '_menu_item_object_id', '30'),
(127, 38, '_menu_item_object', 'page'),
(128, 38, '_menu_item_target', ''),
(129, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 38, '_menu_item_xfn', ''),
(131, 38, '_menu_item_url', ''),
(133, 39, '_menu_item_type', 'post_type'),
(134, 39, '_menu_item_menu_item_parent', '24'),
(135, 39, '_menu_item_object_id', '28'),
(136, 39, '_menu_item_object', 'page'),
(137, 39, '_menu_item_target', ''),
(138, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(139, 39, '_menu_item_xfn', ''),
(140, 39, '_menu_item_url', ''),
(142, 40, '_menu_item_type', 'post_type'),
(143, 40, '_menu_item_menu_item_parent', '24'),
(144, 40, '_menu_item_object_id', '26'),
(145, 40, '_menu_item_object', 'page'),
(146, 40, '_menu_item_target', ''),
(147, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 40, '_menu_item_xfn', ''),
(149, 40, '_menu_item_url', ''),
(151, 41, '_edit_last', '1'),
(152, 41, '_cubby_show_breadcrumb', '1'),
(153, 41, '_cubby_right_sidebar', '1'),
(154, 41, '_edit_lock', '1445859022:1'),
(155, 43, '_edit_last', '1'),
(156, 43, '_cubby_show_breadcrumb', '1'),
(157, 43, '_cubby_right_sidebar', '1'),
(158, 43, '_edit_lock', '1445859036:1'),
(159, 45, '_edit_last', '1'),
(160, 45, '_cubby_show_breadcrumb', '1'),
(161, 45, '_cubby_right_sidebar', '1'),
(162, 45, '_edit_lock', '1445859053:1'),
(163, 47, '_edit_last', '1'),
(164, 47, '_cubby_show_breadcrumb', '1'),
(165, 47, '_cubby_right_sidebar', '1'),
(166, 47, '_edit_lock', '1445859077:1'),
(167, 49, '_menu_item_type', 'post_type'),
(168, 49, '_menu_item_menu_item_parent', '40'),
(169, 49, '_menu_item_object_id', '47'),
(170, 49, '_menu_item_object', 'page'),
(171, 49, '_menu_item_target', ''),
(172, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 49, '_menu_item_xfn', ''),
(174, 49, '_menu_item_url', ''),
(176, 50, '_menu_item_type', 'post_type'),
(177, 50, '_menu_item_menu_item_parent', '40'),
(178, 50, '_menu_item_object_id', '45'),
(179, 50, '_menu_item_object', 'page'),
(180, 50, '_menu_item_target', ''),
(181, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 50, '_menu_item_xfn', ''),
(183, 50, '_menu_item_url', ''),
(185, 51, '_menu_item_type', 'post_type'),
(186, 51, '_menu_item_menu_item_parent', '40'),
(187, 51, '_menu_item_object_id', '43'),
(188, 51, '_menu_item_object', 'page'),
(189, 51, '_menu_item_target', ''),
(190, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 51, '_menu_item_xfn', ''),
(192, 51, '_menu_item_url', ''),
(194, 52, '_menu_item_type', 'post_type'),
(195, 52, '_menu_item_menu_item_parent', '40'),
(196, 52, '_menu_item_object_id', '41'),
(197, 52, '_menu_item_object', 'page'),
(198, 52, '_menu_item_target', ''),
(199, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 52, '_menu_item_xfn', ''),
(201, 52, '_menu_item_url', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=63 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-10-26 11:07:40', '2015-10-26 11:07:40', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2015-10-26 11:07:40', '2015-10-26 11:07:40', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2015-10-26 11:07:40', '2015-10-26 11:07:40', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo', '', '', '2015-10-26 11:25:12', '2015-10-26 11:25:12', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(6, 1, '2015-10-26 11:17:24', '2015-10-26 11:17:24', '', 'Índice', 'Logo', 'inherit', 'open', 'closed', '', 'indice-2', '', '', '2015-10-26 11:17:38', '2015-10-26 11:17:38', '', 0, 'http://localhost/wp-content/uploads/2015/10/Índice1.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2015-10-26 11:19:37', '2015-10-26 11:19:37', '', '', 'Logo da Etec', 'inherit', 'open', 'closed', '', 'es', '', '', '2015-10-26 11:19:57', '2015-10-26 11:19:57', '', 0, 'http://localhost/wp-content/uploads/2015/10/es.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2015-10-26 11:21:34', '2015-10-26 11:21:34', '', '', '', 'inherit', 'open', 'closed', '', 'rw', '', '', '2015-10-26 11:21:42', '2015-10-26 11:21:42', '', 0, 'http://localhost/wp-content/uploads/2015/10/rw.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2015-10-26 11:22:18', '2015-10-26 11:22:18', 'http://localhost/wp-content/uploads/2015/10/cropped-rw.jpg', 'cropped-rw.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-rw-jpg', '', '', '2015-10-26 11:22:18', '2015-10-26 11:22:18', '', 0, 'http://localhost/wp-content/uploads/2015/10/cropped-rw.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2015-10-26 11:25:12', '2015-10-26 11:25:12', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-10-26 11:25:12', '2015-10-26 11:25:12', '', 2, 'http://localhost/index.php/2015/10/26/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-10-26 11:25:41', '2015-10-26 11:25:41', '<h3><span style="text-decoration: underline; color: #ff0000;">Bem Vindo!</span></h3>\r\n<h3 style="text-align: left;">Escola Técnica Estadual "Dr. Adail Nunes da Silva"</h3>\r\n<h4 style="text-align: left;"></h4>\r\n<h3 style="text-align: left;"><span style="color: #000000;"><strong>Histórico (</strong>história)</span></h3>\r\nA escola criada em 1988 construiu uma história fundamentada na filosofia educacional comprometida com a qualidade de ensino, pela atualização contínua dos docentes, de investimentos em equipamentos, laboratórios, recursos audiovisuais e acervo bibliográfico. Além de um planejamento estratégico que assegura a integração entre todos os segmentos da comunidade para o perfeito desenvolvimento da proposta pedagógica: trabalho dinâmico, multidisciplinar, acesso às informações, produção de conhecimento e prestação de serviços.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nVenha conhecer a <span style="text-decoration: underline; color: #ff0000;">Etec Dans!</span>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-11-03 13:24:55', '2015-11-03 13:24:55', '', 0, 'http://localhost/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-10-26 11:25:41', '2015-10-26 11:25:41', 'Página inicial da Etec Dans', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-10-26 11:25:41', '2015-10-26 11:25:41', '', 11, 'http://localhost/index.php/2015/10/26/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-10-26 11:26:08', '2015-10-26 11:26:08', '<h2><span style="color: #000000;"><strong>Cursos da Etec</strong></span></h2>\r\n<h4 style="text-align: left;"> Cursos Técnicos que oferece:</h4>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Ensino Médio</strong>\r\n<a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/administracao.asp"><img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /></a><strong><a href="http://localhost/index.php/administracao/">Administração</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Agente Comunitário de Saúde</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Agroindústria</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/alimentos/">Alimentos</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/enfermagem.asp">Enfermagem</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/informatica/">Informática</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Informática para Internet</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Logística</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/quimica.asp">Química</a></strong>\r\n\r\nCursos Técnicos Integrados ao Ensino Médio:\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/informatica-integrado/">Informática </a></strong>\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Química</strong>\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Alimentos</strong>', 'Cursos', '', 'publish', 'closed', 'closed', '', 'cursos', '', '', '2015-11-03 13:10:12', '2015-11-03 13:10:12', '', 0, 'http://localhost/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-10-26 11:26:08', '2015-10-26 11:26:08', 'Cursos da Etec', 'Cursos', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-10-26 11:26:08', '2015-10-26 11:26:08', '', 13, 'http://localhost/index.php/2015/10/26/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-10-26 11:26:59', '2015-10-26 11:26:59', 'Forum!!!', 'Secretaria', '', 'publish', 'closed', 'closed', '', 'secretaria', '', '', '2015-10-26 11:26:59', '2015-10-26 11:26:59', '', 0, 'http://localhost/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-10-26 11:26:59', '2015-10-26 11:26:59', 'Forum!!!', 'Secretaria', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2015-10-26 11:26:59', '2015-10-26 11:26:59', '', 15, 'http://localhost/index.php/2015/10/26/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2015-10-26 11:27:20', '2015-10-26 11:27:20', 'Fotos u-u', 'Galeria', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2015-10-26 11:27:20', '2015-10-26 11:27:20', '', 0, 'http://localhost/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-10-26 11:27:20', '2015-10-26 11:27:20', 'Fotos u-u', 'Galeria', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-10-26 11:27:20', '2015-10-26 11:27:20', '', 17, 'http://localhost/index.php/2015/10/26/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-10-26 11:27:42', '2015-10-26 11:27:42', 'Informações da etec', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2015-10-26 11:27:42', '2015-10-26 11:27:42', '', 0, 'http://localhost/?page_id=19', 0, 'page', '', 0),
(20, 1, '2015-10-26 11:27:42', '2015-10-26 11:27:42', 'Informações da etec', 'Contato', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2015-10-26 11:27:42', '2015-10-26 11:27:42', '', 19, 'http://localhost/index.php/2015/10/26/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2015-10-26 11:28:54', '2015-10-26 11:28:54', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=21', 14, 'nav_menu_item', '', 0),
(22, 1, '2015-10-26 11:28:54', '2015-10-26 11:28:54', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=22', 13, 'nav_menu_item', '', 0),
(23, 1, '2015-10-26 11:28:54', '2015-10-26 11:28:54', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=23', 12, 'nav_menu_item', '', 0),
(24, 1, '2015-10-26 11:28:53', '2015-10-26 11:28:53', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2015-10-26 11:28:53', '2015-10-26 11:28:53', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2015-10-26 11:29:45', '2015-10-26 11:29:45', '', 'Informática Integrado', '', 'publish', 'closed', 'closed', '', 'informatica-integrado', '', '', '2015-10-26 11:29:45', '2015-10-26 11:29:45', '', 0, 'http://localhost/?page_id=26', 0, 'page', '', 0),
(27, 1, '2015-10-26 11:29:45', '2015-10-26 11:29:45', '', 'Informática Integrado', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-10-26 11:29:45', '2015-10-26 11:29:45', '', 26, 'http://localhost/index.php/2015/10/26/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-10-26 11:30:01', '2015-10-26 11:30:01', '', 'Informática', '', 'publish', 'closed', 'closed', '', 'informatica', '', '', '2015-10-26 11:30:01', '2015-10-26 11:30:01', '', 0, 'http://localhost/?page_id=28', 0, 'page', '', 0),
(29, 1, '2015-10-26 11:30:01', '2015-10-26 11:30:01', '', 'Informática', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-10-26 11:30:01', '2015-10-26 11:30:01', '', 28, 'http://localhost/index.php/2015/10/26/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-10-26 11:30:15', '2015-10-26 11:30:15', '', 'Alimentos', '', 'publish', 'closed', 'closed', '', 'alimentos', '', '', '2015-10-26 11:30:15', '2015-10-26 11:30:15', '', 0, 'http://localhost/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-10-26 11:30:15', '2015-10-26 11:30:15', '', 'Alimentos', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2015-10-26 11:30:15', '2015-10-26 11:30:15', '', 30, 'http://localhost/index.php/2015/10/26/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-10-26 11:30:32', '2015-10-26 11:30:32', '', 'Química', '', 'publish', 'closed', 'closed', '', 'quimica', '', '', '2015-10-26 11:30:32', '2015-10-26 11:30:32', '', 0, 'http://localhost/?page_id=32', 0, 'page', '', 0),
(33, 1, '2015-10-26 11:30:32', '2015-10-26 11:30:32', '', 'Química', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2015-10-26 11:30:32', '2015-10-26 11:30:32', '', 32, 'http://localhost/index.php/2015/10/26/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-10-26 11:30:59', '2015-10-26 11:30:59', '', 'Administração', '', 'publish', 'closed', 'closed', '', 'administracao', '', '', '2015-10-26 11:30:59', '2015-10-26 11:30:59', '', 0, 'http://localhost/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-10-26 11:30:59', '2015-10-26 11:30:59', '', 'Administração', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2015-10-26 11:30:59', '2015-10-26 11:30:59', '', 34, 'http://localhost/index.php/2015/10/26/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-10-26 11:32:05', '2015-10-26 11:32:05', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=36', 11, 'nav_menu_item', '', 0),
(37, 1, '2015-10-26 11:32:05', '2015-10-26 11:32:05', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=37', 10, 'nav_menu_item', '', 0),
(38, 1, '2015-10-26 11:32:05', '2015-10-26 11:32:05', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=38', 9, 'nav_menu_item', '', 0),
(39, 1, '2015-10-26 11:32:05', '2015-10-26 11:32:05', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=39', 8, 'nav_menu_item', '', 0),
(40, 1, '2015-10-26 11:32:04', '2015-10-26 11:32:04', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2015-10-26 11:32:41', '2015-10-26 11:32:41', '', 'TPI', '', 'publish', 'closed', 'closed', '', 'tpi', '', '', '2015-10-26 11:32:41', '2015-10-26 11:32:41', '', 0, 'http://localhost/?page_id=41', 0, 'page', '', 0),
(42, 1, '2015-10-26 11:32:41', '2015-10-26 11:32:41', '', 'TPI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2015-10-26 11:32:41', '2015-10-26 11:32:41', '', 41, 'http://localhost/index.php/2015/10/26/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-10-26 11:32:54', '2015-10-26 11:32:54', '', 'LPOO', '', 'publish', 'closed', 'closed', '', 'lpoo', '', '', '2015-10-26 11:32:54', '2015-10-26 11:32:54', '', 0, 'http://localhost/?page_id=43', 0, 'page', '', 0),
(44, 1, '2015-10-26 11:32:54', '2015-10-26 11:32:54', '', 'LPOO', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2015-10-26 11:32:54', '2015-10-26 11:32:54', '', 43, 'http://localhost/index.php/2015/10/26/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-10-26 11:33:07', '2015-10-26 11:33:07', '', 'GSO', '', 'publish', 'closed', 'closed', '', 'gso', '', '', '2015-10-26 11:33:07', '2015-10-26 11:33:07', '', 0, 'http://localhost/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-10-26 11:33:07', '2015-10-26 11:33:07', '', 'GSO', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-10-26 11:33:07', '2015-10-26 11:33:07', '', 45, 'http://localhost/index.php/2015/10/26/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-10-26 11:33:28', '2015-10-26 11:33:28', '', 'Emprededorismo', '', 'publish', 'closed', 'closed', '', 'emprededorismo', '', '', '2015-10-26 11:33:28', '2015-10-26 11:33:28', '', 0, 'http://localhost/?page_id=47', 0, 'page', '', 0),
(48, 1, '2015-10-26 11:33:28', '2015-10-26 11:33:28', '', 'Emprededorismo', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2015-10-26 11:33:28', '2015-10-26 11:33:28', '', 47, 'http://localhost/index.php/2015/10/26/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2015-10-26 11:34:20', '2015-10-26 11:34:20', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=49', 7, 'nav_menu_item', '', 0),
(50, 1, '2015-10-26 11:34:19', '2015-10-26 11:34:19', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2015-10-26 11:34:19', '2015-10-26 11:34:19', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2015-10-26 11:34:19', '2015-10-26 11:34:19', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2015-10-26 11:34:24', '2015-10-26 11:34:24', '', 0, 'http://localhost/?p=52', 4, 'nav_menu_item', '', 0),
(53, 1, '2015-11-03 12:35:46', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-11-03 12:35:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=53', 0, 'post', '', 0),
(54, 1, '2015-11-03 13:02:45', '2015-11-03 13:02:45', '<h3><span style="text-decoration: underline; color: #ff0000;">Bem Vindo!</span></h3>\n<h3 style="text-align: left;">Escola Técnica Estadual "Dr. Adail Nunes da Silva"</h3>\n<h4 style="text-align: left;"> <strong>Cursos Técnicos que oferece:</strong></h4>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Ensino Médio\n<a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/administracao.asp"><img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /></a><a href="http://localhost/index.php/administracao/">Administração</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Agente Comunitário de Saúde\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/agroindustria.asp">Agroindústria</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/alimentos.asp">Alimentos</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/enfermagem.asp">Enfermagem</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/informatica.asp">Informática</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/informatica-para-internet.asp">Informática para Internet</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/logistica.asp">Logístíca</a>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/quimica.asp">Química</a>\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Cursos Técnicos Integrados ao Ensino Médio:\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/informatica.asp">Informática </a>\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Química\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Alimentos\n<h3 style="text-align: left;"></h3>\n<h3 style="text-align: left;"><span style="color: #000000;"><strong>Histórico (</strong>história)</span></h3>\nA escola criada em 1988 construiu uma história fundamentada na filosofia educacional comprometida com a qualidade de ensino, pela atualização contínua dos docentes, de investimentos em equipamentos, laboratórios, recursos audiovisuais e acervo bibliográfico. Além de um planejamento estratégico que assegura a integração entre todos os segmentos da comunidade para o perfeito desenvolvimento da proposta pedagógica: trabalho dinâmico, multidisciplinar, acesso às informações, produção de conhecimento e prestação de serviços.\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\nVenha conhecer a <span style="text-decoration: underline; color: #ff0000;">Etec Dans!</span>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2015-11-03 13:02:45', '2015-11-03 13:02:45', '', 11, 'http://localhost/index.php/2015/11/03/11-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2015-11-03 12:48:57', '2015-11-03 12:48:57', '<h3><span style="text-decoration: underline; color: #339966;">Bem Vindo!</span></h3>\r\n<h3 style="text-align: left;">Escola Técnica Estadual</h3>\r\n<h3 style="text-align: left;"></h3>\r\n<h3 style="text-align: left;"><span style="color: #000000;"><strong>Histórico</strong></span></h3>\r\nA escola criada em 1988 construiu uma história fundamentada na filosofia educacional comprometida com a qualidade de ensino, pela atualização contínua dos docentes, de investimentos em equipamentos, laboratórios, recursos audiovisuais e acervo bibliográfico. Além de um planejamento estratégico que assegura a integração entre todos os segmentos da comunidade para o perfeito desenvolvimento da proposta pedagógica: trabalho dinâmico, multidisciplinar, acesso às informações, produção de conhecimento e prestação de serviços.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nVenha conhecer a <span style="text-decoration: underline; color: #339966;">Etec Dans!</span>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-03 12:48:57', '2015-11-03 12:48:57', '', 11, 'http://localhost/index.php/2015/11/03/11-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-11-03 12:50:47', '2015-11-03 12:50:47', '<h3><span style="text-decoration: underline; color: #ff0000;">Bem Vindo!</span></h3>\r\n<h3 style="text-align: left;">Escola Técnica Estadual</h3>\r\n<h3 style="text-align: left;"></h3>\r\n<h3 style="text-align: left;"><span style="color: #000000;"><strong>Histórico</strong></span></h3>\r\nA escola criada em 1988 construiu uma história fundamentada na filosofia educacional comprometida com a qualidade de ensino, pela atualização contínua dos docentes, de investimentos em equipamentos, laboratórios, recursos audiovisuais e acervo bibliográfico. Além de um planejamento estratégico que assegura a integração entre todos os segmentos da comunidade para o perfeito desenvolvimento da proposta pedagógica: trabalho dinâmico, multidisciplinar, acesso às informações, produção de conhecimento e prestação de serviços.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nVenha conhecer a <span style="text-decoration: underline; color: #ff0000;">Etec Dans!</span>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-03 12:50:47', '2015-11-03 12:50:47', '', 11, 'http://localhost/index.php/2015/11/03/11-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-11-03 12:56:29', '2015-11-03 12:56:29', '<h3><span style="text-decoration: underline; color: #ff0000;">Bem Vindo!</span></h3>\r\n<h3 style="text-align: left;">Escola Técnica Estadual "Dr. Adail Nunes da Silva"</h3>\r\n<h4 style="text-align: left;"> <strong>Cursos Técnicos que oferece:</strong></h4>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Ensino Médio\r\n<a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/administracao.asp"><img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Administração</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/agente-comunitario-de-saude.asp">Agente Comunitário de Saúde</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/agroindustria.asp">Agroindústria</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/alimentos.asp">Alimentos</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/enfermagem.asp">Enfermagem</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/informatica.asp">Informática</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/informatica-para-internet.asp">Informática para Internet</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/logistica.asp">Logístíca</a>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/quimica.asp">Química</a>\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Cursos Técnicos Integrados ao Ensino Médio:\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/informatica.asp">Informática </a>\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Química\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Alimentos\r\n<h3 style="text-align: left;"></h3>\r\n<h3 style="text-align: left;"><span style="color: #000000;"><strong>Histórico (</strong>história)</span></h3>\r\nA escola criada em 1988 construiu uma história fundamentada na filosofia educacional comprometida com a qualidade de ensino, pela atualização contínua dos docentes, de investimentos em equipamentos, laboratórios, recursos audiovisuais e acervo bibliográfico. Além de um planejamento estratégico que assegura a integração entre todos os segmentos da comunidade para o perfeito desenvolvimento da proposta pedagógica: trabalho dinâmico, multidisciplinar, acesso às informações, produção de conhecimento e prestação de serviços.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nVenha conhecer a <span style="text-decoration: underline; color: #ff0000;">Etec Dans!</span>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-03 12:56:29', '2015-11-03 12:56:29', '', 11, 'http://localhost/index.php/2015/11/03/11-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-11-03 13:08:02', '2015-11-03 13:08:02', '<h2><strong><span style="color: #999999;">Cursos da Etec</span></strong></h2>\n<h4 style="text-align: left;"> <strong>Cursos Técnicos que oferece:</strong></h4>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Ensino Médio</strong>\n<a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/administracao.asp"><img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /></a><strong><a href="http://localhost/index.php/administracao/">Administração</a></strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Agente Comunitário de Saúde</strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Agroindústria</strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/alimentos/">Alimentos</a></strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/enfermagem.asp">Enfermagem</a></strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/informatica/">Informática</a></strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Informática para Internet</strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Logística</strong>\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/quimica.asp">Química</a></strong>\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" />Cursos Técnicos Integrados ao Ensino Médio:\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/informatica-integrado/">Informática </a></strong>\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Química</strong>\n\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Alimentos</strong>', 'Cursos', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2015-11-03 13:08:02', '2015-11-03 13:08:02', '', 13, 'http://localhost/index.php/2015/11/03/13-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2015-11-03 13:08:41', '2015-11-03 13:08:41', '<h2><span style="color: #000000;"><strong>Cursos da Etec</strong></span></h2>\r\n<h4 style="text-align: left;"> Cursos Técnicos que oferece:</h4>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Ensino Médio</strong>\r\n<a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/administracao.asp"><img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /></a><strong><a href="http://localhost/index.php/administracao/">Administração</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Agente Comunitário de Saúde</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Agroindústria</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/alimentos/">Alimentos</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/enfermagem.asp">Enfermagem</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/informatica/">Informática</a></strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Informática para Internet</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Logística</strong>\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://www.centropaulasouza.sp.gov.br/cursos/etec/quimica.asp">Química</a></strong>\r\n\r\nCursos Técnicos Integrados ao Ensino Médio:\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong><a href="http://localhost/index.php/informatica-integrado/">Informática </a></strong>\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Química</strong>\r\n\r\n<img src="http://www.centropaulasouza.sp.gov.br/imagens/layout/icones/seta.png" alt="" /><strong>Alimentos</strong>', 'Cursos', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-11-03 13:08:41', '2015-11-03 13:08:41', '', 13, 'http://localhost/index.php/2015/11/03/13-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-11-03 13:10:57', '2015-11-03 13:10:57', '<h3><span style="text-decoration: underline; color: #ff0000;">Bem Vindo!</span></h3>\r\n<h3 style="text-align: left;">Escola Técnica Estadual "Dr. Adail Nunes da Silva"</h3>\r\n<h4 style="text-align: left;"></h4>\r\n<h3 style="text-align: left;"><span style="color: #000000;"><strong>Histórico (</strong>história)</span></h3>\r\nA escola criada em 1988 construiu uma história fundamentada na filosofia educacional comprometida com a qualidade de ensino, pela atualização contínua dos docentes, de investimentos em equipamentos, laboratórios, recursos audiovisuais e acervo bibliográfico. Além de um planejamento estratégico que assegura a integração entre todos os segmentos da comunidade para o perfeito desenvolvimento da proposta pedagógica: trabalho dinâmico, multidisciplinar, acesso às informações, produção de conhecimento e prestação de serviços.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nVenha conhecer a <span style="text-decoration: underline; color: #ff0000;">Etec Dans!</span>', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-03 13:10:57', '2015-11-03 13:10:57', '', 11, 'http://localhost/index.php/2015/11/03/11-revision-v1/', 0, 'revision', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'menu 1', 'menu-1', 0);

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
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 2, 0),
(52, 2, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 14);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'coro'),
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
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '53'),
(16, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&wplink=1'),
(18, 1, 'wp_user-settings-time', '1446555775'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
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
(1, 'coro', '$P$BaX7nekPlhRbruyah9Zan99RLN7piX0', 'coro', 'ahahaet@hoaga.com', '', '2015-10-26 11:07:39', '', 0, 'coro');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
