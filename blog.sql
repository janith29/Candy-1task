-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 12, 2019 at 07:51 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-11 05:07:35', '2019-08-11 05:07:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/blog-xam', 'yes'),
(2, 'home', 'http://localhost/blog-xam', 'yes'),
(3, 'blogname', 'Candy Factory Group', 'yes'),
(4, 'blogdescription', 'Blog', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'janithsandaruwan29@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '18', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '18', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:55:\"C:\\wamp64\\www\\blog-xam/wp-content/themes/blog/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'blog', 'yes'),
(41, 'stylesheet', 'blog', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'category_children', 'a:0:{}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:13:\"custom_html-2\";i:1;s:13:\"custom_html-3\";i:2;s:13:\"custom_html-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1565597257;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1565629657;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1565672855;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565672877;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565672880;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', 'j@ye0p<@S1EZ _6kCOHS}_!d1qQz,t +/vYK&Z8zbNRudh%$lJ_}$KVgmE`)@Ms<', 'no'),
(110, 'nonce_salt', ' JSucnYv{I6ZAiaTldA=J=?_L%7VZ*u3F[]kxC|4darin![MQi=ixw^).(aq/[s#', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:4:{i:2;a:2:{s:5:\"title\";s:19:\"CANDY FACTORY GROUP\";s:7:\"content\";s:156:\"<p>Cyber Labs</p>\r\n<p>Joker\'s Films</p>\r\n<p>Joker\'s Concepts</p>\r\n<p>Private Noise</p>\r\n<div class=\"blog\"><a href=\"<?php echo site_url(); ?>\">BLOG</a></div>\";}i:3;a:2:{s:5:\"title\";s:12:\"GET IN TOUCH\";s:7:\"content\";s:223:\"<p><i class=\"fas fa-phone\"></i> +94 112 085 725</p>\r\n<p><i class=\"fas fa-envelope\"></i> sales@candyfactorylk.com</p>\r\n<p><i class=\"fas fa-map-marker-alt\"></i> 14/1, Gramasanwardana Rd,<br>Depanama Pannipitiya <br>10230.</p>\";}i:4;a:2:{s:5:\"title\";s:10:\"FINT US ON\";s:7:\"content\";s:320:\"<p><a href=\"\" target=\"_blank\"><i class=\"fab fa-facebook-f\"></i> Facebook</a></p>\r\n<p><a href=\"\" target=\"_blank\"><i class=\"fab fa-instagram\"></i> Instagram</a></p>\r\n<p><a href=\"\" target=\"_blank\"><i class=\"fab fa-youtube\"></i> YouTube</a></p>\r\n<p><a href=\"\" target=\"_blank\"><i class=\"fab fa-linkedin\"></i> LinkedIn</a></p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'auth_key', 'OHzHALmpm/7GK4L5HR3o9)Jmk*G/}_o0(}1,/{kI1{):d-P4uY-3U.9+L[<<!Gtw', 'no'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1565504108;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1565589130;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(285, '_site_transient_timeout_theme_roots', '1565590933', 'no'),
(286, '_site_transient_theme_roots', 'a:2:{s:4:\"blog\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1565589134;s:7:\"checked\";a:2:{s:4:\"blog\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_salt', 'Mdq8BA4DBH3{-tdk`_BA_1RJj}P;FgyZ!#OKeV.( v9&5lGl82mR_lgL0yz1%wJz', 'no'),
(125, 'logged_in_key', 'i:cOwr$FFjRSm^)uVV2s3L,g|r#eK7KVjh|@<#&R50R17%Dkx*89V2)|m{xIStdQ', 'no'),
(126, 'logged_in_salt', '=kX)Y_&.j_PTxdT@KyywaP=3!B)@Ea#ij_g>?@8UhXv*X|qA(r(X:`fO&_%88wsM', 'no'),
(127, '_site_transient_timeout_browser_666332998c62658cc43216116351bf1f', '1566104878', 'no'),
(128, '_site_transient_browser_666332998c62658cc43216116351bf1f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_d005457bdf39fe8b07a9eaff24a9225e', '1566104879', 'no'),
(130, '_site_transient_php_check_d005457bdf39fe8b07a9eaff24a9225e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'CF- Blog', 'yes'),
(146, 'theme_mods_blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"Primary Menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1565503303;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(177, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(148, '_transient_timeout_plugin_slugs', '1565609275', 'no'),
(149, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:9:\"hello.php\";}', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'WPLANG', '', 'yes'),
(154, 'new_admin_email', 'janithsandaruwan29@gmail.com', 'yes'),
(207, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1565589134;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1565504348:1'),
(11, 9, '_edit_lock', '1565506189:1'),
(6, 1, '_edit_lock', '1565503154:1'),
(12, 11, '_menu_item_type', 'post_type'),
(13, 11, '_menu_item_menu_item_parent', '0'),
(14, 11, '_menu_item_object_id', '9'),
(15, 11, '_menu_item_object', 'page'),
(16, 11, '_menu_item_target', ''),
(17, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 11, '_menu_item_xfn', ''),
(19, 11, '_menu_item_url', ''),
(21, 12, '_edit_lock', '1565593034:1'),
(22, 13, '_wp_attached_file', '2019/08/component-13.png'),
(23, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:544;s:4:\"file\";s:24:\"2019/08/component-13.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-13-280x300.png\";s:5:\"width\";i:280;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 22, '_edit_lock', '1565592990:1'),
(26, 12, '_thumbnail_id', '13'),
(31, 12, '_edit_last', '1'),
(42, 22, '_edit_last', '1'),
(49, 25, '_edit_lock', '1565593031:1'),
(48, 25, '_edit_last', '1'),
(50, 26, '_wp_attached_file', '2019/08/component-9.png'),
(51, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:264;s:4:\"file\";s:23:\"2019/08/component-9.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"component-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"component-9-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 25, '_thumbnail_id', '26'),
(60, 32, '_edit_lock', '1565592992:1'),
(59, 32, '_edit_last', '1'),
(64, 34, '_edit_lock', '1565592971:1'),
(63, 34, '_edit_last', '1'),
(65, 35, '_wp_attached_file', '2019/08/component-10.png'),
(66, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:264;s:4:\"file\";s:24:\"2019/08/component-10.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-10-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 34, '_thumbnail_id', '35'),
(71, 37, '_edit_lock', '1565592943:1'),
(70, 37, '_edit_last', '1'),
(75, 39, '_edit_lock', '1565593049:1'),
(74, 39, '_edit_last', '1'),
(76, 40, '_wp_attached_file', '2019/08/component-7.png'),
(77, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:405;s:4:\"file\";s:23:\"2019/08/component-7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"component-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"component-7-300x239.png\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 39, '_thumbnail_id', '40'),
(82, 42, '_edit_lock', '1565592941:1'),
(81, 42, '_edit_last', '1'),
(85, 45, '_wp_attached_file', '2019/08/component-8.png'),
(86, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:264;s:4:\"file\";s:23:\"2019/08/component-8.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"component-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"component-8-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 44, '_edit_last', '1'),
(88, 44, '_thumbnail_id', '45'),
(93, 47, '_edit_lock', '1565592905:1'),
(92, 47, '_edit_last', '1'),
(91, 44, '_edit_lock', '1565594257:1'),
(94, 48, '_wp_attached_file', '2019/08/component-11.png'),
(95, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:544;s:4:\"file\";s:24:\"2019/08/component-11.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-11-280x300.png\";s:5:\"width\";i:280;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 49, '_wp_attached_file', '2019/08/component-12.png'),
(97, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:544;s:4:\"file\";s:24:\"2019/08/component-12.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-12-280x300.png\";s:5:\"width\";i:280;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 47, '_thumbnail_id', '49'),
(102, 51, '_edit_lock', '1565594258:1'),
(101, 51, '_edit_last', '1'),
(103, 52, '_wp_attached_file', '2019/08/component-15.png'),
(104, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:436;s:4:\"file\";s:24:\"2019/08/component-15.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-15-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-15-300x257.png\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 51, '_thumbnail_id', '52'),
(109, 54, '_edit_lock', '1565592874:1'),
(108, 54, '_edit_last', '1'),
(113, 56, '_edit_lock', '1565592836:1'),
(112, 56, '_edit_last', '1'),
(117, 58, '_edit_lock', '1565592852:1'),
(116, 58, '_edit_last', '1'),
(121, 60, '_edit_lock', '1565592801:1'),
(120, 60, '_edit_last', '1'),
(122, 61, '_wp_attached_file', '2019/08/component-14.png'),
(123, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:436;s:4:\"file\";s:24:\"2019/08/component-14.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-14-300x257.png\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 60, '_thumbnail_id', '61'),
(128, 63, '_edit_lock', '1565592788:1'),
(127, 63, '_edit_last', '1'),
(129, 63, '_thumbnail_id', '48'),
(133, 65, '_edit_lock', '1565553571:1'),
(132, 65, '_edit_last', '1'),
(134, 66, '_wp_attached_file', '2019/08/component-6.png'),
(135, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:508;s:6:\"height\";i:405;s:4:\"file\";s:23:\"2019/08/component-6.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"component-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"component-6-300x239.png\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 65, '_thumbnail_id', '66'),
(173, 72, '_edit_last', '1'),
(174, 72, '_edit_lock', '1565589644:1'),
(175, 73, '_wp_attached_file', '2019/08/component-16.png'),
(176, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1035;s:6:\"height\";i:480;s:4:\"file\";s:24:\"2019/08/component-16.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"component-16-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"component-16-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"component-16-768x356.png\";s:5:\"width\";i:768;s:6:\"height\";i:356;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"component-16-1024x475.png\";s:5:\"width\";i:1024;s:6:\"height\";i:475;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 72, '_thumbnail_id', '73'),
(186, 76, '_wp_attached_file', '2019/08/component-5.png'),
(187, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:952;s:6:\"height\";i:836;s:4:\"file\";s:23:\"2019/08/component-5.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"component-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"component-5-300x263.png\";s:5:\"width\";i:300;s:6:\"height\";i:263;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"component-5-768x674.png\";s:5:\"width\";i:768;s:6:\"height\";i:674;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-11 05:07:35', '2019-08-11 05:07:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-08-11 05:07:35', '2019-08-11 05:07:35', '', 0, 'http://localhost/blog-xam/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-11 05:07:35', '2019-08-11 05:07:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/blog-xam/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-11 05:07:35', '2019-08-11 05:07:35', '', 0, 'http://localhost/blog-xam/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-11 05:07:35', '2019-08-11 05:07:35', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/blog-xam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-11 05:07:35', '2019-08-11 05:07:35', '', 0, 'http://localhost/blog-xam/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-08-11 05:08:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-11 05:08:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog-xam/?p=4', 0, 'post', '', 0),
(5, 1, '2019-08-11 05:35:08', '2019-08-11 05:35:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2019-08-11 05:47:14', '2019-08-11 05:47:14', '', 0, 'http://localhost/blog-xam/?p=5', 0, 'post', '', 0),
(6, 1, '2019-08-11 05:35:08', '2019-08-11 05:35:08', '<!-- wp:paragraph -->\n<p>test test ts</p>\n<!-- /wp:paragraph -->', 'test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-08-11 05:35:08', '2019-08-11 05:35:08', '', 5, 'http://localhost/blog-xam/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-08-11 05:47:06', '2019-08-11 05:47:06', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-08-11 05:47:06', '2019-08-11 05:47:06', '', 5, 'http://localhost/blog-xam/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-08-11 05:47:14', '2019-08-11 05:47:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'Test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-08-11 05:47:14', '2019-08-11 05:47:14', '', 5, 'http://localhost/blog-xam/5-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-08-11 06:52:07', '2019-08-11 06:52:07', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-08-11 06:52:07', '2019-08-11 06:52:07', '', 0, 'http://localhost/blog-xam/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-08-11 06:52:07', '2019-08-11 06:52:07', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-08-11 06:52:07', '2019-08-11 06:52:07', '', 9, 'http://localhost/blog-xam/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-08-11 06:52:24', '2019-08-11 06:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2019-08-11 06:52:24', '2019-08-11 06:52:24', '', 0, 'http://localhost/blog-xam/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-08-11 11:10:49', '2019-08-11 11:10:49', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU…</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n', 'Xiomi - Xiomi take a shot at the VR market', '', 'publish', 'open', 'open', '', 'xiomi-xiomi-take-a-shot-at-the-vr-market', '', '', '2019-08-12 06:59:33', '2019-08-12 06:59:33', '', 0, 'http://localhost/blog-xam/?p=12', 0, 'post', '', 0),
(13, 1, '2019-08-11 11:10:17', '2019-08-11 11:10:17', '', 'component (13)', '', 'inherit', 'open', 'closed', '', 'component-13', '', '', '2019-08-11 11:10:17', '2019-08-11 11:10:17', '', 12, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-13.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2019-08-11 11:10:49', '2019-08-11 11:10:49', '<!-- wp:paragraph -->\n<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU… (Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\n<!-- /wp:paragraph -->', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 11:10:49', '2019-08-11 11:10:49', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-08-11 12:38:26', '2019-08-11 12:38:26', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU…</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 12:38:26', '2019-08-11 12:38:26', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-08-11 11:28:21', '2019-08-11 11:28:21', '<!-- wp:paragraph -->\r\n<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU… (Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n<p><!--more--></p>\r\n<!-- /wp:paragraph -->', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 11:28:21', '2019-08-11 11:28:21', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-08-11 11:31:52', '2019-08-11 11:31:52', '<!-- wp:paragraph -->\r\n<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU… (Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.<!--more--></p>\r\n<!-- /wp:paragraph -->', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 11:31:52', '2019-08-11 11:31:52', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-08-11 11:32:10', '2019-08-11 11:32:10', '<!-- wp:paragraph -->\r\n<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU… (Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.\r\n<!--more--></p>\r\n<!-- /wp:paragraph -->', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 11:32:10', '2019-08-11 11:32:10', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-08-11 11:32:33', '2019-08-11 11:32:33', '<!-- wp:paragraph -->\r\n<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU… (Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n<p><!--more--></p>\r\n<!-- /wp:paragraph -->', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 11:32:33', '2019-08-11 11:32:33', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-08-11 11:44:08', '2019-08-11 11:44:08', '<!-- wp:paragraph -->\r\n<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU…</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n<!-- /wp:paragraph -->', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-11 11:44:08', '2019-08-11 11:44:08', '', 12, 'http://localhost/blog-xam/12-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-08-11 12:30:27', '2019-08-11 12:30:27', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n\r\n<!--more-->\r\n\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home', '', '', '2019-08-12 06:58:49', '2019-08-12 06:58:49', '', 0, 'http://localhost/blog-xam/?p=22', 0, 'post', '', 0),
(23, 1, '2019-08-11 12:30:27', '2019-08-11 12:30:27', 'Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...\r\n\r\n<!--more-->\r\n\r\n(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-08-11 12:30:27', '2019-08-11 12:30:27', '', 22, 'http://localhost/blog-xam/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-08-11 12:33:25', '2019-08-11 12:33:25', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n\r\n<!--more-->\r\n\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-08-11 12:33:25', '2019-08-11 12:33:25', '', 22, 'http://localhost/blog-xam/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-08-11 12:35:34', '2019-08-11 12:35:34', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-2', '', '', '2019-08-12 06:59:28', '2019-08-12 06:59:28', '', 0, 'http://localhost/blog-xam/?p=25', 0, 'post', '', 0),
(26, 1, '2019-08-11 12:35:30', '2019-08-11 12:35:30', '', 'component (9)', '', 'inherit', 'open', 'closed', '', 'component-9', '', '', '2019-08-11 12:35:30', '2019-08-11 12:35:30', '', 25, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-9.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-08-11 12:35:34', '2019-08-11 12:35:34', 'Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...<!--more-->\r\n\r\n(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-08-11 12:35:34', '2019-08-11 12:35:34', '', 25, 'http://localhost/blog-xam/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-08-11 12:36:39', '2019-08-11 12:36:39', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...\n<p><!--more-->\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2019-08-11 12:36:39', '2019-08-11 12:36:39', '', 25, 'http://localhost/blog-xam/25-autosave-v1/', 0, 'revision', '', 0),
(29, 1, '2019-08-11 12:36:46', '2019-08-11 12:36:46', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-08-11 12:36:46', '2019-08-11 12:36:46', '', 25, 'http://localhost/blog-xam/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-08-11 12:37:14', '2019-08-11 12:37:14', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU…</p>\n<p><!--more--></p>\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\n', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2019-08-11 12:37:14', '2019-08-11 12:37:14', '', 12, 'http://localhost/blog-xam/12-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2019-08-11 12:39:22', '2019-08-11 12:39:22', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-3', '', '', '2019-08-12 06:58:41', '2019-08-12 06:58:41', '', 0, 'http://localhost/blog-xam/?p=32', 0, 'post', '', 0),
(33, 1, '2019-08-11 12:39:22', '2019-08-11 12:39:22', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-08-11 12:39:22', '2019-08-11 12:39:22', '', 32, 'http://localhost/blog-xam/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-08-11 12:40:22', '2019-08-11 12:40:22', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-4', '', '', '2019-08-12 06:58:24', '2019-08-12 06:58:24', '', 0, 'http://localhost/blog-xam/?p=34', 0, 'post', '', 0),
(35, 1, '2019-08-11 12:40:19', '2019-08-11 12:40:19', '', 'component (10)', '', 'inherit', 'open', 'closed', '', 'component-10', '', '', '2019-08-11 12:40:19', '2019-08-11 12:40:19', '', 34, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-10.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-08-11 12:40:22', '2019-08-11 12:40:22', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-08-11 12:40:22', '2019-08-11 12:40:22', '', 34, 'http://localhost/blog-xam/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-08-11 12:41:21', '2019-08-11 12:41:21', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-5', '', '', '2019-08-12 06:58:02', '2019-08-12 06:58:02', '', 0, 'http://localhost/blog-xam/?p=37', 0, 'post', '', 0),
(38, 1, '2019-08-11 12:41:21', '2019-08-11 12:41:21', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-08-11 12:41:21', '2019-08-11 12:41:21', '', 37, 'http://localhost/blog-xam/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-08-11 12:42:24', '2019-08-11 12:42:24', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Sponsor - We\'re the main sponsor for \"Vega\".', '', 'publish', 'open', 'open', '', 'sponsor-were-the-main-sponsor-for-vega', '', '', '2019-08-12 06:59:49', '2019-08-12 06:59:49', '', 0, 'http://localhost/blog-xam/?p=39', 0, 'post', '', 0),
(40, 1, '2019-08-11 12:42:21', '2019-08-11 12:42:21', '', 'component (7)', '', 'inherit', 'open', 'closed', '', 'component-7', '', '', '2019-08-11 12:42:21', '2019-08-11 12:42:21', '', 39, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-7.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-08-11 12:42:24', '2019-08-11 12:42:24', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Sponsor - We\'re the main sponsor for \"Vega\".', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-08-11 12:42:24', '2019-08-11 12:42:24', '', 39, 'http://localhost/blog-xam/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-08-11 12:43:22', '2019-08-11 12:43:22', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-6', '', '', '2019-08-12 06:57:54', '2019-08-12 06:57:54', '', 0, 'http://localhost/blog-xam/?p=42', 0, 'post', '', 0),
(43, 1, '2019-08-11 12:43:22', '2019-08-11 12:43:22', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-08-11 12:43:22', '2019-08-11 12:43:22', '', 42, 'http://localhost/blog-xam/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-08-11 12:45:48', '2019-08-11 12:45:48', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-7', '', '', '2019-08-12 07:08:05', '2019-08-12 07:08:05', '', 0, 'http://localhost/blog-xam/?p=44', 0, 'post', '', 0),
(45, 1, '2019-08-11 12:43:40', '2019-08-11 12:43:40', '', 'component (8)', '', 'inherit', 'open', 'closed', '', 'component-8', '', '', '2019-08-11 12:43:40', '2019-08-11 12:43:40', '', 44, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-8.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2019-08-11 12:43:48', '2019-08-11 12:43:48', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-08-11 12:43:48', '2019-08-11 12:43:48', '', 44, 'http://localhost/blog-xam/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-08-11 12:44:57', '2019-08-11 12:44:57', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU…</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n', 'Xiomi - Xiomi take a shot at the VR market', '', 'publish', 'open', 'open', '', 'xiomi-xiomi-take-a-shot-at-the-vr-market-2', '', '', '2019-08-12 06:57:19', '2019-08-12 06:57:19', '', 0, 'http://localhost/blog-xam/?p=47', 0, 'post', '', 0),
(48, 1, '2019-08-11 12:44:40', '2019-08-11 12:44:40', '', 'component (11)', '', 'inherit', 'open', 'closed', '', 'component-11', '', '', '2019-08-11 12:44:40', '2019-08-11 12:44:40', '', 47, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-11.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2019-08-11 12:44:54', '2019-08-11 12:44:54', '', 'component (12)', '', 'inherit', 'open', 'closed', '', 'component-12', '', '', '2019-08-11 12:44:54', '2019-08-11 12:44:54', '', 47, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-12.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2019-08-11 12:44:57', '2019-08-11 12:44:57', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU…</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>\r\n', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-08-11 12:44:57', '2019-08-11 12:44:57', '', 47, 'http://localhost/blog-xam/47-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-08-11 12:44:48', '2019-08-11 12:44:48', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Steelseries’ new keyboard has adjustable switches for gaming and typing', '', 'publish', 'open', 'open', '', 'steelseries-new-keyboard-has-adjustable-switches-for-gaming-and-typing', '', '', '2019-08-12 07:08:31', '2019-08-12 07:08:31', '', 0, 'http://localhost/blog-xam/?p=51', 0, 'post', '', 0),
(52, 1, '2019-08-11 12:45:44', '2019-08-11 12:45:44', '', 'component (15)', '', 'inherit', 'open', 'closed', '', 'component-15', '', '', '2019-08-11 12:45:44', '2019-08-11 12:45:44', '', 51, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-15.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-08-11 12:45:48', '2019-08-11 12:45:48', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Steelseries’ new keyboard has adjustable switches for gaming and typing', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-08-11 12:45:48', '2019-08-11 12:45:48', '', 51, 'http://localhost/blog-xam/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-08-11 12:46:39', '2019-08-11 12:46:39', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-8', '', '', '2019-08-12 06:56:43', '2019-08-12 06:56:43', '', 0, 'http://localhost/blog-xam/?p=54', 0, 'post', '', 0),
(55, 1, '2019-08-11 12:46:39', '2019-08-11 12:46:39', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-08-11 12:46:39', '2019-08-11 12:46:39', '', 54, 'http://localhost/blog-xam/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-08-11 12:48:09', '2019-08-11 12:48:09', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-9', '', '', '2019-08-12 06:56:03', '2019-08-12 06:56:03', '', 0, 'http://localhost/blog-xam/?p=56', 0, 'post', '', 0),
(57, 1, '2019-08-11 12:47:09', '2019-08-11 12:47:09', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-08-11 12:47:09', '2019-08-11 12:47:09', '', 56, 'http://localhost/blog-xam/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-08-11 12:47:52', '2019-08-11 12:47:52', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'CF NEWS - We\'re partnering with APS', '', 'publish', 'open', 'open', '', 'cf-news-were-partnering-with-aps', '', '', '2019-08-12 06:56:28', '2019-08-12 06:56:28', '', 0, 'http://localhost/blog-xam/?p=58', 0, 'post', '', 0),
(59, 1, '2019-08-11 12:47:52', '2019-08-11 12:47:52', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'CF NEWS - We\'re partnering with APS', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-08-11 12:47:52', '2019-08-11 12:47:52', '', 58, 'http://localhost/blog-xam/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-08-11 12:48:44', '2019-08-11 12:48:44', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Steelseries’ new keyboard has adjustable switches for gaming and typing', '', 'publish', 'open', 'open', '', 'steelseries-new-keyboard-has-adjustable-switches-for-gaming-and-typing-2', '', '', '2019-08-12 06:55:31', '2019-08-12 06:55:31', '', 0, 'http://localhost/blog-xam/?p=60', 0, 'post', '', 0),
(61, 1, '2019-08-11 12:48:41', '2019-08-11 12:48:41', '', 'component (14)', '', 'inherit', 'open', 'closed', '', 'component-14', '', '', '2019-08-11 12:48:41', '2019-08-11 12:48:41', '', 60, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-14.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-08-11 12:48:44', '2019-08-11 12:48:44', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Steelseries’ new keyboard has adjustable switches for gaming and typing', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-08-11 12:48:44', '2019-08-11 12:48:44', '', 60, 'http://localhost/blog-xam/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-08-11 12:49:18', '2019-08-11 12:49:18', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Xiomi - Xiomi take a shot at the VR market', '', 'publish', 'open', 'open', '', 'xiomi-xiomi-take-a-shot-at-the-vr-market-3', '', '', '2019-08-12 06:55:18', '2019-08-12 06:55:18', '', 0, 'http://localhost/blog-xam/?p=63', 0, 'post', '', 0),
(64, 1, '2019-08-11 12:49:18', '2019-08-11 12:49:18', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-08-11 12:49:18', '2019-08-11 12:49:18', '', 63, 'http://localhost/blog-xam/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-08-11 12:49:55', '2019-08-11 12:49:55', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'publish', 'open', 'open', '', 'movie-reviews-spiderman-far-from-home-10', '', '', '2019-08-11 19:56:16', '2019-08-11 19:56:16', '', 0, 'http://localhost/blog-xam/?p=65', 0, 'post', '', 0),
(66, 1, '2019-08-11 12:49:52', '2019-08-11 12:49:52', '', 'component (6)', '', 'inherit', 'open', 'closed', '', 'component-6', '', '', '2019-08-11 12:49:52', '2019-08-11 12:49:52', '', 65, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-6.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-08-11 12:49:55', '2019-08-11 12:49:55', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\r\n<p><!--more--></p>\r\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-08-11 12:49:55', '2019-08-11 12:49:55', '', 65, 'http://localhost/blog-xam/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-08-11 13:13:44', '2019-08-11 13:13:44', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\n<p><!--more--></p>\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2019-08-11 13:13:44', '2019-08-11 13:13:44', '', 65, 'http://localhost/blog-xam/65-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2019-08-12 06:54:55', '2019-08-12 06:54:55', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\n<p><!--more--></p>\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Xiomi - Xiomi take a shot at the VR market', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2019-08-12 06:54:55', '2019-08-12 06:54:55', '', 63, 'http://localhost/blog-xam/63-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2019-08-11 13:13:55', '2019-08-11 13:13:55', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\n<p><!--more--></p>\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Steelseries’ new keyboard has adjustable switches for gaming and typing', '', 'inherit', 'closed', 'closed', '', '60-autosave-v1', '', '', '2019-08-11 13:13:55', '2019-08-11 13:13:55', '', 60, 'http://localhost/blog-xam/60-autosave-v1/', 0, 'revision', '', 0),
(71, 1, '2019-08-12 06:03:48', '2019-08-12 06:03:48', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\n<p><!--more--></p>\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'CF NEWS - We\'re partnering with APS', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2019-08-12 06:03:48', '2019-08-12 06:03:48', '', 58, 'http://localhost/blog-xam/58-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2019-08-11 15:45:31', '2019-08-11 15:45:31', '<p>Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.</p>\r\n\r\n<p>Huawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...</p>\r\n\r\n<!--more-->\r\n<div class=\"innter-img\">\r\n<img class=\"size-medium wp-image-76 alignnone\" src=\"http://localhost/blog-xam/wp-content/uploads/2019/08/component-5.png\"/>\r\n</div>\r\n\r\n<p>Huawei has announced three new devices, the Nova 5, Nova 5 Pro, and Nova 5i, alongside a brand new 7nm Kirin 810 chipset, reports GizmoChina. The launch comes as Huawei continues to face an uncertain future outside of China after Google suspended its Android license last month, meaning that it’s unclear how long these phones will continue to receive Android updates. It’s also uncertain if and for how long these phones would have access to the Google Play Store if they’re released outside of China.</p>\r\n\r\n<p>The new Kirin 810 chipset can be found in the Nova 5, while the more expensive Nova 5 Pro has the flagship Kirin 980 processor found in Huawei’s P30 Pro and Mate 20. The new Kirin 810 chipset has eight cores like the Kirin 980, but two of the 980’s high-performance cores have been replaced with energy-efficient small cores. It’s unclear if this will be Huawei’s last ARM-designed chip, after the chip designer cut ties with Huawei last month. The amount of storage and RAM also differ between the two phones. The Nova 5 has 6GB of RAM and 128GB of storage, while the Nova 5 Pro has 8GB of RAM and can be configured with up to 256GB of storage.</p>', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'publish', 'open', 'open', '', 'huawei-says-it-shipped-100-million-smartphones-this-year-as-of-end-may', '', '', '2019-08-11 20:02:07', '2019-08-11 20:02:07', '', 0, 'http://localhost/blog-xam/?p=72', 0, 'post', '', 0),
(73, 1, '2019-08-11 15:45:26', '2019-08-11 15:45:26', '', 'component (16)', '', 'inherit', 'open', 'closed', '', 'component-16', '', '', '2019-08-11 15:45:26', '2019-08-11 15:45:26', '', 72, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-16.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2019-08-11 15:45:31', '2019-08-11 15:45:31', 'Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.\r\n\r\nHuawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...<!--more-->', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-11 15:45:31', '2019-08-11 15:45:31', '', 72, 'http://localhost/blog-xam/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-08-11 15:47:33', '2019-08-11 15:47:33', '<p>Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.</p>\r\n\r\n<p>Huawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...</p>\r\n\r\n<p><!--more--></p>', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-11 15:47:33', '2019-08-11 15:47:33', '', 72, 'http://localhost/blog-xam/72-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-08-11 18:04:33', '2019-08-11 18:04:33', '', 'component (5)', '', 'inherit', 'open', 'closed', '', 'component-5', '', '', '2019-08-11 18:04:33', '2019-08-11 18:04:33', '', 72, 'http://localhost/blog-xam/wp-content/uploads/2019/08/component-5.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2019-08-11 18:42:20', '2019-08-11 18:42:20', 'Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.\n\nHuawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...\n\n<!--more-->\n\n<img class=\"size-medium wp-image-76 aligncenter\" src=\"http://localhost/blog-xam/wp-content/uploads/2019/08/component-5-300x263.png\" alt=\"\" width=\"300\" height=\"263\" />\n\nHuawei has announced three new devices, the Nova 5, Nova 5 Pro, and Nova 5i, alongside a brand new 7nm Kirin 810 chipset, reports GizmoChina. The launch comes as Huawei continues to face an uncertain future outside of China after Google suspended its Android license last month, meaning that it’s unclear how long these phones will continue to receive Android updates. It’s also uncertain if and for how long these phones would have access to the Google Play Store if they’re released outside of China.\n\nThe new Kirin 810 chipset can be found in the Nova 5, while the more expensive Nova 5 Pro has the flagship Kirin 980 processor found in Huawei’s P30 Pro and Mate 20. The new Kirin 810 chipset has eight cores like the Kirin 980, but two of the 980’s high-performance cores have been replaced with energy-efficient small cores. It’s unclear if this will be Huawei’s last ARM-designed chip, after the chip designer cut ties with Huawei last month. The amount of storage and RAM also differ between the two phones. The Nova 5 has 6GB of RAM and 128GB of storage, while the Nova 5 Pro has 8GB of RAM and can be configured with up to 256GB of storage.', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2019-08-11 18:42:20', '2019-08-11 18:42:20', '', 72, 'http://localhost/blog-xam/72-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2019-08-11 18:06:34', '2019-08-11 18:06:34', '<p>Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.</p>\r\n\r\n<p>Huawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...</p>\r\n\r\n<!--more-->\r\n\r\n<img class=\"alignnone size-medium wp-image-76\" src=\"http://localhost/blog-xam/wp-content/uploads/2019/08/component-5-300x263.png\" alt=\"\" width=\"300\" height=\"263\" />\r\n\r\n<p>Huawei has announced three new devices, the Nova 5, Nova 5 Pro, and Nova 5i, alongside a brand new 7nm Kirin 810 chipset, reports GizmoChina. The launch comes as Huawei continues to face an uncertain future outside of China after Google suspended its Android license last month, meaning that it’s unclear how long these phones will continue to receive Android updates. It’s also uncertain if and for how long these phones would have access to the Google Play Store if they’re released outside of China.</p>\r\n\r\n<p>The new Kirin 810 chipset can be found in the Nova 5, while the more expensive Nova 5 Pro has the flagship Kirin 980 processor found in Huawei’s P30 Pro and Mate 20. The new Kirin 810 chipset has eight cores like the Kirin 980, but two of the 980’s high-performance cores have been replaced with energy-efficient small cores. It’s unclear if this will be Huawei’s last ARM-designed chip, after the chip designer cut ties with Huawei last month. The amount of storage and RAM also differ between the two phones. The Nova 5 has 6GB of RAM and 128GB of storage, while the Nova 5 Pro has 8GB of RAM and can be configured with up to 256GB of storage.</p>', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-11 18:06:34', '2019-08-11 18:06:34', '', 72, 'http://localhost/blog-xam/72-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(79, 1, '2019-08-11 18:42:13', '2019-08-11 18:42:13', 'Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.\r\n\r\nHuawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...\r\n\r\n<!--more-->\r\n\r\n<img class=\"size-medium wp-image-76 aligncenter\" src=\"http://localhost/blog-xam/wp-content/uploads/2019/08/component-5-300x263.png\" alt=\"\" width=\"300\" height=\"263\" />\r\n\r\nHuawei has announced three new devices, the Nova 5, Nova 5 Pro, and Nova 5i, alongside a brand new 7nm Kirin 810 chipset, reports GizmoChina. The launch comes as Huawei continues to face an uncertain future outside of China after Google suspended its Android license last month, meaning that it’s unclear how long these phones will continue to receive Android updates. It’s also uncertain if and for how long these phones would have access to the Google Play Store if they’re released outside of China.\r\n\r\nThe new Kirin 810 chipset can be found in the Nova 5, while the more expensive Nova 5 Pro has the flagship Kirin 980 processor found in Huawei’s P30 Pro and Mate 20. The new Kirin 810 chipset has eight cores like the Kirin 980, but two of the 980’s high-performance cores have been replaced with energy-efficient small cores. It’s unclear if this will be Huawei’s last ARM-designed chip, after the chip designer cut ties with Huawei last month. The amount of storage and RAM also differ between the two phones. The Nova 5 has 6GB of RAM and 128GB of storage, while the Nova 5 Pro has 8GB of RAM and can be configured with up to 256GB of storage.', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-11 18:42:13', '2019-08-11 18:42:13', '', 72, 'http://localhost/blog-xam/72-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-08-11 18:43:20', '2019-08-11 18:43:20', 'Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.\r\n\r\nHuawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...\r\n\r\n<!--more-->\r\n<div class=\"innter-img\">\r\n<img class=\"size-medium wp-image-76 alignnone\" src=\"http://localhost/blog-xam/wp-content/uploads/2019/08/component-5.png\"/>\r\n</div>\r\n\r\nHuawei has announced three new devices, the Nova 5, Nova 5 Pro, and Nova 5i, alongside a brand new 7nm Kirin 810 chipset, reports GizmoChina. The launch comes as Huawei continues to face an uncertain future outside of China after Google suspended its Android license last month, meaning that it’s unclear how long these phones will continue to receive Android updates. It’s also uncertain if and for how long these phones would have access to the Google Play Store if they’re released outside of China.\r\n\r\nThe new Kirin 810 chipset can be found in the Nova 5, while the more expensive Nova 5 Pro has the flagship Kirin 980 processor found in Huawei’s P30 Pro and Mate 20. The new Kirin 810 chipset has eight cores like the Kirin 980, but two of the 980’s high-performance cores have been replaced with energy-efficient small cores. It’s unclear if this will be Huawei’s last ARM-designed chip, after the chip designer cut ties with Huawei last month. The amount of storage and RAM also differ between the two phones. The Nova 5 has 6GB of RAM and 128GB of storage, while the Nova 5 Pro has 8GB of RAM and can be configured with up to 256GB of storage.', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-11 18:43:20', '2019-08-11 18:43:20', '', 72, 'http://localhost/blog-xam/72-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-08-11 18:45:01', '2019-08-11 18:45:01', '<p>Huawei Technologies said on Friday it has shipped 100 million smartphones this year as of May 30.</p>\r\n\r\n<p>Huawei consumer business group\'s smartphone product line president He Gang revealed the numbers at a launch event in Wuhan, China...</p>\r\n\r\n<!--more-->\r\n<div class=\"innter-img\">\r\n<img class=\"size-medium wp-image-76 alignnone\" src=\"http://localhost/blog-xam/wp-content/uploads/2019/08/component-5.png\"/>\r\n</div>\r\n\r\n<p>Huawei has announced three new devices, the Nova 5, Nova 5 Pro, and Nova 5i, alongside a brand new 7nm Kirin 810 chipset, reports GizmoChina. The launch comes as Huawei continues to face an uncertain future outside of China after Google suspended its Android license last month, meaning that it’s unclear how long these phones will continue to receive Android updates. It’s also uncertain if and for how long these phones would have access to the Google Play Store if they’re released outside of China.</p>\r\n\r\n<p>The new Kirin 810 chipset can be found in the Nova 5, while the more expensive Nova 5 Pro has the flagship Kirin 980 processor found in Huawei’s P30 Pro and Mate 20. The new Kirin 810 chipset has eight cores like the Kirin 980, but two of the 980’s high-performance cores have been replaced with energy-efficient small cores. It’s unclear if this will be Huawei’s last ARM-designed chip, after the chip designer cut ties with Huawei last month. The amount of storage and RAM also differ between the two phones. The Nova 5 has 6GB of RAM and 128GB of storage, while the Nova 5 Pro has 8GB of RAM and can be configured with up to 256GB of storage.</p>', 'Huawei says it shipped 100 million smartphones this year as of end - May.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-11 18:45:01', '2019-08-11 18:45:01', '', 72, 'http://localhost/blog-xam/72-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-08-11 19:09:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-11 19:09:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog-xam/?p=82', 0, 'post', '', 0),
(83, 1, '2019-08-11 19:49:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-11 19:49:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog-xam/?page_id=83', 0, 'page', '', 0),
(84, 1, '2019-08-12 06:58:54', '2019-08-12 06:58:54', '<p>Jake Gyllenhaal was recently asked about Ryan Reynolds aka Deadpool\'s reaction to the actor joining the MCU...</p>\n\n<!--more-->\n\n<p>(Marvel Cinematic Universe) as Mysterio in Spider-Man: Far From Home. Read below to know what Jake had to say on the same.</p>', 'Movie Reviews - Spiderman Far from home', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2019-08-12 06:58:54', '2019-08-12 06:58:54', '', 22, 'http://localhost/blog-xam/22-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tech', 'tech', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Films', 'films', 0),
(4, 'Gaming', 'gaming', 0),
(5, 'Candy factory News', 'candy-factory-news', 0),
(6, 'Science', 'science', 0),
(8, 'Top Story', 'top_story', 0),
(9, 'Review - Spiderman Far from home', 'review-spiderman-far-from-home', 0),
(10, 'Review - MI hits the VR market', 'review-mi-hits-the-vr-market', 0),
(11, 'Steelseries - Meet the new MK99', 'steelseries-meet-the-new-mk99', 0),
(12, 'We\'re partnering with APS', 'were-partnering-with-aps', 0),
(13, 'Sponsor - We\'re the main sponso...', 'sponsor-were-the-main-sponso', 0),
(14, 'Huawei - Shipped 100 million smart phones', 'huawei-shipped-100-million-smart-phones', 0),
(15, 'We\'re now Google partners', 'were-now-google-partners', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(11, 2, 0),
(44, 3, 0),
(12, 5, 0),
(22, 3, 0),
(25, 3, 0),
(32, 3, 0),
(34, 3, 0),
(37, 3, 0),
(39, 5, 0),
(42, 3, 0),
(56, 3, 0),
(47, 6, 0),
(51, 4, 0),
(54, 3, 0),
(60, 4, 0),
(58, 5, 0),
(63, 1, 0),
(25, 9, 0),
(65, 3, 0),
(22, 9, 0),
(32, 9, 0),
(34, 9, 0),
(37, 9, 0),
(42, 9, 0),
(44, 9, 0),
(47, 10, 0),
(51, 9, 0),
(54, 9, 0),
(58, 12, 0),
(56, 9, 0),
(60, 11, 0),
(63, 10, 0),
(72, 14, 0),
(65, 9, 0),
(72, 8, 0),
(72, 1, 0),
(12, 15, 0),
(39, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'category', '', 0, 10),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'post_tag', '', 0, 11),
(10, 10, 'post_tag', '', 0, 2),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wp-cf_blog'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f128eaf6384102717815b1be3cd77a5b67b7580cbbdb6256f06dc7b24bc0d1cc\";a:4:{s:10:\"expiration\";i:1565672876;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1565500076;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=html'),
(22, 1, 'wp_user-settings-time', '1565548997');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wp-cf_blog', '$P$Bpd2NxwCXAzZHqe/loeueVEgwLy5ZJ.', 'wp-cf_blog', 'janithsandaruwan29@gmail.com', '', '2019-08-11 05:07:34', '', 0, 'wp-cf_blog');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
