-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2024 at 01:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giathai`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://vi.wordpress.org/', '', '2024-10-31 10:35:47', '2024-10-31 10:35:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/nguyentrangiathai', 'yes'),
(2, 'home', 'http://localhost/nguyentrangiathai', 'yes'),
(3, 'blogname', 'Nguyen Tran Gia Thai', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ledinhson209@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:78:\"D:\\laragon\\www\\nguyentrangiathai/wp-content/themes/nguyentrangiathai/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'nguyentrangiathai', 'yes'),
(41, 'stylesheet', 'nguyentrangiathai', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1745922944', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'vi', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bình luận gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Chuyên mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:8:{i:1730381748;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1730414149;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1730414162;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1730457348;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1730457361;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1730457365;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1730975753;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1730371063;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(143, 'can_compress_scripts', '1', 'yes'),
(160, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"ledinhson209@gmail.com\";s:7:\"version\";s:5:\"6.6.2\";s:9:\"timestamp\";i:1730371021;}', 'no'),
(163, 'finished_updating_comment_type', '1', 'auto'),
(168, 'current_theme', 'nguyentrangiathai', 'auto'),
(169, 'theme_mods_nguyentrangiathai', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(170, 'theme_switched', '', 'auto'),
(173, 'category_children', 'a:0:{}', 'auto'),
(179, 'recently_activated', 'a:1:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1730380368;}', 'auto'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'auto'),
(193, 'acf_version', '5.9.4', 'auto'),
(233, '_site_transient_timeout_wp_theme_files_patterns-32a29a50ea048f86024d12a50847158f', '1730382100', 'off'),
(234, '_site_transient_wp_theme_files_patterns-32a29a50ea048f86024d12a50847158f', 'a:2:{s:7:\"version\";b:0;s:8:\"patterns\";a:0:{}}', 'off'),
(236, 'ai1wm_backups_labels', 'a:0:{}', 'auto'),
(237, 'ai1wm_sites_links', 'a:0:{}', 'auto'),
(240, 'swift_performance_plugin_organizer', 'a:0:{}', 'auto'),
(241, 'jetpack_active_modules', 'a:0:{}', 'auto'),
(242, '_site_transient_timeout_wp_theme_files_patterns-5d6484d3291415e9525e2f2c633bcd6f', '1730382102', 'off'),
(243, '_site_transient_wp_theme_files_patterns-5d6484d3291415e9525e2f2c633bcd6f', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(244, '_site_transient_timeout_available_translations', '1730391129', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(245, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-16 07:55:52\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.5/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.26/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-17 11:39:48\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-21 11:26:40\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-29 16:21:44\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-23 09:49:04\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 17:44:28\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 09:32:19\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-29 10:55:14\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-16 07:47:37\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-31 01:59:24\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-31 01:58:38\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.6.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-29 10:55:35\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.6.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 05:54:01\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-23 06:54:09\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-13 21:41:14\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-02 16:47:50\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-17 01:52:04\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-17 01:27:38\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-17 16:02:45\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-20 23:44:51\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-23 16:36:30\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-11 22:54:09\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-28 23:24:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.10/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.16/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.21/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 13:29:14\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-16 19:05:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-10 00:15:35\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-06-20 17:15:28\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-13 09:15:26\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-23 07:22:41\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 09:59:26\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-30 11:36:50\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.6/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-16 15:56:34\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-17 13:34:33\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.33\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.33/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-24 18:18:49\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-17 15:50:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-26 21:01:17\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-24 20:01:55\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-15 07:15:06\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-30 09:18:35\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.21/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-18 15:21:55\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-14 13:16:53\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-24 01:25:58\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-30 16:57:11\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-13 13:11:03\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-06-20 17:21:01\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-05 15:57:37\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-07 08:41:30\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.15\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-21 18:30:52\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 11:32:23\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-25 10:54:33\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.6.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-25 13:42:31\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-26 21:34:05\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 06:32:31\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.34\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.34/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-25 16:06:32\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 07:51:49\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.6.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-29 14:20:05\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-31 09:27:11\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-01 23:45:25\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.16/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-02 07:50:42\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 09:44:08\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 07:14:35\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-02 11:01:55\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-20 22:15:56\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-20 14:19:52\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-25 09:19:47\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.25/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 17:49:29\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-15 02:48:48\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.16/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-23 10:07:11\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-10 18:56:55\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-10 20:43:54\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(246, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.6.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-6.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1730380347;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}', 'off'),
(247, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1730380364;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.6.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.10\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241029\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.87\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.87.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3173932\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3173932\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.4\";s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.87\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(248, '_transient_timeout_acf_plugin_updates', '1730553149', 'off'),
(249, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.10\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241029\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.4\";}}', 'off'),
(250, '_site_transient_timeout_theme_roots', '1730382149', 'off'),
(251, '_site_transient_theme_roots', 'a:1:{s:17:\"nguyentrangiathai\";s:7:\"/themes\";}', 'off'),
(252, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1730380350;s:7:\"checked\";a:1:{s:17:\"nguyentrangiathai\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(253, '_site_transient_ai1wm_last_check_for_updates', '1730380365', 'off'),
(254, 'ai1wm_updater', 'a:0:{}', 'auto'),
(255, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_lock', '1730371192:1'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1730371360'),
(8, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(9, 2, '_wp_trash_meta_status', 'publish'),
(10, 2, '_wp_trash_meta_time', '1730371362'),
(11, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1730378894:1'),
(14, 10, '_wp_page_template', 'tempalte-page/home.php'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1730371475:1'),
(17, 12, '_wp_page_template', 'tempalte-page/journey.php'),
(18, 14, '_edit_last', '1'),
(19, 14, '_edit_lock', '1730371483:1'),
(20, 14, '_wp_page_template', 'tempalte-page/project.php'),
(21, 16, '_menu_item_type', 'post_type'),
(22, 16, '_menu_item_menu_item_parent', '0'),
(23, 16, '_menu_item_object_id', '10'),
(24, 16, '_menu_item_object', 'page'),
(25, 16, '_menu_item_target', ''),
(26, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 16, '_menu_item_xfn', ''),
(28, 16, '_menu_item_url', ''),
(30, 17, '_menu_item_type', 'post_type'),
(31, 17, '_menu_item_menu_item_parent', '0'),
(32, 17, '_menu_item_object_id', '12'),
(33, 17, '_menu_item_object', 'page'),
(34, 17, '_menu_item_target', ''),
(35, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 17, '_menu_item_xfn', ''),
(37, 17, '_menu_item_url', ''),
(39, 18, '_menu_item_type', 'post_type'),
(40, 18, '_menu_item_menu_item_parent', '0'),
(41, 18, '_menu_item_object_id', '14'),
(42, 18, '_menu_item_object', 'page'),
(43, 18, '_menu_item_target', ''),
(44, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 18, '_menu_item_xfn', ''),
(46, 18, '_menu_item_url', ''),
(50, 20, '_edit_last', '1'),
(51, 20, '_edit_lock', '1730378246:1'),
(52, 28, '_wp_attached_file', '2024/10/4_5.png'),
(53, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:215;s:4:\"file\";s:15:\"2024/10/4_5.png\";s:8:\"filesize\";i:1607;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"4_5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1174;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 29, '_wp_attached_file', '2024/10/c-1.png'),
(55, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:678;s:6:\"height\";i:542;s:4:\"file\";s:15:\"2024/10/c-1.png\";s:8:\"filesize\";i:689368;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"c-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163322;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"c-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54426;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 30, '_wp_attached_file', '2024/10/c-2.png'),
(57, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:678;s:6:\"height\";i:544;s:4:\"file\";s:15:\"2024/10/c-2.png\";s:8:\"filesize\";i:630057;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"c-2-300x241.png\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:133468;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"c-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45507;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 31, '_wp_attached_file', '2024/10/c-3.png'),
(59, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:678;s:6:\"height\";i:544;s:4:\"file\";s:15:\"2024/10/c-3.png\";s:8:\"filesize\";i:568931;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"c-3-300x241.png\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:116265;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"c-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40773;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 32, '_wp_attached_file', '2024/10/c-4.png'),
(61, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:678;s:6:\"height\";i:542;s:4:\"file\";s:15:\"2024/10/c-4.png\";s:8:\"filesize\";i:689368;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"c-4-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163322;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"c-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54426;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 10, 'list_certificate_0_date', '/ 2024'),
(63, 10, '_list_certificate_0_date', 'field_672363c15c241'),
(64, 10, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(65, 10, '_list_certificate_0_title_1', 'field_672363de5c242'),
(66, 10, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(67, 10, '_list_certificate_0_title', 'field_672363e85c243'),
(68, 10, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(69, 10, '_list_certificate_0_desc', 'field_672363f15c244'),
(70, 10, 'list_certificate_0_gallery', '1'),
(71, 10, '_list_certificate_0_gallery', 'field_672364055c245'),
(72, 10, 'list_certificate', '5'),
(73, 10, '_list_certificate', 'field_672363ae5c240'),
(74, 11, 'list_certificate_0_date', '/ 2024'),
(75, 11, '_list_certificate_0_date', 'field_672363c15c241'),
(76, 11, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(77, 11, '_list_certificate_0_title_1', 'field_672363de5c242'),
(78, 11, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(79, 11, '_list_certificate_0_title', 'field_672363e85c243'),
(80, 11, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(81, 11, '_list_certificate_0_desc', 'field_672363f15c244'),
(82, 11, 'list_certificate_0_gallery', 'a:4:{i:0;s:2:\"29\";i:1;s:2:\"30\";i:2;s:2:\"31\";i:3;s:2:\"32\";}'),
(83, 11, '_list_certificate_0_gallery', 'field_672364055c245'),
(84, 11, 'list_certificate', '1'),
(85, 11, '_list_certificate', 'field_672363ae5c240'),
(86, 10, 'list_certificate_0_avarta', '28'),
(87, 10, '_list_certificate_0_avarta', 'field_672364f874fd3'),
(88, 33, 'list_certificate_0_date', '/ 2024'),
(89, 33, '_list_certificate_0_date', 'field_672363c15c241'),
(90, 33, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(91, 33, '_list_certificate_0_title_1', 'field_672363de5c242'),
(92, 33, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(93, 33, '_list_certificate_0_title', 'field_672363e85c243'),
(94, 33, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(95, 33, '_list_certificate_0_desc', 'field_672363f15c244'),
(96, 33, 'list_certificate_0_gallery', 'a:4:{i:0;s:2:\"29\";i:1;s:2:\"30\";i:2;s:2:\"31\";i:3;s:2:\"32\";}'),
(97, 33, '_list_certificate_0_gallery', 'field_672364055c245'),
(98, 33, 'list_certificate', '1'),
(99, 33, '_list_certificate', 'field_672363ae5c240'),
(100, 33, 'list_certificate_0_avarta', '28'),
(101, 33, '_list_certificate_0_avarta', 'field_672364f874fd3'),
(102, 10, 'list_certificate_1_date', '/ 2023'),
(103, 10, '_list_certificate_1_date', 'field_672363c15c241'),
(104, 10, 'list_certificate_1_avarta', '30'),
(105, 10, '_list_certificate_1_avarta', 'field_672364f874fd3'),
(106, 10, 'list_certificate_1_title_1', 'International Warsaw Invention Show'),
(107, 10, '_list_certificate_1_title_1', 'field_672363de5c242'),
(108, 10, 'list_certificate_1_title', 'Gold Medal'),
(109, 10, '_list_certificate_1_title', 'field_672363e85c243'),
(110, 10, 'list_certificate_1_desc', '    This international startup competition connected me with a group of friends who shared my passion for recycled fashion. Together, we co-authored a research article titled \"ReFashioned by AI: Innovating Sustainable Fashion through Generative Design,\" aiming to leverage technology for the benefit of the industry. My deep passion for business, along with my experience from running a recycled shoe startup, gave me the expertise and confidence needed when presenting for this competition. Thanks to our collective efforts, we won the gold award at the International Warsaw Invention Show, which became a stepping stone for my entrepreneurial journey.'),
(111, 10, '_list_certificate_1_desc', 'field_672363f15c244'),
(112, 10, 'list_certificate_1_gallery', '6'),
(113, 10, '_list_certificate_1_gallery', 'field_672364055c245'),
(114, 35, 'list_certificate_0_date', '/ 2024'),
(115, 35, '_list_certificate_0_date', 'field_672363c15c241'),
(116, 35, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(117, 35, '_list_certificate_0_title_1', 'field_672363de5c242'),
(118, 35, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(119, 35, '_list_certificate_0_title', 'field_672363e85c243'),
(120, 35, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(121, 35, '_list_certificate_0_desc', 'field_672363f15c244'),
(122, 35, 'list_certificate_0_gallery', 'a:4:{i:0;s:2:\"29\";i:1;s:2:\"30\";i:2;s:2:\"31\";i:3;s:2:\"32\";}'),
(123, 35, '_list_certificate_0_gallery', 'field_672364055c245'),
(124, 35, 'list_certificate', '2'),
(125, 35, '_list_certificate', 'field_672363ae5c240'),
(126, 35, 'list_certificate_0_avarta', '28'),
(127, 35, '_list_certificate_0_avarta', 'field_672364f874fd3'),
(128, 35, 'list_certificate_1_date', '/ 2023'),
(129, 35, '_list_certificate_1_date', 'field_672363c15c241'),
(130, 35, 'list_certificate_1_avarta', '30'),
(131, 35, '_list_certificate_1_avarta', 'field_672364f874fd3'),
(132, 35, 'list_certificate_1_title_1', 'International Warsaw Invention Show'),
(133, 35, '_list_certificate_1_title_1', 'field_672363de5c242'),
(134, 35, 'list_certificate_1_title', 'Gold Medal'),
(135, 35, '_list_certificate_1_title', 'field_672363e85c243'),
(136, 35, 'list_certificate_1_desc', '    This international startup competition connected me with a group of friends who shared my passion for recycled fashion. Together, we co-authored a research article titled \"ReFashioned by AI: Innovating Sustainable Fashion through Generative Design,\" aiming to leverage technology for the benefit of the industry. My deep passion for business, along with my experience from running a recycled shoe startup, gave me the expertise and confidence needed when presenting for this competition. Thanks to our collective efforts, we won the gold award at the International Warsaw Invention Show, which became a stepping stone for my entrepreneurial journey.'),
(137, 35, '_list_certificate_1_desc', 'field_672363f15c244'),
(138, 35, 'list_certificate_1_gallery', 'a:3:{i:0;s:2:\"31\";i:1;s:2:\"30\";i:2;s:2:\"29\";}'),
(139, 35, '_list_certificate_1_gallery', 'field_672364055c245'),
(140, 10, 'list_certificate_0_gallery_0_avarta_gall', '31'),
(141, 10, '_list_certificate_0_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(148, 10, 'list_certificate_1_gallery_0_avarta_gall', '30'),
(149, 10, '_list_certificate_1_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(150, 10, 'list_certificate_1_gallery_1_avarta_gall', '31'),
(151, 10, '_list_certificate_1_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(152, 10, 'list_certificate_1_gallery_2_avarta_gall', '39'),
(153, 10, '_list_certificate_1_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(154, 36, 'list_certificate_0_date', '/ 2024'),
(155, 36, '_list_certificate_0_date', 'field_672363c15c241'),
(156, 36, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(157, 36, '_list_certificate_0_title_1', 'field_672363de5c242'),
(158, 36, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(159, 36, '_list_certificate_0_title', 'field_672363e85c243'),
(160, 36, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(161, 36, '_list_certificate_0_desc', 'field_672363f15c244'),
(162, 36, 'list_certificate_0_gallery', '4'),
(163, 36, '_list_certificate_0_gallery', 'field_672364055c245'),
(164, 36, 'list_certificate', '2'),
(165, 36, '_list_certificate', 'field_672363ae5c240'),
(166, 36, 'list_certificate_0_avarta', '28'),
(167, 36, '_list_certificate_0_avarta', 'field_672364f874fd3'),
(168, 36, 'list_certificate_1_date', '/ 2023'),
(169, 36, '_list_certificate_1_date', 'field_672363c15c241'),
(170, 36, 'list_certificate_1_avarta', '30'),
(171, 36, '_list_certificate_1_avarta', 'field_672364f874fd3'),
(172, 36, 'list_certificate_1_title_1', 'International Warsaw Invention Show'),
(173, 36, '_list_certificate_1_title_1', 'field_672363de5c242'),
(174, 36, 'list_certificate_1_title', 'Gold Medal'),
(175, 36, '_list_certificate_1_title', 'field_672363e85c243'),
(176, 36, 'list_certificate_1_desc', '    This international startup competition connected me with a group of friends who shared my passion for recycled fashion. Together, we co-authored a research article titled \"ReFashioned by AI: Innovating Sustainable Fashion through Generative Design,\" aiming to leverage technology for the benefit of the industry. My deep passion for business, along with my experience from running a recycled shoe startup, gave me the expertise and confidence needed when presenting for this competition. Thanks to our collective efforts, we won the gold award at the International Warsaw Invention Show, which became a stepping stone for my entrepreneurial journey.'),
(177, 36, '_list_certificate_1_desc', 'field_672363f15c244'),
(178, 36, 'list_certificate_1_gallery', '3'),
(179, 36, '_list_certificate_1_gallery', 'field_672364055c245'),
(180, 36, 'list_certificate_0_gallery_0_avarta_gall', '32'),
(181, 36, '_list_certificate_0_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(182, 36, 'list_certificate_0_gallery_1_avarta_gall', '31'),
(183, 36, '_list_certificate_0_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(184, 36, 'list_certificate_0_gallery_2_avarta_gall', '30'),
(185, 36, '_list_certificate_0_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(186, 36, 'list_certificate_0_gallery_3_avarta_gall', '29'),
(187, 36, '_list_certificate_0_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(188, 36, 'list_certificate_1_gallery_0_avarta_gall', '32'),
(189, 36, '_list_certificate_1_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(190, 36, 'list_certificate_1_gallery_1_avarta_gall', '31'),
(191, 36, '_list_certificate_1_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(192, 36, 'list_certificate_1_gallery_2_avarta_gall', '30'),
(193, 36, '_list_certificate_1_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(194, 1, '_edit_lock', '1730377598:1'),
(195, 39, '_wp_attached_file', '2024/10/4_5-1.png'),
(196, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2024/10/4_5-1.png\";s:8:\"filesize\";i:168329;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"4_5-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:64339;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"4_5-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26259;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 40, '_wp_attached_file', '2024/10/4_5-4.png'),
(198, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2024/10/4_5-4.png\";s:8:\"filesize\";i:276113;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"4_5-4-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84094;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"4_5-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29352;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 41, '_wp_attached_file', '2024/10/4_5-3.png'),
(200, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2024/10/4_5-3.png\";s:8:\"filesize\";i:266200;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"4_5-3-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84561;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"4_5-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29605;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 42, '_wp_attached_file', '2024/10/4_5-1-1.png'),
(202, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/4_5-1-1.png\";s:8:\"filesize\";i:266555;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"4_5-1-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:103582;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"4_5-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37976;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 43, '_wp_attached_file', '2024/10/Image-3.png'),
(204, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/Image-3.png\";s:8:\"filesize\";i:281230;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Image-3-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88395;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Image-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 44, '_wp_attached_file', '2024/10/Image-2.png'),
(206, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/Image-2.png\";s:8:\"filesize\";i:348513;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Image-2-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:132919;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Image-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46865;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 45, '_wp_attached_file', '2024/10/Image-1.png'),
(208, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/Image-1.png\";s:8:\"filesize\";i:226482;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Image-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:87368;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33212;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 46, '_wp_attached_file', '2024/10/Image.png'),
(210, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2024/10/Image.png\";s:8:\"filesize\";i:438820;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"Image-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:154045;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"Image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51488;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 47, '_wp_attached_file', '2024/10/Image-4.png'),
(212, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/Image-4.png\";s:8:\"filesize\";i:243377;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Image-4-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:97236;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Image-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33840;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 48, '_wp_attached_file', '2024/10/Image-3-1.png'),
(214, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2024/10/Image-3-1.png\";s:8:\"filesize\";i:227448;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Image-3-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:86193;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Image-3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28660;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 49, '_wp_attached_file', '2024/10/Image-2-1.png'),
(216, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2024/10/Image-2-1.png\";s:8:\"filesize\";i:350334;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Image-2-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:123611;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Image-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43124;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 50, '_wp_attached_file', '2024/10/Image-1-1.png'),
(218, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2024/10/Image-1-1.png\";s:8:\"filesize\";i:254934;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Image-1-1-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:109148;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Image-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40611;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 51, '_wp_attached_file', '2024/10/Image-5.png'),
(220, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/Image-5.png\";s:8:\"filesize\";i:217656;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Image-5-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:86642;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Image-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34718;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 52, '_wp_attached_file', '2024/10/Image-2-2.png'),
(222, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2024/10/Image-2-2.png\";s:8:\"filesize\";i:335479;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Image-2-2-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:123281;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Image-2-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43561;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 53, '_wp_attached_file', '2024/10/Image-1-2.png'),
(224, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2024/10/Image-1-2.png\";s:8:\"filesize\";i:380598;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Image-1-2-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:138651;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Image-1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49503;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 54, '_wp_attached_file', '2024/10/Image-6.png'),
(226, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2024/10/Image-6.png\";s:8:\"filesize\";i:318223;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Image-6-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:100058;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Image-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36362;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 10, 'list_certificate_1_gallery_3_avarta_gall', '42'),
(228, 10, '_list_certificate_1_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(229, 10, 'list_certificate_1_gallery_4_avarta_gall', '40'),
(230, 10, '_list_certificate_1_gallery_4_avarta_gall', 'field_6723766d1ec36'),
(231, 10, 'list_certificate_1_gallery_5_avarta_gall', '41'),
(232, 10, '_list_certificate_1_gallery_5_avarta_gall', 'field_6723766d1ec36'),
(233, 10, 'list_certificate_2_date', '/ 2023'),
(234, 10, '_list_certificate_2_date', 'field_672363c15c241'),
(235, 10, 'list_certificate_2_avarta', '46'),
(236, 10, '_list_certificate_2_avarta', 'field_672364f874fd3'),
(237, 10, 'list_certificate_2_title_1', 'Griffins Cup'),
(238, 10, '_list_certificate_2_title_1', 'field_672363de5c242'),
(239, 10, 'list_certificate_2_title', 'Gold medal'),
(240, 10, '_list_certificate_2_title', 'field_672363e85c243'),
(241, 10, 'list_certificate_2_desc', '    Basketball has always been my passion. It not only sharpens my skills but also teaches me discipline, patience, and, most importantly, how to stand up after every fall. During high school, I faced setbacks in my first two years, losing to upperclassmen despite my efforts. Even in my junior year, I faced the senior class in the finals, the strongest class in my school\'s history. But that did not make me hesitate in facing the challenge. My team and I gave everything we had, and together we brought home the prestigious championship cup, filling the school with pride and joy.'),
(242, 10, '_list_certificate_2_desc', 'field_672363f15c244'),
(243, 10, 'list_certificate_2_gallery_0_avarta_gall', '43'),
(244, 10, '_list_certificate_2_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(245, 10, 'list_certificate_2_gallery_1_avarta_gall', '44'),
(246, 10, '_list_certificate_2_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(247, 10, 'list_certificate_2_gallery_2_avarta_gall', '45'),
(248, 10, '_list_certificate_2_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(249, 10, 'list_certificate_2_gallery_3_avarta_gall', '46'),
(250, 10, '_list_certificate_2_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(251, 10, 'list_certificate_2_gallery', '4'),
(252, 10, '_list_certificate_2_gallery', 'field_672364055c245'),
(253, 10, 'list_certificate_3_date', '/ 2023'),
(254, 10, '_list_certificate_3_date', 'field_672363c15c241'),
(255, 10, 'list_certificate_3_avarta', '49'),
(256, 10, '_list_certificate_3_avarta', 'field_672364f874fd3'),
(257, 10, 'list_certificate_3_title_1', 'Olympia Leaders Model United Nations - OLMUN'),
(258, 10, '_list_certificate_3_title_1', 'field_672363de5c242'),
(259, 10, 'list_certificate_3_title', 'Honorable Mention'),
(260, 10, '_list_certificate_3_title', 'field_672363e85c243'),
(261, 10, 'list_certificate_3_desc', '    In 10th grade, I participated in a Model United Nations competition, where we represented different countries to present on global issues. With the theme \'The Rise of AI and Its Unethical Implications\' in the UNESCO panel, I was honored to represent the Republic of Ireland. I presented on past actions and future goals aimed at mitigating the ethical challenges of AI. To my surprise, on award day, I received the OLMUN Honorable Mention award and was interviewed by VTV - Vietnam Television about my contributions and efforts.'),
(262, 10, '_list_certificate_3_desc', 'field_672363f15c244'),
(263, 10, 'list_certificate_3_gallery_0_avarta_gall', '49'),
(264, 10, '_list_certificate_3_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(265, 10, 'list_certificate_3_gallery_1_avarta_gall', '50'),
(266, 10, '_list_certificate_3_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(267, 10, 'list_certificate_3_gallery_2_avarta_gall', '51'),
(268, 10, '_list_certificate_3_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(269, 10, 'list_certificate_3_gallery_3_avarta_gall', '48'),
(270, 10, '_list_certificate_3_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(271, 10, 'list_certificate_3_gallery_4_avarta_gall', '47'),
(272, 10, '_list_certificate_3_gallery_4_avarta_gall', 'field_6723766d1ec36'),
(273, 10, 'list_certificate_3_gallery', '5'),
(274, 10, '_list_certificate_3_gallery', 'field_672364055c245'),
(275, 10, 'list_certificate_4_date', '/ 2021'),
(276, 10, '_list_certificate_4_date', 'field_672363c15c241'),
(277, 10, 'list_certificate_4_avarta', '54'),
(278, 10, '_list_certificate_4_avarta', 'field_672364f874fd3'),
(279, 10, 'list_certificate_4_title_1', 'Vietnam Students Basketball League'),
(280, 10, '_list_certificate_4_title_1', 'field_672363de5c242'),
(281, 10, 'list_certificate_4_title', 'Gold Medal'),
(282, 10, '_list_certificate_4_title', 'field_672363e85c243'),
(283, 10, 'list_certificate_4_desc', '    This was an extremely difficult time because I had a serious injury related to my ankle, it is called a subchondral defect. Despite the difficulties it caused me, especially in mobility, I was determined to complete the tournament with the goal of winning the championship. Fortunately, with my own dedication and the unwavering support of my teammates, my school’s basketball team won the prestigious Vietnamese Students Basketball League for the first time. It was a memorable moment, as I endured the pain to live fully in pursuit of my passion and personal goals.'),
(284, 10, '_list_certificate_4_desc', 'field_672363f15c244'),
(285, 10, 'list_certificate_4_gallery_0_avarta_gall', '54'),
(286, 10, '_list_certificate_4_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(287, 10, 'list_certificate_4_gallery_1_avarta_gall', '52'),
(288, 10, '_list_certificate_4_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(289, 10, 'list_certificate_4_gallery_2_avarta_gall', '53'),
(290, 10, '_list_certificate_4_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(291, 10, 'list_certificate_4_gallery', '3'),
(292, 10, '_list_certificate_4_gallery', 'field_672364055c245'),
(293, 38, 'list_certificate_0_date', '/ 2024'),
(294, 38, '_list_certificate_0_date', 'field_672363c15c241'),
(295, 38, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(296, 38, '_list_certificate_0_title_1', 'field_672363de5c242'),
(297, 38, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(298, 38, '_list_certificate_0_title', 'field_672363e85c243'),
(299, 38, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(300, 38, '_list_certificate_0_desc', 'field_672363f15c244'),
(301, 38, 'list_certificate_0_gallery', '4'),
(302, 38, '_list_certificate_0_gallery', 'field_672364055c245'),
(303, 38, 'list_certificate', '5'),
(304, 38, '_list_certificate', 'field_672363ae5c240'),
(305, 38, 'list_certificate_0_avarta', '28'),
(306, 38, '_list_certificate_0_avarta', 'field_672364f874fd3'),
(307, 38, 'list_certificate_1_date', '/ 2023'),
(308, 38, '_list_certificate_1_date', 'field_672363c15c241'),
(309, 38, 'list_certificate_1_avarta', '30'),
(310, 38, '_list_certificate_1_avarta', 'field_672364f874fd3'),
(311, 38, 'list_certificate_1_title_1', 'International Warsaw Invention Show'),
(312, 38, '_list_certificate_1_title_1', 'field_672363de5c242'),
(313, 38, 'list_certificate_1_title', 'Gold Medal'),
(314, 38, '_list_certificate_1_title', 'field_672363e85c243'),
(315, 38, 'list_certificate_1_desc', '    This international startup competition connected me with a group of friends who shared my passion for recycled fashion. Together, we co-authored a research article titled \"ReFashioned by AI: Innovating Sustainable Fashion through Generative Design,\" aiming to leverage technology for the benefit of the industry. My deep passion for business, along with my experience from running a recycled shoe startup, gave me the expertise and confidence needed when presenting for this competition. Thanks to our collective efforts, we won the gold award at the International Warsaw Invention Show, which became a stepping stone for my entrepreneurial journey.'),
(316, 38, '_list_certificate_1_desc', 'field_672363f15c244'),
(317, 38, 'list_certificate_1_gallery', '6'),
(318, 38, '_list_certificate_1_gallery', 'field_672364055c245'),
(319, 38, 'list_certificate_0_gallery_0_avarta_gall', '32'),
(320, 38, '_list_certificate_0_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(321, 38, 'list_certificate_0_gallery_1_avarta_gall', '31'),
(322, 38, '_list_certificate_0_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(323, 38, 'list_certificate_0_gallery_2_avarta_gall', '30'),
(324, 38, '_list_certificate_0_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(325, 38, 'list_certificate_0_gallery_3_avarta_gall', '29'),
(326, 38, '_list_certificate_0_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(327, 38, 'list_certificate_1_gallery_0_avarta_gall', '30'),
(328, 38, '_list_certificate_1_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(329, 38, 'list_certificate_1_gallery_1_avarta_gall', '31'),
(330, 38, '_list_certificate_1_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(331, 38, 'list_certificate_1_gallery_2_avarta_gall', '39'),
(332, 38, '_list_certificate_1_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(333, 38, 'list_certificate_1_gallery_3_avarta_gall', '42'),
(334, 38, '_list_certificate_1_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(335, 38, 'list_certificate_1_gallery_4_avarta_gall', '40'),
(336, 38, '_list_certificate_1_gallery_4_avarta_gall', 'field_6723766d1ec36'),
(337, 38, 'list_certificate_1_gallery_5_avarta_gall', '41'),
(338, 38, '_list_certificate_1_gallery_5_avarta_gall', 'field_6723766d1ec36'),
(339, 38, 'list_certificate_2_date', '/ 2023'),
(340, 38, '_list_certificate_2_date', 'field_672363c15c241'),
(341, 38, 'list_certificate_2_avarta', '46'),
(342, 38, '_list_certificate_2_avarta', 'field_672364f874fd3'),
(343, 38, 'list_certificate_2_title_1', 'Griffins Cup'),
(344, 38, '_list_certificate_2_title_1', 'field_672363de5c242'),
(345, 38, 'list_certificate_2_title', 'Gold medal'),
(346, 38, '_list_certificate_2_title', 'field_672363e85c243'),
(347, 38, 'list_certificate_2_desc', '    Basketball has always been my passion. It not only sharpens my skills but also teaches me discipline, patience, and, most importantly, how to stand up after every fall. During high school, I faced setbacks in my first two years, losing to upperclassmen despite my efforts. Even in my junior year, I faced the senior class in the finals, the strongest class in my school\'s history. But that did not make me hesitate in facing the challenge. My team and I gave everything we had, and together we brought home the prestigious championship cup, filling the school with pride and joy.'),
(348, 38, '_list_certificate_2_desc', 'field_672363f15c244'),
(349, 38, 'list_certificate_2_gallery_0_avarta_gall', '43'),
(350, 38, '_list_certificate_2_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(351, 38, 'list_certificate_2_gallery_1_avarta_gall', '44'),
(352, 38, '_list_certificate_2_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(353, 38, 'list_certificate_2_gallery_2_avarta_gall', '45'),
(354, 38, '_list_certificate_2_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(355, 38, 'list_certificate_2_gallery_3_avarta_gall', '46'),
(356, 38, '_list_certificate_2_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(357, 38, 'list_certificate_2_gallery', '4'),
(358, 38, '_list_certificate_2_gallery', 'field_672364055c245'),
(359, 38, 'list_certificate_3_date', '/ 2023'),
(360, 38, '_list_certificate_3_date', 'field_672363c15c241'),
(361, 38, 'list_certificate_3_avarta', '49'),
(362, 38, '_list_certificate_3_avarta', 'field_672364f874fd3'),
(363, 38, 'list_certificate_3_title_1', 'Olympia Leaders Model United Nations - OLMUN'),
(364, 38, '_list_certificate_3_title_1', 'field_672363de5c242'),
(365, 38, 'list_certificate_3_title', 'Honorable Mention'),
(366, 38, '_list_certificate_3_title', 'field_672363e85c243'),
(367, 38, 'list_certificate_3_desc', '    In 10th grade, I participated in a Model United Nations competition, where we represented different countries to present on global issues. With the theme \'The Rise of AI and Its Unethical Implications\' in the UNESCO panel, I was honored to represent the Republic of Ireland. I presented on past actions and future goals aimed at mitigating the ethical challenges of AI. To my surprise, on award day, I received the OLMUN Honorable Mention award and was interviewed by VTV - Vietnam Television about my contributions and efforts.'),
(368, 38, '_list_certificate_3_desc', 'field_672363f15c244'),
(369, 38, 'list_certificate_3_gallery_0_avarta_gall', '49'),
(370, 38, '_list_certificate_3_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(371, 38, 'list_certificate_3_gallery_1_avarta_gall', '50'),
(372, 38, '_list_certificate_3_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(373, 38, 'list_certificate_3_gallery_2_avarta_gall', '51'),
(374, 38, '_list_certificate_3_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(375, 38, 'list_certificate_3_gallery_3_avarta_gall', '48'),
(376, 38, '_list_certificate_3_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(377, 38, 'list_certificate_3_gallery_4_avarta_gall', '47'),
(378, 38, '_list_certificate_3_gallery_4_avarta_gall', 'field_6723766d1ec36'),
(379, 38, 'list_certificate_3_gallery', '5'),
(380, 38, '_list_certificate_3_gallery', 'field_672364055c245'),
(381, 38, 'list_certificate_4_date', '/ 2021'),
(382, 38, '_list_certificate_4_date', 'field_672363c15c241'),
(383, 38, 'list_certificate_4_avarta', '54'),
(384, 38, '_list_certificate_4_avarta', 'field_672364f874fd3'),
(385, 38, 'list_certificate_4_title_1', 'Vietnam Students Basketball League'),
(386, 38, '_list_certificate_4_title_1', 'field_672363de5c242'),
(387, 38, 'list_certificate_4_title', 'Gold Medal'),
(388, 38, '_list_certificate_4_title', 'field_672363e85c243');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(389, 38, 'list_certificate_4_desc', '    This was an extremely difficult time because I had a serious injury related to my ankle, it is called a subchondral defect. Despite the difficulties it caused me, especially in mobility, I was determined to complete the tournament with the goal of winning the championship. Fortunately, with my own dedication and the unwavering support of my teammates, my school’s basketball team won the prestigious Vietnamese Students Basketball League for the first time. It was a memorable moment, as I endured the pain to live fully in pursuit of my passion and personal goals.'),
(390, 38, '_list_certificate_4_desc', 'field_672363f15c244'),
(391, 38, 'list_certificate_4_gallery_0_avarta_gall', '54'),
(392, 38, '_list_certificate_4_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(393, 38, 'list_certificate_4_gallery_1_avarta_gall', '52'),
(394, 38, '_list_certificate_4_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(395, 38, 'list_certificate_4_gallery_2_avarta_gall', '53'),
(396, 38, '_list_certificate_4_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(397, 38, 'list_certificate_4_gallery', '3'),
(398, 38, '_list_certificate_4_gallery', 'field_672364055c245'),
(399, 55, 'list_certificate_0_date', '/ 2024'),
(400, 55, '_list_certificate_0_date', 'field_672363c15c241'),
(401, 55, 'list_certificate_0_title_1', 'International Warsaw Invention Show'),
(402, 55, '_list_certificate_0_title_1', 'field_672363de5c242'),
(403, 55, 'list_certificate_0_title', 'Gold Medal <span>- International Level”</span> <br>                                 &  Bronze Award <span>- National Level</span>'),
(404, 55, '_list_certificate_0_title', 'field_672363e85c243'),
(405, 55, 'list_certificate_0_desc', 'My passion for technology has always driven me to explore new experiences, such as coding. The logical thinking and attention to detail required for each line of code have helped me develop skills that extend beyond academics, enhancing my ability to accept challenges. Achieving a perfect score in the HKICO qualifying round allowed me to compete with like-minded students at the national tournament. While winning the bronze award may not seem like a significant accomplishment, I take great pride in what I achieved through my dedication and personal investment of time. This motivated me to push further, and I ultimately advanced to the final round, where I was honored to win the prestigious gold prize. My journey in the HKICO has taught me the importance of pursuing my aspirations relentlessly, believing in myself, and never backing down from a challenge.'),
(406, 55, '_list_certificate_0_desc', 'field_672363f15c244'),
(407, 55, 'list_certificate_0_gallery', '1'),
(408, 55, '_list_certificate_0_gallery', 'field_672364055c245'),
(409, 55, 'list_certificate', '5'),
(410, 55, '_list_certificate', 'field_672363ae5c240'),
(411, 55, 'list_certificate_0_avarta', '28'),
(412, 55, '_list_certificate_0_avarta', 'field_672364f874fd3'),
(413, 55, 'list_certificate_1_date', '/ 2023'),
(414, 55, '_list_certificate_1_date', 'field_672363c15c241'),
(415, 55, 'list_certificate_1_avarta', '30'),
(416, 55, '_list_certificate_1_avarta', 'field_672364f874fd3'),
(417, 55, 'list_certificate_1_title_1', 'International Warsaw Invention Show'),
(418, 55, '_list_certificate_1_title_1', 'field_672363de5c242'),
(419, 55, 'list_certificate_1_title', 'Gold Medal'),
(420, 55, '_list_certificate_1_title', 'field_672363e85c243'),
(421, 55, 'list_certificate_1_desc', '    This international startup competition connected me with a group of friends who shared my passion for recycled fashion. Together, we co-authored a research article titled \"ReFashioned by AI: Innovating Sustainable Fashion through Generative Design,\" aiming to leverage technology for the benefit of the industry. My deep passion for business, along with my experience from running a recycled shoe startup, gave me the expertise and confidence needed when presenting for this competition. Thanks to our collective efforts, we won the gold award at the International Warsaw Invention Show, which became a stepping stone for my entrepreneurial journey.'),
(422, 55, '_list_certificate_1_desc', 'field_672363f15c244'),
(423, 55, 'list_certificate_1_gallery', '6'),
(424, 55, '_list_certificate_1_gallery', 'field_672364055c245'),
(425, 55, 'list_certificate_0_gallery_0_avarta_gall', '31'),
(426, 55, '_list_certificate_0_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(427, 55, 'list_certificate_1_gallery_0_avarta_gall', '30'),
(428, 55, '_list_certificate_1_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(429, 55, 'list_certificate_1_gallery_1_avarta_gall', '31'),
(430, 55, '_list_certificate_1_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(431, 55, 'list_certificate_1_gallery_2_avarta_gall', '39'),
(432, 55, '_list_certificate_1_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(433, 55, 'list_certificate_1_gallery_3_avarta_gall', '42'),
(434, 55, '_list_certificate_1_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(435, 55, 'list_certificate_1_gallery_4_avarta_gall', '40'),
(436, 55, '_list_certificate_1_gallery_4_avarta_gall', 'field_6723766d1ec36'),
(437, 55, 'list_certificate_1_gallery_5_avarta_gall', '41'),
(438, 55, '_list_certificate_1_gallery_5_avarta_gall', 'field_6723766d1ec36'),
(439, 55, 'list_certificate_2_date', '/ 2023'),
(440, 55, '_list_certificate_2_date', 'field_672363c15c241'),
(441, 55, 'list_certificate_2_avarta', '46'),
(442, 55, '_list_certificate_2_avarta', 'field_672364f874fd3'),
(443, 55, 'list_certificate_2_title_1', 'Griffins Cup'),
(444, 55, '_list_certificate_2_title_1', 'field_672363de5c242'),
(445, 55, 'list_certificate_2_title', 'Gold medal'),
(446, 55, '_list_certificate_2_title', 'field_672363e85c243'),
(447, 55, 'list_certificate_2_desc', '    Basketball has always been my passion. It not only sharpens my skills but also teaches me discipline, patience, and, most importantly, how to stand up after every fall. During high school, I faced setbacks in my first two years, losing to upperclassmen despite my efforts. Even in my junior year, I faced the senior class in the finals, the strongest class in my school\'s history. But that did not make me hesitate in facing the challenge. My team and I gave everything we had, and together we brought home the prestigious championship cup, filling the school with pride and joy.'),
(448, 55, '_list_certificate_2_desc', 'field_672363f15c244'),
(449, 55, 'list_certificate_2_gallery_0_avarta_gall', '43'),
(450, 55, '_list_certificate_2_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(451, 55, 'list_certificate_2_gallery_1_avarta_gall', '44'),
(452, 55, '_list_certificate_2_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(453, 55, 'list_certificate_2_gallery_2_avarta_gall', '45'),
(454, 55, '_list_certificate_2_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(455, 55, 'list_certificate_2_gallery_3_avarta_gall', '46'),
(456, 55, '_list_certificate_2_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(457, 55, 'list_certificate_2_gallery', '4'),
(458, 55, '_list_certificate_2_gallery', 'field_672364055c245'),
(459, 55, 'list_certificate_3_date', '/ 2023'),
(460, 55, '_list_certificate_3_date', 'field_672363c15c241'),
(461, 55, 'list_certificate_3_avarta', '49'),
(462, 55, '_list_certificate_3_avarta', 'field_672364f874fd3'),
(463, 55, 'list_certificate_3_title_1', 'Olympia Leaders Model United Nations - OLMUN'),
(464, 55, '_list_certificate_3_title_1', 'field_672363de5c242'),
(465, 55, 'list_certificate_3_title', 'Honorable Mention'),
(466, 55, '_list_certificate_3_title', 'field_672363e85c243'),
(467, 55, 'list_certificate_3_desc', '    In 10th grade, I participated in a Model United Nations competition, where we represented different countries to present on global issues. With the theme \'The Rise of AI and Its Unethical Implications\' in the UNESCO panel, I was honored to represent the Republic of Ireland. I presented on past actions and future goals aimed at mitigating the ethical challenges of AI. To my surprise, on award day, I received the OLMUN Honorable Mention award and was interviewed by VTV - Vietnam Television about my contributions and efforts.'),
(468, 55, '_list_certificate_3_desc', 'field_672363f15c244'),
(469, 55, 'list_certificate_3_gallery_0_avarta_gall', '49'),
(470, 55, '_list_certificate_3_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(471, 55, 'list_certificate_3_gallery_1_avarta_gall', '50'),
(472, 55, '_list_certificate_3_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(473, 55, 'list_certificate_3_gallery_2_avarta_gall', '51'),
(474, 55, '_list_certificate_3_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(475, 55, 'list_certificate_3_gallery_3_avarta_gall', '48'),
(476, 55, '_list_certificate_3_gallery_3_avarta_gall', 'field_6723766d1ec36'),
(477, 55, 'list_certificate_3_gallery_4_avarta_gall', '47'),
(478, 55, '_list_certificate_3_gallery_4_avarta_gall', 'field_6723766d1ec36'),
(479, 55, 'list_certificate_3_gallery', '5'),
(480, 55, '_list_certificate_3_gallery', 'field_672364055c245'),
(481, 55, 'list_certificate_4_date', '/ 2021'),
(482, 55, '_list_certificate_4_date', 'field_672363c15c241'),
(483, 55, 'list_certificate_4_avarta', '54'),
(484, 55, '_list_certificate_4_avarta', 'field_672364f874fd3'),
(485, 55, 'list_certificate_4_title_1', 'Vietnam Students Basketball League'),
(486, 55, '_list_certificate_4_title_1', 'field_672363de5c242'),
(487, 55, 'list_certificate_4_title', 'Gold Medal'),
(488, 55, '_list_certificate_4_title', 'field_672363e85c243'),
(489, 55, 'list_certificate_4_desc', '    This was an extremely difficult time because I had a serious injury related to my ankle, it is called a subchondral defect. Despite the difficulties it caused me, especially in mobility, I was determined to complete the tournament with the goal of winning the championship. Fortunately, with my own dedication and the unwavering support of my teammates, my school’s basketball team won the prestigious Vietnamese Students Basketball League for the first time. It was a memorable moment, as I endured the pain to live fully in pursuit of my passion and personal goals.'),
(490, 55, '_list_certificate_4_desc', 'field_672363f15c244'),
(491, 55, 'list_certificate_4_gallery_0_avarta_gall', '54'),
(492, 55, '_list_certificate_4_gallery_0_avarta_gall', 'field_6723766d1ec36'),
(493, 55, 'list_certificate_4_gallery_1_avarta_gall', '52'),
(494, 55, '_list_certificate_4_gallery_1_avarta_gall', 'field_6723766d1ec36'),
(495, 55, 'list_certificate_4_gallery_2_avarta_gall', '53'),
(496, 55, '_list_certificate_4_gallery_2_avarta_gall', 'field_6723766d1ec36'),
(497, 55, 'list_certificate_4_gallery', '3'),
(498, 55, '_list_certificate_4_gallery', 'field_672364055c245');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-10-31 10:35:47', '2024-10-31 10:35:47', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2024-10-31 10:35:47', '2024-10-31 10:35:47', '', 0, 'http://localhost/nguyentrangiathai/?p=1', 0, 'post', '', 1),
(2, 1, '2024-10-31 10:35:47', '2024-10-31 10:35:47', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/nguyentrangiathai/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2024-10-31 10:42:42', '2024-10-31 10:42:42', '', 0, 'http://localhost/nguyentrangiathai/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-10-31 10:35:47', '2024-10-31 10:35:47', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chúng tôi là ai</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://localhost/nguyentrangiathai.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Bình luận</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Nội dung nhúng từ website khác</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chúng tôi chia sẻ dữ liệu của bạn với ai</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dữ liệu của bạn tồn tại bao lâu</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Các quyền nào của bạn với dữ liệu của mình</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dữ liệu của bạn được gửi đến đâu</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p>\n<!-- /wp:paragraph -->\n', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2024-10-31 10:42:40', '2024-10-31 10:42:40', '', 0, 'http://localhost/nguyentrangiathai/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-10-31 10:35:51', '2024-10-31 10:35:51', '<!-- wp:page-list /-->', 'Điều hướng', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-10-31 10:35:51', '2024-10-31 10:35:51', '', 0, 'http://localhost/nguyentrangiathai/2024/10/31/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-10-31 10:36:05', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-10-31 10:36:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentrangiathai/?p=5', 0, 'post', '', 0),
(7, 1, '2024-10-31 10:42:14', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-31 10:42:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/nguyentrangiathai/?page_id=7', 0, 'page', '', 0),
(8, 1, '2024-10-31 10:42:40', '2024-10-31 10:42:40', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chúng tôi là ai</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://localhost/nguyentrangiathai.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Bình luận</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Nội dung nhúng từ website khác</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chúng tôi chia sẻ dữ liệu của bạn với ai</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dữ liệu của bạn tồn tại bao lâu</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Các quyền nào của bạn với dữ liệu của mình</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dữ liệu của bạn được gửi đến đâu</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p>\n<!-- /wp:paragraph -->\n', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-10-31 10:42:40', '2024-10-31 10:42:40', '', 3, 'http://localhost/nguyentrangiathai/?p=8', 0, 'revision', '', 0),
(9, 1, '2024-10-31 10:42:42', '2024-10-31 10:42:42', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/nguyentrangiathai/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-10-31 10:42:42', '2024-10-31 10:42:42', '', 2, 'http://localhost/nguyentrangiathai/?p=9', 0, 'revision', '', 0),
(10, 1, '2024-10-31 10:42:53', '2024-10-31 10:42:53', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-10-31 12:48:14', '2024-10-31 12:48:14', '', 0, 'http://localhost/nguyentrangiathai/?page_id=10', 0, 'page', '', 0),
(11, 1, '2024-10-31 10:42:53', '2024-10-31 10:42:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 10:42:53', '2024-10-31 10:42:53', '', 10, 'http://localhost/nguyentrangiathai/?p=11', 0, 'revision', '', 0),
(12, 1, '2024-10-31 10:45:11', '2024-10-31 10:45:11', '', 'Journey', '', 'publish', 'closed', 'closed', '', 'journey', '', '', '2024-10-31 10:45:11', '2024-10-31 10:45:11', '', 0, 'http://localhost/nguyentrangiathai/?page_id=12', 0, 'page', '', 0),
(13, 1, '2024-10-31 10:45:11', '2024-10-31 10:45:11', '', 'Journey', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-10-31 10:45:11', '2024-10-31 10:45:11', '', 12, 'http://localhost/nguyentrangiathai/?p=13', 0, 'revision', '', 0),
(14, 1, '2024-10-31 10:47:06', '2024-10-31 10:47:06', '', 'Project', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2024-10-31 10:47:06', '2024-10-31 10:47:06', '', 0, 'http://localhost/nguyentrangiathai/?page_id=14', 0, 'page', '', 0),
(15, 1, '2024-10-31 10:47:06', '2024-10-31 10:47:06', '', 'Project', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-10-31 10:47:06', '2024-10-31 10:47:06', '', 14, 'http://localhost/nguyentrangiathai/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-10-31 10:54:11', '2024-10-31 10:53:57', '', 'About me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2024-10-31 10:54:11', '2024-10-31 10:54:11', '', 0, 'http://localhost/nguyentrangiathai/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2024-10-31 10:54:11', '2024-10-31 10:53:57', '', 'My Journey', '', 'publish', 'closed', 'closed', '', 'my-journey', '', '', '2024-10-31 10:54:11', '2024-10-31 10:54:11', '', 0, 'http://localhost/nguyentrangiathai/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2024-10-31 10:54:11', '2024-10-31 10:53:58', '', 'My Projects', '', 'publish', 'closed', 'closed', '', 'my-projects', '', '', '2024-10-31 10:54:11', '2024-10-31 10:54:11', '', 0, 'http://localhost/nguyentrangiathai/?p=18', 3, 'nav_menu_item', '', 0),
(20, 1, '2024-10-31 11:03:45', '2024-10-31 11:03:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"tempalte-page/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6723639101abc', '', '', '2024-10-31 12:22:14', '2024-10-31 12:22:14', '', 0, 'http://localhost/nguyentrangiathai/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2024-10-31 11:03:45', '2024-10-31 11:03:45', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Box Certificate', 'box_certificate', 'publish', 'closed', 'closed', '', 'field_6723639c5c23f', '', '', '2024-10-31 11:03:45', '2024-10-31 11:03:45', '', 20, 'http://localhost/nguyentrangiathai/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2024-10-31 11:03:45', '2024-10-31 11:03:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'List certificate', 'list_certificate', 'publish', 'closed', 'closed', '', 'field_672363ae5c240', '', '', '2024-10-31 11:03:45', '2024-10-31 11:03:45', '', 20, 'http://localhost/nguyentrangiathai/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 1, '2024-10-31 11:03:45', '2024-10-31 11:03:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_672363c15c241', '', '', '2024-10-31 11:03:45', '2024-10-31 11:03:45', '', 22, 'http://localhost/nguyentrangiathai/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2024-10-31 11:03:45', '2024-10-31 11:03:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title 1', 'title_1', 'publish', 'closed', 'closed', '', 'field_672363de5c242', '', '', '2024-10-31 11:07:46', '2024-10-31 11:07:46', '', 22, 'http://localhost/nguyentrangiathai/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(25, 1, '2024-10-31 11:03:45', '2024-10-31 11:03:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_672363e85c243', '', '', '2024-10-31 11:07:46', '2024-10-31 11:07:46', '', 22, 'http://localhost/nguyentrangiathai/?post_type=acf-field&#038;p=25', 3, 'acf-field', '', 0),
(26, 1, '2024-10-31 11:03:46', '2024-10-31 11:03:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Desc', 'desc', 'publish', 'closed', 'closed', '', 'field_672363f15c244', '', '', '2024-10-31 11:07:46', '2024-10-31 11:07:46', '', 22, 'http://localhost/nguyentrangiathai/?post_type=acf-field&#038;p=26', 4, 'acf-field', '', 0),
(27, 1, '2024-10-31 11:03:46', '2024-10-31 11:03:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_672364055c245', '', '', '2024-10-31 12:22:14', '2024-10-31 12:22:14', '', 22, 'http://localhost/nguyentrangiathai/?post_type=acf-field&#038;p=27', 5, 'acf-field', '', 0),
(28, 1, '2024-10-31 11:06:55', '2024-10-31 11:06:55', '', '4_5', '', 'inherit', 'open', 'closed', '', '4_5', '', '', '2024-10-31 11:06:55', '2024-10-31 11:06:55', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/4_5.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2024-10-31 11:07:09', '2024-10-31 11:07:09', '', 'c-1', '', 'inherit', 'open', 'closed', '', 'c-1', '', '', '2024-10-31 11:11:23', '2024-10-31 11:11:23', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/c-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2024-10-31 11:07:10', '2024-10-31 11:07:10', '', 'c-2', '', 'inherit', 'open', 'closed', '', 'c-2', '', '', '2024-10-31 11:07:10', '2024-10-31 11:07:10', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/c-2.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2024-10-31 11:07:11', '2024-10-31 11:07:11', '', 'c-3', '', 'inherit', 'open', 'closed', '', 'c-3', '', '', '2024-10-31 11:07:11', '2024-10-31 11:07:11', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/c-3.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2024-10-31 11:07:11', '2024-10-31 11:07:11', '', 'c-4', '', 'inherit', 'open', 'closed', '', 'c-4', '', '', '2024-10-31 11:07:11', '2024-10-31 11:07:11', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/c-4.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2024-10-31 11:07:30', '2024-10-31 11:07:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 11:07:30', '2024-10-31 11:07:30', '', 10, 'http://localhost/nguyentrangiathai/?p=33', 0, 'revision', '', 0),
(34, 1, '2024-10-31 11:07:46', '2024-10-31 11:07:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Avarta', 'avarta', 'publish', 'closed', 'closed', '', 'field_672364f874fd3', '', '', '2024-10-31 11:07:46', '2024-10-31 11:07:46', '', 22, 'http://localhost/nguyentrangiathai/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2024-10-31 11:07:56', '2024-10-31 11:07:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 11:07:56', '2024-10-31 11:07:56', '', 10, 'http://localhost/nguyentrangiathai/?p=35', 0, 'revision', '', 0),
(36, 1, '2024-10-31 11:11:25', '2024-10-31 11:11:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 11:11:25', '2024-10-31 11:11:25', '', 10, 'http://localhost/nguyentrangiathai/?p=36', 0, 'revision', '', 0),
(37, 1, '2024-10-31 12:22:14', '2024-10-31 12:22:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Avarta gall', 'avarta_gall', 'publish', 'closed', 'closed', '', 'field_6723766d1ec36', '', '', '2024-10-31 12:22:14', '2024-10-31 12:22:14', '', 27, 'http://localhost/nguyentrangiathai/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2024-10-31 12:22:34', '2024-10-31 12:22:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 12:22:34', '2024-10-31 12:22:34', '', 10, 'http://localhost/nguyentrangiathai/?p=38', 0, 'revision', '', 0),
(39, 1, '2024-10-31 12:38:16', '2024-10-31 12:38:16', '', '4_5', '', 'inherit', 'open', 'closed', '', '4_5-2', '', '', '2024-10-31 12:38:16', '2024-10-31 12:38:16', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/4_5-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2024-10-31 12:38:36', '2024-10-31 12:38:36', '', '4_5-4', '', 'inherit', 'open', 'closed', '', '4_5-4', '', '', '2024-10-31 12:38:36', '2024-10-31 12:38:36', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/4_5-4.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2024-10-31 12:38:37', '2024-10-31 12:38:37', '', '4_5-3', '', 'inherit', 'open', 'closed', '', '4_5-3', '', '', '2024-10-31 12:38:37', '2024-10-31 12:38:37', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/4_5-3.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2024-10-31 12:38:38', '2024-10-31 12:38:38', '', '4_5-1', '', 'inherit', 'open', 'closed', '', '4_5-1', '', '', '2024-10-31 12:38:38', '2024-10-31 12:38:38', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/4_5-1-1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2024-10-31 12:41:10', '2024-10-31 12:41:10', '', 'Image-3', '', 'inherit', 'open', 'closed', '', 'image-3', '', '', '2024-10-31 12:41:10', '2024-10-31 12:41:10', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-3.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2024-10-31 12:41:11', '2024-10-31 12:41:11', '', 'Image-2', '', 'inherit', 'open', 'closed', '', 'image-2', '', '', '2024-10-31 12:41:11', '2024-10-31 12:41:11', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-2.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2024-10-31 12:41:12', '2024-10-31 12:41:12', '', 'Image-1', '', 'inherit', 'open', 'closed', '', 'image-1', '', '', '2024-10-31 12:41:12', '2024-10-31 12:41:12', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2024-10-31 12:41:12', '2024-10-31 12:41:12', '', 'Image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2024-10-31 12:41:12', '2024-10-31 12:41:12', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2024-10-31 12:43:39', '2024-10-31 12:43:39', '', 'Image-4', '', 'inherit', 'open', 'closed', '', 'image-4', '', '', '2024-10-31 12:43:39', '2024-10-31 12:43:39', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-4.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2024-10-31 12:43:39', '2024-10-31 12:43:39', '', 'Image-3', '', 'inherit', 'open', 'closed', '', 'image-3-2', '', '', '2024-10-31 12:43:39', '2024-10-31 12:43:39', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-3-1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2024-10-31 12:43:40', '2024-10-31 12:43:40', '', 'Image-2', '', 'inherit', 'open', 'closed', '', 'image-2-2', '', '', '2024-10-31 12:43:40', '2024-10-31 12:43:40', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-2-1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2024-10-31 12:43:41', '2024-10-31 12:43:41', '', 'Image-1', '', 'inherit', 'open', 'closed', '', 'image-1-2', '', '', '2024-10-31 12:43:41', '2024-10-31 12:43:41', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-1-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2024-10-31 12:43:41', '2024-10-31 12:43:41', '', 'Image', '', 'inherit', 'open', 'closed', '', 'image-5', '', '', '2024-10-31 12:43:41', '2024-10-31 12:43:41', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-5.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2024-10-31 12:47:29', '2024-10-31 12:47:29', '', 'Image-2', '', 'inherit', 'open', 'closed', '', 'image-2-3', '', '', '2024-10-31 12:47:29', '2024-10-31 12:47:29', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-2-2.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2024-10-31 12:47:29', '2024-10-31 12:47:29', '', 'Image-1', '', 'inherit', 'open', 'closed', '', 'image-1-3', '', '', '2024-10-31 12:47:29', '2024-10-31 12:47:29', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-1-2.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2024-10-31 12:47:30', '2024-10-31 12:47:30', '', 'Image', '', 'inherit', 'open', 'closed', '', 'image-6', '', '', '2024-10-31 12:47:30', '2024-10-31 12:47:30', '', 10, 'http://localhost/nguyentrangiathai/wp-content/uploads/2024/10/Image-6.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2024-10-31 12:47:50', '2024-10-31 12:47:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 12:47:50', '2024-10-31 12:47:50', '', 10, 'http://localhost/nguyentrangiathai/?p=55', 0, 'revision', '', 0),
(56, 1, '2024-10-31 12:48:14', '2024-10-31 12:48:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-10-31 12:48:14', '2024-10-31 12:48:14', '', 10, 'http://localhost/nguyentrangiathai/?p=56', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'giathai_admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"0aadd0de93a26da1f0d284e1ccaf20a339fb94f5b05df602959afb506a3cbbfe\";a:4:{s:10:\"expiration\";i:1731580561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36\";s:5:\"login\";i:1730370961;}s:64:\"288e998582e1dc00f10387c2aac5dd0b5bbc73a693ea899ef7ef656fdfe6548f\";a:4:{s:10:\"expiration\";i:1731584388;s:2:\"ip\";s:11:\"1.54.177.25\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36\";s:5:\"login\";i:1730374788;}s:64:\"7a72f31a049feceb993794e6aa8621305d69f68a60cf096043e190c599151cd8\";a:4:{s:10:\"expiration\";i:1731587268;s:2:\"ip\";s:15:\"171.229.211.171\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36\";s:5:\"login\";i:1730377668;}s:64:\"6c297dbc757829fa01c2671c1ffabc03d9934d5bb9652c5c4f4fde9dcc420e8b\";a:4:{s:10:\"expiration\";i:1731589946;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36\";s:5:\"login\";i:1730380346;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-10-31T10:42:17.011Z\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1730372846'),
(23, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"1.54.177.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'giathai_admin', '$P$BbIAFPNKMfT5x/.DBmguOmlgpQSi4S0', 'giathai_admin', 'ledinhson209@gmail.com', 'http://localhost/nguyentrangiathai', '2024-10-31 10:35:47', '', 0, 'giathai_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
